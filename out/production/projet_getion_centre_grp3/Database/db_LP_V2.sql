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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'teste');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe`
--

LOCK TABLES `employe` WRITE;
/*!40000 ALTER TABLE `employe` DISABLE KEYS */;
INSERT INTO `employe` VALUES (4,'tgfgf','gfgf','gfgf','2023-01-12',5),(5,'tgfgf','gfgf','gfgf','2023-01-12',5),(6,'FORTESTE','FFFFFFFFFFF','XXXXXXXXXXXXX','2023-01-10',6),(7,'FORTESTE','FFFFFFFFFFF','XXXXXXXXXXXXX','2023-01-10',6),(8,'fdfdf','dfdfd','fdfdf','2023-01-12',7),(9,'fdfdf','dfdfd','fdfdf','2023-01-12',7),(10,'fdfdf','fdfd','fddfd','2023-01-11',8),(11,'fdfdf','fdfd','fddfd','2023-01-11',8),(15,'fffff','ffffff','ffffff','2023-01-13',12),(16,'fffff','ffffff','ffffff','2023-01-13',12),(17,'fffff','ffff','fffff','2023-01-05',13),(18,'fffff','ffff','fffff','2023-01-05',13),(19,'ddd','ddddd','dddd','2023-01-12',14),(20,'ddd','ddddd','dddd','2023-01-12',14),(21,'ddd','ddddd','dddd','2023-01-12',15),(22,'ddd','ddddd','dddd','2023-01-12',15),(23,'bbb','bbbb','bbbb','2023-01-12',16),(24,'bbb','bbbb','bbbb','2023-01-12',16),(25,'xxxxx','xxxx','xxxxx','2023-01-14',17),(26,'xxxxx','xxxx','xxxxx','2023-01-14',17),(27,'xxxv','vvvvvvvvv','vvvvvv','2023-01-11',18),(28,'xxxv','vvvvvvvvv','vvvvvv','2023-01-11',18),(29,'dddddd','ddd','ddd','2023-01-18',19),(30,'dddddd','ddd','ddd','2023-01-18',19),(31,'hakim','hakim_prenom','hakim_profession','2023-01-14',20);
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
  `Adresse` text NOT NULL,
  `Telephone` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `type_Organisme` varchar(200) NOT NULL,
  `status_Organisme` varchar(200) NOT NULL,
  `president_Organisme` varchar(50) NOT NULL,
  `logo_Organisme` longblob DEFAULT NULL,
  `Date_de_creation` date DEFAULT NULL,
  `id_utlisateur` int(11) DEFAULT NULL,
  `idCategorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Organisme`),
  UNIQUE KEY `code_Organisme` (`code_Organisme`),
  KEY `idCategorie` (`idCategorie`),
  KEY `id_utlisateur` (`id_utlisateur`),
  CONSTRAINT `organisme_ibfk_1` FOREIGN KEY (`idCategorie`) REFERENCES `categorie` (`idCategorie`),
  CONSTRAINT `organisme_ibfk_2` FOREIGN KEY (`id_utlisateur`) REFERENCES `utilisateur` (`id_utlisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisme`
--

LOCK TABLES `organisme` WRITE;
/*!40000 ALTER TABLE `organisme` DISABLE KEYS */;
INSERT INTO `organisme` VALUES (12,'ABC123','Organisme 1','1 Main Street','1234567890','info@organisme1.com','Nonprofit','Active','John Doe',NULL,'2021-01-01',NULL,NULL),(13,'DEF456','Organisme 2','2 Main Street','0987654321','info@organisme2.com','Nonprofit','Active','Jane Doe',NULL,'2021-02-01',NULL,NULL),(14,'ORG001','Organisme 1','Adresse 1','0000000','Organisme1@mail.com','Organisme de soutien','Actif','John Doe',NULL,'2019-01-01',NULL,NULL),(15,'ORG002','Organisme 2','Adresse 2','1111111','Organisme2@mail.com','Organisme de soutien','Actif','Jane Doe',NULL,'2019-02-02',NULL,NULL),(16,'ORG003','Organisme 3','Adresse 3','2222222','Organisme3@mail.com','Organisme de soutien','Actif','Joe Smith',NULL,'2019-03-03',NULL,NULL),(17,'ORG004','Organisme 4','Adresse 4','3333333','Organisme4@mail.com','Organisme de soutien','Actif','Mary Smith',NULL,'2019-04-04',NULL,NULL),(18,'ORG005','Organisme 5','Adresse 5','4444444','Organisme5@mail.com','Organisme de soutien','Actif','John Brown',NULL,'2019-05-05',NULL,NULL),(19,'ORG006','Organisme 6','Adresse 6','5555555','Organisme6@mail.com','Organisme de soutien','Actif','Jane Brown',NULL,'2019-06-06',NULL,NULL),(20,'ORG007','Organisme 7','Adresse 7','6666666','Organisme7@mail.com','Organisme de soutien','Actif','Joe Miller',NULL,'2019-07-07',NULL,NULL),(21,'ORG008','Organisme 8','Adresse 8','7777777','Organisme8@mail.com','Organisme de soutien','Actif','Mary Miller',NULL,'2019-08-08',NULL,NULL),(22,'ORG009','Organisme 9','Adresse 9','8888888','Organisme9@mail.com','Organisme de soutien','Actif','John Wilson',NULL,'2019-09-09',NULL,NULL),(23,'ORG010','Organisme 10','Adresse 10','9999999','Organisme10@mail.com','Organisme de soutien','Actif','Jane Wilson',NULL,'2019-10-10',NULL,NULL),(24,'ORG011','Organisme 11','Adresse 11','0000000','Organisme11@mail.com','Organisme de soutien','Actif','Joe Taylor',NULL,'2019-11-11',NULL,NULL),(25,'ORG012','Organisme 12','Adresse 12','1111111','Organisme12@mail.com','Organisme de soutien','Actif','Mary Taylor',NULL,'2019-12-12',NULL,NULL),(26,'ORG013','Organisme 13','Adresse 13','2222222','Organisme13@mail.com','Organisme de soutien','Actif','John Jackson',NULL,'2020-01-01',NULL,NULL),(27,'ORG014','Organisme 14','Adresse 14','3333333','Organisme14@mail.com','Organisme de soutien','Actif','Jane Jackson',NULL,'2020-02-02',NULL,NULL),(28,'ORG015','Organisme 15','Adresse 15','4444444','Organisme15@mail.com','Organisme de soutien','Actif','Joe Johnson',NULL,'2020-03-03',NULL,NULL),(29,'ORG016','Organisme 16','Adresse 16','5555555','Organisme16@mail.com','Organisme de soutien','Actif','Mary Johnson',NULL,'2020-04-04',NULL,NULL),(30,'ORG017','Organisme 17','Adresse 17','6666666','Organisme17@mail.com','Organisme de soutien','Actif','John Lewis',NULL,'2020-05-05',NULL,NULL),(31,'ORG018','Organisme 18','Adresse 18','7777777','Organisme18@mail.com','Organisme de soutien','Actif','Jane Lewis',NULL,'2020-06-06',NULL,NULL),(32,'ORG019','Organisme 19','Adresse 19','8888888','Organisme19@mail.com','Organisme de soutien','Actif','Joe Thompson',NULL,'2020-07-07',NULL,NULL),(33,'ORG020','Organisme 20','Adresse 20','9999999','Organisme20@mail.com','Organisme de soutien','Actif','Mary Thompson',NULL,'2020-08-08',NULL,NULL),(36,'ORG021','Organisme 21','Adresse 21','9999999','Organisme21@mail.com','Organisme de soutien','Association Ã  but non lucratif','Mary Thompson','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n	\n\r\r\"\Z)$+*($\'\'-2@7-0=0\'\'8L9=CEHIH+6OUNFT@GHEÿÛ\0C\r\r!!E.\'.EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEÿÂ\0ÐÐ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0)Y »V¬SÐ¦ÝKR¹iª¾\ZÆƒ€mW¨´¢$‰	¡PÕíbè€³µ(HqÞ¤ƒS@§‚G\"£Ó±|g‘ÆptÓ î`”í”%)*ÆH#X€j6ÅU¡eˆ5„ñ°\n¥º¤\'8g	rµ˜le˜ÌÔ§RŽÍ-Z«X­Mb¡8Ã,RhžÊAÔ¾¥5tkÕk 0õJå=(\n\r’¬ezY¥¹†ÕoÀbhÒàU…°Œ	È\0ó!X®y½¡Çizœë‚¿×#’hŽ\Z—£DóYvøQ‘\"Ž§T€#¹CF”ë‚”…D‰GPN‘ƒO*IVõ{…V¨Bµ^ÄT¿P”ÄƒÄnÑÐ*ÌF†5\r0D@¢˜âP´W(Û)’/\r~‰ÀÇDÕ•+S+€Øð„2=	Je!\\	lB¹2­Czx.©%˜S¶gÙÅGH£$vt¹¼¯yœrô/Ö´Ü³JØÈ×,ŽDeÃ$D¤‚¡#&˜Í‰Na\0V-\n&„…ªZÁ­ ’¯mkÞ¦bSŒå‘ÅnÊ3c•FcAÔ@}Ì’[c4Ž@vÅt«ds¹¯6zk d‘ZÊ\r+LšcåY©$qQæi˜ìl¥¢LâÉÖ¢]ŽTJ`Ö¶Fì&Ž’T’9œž¿ŽÜ¬h‡\"»jÖtªí\"B2¦ÀÓb©MÆV‚1`b«¹\"1 ‘âXÄ.\0öÊ`6b$éª‰LéØ!L’Š3‰ÈJ93‚#JÈôÜßIs«RÖRÏ0~œz«8[¼û·Üñ$‚hçn‰1y$ëÛ®c÷ü¦Û4£N¼ÿ\0”=­¼>¹ïK€ï‡g¬Pæ¼g=>¤·òžªý6¸Nèn/µæ#0ÌX©\'”GŠŠÌH”ˆïI¬¯)9y€+D\n™h4R6vZD½Å,I‰!$îbF aÎ\"í\ZÀYÐâ³ZU^S„G£çz-ã3¡«×ÍD“\ZTÕ…–º^+µâùz\n3,n@(Ç(Ê$jÈô<ô:~½ùÞ¹‹‚0m}ó_·ÿ\0Øù9äwªßJeÚÄRû·‡vÇ´áîeŽðÈ#<b¡íW\Zjt!Ù\njeY¼ª\rb˜5$IÕ%)Àî\n$\"A‘”äNµºÑ\'$IðYÄÁKƒ0)„i “|ô·Ÿ*å–Ç8i\0 Î2üùulò-bÆeÖ²7éN^‡¹G:²Ð³Ž•l@ÕíxH¡ßyÇ¢éóÑ¼yµGõO‘éŽ?×,H|]¤yæ¯[€^È¢ó.—ÖmÓÐ¾æa`ÌXB€Ž¡Â ÈÍ‰HfZ\r‚$£8f8lxeK¶\nD¤ H,âA—Dh£ˆ*JvWÏÙ®cŸRª†¤š\0ƒ®ƒˆÈ&‰D¢£†ÕbVÁa*V»Bj Q¶ ÓŒæ}KÇ}f®3­\Z3D]Ñ;Üièj2HI!$Ã¤ŒÌM¼\\¤<(É5B%„D%6±Ò˜¼”p’Q–ŒÅrŒ äòVÈÁEXÀÎ\r2-)2Iž@¦ÒN2hP!*Š;’@ÔžViÅ$DÈ9UkÕ­È!­ˆÁZ3H©ÀáûFåzšŒ´I!$ŽK‡ö6:›´oRI	$$˜t‘C_#(‘§„¤\r‡„Ü	b,à¤ZWâ±¢b¡\Z`‰PJ+™!;Ä‚”K#fQ± ±0­#³M˜ÇœfB\n0fxTä\"waÔ(»Í2Ag€Úf’N­ä¹&¹\"¹¥*xºY‚sY;X\rzÖŽfžâI	Vv»Xa!$„’L;<LJN,<²–¡™XÞ>5tÂ¦’dÏ»¥ZR„elaWÍè·|øééæwåïeËî–˜‘\Z*„…€˜hÊJõæ†µZÒÆQ›(FK	§H<HE`a˜;iD¥4¢D™áÚžkrG˜¦äêÕ,€MJ Þì“—ô®½\'k‡íö’@+eD†vq$„™ÄÎˆàoy“1¤XY«<ÀÛ¥\n¦BP3ƒ×.„)Ÿ*RæÖ³«¶rîj6ldÓÓåe•cÎzSñšGI\n· 3!Ê•³iFà° áç!$âJ$&’Î%\n	à)»K>ivT–š»[fj@e	ÉŒµ—y¡K,5…ì	ßW¥gØcw˜Ú­ÎÎ$’C(Ä§æ=?y”UeõÑ Df_Î•5º“\Z¢KÍ×-I¹Ì$	*· Ž:«x™›1gÈ×lÒFÎŽPN£wÍÎzQ|ïN^æ×SE¤¬,Cbí“iÀ(¤Ò§˜ì¯SR2ãOaš<fBåz°‡TÕ70=:d4ó•z¾8ËB–	«TÙõŸÏõ<†^‡Ùx>Ô×ªéù%ƒÜ_šÝ«\0—V`\rŒþ…=Ÿâ\" ¬|íÕÒêpTá‰×µ°cV[6£±©è…Õ\'J÷*^*‘L€ÏP.Þ!`rP.¡#¡É=2øá^]9zÂ£žØJÁ’óW²	4D6€rÓrëä„ßëZqY\"ÖE…\0Ù_^¨*åAÁc\ZãŠ›m¢v\\¦|ã_cœKˆu‹\\ŸkÇ.	³£µº…Ý^júé‹.Ùj«¨Ò5{­}¤óÊš•wÈµ\n ö#0«pe^&~;r«F£©Jìaµ[´1ÖµÐYªÏ–3ïQË‰!”E¡n…Šánå]z³_y#K0$“’•B2r‡Œ÷#R‰ZÈÐVgmÂ¹jbp$e]5\'Šs• vòÉb‚¥ÚFÖ&¦a`Ôè—ùÎ‡–šÈ‰ÕŠöFÈ¶%È½µªrGí¯§¢ktW1¯Ê™ôÏÕÜò#¸µÎ±&\"™ØÊœ °˜æµ6\\æU{`\\z6ós¹ÆåHúºV”˜·Vå\"d¬bA¡Ø¡fKÔâ<‚Sßf#d%(’°BÈŽ<¡/H»$]&l6u«!	+‰ID±×YJµ²´M-ÈAÖ0¬lØÑ–^ÊÎ:ãléÚ^Ð÷Žs{Ž5ƒÉöeUÓó†®§‹ñç=<ñ/vð_{8.s×ø­sËÂ‘nsô³NJD¤½ªÊÚ5HS<mËÁÊÅ<îÝku*Åªºg98È·Fõ\"NŠ\nÀà(©……k%º·j‘•rB¦ŽRQ!(0hM¬ä«Éµ(ž¬ÔÏ­*kÙÌ5ES¹1$FxŠê’¼,L­H–År»V2–j\'*g/KÎúÏ9õ? ÎýkíœçGg¯Ù¥°b×èqÂtTŽ³ªcÔEn¡à¿BüíôA$èÁòÿ\0mƒ>IWÒð5ŽX77HbrÜ%K6²—•8ß;µCHñX¡`G€®Ñ!f­ê\" JFp!r½º!SÀ÷å(f9 @µmYq90\Z[Î@õk\\ÕV«Õ;Ô´o,i•T ¹°ô©£šrÞaŒJÝ@“w®°sæúoÊ×ÎÛÈýwÍ£¼¹¾Ž¹|[}œÇ65ÇÓœ‡Gde\ný\Z8.Ï›cÌ=ÿ\0çŸ¡É$ˆÊ„Î©‚ts¸€“È²½Äx¶G²a\'‹^ÞÁšÖÃÙÉ§+\0»^ÑŸ$å0‰0\'j¡\'L>N}Ò|ÉœxÎQRc*ò4¯y­OB…–yÙónUSYUµ\næ^¡\0Äå“Nªg›àÌë¥ä‡ì§šñKåýH’–ê„q§Ñžuì_?wG¡çTßNzõ”¸ý\rkÂIÊ=^¡â^íâÞÐM$3¤$Ô‹´8jÇ¤ÙFvq3°³ôp~ÝjŸ3¢æ,WéÛ)ÀŒ\\Î¿ž4¹-l~€ÅX \"CèH¸òµ0Ø‘4™jÉœå*3y³\nÇ°u$“È%Ê¯afmÛBö+Ëf<çc.Ogéf¼c¸ì’×<…ñ«Ž_Òg¤ÎÃ³£Ëy­,ãØ¬yfmëfhœ×EmÁ!$„’9Š‡žžˆ±¶IíÁ›¡3¡$„ÉÆå¶òN•$qžõ/Ì\0mP·eQ‘,ö‘(NDƒr˜m­C21DÙ1ô8ä³ÕiAÕq¬Ÿ(©ÌN5·*Û…{*@Æ\"ó\Z\'ŒÕ2æ©û”{Æv¤éRHI@.)M~Å8ÎÎ&t$>_¨æ“Ç!ìþ`·gÇY=óOÉºc³Um	$$‘JiåoKÁ/|¸îÄI!%µ¬aÒC;#•éyÌt‘[æ¨¾x04ó5¬Ì®ä%DZ>Õqn`˜ ˆÀÙÑôâ¤ªÄÊB·ÎVg6­¤Gn•”í†ýVÆrYÆ0½“…öLôò/JæN½šHIœA2<—gÐ3Ihyóž€ùúgBI×+èÙ)ÉõäÖ®\'K°y§g‹Ìž‘Öò]Ð‘Ã$Í¨%ðÖç–U#¾+ô¢ÐKL$’Ÿ8ç;Ns£$75=3Âñ¾œñ„ó˜§§’AîRÓŒºæ³U“H0åœ÷g´ÑZÄmæ\ZµÊ‹Q;8„Pê\n¦žu]K2´«[K4‰ÊC}!ÆwYë‘Àz§‰žÜ™Ä™ÄÎ†t„20ã<\\t%)9î·‰ö5Ï~c`ÀÜŸ@xOÖù1ëžÜŒ¹NtôŽnÃ‡Ê¿ˆNå~Ì¥åÞÁæ†íû<)éï‘®$˜\\—[Åe–,A¢îœ/6ô®ð‹!=‘˜žžB†LÔV\r± AbX=â4\'%ÃÑ³\Z\0%r)„riêjbet*”´ó“7R6³´1Þípþz7‹{O˜ž~g¥$$‘Ÿ¡ÄõáÒ‰$’BHF7›é7FB§-ÚUGlÈÙ³Ë<ÿ\0Ö8C*bÇà¾¤YÖ¹¤[°/½OÆO§ã)Fg¤ç–Oå=YÕq]/(v˜ë’4:µ¢I2…äyôöaóiC4š©æ<Ç`ÆDJÃ=ÆÌ,óvèTÀô5™Ô½XÇ4´«ŽÆe“.TQ_¦ZÂöŽØ±ÓÌ=*—4½¿-ÔÑ<÷Ô<[ÚGI	$dG_‘;Ê	4’¤¼û¿ñs®éŽBÒvˆó}6Ø`]e¾tó]0Ý·x÷Ž‹Îý•[2sT+ëFIœgg#Àzé\Z>0uþ‹ÊvcðV;#Î)zØO0]£}ÏÖ>àw¼2`±R€…vˆ)BEŠg	îúU¯æ/[0µ5p1Šp…<ó³Z¤K4ýt×{jÇ#7×ð\r¶ÍÓ<Ý|¿:4ÎÎ7Ûñ\'kdšIRUNCSžô#;FµÑ2q3°ùäÏ,ÓÛò³°ò&È^ïNkùwÓ>zyw­ùCØ|­¦¹à½˜ïÒBLâ‹Å&\"¥ò:^ÑÄ5Ÿí†t8ÃÔKàùGÑÍäþ¤x/?ôÎ©\09 2£¸ŒVRba²è+>e|Ý\nÒÖM~²Ë§3tÜÆÖ…`b¿E9ÏNá¹ŒëêjôõZâ´ôyƒ·~g¥80u¾j{\nHgg-ÔÒ+iðýÒ:BRymüÃ½ÔÇ¢uŠ2ÙÅZÌ\n\ZL†á\'å9ì…îOÕ||õ²ç“ùçÒþ\Zq·Q,ýó¯ÓËe$3³ŒÉ$’J“8(õØŸ3w\'‘¯BîÑÂVõÌRÿ\0_Ó˜‹Ôó–T¤lc³²EhÆgÐ¥¦ó2ˆ¢¥µCS7$e˜/\Z»0,ÕJV«™Ïƒrk³ô¯\0÷Ù©fi£’U\0ž#éh{œ©ÜÒ:<û¿ã0óÏ+záÏs>Ìf™k¤æm›o	•ï›ó¸åO\\ã½„Ã×&q«ã~‘ãg¼˜Ï¾çÎ9ÞÛâeÿ\0£~núLLì\'HŠŒ™’I¨Èd;óOQÂ%Í7^x7Uê^>uýç–õÅ?ú\'ç²©«ßJ2 È˜:5›9ïU‹Q˜]ÌeÖ¹JüThÎ`µÇlê£fYÂ=KÐüZÖwÝôžè#¤„’Ì½7—(vþSê£¼9«á8ÎÌå;î¤§Ùpý±&v8í¸À»œW6{<ƒ‘=;†¥˜~µjg’úÏŸzKš×á*ßî{™†A$€|Ïôÿ\0Îæ?ÓŸ.öÇ¸4$I$EÝ	$3¤&t(É3è,sG¤¶v™çœ_ºä”ùOØ¥o=-Ô$jW(©hVsÉ¶6s©t´BÈJÇ¤Í.A©]¶„íÊç*ôÜêÖcJkÉ½*¹ÞºBIežKé^a¸gkú¡Jã°é#ê©dc:;ÐqÇ9Ìsšò¶»s˜íûœ³V^uÞ™\Z†à\">†Ä¨ø¾ø{ìá5I!xß²rG‚ÂS;Oiù£©=Ù³tI$„’HggLG‰îyAºÎS¡,dlsä°û./ŠýMóéŠ!I,Få:¬W™êëÍ‰\'¦¯8•züÑã±·Çf®åÞ«±ªèò©Ùõ•öfù»ýC•ìÓÌ7×,C¥«Ïp\'IÍvý‰ƒ½$$™Øt‘¼óóÐFÜþ>xõ\"ú\nD®Ê#3Í}o‹1½Í;æòøè~|úÀ“ß§*I\nGÍ4»Þ\0¶µì~º}\0ügd:HI!&C³¡±9SèåO3Ñó#Ž}nW«®|Í^õ¿KN…V¸1\Z@®9t1&yI*¤M^““è¬³p~«(ø]|õà0¾‰àš¹žyë¸9.þËƒ$&‰$©$&v$7Þrç9æ`¼e{2ïÄÒBgaÒD|çÑxR<ßUHënei—>}úÀ ^2HLèñÎéŸÊõïçŽfÕõ\\Ÿhw’òR“œ$:HL‘\ZöØÌÏ8Aô|×@Yóþÿ\0çƒ1ÔIÐ-*²T@Â\n,ˆ€%b©,ö|WOgGì>îSCÁé<˜æv}¤<KÒóÍœ°vv#1‘IRHLèI!‚D|ðº.dú5ÙÄ’\'H‡ßp]Ww0Òlý_<ý	óÒý(ÈI!$…ƒ¼ÇŒr?Ig>7OËÒóä=w—æ}|×µç]Ánp˜’C<&&v3ëë\0çúo|ÃðnÃ‘@lbß*Å5vi”RAD`“y›Ø¦\\µŸµ¯Õbsk‰Æoiž»§áI²tO	Œ“‘’BI	’â‰ÔÎ\0.ƒ7hä|wèŸŸ¡Þ2Hdé\">mé^^z‚NF3dÏþùà+ô4’HI!3¢H‘ûcçµ¡ˆ6•	\'½fx·»ÚÍ ½\n«hgHLì(Í¬·¼HäÀaXiÕ¼R ®•ÄÑ+%0€0KíÔ%…ì>Aêñ­å>“€¾³å>¿åç¯Ð¿À}¶i!œI0é!³Ë˜Õ#JÖ™›®Èoõßm~{¡¤’#(ÈQ“\råž§æ¨;8’EöŸ=Ý$$Î$’aÒBIÏ‡}+æ\0Œ4È$!^ë×ü³êRúmšÔYyÑÎõq;5Ãä<fË¯~…‘·ÑÏ8H©2Z3§bPõ7Yõ÷‘WV§fC¨â}Z\\¼ú]i£ÍÙ(>ª†€é!!3°ìã9ë9®˜dÜéÐp|_%\Z&ÑVâBI	$&vË}KÊÏUvq$Œ?)õ/4=­$3³‰$$˜t’aŽx†µxºbØŠªFøÜõŸŸ,/·ñT9óf§>dµ™\"š”\n*•R×ÆÔÉ\nhª˜Ç ÙcõåUšeÊ*%8ïWñï|å×ËýƒÍýB_õï=ô¢‡9§3uÒL:HIôå{ëÜçüûÏÎ«œ\rÒ…æF¯½ø7¨zHI!$†t†òWóÔ)årçMo–ïNw€îøƒØ™ØNÎ™Øt™Ð’Cyo©Q>l›NÌû\"²Vtr¼J¢6ééÖt¢B,AÆÀÍ:7)–\0QÓ6ÎöÀ›¯!D¶\r&¢Sô®ÏúwGXÓC´õN[²æ:ž2:L\'†Q­—ç|IÛyào•¥n¹•4\n‚mÔ¹ZñƒÜÐÈ$’C;8Þgé~Rwÿ\0~Ç?Ñ$q|ŸYËž¸ÎÃ¤†vq$„’HI!’sçÌJòä°iVa™p!hUb$ªb1ŒÈß£d%%!Ôš\"¬Ô=)ˆ>üá4bº,IIÁ\rÊu´cÕµ¼OÚ¹u—7Òd—ÎÎFL†z^fzwŸyÌMkÓ.É\n°	Ð0Ø w_ÖÎ¿3Ì½;\0§Õù7¬‰$$‘BcyWªùAë	!$Ž#sõv$3³‰$$Î$’a¥ÌUƒx\'Ó4Ùã©Z¯dˆåÜüô¡rw×·JQ•ÈbDÕÚ®51G¦ŽBëÅÝÌ¡Q•HdîÏg¦ó|>ŸJC‡ê3tér‚úŒã\0Ò…9š¥·¿¬g™[Ç;lsåÚ1³º*žÞ9#$’ITdößõrêHLñ™Ò>Uê¾Z¾¨’Hà)Ü¤zc&$’ÙÆvq&q$Âãº/ŸogæzcGçfñ\"¡jÍ(f×4,bÆ7égŽ®“<Òãu±è˜„<h±¶³èÔ=Ä~¼XOcyÔr„¯f¥‚\0,Î2ßHlkÏÝX9[ÝìÌÓwÔª¤#ÏïssYÖ*——BØ¯ÞÎÊD]:$™]$pvú4=q$4e›¤­å¾£å¬¤„’8\n—¨ž’	&$$Î3¤&z‡ãÖêÏZÇÒåMl>ÞIâÃÝ¥×0ë×ª¢ÓŠå‹trdNg;cTéÏ¢Šâ“lFDõËf^œq”5&º×5s,£3I\0å£ÑÎy$f¢Ôœ•¤T®|¦Ìºî=cî_;{YÓ¤†vq$„“ò`òCÖÞ¥±3¡$†ò¯Uò“ÕÒBI5}³ÑBgaÒBQ’BÎÑâ)ïüÛ×Íë2tr<«y^ù¸-WÜveEh0X¼ËÍ£EZ²M#NÊê	RÝe8š*ñy‰ˆ	&ã5¡I	¤ÁDa6ŒY«ršFpWè¿:õN=yÿ\0ú\'†:3ô±;8ÎÎ&v†îsŽw³òoY;’É=kÉBåÏhê,`oœ–7GÍ™ÄÎÃ¤ˆI!ÒCa]Ñ8^Þl:HI!¸NóÎ\Z°O×ž¶.ð,Ö±ZE(=§NG€–+œcY¯n€Áœ‡¨@­¡¸DÒklÖ ¤V+ÊØ§C\'`â0v4–j´„ãúÌÌïÙî3ã£@ˆòoTP,$„™ÄÎÃ³£Åý›Ç½`¶ÎÃ¤†ò¿Sò£Ô±÷P’FèÞ`zÓ³Š‚M$ªaÒGÚp½yq	$$Ø ó{›„‰{`d	Å§+Ø¬‘ ¥lÔ\Zg=S³^Ù^c³&{¦hÍ²Q¦¶Í[µ4 H²¤Æ‰Ö0RW(è•èÏë¼ïÜùtÔIM$™ÑT¶$Î$’G•ö²FI‡I\rå~©å§©¤„’!ä^¿ã‡±»8¡8$ÒJ’BIö/eâ§¹ªö“‡åf—YÖÖ³ƒ8_·8œn8Ý…1´9#\Z“ÆdÂV%AÝá3ÿÄ\07\0\0\0!1 \"2A#0B35Q$4C%&6Ra@DÿÚ\0\0¹P„ ”Ç–vÃSQ*!ð©æcòäZs¹Éˆe•c`nXŒmÈ}îµ.sQ÷©_&Šl™ðÀì¨ñ¼Rœa Ú.ÍñW t©\0éE?\nÔkø$-Þ›®\0îjÄÀã£ÐÑIó¬õÎã±W»tzîÄ‡ÚÈ.Š´´zm¤\\ä·¼(EÊ5t\Z”ƒ1/â$–¨Æí©üeú­¡w\r‘-×¬KîÌHyÊ\0G-×\'•H ²€¾÷n_¸S©È\n7Ï†™‹õfb¿Ø%©ÎbZÇº•zSÆKû¤ã.QX²×|˜W(íŽ™þuÓ±ˆ(\'²*—æÕô6KPtja™p9¦¦m¤Qþ¢ÕÀÄ›mÀÉ8êçšÍ¶—£ƒ=\nˆdš~’0‹¸§>ÓQz‰¹Æ‰öÒêß@b™òè®1€Â™·Rÿ\0N¶æL`æƒEðfeÈôiF8è+î£]Î€åŽ(Ôžéòp_;í‚Q!SKZFS\ZªüÉ”{T)<¼Ìf†0ÅÚ)“2ªôØ)³„ñ4Ãêûé\\Ç6è3ï-ý1OŽR_}cÚhôÛCÅ0”í^£;kê+RwÔšÈJ„cùV2µžS­|T¯ÓWÿ\0ZþY8ä““·	†‘uc@{À?6à…fG\nÀŽ½OP`*y`Ò3§&‘IzQøÜ¯cH3ºŠâ ÍñLrÄÅÛ/òAoÖQMÖjÏ¹€ObÑAN¥bjÈçeßz¢Ž„Ñ«=ë´b£èr\\–Áa_rNN+eÒõº¶\ZÚéàt÷ôö„š8‹•k›†Ýƒ?Xxe¿Ó–ú¦1þž‰zÍ¤]w)=¼·Ç\"šs´	ÕA˜ÐL&&\'{ÐÐY(DíþiWñµ1úqñ¨ÊŠôSüÉQýBÝ©—½ga×£üóŒÝR¯äP½8\0ÔƒÝFŽ9*;Rö&QˆÒ€¥ÂÙ=éd¢zaIcèRõ`0¨ÔsVºâ”`R®àHOi$\ZÖÕT4{æG ñ6 {	j¦I,ÎÖßÌ¦™9 %ìZ%˜íæHBZºg=\r0éOÑ)GC_ÀÖÃ†©°!Œ3ƒ)oà´TíE¨¯ ;Í;„ˆ´m=û´v9Xp ~ÄÖOÖëO‘K4Xy¢W‘ÈX+Êi~IC«@X’€öš\"Pÿ\0OÞ—=h÷ u4­» ŽˆÝŠþj¶ü«¥/Y)úÑ$îe\0Ë™ØIÿ\0.6ì£J= Nz¨N¦Ÿ=ºIˆ	%Éêæ›ÛÓ\rJ¸|ýT`’C-/Ý]9bŸâñÒ¥÷¸2÷¦mIþ\0g ú$ÂvFõÂ±TmÕ7Yq\Z$ ÷\ZDI^_D·\\Q€%mEuÚ(e\\.GýF³ÕPÅGbÔÞ•q0…${->}Qó\r¼p.<\rIuX¯4Çæœb¸Žaš7‹/¹Ä‘“\Zd¦qÚ‡ÍÊµqÐRü+¶i²:½bÀÍ`I†£	M7q_ÍÌë°ªö‡Î¡é¹»8£ñ¨†g~â£4zÓŒ5F¾å£ÈqJ30¦`Ç0ÿ\0EŒ}YjV÷IMQœ¤Ï²—<¶#(ag•bi;SI·\0Ü ¦ùTÎZ)ºDû[¤Tƒùe£Õ²ªyd§L•ë\r(é¸©)i9Ì¸›¸¦•rÈ\'RdÆÎ†³ùM‰\r\ZÓ6Äê’™Q.ßYä~\\6‘Bw3RÃÍß!eÓ\\J²Ðô]ÛˆéÜáâU÷ŠØÕz¹;²cø€O¶š±•¤ÓMšíÑ¯çQüó3o•ˆêHîX¯Hòz³uZ·828ÀŠ{…&Š²u’r;³°Ôct´;µqXf*—¢2â˜õ ¡ò©:D ýWý\"¤ÃRC“™NvÑV/H/KÕË+š”\"ËSŒ‡;wJjxý¢“;#í!=«>ÜE€…AÅ)ì7—mÑäÏCú”þçWìÉ]äb>B€$¸\nÔÄLÏu|–Â°FÑm´Op)”:•ý>â59š¨#1@‹é¾‡lœÔé½¿…E…\\¹Ü‹@áMîþf¿Å!Úµ\'V¢=´Ý>ÀÆ¨LÎ\nõÚ:åûPŽÔq“] £ý1IÐƒ%ó´ï\0dšÿ\0#þÊŒyÛì©F‡]–è#öí¤¤ÝsNf®>H­D{V›°¥\\BÅ†6×v¤ÃC»Ð52â¹nMbˆ±¯z—§Lv¤}ÖÕ¶LPW¢jŒ>+ß‘QoMÅ-DÀï¨©‘ïrqíZEèY~dõ±í\0 †•bÍÝ‰–ëÓ=²M‚\"»Zÿ\04‘]2â;hã;MÊs `ß\n?]£5·Þ+üð1G½€¾F¿žëCç–è•èät\"”á8ëMÔ¿_Ç3tŽ%~Uº5DH‰Ž2æ‡·4:RôÉUüLvü+TKð@§¢a¸RŽÔG¼èh¶é3Œšº~f@q\'-W•µëÿ\0µ„JR\Z¸©Y«èRÓ1lPìÕ¦nƒÂât¶ˆÉúœGmØÄñCËq3ÁÇû«“çyQíbZV<b]ÕŒâ»õ¾êª–Qˆíxæ³YôÞßÇf™‡ŠìZ@‘ÞÛJ¹Y†|ndŒ¸ö¨{(Œ»Qí@nv8É5·$”ŒRüÉT\0¦í_ôÖ;Ðv	ˆËV=µƒíY:¾Î›»‘Ò,¨\'¯ñ£ý_À×NBƒÐšîEJrâ¿ƒ2g,PeÅ1ÜŠ=Í/IcÛMó5/W£’õþiþB±ì¨ÀÁ-Þ±ÒºàÒýÑëAzV™ýº\rF7šÍ“ÉÎJSÙÜ™LÚo6(¹9ða››ªQøMcñQêL|vå¼:á™W\"¦õDQ…ÅŠÕ¸š;)L#‹®ÔWúÆûn‹/÷çJâE»EAÔxNü¸Ù¯.ä¼¸ysšWdÍZjSÚt®#ŠíBxj	‰Å•–OsG£\0½š€èj,sº{¨u1êô1Ë Œ­66WÒƒÚœ{îA è+Úˆn¸Zï.Te¼vÅCµ€”ç1(?ÆÀßt£$V=ùbÛ)9¤ùTŸÔ¡Øš_•/eP2æ³—~U\ZäÔŸ6¯ªˆw¯±@{M6vŠ^Æ»æ€öŠÓ?¶ÁWq´º®²Æˆ§ùÁ;.ÁÏd‹tWMçcjsþêànÄ\0è)FXÑÁjA—\0.ÄWÕDõëaáÄº›ÛB-ÏSB×+“	a85e)†î94ÛŽušxq-Ç#K“ÃÛ°ò¦_h¨e0Ê¯ _›ÛV©ˆPQm’äÓ±Á+¼\n=Íùó÷\n&—¾H¬e±·j$\rtjOðãQ’7Óìh‘Wy\0=¦²XÓ©S‚¸pçGµ|æ›¸ ;ÔtzÈÔ½þT½T8¥ï_u\nÕÜ1éŠNƒÃºÓtZ_ð{S}V™ýº\nÔù0¨® #¸·æ–¢c!0CqÉŽH/¥D£ÿ\0.ê¤ú\\{Ågh\'EŒOðc\'CƒÐl?ö$ñÔ®ÍÖ©,‰•ê]þ[&l˜åÚEtÂÎe´v®1g&•XuKyî$ÚÚ¤ƒ,$‚B¨¼È«….6_«ñøô§êæ¥î(ƒ²‡Ðò˜Ëìc½\'LRŽ†Ž:RŒµ²£.´þâ(&(äà±Æi\0æ±ˆ… ÂåGä©šÛ¿ë¤ïOÖSCÝ-¯Cê£ëšî\r1ÌAèiH]¬½˜Šû =´ý\\ŸóI÷Xèi»Píƒ_Ä×Ù£Ú¥;‰*;Q§êÕ¦ÿ\0n‚®ìÜñ”Ò˜ÄÑÚÙ¼oK£3ÈîÚc¼Í<òÃî¡ÿ\02â¤êæ”{Å7M´[ö\ZQ˜ÅIîsG¸ç<@¾òˆ­$¦*^s³¾ÚÑt8,ât¨éVw¹6ü4óÎÞÞ;xV:¿Ó Ô\0¥áˆ!Ptë›8¢Ú·p²îÔíìub“iV¯O¸MN\'«Á›v¤ö•§4~Tˆ?XM ö“•ŠhÒö®Ù(pMm¨ú½êµ¡Šÿ\0\ZsœÑU¦ëŠvÑÛ®0)ºG„;Ô#t”ß\'¥’£84GÑé’¸ïœ  p¤€øc\n(÷¯ãY`óß¼²±j8ÉW9JÉÚ+=èh¯ãYÚ(\rÌîjÞò{hÔ®1ŸÔ§¡¨Ü5Jq_©NhßÜÑÔnA½¦w$’Ç:qù+¶HéL=ª;°-ò¨ÝSZÈ«ë1{nbN¶jóB·[Fò{8Õ÷2„°ÓnC	Aè=ªm&bÿ\0£\\$h×,â¡€Cß	S™)C\Zîâ±™\r7ÈÑÀŽ¿‘W]•f[½}Wñ¡ñ£Ñ/óféRà.G¬vÊˆ¡•uÂÖ>¤ø¥.uÿ\0íº‚à’kùƒ&Õ1;kÂë¡ÚŸî€É¯åGîjÆb4Q1S¦Ö 0åy¦‹FÐ‘UAyð+…ZS¾,ãsWß€ëH>4ÝÉåOR|ªö{\nìWý†¿Ô	;Š(ucO ýI$ôm¬x1Ú3\rè’mŸµwðZþf£þMß%ú(cÓ´p}WÝ‰MÚ¿0ê\0=–7ø_å]s•£Þ¶õÁÂ×ù-ÜúÍ Òæ—‹¦“sf”u%è?Å5\'qNr	O•-w£Ø×ð¯¡L3J¡X1€;fh}„uÍFátèïÇcàr»AíQã4qÔ¹Ëå}¨µþi:0¨û1?H?&ôŸtíµ¤WH#’Ðzïe0Û3iwfI’Ïí^j×ÿ\0½’”v©{¨‘pEíÅe}´(œÕ2Ðë ¨£20¡ò©NW±¯¢G€ïG¤”FÞ˜aE}gèôËÐTJvµ•4Ç-GÊú4¢ÄWñ 3CüýxùJ?B0Ç<”Ý‘\nf‚í&¾\ZQ–\0ö5Ž”:äã¨¡Dc4:µ8ÇCKÓ${c5@@“\'äJôCDg\"ã¬2V‹8dåú¸ƒq´A`WF¡?jçútzMØPèhüëð=Mc$ÒæÈÐ2Ðþ4§Ük¨\0·Âq_ÂÀWe5RÔzçäE\nn½øšÇO‚H;Pî){ÑøŠˆS}WÕb”{I>µ•ÕÛ£÷4˜³š=Í}gêÄRtl·@¢€Â£ÝC¦Ú\'%Ê.XS°;èºŠ3y™ˆx/Æ›¡q‚—\'p›.î¢Ñ&JhŒú]CŒ\\Ùrî™íX´ûWgâ1•ãÝÝ‹|š™²µŽÕŽôzIÚs_æ¿•<©b.\"rÇ8­‡p¦\0@©jNÂ“½(öŠú¢:R¢›«š=‹dcÿ\0ÏóN¸!GcC¦JüMªAˆÉc¹«ê»n8#ì½pÆ…¡ÖAR|BÆe !«¢I95ü‡E\' :ÖàQª#\\ÂðÑSK4gCCéOW£õ]±Z‚„¼ŽKÁxÑÙIÎµ½RG¾¡–¸ý›³ï4Ò”Ža9ÝÕúš=¨æŒˆfÔ!¿PÈÍ]\Zf¸åç–Äua¢Y;¹æYÊ&«\"Ô\ZŒW¨ÒÄÓ\n=iÚ»€§àj>õ¸Œrs÷C7Y(LÓ\rªhkù×ñà}µš?:éÌÃÈ•©4:Cüž´~Œœ\Z?!G«×Ý\në3æ¥‘”àõ…Dd³š8å­(=HPk½w4ýëvwôÒ*ôæ×Sux¥$¼2Yã•¶ù•8¡0?²<	ÅM*¾hº†¦¿¶D%/—•¸™‰£%Ñ\\<nA©b\r2§²,SÍàåss,«ˆÝäÃÖ¥G\'&à4—,ÎÎeÝ“ëÌmîRæXÈ¨uLG{•\nÀ´»¸ð„5ü«°4£,•ü˜…Žœå¨|p~dž«ŸâhôaB•ï¬nbX`Ðøšn€Pí_Ê`æ+ùPë&CxšÝ\'…¹B&Â¬Q¤\Zë±«Eg ®Ô>b¤mÒchÙKÄ«oÜÙ-Š•7ÛH¹gL›j­ã$;ëÊŠ\n?nþïñÉ‚®Ò7¼%Q½–fÍ3ÊMN&fÀXäxÕš9é_cÔRs7T†CB	9d‹\Z¬Œ«3œíÍ	ÉQµ¨¾3Jø±UPÓ“%Ì°ƒI«6&¡D]e¥^”¤e„ŠÃ4½:\ZÏQà¢€ïG 5õG­Â±Öe©hõ4ß\0‚3ÿ\0Ö»±§¥îii>ëSâ)>`œX¼•è¦°~Gµc¹4~éQ·RÂÄ1äààÛäÐ‡ñšX†iT\0£U€Zá´¹Š°ŒxHÛVƒû†¹®Üç_0ÌSs#3ºÆP²\\,»Y÷ác-0¼Ò…ÉÂ`	Œhå|ÆÔÂJìøf”„Cm,•s•žTÆwäµ+eÙ»Vìá]œ¬£”ì¡‹,¾Ý¦BÁj\' ¡r Õc-^fÍ0Â\n\\î~ü3Ö”{i½¤…ÿ\0?uÓ\nã4­÷ÜÑ£ðiE7ùÊ‡Ä×eËg\0WÕb—î³Ð¢AÂWÖ{€GÄÖßv(ÐøPûðþèhÕÌ<øÌv3¼wî¶òO†\":Y¹RáGíÝKË·–”#Œ.ÓÉ@‚4unÝäINþ]©g”«ƒ\"Q‰ˆZö{Äpå¤F· ºÜ‰7´·-¹ÖâI}´ùkÆÿ\0#¶áº•B}î3žj“l«SH$œô¤Ë•@f®gZWnA¤lË@îßhMYÁõ(.$Zß}½iè26ÒrPêi»V(Œ\nÛC¸¢räçãF£¢}Ô¶ˆéMðZ‘Æâ9ˆ3\\ô¦¸`(Ly{¹ýi&ÌlVSÉ%ioÀÇBªë@ôr\rw€ö\ZÛŒQž5%¾‚7Çê-+:»pjùZ+¶\Z.¬œ±K*7I1²¹ü¹[û@_Ø4Ç\nkQ¿i\0ŠVÚ»˜M2«r±„eY[ƒ\n®É$ksÉ%LÒºƒ7\"œ6\05–í·17ã’åS!î¤Ù»{-Ñ*21•ÂÔyä™SJß“0 ’LŽrI¥æEr(9ÆC€Ô$ö¨V÷U¨Îãq\'æb³{²í™‚«°\0G©Ü€êÐ—(²FäºÅ5}5Â—âiz7†3š+Càõük®Ê#§~±9>ÓB#³%]ñ[­•Ø—#’kÞŠ´l@g®ÍO=º6Å½·ÜÕçNs-äç<Ã*×.¢ŠmÒK÷0.Õ–Y&ž¯#3‡–šH²ÔUS}¾¥¸\ZžU‹òÚ]ïÂ©ÈðŒÔ·ÐÇº¤Ô¡u­yŸdjÛù’Ìû¶	p<îé#Ã¹öìŽ7q±iÁŽ`Ï&Ä`fe1vš1=¸yYÒÑ%W’&†ÝiáEÄÓ2[#ÅÜ®6ïbqš‰2Ó·¹©Øž‚’ŒÌ½s7­noew\ZþTFÝ«»¹Ó27Å‰1û(Ë¹˜‚GHróÎªu•†>T½é»×t%·c;f+J’…zQ…Çñ\'¹®Éâ+þ°\rczWýuþ(DíÀ’â“>r&Ú$¸sÐËt@©ÝZ;Z›’„×˜·ABwÍd›21üGm(XÔ–•¥8—™å¹rÇü‰\"jŸ\"äÒÌcR-µ7‰÷þ²Û«µ´å,ux. /ÎB)dR2÷p§V¾…[©Û%j<F0¾¢ä³µÜ¦ÄÖ™iÄ‡n·þ8Ùä˜È	LÀí\r¼òÕDCcîÛ<¨Žcç)¢;§Z¹2ó<HÆ­£1Fi-Õ¥bÑBðªù\ZiBo&JøÛµ1¼] ç\n™&Uæ\'/ì}¯&çfYwRÜòRHOHño+ì\n¶*\"SšLh_Å©jOºÎ#¼“2®++<äÎPãÝ…â-vZ’âêMBSÞÊ\0žä€	¹rhÆå³5¼Y†¢™Š–væ8yÜ6~8nI0IYQÝ¥¡ªZ„kÖ˜F³‚Í-Áå\Zy¤YŠ:JÊ*â#µKÇîõOœ”P\'\\äTŒKš†êh‹U®¡3b#y2»9*ÜQ»ŸßO,ÌMžF¡\n¢ci\"†í<¶‘,Ò†Bé¡r±LÝH\r½ˆ‹räD—Ñò÷áù-¹‹§,75°µæ¤vÅÑ<ÌrËÉ˜ \nwÉa²R\'ÙTse†¯¼3¶H“Þ¤oÆ‚t	Twb‘¹`mQ’d} ÂÉÍ);M[ÊÑ\rÙH@¹¢›b-Ì÷mF\\Ófz§ÝG¢-rÕÈ¦€Ôöç–‹,gq;Tm£w\nÓß&)îçj2M5ÆÃn‚1\\¸c\\ù´R™>^¹²6Ã…ä4Ã §+Î\"ß(áH¸’Š:¦TÆ	¨Ú5YçYOR³ÎÐ+€Å£íNËÌ(Dš·òìñ=ä í–Y¯Oî†¾2F/•y²¿…˜aL‡Þk=1–Üzâ‘š.½@p8ÁP\Z•^S;Jåì“R’1a(’EF¬¯%î#¹Å»sÙÆdZuXæÉ·ÚÛ™Bû¼Â”QjâI)¤ÄíQÎÒMî’Bî-ÝQ \\\nÁWÌ9æ¶õ¤ð.:HôÀœ´±•Ø/I2(ì*<œ3tÂ€j<¤»€Â\Z-·ž¸Èéi—ÙÍÁ=2zE\'­DÊŒ{@88£Þ›â)^›µ7Ì^]N•££s!ZæÉ”« »êéãXw¤òsYdYÄ…~$R„i¤¨LFBÏ\"ùydÍÒ„Rò9272”´jåa‰QLMP1\"%,™”¨æ±jŠ3.™7Îh<(å®§mbži•Ý0r0µËVuØ\n(xA»Þ~¼#ÎÉî‘€|å}äÝ-ôÛ›”VÓ8z@’Mp\"Û¢y6WU¥Ô4Æ¦š/m&Ì4~þsÔhÅ…^Ç$»+ôö…ùŒ½¼\0–TŠÌ‘¶öÉºbéHóÉ´$km²Ûõ5$Dv^.û—8\"ßÙrŒõ¥÷bºIwWg}Ã¶z\0d\Z*¸Ü\0§fúW\"‚žY®˜5îDæ3nˆŒáºíü‚®}“íîqrIú\0v¡Þ¿Å!ÆN=ËG«š=*çû‰+¼¨©~ˆ9‰Ìb®@wHÝÙÔÛÃ3K¹¡>aÌ{#bØH„‡ž¢1Bi|³²;±\"Ý$@ÇUöƒ#xü½3¶v,Å°ð	\ZE“Ëþ@*\\?)fqq/¸HòË&jhä’T-Õ;ÇUt\nF•Œ\nû¨›bI@6)~ê~AXìàwP,ôð r4W‘)%ÑSq¶Õt÷‘-j’]’µ·9‚ÇÉpiÅåÂêšbÅ›¨¤WxÍ[,Ò=rdÌ-</ÍZä«dW8;RÜ\'šPùGÉÝ#¹HÊL²¨òïÐÝ[ï¹æ^[‰—Ü™Œ?9«ùÀ´_œíŠéÜÄ@½ñÒ7)Ž¦FöÆ\ZŠ½»{™7äR€ò­g|Å•Ê¾Pûºú¡ö~èu+@þRY›vdš®}FJºC†\Z¦…ÝºÝ¼Û—ßh$’Èµ\"9ÜÆ¡åpé€ÀAyyÆ£ær¤(9‘Ìlñ±–^_G2QG 1”IQ$cž§\"[½äDeÙÌlŠ¸‘‹28w54LÛLqóç-q<0Ri\Zs²#ptL—…Ù xÿ\0Lò@Õ¾­¦4j±\"î§´ã’xjË9~²aôÍ–Ý¶zM¥YeH–§×--¼¦ûBï…5lc¥jÖ+k	•gq’‘rÛ}Â¼—[¤…¼Ê®Ôi¶Ä%Û<ÐÆÌ°eö´Ã\0µÜûENóÍl¯¶CQ·f8“<Æ\\7(•|$ÁWqj‡ËEì°”Žôr3S ŒÖíÂ¶ ãñV&ÂHÇµ©¼PŒÍÐÕª+K¸†ë@äÑ\\B­ÛsÛÊî)~t	+¾j]ÞrtÙ¹œ\"^\\iøðÓ-J\\-3êÕ\\°;#Yi9k‚†GØehò€~2\ZÈX’[i)Õ9Y¬±R°æÊÃ˜ÆŒ¹¸@ª±ì¨âÝ.Tr‹PHËf	š;å&²çe_HÐADÛ¼º|É©˜.U´ÜÃ²>gêWVJµm{ox›¥³·Ÿ56—§¼». Ôô¹c­êæêÏ|·vðŠ›^‰W>oV¼f§ÒJÆgÒôïÔîù÷ y9G2iq}¤ò‘Ú)%™j>aw&Ý™émùu±%‰%~bÜ[‰ª{ˆÓp/ I—f4©#)®Tže$º;în¨¸òÕý1ˆAh¥©—fœŠïpWp¢Ùë·Û™¶¢À¤“Y-Ó®ÑJ¹jÏL¸Â kge¡É²Ì›~èœ“_x…(èOÐ¡íZPpÕròRžtI	ŽFSmÜÈTÆàÙ£w¢b„6Èì9Jæ’U7¥\"—v©‘åL¬GiGì\nnbå1´î5“šU÷¤yåÌó†0©f¨£û(²£\'XÏ.9ØÏ1ÉQ+!O©jm­ÖÚÙ!Ò§ß­ÝT‘$Ñ²=¬úiÍ®¥ÑÔú-Ë\rVÒ¦1Ý©Ž{[Ë4WòÚµãƒM°YÛÛ(š…µ‚æ(îx’ç|0¤,w‡Sž\Z?ù«z¼nôäžA,¶ó,²#[\'\"3,/+šŠÙW|‘\"@®gq-KrÂ¬¯,n[Ì¶j4”Ç-{ð]Â‘»+\ry5\0i—jÍ¸@§£TDoJ¸ÉœºêOïØ¶É˜gÒˆÈ¥öFô·©ëÐÈÉ\0ˆv¡¸ª$Dî äø}Ö:PøQ¦è”µM\\8]Nä7/—BE(yyJ‹¾I%‰ŒfPCºÈa2î¤fY$£(ŽãdOÜ(—i0ŸŒ/Ew`£cìŒ¡æ>	÷	Z¤‚L¥9õDcQ•Ù%%À!7ne}¤i5y\',íáí,ZÃÎ¢üž*•AÊ­2;“¾=:úÆ]ñê1°	¨ÀÍ¶çU²³¥âkž÷[¿å¸‰Ö¿Ò÷ÓÊÏíÖ…«QÚ¯?áO\\:®uxkëÐÈ¬1.“k)%¸~HÕ„úmÂÙ˜Å°Ž±/ÌYa=ZQ™çÊ\\‹Iæ÷+´í†Æ;¤œ«VEI\0/!·0±2÷R`Ê	êõŠ­8ÃQ\\²{rhÆs˜¶¨,À“S:Ê»BaªÝy“(SíÊŠèSv£íQá%\nºUmVZicè#*%l¸xÈ–ÜÍ-ö ,od1»\0Î‰…•Ûc•’âYÉH[”«$(ñ½Gµäe‘vJívÆ‹gÝÔJ¡¶Q!.Lw„Ç‹´JUüŸžWv©\\­¨­N7·^aFÕµïÁÄ1KjüÈÐð5«^:ÂK:0ža5=:6/ÚG7*¯;o¿2C)}SNM^Ëfƒ©J²¶™{ÿ\0záïQPíã÷éx’A‰tK91SpÙ^·vW°{[·†|OrÐË´^\\<MX<Æ¤,IŽæâ4ó”JmÉ‘16>ªÒDYÃ;or@¬1ï¹Y·Hà0±XhÕR:²µçz¡ –¡7VH¡ÛÁM¤T‡p£¨§#\"–®\r^J‘ýÔ7ô \ZFÚy`É[Q#4ÓÇ 4ØØ ¿?¬ò\ZRO8\"¬,• ŠX‘m!‰,ßˆ‰Ä€‹Ìµ)+Rrâ`AV”öD\r\r²±¥T•ª>oCq&ÖjXe¾™#Óm<¥¢§‡Äqk6‘\'2ÉI­WU6 Dn¸†O¬j-læa~R¼æ›bQ6¨&PÚÎS%2+©\n.½¥¸ÅÍ–¨5-sÃ{Æ±	?göe‚)…\\hvsÓh3¥£E>¨ArÒ;´—í Y¯e©aD”¯+œdfé&ÇÊŠ¶^bÎvŒ\nþ4¨GPNkþº88¥_pYcºî~Ñ½–]œö\n0ù ƒã_UõQÐêæž‡Jo‘¡W=5ˆ2n`ñ—Dàb“G&ö2ò÷%Æñn9„#\\{Åªm…©-(O-IîŒ¼3—Ë»mJ\"M•$2‰µÖUP—0C1hš)n@Ój–¨…ö£.Ëí5ìž4áý(EþãÇˆmùú\\‡‡œršœáIáù–KùnºQPÝ&Ó-g9‹Lµ°~w6;€akwˆæ=Øôk¶²éwgPáHÃjãö3W7¶ö‹ºÞt¹…eõ\\ÛÛJ»§á‹”ªéŸ¥@bXÌ*NôÙ5Ô·‘Á ÔîŠf4Œ÷(vœ±ÜLƒu[\'º6gË3‚ˆÝ¡‘ÐŽ†Ÿ¸¨GzNôzšzŸ•ÍÅÃ0÷WµvS¨^¤lÊFÒòä—1¬ÐOæš£‹Z(íùwþÝo`·¤¸ÎÈÞKp’F9hdžE¯*üã1¼›¤™#–¦šj….\'n]—Îì\ZßA²·9Ô/`ÒlZM2Æ}SRk•PªŒŠJè Á<¶×ú¬@­Œ¯½ê×Q‰ò\"ÔÐè¶˜n!¹]×sá)lï$#Óqn—0<ZrˆÄ#Õqw\r¨ÍÆ«{¨¿\\K ¨ÐF}W’3\\Án*âÚ;¨š-ZÁôL#š$PÉšþ&»‚aV0Hà×SšÏJÕK¿ñFÓJLY0z>)í5Þ¿Å7Ê¾(*?ó_Uü…}\Z¼\nn‹Qamî1ÛÇ2qR¬“K@Ò,Q¢#RòbbIF‰Œ÷\"TT-,h¤¤ë ¬ÆáÝ\\Z¹–óPŠId’+{»ÆÍ¯\n]Íî¶á»8qQA	¶®\'ŽÚ##Í?ê(l­#²·zu½CÊê,!·üìö-nmKmã	¥[Ç/1Ózá¬äŽ~e¹f+\Z¡>­oK]FÓ\Z¢fAkè¿7Í*¤Z\Z4¦DEEÆ=f¬	¹Ôn\'ðâ;1=˜¾ƒ-I\0Kh›ÚšjÒ·ÒtJaü“o•aƒ· €\\L\Z9NpV›ÞI@7R¯ßøð4¿Ó£Þ¿‰¡ò®ø­A•¯Ü;s@‰¶©•ÚŠÎY«‘ÕjØ¢JƒïbÍ½ÖÕtc°\\M\'²1Ëº¹h&ÚÚË˜Å[Z^]t³áK™v5·éÖÍ¸(Qp€¶£¨I¯Ý‹m/MK³êâ->âÎíïËy\'{kØ\'ÃØê7\r…\Z¹F1OÈ¿ì\Z× ’ÒHµ-;P‡P€Iû·Ë·s¢Å²Ëwƒ¨u+v‘¥ÔÉ´u§ÞÐª€h¶å¢ìUBö“_eI!CŒ ¸ÉºÌvÑ&íÄWonê\\æJ_˜¯ª¬ÑÇ/!€ê¬âá±5LvÚ»…žI6H²\"¨š2cZx—d’Bc|‚}’´2_Í[O{vq¶îWËµµ±¿Ôvº…°\nÇ¤œ\n×u\'¼xì´M(YCŸGß‹\"°!c´ÓVå®ew2OšÜó-µ0±Û6í:Q-”Æ{u“Öi‘]\nßè÷\ZmÏžÒuˆµ(½vÓ‹˜_¿N·>#ŽÐFŠ¾ò-¥–Q‡ÏZ€Uå¦¨9¯úÅ7RAB¹’®I#ÎuÀ­NEó\"6Æ	èÝT{²3Œÿ\0 ïN@Ìúßî5+‚·C+1~by†<*È‘–uwUi×%Q¶Xm!¶ØG29nkj¬•Ì­PË#6bëipXD}Dâµý]·yNÑÂB\'¿`··:¾“ú¬h—:%¬ð\"]éRØ¹£Û–ä\Z;¼¶ob×£2Šâ)³ê>:–†y¢óFÖEÿ\0áôÆ´Þ–0úMO™õèSÅÐHŒšÖúmñˆGùjþã9¢z\n@Æáº¡ùæÙ:-Ã™äa„[Ý—ù\nÎåEQµèöÀj?µ\r$Ðæ¶ô54d€999b6©‘ÿ\0Q˜_ËšHÝbyO–^5*Òò$¹Û†;`ÒH–ò5G:É>ß8|Ä‹qy4òò´M!tËQ\\OþN\'Ó¦çØÁ\'¦T2#,Úör+ÚkRg×°]\nÏ¯U´º¼X¢Ÿ‡¯[i‚Ë^¶j·ç]DÐëº<VVÏsé0Oa~öR­5¸»üÖV{œ]G|\\2ƒâ{\0Ù©eHÉ«h©‰ômm¦“ÉçÆcˆž´ô1ØÀ£Ð{V•ùõ»Fµ¥RËcè\Z¤È×¤›Éé×\'Û%vî¨vÕmø÷º“±è‚h\'ãRÞã—œ#°2ÖpEëL{QøŠþJ…9Ív£Œ>ã}uMÎ˜e+i\rrv¢†‰.&A*„•ÚwXl­ÂÜ‰î‡c3÷´²¶õ	Íq,; ‚^œÍ¤à=7z}µêâçBèµ[ËY\n[]GrªI<T—Ïñš{”@íÄ/-×—ý7VÔÑ‚pì	ÝBÏ”9÷ÏfÑU½ÔWò	…ÄW,-J9FÝãŽµtY€†7ßÂu‡[mcPkUM‡MƒFÓZK]NûD‘ ‚xî=j³M¹0¦È‘@ô_ÉË±˜èPò´Ôôj7æÊ²YVÕq…²GwÄäøf·ŽËý #±wÁëRhš\'RÒçhI)€Íc¦“Þ9Ý!æ5<³H}Æ¤nôò\0)I\'©–öâ‹Ä )r\0PÒÉ	Ø°˜í.YÖy\'Â’÷U?\rÆÀ&i2Ë/=ªi¤Šç3B©Áæ,\'„˜Å,ðþË aˆ¡HSmCP=+‹5dÂÇ‡ôä²±Gº¸ØV?1¾Õä¶Ò¦¿1¢Z_[”¾Ó¯t’K=ZÈ´-sl3ms\rÒs3Y#ˆÑš6iä©\\ÈÞ[RÔJ¶X4­<ipKyeßÜyû«H¯`0ØÚÝ%ÅÄV\ZÒÊy\Z©Wo§_‘…Kxù6ñÇLÁFfº‘æåÚÙÇnÌÃÃŒyKgúÂœ¿æÅl]õr¡l-¶œ¹&C²¢UÚämÛL¹9Æô¬&U1h É {)W¥<`ŒrW·ÜÕ&ß?rBÙ’WN‡/,Î“¸ti#™ÒiæŽ(é^fu©žejÝ-ÔÞ_HáØ-aÂÑü‡*ûGëÑ4K4MìVšL´ý&[ýBZÀUÀç=Á©ï °‡m°¸¹š)ëWu–Îum&k nluI,}±_Û^F—7³Áfõi«¹Qy›•JƒtCuÍÌ\ZE™“H±”Èú—÷»ªN¶Ü\\µ{cü&;¥¿Ò¹+c©[êïð>­ÎÕà†™öŠY^üæW›å#M‹ƒÓÃŠÓvŒ[yÉÅ+p¥P³èw\Z\\£†”äåf‹•ÜƒŒŽ…£^ò @ÿ\0\"3@t¯þ¢˜õ¡IR —R¹¨J|%EL×9d7)*,Un`·Ž™{yms˜ªÛJÔì$ñ$¾J†ÓXK˜$B’zd»†+˜àýGV·Ób-¢G.«©I¨éVâlÒÀ‰+Ëcj—·R\n¹Žåf£èÑJD¶è‰³_Ò‡¶YD–2%[kSÀ6O4±k\r~[ !³¿¶{¾±¶—Y¾\Z•ä¯¨Ýù!KxR*‘Ö4-=Û\\kždQ«í3ù‹~!žÎamñÏs_U¤²Ïª]Í$«r¤¸ÞòßË©L-,¬ã²·X¼o-\"¾¶h.ø6UÉº´žÎ~J¾\r(Ww ŒJUÌR7P+;\r0¢NˆØf†Ö!Xî$–,¦ºŒÖ·f\\gåE°Mª•ÍMµ<¼½BzMŠ¬ìO°nŸ8hŸk+D@ˆ,Q¢C¶}Î¦a\nM©]4|77,IgáÅ°ô·—@¹ó\ZL\'ÓÄ1í‚+ˆ[|Hô}R:Æ…Õšášë’¶Zh‚$Æ©àø‰½Ýä†•#³Š­æçG¼œV³¨B¾ÄÑîï7—FV)¶3\n‘ø.jÞÔj¤÷-%”v6â/)¿äXùrÌgŽ‡ÝŒÑìžÂÿ\0B”Í¥k°ê#eìœ»9šÆvŠÍ¼r*	®§¸×§0YYCan±xf³ãyc\rô\"6LÉ•*Ô –ú+Ö3Oœ\n‹\nÞZ`ËPêMFÊ’+öÐ^‚¶äR¸zHµ™CQ¸,X]œÀ)Î*ôŸ?%bo,LüÝÐÇ“Ì%ZiKÊ0#DåÅË‘³w2dG£i£M±TÕc:F¢—Ñ:ËÉ\\Cm1›„¦Çš·ôê1	le\ZL¦m2Ýý|UxRÕ,ô8?\0¾DŽÕ\'>êç•wk¥Â*ÿ\0Xf´ˆizS,þjæÙgƒfµ4w7QÁ‘Û®Ý^[šßL³x·\\x\\Ï­»Íy¨~£u%Å¸æ]ÀoF+YáátÍq¿{liì\Zv‹³ÝÍ¯ì‚ÎÎ(2È\"M×÷’ÏÍ—X½ŒP×o¶Q×îÆUx–t«~$YgHþ«ˆ-ù\ZåÅ69iCiËËdÂcgnÖÞ):™I|æé„Û±ØŠÿ\0èPŒÐ“–Õlpî\0ÍWIˆ» ¸‹ýó	ÀØ‘¸à›l~EWØ­	Ì’ƒM\"Ús_†´ãwv×Õf·Ö\r\\¹·–Î¯bçÙËƒ.Íu}L2¤hO´ÝA_~– )(¯ñ¯(öˆàêÐôj72[\"*i‘¬Ésof—S-âã`­kR6m\\×k¿1\0ÄËXmÍQLm‚Í£kð¥š&¸ƒW{™9Xeë¢ÇÎÕ`AêÔ´›}N25\r2ûG$pÍÍ“Ùˆe™!‰ÚmZçd%´+Á¦tò6†ÂKšn°c•]ªÉ¿ŒJ?.\Zè@Y×k…,B­F~ÉeŒŒý«ÿ\0çØD[ŸqeëR{6†	,y)x\nÍ98hq½„˜ýNQvgÊ„}”vÍ\"G<Ï$Œ<Ñ\"ÕÇ3R¼ŽÖÞôëŽ„¹&­AO×-o¨ö«€Ö:óÔn$EAíP–µâI‡Oj>RÃ“¢éÿ\0§Ø*|ÎQB(_MÔëƒ)¾TV»`í­[¶ƒVÔQ»ÝMï˜¤\'XÐ|ÍŒW[I@VI­9u¢ë©,A8‡Z1Ÿ\'´lË¾õ-ÁÖ¼Ë™gõ¼k\"Õ8j[Y|Ì\ZÔ—ä[ZA¼!$•bRÆIfÍy3!¤#ðo‰«Ý2KM_‘tÊ÷rr¸‰Fð$÷12\'MÀ)ä` ëŒdá©¥<µ@Ý\rB„-c¨3õë!¼OÖtXÐ‹dR0èa‹ì\Zœ§\"pí¹bsEËÇ¹&`^¤•ß5Ñ†ß%§mC}@~uPLñ\\mZÐ^Ø´v\r+YÅF¸º\r—‘Í¢Oæt»wôë_íî¬îhz\'™-áytûdÖo¦ÔOA›höD=WrcÍ¬ç0öš¾Õ.nnÂá¼¼-ªÕ±»¸	ªéðivëÐŒq…¿7“&Ôy `ËùTŽYYqÛ„ åéœÏOß£UáØ/Ã<wz¯þ-3[Ó®Î.µËN—<_&*n#Ô%ºÛÈ—Oo*ÇÉ:ÕôÕÔ­6IA#Æ R©ëKž´FEl;®AYèÔ9;ñ3y»TÞŸµlÌ‹R¶\ZF„-H{˜²J–Ç:wvAbkÌI¿%äXÒšYjÎnwãRI„û¸wUCvõ<	qDÆý2Òíù¾SÃ‹!¦s8>múk§§ˆ\"æéntùÄú|2/oZÕä—úœze¾Ë3˜a\"ú¥“”ŒÖñDÔ{VµJªÀ\ZT2È«£i>B-üYž|ô×Ãˆ´£¯z0èÕžXÊÊ·Kô4x¹:]²úG¦HÖUÛ®pç$I=¢I;˜ áy\'ÁN·À©øf[oË,÷pN›útå¬u[kñ\\Q£óÓÏ*€´›Ñ$­§eTT#ÜÁç|îç-2Ó¶\\•j^‚‡cSô•‡¼Ê»‰¥_n\\^‹`Šëæ]ÉCu©	z¸v¶DòsûëšðÊNºó–QMW–qÞÛ4 ²,-o¥ŠqiZœgOž.&×Q0únâçZËÎ^ÊXGƒºÆ¥¯ø‹ÞÐè¸®Í]¡•ùPÞ2ïe`Ê£\0Ö<5}u-’ie½v¬\'&:Ð´8¬PKŠâÖÿ\0|‹	&?Tè\nêúaÓ\'e\r”!‡,Òt [°F=‡«kˆ4¹-o#¾Ó§ÕfG»^,†2c‹ˆ,&@Â[k¥+s ZN)tký.à\\\'¾0uýÙ]ØVÍAF\\¬QA.*PB¨_–dËP9aAþÁÀ£&ÔÍ¹E`\nèçp\\XêÔv¨>æ¿1íu‰è,¼¢ÄM¶:ºæs–¹\ræ˜›[g–ÃN›T7ƒîƒÚË…å”w±„|~L]M¥Œ0#2,8¬é5h¾Kˆ¦Lâ¯u,ãÞ%¿âŠ&‡m“Ámkæ ¸Ó¬î?T²x²ó½†e¶1œ×ß °\0cˆÑ3Ãq~CØèðÃ_Ú#Z0‡G‡Ú€D ø^ÙÅ}lÐjgO¹x#eRVÎ×v¡Òhxýú%e’Ø¶‡«¼WZ}Ó‡ºá;GÉ¿‚ëOºt±»ÕRö\\JŽü•ueŠ hîÍ†Z~ªû—wJ’R\\ÓI†¨ä`¬z\\`ÕÆw¨æŒ¨ç®k˜$š:A×ªæ¥þ¢~¡qL“W¾;M‘+#!ž)å·x¦‘î§’r!ÒïõV‹åõ¶uíâÈ M†Î}=‹qL±Kö’s­b“ÓÄ%\"H\'ºâgš6iÓO©Æ°ÂFµ‹9$Dº™¹5¦¹Ž9#Ô¦‰m™êÖV‚_+ßÀÕÍä6qoÕøƒÌ–:uÆ¥s)@jZuÞ¤Xû-u=J=6×›¬s¼Ê¼Gñ/£‰,–çMy]º-is´:„Mé>éÔìÖæØÏúž•5µ•ÀºµI.¬á¼¡Ô´k½\"Cug®Yj1ùx¬$²\\¹]BÊh^9„ÏãÔÂ6ÙJñ±ÝNÞúöP}°(È4žærpÄºd±+¾\"Œ¤Ô¿×¬€¨cJ»®\Z¦@of×”iØ$jÀ£Æ$å…‘cÔoA‹gh\"ÍÕK¡XKt·\n0 zxÊÕ^Ê)ørîi´¸«ê‡„’¤1—¼â/âm/u‰éZ:w¾ìÄv^‹¯ü&¢n¤Xô™±gvl§ý9¬CCÉ¶™˜îu8-·Uçì¬÷z™2i:	¹),vñÃoÉÒÕÄF<.§‡KŠYì-%Ô®QâCmê1„Qã4BhdŽáyRò¬ÝRá:ƒû¦¯SôSÍZËË¿¡Úˆ­[…áºÌ¶Ú–£Ãór4íRÏSø§M!…úç•†.#ÆÖ,F$-¼T‡ÙËìÕnJ$¸pµ>ym%³i¤œù–H‘ãèÆ¤Ÿc\Z‹sŒ›#¼‘]Ó˜¼–…c1Ä\0.É$ì.ÚÞ£Ž&Ô=‚>)¼ØjËŠažQê=\\E7C¹®¸b·0}Q`_kÐÅ•iou‹…\Zwclˆ+_&;­>E9P|. K˜?Á#h¡\"´mSMÕlBUæ¹4B$n°[†Y—¦=ØGDŒ\Z±Œ‹‰œUÝä6P™`³—^¹[À0¸×\\6¿*N½‡X¹B¹ô}¬[#+(?¹÷ZÍ¡º²5d$¹Ò˜X\\ù«D’\\ÚÚêP”Õôy´‹´{GMSIŒßÙËau-¸ÎÑ]v\nrq…ÝDù”/|FØµc63Æ5UY!zK\\Vã†2åUêDÞE6Û×,K~ôÍÇ¶UHcÍÊÇÊF›ì1@u{¸mÛBÓœƒ7iòŠÕøutëo3¢\\ù&ÝÁôÍš…‘¬Ëîµoi”Ô5‹Ù¹v<9,ÿ\0’ÞÖTÙãÄÑ;éœÈ_™oã¬X-õ¥ãÖ!6×÷÷êFŸs\ZÁ)Þµc¤O~#6¯e9µV2jM ™çKX\ZX`“ˆn–ì(E\0Ö·´ëó0ôñŒo-ç=Eg©:6»&ž8¥I=Yô5m´ÔžÞÔ.Ÿ¨=½\Z³8’tÖlüæ™*p´Ûì¤‹Štß5kæw©IÙ¯ŒÆ¥äwnÜ	Í&íS³u)$¯Ë‘{E·Çž‚^†®æä´J5ÆIÈ¾œ¥…qgb\nÇw;°äèšXÓàÝR]Â’rï/VòƒAÒ®ìF}Õæ£ob•tðI¨sí4[«ÇZ´Óíì×J3-„ëÃ“ó´h<I­W[K6D‘åyƒÄË¾[9Qã­7†¤È¡-ý‚_(¨®ît«‘2¤Ñ	–4,ûøŽìãXÑRjmÿ\0°ÊÓÄ–žgHî#pb`6Ì7YžÂEWÐßB$õŸN·oºÝg¹o9§CyË<)%D[õ‹ÍBæ=%©ÞÛ:‡B58éÚ¦Ñ–êw+Õ–TI z=#ÀgåÚ”.BÜò«õ;r@:³!UÔm†+õKsÑ¦†i…üPÝ=,¼ëÉœ	dbWš$ˆ]]º~±\\BëUH†7ê7‡1hùdx ŽÛèšxà¤½×Ì‰-Zé×:”»ì´{[,zØf´[Þjt[¬kÇ˜Fg¨ÀV¡è¯µ\'å©pþ7¶q^@R;™ôK­·—ÿ\0­ÜÁgoZÂ±f³FµÌâ¨z]C![¨\ZÆòklç¢¾šCÕg<–xŸNÔâ¿OÚ»—\Zjd¹±Óso4Ö•>#Ö`3~-fäõñ/ÕkúoŸÓÚ¤C¹F¾vl³‘€aGv)£Ø\0\rAª6÷Švèµºƒ.×«bŽè;>÷w±ë#×ñ&~Kki5+Æhì&——Vö0[œôð–êhëzræi‚¬õËKû£ö¹°dÍö«6l4­ò@\0~Ôÿ\0ì8¦\'fÚ3«ë<¸Ùd™žMÑÇ…­DhÑ\'=ý\'µq$Ð¥¢A£X\r&Á×Á:%ö§«±]/Ok5$ü…]/þÄÔ=\\X!MR&Û»[®9C<µ¼™–‘]eWÒ5´¼^WíÜ!Ycžüyk¸.ÅjCmõ”š±Úm˜Ä®ÊÕ<‹/$²ù«Ç˜Ž¤N›-á]¹4yÚë‰*ãÛ6ÝÔ®A©[òº³ø3º·[ÖžA•Ã,xËH÷B+m2ÁtûAºÆ¥®øš(ò.8¢þlÔ—7×{itBlÃz¤ òÖ\Z±†{{Ý¶:Ïî†íãýþß¦Ø­îu]u\n2K9((&S~‹¡qsXôžÔâ¶®#wœCco§yº»HáJKˆ¤>û¸èzMq]Œ‰to3»h´ÒÐÎZD¨­i7&nMÍ³«Dt½t¡[pÀŒøŽþ¦†.aÛ<V¼ª®°ÅmÕµ¡›E)ñUyË°:²àGc‹Õ;Ñ2¶cWßL2¹•ËJÇuYûæÙs 7RÔíø’³E‡$VžWžiåÜ8>Ù?<õÄ¿G´þ³X\"qek¦»µ„\ZýjÀ1:ìA)lnõIy–:]µ€ñûý½z#&žôdyIíŠ¢&… ‹R.}f´ì·jr4ýj+_T‚öÐ[ZXËœ1$r. ß¯+UÅ¼wP¼:–žú]á†ÙJ$ïÊ÷mÂíÆÞihº·‘o+¨éq^Û‰,5K)¶G •CþÉíQ/¨°Öbæéò\rK2i‰Vÿ\0ñã£ZÅïŸ¿•ÇÑ³…¤¾Qu/2êGÉÎWm½2ï¹Ù³KŒÙ¬ÔÉË*3Oª-¥1I™Ôy)ƒg&êxêxVâ‹Q»\Z>–ÜÝêâ&þXZ¤áûÒûløeÅÈ’úì[\'\"Í%H¡ûrÄ³DñÏ\0³½1´…®`°kLÿ\0äº]«4UkgeÒzÕi†Öb¡ëÕ4ÈõK^TÚå¥»TŠVFBÙé¸2+Z^¹%Œ‚;»õMÅÔúU×&Þâ;˜D´=gµ\\ªá%¿ëc%6dÑ¡køñÖ¿zl´ÉY†Ø£\'#NqÐb¡Û;Bô ògÇ?‹ÆeÙ+-;–«Tß8æ[&<%Ïª‰QÕóE€Éâ=ZÖê4‡A„G£ÛV(UõÈ·„6ÜÜLo¼j¿h¶ÚÝ‘\\QlÑj+<íþóöjÒ‰ÿ\0Qj5õSÚo~lW¿–)ú\nÓ}úÅ½Øû«Ý>Þþö“6—(©FÄM°(ºˆ3çKÕä°›	åµkpûn´YËAuÌ{‡£ìxš\"ˆÝ	X?±¥DûmQ¸žðÝêBÞ@z¦ÚCÃ!\\£Šosš2Ê£ø’v(¤Ép–v)‚ëRdcjÌÄ’„hp®™¡«ÚŽE¹}w\\:‡âÃíS¦ÇÉÓ­Ò¥‘bŒºÕoÍ¯Yíã4ë¢ó_KPÄ\"‰Sˆ,å’ÒÅ†W°{V”ÿ\0û-í}x¥è*_éµh¿Þ-h~Àð–4–6MgD]=|ÂÔîÞ	¼FÏ3IÕe±›6w°j0çôÏ%?:ËPK¯gì0ÊšbWK™u¿%§óS2³HÍ(bµÔ[²tb*5-\"¤¡EÄ@Ï‹’B\n‹<Áák0¦£b‡:M§êz¬Q^â{ûk.(ÔÛ>CMÓŸTºXõ›uSKu\0V·xÆHí`Hô»UEÎ?hÑ \nº½0¶m3ó—Q·ó	oS.øÙeW†R£°ô}út°?ÕWžÚ®Øðÿ\0÷«_Üžž&S²6rÇ¼Ä§M°m—öÙÓµ9´ûŒéšœZœç´Šã®ë›%ˆ®}e@xRó·~Ywj=vÊœ‘ÆcÇ[UìËÐŠgÂVV”Æ‡\nZ-­œºŽ™wÒûSiöô¶™b–i ÜN®;UåÐµ·i4{mò5ì¹½’OÚgÚ2óËvå`µŽÕ	’SxLVz|Vƒ4ÕÄþ_X=~ƒÚ´²Õ—ž›Ïø“Wÿ\0{µýÝkL\ZžÉÃs)#WPRÕÕ*H#-¥ä¶R†Òuè/Ô&3FÞ³ŸWk>V,¤Ž­Ÿ*­/Pµ´àÏëãi5ˆ!œ0ÀÂ±#£,ÄœÔyËèªmf	xz5üiÚ\\+jn5uä¼‹9¤á8šKùfíZŒ­¨ß%­Ë­¥´vöðˆ\"þÍÅÇ(\ZÒÝ´É\nä½È¥EBøOs¸ˆµhoå…tK³{¥Á/ˆôÕ¤ŸýžóÓª4Û£ÃOÿ\0˜ˆ~çù®#Òsy\"7ÌÖòKŠ*Ë$‹\ZæQQ»Û¸“Hâv@Ó¨‡›7û¸U—S{)]^•±GˆâuåEÞÜDªTjKˆ\0¸˜Ìc¬‘in7ÅrÖ­\"ß:, ¼ÌØ;ªBrE(éq¸WÝ\0pkªÚcaÙ¾\rÄ›1V¤²²hÖ¦MrøÊLßÛ\'	ÁÊÒ¹¼O?\'HqÂQ)4×Ó-]´XF÷¶±›­JIÇìf®õÞ°Ák°ódŸ|†,Ö2µ.$Š\0Vöî{¤ÚpÍÔ­–¶ÑÚ@úÏjÓr8ºìF²BéuÂÈÇWSû‚¤A\"•Õ,æµ¿1K²ÜÉE_{T0•„$¸­#_žÁÄiäõDßs§]¸Z“L¼J7!HG½Ku´î\\š¹L=#’i>ëÜ*Ç.ÊËí)¾Šbb¬­b¹/VèÉ&ãqKØ4ÖSì‰L¹44‹š\ZUÂ¶6þ›:ž„Iys?w­.V“h¼a8o…måt˜Z/)†ÓR‘¬ìV+(<½²\'ì:,ˆTòmC1Yni#XÔ-Š»Öí-QÍ÷\\]’¸’EÅ”&fµ„~ÉíZi#‹.—Ñ®e¼®þèß¸hxk6vÔÔ±¼VëQç˜çi1³î­¬X³ÆÀÕ­ÜÖS~&Ô™*ãTºœS¿ÑlÆµ´¯ù2Ó´žàòb•Ë$’‚“1ØHÅzTlˆ]œ±èq\nïlyxÅr‚‚pw«®´w®ô´cþBW[´¾o¡\ZªÕªì¶‰x´Õ@œ¸#B«%Ð’3úŽ¬²þÌ·!då­±b²Q5}«AimK_¸¼]¨®ÊÅclŠ@¿¸òW6H²Æ¯ê>´Ïþ[sY§»‚&\nÚåˆr¶º„wf¸…¶èwUÂ=u9íŸGÛËó¤™·³Dí•¬b”a	‘[˜Ô#mëR&rÛ1Šr¬Ä\\ Š5 @¬•Zæe@î¥˜g51ai\nœîÂFÜ†™îP*®ã’„–Ärºp»IÍí5œ‚uMÆøÖŒÁ´‹SÅÐ’ðKÂÄvNoínkQZX:é6ÆÞÍ`ö¦2LÌ‘Â‘\n\'®uX %5\r}Ø¸ÜòµÙ@¯\'kBK—öº`Yó´k‹¾¼7ZR~ÉíZQÿ\0Ù¯+Y»’ÒÀ–ádž\0ü;mö›Ö5NœIý’zàïù³þù«»T»£tßu\"Ê\"u9bµ¹±œ òÏ¶•*&jíT•hÍ&Â–CAŽÚ/ìÂ\rÒF·¡…Ç-”oÈP-3(;NÌRÚ¾,hccWÝb±øÁÎ#åÙnîk…gße$zäí<”øŠ¸„N›M]¼Õ¡‡öz\n»Ô ²\\êBÏRÝ4ŒÅb,(.Â•¹’1åÐŸh!ã\r¶´k@ü6\"á‡‚þ{?Ø5§¼BÃW³{ÛŽST1*hö/afR¸¨‘¢I\\\Z¿î®Oï}Ñ­f?)®NnW!°ô=©†Þ ˆ{3¢£C\0¥Å]mó4ƒ\0 XÎK19\0Z4\n¦ö3ry“»AÜü´ÙÕ‡Mñ‰dù:š?R¦å$†&ºâ\\S¯/ö³	®\r]5@·1y‹WHU–$q\'*}\",ï¹õ–­Ö§kj+Râ>j•¸½–BFÞa®@(L6íÊ Ú ,P‡öI¶ÏOŸQ”Go·¶Ž-L~“Äüä`êÓ÷à{U”¤ñsGgjàðMÕÑÿ\0ø8²ÙEÝ­ÃH¸ÁR{)êV˜{+–Û±c‹EájñÃÜHK/Ad¤Š91­H[qyã\\–™BdN[2ªïB`	¾„˜;\ZJ8ÍÔ\r`Ô‹—0E5ÿ\0íÈ6Ú’Âõo­ÖO\rXK$Q¤(#‰SÄöðžêT-©ñ«wªM,îØ‘J€µM‡s*ìä³5²ªEòöïé‰­žìÃŸÃ	½#HÐ-q”·‚~»ZL?°{V—õUÀôqYÿ\0Ä×}Ù¯¿ßâ(ƒé2È¨9[Ì˜uc¸–5…(„gÌ\\F•§G¾òŸÛ!­ùjœ,ª¹Ot¨9®Æß(ib~H’ö8£\nÔJiJÁyª@%°˜$](ŸdtI8¬v¡ešÛØ_@$›‡5?-uÊ>œËå#Ç5u?—·’Y8¶a‘¨j3_ÍÍ†’e©0è,A›5C|á†ªM³GAs°Hq)‰Ñô?›‹{xíÓoŽ³kæôÉâàéðfƒÒ<\riÿ\0·]GiÛÁ«ìº?½¬ji§[¤ßÜßW0‹‹iaþ˜1Œµ¿ÚDQ»•YÃFëMjeZn![‰ZÙwRB…2ñåc²Ø¥Î\"UÀlUvI€×=+ŸÖVœ(($e‚žIXnn˜£^ãL6œ}â6Æj=½OsMš\\…j¼…­ä5ÃºÈž1mDxOy¶*MZÌW·{ofîâPDVs\\$‰ojø†Ö{†2EpÔ²ráv³œîdXš\07+k•ù³¤e¤Òt=?4(D\0zÍXÿ\0±â“9ôÔ<\riÄŽ,œz8·¥”ƒ†`¹ÝÕõˆ`“MzE¨µ€)lÞ„}Rä²¢ô†$38N`$#TÅÜ)Ê*Á¼Ñ<éœy‘¾¤™6GK1LÐy÷1V7JÈ±,i¾@«H© ¡ê&,¬¡£¦]îÒKõž´®ï¢´­ÐÐÉF¬u®¢²ÛMI\n}…Ê/_IöÅwx–¶Ï2q</uj-A4òüT1Â‡åâçº`-lD`2¶ØkR}¶N-¢v‹®Câ(ê,¿IÓS¸IkíC·§‹ ä_Aui(šÙÄøžÕ¥ò«¯Ocôøkƒÿ\0¥sà?nîà[ÛÊöY¼¿pí å5õÔÅÇûö¿‚ê6³–hZA·>s¨NÎÂžVÜÂ#ù’˜ï‘Ø!é=ÁÀ-S&ÇÚTgñ……÷IKE)ó<ÖÏµL(9RFûË’c™ä\"ÜLq·5ÐR…f®æ»Ñ\0%¶!^ÚÍøTÖ¥&n­ÞÚbâúãÉ¬sÏ;«m#ÒiÒ³Réj3K§Û)Ê*F¤S¥fµ—ˆÖÅ¨E	*îBQAÍšHÆ›§¦j±Qëêâ»n~”[†îLúLCÇïÄÖ—ÿ\0É®ý<[ÿ\0\nàáþÖs@tý¾#º“õÆ–HÒ4	\Z }×RÍ££y.v¯£Gssæ|¥©£cn\r\r:ÙØÓíhiö¼º:e¶(é°m¯Ó!úe¾iôëbõú\\TÚ\\[¿L—_¥ÃI¦\"š:e»Wé0dT\Z4,Â¤Ò!cGGQC¥:2\0ÊÍ\0†ºTžÔJ‘BÛÅâÝWJL	Z–Þ?,Š°Æž®÷§`ðcŒõ­[5º	#Ä•Õ³Ô±.^ÿ\0ö/ RÇÂíyàñþ^\'µi§oÍéâÏíÑWgÊÜzì\\ÉÉ¶–Kû·º‘\rÁ¾û3Ì¶ð<“ÆcÓb¶E\n¡M^FÖ÷O¸œ/ýL0«C­gDæ“;Åî$æ¦jÖÞ•Œã)JŠŽ]„¶ÇÚ>\r#(éÖÓàS­mÎ)‰*£êY)~ü.€^Zx 9>%²ªg¬½Íµ=‚Ý°lšIYqZ%Šêwa‰a‰#ðûõÕ^C‹JQíZyÿ\0ÚæŽ*Pl\"<*?\rËxŸØ¾(¶SV:C\'ŒÈ.ÐÌðÅ$Ë˜d\ZÝ¾QgC“C¤\ràÙÝXpÊÆ2wg®k‰-]:šF 5w >T+wL\'F •ÔVñ³R«ïræºW´C£9/—é´©ö°®¾(p¯ã\"ílFz\nûðVÛ•)«-%µ{Œ<WZ.¢‹£ê‚þÙkŠ“ËjV—–ò‰`WôžÕ¦²ªe_G&í(×	“å§ýÎ)vMœe¶K}ÙÄ)6Þ¾‰âBñàÇ½_¤)@{…¤Ö2{šÍ\'ôäaXÅnÁ¦ó^êÇ²¶â—HC\"f†iW õ,\r6ÎZ\nL;ªäxÇÒE-ýCDÑ\\ >ŽYðî@~V\nŸŒœ3NÁ¶™louHa´´ŠÎÝaÕôÈõ;3Kq¤jp-•Ø¼eñ>ž+¶çi\\Îºó:l~£ZnON5A4ë~lšÆ£Á2ÏK\\JhòŽ$Ásë_N¯aú•‘‚Ó†m­°Ê\0éè5¬AËŸ™q±Põ®æ—9ÖÊÀ\ZŸBÎÿ\0×zÆhÿ\0LWÕ/¶:Qô2­[÷—cÖ¿MíaE³@ã¯JÆhb¢]Ç\r¸GðÇ†?=ê2ŠXîbO¶>ª?äu\'!Dæ/ü8J¶¼îÔ9±r¿bþse<\\!7õaô·jÓN8¶àq¼a5Æ¹dt÷m	-´‹h«\\\0é’ÿ\0ý·m?8È?cTƒÌY° }­à®Ã\'vp1RtŠ1èÝ–ÆŠâ›ø¶GZÝ‘Ñm5XJ“cŒ*2±È®£Â0¼·=<&î£ÐÝOïSGB(±æéõ¬\"ÞÞ8¼6äUý“éé|„2ƒë5§o°â;»psé5¥ÿ\0ò›’È²)TÑ¬÷xk\0*æ¸S>fèxýú>üm¤äjÍCÖjþü[&Úþ¤\nvšö×J¸YWèø\nöÐÏZ‘vJ½(ŒtëX8¦-ÉEÚqKm;îv5Œ@_C<¶4cšÁ¬	OHÇO‘jãçàNØóÃ0yÍlËè’5’6H¢XbXü>ý\\Fž·Å³o…[ÐkJâ›³èºNe¼‰Âó%ô}úõˆ´­ip·V±ÍêÖ5A§[U´¼è·n8£!\n£+ø¯‚º‰ýóµvÈðÇO[ÂL—Ç2\'¸\r&wš‘— u¥#˜¾¬–EN+i£]­¼\0£áŒx}Ôÿ\0ÔÅt«êT‡2±­J^^Ÿ\\mÊÓ^oVáœzøÖ`¶›AœÜi0· Ö•Ÿõ5Ï¥†F8s1ë’Åâ=zœ{Q.t9<¥Äúg§PÔaÓàß™Öµ&«û4³ŠvëŠxöœŠÞ;ò\0¢Ç¶I¯±OçÁœûipp¿;œQ^Œ~«ê”nlWOÀ‚?{EÖ›¹ð¬‹SÊÇÂ×¢Êþ\Z»‡–(tûaic¥ÁÏ¯‰íùú,ÕÁ³—Ó¤Š‡‰­%qÅcÓiþß‹O‰¡ëš5–®%²¾ŽH¦Y¡I|\rjZüV¿¤¸Ô®véZréÖk·ëEaÜScq¥päk²údøt¥êÀ™†Ü{7ÈÕºæZù_ÿÄ\0 \0\0\0\0\0\0\0\0\0\00@P 1A`ÿÚ\0?\0Âw]ç²zà	LFu1HùÙÔB øu?\Z>	>ÈÈ¹ÉŸ•N °gäE£œ/œ%šŒëC8Y\\XêÏÁDgSQTèë:Î¢!åx#<[QPØÉÂàÐbÉ¶ãÄÏ’o¸ï\Zˆl¸óÍG·£5^”Ôy:SQáêEPé…D5:SåÐ1‚ƒÁÔL( Ä‡NãŽƒù¡ý¸¼ŒZã­#ZG´tü‡ž<aÉwúÁÆuåó B!BˆD.ŽBV@(á˜\'<€Åä^G¶¿ÿÄ\0$\0\0\0\0\0\0\0\0\0\0 P0@!12AQ`pÿÚ\0?\0ºÿ\0%O1<ÄòT@vOå*>§IÊKý\ZŸÜªË1ÿ\0RßØ~Iôa¦’YÑAô ¦\\lÈb~êŽˆd!Éu\\qòŽ@˜ã³ª2<µ;ŽËŽ8ã¸Ð¸ã€Ð+;8ã!ÀF#¤lláàFœHÜñR8Ôñ6]#pÁ\r„SåÀçQEÊ.xS‚˜²Ã’ž0\r!ÅÀ5DÜq~ô&«p™N˜â¬Ô\0ìž†ãRn`Ô=`»Ž\r:Š(¡ƒ˜÷ŽcLs§ûæqë†°Àu´ú9“£qÁjN&©ôáûÈvÄ6òžqÜuÎ3žF3žGIP÷˜ÀpŽÉÌXØpSØ8‹\"ô]ƒòï?ÿÄ\0H\0\0\0!1AQ\"a 2q0BR‘#b¡±Á3CÑScr“áð$@‚’ñ4s²ÂD¢dƒÒÿÚ\0\0?nAj¾#+æ€“2·)£ÝƒÃu u_[åÃÔ£²<ÈXÜ§dµuøFˆB\Z­íÁ«r´.=IáÕi”ÐgEA	¦TèŽx¡z”5²‰µ—¼â‡Í8h‡ªÝüÄÄ­Ü†Ë¢Ø(ÕF°·+sÀé’ªêµ•¹á¢…·\rÜ¶²\rTÞQ:ž¨á¹_>9Àá©rÌ¨o\0<_VÌà4€9-WÍD O\r×U7Ém¥z(Éiëä·Yaª\Z¡Ã^«æ¶[.dÓ_zQXqTôEÍ‚sAÂÍÝbv|5Ì­¼J\Z1N¨ü×Íe\0ž;œ.ŸŠê¶\nbë]ÐIFÐ/WDÀ-Êvw_>š„s”8©€´	¹­Êsa’v—á™àtQžj#HZqœ‚Ô‚WHàOUòG,ÔMøh.µ.…ÒTÊ0BÏ‡EÑl´d\Z”z-Ü·0‚!dab¢âòžG#I+³vW½³œ*Ïï‘U;CÞ~ˆ±çþ²€Nl•*ÕYó•N³_!ÚªÔÑ7\"é®ÑÀh,µVøVç‡Äc†åF\\5(^sáÖ8î·âÈ³V©«^ªéÃyáh]QÃâ@áŠ%©ˆ¿\0Žœ#;,†‹îòGe°_Vˆt]%MçD(ÓÁªÝ—»7CË§ÃsÁÆÝWei‚ =v¯¶©±ÉìÀñ6ÅSçêìj˜66Zîºñõ\'†æëU°Ai+ªë+ðá°[”VsÀ)¾K¬­¸|—NWÂÞx¸\rº-‚ê¶{ª/ÂuS–\\w<7Â²¶[”}àº(ÒTed2Ë„-øj·+ªºù¨óuòQpš4ºÙtDª°(j¢¦Øð=ídÎÏTƒÐú\0%1Àô×ÂÞZš9>Ä™)Ú5f´á÷WU·Ž¨põD Ž‚Ù¼6¢vfü:®œ—]xÕ¼•½–è5–¼(1ãòC °ÙBýQÐpzxtàMã„äÏXàwZÂ×5:ðœ¸›ä¢À!àì²U¤P-ú&€\0Ðx)÷²k9În9§X%žÊÃä·7ªwlªê­ÔâxÈ¬°ðßUºÇ‡ª¸·\rÖå¦%\Z¯¢Õ|GÝ+XŽ\ZJûÜƒ„©]¦Jwðu]T¨õQšÃaº\Z‡U²;ÙmÃ¢ß†ë\\HçÃ5ò[”8F²Ž«¢•LyŒºé‚\0ðûøäúiÁ×Ë²vÂÊgÜ¨Üp«ö²ç©Ð§§füCß€Vœ}PÌÙuC†s+e©ãºŽ²Ž¦WTIà4\n.Jê†sÃTTJðÊJ›-Tg™]x\rLðÛ†Þ×^0ÔÃ¬”EÏQ¬ìZ†ÜVÿ\0°®â·ùew¿ì+¸­þY]ÅoòÊ=ž¶_F…oòÊ2-eóá(¡£xñf…SÌû.kÛ“˜`¡ÚZïñ1ÑÏá*½fÿ\0ým@Kþ#sãÔ\\x6ÀÚáÓT7Z­šŽjP_cI[f¶l‡„/šù©É+æŽÈ#Áº!²7ãÖV¹ð\Z@á°àBéîp|ÀØ&Ó¬ç:FËˆNª$2õL˜’/ÇûÅ°á²ÒxåLäÑ\'Ùºçoêªâ¥Ôä:ôÜ:94‚:x6<>\"¾Kp¶ã·“ÇrŠ9\0†r†®<rãÕc€÷ EšØ.«+x7<‹¢Õn|@·0¾ç\nCžD}U^Îk½øÈtbœŠ`€Ç³\r=ÀëõU(¹¸Iç$A¿þoè†¥jJè›§\rø˜‚ÿ\0\0á›´²›¾KôN-#ÑW\rï¶n¼f *..à7¸GU^Wóâ=à¶A\rÐâxŒ—¼JÑuât€õáº:qêºpù®§Ñ³Äú®²·CK­¼®°´à|;¯Ÿ—BWÜPÚoT³S²sœæ?´Ûîì—ïiÿ\0½ðÂ.ç¥òÙèP5KêÑqï;ËN]horÞãWLÜpþôþA|ø¥\rWÍh¹ðøZ\\xÒóU<$úÇ\0\"0œÂ&âÞ¼>!06Ú¨!|7OÔÝø6  \r–åi+¯\rÐá¬®¾œwàWDTd½<°^ƒÃ°_>\'n·¢:/º^ÜNìí­W&ÏÕw#õ§wf¿thíO#ø§P¿v`«ÕIÖA…O±³Z|þ¤NÚ\'•œócNù~?½ýd[ð\ZUüŸ§ÃI„3ô@Å\n5:á%ãŒÚìB´èœr†—1Fê>ª•7T~­h_¹Õª¨ÂÇ\rÉÁF9ÄpÙÈfWÉ5øvAt(ñ§\0ŠŒÐÎÔ­Ï\r–ë~%mtW áeºÐ™ðuözdºqû‰î\"›Aò˜2UWƒ4šÀF„MÕg5ÝÍ0ÆGâPxÕ±ÿ\0Ó²ï>×¾´Èê•Š¡éÓ‡÷¿Ó‡Ýà8¥uEZ0Ë†0ÂZ@$£™É%P6­cï—§@ýÆèò°:ðmòT˜Ö Â°8…Ox@3&%vJ@oÝ‰•Þ\0>õ•j”ƒ½×È±NiÂãÚêÖy‰>|zpéÃL¼]]<[)]8Žº9åÃA~\Z\"VÖñá°VNwX‘¸…\0¾Ã¸k°žñ~ìßóWîÍÿ\05ÌßóWîÍÿ\05~ìßóWîÌÿ\07ýîÍÿ\07ýÚ\Z^üQ3Àz-à^.È}8aØÄ§Õ{›°²ìÔÞÑo&A)”^ËsL¦Q{½Þ\\GóUKXm\"<Tíi˜_¼‡˜÷æþ©ï¦¨}Ž§×Žá8\\-¸hV…Þ\rVü5[4áÑnºðÂ>œ7ºÖ8ÐÕÈiÀú­øj¼6EaC%©FVtº‚°ä‹sBÒPÓÃóñuSëàÙtà×rw€[ØˆØ@ÓÙõðuE|ÓJëÃ§‹ªëÇaÄqØG€è·Óº<\"Ü7(ðêº®¼\n‹¬®†ò¢\'XN	¹ñÛ€ø|GE·‡`¶7ù o1ŸDá\0eŠÆ==Ÿ^ðØ)ÓÂ5]W^u”qù.œØ-ã†èð<\r§ŽÞÇ§—•°CÁ¹àxu]x‡‡N\Z£Ãu½”“†ÖÑtœüaØy³\"Ëílçˆú]hDÏ²ëÇ`¶\nÜFÜHÓ€Ñ¿\0·_$ìÞÜ§³éÃ`ºpÙtã¿‹?å=PÜ#xP`«.œwCu‡q–¯ª\"™DaèœÜ.‹½—Ín|ÃU‘à7SÑtO:&¼!’\nnŽP¾|z®‹>.¼z-‚éíOƒ¯„ðß„äº€€Ô”“’6’t}Ë†üÑöõQÍÈ9_-}‡ÏÙmÂû!2wáÑ:£[”ê’zJCÙ6“þ\'JuP	¿(O¬÷ÓEñf„É1dÇ˜lÓ€!\\¢[ª-VÁlº­¸‚\Z;•¹`ä§$øBÛ†“Æ%`Ÿ(EÓ©GÝ^JØ#á+ZÂp7Pf›å4Ä;\"€°ËÀMöMƒ¨gí57Np»®øvºc^ëÆKº\0¤£Q‚©]Î>_D\r››Š°V6ÎY¦&3 9œljl,ÌÊ©Pºî¡›M‚xLÝaÂU q7cªÏE‹;‹ª€ î_¼š²aÃ~#‡^žþÓ×ÁºnH¡™0¤ýZBê£Na|óE;AÌ€™XîÈÑbÅ:áN‹ß0£ÙÐÚÆq’uG%ÃDÜ‘²k\Z>I®¶I„Æ—ÀrM¤3Ì½6«ZÍ’œüOg2Î6Å»\rƒåÂ{ÊLmóXšÓ8Š.åkŒï¢vQ”¬8]´äšãF‹ÓòLil7=S]Ñ=‰ÜŽ~‡d×è²ÝaBÕ}VÃŽ~Ìñéì4ÅÇu×‡E®H¹ÝêaOà%FJ“-RdÏà›å¦HÛŒÇ¶%·¼få\Z”Ú]pZ%49æÇ¤äš€NvMï !Á¹útN.ž[þ*ùG*d°ë.ÎêV!º-’S2”óî‹1áh›	‰×(‘8‘‚Ñ|\rùÜNåù)¸ÍOEî‹OE=3Sú)T`µƒ@…H(ó…Q¥¥6 >«r‡ƒB…×ÏÃòñáóá×†×ðïÇuÓ„u¡>\'bƒº¬p˜ýQv!í2†Ç‘0fÑ73ø+s¼™U¿»6jk	˜Ìô…€°\rì‹¤fI7EÎöR[ñ†ä±‰6„çC‰\Z&Óž|1²\rm¥Anå49Ü ìêà—Â`ÔÂlÇUÖiÂ‰%F+Ï_E`f×X„!ï:¼ZuQ›±J Lºr*“Í„ÝÛ‹RšðxB\'ŽÃÂQðîVêE‘9#0ƒm:£è°õO‡DážH6Íq’æ®xá¿T:rÝvvK˜.\\Q¬‘î$œÁ*«7´ á10Ñ‹Ÿxä‘kG²•L0\"¦£¢-žm>«\0mæç>½uoµ=Ãš$AÅ‰}®VÂYÒz¢c›‰Ù	ËýæŸ„çewBÙÅùªÆ›#;¬eÙn˜Çaˆ—›DDÈ‘b}UÚPÔâë…„›L„­Ñ6î.ùä® \0ÐL\rTá\r¹º‘ÕfS@ÅLbË¢¾ä¡?0„—fŒ™Ñ7ÒÛ)û¨ºh˜²ûÑûFéeP–aÈÂkÚgªéÃÓÁ·žÞ6Bë	•î6XS€F@L\rVB³}S«7ªÇ06TiuDÓcœÕJ÷\Zê•­Êk}e5Ä\\ábJÃI¿uÎ’±óS˜hl cŒÖ7@že>ð6¿ªå³¢çdg©ˆCÆ]%¹†æ‹ðúªnŠp|¹¹TæÃ®i¦\'\"Lÿ\0°œC}ÝÓ„²2œÊq\0¹»¢ãMáE\n`˜\r>³’c\Zã¨”lã¡MaÀ\"I6?%!€^c?UŽÆ9AÒ2S†Ö’™K\"-Ê¦.t›™‰Rp gªÃ$^2Q#IÑEâl¸n¦ nŽx®‹`d¬Gé¼ÖÑH6Åeô”[,h.r÷‰••Ñ‹¬D/©S([ü>\rIP=‹•úñÍoÃ¯ƒuÓ„J}@\'DÀO M¤rÔÂšL3mSûT^f2UÞjí‰?Ÿ‰3˜î6PìïÏ7,€DÐq&øšÔ&ÚµÙ Æá¦$l¸È÷E¾H8A¹9\'<\0ïÍw²30&9BZV\'­Œ8{¦€gr¯$…¿T#Õ:«ã4j‰F³ft]˜c¼ÊÅÌrvjO;üÈÎš,á8¦Ù¦°A³ˆÙ2Ó°›¢_²0ÝžÜ9BêHƒw&ØFmÌü„åúÂg\"p-rÂHÂßêš\'â:\':î¾Ë¿it\\@Tñœä™NH÷fá<C‹­Ñ2Ö›ð\Z€~iÊÎýµÑ:-Êò‚g$?ý³(}”#\rÓ„ú&ÄT\r&B’|¨º\'FK-2Z¡ymŸ¼el«¡¿‡/TúÕ7ÿ\0Â\Z—j°	\'%Œ4¨N¬vXüY<é„‰´æÄßL´hªU–‘²sÜæ\rÌSÎdFwÝaww¦$Ø¶M9æ‹dI˜@óˆ’æ€ë(%³šç·’.d_Ë£JÌõàÕš\".šã.Í¿0ÍS8m€Ë³@†ÆxNi¯t“º{ÌÊs€J˜¦|«»Äy\rt”ÜLnÀL\'‡fìï¢- 1¹»SÑd<ÀT3¡O¡-7$™ºžvÒ\rwØ‰¸ÞË¥áw`‚èŒÓ\Zsp:\rÖ#˜üÐN‰¬s„LÚêy‰º/‡Ü„jbgeâ@ôY¡D/Fñ*D•òQÔ©é’™›JÂ&Qún­s‰IbÓDZ$—à…Étîo]	ÊË¶M™Í¸UŠ.¨k².ƒÔ¢ÿ\0 Mi\'IÈ¦P¾éÏs!·<¹Ã>g\'5£K dÇ+d!o\"\n–á9€ÙAÜ®ÊÙ+—âœÊ`\0€â°¹¤“ˆB\"ZLÉ7º/-|‹í°XžìÛœ£|4â÷ù&àÄãÌ\ZÙ@;EåT3&A²ÄÞlïš$âŠæyuâWtnã’2»9¯²ph7O\"›Kd)n¼¬g\"2âì€•¹àßu¨åÕ5²ã‘Qžèž}Ñ©ÍéÂ †ÆZ•Q³ˆY³±œ$LôÝu\0i3ÑSeš ‚Ø“¤)ÄÓåÒ†I9§{0Ü\"ç8¼A“Öm²‡»ü:\":ØÊÃ e%7 Ú(ŽeÒÛF©Â\'!ª¨àØvx“êFÝ%=î\"v„ËNi§-@XAº,<ÆsÕ8’ðŒ˜%?$@†	³Sø+r¢?gð…Mðä}P=ebÒL©ÀFp¢qðtá·ê\0º§N@?DÚ@\0=çA_f£5ßÜ¶ÿ\0i¯PÃßiFÁÁ´Gæ©áÃ%4›xÑXÏ(¢iÙþˆ7	‹¦Òâ±:_dyLØ‡Ì¡Ìd?_’­P\Z†\'b2XÁ°ƒ”¦Sn¸)ÍcaÑËp¶Ù\\\r7=Sð‚Óóˆå\Z I98ÉEîw©Ùó9³š¢Ö‹Ÿu>	‹a)ÄLFvX€‡\ruP\'¼ÌñkA†Þxh„ÄAY(µÍÆ{/Áa¹ÙR—ÝUæ©™ì¦4Ôªì˜?3°U^_ºûZ±f\r\ZÜþÏ|;ƒ˜N>ó”ÍôLk°âÏ=–\rùç?ŸE„“ŠA7‘¬ Ö´“~r>HÖÉ¥®~Ÿ$ê¸pŒ#	„U&·ia;fƒ€Å>WEº£ÍfÌ›z\'žkIXÚ‚D\'V2Ä¦€B\0Á½‘Ö5¡}².‚È~‹;ìŒO¦hL«Â †¹¤µîþŠ`íºËn¨´ÎŠÈd¾’!7Ý†í’ƒ1ª‡´ÎÈiã6Yýš6\'M”ÄÜ\0‹±FBq8Y†/êšÖaÊ×ù ÀÚzÁU_¶ë¼óˆÍ5ÖŒ´1’Æ¥2”µÑÊèC^=Ü9&ÔsÛa[… 8ºt\Z\"p3#„ÌŸTç-3l¢Sg\0“qlôL¢,zBòcµÅÓ.Ž‡T^9žLFjLê¤/…×X4\\¦[8-6M¨æ°2ä!öv;AëôG\'ZQÕÎàsSæ€•¹°9ÂUJk\"çäí2eÑJ /ß*K]àQ¨pLÆš¡U¸ˆå`;qv‡¨óîuw^Š‡5»ÊÄçêWÜ·Õvjïy­üÖ´IH ™#?’8‡¨ºs†+¸éÉ\n¬ÈÎ,àè§™¹‘šœÓ	†|•*eÒ<ÂÄüµF“\0càäsÙS1¢—,	¦	±|Ó*±¤_™c³mê²ýS„H¢lSr&ÍD\\‡T.eE‘oC\nðŠtÍ€Zmº4ácsNltÙˆÐ­	²X`Xx¶@\"$l™£A9Í™ŸôEÃ»6¾ÉÎ\'»‰¶ªsÝœÀù§0Ú°]2TËÀk®\ZèAäË§›1þ‹¾–ì\rÎ£à“é0…<4Å€vÊ9ÔôO0^l¢ÄÑl1öºüÆ,|žTÆ¿+{È½ÓdÊsFþŠØI›”÷H•Ïwih…Ýz…Ý’z*s‰H$&÷DC–!-Êu©ÓÈf˜,ÖŒNêWh­[²Õ?ÚÐª}¬‘Õª“YRLƒŠ\ní}’¼iÍoÁUì¬‹ÃAA”0ìDÚXgár³NsYƒî¹Xñªáß¹UÖú•A¸†.gD5V»ûCt`S|%A€Rí/T\0€3”*{’™Þ@`B8pÎ`LýSãË„BÆZìÌjšÓ5€eŠy¦Òl8ì›ÒFï%Š*¸‰#EÏ\r¹Ø#€9ÙjS¼ÁÆeO%­\nÜÂ†}ùD›è±a’ŽHæwQnêëªÃ?5pFP½V…Z2¿,•CÈ&P¸è­²>ôÛÓ‡NxoÀ¦˜tj˜\0h\'uðƒtŒóLÞ3B”“9ßæ›L¼ï\r´“º¨á# Mãú¬P^0‹þH:ÍiiTéŽë‹g¢kf´\rBuýàn´lâ¼’¼­$z‚šˆåß4Ø|OyÌcÑa-Ñcs@pÎ9‚lœ8¾e9É®‰7$®g™™&Qaë%4ikf°€[r Ü_HMyÄãº|ŒÛ|ÕF‡60Ç\r\r•p+v*™wšt+öOhwg\ZÒ©ÌÙô_´»/.µ¨]¡vjÌ¨>éU(Ó|ˆ»Bn:5‡¹œ¢ìÏ­Ta\0ô]¬<<æl*•X>j“¿ÄaP¦æ0ùH?2»wik0û×qú•QŽýÖ™þeñ•À$u¸+±²Î2[z&l°\n¸&áÎßdZ“!ÎÍ ÚùôEâBTÄ0 ’¦F\'O4¨i| Ì\rÆAµ×ÁÖBˆy1©È¬‹@Ï]Ô1ÉD©ê‘q\'$DÁM6<Î[«ŠÀpôQÉrÙê´hÄP&Tþ*@[©Éc6É‘uù¢<ƒeÓÅÑ•ƒ5ˆÏC%0˜³s+ÀÈØ”,èÃpT¹¦51	îÿ\0qò…Av€BŒî°s½Å¶M\0¸hÄS	œ6†ê¦ åòØ\'ÔÇP¸~ˆ8‡ÜõXmŸ1‘3eLƒ†÷wûÕ\\ø¿$9<¸„ÇõF)tüÐ-™0œ]„}Sƒ¶„ZCÏ”D‚3ò2´8¤§÷|²s$„Ì€š,ÐŽEðF‡5Â*Ž:žd]ÍõèªE¬\\2MowPÿ\02‘‚©×§Û2y]õ]»±Ôfz$B`­R«gÈnªÔm1Oà«Ô{÷kl\ZL`Ú*©U‹©ö&\0j©·[Swä¤7?\n€ÉyVš}tŒÐ<Â1	Í(ÊM¾‰Õ\ZÃ,—|ÓÊ&éùLt=wfåÕaÖF ²:M5LŸš-wðÌe:«åôOi\r™¶ËSÑI»ƒ}/#Y6[(PÓB…—â…ð°\"%­l|Ê¼¦êŒ\\B\0µN xŒÓd¦ÍÊmïoÇ§‚XÃ„-c`0%©‘>’Sæà:M€žŸ%Þaiº¼¹ËlŠPŒ¥8r>Ê1Žž¿¢s0¸y„d¿í›,mØÞQ|“”É8>ÏdÆ6÷h5M½>H?A›™”jy¬\ZƒŒäœÓ\ròð°X¸ªmm¬-p›çy=INó8XmÂ5œ¸´šUG¾ÅF#ùgàUf:ç\'²ùôEíiêå^»DäÕó´;jl]²ÌÍê×ï”»Wjl»Y™]º¶.Êÿ\0):œönü“t¹ð¹ Ž«a:±Ð»?j±ïu,eÎ“²©QÄÎNurO_ÑA\'ê˜,3}ÊËC¡6H’vS¬¡·=°e/ªÅ\rôºmÙ‹-…¡fQ´\rüÝU¸R$·B£7c˜_‡—+åt†ò®Q&3(rõðuGÀt`(3”i²e\'›_ÊÒ&Bœ9pÄÌÖ1Pa©ï¾m Î”ƒ1\"v0È&çm!=´É°hêUÒ-¢ªðþcn©¬.n‡»ênÃ3ey˜è™\"uW¸÷‘¾·+¼µ>ciRél”‚@‰E€Ü¥SˆÊ[§É<¶0Úâžó\"åÛú\'ê2#ÎÁ™·‹\0s²hêWkxí¦©’ç7/ITšÖ“«@»ªçtˆTe¿ã\n­\\#á7g×DáÝÕa>é]¿–½/\'P¿»wä‰\"ÇØ½¡Þ¢P§€Œ°B·ý/Ù~èçåvS©wo<¯Ç˜)¡»”ÉÑ\\~‹ãÎu(ÑØ£HAüÎÌlœfÞ‰±ù¯ÉWš²Ü«…. Øi>Tv„P‰Ó4ÃŠ[&ªöL7”Áîí®ë}]ª‹–ƒ¯€ðÃ‹•«\rŠ‘èœ ØÌ ò$é˜@™hœÓXf:&R“†êþ€\'LÛ™\\ªÎódÙ“	Î\',F°»·¹ö!0`Ó$ f©Ä`,ª4–‘0N£ýQ{B‹æfñ¿TCºJo¨]Î&âÂzÐlsCÑ:c3|‘x\ZÀ(bß<–^8†Ì3²ÅŠæü(3½í.ò±?²Ñ©:³ cîÆ’_ô]¿µÖín•\\)„ê=Ðy³°Hú ÑôLÂdg\n‹p‡™#Dá èSr³röÊa\Z£jôé‘Q½a3çíjÓkýBÀýÚ»-Znq35\n¯esÚLýÂ#Ë¦#%^ ™&Ò¨ÔÄÜ¥b [S¢@ÕNF÷[n ë©ù¨\0Ê:Ô¬VnªfÈ0}¤µh¿0±óÉÏOã÷[hPp»,WŽ¨ApÛ$×‚MðüJ›_9‘d?õ&0â±d‹„\rŠÆìcÈD§?7_Ë\"@xÄ}PæÁq…Sh2A‚sAŽ˜65„ÁÐî¹ƒ÷Ë5³¬‹îœñ\0Fäú§8apÈ6ÎNÃ8Oª§Ñ\0Ù]PdEK´1’ªà{Cîi²ðª\\äß´¹ÂkŒ<âˆòð®ñŒ¼ŒOwÕJAÞª˜sw¹¿ÉTmFOÄ#èQsÈÄ:~o˜ýSŒü}ieVz§+	Æ½V³ÔªFXñ ÄxûM*o\rÕÍ˜Lï)…È³7Ëj(› ·Væ8`­:,AhÆÍ‡‘´¯v9\\Jët=.‹|î:ì­.<-3+|ý‹µ†ßd²×N©¬óœ\'ª¦Æ`1vqªÂouÊw˜Eæ\\0ˆ¹EÍ\'!Ñ=ì›6\' ƒ°þ‰¬óÎ%R¦Ù6õ:&†JZÄÝQÌf“ßƒÆ6EÜ¶¾Š¥Í0\0$ä©RŸ\\•\0ÜF Sl•Ú°±¿2P¤	ê°´hÖI]£g™Ä\r6M°\ZxETó±Ä\0vNç©@©þÎï˜\\\\91B¢_Øêå»™‡ä»A`sÎ¦q7ýÑRx¦Š`û®\ZÕA?/\rQ‰Bía(M<už9\r×ìÊgÆ?ªí•@iØL¸ô%7  xØc¹½3áY¸˜ìÂkœêQ‰„ì·_[\'8ÄÈh\Z­E(YŒóáyàñ6Se^œ[Jò5+.¥]	RdfºøG`;¢.™ºÌ„y9”XÀ\0¶ËŒ]S´¿0ŸY°×d˜ÿ\0.+|Ði%Ùž‹\08¯}WvÐÖÅôA‚wN›Œ“mkl¿xÂH‹ï?$Éq~{BìÔ^á¦	…\\²‡Î\\ªã¬~ñ²¥M¬tG\nÏ`Ô ß±•Š˜õ;ø»ñðEG\rg0ÝÏ#óè»-F>˜,2ªÓkýB`p¼ÄÙK›Õ¦Ø_ýÜ·ú\';\\0SDb2|@}«.Þ½yé·_|oáìŒãÄ\0•Û^k’#5¡ h±ï	cyZÝ·ü‡z„œ´PW7=äåÀ|ÐÌÕýb5\n÷±Sl‘:«£0ã²3<¶Ñ=Qÿ\0ÊÓ4&üv]|:Fh6bÞ©ŒË•á5X„å4&›¼×”÷\0ÙÅ†&jÇ:	‰ù ÒH†è»¼óM¦KçëþÂ­\0Yë¼\r¿(FŒ$ÙéUphÒUwŠ2Ü»€÷ïRè\0Æ\0JìØ‡faÓÞQÎEúxèóRªeÝ¨I{·j,î+ÿ\0iAØ¯U½¦3i*Ð¢KÏ3!Íù*oiÔ{.ÍgÓ7þóTÏ7¼ÍZ}°b\0˜WûWß‹„ƒb3`òº,YjŽ^ê‡]£%’2#D\rô†fçÑL‘²lÇæ›åu÷GÑ—T2]2]<cD	èšx²wþz¬ygh»ÃsÑ/—¿Œ§9Ü€Œó]Ù±lÅ“w‰‹}U6´à$L&’@h2Ÿ8[o–ë%ï‰P\"Òû¡oa3Žq¸lž$Ì‚Gãì$lª²›Z9²÷P¢(Ñ6`„*—Zë·ÓÄ@Çæev\n¡ôžyZáEˆ88H#/bá-6!~Ê08™·ú+2»|ìþž0 <Oˆa.y×è†MÄû.Nó%gÕÊçt\0Õ—ÉºY	æ)¹L(É¢:ðÑS‚ÀÙXDƒ¦H[Ub¯m‘Ýl8A²Øq:oÊ„‹ê›ænì-cpŸEÞ‰€0²ÉÕÜ\\K£T%Æ#(ÖVžYÞq!“}“™6²h\r´ÉÓªa±¿6^ª£ìÊ¾’7ñ•Ùþã§Ê«Ó-vA§_eÞšxMàfƒM6áiU…‘†ZÛ#9H’‰pk³Ã{®Æ{Ö\rZ;ÿ\0ªþâÏáëýU7‡a0z{Ù¿cÚq³ÞUÇwÚ™›7ñ¹\'.Aéÿ\0ŸÆ&8A_»	Ùæ(0€Ñ‡¢è€Ž\Z\"rº™“’\r‹ì¯u‹Öß4JaLðßˆÕ¢•>b„Úƒ	ÓŠd\r‘wF,c›2…P2Ô¢N7ÌDX›C©pX@\'qr´iÚê€órá2œ®ï;ÿ\0Dç§sè³–vF{&Sïé4ÌÓóŸ‘²­†¹`Á†£}XU‡Fc\">^Ã³Ö˜¼É“ÑQí @Ô¹7´Šƒï?æ¿hvf‹_b¨;¸zì‡jk*¼ysº>V»OwEÙš;÷Þ¥&˜kýû•û6»˜örT£WòUXiÕ˜ÀMÐ¸ñUÁ¬’»9î{Sn*\rWm·jm§\\¥<Ë°	ñD{¢|\"VÝ„îŸÙ‹šÍ;¨ N¨XžŠ½uX¬Ñ¦aV«¬d­([ šp¶tÑOÑmìY”·´¹w–ƒ(º=ë.ðËˆÈ,gê3¸XfLÊVFì‹CyN[ªßÇ`åñ<5§Uå¸¶=…zAÝu5Ù«w‘—xaãþµÚ)=ûSuŸò9L™µÂñ8Äª=–µWz@O4{5=MC0»Û>lpØ®Û_ºa9è±—¾,_ù.ÕÉýìX†ÛâÝ¹ª—¶áã“ÇP»}&²¾a®ò»ü%Sún²;<0ê–†©¶¤,ßDÙJ›æ£†½ìñÿ\0PaîYÿ\0næ–¸·ß\'@¿jµï¦ÿ\0+ó…Ií{\rÁiá÷\n\Z4Ë\0’ˆŒd»/&¹õ^%¡£5^1Åø0A¬/TP:ä³M´©ÎO¢\Z˜ù«ýTè™ÝÑBQº©§1ÀopÐ-%fŽbÃ\0,zØÂqrÙò[ÈÖ?f\\\\r“™â\rí’©O•–g) (£2Pu¥P¨yÍ°ÚSÄ8´6Z–õOx¸ÉöN\0Žª›p·oaNå·\'eƒíjssT Ö”*?hæ‹F¥~Ó&qHdÙwMc½×°D C©d*4~k·U±Šú*Ný÷²Æ¿ÅÕPxv‡qÅÖ\rƒK*×â}Êj…­sð@v§ÿ\0\r›×nsy}ê<ûª»H`þ3 ø•vba]ž¶ÕAöoÆÕÛhvpìœz\'	ÇQŒü|Lhv7D¾À®ÌÐ÷´‰½‡¯ôBõeÎ(ðÚ¡ê!’‹étþ^¡hLv`½÷Õj2R°TF@œÓdŸ2á(ê·[ðë+4,Ÿ`DJóK¼ÛàeŽÔ®ì¹®8°õ]ÛeîÂgD…¡¶pja‡áÃšu¯|HC6ª`¼“„êWkc+W0L/§9q–ïÿ\0\"é‡²íJÃøm.›ÊíX†j„æI(•Åzî‹ÿ\0-å°hU\na³€jxî˜9ÞÐ.ÃG(ÉÇÌu„÷U¦æœ\'_Á<»³Ö\rz_ý†Ê¼®Ë³ç²©Y‡™ótXOrÖ÷®‘™éXgµWæp: O’Nš¼¯Ú.šÏòî5_÷\Z.ÿ\05Ãôã3Þ´6=UvÈÐêçµv:oÞl.ÎùÝº3HŸú\Zd²™þ`ýbáæ~Œÿ\0U$õ:ñøÒ¿¬Zù(¤¬=3RHü”rš1\"ëCšB:äWÌsõWºË[‡N=N.8}é¡Âg5Üs4GPU69¼¹·tâü\'ä‹]r9-\n}Ð<ÉÄHªkXj0\r:*fXñ ña¹¤z&äö‚<O~Ô»gÙUv\'éM¹•Û<´ êµyÄO\0ÞwæUB^XØå‰mÐ#9U÷P£î|Gª`-nÀ§’FXâàõL¨Xö76äëæâdAšk0˜…Q¦­8±á:­½ò}Þ‹µÛ³³ø×fwÙÿ\0Q§.Š“p±‚\0àó\rh’Q‹ÕIá`q¡^g”À+ö½<?ß•Ií{E§XHÞû¢Wi%´3\r˜Ä:ÿ\0Eû0Åç®‡@©ÜîwðWÇgb¬×ƒîÔ±]ªŽÆ¹/ÑNµ³åDõVÞƒ†èBœÔ,\"ÖFÁ\rNÉÏ“²ÜðœÖƒ‹Œ«~¨°8–-\"Ë); Ñ“Þ2´,Y¡W-J/¸…AÄ.ÌÂêtÆ\'ˆ™cyézmÄ“«`#›9‰¦Iò¢1\0cØ<ÃZ$’šÀþ×Ûê–PŸp|K³´H†R›“D-dë\r•\\÷T´`+ Îê\"ùO3½Äe8óÖ9`I‹·U[ÂÇt[™Ó5lÑtÚm§F‹\"»™ï“§ê»âj@2`ÝSõs¾#¿Ÿ´¯ÿ\0Åa‚õÏÁÚˆi¸_³ÞjÐ>fF_$áÝWÕ…DÓeM“V«Î¼eÛÞ1Ç—Fÿ\0ªìN-ìŒ<ïÊUáññ×`p9“ä:H´]Iº›D(7+H[­f¤z•øî€2.Ž§‡Tt_TÓ­Ô,òºê˜/l”óù!>X)ï\ZMÓ*\rà áäÂœè˜8Z\'óMq†ëòT%ÎwLºü×sTõTÿ\0„çO¡Ô|ÓµÂAáðý7;Äg)N8ŽŸ`ÃÍÚ\rú5Uhcpa¤ß…ˆ\rç#©ñF?A·ªy\07?¢c\\Ê•(Ô×heðáh&`/)S²?ÇÌh­€»­n#8eV£É›KÉ]¤‡vª×qøGÃÆ«¡ŒUVÜÙ­\'$¼$üü]Ž_Qñ®ÛŠ[“œ9šU‹KyÄ¨Œ4Ëù€*‹ZŒÙûîî™‚Ö\0V*­Ÿ+ÝHBï]šHT˜7u’5i>`s3\nu8Ç~r¼‡ýTne_ÑbôÄ„g\'t/(1–ÈrØú(\r¢×á°]8}ÒŠ9ún€ ôè²‰Ñ}Ð¦ðŸ¦Ršò/‹X]ãŒ‘=s0¹Î3×ª4ÏÃw!K•€\n°–0òõwë‘Øªÿ\0Åì¯ÃnH\nOÚ²þ?‚¤ëÿ\0È IìÂÅÃà\Z!ËˆÅ¶S!æGŠƒ1TyEûD÷½¤ål—íwŸ±¢íT2@óµ™MŠÃ <Ñ{Å•GF7á‚ì¸ögÏgnÞñCN¨zsñÕhÑã0Ÿ/ }öä¨Ú­ó1ùªŽ\rks)Ì¥†ÿ\0sýU&ákQG3¤*ÇU±Èÿ\0áVvI³nOôA®l™årÙ0ƒU¬‡„A€Ñ\ZdÑ‰³_ì\"l79ú+m•áõXVç5\ZîŽˆp÷„)÷óS¬¬ÌB1W{Z±ÉAÂ5”zd…ÞíìJe3\0Ld¨\0^L¿DÀpRnŠ‘–<H<juþÆ¯C\r*²#áM<®<N\02½>_÷õñ°ý­kDÿ\0ã;™ä&“ÊÜÔ¦Ø¹6\n±ßUkEð~ŸÕO•¥åÚBe©idÖý›ZA×æœÓÊeÙZv0ckGžÉÜ£ª±žUS„N+²»œŽwlc ?Í—R¸-ìÐæ›Wì²ë_\0Ìz.ÛPQ3ü]&ùÊy€pœœl«Õ/\0°L£aàªK›UòÚ‡Þ	·¾›,Z¢ãs’ëœ(·ªëÊ€ÈJ„tS(´}T-”ÝÎ|#Ÿ3‰NpÃ…6Ê¦Ñ;ÒÚ€œs*4Å}.šÈ.\0Ld°–¸ƒÙ\'dÍ0ÑšxóòÓþ¼?ü\Zïÿ\0%Çô*¼Þôž}ñ·¨W´8GE]¥µ\0ƒ?Ÿ³ÌÞhS<¸OËÄ,Zþb5*†Ñ%vŠGHNÜâw1Ï‹	{´hÌ®Ñ8ÎMøxv&=¸uEÁõüWg#¢ktÊUë\0ÕŽjàÄâ}òJû¡vVó1ƒUrsétÉjÔ‹”o¥ÆH^èçQÞÊ«ï¡O¤{qò(“N°¿ÛTúáÏ‰ÂË®ËÙ oP¯Þ;³µ1	ý¦µGd5Ûq–e.mÕ7‡4ê8*¶ôß±U\Z[Q¦¬¿4Çe~\Z¦œôQ[506·¢Î6QqõQè²PÑbpÈ#¤ASgIº-’L\0V/3m³XFQoÁ]¸²1!3Ž÷O’Ó’}šmNù‡…VâcÄ»i0ôÕõ·ÿ\0`»]»@»]ý«wÓå†3Ý|ñjË‹¯¹×ÃÙ´<è6\ZögâŒÐ6ñlª´#/‡0Ìo]Õ:ë\'Fï*°{KÇ9Û¢“aú©›gÃ³YSîõQ<¹“å„×gœ Mˆv\rá<€û7´8lBìåŽz[z*qˆæg ªö‘•ÆÅ:©0ØŒ+²9•É¥°Wk Mþá\ZüÕ+Òqæa±Tøš 9Ùü@5¬Vuº&ÀÄ ®¶2Œ\rsGºÙ{®q‚W\'Uó”6ZñÖ#„h›º±¶iÿ\0%È†þ(É’Õ4TÎÆ\'>ì$º&>¨Dâ’,V\0/ŒI’¨»	ÎÛ¯ˆ_×…Yƒ¨Ì×í,MíTïF°¶?¼Óºíöª|•}Ú¿ëÓ†¥–õNþu<Qâ‰ÄÒ2iTâã\0j»&¿ŒtUÛ5+ÝµNs¨O$5ÿ\0Ãxþ[Â{b¥#¥ƒÿ\0›P2£ØR{1neb17e\nnš¦lÕPÚµ:7Ó‡ÜæZ88\rˆ:¦‚îÏ[ÈvèŒA±@Êßr¶hö½…	æÃ¡]œÐ®ÿ\0+šD.ÕAôê4Á…ßG¨AÔê´Ú3Mšg@2%Ùê6­1›™E¤HÈª#ì+GC²–Üß™o¯Õm®È*à ,Ë£uSÂs€³—qÜÙïtßu¢Q%Ó|EK±	>o¢dú|Ñ\0‚H!×0$÷â8`L\r…ç×dO3LÄq© ´Ë\\Ó§p¿kµ®É\\Y®ÿ\0ü•ÛKªö\\›Úµoøÿ\0ªAVkiøOöü¿Ÿ\nµ=\0Ì ÒÎÌ¤T\Zç¶Ýª«ŠŸk¦qÓ{®O_UXw}¦™‡…ÚÆÅöy§Z˜÷·¨Ltö:Ç‘ß:zx‰°]Ÿ˜dç,É0º¬Üno»<¨8y­¢À²ÍhæÝtk¶XïÁU\r‘vœ9§3]p˜áž›ûg´9®±Téš±ÿ\0evªÜì±»+êPvÀÙU`.±Ü.ÊñÚÙ¨“ô]¶™£VokÓ ä¿²pr\"Û…¬ØÂw0„ÛÈƒ;­¸SûôXFhÊ¬=3SÕ|–ÅŠSgÊ”ƒp„ã6%a¸ÒvTË‡Í9Ö#< ¦’ëä5C±¸Ð&^\r3tÁ†Re»€ æ\n‡(_³áô\rÏfqÿ\0âtTÍðásN`…nvoµ¯eLõ]˜w[jóè»LÐ§TKXò\\L*M`È”ÇiìüÍûÃeû:î+RðÕQtöjðÊÇmú\'€{\râ7à\'_B«þÉäùÛýG‚»Ã\Z	îâ!T’ÜÊ¦ÐF8\"n8n±a–ÉÖ\'ÝÆÍnåVžùìkÞº}­´¯ƒËkºè\0dëíðU—d§;íè0×bƒ1Íê«³à»S‚}É–…û^“Í»È±_³ëRÏ¹¨e¿#¢-,s˜ZXñåU-Q†ÑLê„	åS—5Ô6Â,Ó•Ý\Z!·Õj¾ ’dÓ1eðµ·$”íahÒ±áe\Z˜‰ºÅm§ºøHF¡iÏuMÇwÑv‘öîòƒ‡sÎã\rçkð“	Íky9s\n\rhÌ“’ìzÿ\01ÿ\0 Tåø¬ú´\r‚|U¬}òÈèëàþ´Ú«G¸íÔcý—ÚóøiýWm8©8ÃÖvOnÅw„0¥½3ÑVå¬Ï6Ç¨N~\'8Z»3EŠy¶¤˜S†œyÆ¾Š›\0dD(>hwE<X†òtöƒcø4HÈn‡˜`tð;\'´„ë¹–wªvLp\"}SLƒ¯·¢Zëàø÷TN.ËÚÆ0FM<{\'ÙUø}Ò«Þ?Âè¨¸\n±ä>`¨»Sú£¾£dr™õZ¼ìŠrN2âAq-n(oÑ8ùœ†U\"áË¹¬ËH\Z¬MÊQ¼	²ÉÅ<ò¹—RþX	¾î°œ4i¢a \0o¦5Æg¹c¥Ô–§R \\¢¯KºŸzdxÀ»F/Å(‡vaÞÔÊ}Ôê¯ú5«·s=±\rÐ\0\ZÃÞÞð·ãTbcÄ»{CéÇØ9ßÌjý§zGÿ\0OTæÞ‹¼©Z…%FŸ\"qšâœêŸê›š2Ÿ÷+´ˆ Ü‡Æš\08I5ˆá]ØZlnÎÃöT·á†~Ñ“|òñ7\"ü_T,GâWj¿g94È9lÁ5)œmXxyØásQø#æÉÃc¯\ZÍ”ìWgqîü7ÍåTÚÔáãóOžCžãu¨(º3”]ŸDCMÓ½ç´GAuƒp³I J{nˆâ‘ð„MB~ƒ+®kÆŠj\0]ðÝ|,@»”N \"3ŒÕA™‹ù~¨¯ªkZ8ÞøÑÊËlƒÏEÙë8ávE6?/ÉàµæioÑ3íjuºzG:Îþ\r<‡õ_´IœP¦Öž\nB_IÁËâh>\0pÖ¦qS|dWjÃG·Ó¶<þ‹´TqÀo¹A»\'ÌœVÂ|Õ1‡ó—¢í‚ÿ\0Ó¢GN’ª¸5%v–áìLþ3ªh€2…¿Š<Mva?%s…:*ÇgõòªniÈjuOŽê¥éÎ‡OÂ~‹ùuÏxÁìùwQ/hÆßP¾Èô*ûZ9Æ­_DqrÂšc9£BŽD >ˆÌ4|vAˆ\\ÂsÉ$&¼Ì¢\rÝšÅIÍ4œ±}Pª[„	êŒ» A»vF˜#ªÛ€6 ¦5çðôOlñ~ ïº3]Üãhçwà«–·îf|UŸÍÛ¸ü“)~ìò|´É.3þôUìôÙ˜ÕÊ¶Ñ1Õ‡%y§È|\0bÅ±ÌtYU..|·]£œ÷K‰Uÿ\0øŽjlÊGû…Ûÿ\0ÚŸÍ4\0@#ÊöcÆmUÙ‰ÌÏ˜î?¢a–”HhmÉ)²ßÙôLÉþaLhkZ §þx×ÄºÚ<§l”ØZwPvh}Ÿ(Ð*NÏOjÆžö“l*CíZ\'ðM6pžÃ€,CL)ÖQÈ¯åvz#”Ì+Û5VÈõNR%H-&=W8‘²æäÝCÑSþKÌtPÿ\0ûQ=2M3§Ñ7\'DÆˆˆ‘É©ù£&ÒmÖ¸­hµžsü ù&FœÏÉRoÙ¿ãå\0~«µWsÞÚË4ªl†«ƒÛ’Wdäk\0ûS™ùLMÞzÏuÊm9©«ÍýŒù*KGN,$è@÷ú½óøtOåüÜ»p½:{Nè´bAèíZUid˜xÝvBö1â^ïÐªB\ZÑàÿ\0ù¯‰ÂA±S®Åf¢àoiDò:,»-àó4ê3sÐäUY @î\nt\'CÃ,`üì½ÚŒÁè¹°T¥øð`ûj|Ìþ‰£Ý…y˜Nó¹Àúp×~=WIá®Š¬CA(õ(†¬YåT-£2ƒi´btg|ÕO°™Ãú&²_ñºçZÔÙþ\'\0m£ÿ\0rýíŸ Wf/¨@œXyU6­QìÕÍT‹ ô]£í\\t÷G¢öB{¾Ö0»×ƒ#,Ó†\'‘	ø¹› ƒ—UÛÄÊ\'Ýê|n§ÞV¬b˜UHkŸÌù9.ÍIõÜÝ}Ò©¹Ø”­‡æª¿ÝÔ˜úð7´ù¾~6Ú¦	©D×HèŸ:\'ªºe‰Áš»Á]¹¶lïE[“´6ÄhÓlî­M˜ÃP\r²áü¹¹jƒoTæÉf]8<ÃX	*J„ÀÑeÑMï7C3 L· €_\r¸nèá7´\';.i•@)9ª2÷¼÷sú q;7;ržCZ3%vjxþóÌN«)¸ÔçW«=MÓ{B#P¿wk/‘vJ»é4œ†<×9$ö/ºícºa?ÁOUI¡¬n@{@yF¬ˆÙP9ˆ•ˆ“’\rs+µr™O`ð{8²ìàºµC‹1!~Ó¡-6i.åŸ@˜ö5†\"ÇÍãƒN{Wëã<Ôžrò¦çù¦Ä‰èž9âHv¨‡×iÅÝ3Š«†C»¬ÀnWí²m]\nÈäQ1ˆD§™s9J!ÃóDdï¢9ðgš¯]mãñYÉ[3è¿T„NfQÎxbŒ|¿ŠØ\räð´—\'m¼(òùH6”ïâXN\r1‚ø®ÐßÞ*ÄËÍ‡ Mìô€ÿ\0\0Fµ&aÏ˜/Þô®ËkUþP±`nNªo‹ÐE¼äA~§Û7Ý\\ÙbÍ[®Ôß·7\r7Áì`X*³I ê]Ùtyn»ÍZµMƒZwÆa6w€ðp°´Ø_fâcÄœ	o¸áïo&¬#kix*íyÊ»ï4I .ÒÙdó´®Ê\ZúEÚñVìdÚ Îši®öbpWlÿ\0Ô4ú\"c\\¥D—F~ˆç„p÷\'²ú¦ßT^\0•ª¾#-SšÜÏ—™h<e!+»BÝ“<å{KJ`ÆD1€©¯^÷Ûè›Ù[O˜YÉ¥›£WoªÊŒã&Iuƒ[nw?XÈtÙâZáæƒn\\Ó\0h\'—Ù²î[Y¾õ7j¨ÐkO¤à¨Øq¯}½…C…Âìx÷Jm1S+ÓO¦™32%6ç2\ZfJ	Áº. ²@Ô\'‰§lAvH9§ßèà…\'außÙç.­TžÇd}‘lšG¦êFS\'%N	À.}Ý	žwršÞêB\'”‚	[œ¥”_ÈNJ~\\zñÎ-Àè!fžÙ\ZÊkOvÁÎSLÁ‚¡P.~Î1—Õ8²üg	62êUf8OðÚÿ\0þ_?lPWÃS]“`á¨ Ìû,sÓ…*†•oˆ^FÄ*ô‹]qä?>ÄwžË´3Ðê†:¥µÍv)‚ÄØfž9„Ì‹g—É5±Í¬ÂžOƒâBÎ÷0¨k»;ó‹þª“ƒ†½=‘½£$<ÌiFFèü#$Ó,£¶èäÒ·DÞúÊæ§ê‰³+‘ÇM8ÑÎQÊP%35PÜ*¤2¥nk§Øº^âUGfncãMå‰9¬áƒƒÌ5¢ID;»aû@vø}±*ƒ‹ÓüM>CR\'‹© µÙìœç9½àÛý•ù‹£‰áÐ¨wž}F‡5Ö ê¨@¥1—•·ßý•Eä´þkk]fÆF6ˆ¿êšA>û‹°r~ŸÄˆ,¬3aö\\ÁÌÄ\r®œßá°Gø´N\'(›ôWÁbwÍGDDÉ;¦å6º\'‰Ñ¼Ÿ¥ø4ÁÝ>à™yè›äi—	ÑPv˜ªÇä€\"›1Ùvv\rÀÏªo.3²Ä\\÷“ï8§gí)™y0\0Ív£?„\r¾{¦›œ£†âJwmX7öP}í|;4¨>ohñ,p‚aÊC§Î\nÜ´„I†ÆnÒÎ`91ä50Ã†a9°ý35Q¦½!ï·ÏB£Q¯°Â9³ê¨Ÿ²¥œ{ÎQž]QŠñ\Z”ÖÆsº1!{¡¥Ç¢VÜ[1>Aá­lRøBíí‡ôD“R»®€æŽcÕM»ç?éÂ$û£r«’îîC	üJþU;3×Ùþ®ÏÊÑbóåÕ	sµs³T	,ÈÔQýSeõ5¨û»ŽQÍ|û-9¼\'à?’j-U†XSÁnÔ~H´Ý°ÖŒ³Ý\ZÀN™p©¼‹‚`Âsƒ+luà,íÆ¾Â‹¢³ó#@ÍI<êñ²ƒ	¹4\0€GÎûMV&ßT2ž€<=˜}±Šn¦\rÂiæ¨îkýS›-¤ùJÑ¯\nhÅ‹-Ê£Ñ­jwöRjr]¡ÄÒþËâõD ôUK™OáîõMhkF@qªðÙ6•ÙäŠGÍ¢>hƒòö-¤Ÿ_þÉÊùF~Ú˜`þ.-:¦ºyg	äúÊ¦ÒpÌúêæŠxåÕ1ÐåÛ\'/â q2&[{.ÍQ¸Ä×J_ZfutÒ]¦WvéÚUJm\0˜Ti@&\'J‡)>ðG6ŒÉ™¾jÝ7MžFózÊ‹MÈ›¡kÚèçÕXôRˆàì¸DþŠÐç¨å˜M-\'˜Ç\n™¦ó\0üGÐ!î²jºeZ^àÛ§{ï€›æˆoª¨Ÿ+£ÝÔ§Ae?/¯þ=—e§Þ¹Ã9°]¥Øê“a£}\Z}çÄ}ÑêŸÏTÆOfŠ¯ü¬üW€4µ÷s´y‚¢ÐÖ7 =ŽŠþ$wEužÙÂZlBs±1óÙƒúªm,6ÆÙÈ¢yƒµ:£d­·Mõ²yÇGc¢¤â×îËõ]÷}ôàpU{\'{Ah¿Õ9Å…­.»a]2r……¥ÚÎŠæNjn\Z\0ô@Aè³´\nàç\'4è†µÇ>bƒ¾§Tø‘c‡HCÕse„¢±Le5®cUÜ“½–pšs$}Û¢1Ë.\nøæ¿»î‰µß\nÒ[ˆÇUN>ÚÆDª\rÅîÇE®dõö/Ò „\0d\'òDštˆËÞ?Ñ1¡­À¬aå™†@w4çÊ?ªlz(ƒR¿×ÙÆx¤ørû2¿º¿·§üfyOæ2eÏ6’6Ì”ff\"ýÀ9ði¸ÒPªÆ[F*Ý¦«ç0Mh•Ší¨™X2·9*àEÊxò¶Ñø(¬\\àÔ?5±›ôS­îœ2Õ‹¡B“>‹rÙ@žƒ†d\0¾ïêœ\0uwbÉ{Kf¦\0\0_@ZÒõMÄ)QÎÙ=“9êÄáª®qT\ZÊ>\\qNÅSäfVÍ46€PÍûš&j0_}Õ6ŽA$k›¦i¸>ÊÞÿ\0\n•XÇ 8ÂKâä±¤Â¢ÊŽoÇÝYÅ<ÿ\0ä(°–a7øo’Ô¸¬[’ÙBBÔÄ(’so7•\"?%h6•9j â!~¨XëÕ|-€BvÙ«HÉd2‹„Nyœ,6ù”\\qDÄ«áZê]}c$Ôgx2Kw(ÜñÜ®‚³\r!tMi ½¬?^\r’çÍ<EGó¿×Ø€i°{ú”Á\ZðÆ1ÆöúªuH--ŒdŒØjŽQ¡Í}J\'\'I9 Àÿ\0Û©EÁæ›ÚÀ“FÉÃš‘À}–»„ì¨Ùï!€ìªvºÝùºê¥/µ¤þì™±„Ö€:q–UüŸòÕ_AMè2…Æ +8ÎŠÆ5N2‹”?9„ç©EË ô<0ÈMˆŸÉCwTœY!‘\"nœà0R-¬£ï>ÑaK¬Sª0`Lš?8V»ÏD·ãª”ÐÀ\ZéWäu¥di»ð:88|Òæ6ä†¾ÎµHØjU2ö0·PœqÛQdî]‰›tV—>)PCc	Ïÿ\0+8ÊÊIÃÊI#¢†$\0Qhûf»LöU-ˆe÷‡²“Ìê®#eLÃÁiØ„f“W,x zª„\Zy{£¯ñ5lüˆnoÆ>k®yX²nŒÙÃaN#X9ÝòM½¬†š 1@ŸTaaÈY?%RÀSgÜ#\0‰ÕX†ì?5®VÑaÄvL`\0é·	á²(Ê#jk\ZñXEÝžèkÁiŒm±N2àÐ\r‚3/älì?Ö}U*Œ_nWf%€\'——‘+”u˜DH“q\"3v†/ê©Ú,ßê‡ù¤\'RòbøAüàä\n¡L€,Imš›“\Zeš\\*}sMÈ‰Ç&Œ`@ðýö®ƒþEã”ò˜è Á2¿Lý›Z\0?%ÓtÛ’UA}A^‚áßê®/”ä®>IŒ’Ö¡’ýsD™U4S¹@‹@Î%8a#c’h<¢fª¦Vàä®ˆÖèd·*MlE½S]&/Ñ\0›#\'ˆÝ6.8Ó‰èdÑ*Õ\0Ýv\'–ÄÉ ]=ïxË™Ù,N/Ý[¨\Z N@sU<Ö–™ÚTŒ¼Û¦“dœýTÌÞpì¡ØcxÄe¡R ˜Ív×w‡û yBcCZ4„yÊy™È}ŒOŸ›ÃýãQÒüŒ^—8Q#%Š†ßp…Îáb8ÍËPÈ¦»Þ0\0É$ÁG$-hÍ:$d\nÂã{Ñ4YÒìâG¢0[-ûÚ\';Ìrh^zš\rÇ&ðíŒ=L\'´–¦p„—á’“š$ \n\"òUú\"á{”oÂ °Jyä¯{ïÄåI³ÜøCð	Â5B…0}J¨æ—* ´Îé¡¥÷—|IÜ?UîRp¢hæ‰³ºÆ©´ñT™Ãê¤RÃ®_5ŠÚ$›‚‹„Ï»ùª®,¡<‘¨TÛñ>\rpÈõGü^Çü~êcÌ·ŸµpäT¡ âÌœ$TijsnH¶ÂÇªÂÛè€Í7<32&ß@e:°µšÌ±\\ç¡ôÝaŽ@œÑ`Þc(]ØnŽ33è»®ApOº¬^Ü›!°‰l:§ÑwÜ$a&ä,Dï‹ÞDLf€ÄÝ6LXˆVh6å²Á¢ˆWD(ºè£ €EE¡	uÚ«v7‚µV²w]ìÇÀ	]žµWS:—f›ctœ“iC1AvŠ‹ÅWüqo¢&5ïi¾ë,\"T<\r\'ælƒrƒ%0ò„H¹Õ:eÄ\"JÕÎ´gŸûú*Óû¸Ö|ç`š âu†3wö$Ãýê¿ž=µ\Z£¿s°XùUÞé,¦	°…¼Fè¦S¯ysfrèœÀ´¿û”Ó-neÂÈGÂÙÔúhŸ…ÅÑ8y7>U“\0fáMêºraq‹.í¶ú¦4IÓtØºÆFòêŽP°Å¥NhÙ§\'—eð$ÍÑ¢ÒLœ$@jxÄØ¸”ÖµŒXBÓ$%]D»Ì¬”ú+Î\\ä·NÕ1×iå\\Ã²“¿Ty°èkˆÄ„0²n{¹³læ±@=ƒä¥Õ\0U.ýŽŠG7ˆÂîÜâHpq©ófLB©4’|ÐuÓÑã»¬Fè@¢ÈÆÞð˜ÐÖ4@Oæ·ÂÞÿ\0„Ì÷¶@[sídbk€ÞGYœ÷Nõü“£S<õøÓÏÙH¦#Òê°w#¢ÈÈ—}ZÐ	\rŽ·NÏ”û‰©Ô”ñ–a ……°t+áh™QÏõcäw˜F«Éh²¥Ta¤a£Â\0óOò³ª\'ì\\t\"~ˆ:îå ßªøCé·²T¿ˆë†Ê0€VÞè\':ê æ ¡(›I²¡!³\"xb@þòUó\rÐ—ˆ€ÁÔª•\\oîÙ`Ä~òk\0˜àFhZ—J81¶ý&8œäœÕ8%Ú*•<Ï+b%3<ÜíÏ°Ó2$¶Óì$fñá‘=î«9µXÀ:	ÝD2h„èîè·3®ª«@©]Æ£¿ß¢å—üìí]ÈMF×w™]Ý½SZ[º3ô\nõX_=JÄ~Š\\Hè±»=‚Äå‰ÙlzJ’7Lìrï]ÿ\0o0R§! EÇè¬}P‹ÉDÜ‚î=•¢!\ZLƒÑ\0…6\'†Ûð˜ŸÉÄ¾ ©A8¦Âœ\r`èªb¹†Oçì\\$‰ÖG°™PDe0{ÑŸæ{O…¤¡8ëÆ+j´¤ØNò°Jþwl1MÝ)¶Ã‡º2ôEl8|ÖJo(¡š\0ÉEl\0SÁ¼ÖXTŸ’i¼EÑ9’q$V½”p™·ÑbÉM‡Â\'€97ˆÐqÙmÆoM¤ú­S}l±1¢ä5¢\0ö_ÃcîßO`2ûO	Ò¨Yý¦qí*n?Ep\ZD^<ä)¶<nôì#•)#ÔñíŠÚês<\nÄ‚9;$¬ÑÅÅM®¥WRå~V» |Â8j¥ \n9 àéE½¼;Ž=ÊxêD-6!Sqe.håoES‘Í6pÓ­\\aì›šxîOÚ\\ˆðÈ³ÚQÏ¼Ê}£KÀTq0AIÍ9˜\Zi44²p„ìÁ‚£;ñ‹(áÓ„~()F\Z¢£3ª¦@Ýr&T&ç¯\0ØßÀr•ÕYuðœÑá9tN@,±ºþŠ‹a­üS­P]ØªÃUŸªm§Oc†M#(ù€¿^¾1¡z¨évµ¹’«vÎÏïêà™v¼Hà#6æW÷žÐ?¦AêžMJº¸„<MÉÿ\0š˜jeù­8ÎeO\rÊê§‹†yJ£\"Ÿ3Ð,Z+&ðü…1Äå<=x¥n·Ãî¡æ¨P¨i–žVÆc0{êYF©îòZ=‰÷ØE–]Û¶Î|pdãE¤Ò¥\\9èUïe©ûßETCÃn8å‡[Õ_Î=™\\Ça#Ø3y‡\nÙŽ×Áš\0z&fnxOª€ŒÂkHPÔ®ó›e+òC‰¹Wá³G†×YqÉY,J™¿z¦ˆhÄª@þî]€Ù4È9c„dÿ\0Qãÿ\0æžšt)½•€ñ9ÂÒ³6ÉaŸˆ~ÅjŸÿ\0^$(±·‚‰”Ò£DTÅ¥]w*Uü5.àéá§°Ùª8N¨h8hœ%´…âZán©Œ,`€=ˆ0_„’·#îâù_Ãñ4„m¿³¥ˆ=Ù‡qcú&dñ>6A®áÊ	D—;Äãïá’•79ð9JnAG„¢\0\n;°$¸ZBtá+e0‹¸nîqG ŽƒtC~\ZºÁlÿ\0ËÇ¯°\Z8´¢dÆž&G1¸¸æñ“ßX>Ïû{û§4ãäç§ÔxªælÖüEoç dÝ•67C‡H¿	ð8h8B·	±WSyÊbV ŒY¾=ÐàðuârhâÓ¿©M÷`°ôù×öO·Š±i×Å‘5\\Øõöo× ªŽ÷g8HŸ0è©™cÄƒÓÁÙâ­o^V¦š•ªÔ>c¢œOŽwîPÍ®E–åLßØ\0£Tå	ÊèÏÍÿÄ\0\'\0\0\0\0\0!1AQa q‘¡±0ÁÑáñÿÚ\0\0_~Ý„îT^À‰jìD7maï`ëýélj/¶-£>íœMSþ”¯ð‚œ\n JÀ0ÿ\0Yc%ùª~lzÛèJ•XÑù+Þõý‰PhÁöÿ\0c¡ûú%J¿Ô¹~O‡ÔV¤ÒA´‚—hÑÚÅ;\n—îˆ	gìKš‡HÚÄµóûÂ¾pPF€tòâŸckXØ‹öÄ»¿«(4Œæ¤ H\Zü4R¤%,ý¶+Î+^3P\\CûýKÕ•Z¢`4¶ ¨x`ýB`*ÖTËŽ­ª?°ÙõúŠ}ŸI@¦*Ë<Zr}[H}*ÏJ-&ìlÈ\05vSqgþL»x±^ôqº’üŸU <ìO ¿ì»Ãïýg oþ&NÎ¬­·ÀËˆ¿AþþÂjÉ°ší“fÃÞþø–KK@5=–¤7 ãYàÎ‡#y¸û•Í1«À£†Y¡nY‚öF%ò\\RZ!þâíX²C„_D¡,¸¿Õ—kwaC\'#ýTuä¶áÃ\r÷ÖSGÚu6ÔUS\ZüÚ—ÛWÈè¦¢Ç‰‹¦­2=8=‚	¶ÜOñÿ\0eÐ/x²Šä\"¥¾–k¦f=.Zç‚¿Ö3ªK€Gd¨7èñ.Û¯û—½h¶JqWHUÚœ·-XL¤ïÜ;3fƒLú™.u4föiDe&õÙüŒx=[–+BôKë\Z1M=_hæ	{ôÅ;oÜ<(Á\0Ñ[Ha\Zÿ\0¥+[Îá‚Úÿ\0f?PIRëÔ ‹^Ñ+¡È\'f#{EdÕ™\r?Ðæ,&ñ¤GöMš‰W.ê!u[ÙB-Âõbv\0?À}%íýB‡…/!Ù¸HX?AâµŒ¿o\nzFÔÕ&T€+@¯:ÛsLqÀÀjåHBÍ˜lêÂæ¿Uƒz!¾Ÿû»v‘Šê-DnàBê\"›Mfß©.NCbÓÖ1ïy.‰³ÿ\0‘x–Š©Rˆ6\Z–”Aº×:Àÿ\0e¤ÒÖ@Ëeà4þyQ6ES*šÐƒûE%|b{+Y¶Ô@\r¸g^EAãMÙZÄtºe”lL¢vç„ì¬WV7P¥²ºý‚Ž¸ 8¬,÷€X«8àúj–\0ðýÜ²éÀ\'¬\ZTtü	EŽá9 …!(¢pXïÜ—÷ˆ¾J£8*˜\n§›u£½W~äç\ZöåqøRE§$b¡…B,¨µôD¢7Ú‚ñ«Õú\'NZ)ë+At	LA€¯ÉÁÂÿ\0¥ÍØ°u¹Ü#™á)Q@PEÈTjÜQQ0¿Ä\ne¯1õ‚´R~ÁKë[e¿2{\\ä²Cè~ÛPðF­µ¹…aÂû¦çuä6¤D@ƒa%]ÝQu«Œ—eûŸêŠ¡xC9kgød±ÈØ¤\\­‹5à¬ÃÆÜWGü˜‚mÏ3Û™\0•é•‡g±Co%ÝC\0.^†¨¶ ÷è¸ ºñpÓ.¼¢%xî´\r±‘ÑügöHJµýô–“.˜¦Ôú\'_ðOï±PÌÄWýXË¶Xß ½‚0kQ½‡ŽË´P)Ç‹ýË[ôB%DÏSÃ)LPy§é‡æ•E\n ³÷…Ùìì…ˆkÈiB°\nÁa£ÿ\0,&€þç[c\0yfÃ‘d±ì¸ÈÔyµkT4VÞ!árÞ†°W·ÿ\0J:Ÿ°fÓè€Vµû4¢,Ñ¬`LÂm£uþ‚ò×\'bß±{ŸX_¸°•è&µ¢±³6J=?qÛMZ¤p±û`@5‚§ÁÈ:‚ªŸÜ<>Ì7oá-Ýlfèé‡Ùè6V j<¡ŒáWÿ\0¶.‚Ü¸±©RÌGM#²©×,\\¸ÚX¸m×L/Æ!¢‰Ús§_·1Áˆ„½nX2åÇJ¸‹Ÿÿ\0*dÕeÿ\0Ù~ë8…]\r³í0µOî`OÔþÙ_½PÔÉ¡\0a,UaœÒúüYT·e?SÜîp\'û4\ZVèìÅ›lXò¬ïþÄO£ñl`_°¼(5öÂœ%X%É]·õ-Õà°	çeQ‡Ø\"UBîÙ×­…ÚÜÀŸhe°\\Ï0 5uÂð_/è†Ü`B¼—­Oê¦ðQõl¾@¶—I\ZüòTÐÆß¤XŠÈÚüú`búË\r­\'ð—·Jì*,ZŠ{”‡ß!q&4à!ä¹UÚIF§ÐL³§r;_lpî±zL£Æ<”å7ÿ\0v„@,âhÛ\"ì·ò=S(Ü-EÜe`¥PÕ<e+`­ö.À—hà ý¤¶~¿æZíï`un!s®ÌÃè)\nÒ¡\0gÞÀd>çÈSC¥¼bä±ýD²[EÀ§èÍVkw,­	ýBUÍ·PÂ1þ²jÇ	e¾\"áU¨Æ+GýfêX.MËôNæ€#ßº_õý¿ pBÍRÙjÉø\\\nmw%(\"Y­¢OÔ\'ð1¦L·¦¥\Zád|xÔkâæË\r—Ÿ³à¤ \\ÿ\0ÉWôÛ$Æ\\¥[Œ€ø?ÂUEÕZ„U—‹Q]	ŠSr›qfÔ¤GþÂ\"›€Â hgþ‹*›”¥Vˆ(a~ýéŽ¥¤†ûoêJ¾dE[ÛHeQÈ¯Ö\Zmª7ìª×¿ô&êUäUÌE©Efý@~Ðû`nU‚\\ú7x‡ž\nÝeû¨†ºZ\n×ØÀf·²Æ\0úcmœ`#w±~«PÝ¸ó[äT¥iúò×ûQu‹y’ÀÓZÿ\0b¾¥Òõ»Ÿ€\ZÔ0@Æ¼ô¶P.]‚–ß‘4\'h³Šª;jÀ\rKX}Â[§ú)z2¼¨Ö?°Ø}2Ã£ÈEbeÔÌ¿©k»\\¹–j²….¥¾l?bÿ\0¶Z+ðš*G ä€ø÷ä®ÌÏØEÃ0\Z‡Ò]7Ì¨|ž“³WQZì?ƒÆH¡WADª%}·6T&Œ`×÷l±šÄŸÿ\0ë@\rÅÜL,3jÏüLu‚Uþ\n‚Ï¥_DÕÂmWKÏ¢_§þ¦Ð´kK\\Jš+ßÉaÍƒoí`HP‚éoäà}ÄµËÂ}o­ËÚ.åfÕXHiéÌMÂXaõ\0·®’£°@¨vâË`.ð¿ –Š•N¨\\”\0mH&ú¬¡ìPiøE¤Ó¨µ¶%ð”µÒ«æÆÏ¬&Qö‘È={z•Š*àr=PÝ\"ŠØÆeÏ>£Ò¯e‚±¡\" œïpIsµ•cÌ`VÌM…«\nÂ[ÙN@S„a,Ã¤åÀ_.¢êzp”š7‘Pá‡a«ÿ\0¼‹¤D:¡~9eŸ7¿.ù‰¡í(»K‡‚ªÐ…_*ö_íkÏâaŠ_ü<<[ŒHòˆ%ãk? |?ép‡Oÿ\0’ÇhbmVd¡ƒÉQœòÌ1M³#aÑUNHT¾»Apº8äÀ¯êµœ#}R7ÿ\0tÿ\0G`Sõu1µ—JÓkõ‚°¿ÿ\0H\ZqÊq@³ü!§ª\n™ßm‹ô5¨rÀ™e@øŽm6ŒãZT#\"*„ûDtÎOPô¨Þ—aBý!Bò×¿ÔY¾{›…ýT…¶Í†9éPâ Y»,\0JrW0=RîXµŽ}§¤°ÚýÇOÿ\0\ZTÛ\\ªÑšÉÛtµÑÙíPR¸¤¨“ú£¿ø!\ZžÀ!SVI‹Z,¼ºƒÆjÏ–FÞ,îâ•ÓÊ@üÔrUÅ-„.­!÷ñlgéŠB|<•(Ž,_öeCïê ¹±nÀ9€GšÃÐ*Ÿ»OÖ­‡n\Z+´ºä\"¹T…ÄÞ×*uY„i~‚\\˜ÿ\0pŸP-’Â8&· Än¯Zçì_H-´K$[ßL=¨ª•Ø€•êTú%qõ¨‚ÊìKžv’Ö€¡€¥\\ì˜BŽQÈ0,ûÔÿ\0ó\\bÁ!v•¾R”øÃü‰J~²\nüaCø–@Y¨‡,‚»û;êj«¢;À	wpÓK!KOÁÕò%‚¯\'¬aZ!ka¨ËÆ7ÿ\0ˆÇOôJz®b8ò›\0}ÓØ/ÂÂæ¡N¥ü\\þõ¬ úðeT\0µgè/¹ „•¯³$ü®VÏht?¨*1ÍwV)ZÛ7\Z¿aKUä¾ÜzäŸo±\r6Ö©pSñfÈk.7Ú@Ys–§ìPsNË‰ö“–j&«oŸmAX[”TUf–	\n°Gk èÕ\0”CXr­þØãNä.Â	c¹~ç¬º‰SÝB~\ZcÞôêbTÿ\0¶cÓUÊpš²ƒ;>Ù¡5B¨´ÉDadªßê\0;«Z´—¡âÆ³=”³æË§b\"¿Y6Û.à:XB«zÜ±ül«ÛíŽ£Ôi`&69Ô,ÄâI¯éD†Ÿ\n$9³Š½T!b¦‘µA[_Ò Ñ»ÅÚWjL\\>‘Æ‘ú;Ç÷?SH>B¶}+mj7›oüEzÿ\0³%¶­fÿ\0p–\\J{*4»æ¬DTW­¿²Ë€{hð˜½öšéqÝUø8„Ö>¢›ivä½+„ÁL+\n<e~ÛŒ&/¢‘WÚ#mª­>£„¶‹û°?©T¨U UÓ|%®˜³ûøŽŸÐˆ‡Ô_î\ZšÖÓÁÝê—«ÈÚ€Ø|ž—Ç\Z¹¸òŸêÀÿ\0¥\n!o‘ïý-‰/Ô1|Qö°rÆ¢%Ú>Pÿ\0×c]naÊ_ê4}Ê,ü\'\rmÌ±N@]Q&®P¸_Ô¬XzÍÌ–*\"Òí\rÝaVY~æôbÒà¼>ÆVÜôzl6kA÷†ƒÉÿ\0¦ˆÿ\0PÆåÁéñ½“¡ºA?¹3°è´Ò,`°_ñ¢ÔS\rÿ\0cÿ\0öÀ¤†4ÐßüBˆ—z?¹À{š«þØ7Uþ¼…ÉÀeí¿ñ(´Ã?Ù\"ä¼V¸Ú\\Pê]…YD	bÍ„Ã«.’å¥é´s¬H¨gwo’(-®ˆcšlSXœù<QRö¸`m=Š<´t@°ä»èŠµ„A|]@¬ËýŒ_p?äKâ\nÃwÀ<S\\˜\'Ä”k€_ö£\nÔ#«¢Ú‹æM¹³úPÔ©Èé}P¹ýKjÖ¢±¯ü¢îu˜”þê\'ÇýUç›ö¸.•k‘Þ6ÚmËª˜\ZA§Æ°)KÆ%¬èä\']S ,Sê®á*\Z¼¨«ûäªß|Ç\0Á}äx¢GÂb¾ÜO³Í%¢{TD´\nïaÂ×ƒ*lBWÕL\0þé”9mëÑx<5\"*ÓÙUˆ+ù‚ÒÙÝd6?oÿ\0#Iñÿ\0Â6ž%›¢åw¡bøÇj}dX_õqgË¬\nÆƒ> UýÁÈ†Ö„Ff²Þ]Ì\Z…×¶>þËˆ\0T_„]¸‹ÑöXK‹á”\'ÂKYzø\n½=Ó?˜Êõ½+?¤ÍÛOa0…øê‘3eE,Ñ³”!8–8X­©M,$hÄm²¿¸\07È-ýÞDÕMØK\r}.\0À@)éSgú7aÑƒmà°øä ¿ÝDƒ|d0j®à¥m+æ\0kêØ^„U‹¦¸ã@ÄÂåÄ¾ŸŒë»5c²]xÿ\0¨MÐM	C…\0„ñ–/ÙPé\rÜªýÀëöJN‡Ÿd*Œ¦	¸92Åõš1º°BÔ¡¾L5Ò>\\ª®+Û\rU06ù.aÂ´BmDÐYZ!:Æ(€lñ€¬%Y`DgXÕää¨\ZÍèµ®Nmd¾5©š?u]sÄvnìL;y\0 Qhª&J¹cÄå;dÿ\0m_‘?g%_ÖYò-Ew¤ò±ÜHx@ØU<PtšYT?0-epvžˆ ÏÈã¸§AEèY)>ˆ\\½ðRüÄ]vê\0aÈJÄ°ýEGFöå	êÛ–ú™€4«…T5¢\0«Ï2®ú§[äÔB{KþòYÚöŸä±¯Á©kŸ\'­ÂÅEÁ/¯ø	íÉ‡õ)ck¡\"«€;qÝJu@–&„±>Ïa{ü#	1k 	Ö=—·Õ	ßYt‘Ä¤Th¼àBŠU›1%Ø+Âú »rP½Ù[Io<ƒÎHIk J{ûŽ°Öi¬U¯—i¹\0ªäO ˆ(ò\Zkêg:­mN¿ÒËÝ»dºÇ`ªž9ô/Â®£®”/w\0cð—(†ˆjùªÄ!ƒÿ\0•L-i\ZÏ+„T1èÇ·«ÔÓ\nVÅGøÍTJ\rû–$åÚ%ª‰ Ä„PQ\nØT¤UÎËøìÅ­{iŠúër‚ž„\0Rt€°X-&ÇüAuw\'DðY{Q‚Zþˆl>Q,Þ4²Š­MLÞ,Ejí\"8\n¯êú‘vé ©Èš%ÌeK,\'…ûØ>ãüÌ”l5úÞÀh,YÂA†èóÏiFËiý…Ø«¶F1Ã1kò\\…ìHP~}|˜ø,ÌSöu£BM¬ÿ\0%Õ*üƒü)E×‰dUQñ˜ÃnXU­Õ¦±¶Ûp€fªäF‰J†á™´Y|Œ?‰ž¤Ã¨3AUý¹‹?Ÿ¿(©ä…_¦àZßU×u‚‚Ñ06½þK’-V²‚††Ü6¯³\r4`áÁ€º1QCjYcRË‰P\\`8âÑ\0ÐmÏs…ª¨\r©Kx=‡¹_ÓGÿ\0³?±‰k‚å—ÐU¨Ðü@¤ö¬†^]·P›„­¹A~ar‡TÏZŠ™eÆoð˜?í†?»‡Qha,\\¥ˆ×öUSyõõ×,Î³ú\"‰™þÖ\Z§&Ý¾£.Ôb®‹†°ÒCY…]ÿ\0ò[í©LzÎ»¶OÚ¶´\0……ö!\Zz¢l`\n†œºþ—ÊTþíÁg Õ»—õ,¡¼Y¦;|…aÈÖ\'\r²t9Ÿþ ^Šf´-4B;M@q~/øûóP_`ˆ\0ýë*¡~`B¬¼žA@æT+\r§0J~š!ªNC>vÙ¥yJÜA­†\nŠc¤WC‘Ô5ú;¶ ]¨kû¥CHÓWJ”Å+Kÿ\0±\nª¼ÿ\0Øÿ\0B;?åB®Ÿˆ™ÖåžiVi‚ì‚ÿ\0c_²Ñ<]†«õŸíf‹ êœ)>ª*ˆóhÁ\r‹çH3þÜ°S„)·ê‰q‰)ÛÖ£‰:~ ÿ\0Ö0×‚Ãö‰lð– p—}A—V\"Ÿsòl0¸‚nµÀPv¥¨·µmKólÅ®žìG¡P,ªT°:ØÍŒ\reÃU\r«ö	¦:0þ4ÖÈÄ™†D¨<_Ìëñì×èØX©4Sì¨h=º€x+0ƒ_­Nÿ\0JŽý(ÕŒ5\Zû‚º\\\rùÇÇ•6[€’…ôÙaAž [!¦\"±»Ô×hä\rÝÖp½!?@`7 Rj·O#Àî\'åÆÇ€”¶¨œê+=­0!ÑJÔ ¾Â‡õŸ…›	•Qæ%ðj¼u‰h€µK,†Õú.:ž-@Þ{W\ríC?îƒ—9wT\r“Õ‡ï\ZƒCè…•.G%3ðˆ}˜-½š`K²ìÑ²ZØ(T–Ø1âÔv]•ÈÄ±àš‚Š~M	„ÔxàF›Öõ­cðR¾XˆÕ®t/«uÙµ!ü€ú%Ò2Êöª¿™óm*}š«`jåÁ6–é!¢}¡S¦Êó§òR6ZÓL*\0ë¢ÆèVrMS?^È‘ÄÌáÄ©5‚C¢ÕÊŒ %ÞJi`A\Z?u£1!Ã¥%Z`«„0ð.¥MýeÏÒMÜ8XSZb¥†4€!©piµ£@­e“ïS}m_ü\"`<¢>€†–]Ã-û%Z^Ê.ÕG(’öŽÆ\0ogý(‡¼Uj\\±Ð—[ë.RºÂ‡I”(O.ÙKÔëü‚éAçŒnp%–ãç±Yh¸Š²’ùUlºÍqR”\\AÀ:Bc­¥~²¼\"°}·ÈöÎrÛ•ÉÙÉÊ\0[îB†IB…ÜtRJÈ|’Ú°¾³4VJ0Ú¦¯È6Íÿ\0€à\\°œiþ±N+¡hÃf`É¶™1X}ö2¤(îKV¥7F™x¯…Ebæ	º”Áfê×@±Ä³S!m q²±Fà¾/G©ãP*Ž´†ƒÅøÙ©T‘Nš–RuëþUR†\rüÇKXôVyˆ€?Ñ AÄàj+8eúÅ¾úÏþñ„¢Í¥QýÌÕ¸¶N[	ÛTVúµ4ªilHSÇéEB Ê‚Å·¼–\0U]X7ßb-a8\0@\rË–\0ð¸û1û`Lô2ØK,‡¬b-	éõoùøúN§-x”1jƒg0-²‚Ñ|žt¿ÄÆA@¢SwœŸIºˆ±Ö–d2’6\09¤]R©mq§6’jzb\nµlB´Á³°ô0Ÿ¹kmØYrËT©bÎ|/òg‘–´,cîŽ¹B¤,…J€ƒ‚<\naË´¨E/†Ç\\¯²©HR}„%s€¬6º[/EGXjë*Md¿D£qW+Ã\rÒT¢|òr¤@Û*\0×O±R¡YèÔCP©W_©rû¯ÜBxÛ¯ÃmX[C	[‡õÐöfŽjly@d4g¨ÃUÒ\0	x˜hHøvDhµN›¹â±ÐM.>·Ôn{*¯öþˆ¸\r¸½XbF¨úØ*ö5n •)h	ÊqÖ¯Ñ?&,lGûP¨›P„mfTX7Rô?b‚“˜eË²l³C\'’…·ø³îU‘©ªÆ0cá+Me=A²¿Ð˜—¥ÚÝÚZÀwè ù±€p	Wñ²zËÊ»:Wÿ\0ážEEýÒšÔÐB:¥F¶|]R	T>›L\n0åQ±BDWé»PØ,X~n‡P½ñuÐMî¥—WX•}$§á6„ºµµjgB]¨@ôþ»â5âDAScêAM\ZÉ%AVª¡Ùbž®¶£Æ‡Ø¤XŠÔ§ÚÔbit”Á¢Úº^\0ãl™Î¡†\\¨5t©o+«+ñì˜{†©`nË1˜}y;O”|è zG|êÄ%(_´–¿›Â4gÒÎ×ò)G\\Šð¿ìXÕÒª\ZýUŠ×~‚£©26/ùCR‡ê-·û0ÚÁ5^dHw¨\n¹±D\rs\0RÉºìPÉì©Gü¬½¯ã\rwÔ³I{L£5µÏŸþâír˜h¯ù‚›Kž>AT1GMÞ%åÂØé_vØ‚£¾|ûü™ã\r\nXZÇ«u}ª–Š)ÙK¡èmÊx¸†Óÿ\0*²(%ÅYV‡Ô¥­ 0F¬R©†Ö°©ý–`]¤K\"«†	{7Bxò\nðË»ÅŽ\n‹*‡önö®DGheÖcvâ¸¡Z4˜HªìX„DÛ¿»òzqûA³I[‰\\,c;TeB¢X µÞŒ°>«UQ\0õîB _ò»Qç¹A/ˆ+Þo`YxÃí6û)¶¸J¬þàâ×YC×ÀÔŠØõìN‚Q|‹kÕµú!)7(š_ÚaùU…ôX‚®@ËL}¶<..Šì©ÓLRƒÅéeTØQ-£†ïØ\n­R0Õ‚ÙeWPÔ•ÖJ‹&%Â©Å½tÀ…hŸx/ghAa#QšÁcøBöZ©(‹T¤T º6¥JŽîªãT«Áç?]©GÉßãqýArøµlfæÕµÍªÍE²¼—1’}C»\Zü~¤£XÑ;H¸+–Dÿ\0\0€!v*€\Z!ƒÁE°e %¢Ú·£‚W\ZÁ°Fi€-¸>Â|8wêÈv5ÖÊÕ27ý)XAß‰É~–˜X\"r@®Õ”AK4<_çÙ¨¹;`\ZY@õ–FÊä,WBú¤]:GX¬(”Ô\n˜ŠSÂÁ³/ã*J rže¿Q*?Ò‡†€a{RxEw˜¢e’¡–~ÔÂ»NÛaþå€š&[ïb• (°‡úeú$är`^c±!B¸´›‹kvÊp‡Ý•¶>ÙW‚PJ+‡ü¸àÊ‰Õ£`ê×•%îé4Ä.~‹ŽSVÅ¶F»ižÚºˆ\Z¼\'8±¨l[”¬Ôu‚Bµ+ÿ\0±À(ôz÷LC\\x}§S Rî…PŠôA¹ñ\"ÅÁ¬,ÞB\nXÊphðUô©Ô‘h@¡KRô¡0P¨¡e@¯O)jÊ‹dmfšv©¨Ao¤Q1ÈöÚŠ£ýÜB«ñe§æ]ia_°Ž‘uF• ° »¼Ðì¨sî‘²ŠºF‘a\01Dºi9jXð×ãO÷NtW +oZK¬Ò\0r(\no¸ðgÒ¢ä²Íz¸W\ZYsö,£ì²v(ÏÇZl\nãl¤+\0¥¿-&B×gaô äÓ{jS„]EµY ø&m÷ä\Zú‰pB5~%‰À`¨™ô•-T fõ6êÛö+ô•Ä…¿¢8WhHô©ÿ\0Q\n4´¸@Z;J9È†š¯cÆËc· àx…Â+¯&„¨¨¥ K´WH7BÑß0²¿Ö‹Ë\"5¶”KU±´¥áÝGïvÚ–ô~*5¬:o*‹oU¬-ÄWå®Zü\nÞÛ‰xv°Ó@K‘IW‘É:aÝ—•VAhÂ`¥{p<›¯…¦´ñ¦Ë#Ð@ÀÙ†ÇO¦X@¥q”N½eÖØ\n¨4œ¢!^•‚È´ÿ\0jg§PyÆÚ¿ƒ !o é¼\n7Ü w…€W\n\nÖ58\rŠ[¸?\0«c¼•·ÿ\0mö…–†¼å¡\r*<\nLsÚÀdcÁq,1iczT-¥Õg„@%\\=—iUs}&`Ò·sQª¶h–¨¤Éo ¹\\/î$â=Ki9E\n\ZÅ\Z´™K¬Œ5(¢Ü¦GS\nœjâÀ ë† €½^	;×kÙ®”Ât²¤‹.ÑuÏm¨yÌní´? *>µ,Y–I¥_±š-ŠdVB¬½p€$‹s;ö©~ß[=XÊ+„Q\0\\ÅŸcF…À@<æ±Òy6°jBˆZ‹V©OúòQƒÅ‹Q½~T×@©a9Ñà§Ï++|nÕ7Õªc:_²øIÌµwpèèPÆ‡V–i»ª,JsØ´–h%ÔYØ>([Â´;]NÉÈÕäe	è©8dªªãÑ“JRU•èÏ\"ã…ÄÊ<žÁõzÅCé<¡j$ôhËë‘E)bŠ‹¤ÖcÀ‡N¹¼l*Q•CzK¯-ºC4Õ,yDZ_Ÿ­‡†d›8¢7ý ¯jéMX×„zê¯ëcUDç;`£\n©j…{<b¨\0êòÊrév jÜoÛ…ÝyÊÄ\r¤€\\\rµ\0]ˆ@›&xÛ9[”S4\Z•\nˆ’\r¿ÕöÚ$¯‰)èŠxÝ?^QôßKÃðîTÿ\0¢‘‰z&@¶Üªm„B°f]ü\"ÐaG„hà+ßÙ°õ˜Û¦u[úú… ¢Úý‹@Þ,*{{‰#mÞ8Æ,OÕM]>Þ¡8Ø|ÉAOvb–Íð •@xõ†‡´D)ã‘%[ wˆ4o€þ•)øþK±õ©cw¼ªŸP³’á\r¿VÅ(À2¡¥Áˆµ9[ÂZÚP hv¸[ì‚ïì©Üæ“-EÜ¼Šj]¯+q1(mÓœÔ±@²-ç:ŸyfZ|¤œ”‡KR¯ü­¤‚*ˆ)¥{`h°Ò —d¢/BL„”ƒØœUmô©Fˆ‰öOÜ`áI´Žz çê=Öæ¼ö[‹sÉcà&Å|v»¹Dò¥Ž¥IJµxµà«º€zA 7Œ´_6B\0°àòbÃtJ¶rÁÝ]ƒS?1g#ú‚)g%2îa\ní]Zîå”£E€¡Pk\\^u\"Ñ¸°)O®¦T|j¶#¡/ZqFUèbõ#„1a\ZªPfþ`9ÐjË¹WÜ‹\nÁATÅÃf®*¼3þâ±kHfàhÑV(. ;±ØwKÈÝœ¨00FtmÉqHŽ\'„s±5R˜N@R´Z4Æš³Ñq±oô‚¯‚dT!ä·HóJZè\\º„KÒ¡å¦Oèju5½†7‰¬ë,§”vÃƒ:íjôÅ*z²¿@.ûL¦ƒm¢‚B€Cqž&*¶´·×¦1\rWeìþ¸©x7·)?m¼½WÐEEAP*ñEãV˜} -/ÕôÅCòÃO[ª:ÞjR(ihZž²f\r©ê¨Çùµ\nZ¹*T¯w#ºK¸¢VÅU•V/7’ÐÕ¢@ñ××ŒýŠŠ*nšÚ2{zƒ¬Åâl™J«NËa¸šž!4µVÜÏ/š6ùû9Uëß¸aŠ=ÜtGÖÀUZ?Åx?´@Ì¬éïYv‡®ÄI\nª)ÿ\0[˜FEà	¨%_±(½7@x#MóÞ¬Yé»C\n\r)6ÎÂ,û 7½[[õ\"C š\ZÚºlU¢6ú.ap›ue£q§kÓ\r«*ŒÜ2*Bâ›½FêÛÀâ¢Ø…ÝCÑnÀ=–„Q#x©€\'ä¯Þ,5=Q/ê(e!­J’þØa£HÝ\\Ú°îS=·³xS*»l¢–®ñ´Ènª¨[#d£;è«*\rŠê4\\RÃè©@%6®.Íc(AJ¿R§\\ÿ\0ùþvu€Mï\'?}‰U~d`¤î1}•#¨:DÓ.€ÖtÂ<VMC™À*Z‹_yDÖâ0TÓv•h¨¡ª{\\´…¡`já]T.9¬^´º°bÏ×oýã˜Ò9y\Zt¢†Ã8J061wè\\†*r@86$a·E¦h­¢ý+ÑB—qÆQB8G\rÂð	i…¶5²”›G’áK %j¢û¡eÃ±-)³±é£^G@§ß\"µª†œŠ*-ý5|‘—•ŠÚÆ‡\'¥è4Ö5“i–öÌ¿S/øŠ®ï›öjªÒÐAº\n@Ç— \Z\"’J_M@»ô©J(t.oÉVøÊéYK\nß¥¦¦yÃ”*Ò¦q×€f1ÎXP²NyëÄ)±Q›R‡ë0;€_p9Å\\µ©‘‹¥ªÏÓ\Z.\Z\0èmì@cz»P^îŽSþ\0`·¡q:Ô)gëV\0U¤1uœ¦ÛØ‚õW—ìAÐ)m‰i«Ö–ˆÛL¡ÿ\0.4Ì3Iš…9ØêJŠ¶…¶\0ÕJ·Ú6áõá\0Lˆÿ\0Ñî.¤1ZÄRû99‚ˆ»®.ËXGÑÀK|®ç‘ÃŠ[F®M¶\0\\ ˜å\nZªáÁŒ„ÐBPôªí7šç£+$‚E#DèáH(H*¬(dU[nÿ\0X£”(iÔ)¡ÝX° “[pÛÑ²ÖŽ«¹p§Âéôf–P¦\'´ÎÙKuP] J”*UìÔ°ü{p¡T\r­³Þ*Â‘nÊâOº/9í\'TÃ»ÙÆ¥7¶ð³ð”n)‡=·hÚÆ;õ¨³ólG{IÆM/l²úD¨gLÅ»Ñg‘3epe¡dX»¶º¤è+;¼y²«3Ÿè[ðm‘—mWü­è{#p\"Ê×ÂÚcX¾”¡\\Ôx¶¬#V\rÈõ(£RPBØPHFÈrÐé½¨Céq\ZP¨—G¡®£ÄÃE‘²rrq¢KžýJ8¸Ó\'ýPˆQ„Pà7ìh-”‚M°=;>V%9 aD\rHái«·mVÂ\ržkk£ëóœ5P_ø{iÂ¸aÚíø1;TÂ\Za®²0_´\"(œi0ÓÈý«Tk—u(bÈŒá¤ƒNK¬`ék¤üï¨¢JÁ?g¤jÆ*¢\nP‰\n¬\rjÔÐÐ¨ì¤ÑqYí®â±†y)^í]™-P9P÷…XXho”™uêá£UA*2åÐVÍ2¦¸SÁQ€¶°•ê>›2Ó¢¢êvÀ\nBG]ê` \n¹ ‰°}}œºŠYá\"\Z±£U­Y1kj_g¦©[m,\\Ó%û4~Øõ…MMë4•àúídv½Z­+:ÓO÷i«5s´¡òrè…!xÎ«K¦¶(ˆ\0À¤C\nƒ³\ZnsÐ·EÕŒ˜x±«ÐÍ5èé$uo‚ê.åÂË#6ªÈ£¢6–†fp4·£~´W×V‘CpZKkÎ!ÔÔà°¬MK•}ÈÈKNiM©}ukè·Kyîž\'e3ÕmÇ\rXøNÌ„»ÛŽþÙHUÂÔEþŸ×£\0[~Ù¿AZTý¢‹ËŠC–ÿ\0£’ÐÝðH;áå¬eô8\rR!B•¹Ÿ§ãi…ë÷âQbj0öã ýE¡XtYÈo¶üEL<ŽÄöÔ Œ`»=^.ÛØW*`é\n…áTPQè¡«~ãvý^l+„©·/V›^\"4íoiOS¥Ï3Ñ‚®å\Z%Ç}j—Ø¬£‘§I%v-£Êx¬=ÜAŠ5‘¢ rÿ\0¤ zLêÆ¨8m*t±ýì.S%%«ðC ¥,p4]¸Ô#t[‚œ{lP@¯_P‚¨ïäbÜÄ—ö%3[ä°¥¨×yëÌ½9—‚p˜›ˆTÆ¨Æó‰oP”o8\neÆÁlŸÒoÖ0(<ˆWQÿ\0iO”•vr®s©O¼ýÐÜIˆ¶i±S#ÅPRSnPX¢	X(» Â\\„SMôU€¿ºdær‚Ö]©ê²Ô«÷[D˜ÚëqQ\n·z \ribUªC²Ð ‘°¡‰.ÂjÒ¬l±Ð¸Ç£Û#Uh\"<bÿ\0Õzy—Ó«ü,¸è)Øv@§­ØÈ%T¿#¸+ñ•&›—ð{úƒ„Bâ\r$H´· ¾h¢_îs«Xßƒþà¢í·=Tµ D€ÒàHV¬F¨j¥±`ê\0åÍ¸‰QŽÂÞÒúö¸‚q2AEäZ£â=¦ £¥ï®·€©÷\0K(n[mêá.«Á`Ù”xÜn;guÁ\n÷{0]Õûª\rñëˆ#¥zõÑ Içv\ZcEØO»Žñtp@h¹yºUÁàB!]`jé±D€a;r)D12#Z•.˜H8’ˆ}ÌP@$ Áß•_5A=¯T±Í`[)¸éhð»+F×Ø5³\'7ƒŒ¿Úÿ\0ôESu~	ðÄl]\0Ê¨UBÕV»`ås¤&˜Y)+‹‰Ýj×S¤ØšöÝçP×Ó©&ïï\0‡I\n­ˆ®¨¬à¾Ï`^Ö}³bå)™í‰ôD¨²WBYÝØµÛç_Hƒc5h@5‘wìÔµá¢žÀ·hô¬:˜Ê.êÐè­åŸ{£ïãŸ¬Z$*¸§œ@%GMpåoKü©¥h\rºCíÌpXÏ ·‚øÈÓ>Þ;û2O¸Er‰öÃ@~°Ýr¢¢22¢×€)²(n¥‹KºÅ@ÍŒeJ YàW}>TzKcÇ	w:Ak—õ«Á^*_mW­¯†j‰BB¸1Ø¢àÂ‚âd >¿?1±°ðr5­4ŠRÆX±¹\"n\"èT\0¡NÁ<ö€>ÊÝ ‰Á½a%\0âí«±œŠ…-EOÈP~GŒ¡@Rµ©h”ý}E¢+%“Á£Ó0`Û–šõ2jsJ$5ä\\ÂE_ ‹Õ½ÝÌžOV–Í©Tu2¦ó%ÊþŠ,ËµQLø9ŒmŠõ“L.ÄeÅ<g¾\nÙÒ5ÕÌÚÖ™,Û÷J…6*bð¶¬Y\ZÒÜTÖ€¡¡nDy¶‡a/z2¢ßM†v»~ê4ü0ª]*î–`Öø#MCòV­Mª]èj pš\nØfZe]@¥¸²nw}¥AÁË)ÈkÕ—(Jè˜Q-`K¿º\0B×gJy±Ñ)\'ÂÁôª¤¸ëp¤y<òFÀ#-ê¡uB­EÝV®¬ÕÚ•ƒ—Q’ø²æ¥Ô1hX.ª°ÖYÍAfŠCSH¤`Õ¶ÌYé²à¥¨”\rC¿×JŠúsTØmÓ²›GK%Á£JŒ-•.ƒ¬–š@F±ïe[©l7/ÜS«VaŠ|+%y\'ÂÙD.¡Ž%ýÌB¾„¿«@(±¾²éú—HE†\ZsR$8((>‰k ö‰é¾È£(Ÿüê%(/ÍŠ[å!çsÉ/WŠorÁ•–ëÂ\rÖ³e6°,ÕT«Ò8j g°…->î!qOV¥tòå`Ö4’éGø–…ÄÓ]”\n9©Ô³š¥¸Ðji¬/@ßÈ\'Æ‚”ƒ1B†¿‡IP,röùöOÃÏéVíMì¥ÿ\0P	^r\Zè…AôÛÆ¢	{Õ\rÖ\0@T€³¯\"©8–eõqU±ó<†6Â÷lÓ÷‹[Ê^8\rlœà…sP/ü\Z§Zte_àF…+«6¶1°0—¥†¤²ËæK¢WG§\0Ê†#‹5€[V!è’ À\ZZ#SìBÚ]æ#YÙ«²+¾4¶aóÚÌˆw=MrÊÈUÆ0ø9+ÛáDÜ4t„ ±ˆ—HÕ)¸ÍrSøŒó”F¤]7Ë8±P½€T¨à«þ{úJÌ|eš¯š¥þ:ÅãÏ4bÝ¼JÇÁòWÃ]TŠ\rç²K	SiH«Ý#un­ÛIqj\nµá°éOá\n¸¤\0Kì¨P½Ú¢è\'\\\rØš¾C¢©D»•w—f…ºÝŒ(o 2.0”ï@	d)œ¶vÿ\0Ød€Ú]\n}Ânœ—À˜&jÓ“î»ÑŽ¸eý ˜\rHP.°ƒ§ST\"´ÐÕ¶¯1E5VçÁ·j’Ê³	íé„LÕÀ¨%Ž¢+£¨ðšŠ!•Í¡›³NÜ‚	ZPiéXW¤ÏŽÌr $¯¤èr’Ÿ\0ŒËFê´s\'‰;5	påí‚zÆ’Àpbvæ+Á¤\nÀø~›\nH{?H3a–ÞýbcÝfµV¦¿ª‘,\nÖÊ×ŽúPš}ú<˜]­þª¡ü,ž‘ù¯õCßâ°Ï €û4´zï·ƒµ?ƒä>\n6¿MEKIŽõLX]ôÿ\0{4P)Z\ràrÍ£=ä¤.]G\"QQ\nìQµ!bJ²óÀµT±j²YgÍHVÂè*#§bPDx#†‡€¾øVºªRC¢ËâË³H7‹.!C×QßwSGê,õà‰çÑ6Ï‚-Àoìh„=á*íê¤ßô’‡”óØJâ³¦dµ|§Û$Õv1‹â!{Š»+Ð]z‡ÝÝ–¶Ñ>ì&†¦Ã×Ü0äZŸÖéü‘°ú«ž)}™•aØD¡êKQb4pC&U?T¬H}ÉB†~P3ªÑ›®+Õ8ˆþÇò÷ážDCEdVúœó]¿’îö7žÍ	Kh³Ú6eZi)0ŠJ½’ÿ\0\\ûSßÒûÏø1±cR`9ŠJ_>àESúbøÝƒâŸå—Ø½¢±úò\0?±¤€\nË©r·T£n\\KŠ¬­jBí#ÿ\0°\'B€T,†u› £…u^Ë©\nRþå6êÊ~¡¤8Ü~Ðà4z8O›ò Âa«l\"¡€K^1 +Ü•H|¹ì±‹t¨j÷­\"ÔyJ²jYIÔÊ¨KÕ ªÚ\nAî[	oë>–”?ºÑÆ]\"”gv,Ä.»„ÏÀ½FG½Ñ`”EQ¦…\"ÚÌ.¥ëDÐZÕÁZj÷ØýiGÐNº»¤À‡GÏ¨,H‘W¨1ÅèËß„–^V2·îëÒ«åOÝ^ªäÝÖhF±–ðs-#k\nQfK¿þËö¥è’½ùbˆp>Àìqõ_¿¢Xˆ½o‹ð”vµmF®ÊÀ­Š›¤_/©k¡P“ì \\štÓsÀªíÁ.\0MÜ˜ÃÏÐ¥5¡+vº‰y€ˆPÓÔ	fÅ”á½(éQiöM‹¸k>Ü­—¾ÆÀ…ÓlE+ì@\'šl¡ÊµAÓXm ê•Ö^¨[N­[.·Z!„Ež›Ù“.*?Ý¥ñ\0²]—˜#„šË]^Wƒöü¸lWZ\0ú àP´+ðä(Ôè\'§ÍuòLÔXËÛ˜M*S^\\ƒÅ´Aíˆ9½Æ:¨Ÿci‘¢Cøœøâ\n\0¨â1³D½Ä©l4þY@·>‚\'†6)<\0Ãä¹/øá`R(îõÊ’Ô\ZéºBÛ¶\0D…«ôù¯ô]Ë¦n¶\"{µ²š•ÔGŒ¶\ZÛf<Ç=b¶²ðü–M»¯—L®5â÷ö”]þ„Šéh•ÑCÒ—oe¥ÀWpÓùù;ìÎjð{E‹’°(¸ïÑ\0\"‹§ŒwÚ?àƒ5P9Cù—u²j%¼%\Z†uŒ>wy\"N^\0”®›zì«a[qàK£ Hãö°{m¶ðf†Ïä{TG¨Ö†÷Qé‘ð½¯âÁ¶‹ä¬ê¶i*F¡»—Y¾€K—ýŒ©ôþ¹CÚÂ•âøÕ,øyóä‡\"d2Ö\0Û“;dßðU\"ø\rg°øöqóY•ÊÁß“”‘ØŽ:Õz+¹Z	û¬f± úpµ~‘QÛ&ïÒòÏvk·ã‹€›^ÜOA`ðFCµ¢‰:%ôŽ¨Yƒ.Ÿkž\r´BY¦˜”‡þc0-s4kˆŒ>f”ƒÇÀ î£»L+\n:! 	„¬[Œô§U•b)ª:ß(ÜAÁt)uSBÝUæ	ƒ‹ƒµ6E³‡kþ®Ø]¤ƒ÷ábÔ\'[/ú2ïy÷1¶õŸä…šm´²x íÃËZ1‡~R]þ¸_éµh«ò¢|¯ÐÌž«ó×ë±89£®èÚ©£î¥§šG¯b—±ÓÒ<øcÂ-@«¡.ÈVÖ×Až,Öýõq·Ÿ\"õ –ù¾\rÈ­~}nçÔ%ÜÁV/#kŸë ªuÖe~*Sú£Øxì´‡O¶]´••¥³6êµë(6¸ª;c§B®H¯üÐâ³È¡D»+©¡¢å°©iA½(Š´¸X!Ì¹ÚdJ\0\nA½„€¢¨‡õKcß¦VŠ—ëè©uî•INk‡ã¤lÑí¤(\0ˆ^&t›A1Òz>,+¢ðFú-`Ê=Ã.<þvÊ:Ý[N>ÞÎ¿È\0€1ff+ |½|û(–ÇùÌŽXöqÏbà\0=R\rw)Kü²ðvQë\0óJà£aþ ioZ¿Ü4… ¯ï„ºþã¬+J0€Ê&æÈºÒ½Ä¶äÓ,h··É°a›éÉ	I…%Ü…}múÜØ7±|\0	ÄHŸ] üHP«YW	Qóì&ZªlW_¥Æ0ù,›Û\Z»ˆí\0­D ;6DTil«Ú¡ê/s>Ñ†ØlVt0—¹íGKb\"p#t;z[ûÇRŠé®Á§B5Û#Å•ÑÆ³ohãœP(iÌŽ„ú#‡àGÐàÔ\"\'¤j\rš±8Ì!o¿¨x+\0,1¢i°2W-BŽYMØPS^Æ`/èªÖªut‹¢ò©RX–òÂÛ*¶QcÖ„.¨\0\'rYmŽì›O\n}Kã†ô#gÁðÃ¯ðü½@HXÖX>8‡Ãð[Þ1=E­=XSÂ6¼—¤ºKÞVt\0ˆñÊ¸Méã‹Í=9g¡Åq>†$¬Ú®=B	Z0›Â›äAE’3Ç>[îÍM{—0By»ž¼ôa1^DÝfE{©ê+ž6`|°nâ´I‘†KeôB[\Z>Ø—h*4S½…\r[çe¯â6¢õÆ8á/^ä¼Z¦áw!\0.ÐH´Ëš1puát@AGÓƒ=Ny\nó0ˆ†</„¿]Òiš§ÕÈ‹åÐDÿ\0w\nÑ¥q¶»Jû,@ëra›: \'b”ˆ‚ë\"+ Pé7åˆ+=\"î–2i60¥Š‘«1Ü´Ö\"l‹-fá´ µÙq¬\ZyÄ‘MÀWcæ*Ý‰TÕa!QS*Ûcg|0þ>ö‡Ã:ºËS;n.µA6Q¥9SH(\'°®X­Ø¬ÂÚs#ºÓ~¦yB«Ê:ÉæOëÅ‘Á8×SèÐ=Él«·DÃ„šªMÒ¶	Ä1¯†gõz<\"<˜íŠý!ß§X»ÄÜ”g^Ù1¿Ž>m–ù€d-ûá÷<a”$µ”VeÌH#ÔµDŒ-žO·æØ·KµîÃðàDXªË4ÞÜ4e(¼(¥J\0’º¥\nñ¨©Èãaì×/!Â[½†1ÁtÉOÔÚ<ÅezU0œZ„¥À™ð©¥ý|*øC?È°W‘ÕÞ\\G_½–ø+¿ddéú¤”Ñ(› ãKŽA@j-Ø–å˜Vq‹¤€÷êÛÜ†ïVü½Ž²Íèü18)ì/ÃQ}$~Xr!!ÃPoáçÊZ|¨vrö;.•üá4ðZÿ\0ÀîJiSþR¦_!¡\0Zš&à°E$¥¸%êÌ0H8Z‚þdR]ÎOà„ËV\rBhkq”\r©”Ö–›Øpã:ŸSè\0¾bð!Mî?(Q)úAUgQÔKýnÐfŒ–\ZT5¤Ë`cÈ¨¶\0í°\"žÌí^Ÿo··Ê¯DQiN;‚Ø‚¨´ª:n™þÑUuËSvêˆÁ\0ê½ ÿ\0jûÊ–ðé³5T[UÃ½ƒþé\0ø˜M/`S¦!…‹Gëžw§£A¬¹x&5AÉJV`¬KÀÑê¡Ç—Ð„ÑS‹²0JìêÈ¡ÂQR•Q­L*Žcp$JÁ‡Òeãä¡—Úá}nV¡âGTE#<éü¿FçÜ¾ˆ¦‚ò|¼„e@†]ûÄ­^YñÇò?îs€—*¤¹ˆœ/ÚHœ^É*yRKúœCTcW¨hj`Å†\\%–ñn6ÐføÄ«E\Z,ºb,Ë4¼[e3b„OV€Úû¤`gÿ\0ë‹ŸÊPsáÂW)õÈ>ïU¹(…¦1*…K¶û¯z\"Þ÷Áì’–Ø!E¯ªXeKù<„ï¨\\6©í–*õ*-®Z8ã\rˆïO¡«¸6uòÂ­ÐÒ7+z‡-B \0\0 ùÀïHŒU˜º\'q»£­ªÄk²‡û˜ÓÔÇ[9j\ZÛcò1VÞ°)À·j½]õ¨‰)Gÿ\0\Z‰Lƒò+fáO–¸I,#Öžo*¬Ñ^p&¤ÂÕýSAE´‰ËàŽ5ýþà±à(HíÛxÉˆ<Þ‰b¶óÿ\0Ü]´þyñŠÁª`ãP©ðôþ,¤~ï¡*6ó*‰IößD>±\r‰ÌRho•iOM[~2 ïÙŽNÎesý/\0Ï\"ï¤\0 +TË\nY¼¾òç?\0¯‹ÃbM‹Ö-<[­6º—ëáø­¬õ©yÂ>²žžtŸ±3Ð²ƒ|ëî-oãÒâ49 àh„±ºŠìT©oT<–ÖÃ%€(¥kêm3ƒ= vÐy(.®ÔÜ\níÝO²Vzº”yÁV¹µ¾àN®d3zˆ´éÔò S`4ÎA\n8ƒÒ®Õ£sõQƒYwÞäº4 \Zõ_\0]Õ.m„0µŽm\ZKS®REzh“T¹4g¤>˜tÎKW\0º¬(Y·cY¯…ñ„ô¼ˆQ0²·ïåiÃI9)¾ê+k\0í©AþÀ!Ä©q¸žÀøÄ¨\0Zý¿Íü¤AÁ­N yÃäÇ“Wõ„Ýí\\¬ Šna’U®WÔdÚVÔs–øÑk¿c—iL2¤Ý\\jø$,äí©æÃWTÃÉ:Pr=æqxž¿JCŠ#,Þu¤-$2’§’©5¼¥pâþ`Ø\r}‘²…8µ°YØzêÈF…vÀX·e@5PmÇf8€Ç&ä\n*z#ØR¤ê#¬ƒÂÉehoC¤b_$°öRî…´)ôúƒmDÞá. ²Ó‘¬j¡)k!8@ÅÔkâa…?-ÚªÃd6\ZƒÒÁMänZ×Ò¶¡ª]Š#Mz†<Œkó§ õÍY¢ÄH6” }ØÊ‡,‡³Þ`]Âbþ«ŠÑÝ_~–w0µõ«_ýâ:T®ªâp„uK<yn 7Ø–Ÿå”9Q6\r“Kø®*ñ:CS[~ñ‰ú\\0úáð|=>»@õXÃµÃæ¶Aþ²ôßs ¬å}@“\0%åÈ(‘â‘Rkñ°0ì]P64 SKƒÌÊË!™½\n+j€e&aá<T…O‚°tv$^Ë{Ë–álÝàKDˆ\ZíƒcG.	>”/Éêí¤	Ï Ù†éäíõ¤ìÉ‚°W™áF\r¸Ð· Ä¿|Jäá)Ëê‰«`\Z]Š±ŸKªn@ZŽd%ÜÒ³ußøjÞ|;›ì=¦^¡@;Ëü„mÞ?UÄPý!?+·e\nkà„¯C­m[ˆe\Z²uP¿·aÐ$0 \'è+PÑå@®ÎJ¦§.Ù:Þüõ2‰ø_ä‰HE¹^–-]Ü7UMÚÓPY8Íkš_;ß¸‡Ç§Ã„—¶#ŸÆ`[e†\0y—e‹¢%M…FüÏ°Tñ7¬qy›Üê¬k¤¶¸žZèà‘Òÿ\0^E¼—?ìæ®çE(à3†Al€^sM°¢\0EÇêàOÒg*ãØ~‹cV¬‰•<2ûdüŸ|™Þø<yX%b@6AZ3À¼Ó9Ãß×–kVÔZäIRQ!¸ëöiKÂ¸Æ}ÓÛ¸¸Ù¡OO°/HÜC>ÞxKÉ·<€cuHBèèûM4U\ZÀÊI-¡Oƒp¯SJŒr™ŽÁ÷P¢Öü`0y.ÔÈ\"vSÔ©àƒC<¦ßÒ‰1î`Y	¬KÐÞFƒk¶‚©ô‚à…òˆßýèÜ\rŸÒW‡µô¼˜Zpø¡@P¨ûoç÷äíª®bù	Å(¡•S¾TK8šx¨Y¶|¿$‰tçÜ£]QAig²¯ÞGã<Ð‡²€õ¨¨Š_öE^±þÙ*çêñøG±BF›Ú4Ä´hâoêûJR¼‡Bô|Ÿ?øZ¯ºˆ¶s¸;Rê¬{sòÇf%¦jˆ²·tò\Z~w)Hâš´”Û”Æª.Î‚Ð\\3˜NÝØ\n´J!†~¤[W+ôËöÔfR€8‘\0^rýè§Œƒïu‚\0ú0îdJ”o¡*aØŸÁ³bÅ+F… )!AGÕÎOâÝº%¤e|ce/{sL%RÔ…°ð·a\\Ý©4+Kaì.UªEGèÁ4»á…îÓùÊà Fl*vãÀØÉ]ƒp\nRph•SjâT„ ýÔjÁ@|3Z¢¸îÓ$‹N-þø§Å¼M˜7ýq&\0‰b|=>zR-FšÙMÜºšòs¨0(\na]¢Ry¼…b÷SÝà?pßŸt *¹áø³êÈáë«V*×bßëá‡>\\|½ùKoegâ¢kÝó’–tö@/cÇösR²JÈÄ¨R”ã)é\råÿ\02ù²€\\GM= øKSw(mDŽÃún^º§öJ¸D?¤!\rÓÙ§_…Ë….íy\0Š¬ƒÅbÚ*˜™ªªeªÏ©ö©,TÐä_ìbå\n“cJ˜ù/Õ \0ŒQ\0´Àcx7•Ëh„ÜÂø×úk•´\\V>qÃ¦>\nÈqî©<&eBrÄÑ\"©È“v|È²\\%	Q¥¨@µ¢QçÒí ÊJŠ1[~Ådÿ\0#aº–ÁB¼CR6¸EÉ€ÆÃt\0µpM$K#ÌLÚ´Ueß(*ÒtE`’ŸKälQ_×Ëþý¹xY®	€R{é°]ƒ`€8ÊÆqðÁùzÃìTV	ëizÌŠqI`~j³7%ñð¸<m³Ž\r­Ièíc–ì:„¨\0ÓKŽî¢¼(\n/èÁv”5øÛµ\nÂ5+0EÙ¢×\r«[šÀ*%®FÑšþ@R\'.‚\0)¥˜¥ZÄ>@ m4¿ JnýäãÓZôô‹kmÅ;ö\0«”®«˜Û‡†5¶ØmØ…[” “‹é)	²FO&.\\”ã§Éúz‰+|ºéPÖ@¤WÞ@µz^\0ê³Uš|+ahû mó¯ÊM®:u`ÏQ.3×ç£ºam#ò<Êî9ç+ »¤ˆ0D„aX‹c¼\nëd=P¶«b\ZE{¢s\n†ÅÖ±t3*\0XÊå¼¿¨—÷!~¬±ìØjº,ÇIWô¦ÁŸ_¸B3kò{ìSï’‘åê¢§Ð`‘ÍQrNkVnªÎÙC[ñ7xâ’MŸ\n[eäk,¾Ý²RÕ°·0 ~Éks(n\Z[x\Znî™d\nDM\0ýLó)wE?uûcuZ\"ÙAàfÍy1¯¼žÀî<•kR •rŽšZC¿;¢v”Ò2iéÒ1à pÅ´‚µIr×ÄÊìr–(á\"8úcðÍ.»æ¹w>wÝ1Õ\0,‘¼I(K\n…Ú¶_Ë=f°3<4&Ø\n·wž¨2s›‡(,>6Ô;†Ål\nsRôKT,Ó’gìFñ	¹[(Ty,3Õ]¼‘´G`»TÈˆtü«Cþ•–ºÆ÷ †8Ö§ÂoÉ²¾h>|\r&úáÃ·g>çbµ^\"(ÝÄÚ–É¤)â1ÿ\0Ì±M®ŠDªÍ“† \Z iˆ*õæ6DÒ*BÂ=–£X€gµÊe÷É©ë&–Sõn‹yi\Z.Á¤•±“×…~Ê[*.(ÉNÞàí#«\råìgc-e×¬5´¬ZÔx·ÈVÊEkeGX¤pí˜o	‘€š1ì	ÿ\05Åç^â%P¬P£ÃçÊg¢£SÈ;©z€A*eÁ?j+Ò1¨9ÛÀGýEä¾Ýb<¬¨#´*†¶ÜDÖ®wëÍÖÔ:wÀP|/ˆEcùÐ}Z±7v‚U}ÚT*gj¿ƒÈ\\´r3”Û¿²Å^ò)\r`âA¿þ&	bg0Â×J°Ù\Z0Ê~yð@—ì¹¼@ìŒ-+‡_ÿ\08ÁL|ù«Ø­² °«J¯¿\0KB›HÀ–¶ ÐDíWh,\'Üµ×Ákb²ú@É„0Ú`ýlN¦Ãv&„Ï……VÁ£jôªh¼P•ŠZ`±h;u„‡*¼¦ÃéJJ)hx1RÓÏ ŸèMŽ)ŽægÝ™šÓýÃgðb—IÄ¨û¾÷‹—Ú¥ßž!+àöÞþÐ¿ªùY)µ\"%‰ú|2¥!*-™#x\\G|P•b&½n´ÈÀÚâŒWšª“ŽƒñxJN*È%Aê]Ëëª>Ôê‘€\Zâ$Nýþ&\"[ö\\Ó~€N¨hÆ¯ÑãðJÉþûUÿ\07ƒF—êK€N%=pZLVd\0àb	þœSR6z™M=»Õ®”Q±”SZ&:m¤aÅðekŸÔ5cP(lµ\n¤i¥—<@“•—´Fº!7Qê$yØ0å¿ Š§×^=xÃtÍÒq;©€_«É¤ñÈå.€j¡F£‘¹P‚@× GF½;6¡Ó;×ðW=hEkþè2o²-è°‹Jøz|Øþ„Ú&ïj¢d[z@²Uª— 3©b¶éM›.–]»Qh7P(6Q:d,ìÊwÅ]\\…î”(	öŠ™€>6‹~QÏñ‡,&¬5¢R=Bµ¦R<ð\nÔˆ#&8B|7H·U÷ÿ\0È{D^)AéÓ¶¬‰¤Ýÿ\0DÆ6¨lüÆVôÄ0ì)Œy~XJZ”%ãe°U•ïûµ)è×kò.&Ôí~Ã3è.å˜\n›—éÂd¨\r%Þ¹iaÖ•šô´·„%¿Š†i•´Ô@¤Ôf‡ZšVò*¹€\0Ò ÜÞÀx;\Z¯ý–ßEËlH¨NÛ…\Z´Ž™?­P>\\ ²,	u¯E:@‰= áÃ×ISü^ü‰GÒ¡\Zè»+àOp=YA-®Wèó®Eò{ÈÝŠH+UX[È\Z) Ï>D7ÝWãiô\"Ðôç>ó°ÇÁ¹‘+ùëóù$€h>È‹Ó®Ø-p8×¨Ä4n%£ê£—µAµÃû²\rÿ\0\'ç‚}ðIfÎ;óyVø–R¹Îá´j§Œ$¿ô›ûý~Â°BÚÖŒŠºä.ö€{¡ 7 ‚–»\Z¸®ìäl-£2]ÿ\0ôn&ü—\'\0Æ‚‹ö\Zjiö°¨Uö%ìÅfìöX©ij\\5ù¶!TI0Üöªò¢²û±Ï\'®ß«ŠZÖ3\"+\\`Dr\nþ	lKr2òNÓ^@?gíÏ%ÈP.ª¥\ZÛïâx^?(\nø~w‘W3]”ŽúÂT}Ñ4ê<°%øÍ&Ú~ÿ\0–Ë¶b¡$åœã¯~V^`—D&BmŸ•NÀ©V¸€òÿ\0¿\'Ç’¶&b1Ã’{*ß°Àº#ž+<ÑBå+øDSàQyj\nÂ.~8‡[RÚ!Z¢MÑD\0ÙwO…D}\n¢ÍäCõ›`ÊÎåøFZ}´ú#%‚.\Z@F:l¤*ÛD^\\R@õ½}v/˜™]Ì¡ru_¦Ný¶÷\"ÆXØˆàc#KB±]NÈVtÖÝ!‹JñCùÏ›ØOs.V5ôi®Ê„«–Œt.è³xýï{FFÈý|{òÂ+SZçÛ¶+l½À±Ú_~RÂ¾eÞ‘¿’/Ïç)ËöÌƒO¬Ø\rÅÎY‚;õTuï•T©ÿ\0ì^Ÿ¸ƒ/l³&óg	 ‰b|³Kø<žA@°¤ˆ,æy/\\”µ;qõÄ\0T²Ö¡«\nE±i·ÊBÎ\0á\nÏ„›QõqyU\'¾8»4ûN¥±ÛþÇ~Ò_…b?æ \"]IõqšÅðJv˜¿`•z@Tbc‹Ix÷²øàT\"þÛP¤˜µ(ì`{úƒyøÁQyKQ4ØEN´^±.F3ážÅà:U„¤<¯øÁRŽy]†¥È…ää\\Ðsó\r‡¨_¢¡ÍhÅ@—ˆ2¾Â}¹Pho=#ãh£ÀMç×BKµ¨•ÓKnÐFÎçWÝ/hÈ7§lýžÄ1Ð‰rHBÄ~{üž’špÉ\nb¬RVk¢y¸¾Ð?ÔáŒ;šwÈ-Yb[#<RÚ˜\0}Ù\'Ÿé1€Ã¼š=Z^ëW[<òú\n	e\'ÊÂ­\Zyj7¢Êôb^NÖØyŸÀï¿é”k:Ô`öŠ-¬ÝôTR¢ZìRÂØv¦áhçA¯¦q=ÿ\0\'çÉÙq+«Sqè\ZVþ\'Ê²i)!íÝÄ¥û¥`	ÔIUÙ@ÐE§OóX„û)VôÚÇÎôT0Ú“#P_—-¨¶ñ¤ B‹Ž1vr•»\nÒXFj¿‚Ÿ= ³~œ‚¼«š%ÌŸ¦É÷ÿ\0àEº‚ß¦\rÒºeU+Å3uÀ’9-–Ae€WµÏbLÚCÜ˜wZ9ñp•ÿ\0ëàì\0Z=|\"fÀ×Ñ³í_uRŠ\n®âÒ<,x‡Œ- «A4rIx?\Z\0?%Ûm‡K“ŠÊ…£?Èò\0¸\rXt%‰C0A6RU¯¥«ø0þ­ý!.ˆJ¨\'/X(¬|€BI¶Ÿ³ßóyÔé¾¼Þio8	H4µh‹ˆëä-7aPËjäwÐL&×*np©q”uóq,#µõ\rô¢T!o+1Ü!•ÄœK†®–²êø*âÐ†p\Z í`j¬®.à6GêßØª~^×€(©(#“i\\^Âê^øh}TjÏ¿ ¿áé¶oKå«D*\rm/“*#öGÖmmµ¶ À\Zâ¼NzÁ Ë\0\0Px|,K¤\n?ƒ.(>,ûfB&ög(Ø=À.Ö<hàa¸àšZà¯àöÃPW cð¨¨>0\0R8Ô*b7ÿ\0Àöþ¡SX Å¯ÝÛÁõ|Xh ÒCÏ ©žå‰»Œ7þªé@ÕxÑ»DV§&zH|×ÊüPn¬ïÔ½ª¢€ìÄÁwu¨Å60õ\n¶ªaFý´Þ€WhàB,ÚÑy•&1ÎhìX‚¢–ZWOœÀ¨3ýø--QJj-·*æßþ\"Íuë/0LEvïM¬t®OÀ Ò\nÿ\0@50½M±S…`±€Ýÿ\0â%Cc^\\Ð‘†›\\¿‡ù:|\0–…¯ešE¥`ž2ØDÌj¯wŒ¿Ò8Öøÿ\0Ôþy±è[´~Oh‰ëßé†íÂØÃŸüÃ{J‰´¬4ÂÒaHÞÃ4\"\r•\0ú|1Ô!¸eqêXŒüüd¿“ÅšÔ­¾ˆÞHo‚¯¶pµRþêwµ\ráPè›†!´×vÉn\0~¾²«KWD-h}ÃåAÖ\n¯Wâ›j5Ÿ¿Š/¾SGìh¦kö°EŒ?tÚÕú(*ÔÊˆ;¼ï«sí®#íwãßþë_a¢Œ0Ë){œahY[Ft‰ °!”„²;áváðô¥¢éÿ\0vQÜþÐ •ëKô]Dw‡\0’öÔÜ£¥W©î…¤?UÆYkM5÷\0}0c¨JGãØôùV) ìÕ”2ã¡Â.çV½TºþZK„¬öÚè3:Äú€Å…›jFIÏÌø»°@«PQè9ð±ßÿ\0Gø€-ÇÉ·+úöXmâ†ÀcÝí~±à€CK$¼¤©iN\rëB«©mø:Ãàuþ±Â×Ä?n(‘T®ç\n²çrÍç…X(4—\nÿ\0Uµ­)AvUýü˜*×çß‰U?º€þ³gF¼”¢û÷‘ÿ\0åägŸf«3K·ýZ\'ª ,\rƒð¸\ZÈŒ¿›0¡WPq¬(`\\$²ïVßHAeu%©ÂRâ6Sá`\Z\'¥&›W{(Pkê}…¯U•4ÃO R)Çü\n•\ZøUoBÛé€cC¶§*Zõ\Zºü2‚Ë¡éUÈ…*\rjã\r…º÷‰ZPþÃ÷ÒÔ24jubÌ÷ïÚ?Lÿ\0íƒo‚Õg¨ZŠI¸tø—RŸõ=Ãa­6\"\n!|žü òka	¦ršõe9ÂÒ\"›€äš>6‡-Ô”ËKufÿ\0„R7 1»›}cYãø(”2Y,ù?ø¿¬UIQêï¦’¾ëB˜Å–ˆ­_B²¨=/—vµÄct\rE×Îç2„VžjñRs=œ3´[P¡±Ê! ,„FTv\ráE{áW­ûw¤¶ÉJ ]ÜÆÐ7!Yˆ[+\0åšDE<\nÑ„¸³kP½j•l¨\rq\nè­’¥â¤=DÝ+´(lò†„A©\nBÃp–1û²ƒ:ªÈGYx*\'MÎóÖuÊc ^ºGûÚ†¾À\" \r-.ªK]V§Ãü5¤z0×8;ÀÈ²«ø+ï?ƒXzQ¼§\"$æÓÁ#v)È‘œ½Š{,	ÏæÂf)íü‚)\\ýÓò?¿ÁTàøG\0×óa.ó¡¨Óê,&>{ƒQR8}½Å!„báô‰LPZ@Kyç@¬«ÛWPƒV;Êj»M@RÂ…Ò\\\03àr¡ í!YLÕµ\0ÖTÀg…@-”›¿¸\ZhÖ¶á\'Âê¡Û•ƒ<Y)ëî³÷WäHO|BìÎÀÇ(\\%4¦­ë\rmXÏ\0¡àÀ¢_—L­|hßØMçö¸¹†—¹Åhày^DÛjSè€è‹¶_ª˜\nÛÔòø{òü(J5e\r¡;¢/†vv[Ž@ìîÒÑË™`‰áEèLvV6—VÃí\n[CCÓùñNgØk®Çº+!È“CDGQQR¢NÉäŒ~>“ø+å„ÐWØô¬ëy,åp5äB´ÇØ¶já+q\rÙÇ9 KÆ ¼ÒRþ£¹o¹…Áö!…A¯îT\0­Ý0„n+ì!xñH¢¤üc^U,fÔZ›ÞŒ¾@Ð5°\"±ÀÐR±}a\"åãQ7¨\n)ó%XŸd²ÂTªž¿\0	íKÑOÃF‰*ò€ÉaÊlfŒ`äÎãÆÊ¸”“×~<ª¥Ÿ~^ÅIa@JÑw¯»oµƒc’Ê#Õ/t[?¢¬i}M«Ò§É«>ˆP¡Ð-šh©Õ.¨B_ŠuCJ¢’~ò\nñ°þóTê±¼Å*|lÝ6µ‚ :§6ÿ\0^±°Ùo2œî‡åù:ÿ\01p‹³ŠèÆ±(#B¡hÞÇ\rÏ\0ÂZ¤§ü\"—£U·¼€T!O1?™¥¡F®¤Œ¥6UŽDqÐ)ª\0\ZÑâÓWë\reÜ®L$Ï8Ç}Á[²†×Š…÷Z Ý$RDXHj	­°í¦´e1ã#t¢{ö7v=ŽŽC:\"ÈìDª^+µP•ß“DÈDÑtvW€²§ÜPXnã¶>1îÙ|L¤ ?#VvÂõ%] œNÅ*àô‹ò|û#ø¹¾®À‡ÉDû=©\\A Qh)õgtè4€O»\0¸æ^Í!F¥‘î)kÌ[Cñwuk!ÐJ#óùOŽ \0Ü1ƒî:¬¦w½Vø©ùù¿‚o¹þ³á=ù÷ÿ\0›ˆ×Ÿã”`­DÂƒ&’àÆŠ,eƒ¶If¼\0¯Ø¶¼•1±`ZáÇÔ¹Š­[t@[O0Ï¡i¹m5Ý˜@*%õ‡Î¢ŸQy-ƒža]lªôŽ´×^¥ç£¿Åÿ\0H†£!ƒ\Z¡èñµj‡bhèÑ<bž‡‹Bå‚ËúÄ¨À˜5AT%7QÚ4–!¬4âiy\0M¨|\r:ìQr™°/w3Ééðá|YP«„\\/ïE7PWØ$Úì?aHPÝQ1é1€ÔB\rìŠ‰iÆG£^/O!Þ\nlUu/v¸6•0Ù¤\0ßðŒfÿ\0—âWë2}ò~…øŒv\\¬•òŠÓ0SãßŸ~Oçìyå+ýâñe\rz5…QœÁ-rÐjåhèZr¼\nú·j™Bþ´œ¤–µ-~‹z„uZàn*èÉJ[J†‚ñn­h…\rGL*1Ím/\0,h…u–‚…‹ÖÞ\"¼CW–µ±‹v(Y £C	B¶-ù\ZU«5rÎÞ¶QðIâ~^ªß´3sÚÅZ\'EP\Z{H¸Èð]>ú|)úC´AF€>+~0Õj¡ŒP}h<\0!íZÆQ€®ºÖgÙ\ZIN1 ½Å jŸñCe¸\nËrŽÂout67š®Ä…D(\\¹Pþš£Í6	S¯Drz$éþCkób“b«aÃøPdÈú¾añëðÂ?ÈÅøbgÐ’³GÊþÆÐ—õ‹DR6€xG˜/ÜzGMÞ8U‚)zß~Ãlµx‹¦·ò¯¶¦—rš€2LMÚ~Ø ¶6¢Ü-Åé€a´Æ}Û‘F¼MD)ª¬jY°.åÍ‡#*Q~Q/Ç0Ëø\ncOÜJÕÚB•äV¯n™`WAê³ör,lÕ¡º!2æK[*uc\n‚ßÀ4´þM£Ÿ…©HÊ›ûãûöí„*­öó4¯´CÒ_ây¯Ë):ö#ÔUqÐ\"±=µ‹8j²Ðô›ìÑÀ»š[²eQFFþø­Â§¿PÛýy÷Ìàóå’TÕ?$9ü47–%5¾\'¬>Hü>©}í)©tÀX6#úD·W®“ Ôÿ\00QÅ£56ÈPnô¦9q#X}Þ•‹U+kä¶Äƒ±þ”h`éH¸$:‰á@ÂÅ±­›Ð±–ÛE£±ê·1ø]FäÚ^ O ˜ \0\rQchä]+OáÓ¥c^ÝKà´aÜm(õ“¬(ÐMb³•üˆ:\07È#”óLOrÕú0Ñ…ÛW¬ië yÿ\0‰ \rŽ÷q´’Àù›Ë€*\Zûî¯—ì©¯ð¤e2«îWè3jØÛ½JÐåÝ?¯Rdô·ªÝf°@¶ˆ™íQ~ÅdV&˜­e4]h”Šš\Z›³Cß±J­ký\n €`Ÿ~*%ÂñRÿ\0‚Ôâ˜ÖCÛ×áÍ,\"0ù!‡ø-/#Ÿ´ LÕQÖÁ.0L€ªá-ïfE¥±é\Zê†ÆSs½OA£ªŠâ¬2F¬Ñ\r\0:>Û£Ý¢œiRÄ°Vùé°»Ê‘¡X<	`ØP“ÒÔ»^$gˆ\0Ó‘h)î¡ƒÂKƒœR»xŽ•uL«©B\rúÈ®”TW«*Å4)#ŠÐ>–P\"2¡¨ÚÄd\0Ÿ½žXVáÐ9ë~>Yè:îçéa™jê\\\"²sRåeu”¬\ZUŠqoÅ;(k}Eïš*¦Çá\ZÁ¨ž–Ÿu @ÆJÄ2T<Éâ=ÝQ_x`µÉBæUÁÖM¡š¹À„*N_¿?‹´™d«E©×çÙÇðºüQp©~Q™c³á‡>ü{óë›Ú%l6»¨½–,ÙAï8nÏëhúX¹Y`¢ô¶¦¦JêXTJ+WÐ1¹ð©m*=gpk}IÆ#ö}–:Œùe‚¯(âGA¬¯¨ZP6èUB\0èF¡@‹)§wjÊÞ—ÖbÁ­¯ˆ•„šÝÄB:PH€%T+4T†¡+°÷¿¨ðPˆ_î²ÕDRâº€¨	RÜ[XÅ/õ-P¦“ºº€7^5¤sy6ÑD¨ƒ))¶·Cèa;>]ÈG‡Ð€M?¹\\°Òà®Jn“`ÓU-Ç×üˆŠaêj•ÆÀ\rXc2ø ×][‚•I±_Ù|gˆñïÊh†Hê”tsãØü¹‹gÎÀ]¸_Œ¶‚Y(§Ã‘Ã³FX¼¿(Ëâ \0D«×Ï×¹‘ûÆ	Eú0ÿ\0ù¾HîÎÛ*nŠd+²5êäi«ÈJ<Ôj¿¯œ!Ç·*+—Xú¬V V„r;ø	°ï÷D\\ŠX%QFp¢ˆ:¯Œ¦Zœ‘»­[²^Õ[T\"Jgëw½Z;m4ƒB £WúB1HU\'§¿Ÿ¡©Mð—«Ã{:ÔÛm¬š™”a¨t*ZÌd1n^3Þ³¶a	‰e¤¨T2\nZ†7á¦ß¤ÂÛ»JA!TÖÕ6µ–²ÃKêî|{ò|„Öò†kà‡>jüùßCJ\r4CŸÃ4ÑsªˆsãØÃæ€wþ<Xo†m«PÒJwé*dº#e„\\\0à@SeÊE¥×Õ£Bïé—¯$%z\\¦â¢¿ \Z@ÜP¡{@©4Ü—	§±3MþÊCÇú„>éyû‡Åúœ”\ZŠRƒ÷ŸÉÅÉ[î?…£Øð5þÆÒé°LÇ%¨(ˆª\rŽžôìQ„b^Ð+‘<l\"4„[ÿ\0f€?ä·îtŸ¿\0¬bcGáViþØ¶Í#¾ÆRW”An?âà2ËtÔEÑ×Á)ºH°XÎ7üL9üÍ{g±Áò|_ŽÇ2Ê*Á=7AäK·ø`ù÷àçÃnM_Ú˜Øcr\'Óõ?ŒÄæïyã°ŸaSÇ±¢·`TÚµ™Pië*¢´œoþ’¨E¥¹\0_ÈÀ¥l%{?¹AtC7d•¬F*Èd\'Ä«{/ÙCBj‹r_Ñ,ŒG\\ÚK”Àç/Ò ü&ª¢´\0ÎÅ›À;äd4[RW¯úÀÂ¼‰‹eÍ5]P‰bî ~¢R†‘}7ò7‡ýNO%[è.wúæ-¤ø2Zsþ½¤/JÚ°ƒk4Õ©k7f\'9žp¸|zü?/Å7©]è›ª†Ÿ>\rÇ¢üÏ…üƒN´¸Ã¸6¡ù~6±ä>Kø¡Ò±\"‹\"’ðíy>…Ý8º\Z­CCa¸Õ>¾Ä·j–?ÉÈ#Â:@	R-Oî!÷i£ö>$LŠ3	¼˜Î›?IŒJÁf§Çgä$·¬ü—™{	¶ÄJ\"F±tÅßX·VçŸŸQBÓ| [\0DÁ¥òüöº\n@¨Zìý@-övj¾ÉP…¬ÄT@“MNÐ‡ìÞ\Z½?À±wFº/WÛà‰ø%5ù¡Töµ˜ŸGÏ÷<Ë(Ô¤]¯„&ƒEméßñøÕ³ä{/P^|½>Äò\\h<°«Æ3…€ þ\"Va«¾%êIïë(\nÊò(ŸUÈÌ[kO2	RX)7û2É+X*9—eÀx€1EUÁaì`ª_[¨×÷þ Õ_^½9¬´	Ë™\nEUÅ@lü€Ùû8Œ¡‰=¤\nu?È.R[}ìC@¯ÅGXÛòªº¢5Y\Z‘ïÓqŸ V/¢–0\'¿øUÅÌrÄÎµ„Ûl9D}*•zù¿à„~}øBÐ·„¥Dªº$¿àðÐ4¦Ø»JP(®ÇËoã¸Òé¤—§Ãü<š*v/ôø;üYI.hÙ+w€,_ÔiWùy.:~Á‚#ûS:¡¸×>¶+_sˆµê®Qx/úÔESñô‚®SäÁû?lÞfÄÔäÛÒ?\0¢‹\r«K<€2ÍÌ‚ ¾ÀRÝÆ&Ô•ñD1Æê¢SýKÈŠþxÙdIk	¢l¨¢»?ÉÄ=eg*Š5ý,êJ£‚”«\\SP{†VŸS|ƒè!HOŸ~Ô!ùOû*ƒIgÇ¿<Íû±ù&F);‡l|n«2(E=Üz|2äÂà„yªætÄV|ÅTxÀ`¸%Õ·rõ\\Xû¥•°,:ØêËìmt½ÈÊ6†Âßíß¶«\rÐ”$‘Ï¥#¢žË9û\nª„–Yuä\r?¢5ek¡lÓìD6}KÊˆ¤Õ¿5ÃaNRÀWû!\0¿)\"1bóþbÒ•e‡GŒ*öH-(£÷\ZE\n`xÆG…Uþˆßê,?€aaÜC\'ð!ÈÅÇÃ¿ÈuÃê+Å#ŸüòJèìù×ñ“ÕK[^JÚD÷á‡päyñ_%˜|zb	ž_â´GZÃ9—í½h•Sÿ\0`W‘ç·6š÷ì°\"–Z&µ°q(ÜgY(þ‰wA•û,&¥D¥hò_ÙOj †H€X±›¼‹©=˜ëÙKoÞ0V†Q÷†”\\w«/:}\\°—0¥Ù*»)ÿ\0˜ø¢xÙ÷Ëôä[êÀ*^_c4XQìðbÙPyø%CIÿ\03-Q?¯äpžŸQùaó` †«ð>y…WüU×Ø¨¯šRp|¯\'KóøÅ­\\¤m5¯âÏ!órÿ\0Û×ì	ÏBS;Ë_0†Íú&ò¿ÈÍ€£”Ã`¥\nÏØÝOéò¢«UÃ[=—ªÒY9®à=…¹*ñj(­âP¿]\"}ñèAUÁ_D}hýgQo„TZÚD-M¿¤®®=¥…CÉ•\ràÚ^Æ¾ßì):ÿ\0„nÕˆ\n5eÔ×n½žÎÁï„W€~“ß@³­©lÌ†˜Mõ\0À?“2ÛŸ¯Y¶ü<‡Ë°EQüN!@ªêN*ˆ?~`øâsðò{üK\\„aÏÚŒpJ°ÏÞ_*‰iwjÈ–\rÇÑ`JÈû¥@®2%¢ö4Ø¶Št­P•¾ËB½nYe–_>ãÖ¾\n• Köy\0ñ­vr’ïeØÀ;š¢1ŽÀ•µÄÿÄ\0*\0\0\0\0\0\0!A 01Qaq@P‘¡`±ÁÑápÿÚ\0\0?øgÿ\0–?ƒÏø•ŒœG,é,á¿ñ;ê ÑÓŒüu~9CÏá¿ßä×/‰Ÿð\0‚Cä•·øg÷þ.HõM&Ò|ttmÿ\0ýÃÃ‹	÷¦?¿€M<8ðÁü×Õ_\0½CÐ£ŸS¦Æì9¤ëù½¦Ói´Úm©ž^j4Ãµ\\èß!¯ñ<ÿ\0(;ÿ\0ˆÙÈ´é+qºÿ\0_ßûÄn\rÿ\0š<X‚jÇò´ûáÇ8Ž1ï0JÚ+(zçGM/÷ÓŠôiü#È¢ÔªéÝŒSÒ›±Tû6–ÊcöÏ¼3¤ÿ\0d­Ö]èé_PÒ¥Ÿ“5*}‡6šÄâ¦;V xJ¨/ÄÆ´1ÐÏxxyøïòm¾ÜÒßÿ\0Ã!jo<gýKï2{Ñð	í¦ý…¶;w`lÌH3›àº]o¥š:ãLLkàùxäºz•-1ÖÝ³dëöòëµ§–—}Pí\0eÆ»8\"zb³)€_r¢Ý«\\4£z\"Ìo ¼7Ñ1¦x1Öê:?€|\"Ì2ÈÔ¾ÌIýŒÁ¡J‰=qgD”j]ó\Zì]êV€îPLxÌz?úÄÄ£þõÌé	íÔ­kLExsÚV˜ÞÉèT*{„e|ZIüÔ{M©…¾aãUŽñ‰Ù:hGôhãYrØùk,Ž¬¨ºq2yfIä*ñ*3õ‰Þy=1:tkh®Íí*~˜hêÆzâÎ‡4ËÈxSmrmž²Ó$Í÷œÅ­ Ðõ£¤[ÜopG‚cnt\"=ªW©®C]ãï¤%h²™þÃæ/¢Å±lrgr\rÏgw§Hí–b9ÍKìÇþi×Lvà¯fehxtþþ±™Ó¦ì<ÁÖè	oÜð¥·Ôj1ß¼uýÜ·@ÿ\0*}Áâ£:æå»V†zãŽô¼âT¿5b—M‡[™zÊ¦ T/.³<|íwï¨‡xwÌf8ÞàÎ­s:Ìt‹ÜI·D¤è¬Ä®ÎŠF·1­‘%lgx´–ÊnE6ÄsÖtÃf Î™…1,uã¿ÜBÖ<-¿gÓ¹éÚq­ÛK” ].té	n+áÏ¡Î¶ˆÁêÞ£gˆŸ©î2÷–õ¢Ô2îFÎá(•ßÌ3¼3ä»TÏZ–ùfeJ§ÝÊ-xòjÃPJúoD¸ÞRê\\,ã2ý±ý“§FÇE^Tg^áÅþõ­ù‡5`ù•(ô»ë½\n¸ý õÖ9íÒß®Žz-õŠ½r·\\Ï&Pô<@˜éä—\0Ÿ¬³©.aÑÑ¿Ó/€ÓÖn¸Ê±a›‰€%\"\'J`V™b_1R!¢¼0®èÃ‚â¿\\g÷˜L›³(…z±¢~å;[ ìë1*å¢3ÿ\0Rz¸WUŠRÆûºtèbdÞñ(ð@ÑÔîœu\r1Œ^È#—q]\ZnJ!sÓÄ(‰?²†Òí»ŒËÓ Ó<.¾ùU!¾ø^ˆ–íDýØéo\\Ó^H/«Ò):”uˆE”Û_žÈz…ìpcÜ³aGD^°«Žáž3ÊdÑ¨Åº?gsCê1‹\r*_*õyN±®ŒÃ¤C… •‰*Q:ø‚·Ò©Â„C§D}Dä¸®ÓÙ«—/@å©À¤Zø7xŽ>’´o¶‡Á$Að±½-I÷ÒtÞâ;Y ÁûcÓ¼=1èï\Zë?¬þ¢wŸÊåÓK7­\ZŸ<éo¦xÎ¹åygiÓD™ìO¢ï¦íOÛ<³\ZÍF7n™•Ä¬NYÝm8Ç=Žg®ðbø>çýÌ´èB·s+÷?¦YCÐ–ïwÅ^bY:w˜ûƒ+ÍË#Ë¦„’[Öþt³©¡<=xž:#Éô|¢Æ >’cà#UÏZ/pÓ¤ÎÛ2à†ã˜x0&^Ž˜9:x\ZáÓ¸é˜±ß›/ù¨hJóG\r<ÏõÎNí^„¡ÁåÎ»=b{eÕ[-ª´]œ§“ˆ¶Q¨ªåßŽ{?Ï€˜Ä¯ª4öèE˜?Ps‡A³‡44sŒÀå{—šxÙañììélk ßSWÍÏlGgE¹+Ì¥™Žz}F·ƒÇ·,‡1>Çª<T|!YîNæ—âyEÍ›Ï©k\'(c¡¡=ÿ\0äxEüÅðšgLú•Îé¦^¸#fÑšÓÌa|ÅE\rN6ÝhÊ1³¬?k	3ûóÂ‘ƒàÄ/~;€y/€¹žÖšç–yÑ}ê<fTÇ©pøëÀ\r<&Ü¶?øE¢;±/Ë_üJìp–p´úÒ¹ÅÊ®Ñ!åÓîd–»Câ¾®ÁŠÈ§]`{j{$³…­K™|Ëwãš<O­^`=ôÂÙµyc™ø—¾q¶‰]´®‡œšÁ:šQ1ÞaÍÄõ¯ô”@ž×cã+Â¾xFÍÆ[}¡ÅÀûà¦_óÉ\'!àÏ*¼Æ®>ÎžÇOQñÿ\0^ ÷÷Ø¨Æ\\«ï ðpÈ»è-Ð;²þµ+ŽõÄËáÓ×1ŒB öT £ÏËþ®GÚ¢¸Ú˜:±i¾ÚáŽÑ{®£²©—ºrhÆ•ËR0ó3ÔÃ~Ö/ˆy¿ï’ý‚_è|¨Öhúe›8Ð#[¼µL;ÅtòËÝäQÁïÎêy\\Ï®­Ë^¨¤áKCíòc¾£íqbêÀ­˜÷+ÍïÌ²®wùÎÁ<À‹Y:ÊØÞðCxµ.^nü¥ñž÷å‹ CÂé¯9—ÃƒpÖýœôDîE\rºÃ÷.:†Dž»ô<ÇC³Ê¹^*˜q\\tÏ9à%=IZcëGœã$š\"©“~ðp&ˆ9Ÿz<àéŸg·g‹†Û\ZD—ß¥|êŒµ“‡0ÏÀ÷š„§Îeg×‰\\g&¤¶õpöO£œñÞìæ[Ç+¶NQ7é×àˆDvuß‹×øi÷.æWêS¡}šà³‘g\n’Íê\Z[yâuëÖ£Â’8]r:<+†>È=Ö­f÷›éäÎ\Zl¸\0ùg²¡†´ña_n™“1ö…öÎs6¢÷æ-£þ@ï\\úð+Dšÿ\0G…4až[ w—\'ƒu[½+º<Æ=Kg“6\"ÍWýó™t£¯À|Ó×%€Á¶žõQÕEÝã®xÃ¼xIÎ€ôéLÁ’4+’GOhÊTeã¶#›L+ûÌ9å1Õ©UÑÆˆïQæ¿M<ô¿\rÎÄ~5CªiF´JI|ö\'Ýâ¹d+™A¶B0	Ï·n[Ó£·Âvœöz‡–ÞwG”û.Xÿ\0Xƒ›ÄýªF<Ø÷—Î¾>Ï®Àsúal—|ºóçÊÅtÂAvÞ9<éÜs?âéUÈ¼úàx\nžÁÖ±ÌF4Œ‘lG–k_R<¬p</,Ñ~´kÔ9ËØó\rƒ\ZŠñþÏ›4ÆÒÛ­Ôë¥¹«ø·Î¢_€5ösÔi·^\n‡s–K•€8¿®XDÿ\0‰èðOo¾ß· êQÊâÀˆ~ãÊ÷è—Øñ\nž>Á˜;¡ÛT®°j-ZžWÑ¯\\CõÁ÷s?KöòÈ¾ÿ\0Pq/Ï2u¦ px˜9˜N·¥S¦vË\nßSûÃž{ÍÅÿ\0qÝ¹µéÁƒ‚É­=Òñ{ø9å=„¯úxGèÓ°Û×à‡©¯ð5xöð5XrhÛÜWAŠ‡Ž±¾†bÊï×hsCñÓCJìF£z^µÁýM?°ñÉN/³Ž]\Z$¡Þåx«ë:`\Z4‡{§x¿ˆc¾¹— Ï|N¿}¥Î;,Në˜wóyw™ü;+ï€F<Ê7ÓÜ#È4Ç²ë³\'ˆ?xžÒ¯û>Ðý^\'®µSù»ølð®™tÎ„Ä­-ïâ+ÒªvI`bè×9ýr(ÔôXØÜYÿ\0Êãîw`Äô\\Ã¡ãKwü7¬ðtƒ©\rí˜‹Ý³E°³©=Ûb]iRøë€ã²¶”¶Í}DÕ@|#ˆ©oNøÚ˜Çáƒ[¬«¿ïâPÄcË:Jí (8.£­òÐƒ@`’æ.`á0tÞâ½cªî\"uÿ\0<¯Â2Ìx”r¨2 ÃãhÁóÎ2b0rÍU]bÜY1³FýàþúºÂTüu=ê}Ü§:ßâHüq£Ã=3?±ü¿ÇâÞÃS°ãü’üP~0üxóÏÅ!ó¯áÿ\0|’þ<üðä?ågðóð\"vâ|_ÿÙ','2020-08-08',NULL,NULL);
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
-- Table structure for table `responsable`
--

