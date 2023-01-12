-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_project_lp
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `db_project_lp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_project_lp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_project_lp`;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie` (
  `idCategorie` int(11) NOT NULL AUTO_INCREMENT,
  `nomCategorie` varchar(255) NOT NULL,
  PRIMARY KEY (`idCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centre`
--

DROP TABLE IF EXISTS `centre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centre` (
  `idCentre` int(11) NOT NULL AUTO_INCREMENT,
  `nomCentre` varchar(255) NOT NULL,
  `adresseCentre` varchar(255) NOT NULL,
  `descriptionCentre` varchar(255) NOT NULL,
  `idEmploye` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCentre`),
  KEY `idEmploye` (`idEmploye`),
  CONSTRAINT `centre_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`idEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centre`
--

LOCK TABLES `centre` WRITE;
/*!40000 ALTER TABLE `centre` DISABLE KEYS */;
/*!40000 ALTER TABLE `centre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentaire` (
  `idCommentaire` int(11) NOT NULL AUTO_INCREMENT,
  `dateCommentaire` date NOT NULL,
  `descriptionCommentaire` varchar(255) NOT NULL,
  `id_Organisme` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCommentaire`),
  KEY `id_Organisme` (`id_Organisme`),
  CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`id_Organisme`) REFERENCES `organisme` (`id_Organisme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentaire`
--

LOCK TABLES `commentaire` WRITE;
/*!40000 ALTER TABLE `commentaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employe` (
  `idEmploye` int(11) NOT NULL AUTO_INCREMENT,
  `nomEmploye` varchar(255) NOT NULL,
  `prenomEmploye` varchar(255) NOT NULL,
  `professionEmploye` varchar(255) NOT NULL,
  `dateNaissanceEmploye` date NOT NULL,
  `id_utlisateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmploye`),
  KEY `id_utlisateur` (`id_utlisateur`),
  CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`id_utlisateur`) REFERENCES `utilisateur` (`id_utlisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe`
--

LOCK TABLES `employe` WRITE;
/*!40000 ALTER TABLE `employe` DISABLE KEYS */;
/*!40000 ALTER TABLE `employe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipement` (
  `id_Equipement` int(11) NOT NULL AUTO_INCREMENT,
  `nom_Equipement` varchar(255) NOT NULL,
  `num_Serie` varchar(255) NOT NULL,
  `id_Salle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Equipement`),
  KEY `id_Salle` (`id_Salle`),
  CONSTRAINT `equipement_ibfk_1` FOREIGN KEY (`id_Salle`) REFERENCES `salle` (`id_Salle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipement`
--

LOCK TABLES `equipement` WRITE;
/*!40000 ALTER TABLE `equipement` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichier`
--

DROP TABLE IF EXISTS `fichier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichier` (
  `idFichier` int(11) NOT NULL,
  `nomFichier` varchar(100) NOT NULL,
  `tailleFichier` int(11) NOT NULL,
  `idMessage` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFichier`),
  KEY `idMessage` (`idMessage`),
  CONSTRAINT `fichier_ibfk_1` FOREIGN KEY (`idMessage`) REFERENCES `message` (`idMessage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichier`
--

LOCK TABLES `fichier` WRITE;
/*!40000 ALTER TABLE `fichier` DISABLE KEYS */;
/*!40000 ALTER TABLE `fichier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_centre`
--

DROP TABLE IF EXISTS `image_centre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_centre` (
  `id_imageCentre` int(11) NOT NULL AUTO_INCREMENT,
  `Imageblob` blob DEFAULT NULL,
  `idCentre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_imageCentre`),
  KEY `idCentre` (`idCentre`),
  CONSTRAINT `image_centre_ibfk_1` FOREIGN KEY (`idCentre`) REFERENCES `centre` (`idCentre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_centre`
--

LOCK TABLES `image_centre` WRITE;
/*!40000 ALTER TABLE `image_centre` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_centre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_publication`
--

DROP TABLE IF EXISTS `image_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_publication` (
  `id_image_Publication` int(11) NOT NULL AUTO_INCREMENT,
  `photo` blob DEFAULT NULL,
  `id_Publication` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_image_Publication`),
  KEY `id_Publication` (`id_Publication`),
  CONSTRAINT `image_publication_ibfk_1` FOREIGN KEY (`id_Publication`) REFERENCES `publication` (`id_publication`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_publication`
--

LOCK TABLES `image_publication` WRITE;
/*!40000 ALTER TABLE `image_publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_salle`
--

DROP TABLE IF EXISTS `image_salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_salle` (
  `id_imageSalle` int(11) NOT NULL AUTO_INCREMENT,
  `image` blob DEFAULT NULL,
  `id_Salle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_imageSalle`),
  KEY `id_Salle` (`id_Salle`),
  CONSTRAINT `image_salle_ibfk_1` FOREIGN KEY (`id_Salle`) REFERENCES `salle` (`id_Salle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_salle`
--

LOCK TABLES `image_salle` WRITE;
/*!40000 ALTER TABLE `image_salle` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `idMessage` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime_Message` datetime NOT NULL,
  `etat_Message` varchar(50) NOT NULL,
  `contenu_message` varchar(500) NOT NULL,
  `id_Organisme` int(11) DEFAULT NULL,
  `idEmploye` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMessage`),
  KEY `idEmploye` (`idEmploye`),
  KEY `id_Organisme` (`id_Organisme`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`idEmploye`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`id_Organisme`) REFERENCES `organisme` (`id_Organisme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organisme`
--

DROP TABLE IF EXISTS `organisme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organisme` (
  `id_Organisme` int(11) NOT NULL AUTO_INCREMENT,
  `code_Organisme` varchar(10) NOT NULL,
  `nom_Organisme` varchar(50) NOT NULL,
  `type_Organisme` varchar(20) NOT NULL,
  `status_Organisme` varchar(20) NOT NULL,
  `president_Organisme` varchar(50) NOT NULL,
  `logo_Organisme` blob DEFAULT NULL,
  `id_utlisateur` int(11) DEFAULT NULL,
  `idCategorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Organisme`),
  UNIQUE KEY `code_Organisme` (`code_Organisme`),
  KEY `idCategorie` (`idCategorie`),
  KEY `id_utlisateur` (`id_utlisateur`),
  CONSTRAINT `organisme_ibfk_1` FOREIGN KEY (`idCategorie`) REFERENCES `categorie` (`idCategorie`),
  CONSTRAINT `organisme_ibfk_2` FOREIGN KEY (`id_utlisateur`) REFERENCES `utilisateur` (`id_utlisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisme`
--

LOCK TABLES `organisme` WRITE;
/*!40000 ALTER TABLE `organisme` DISABLE KEYS */;
/*!40000 ALTER TABLE `organisme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication` (
  `id_publication` int(11) NOT NULL AUTO_INCREMENT,
  `titre_publication` varchar(255) NOT NULL,
  `contenu_publication` varchar(1000) NOT NULL,
  `idEmploye` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_publication`),
  KEY `idEmploye` (`idEmploye`),
  CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`idEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication`
--

LOCK TABLES `publication` WRITE;
/*!40000 ALTER TABLE `publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `id_Reservation` int(11) NOT NULL AUTO_INCREMENT,
  `dateDebut_Reservation` datetime DEFAULT NULL,
  `dateFin_Reservation` datetime DEFAULT NULL,
  `date_Reservation` datetime DEFAULT NULL,
  `type_Reservation` varchar(255) DEFAULT NULL,
  `etats_Reservation` varchar(255) DEFAULT NULL,
  `personne_Invitee` varchar(255) DEFAULT NULL,
  `description_Reservation` varchar(1000) DEFAULT NULL,
  `id_Organisme` int(11) DEFAULT NULL,
  `idCentre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Reservation`),
  KEY `idCentre` (`idCentre`),
  KEY `id_Organisme` (`id_Organisme`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`idCentre`) REFERENCES `centre` (`idCentre`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`id_Organisme`) REFERENCES `organisme` (`id_Organisme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salle` (
  `id_Salle` int(11) NOT NULL AUTO_INCREMENT,
  `numero_Salle` varchar(10) NOT NULL,
  `etage_Salle` int(11) NOT NULL,
  `capacity_Salle` int(11) NOT NULL,
  `description_Salle` varchar(255) NOT NULL,
  `disponible_Salle` tinyint(1) NOT NULL DEFAULT 0,
  `idCentre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Salle`),
  KEY `idCentre` (`idCentre`),
  CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`idCentre`) REFERENCES `centre` (`idCentre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateur` (
  `id_utlisateur` int(11) NOT NULL AUTO_INCREMENT,
  `mot_de_passe` varchar(32) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `email_utilisateur` varchar(100) DEFAULT NULL,
  `tele_utilisateur` varchar(100) DEFAULT NULL,
  `etat_utilisateur` int(11) DEFAULT NULL,
  `datecreation_utiisateur` datetime NOT NULL DEFAULT current_timestamp(),
  `datevalidation_utilisateur` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_utilisateur` varchar(50) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_utlisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'hakim',' 62, rue Taha Houcine -ex Galilee, Grand Casablanca','elhaiba120@gmail.com','0613468734',1,'2023-01-09 15:42:45','2023-01-09 15:42:55','192.63.4.15','SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c');
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-12  3:31:06
