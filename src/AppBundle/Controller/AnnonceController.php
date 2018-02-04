<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SearchType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use AppBundle\Entity\Annonce;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;


class AnnonceController extends Controller
{
    /**
     * @Route("/annonces", name="annonces")
     */
    public function annonceAction(Request $request)
    {

        $ems = $this->getDoctrine()->getManager();
        $type = $ems->getRepository('AppBundle:TypeAnnonce')->findAll();
        $choice = ['Toutes les annonces' => null];
        foreach ($type as $key => $value) {
            $nom = $value->getNom();
            $idType = $value->getId();
            $choice += [$nom => $idType];
        }

        $em = $this->getDoctrine()->getManager();

        $annonces = $em->getRepository('AppBundle:Annonce')->findAll();

        $form = $this->createFormBuilder()
        ->add('recherche', Searchtype::class, array('required' => false,
        'attr' => array('placeholder' => 'Recherche')))
        ->add('selecteur', ChoiceType::class, array('choices' => $choice))
        ->add('rechercher', SubmitType::class)
        ->getForm();

        $form->handlerequest($request);

        if($form->isValid() && $form->isSubmitted()){
            $data = $form->getData();
            $parameter = $data['recherche'];
            $selecteur = $data['selecteur'];
            if(!$selecteur){

                $query = $em->createQuery('select a from 
                AppBundle\Entity\Annonce as a  where a.titre like :p')
                    ->setParameter('p', '%' . $parameter . '%');
                $annonces = $query->getResult();
            }else{
                // dump($selecteur);
                // die();
                $query = $em->createQuery("select a from 
                AppBundle\Entity\Annonce as a JOIN a.typeAnnonce t where a.titre like :p
                AND t.id = :id")
                    ->setParameters(['p' => '%' . $parameter . '%',
                        'id' => $selecteur
                    ]);
                    
                $annonces = $query->getResult();
            }


        }
        
        return $this->render('annonce/annonces.html.twig', array(
            'annonces' => $annonces,
            'form' => $form->createView(),
            
        ));
        
    }

    /**
     *@Route("/annonce/{id}", name="annonce_details", requirements={"page"="\d+"})
     */
    public function detailsAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $section = $em->getRepository('AppBundle:Annonce')->find($id);

        return $this->render('annonce/details.html.twig', array(
            'section' => $section,
        ));
    }

    

    
}