DROP TABLE IF EXISTS `responsable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsable` (
  `id_responsable` int(11) NOT NULL AUTO_INCREMENT,
  `id_employe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_responsable`),
  KEY `fk_respo` (`id_employe`),
  CONSTRAINT `fk_respo` FOREIGN KEY (`id_employe`) REFERENCES `employe` (`idEmploye`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsable`
--

LOCK TABLES `responsable` WRITE;
/*!40000 ALTER TABLE `responsable` DISABLE KEYS */;
INSERT INTO `responsable` VALUES (1,31);
/*!40000 ALTER TABLE `responsable` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'hakim',' 62, rue Taha Houcine -ex Galilee, Grand Casablanca','elhaiba120@gmail.com','0613468734',1,'2023-01-09 15:42:45','2023-01-09 15:42:55','192.63.4.15','SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c'),(2,'FDFD','fdfd','fdfdfdf','4444444',NULL,'2023-01-25 17:17:03','2023-01-25 17:17:03',NULL,NULL),(3,'FDFD','fdfd','fdfdfdf','4444444',NULL,'2023-01-25 17:17:59','2023-01-25 17:17:59',NULL,NULL),(5,'GHHGH','gfgf','gfgfgf','54545',NULL,'2023-01-25 17:27:01','2023-01-25 17:27:01',NULL,NULL),(6,'JJJJJJJJJJJJJJJH','FDFFFF','FDFDF','54545',NULL,'2023-01-25 17:29:28','2023-01-25 17:29:28',NULL,NULL),(7,'GHGHG','fdfdf','fdfdf','66666',NULL,'2023-01-25 17:33:19','2023-01-25 17:33:19',NULL,NULL),(8,'DFDD','fdfd','fdfd','44444444',NULL,'2023-01-25 17:35:00','2023-01-25 17:35:00',NULL,NULL),(12,'FFF','fffffff','ffffff','1111111',NULL,'2023-01-25 17:50:28','2023-01-25 17:50:28',NULL,NULL),(13,'FFF','fffff','ffffff','2222',NULL,'2023-01-25 17:52:42','2023-01-25 17:52:42',NULL,NULL),(14,'ddd','dd','dd','2222',NULL,'2023-01-25 17:57:06','2023-01-25 17:57:06',NULL,NULL),(15,'ddd','dd','dd','2222',NULL,'2023-01-25 18:00:13','2023-01-25 18:00:13',NULL,NULL),(16,'dddbbb','dd','bbbb','2222',NULL,'2023-01-25 18:01:01','2023-01-25 18:01:01',NULL,NULL),(17,'xxxxxxxx','xxxxx','dddd','111111111',NULL,'2023-01-25 18:13:54','2023-01-25 18:13:54',NULL,NULL),(18,'CCCCCCC','xxxv','ccccccccccv','11111',NULL,'2023-01-25 18:17:42','2023-01-25 18:17:42',NULL,NULL),(19,'DDD','ddddd','dddd','2222',NULL,'2023-01-25 18:23:00','2023-01-25 18:23:00',NULL,NULL),(20,'DDDDDD','hakim_adresse','hakim@gmail.com','0',NULL,'2023-01-26 13:10:09','2023-01-26 13:10:09',NULL,NULL);
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

-- Dump completed on 2023-01-26 13:15:25
