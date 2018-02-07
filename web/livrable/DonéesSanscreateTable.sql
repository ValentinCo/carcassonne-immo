-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mer 07 Février 2018 à 10:28
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `carcassonne-immo`
--

--
-- Contenu de la table `adm_admin`
--

INSERT INTO `adm_admin` (`adm_oid`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `adm_nom`, `adm_prenom`, `adm_telephone`) VALUES
(1, 'mammouth', 'mammouth', 'eersel.val@gmail.com', 'eersel.val@gmail.com', 1, NULL, '$2y$13$KyPvSdp50emDaApd8Gx6UeM.jL/dNBsgJzCgxr9U9gzcMvsj6e.s2', '2018-02-01 16:34:59', NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 'Van-Eersel', 'Valentin', '0679189809'),
(2, 'Chloelovelol', 'chloelovelol', 'test@gmail.com', 'test@gmail.com', 1, NULL, 'azerty', NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 'Cheurfa', 'Nassim', '68798768976'),
(3, 'Sangoku', 'sangoku', 'tzzzest@gmail.com', 'tzzzest@gmail.com', 1, NULL, '$2y$13$C2Ng.Ef4Mf/xI943WJSLJONYoRytEtNlodRk6ZejvbJrfREnV.z..', '2018-02-05 21:59:25', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 'Fourgeaud', 'Christopher', '76I098790998798'),
(4, 'Valentin', 'valentin', 'test4@gmail.com', 'test4@gmail.com', 1, NULL, '$2y$13$81isMu2yxgEVP7mv9PBMOOn7C3VEubzfl0kEhsBnRnrE7sSEPDf02', '2018-02-06 20:31:49', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 'Van-Eersel', 'Valentin', '679189809');

--
-- Contenu de la table `ann_annonce`
--

INSERT INTO `ann_annonce` (`ann_oid`, `adm_oid`, `cli_oid`, `typ_oid`, `ann_titre`, `ann_photo`, `ann_nb_piece`, `ann_prix`, `ann_description`, `updated_at`) VALUES
(1, 1, 3, 2, 'Maison carcassonne', '5a77816a6a89b853507647.jpeg', 6, 140000, 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2018-02-04 22:55:54'),
(2, 3, 2, 3, 'Appartement pas cher', '5a77815f8e298508299696.jpg', 3, 200, 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2018-02-04 22:55:43'),
(3, 1, 3, 2, 'Maison Saissac', '5a778153004c3478255352.jpg', 7, 200000, 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2018-02-04 22:55:30'),
(4, 2, 1, 2, 'Cabane en bois', '5a778138af805168142129.jpeg', 1, 10, 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2018-02-04 22:55:04'),
(5, 1, 2, 2, 'Maison avec piscine', '5a77812a47d7c404390663.jpeg', 6, 300000, 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2018-02-04 22:54:50'),
(6, 1, 2, 2, 'Maison blanche', '5a77811b6e59f505953502.jpg', 8, 250000, 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2018-02-04 22:54:35'),
(7, 3, 2, 2, 'Maison jolie', '5a77810a756ce866944054.jpg', 4, 87000, 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2018-02-04 22:54:18');

--
-- Contenu de la table `cli_client`
--

INSERT INTO `cli_client` (`cli_oid`, `cli_nom`, `cli_prenom`, `cli_telephone`) VALUES
(1, 'Machin', 'Fred', '0808080808'),
(2, 'Louis', 'Jean', '0666666666'),
(3, 'Michel', 'Eddy', '0679189809');

--
-- Contenu de la table `typ_type_annonce`
--

INSERT INTO `typ_type_annonce` (`typ_oid`, `typ_nom`) VALUES
(2, 'Vente'),
(3, 'Location');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
