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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe`
--

LOCK TABLES `employe` WRITE;
/*!40000 ALTER TABLE `employe` DISABLE KEYS */;
INSERT INTO `employe` VALUES (4,'tgfgf','gfgf','gfgf','2023-01-12',5),(5,'tgfgf','gfgf','gfgf','2023-01-12',5),(6,'FORTESTE','FFFFFFFFFFF','XXXXXXXXXXXXX','2023-01-10',6),(7,'FORTESTE','FFFFFFFFFFF','XXXXXXXXXXXXX','2023-01-10',6),(8,'fdfdf','dfdfd','fdfdf','2023-01-12',7),(9,'fdfdf','dfdfd','fdfdf','2023-01-12',7),(10,'fdfdf','fdfd','fddfd','2023-01-11',8),(11,'fdfdf','fdfd','fddfd','2023-01-11',8),(15,'fffff','ffffff','ffffff','2023-01-13',12),(16,'fffff','ffffff','ffffff','2023-01-13',12),(17,'fffff','ffff','fffff','2023-01-05',13),(18,'fffff','ffff','fffff','2023-01-05',13),(19,'ddd','ddddd','dddd','2023-01-12',14),(20,'ddd','ddddd','dddd','2023-01-12',14),(21,'ddd','ddddd','dddd','2023-01-12',15),(22,'ddd','ddddd','dddd','2023-01-12',15),(23,'bbb','bbbb','bbbb','2023-01-12',16),(24,'bbb','bbbb','bbbb','2023-01-12',16),(25,'xxxxx','xxxx','xxxxx','2023-01-14',17),(26,'xxxxx','xxxx','xxxxx','2023-01-14',17),(27,'xxxv','vvvvvvvvv','vvvvvv','2023-01-11',18),(28,'xxxv','vvvvvvvvv','vvvvvv','2023-01-11',18),(29,'dddddd','ddd','ddd','2023-01-18',19),(30,'dddddd','ddd','ddd','2023-01-18',19),(31,'hakim','hakim_prenom','hakim_profession','2023-01-14',20),(32,'teste1','ggg','ggg','2023-02-09',21);
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
  `fichierblob` longblob DEFAULT NULL,
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
-- Table structure for table `gestionnaire`
--

DROP TABLE IF EXISTS `gestionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestionnaire` (
  `id_gestionnaire` int(11) NOT NULL AUTO_INCREMENT,
  `id_employe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_gestionnaire`),
  KEY `fk_respo` (`id_employe`),
  CONSTRAINT `fk_gestionnaire` FOREIGN KEY (`id_employe`) REFERENCES `employe` (`idEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestionnaire`
--

LOCK TABLES `gestionnaire` WRITE;
/*!40000 ALTER TABLE `gestionnaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestionnaire` ENABLE KEYS */;
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
  `Object_msg` varchar(500) NOT NULL,
  `contenu_message` varchar(500) NOT NULL,
  `id_Organisme` int(11) DEFAULT NULL,
  `idEmploye_emetteur` int(11) DEFAULT NULL,
  `idEmploye_recepteur` int(11) NOT NULL,
  PRIMARY KEY (`idMessage`),
  KEY `idEmploye` (`idEmploye_emetteur`),
  KEY `id_Organisme` (`id_Organisme`),
  KEY `fk_idemploye` (`idEmploye_recepteur`),
  CONSTRAINT `fk_idemploye` FOREIGN KEY (`idEmploye_recepteur`) REFERENCES `employe` (`idEmploye`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`idEmploye_emetteur`) REFERENCES `employe` (`idEmploye`),
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
INSERT INTO `organisme` VALUES (12,'ABC123','Organisme 1','1 Main Street','1234567890','info@organisme1.com','Nonprofit','Active','John Doe',NULL,'2021-01-01',NULL,NULL),(13,'DEF456','Organisme 2','2 Main Street','0987654321','info@organisme2.com','Nonprofit','Active','Jane Doe',NULL,'2021-02-01',NULL,NULL),(14,'ORG001','Organisme 1','Adresse 1','0000000','Organisme1@mail.com','Organisme de soutien','Actif','John Doe',NULL,'2019-01-01',NULL,NULL),(15,'ORG002','Organisme 2','Adresse 2','1111111','Organisme2@mail.com','Organisme de soutien','Actif','Jane Doe',NULL,'2019-02-02',NULL,NULL),(16,'ORG003','Organisme 3','Adresse 3','2222222','Organisme3@mail.com','Organisme de soutien','Actif','Joe Smith',NULL,'2019-03-03',NULL,NULL),(17,'ORG004','Organisme 4','Adresse 4','3333333','Organisme4@mail.com','Organisme de soutien','Actif','Mary Smith',NULL,'2019-04-04',NULL,NULL),(18,'ORG005','Organisme 5','Adresse 5','4444444','Organisme5@mail.com','Organisme de soutien','Actif','John Brown',NULL,'2019-05-05',NULL,NULL),(19,'ORG006','Organisme 6','Adresse 6','5555555','Organisme6@mail.com','Organisme de soutien','Actif','Jane Brown',NULL,'2019-06-06',NULL,NULL),(20,'ORG007','Organisme 7','Adresse 7','6666666','Organisme7@mail.com','Organisme de soutien','Actif','Joe Miller',NULL,'2019-07-07',NULL,NULL),(21,'ORG008','Organisme 8','Adresse 8','7777777','Organisme8@mail.com','Organisme de soutien','Actif','Mary Miller',NULL,'2019-08-08',NULL,NULL),(22,'ORG009','Organisme 9','Adresse 9','8888888','Organisme9@mail.com','Organisme de soutien','Actif','John Wilson',NULL,'2019-09-09',NULL,NULL),(23,'ORG010','Organisme 10','Adresse 10','9999999','Organisme10@mail.com','Organisme de soutien','Actif','Jane Wilson',NULL,'2019-10-10',NULL,NULL),(24,'ORG011','Organisme 11','Adresse 11','0000000','Organisme11@mail.com','Organisme de soutien','Actif','Joe Taylor',NULL,'2019-11-11',NULL,NULL),(25,'ORG012','Organisme 12','Adresse 12','1111111','Organisme12@mail.com','Organisme de soutien','Actif','Mary Taylor',NULL,'2019-12-12',NULL,NULL),(26,'ORG013','Organisme 13','Adresse 13','2222222','Organisme13@mail.com','Organisme de soutien','Actif','John Jackson',NULL,'2020-01-01',NULL,NULL),(27,'ORG014','Organisme 14','Adresse 14','3333333','Organisme14@mail.com','Organisme de soutien','Actif','Jane Jackson',NULL,'2020-02-02',NULL,NULL),(28,'ORG015','Organisme 15','Adresse 15','4444444','Organisme15@mail.com','Organisme de soutien','Actif','Joe Johnson',NULL,'2020-03-03',NULL,NULL),(29,'ORG016','Organisme 16','Adresse 16','5555555','Organisme16@mail.com','Organisme de soutien','Actif','Mary Johnson',NULL,'2020-04-04',NULL,NULL),(30,'ORG017','Organisme 17','Adresse 17','6666666','Organisme17@mail.com','Organisme de soutien','Actif','John Lewis',NULL,'2020-05-05',NULL,NULL),(31,'ORG018','Organisme 18','Adresse 18','7777777','Organisme18@mail.com','Organisme de soutien','Actif','Jane Lewis',NULL,'2020-06-06',NULL,NULL),(32,'ORG019','Organisme 19','Adresse 19','8888888','Organisme19@mail.com','Organisme de soutien','Actif','Joe Thompson',NULL,'2020-07-07',NULL,NULL),(33,'ORG020','Organisme 20','Adresse 20','9999999','Organisme20@mail.com','Organisme de soutien','Actif','Mary Thompson',NULL,'2020-08-08',NULL,NULL),(36,'ORG021','Organisme 21','Adresse 21','9999999','Organisme21@mail.com','Organisme de soutien','Association à but non lucratif','Mary Thompson','����\0JFIF\0\0\0\0\0\0��\0C\0\n\n	\n\r\r\"\Z)$+*($\'\'-2@7-0=0\'\'8L9=CEHIH+6OUNFT@GHE��\0C\r\r!!E.\'.EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE��\0��\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�)Y �V�SЦ�KR�i��\Zƃ�mW���$�	�P��b耳�(Hqޤ�S@��G\"�ӱ|g��pt� �`��%)*�H#X�j6�U�e�5��\n���\'8g	r���le��ԧR��-Z�X�Mb�8�,Rh��A���5tk�k 0�J�=(\n\r��ezY����o�bh��U����	�\0�!X�y���iz�낿�#�h�\Z��D�Yv�Q�\"��T�#�CF�낔�D�GPN��O*IV�{�V�B�^�T�P�ă�n��*�F�5\r0D@����P�W(�)�/\r~���DՕ+S+�����2=	Je!\\	lB�2�Czx.�%�S�g��GH�$vt���y�r�/ց�ܳJ���,�De�$D���#&�͉Na\0V-\n&���Z�����mkަbS���n�3c�FcA�@}̒[c4�@v�t�ds��6zk d�Z�\r+L��c�Y�$qQ�i��l��L��֢]�TJ`ֶF�&��T�9�����ܬh�\"��j�t��\"B2��Ӑb�M�V�1`b��\"1 ��X�.\0��`6b$��L��!L��3��J93�#J����Is�R�R�0~�z�8[�����$�h�n�1y$�ۮc����4�N��\0�=��>��K��g�P�g=>����6�N�n/��#0�X�\'�G���H���I��)9y�+D\n�h4R6vZD����,I�!$�bF�a�\"�\Z��Y��ZU^S�G��z-�3����D�\ZTՅ��^+���z\n3,n@(�(�$j��<�:~��޹��0m�}�_��\0��9�w��Je��R���vǴ��e���#<b��W\Zjt!�\njeY��\rb�5$I�%)��\n$\"A���N���\'$I�Y��K�0)�i��|���*��8i\0 �2��u�l�-b�eֲ7�N^���G:�г��l@��xH��yǢ��Ѽ�y�G�O��?�,H|]�y�[�^Ȣ�.��m�о�a`�XB����� �͉HfZ\r�$�8f8lxeK�\nD� H,�A�Dh���*JvW�ٮc�R����\0�����&�D����bV�a*V�Bj�Q�� ӌ�}K�}f�3�\Z3D]�;�i�j2HI!$ä��M�\\�<(Ɂ5B%�D%6�Ҙ��p�Q���r����V��EX��\r2-)2I�@��N2hP!*�;��@ԞVi�$D�9Ukխ�!���Z3H����F�z���I!$�K��6:��oRI	$$�t�C_#(����\r���	b,�ZWⱢb�\Z`�P�J+�!;Ă�K#fQ���0�#�M�ǜfB\n0fxT�\"�waԐ(��2Ag��f�N��&�\"��*x�Y�sY;X\rz֎f��I	Vv�Xa!$��L;<LJN,�<����X�>5t¦�dϻ�ZR�elaW��|����w��e��\Z*����h�J�憵Z��Q�(FK	�H<H�E`a�;iD�4�D��ځ�krG�����,�MJ�������\'k����@+eD�vq$���Έ�oy�1�XY�<�ۥ\n�BP3���.�)�*R�����r�j6ld���e�c�zS�GI\n� 3!ʕ�iF� ��!$�J$�&��%\n	�)�K>ivT���[fj@e	����y�K,5��	�W�g�cw�ڭ���$��C(ħ�=?y�Ue�ѠDf_Ε5��\Z�K��-I��$	*� �:�x��1g��l�FΎPN�w��zQ|�N^��SE��,Cb�i�(�ҧ��SR2�Oa�<fB�z��T�70=:d4�z�8�B�	�T�����<�^��x>�ת��%��_�ݫ\0�V`\r���=���\"� �|����pT��׵�cV[6������\'J�*^*�L��P.�!`rP.�#��=2��^]9z£��J���W�	4D6�r�r����Z�qY\"�E�\0�_^�*�A�c\Z㊛m�v\\�|�_c�K�u�\\�k�.	������^j��.�j����5{�}��ʚ�wȵ\n �#0�pe^&~�;r�F��J�a�[�1ֵ�Y���3�Q��!�E�n���n�]z�_y#K0$���B2r���#R�Z��Vgm¹jbp$e]5\'�s��v��b���F�&�a`���·��ȉՊ�Fȶ%Ƚ��rG����ktW1�ʙ�����#��α&\"��ʜ�����6\\�U{`\\z6�s���H��V���V�\"d�b�A�ءf�K��<�S�f#d%(���BȎ<�/H�$]&l6u�!	+�ID��YJ����M-�A�0��l�і^��:�l��^���s{�5���eU�󆮧���=<�/v�_{8.s���s�ns��NJD�����5HS<m����<��ku*Ū�g98ȷF�\"N�\n��(���k%��j��rB��RQ!(�0hM��ɵ(���ϭ*k��5ES�1$Fx��꒼,L�H��r��V2�j\'*g/K���9�? ��k���Gg�٥�b��q�tT����c�En��B���A$����\0m�>IW��5�X77Hbr�%K6���8�;�CH��X�`G���!f��\" JFp!r��!S���(f9�@�mYq90\Z[�@�k\\�V��;Դo,�i�T�������r�a�J�@�w��s��o������wͣ������|[}��65�Ӝ�Gde\n�\Z8.ϛc�=�\0矡�$���Ω�ts���Ȳ��x�G�a\'�^������ɧ�+\0�^џ$�0�0\'j�\'L>N}�|��x�QRc*�4�y�OB���y��nUSYU�\n�^�\0���N�g�����짚�K���H���q��ўu�_?wG��T�Nz����\rk�I�=^��^����M$3�$ԋ�8jǤ�Fvq3���p~�j�3��,W��)��\\ο�4�-l~��X \"C�H��0ؑ4�jɜ�*3y�\nǰu$��%ʯafm�B�+�f<�c.Og�f�c���<���_�g��ó��y�,�جyfm�fh��Em�!$��9��������I����3�$�����N�$q��/�\0mP�eQ��,��(ND�r�m�C21D�1�8��iA�q��(��N5�*ۅ{*@�\"�\Z\'���2����{�v��RHI@.)M~�8��&t$�>_���!��`�g�Y=�Oɺc�Um	$$�Ji�oK�/|���I!%���a�C;#��y�t�[���x04�5�̮�%D�Z>�qn`� �����⤝���B��Vg6��Gn�����V�rY�0����L��/J�N��HI�A2<�g�3Ihy���gBI�+��)����֮\'K�y�g�̞���]���$�ͨ%���U#�+����KL$��8�;Ns�$75=3���󘧧�A�Rӌ��U�H0���g��Z�m�\Z�ʋQ�;8�P�\n��u�]K2��[K4��C}!�wY��z���ܙę�Άt�20�<\\t�%)9�5�~c`�ܟ@xO��1�����Nt�nÇʿ�N�~̥������<)�$�\\�[�e��,A��/6����!=�����B�L�V\r��A�bX=�4\'%�ѳ\Z\0%r)�ri�jbet*���7R6��1��p�z7�{O���~g�$$������҉$��BHF7��7FB�-�UGl�ٝ��<�\0�8C*�b�ྤYֹ�[��/��O�O��)Fg��O�=Y�q]/(v��4:��I2��y��a�iC4����<�`�DJ�=��,�v�T��5�ԽX�4����e�.TQ_�Z���ر��=*�4��-��<��<[�GI	$dG_�;�	4�������s��B�v���}6�`]e�t�]0ݷx������[2sT+�FI�gg#�z�\Z>0u���vc�V;#�)z�O0]�}��>�w�2`�R��v�)BE�g	��U��/[0��5p1�p�<�Z�K4�t�{j�#7��\r���<�|��:4���7��\'kd�IRUNCS��#;F��2q3����,����&�^�Nk�w�>zyw��C�|���མ��BL��&\"��:^�ĝ5���t8��K��G�����x/?�Ω\09 2���VRba��+�>e|�\n��M~���3t��օ`b�E9�NṌ��j��Z��y��~g�80u�j{\nHgg-��+i���:BRym�ý�Ǣu�2��Z�\n\ZL��\'�9���O�||�������\Zq�Q,����e$3���$�J�8(�؟3w\'��B���V��R�\0_ӏ����T�lc���Eh�gХ��2����CS7$e�/\Z�0,�JV��σrk���\0�٩fi���U\0�#�h{����:<���0��+z��s>��f�k��m�o	����O\\㽄��&q��~��g��Ͼ��9���e�\0�~n�LL�\'H����I��d;�OQ�%�7^x7U�^>u����?�\'粩��J2 Ș:5�9�U�Q�]�eֹJ�Th�`��l�fY�=K��Z�w����#���̽7�(v�S꣼9��8���;�p��&v8�����W6{<��=;���~�jg��ϟzK���*��{��A$�|���\0��?ӟ.�Ǹ4$I$E�	$3�&t(ɏ3�,sG��v��_���O؏��o=-�$jW(�hV�sɶ6s�t�B�JǤ�.A�]�����*����cJkɽ*�޺BIe�K�^a�gk��J��#��dc:;�q�9�s��s�����V^uޙ\Z��\">�Ĩ���{��5I!x߲rG��S;Oi���=ٳtI$��HggLG��yA��S�,dls��./��M��!I,F�:�W���͉\'��8�z��㱷�f������������f���C����7�,C���p\'I�v����$$���t�����F��>x�\"�\nD�ʝ#3�}o�1���;����~|���ߧ*I\nG�4��\0����~�}\0�gd:HI!&C���9S��O3��#�}nW��|�^��KN�V�1\Z@�9t1&yI*�M^����p~�(�]|��0�������y��9.�˃$&�$�$&v$7�r�9�`�e{2���Bga�D|��xR<�UH�nei�>}���^2HL���������f��\\�hw��R��$:HL�\Z����8A�|�@Y���\0�1�I�-*�T@�\n,��%b���,�|WOgG�>�SC��<��v}�<�K��͜�vv#1�IRHL�I!�D|�.d�5�Ē\'H��p]Ww0�l�_<�	���(�I!$���ǌr?Ig>7Oˏ���=w��}|׵�]�np��C<&&v3��\0��o|��nÑ@lb�*�5vi�RAD`�y�ئ\\�����bsk��oi����I�tO	����BI	����\0.�7h�|w蟟���2Hd��\">m�^^z�NF3d����+�4�HI!3�H��c絡�6�	\'�fx���͠�\n�hgHL�(����H��aXiռR ����+%0�0K��%��>A���>�����>���п�}�i!��I0�!��˘�#J֙���o���m~{���#(�Q�\r垧��;8�E��=�$$�$��a�BIχ}+�\0�4�$!^�����R�m�ԍYy���q;5��<f��~�����8H�2Z3�bP�7Y���WV�fC��}Z\\��]i���(>����!�!3���9�9��d���p|_%\Z&�V�BI	$&v�}K��Uvq$�?)�/4=�$3��$$�t��a�x��x�b؊�F�����,/��T9�f�>d��\"��\n*�R����\nh���Ǡ�c��U�e�*%8�W��|�������B_��=���9�3u�L:HI���{������Ϋ�\r҅�F���7��zHI!$�t��W��)�r�Mo��Nw����ؙ�N�ΐ��t��ВCyo�Q>l�N��\"�Vtr�J�6���t�B,A���:7)�\0Q�6�����!D�\r&�S�����wGX�C��N[��:��2:L\'�Q���|I�y�o��n��4\n�mԹZ����$��C;8�g�~Rw�\0~�?�$q|�Y˞��ä�vq$��HI!�s��J���iVa�p!hUb$�b1��ߣd%%!Ԛ\"��=)�>��4b�,II�\r�u�cյ�Oڹu�7�d���FL�z^fzw�y�Mk�.�\n�	�0ؠw_���3̽;\0���7��$$�BcyW��A�	!$�#s�v$3��$$�$��a��U�x\'�4��Z�d��܍���rw��JQ��bD�ڮ51G��B���̡Q�Hd��g��|�>�JC��3t�r����\0҅9�����g�[�;ls��1��*��9#$�ITd����r�HL���>U�Z���H�)ܤzc&$���vq&q$��/��og�zcG�f�\"�j�(f�4,b�7�g���<��u��蘄<h�����=�~�XOcyԁr��f��\0,�2�Hlk��X9[����w���#��ssY�*��Bدޝ��D]:$�]$pv�4=q$4e���徣�����8\n�����	&$$�3�&z������Z���Ml>�I��ݥם0�ת�ӊ�trdNg;cT�Ϗ���lFD��f^�q�5&��5s,�3I\0卣��y$f�Ԝ��T�|�̺�=c�_;{YӤ�vq$���`�C�ޥ�3�$��U���BI5}��Bga�BQ��B���)������2tr<�y^��-W�veEh0X��ͣEZ��M#N��	R�e8�*�y��	&�5�I	��Da6�Y�r�FpW�:�N=y�\0�\'�:�3��;8��&v��s�w��oY;��=kɏB��h�,`o��7G�����ä�I!�Ca]�8^�l:HI!�N��\Z�Oא��.�,ֱZE(=�NG��+�cY�n�����@���D�kl� �V+�اC\'`�0v4�j���������3�@��oTP,$����ó����ǽ`��ä��S�Ա�P�F��`zӳ��M$�a�G�p�yq�	$$�� �{���{`d	ŧ+ج� �l�\Zg=S�^�^c�&{�h��Q���[�4� H��Ɖ�0RW(�������t�IM$���T�$�$��G����FI�I\r�~�姩���!�^�ㇱ�8�8$�J�BI�/e⧹������f�Y�ֳ�8_�8�n8݅1�9#\Z��d�V%A��3��\07\0\0\0!1 \"2A#0B35Q$4C%&6Ra@D��\0\0�P� �ǖv�SQ*!��c��Zs�Ɉe�c`nX�m�}�.sQ��_&��l�����R�a��.��W t�\0�E?\n�k�$-ޛ�\0�j�����I����W�tz�ć��.���zm�\\䷼(E�5t\Z��1/�$������e���w\r��-׬K��Hy�\0G-�\'�H�����n_�S��\n7φ���fb��%��bZǺ�zS�K���.QX��|�W(펙�u���(\'�*����6KPtja�p9��m�Q����ěm��8��Ͷ���=\n�d�~�0���>�Qz��Ɖ����@b���1��R�\0N��L`�E�fe��iF8�+�]΀�(Ԟ��p_;�Q!SKZFS\Z��ɔ{T)<��f�0��)�2���)���4����\\�6�3�-�1O�R_}c�h��C�0��^�;k�+RwԚ�J�c�V2��S�|T��W�\0Z�Y8䓓�	��uc@{�?6��fG\n���OP`*y`�3�&�IzQ�ܯcH3��� ��L�r���/�Ao�QM�jϹ�Ob�AN�bj��e�z���ѫ=�b��r\\��a_rNN+e�����\Z���t�����8��k����?Xxe�Ӗ��1���zͤ]w)=���\"�s�	�A��L&&\'{��Y(D��iW�1�q�ʊ�S��Q�Bݩ���gaף���R��P��8\0ԃ�F�9*;R�&Q�Ҁ����=�d�zaIc�R�`0��sV��`R��HOi$\Z��T4{�G �6 {	�j�I,���̦��9 %�Z%���HBZ�g=\r0�O�)GC_��Æ��!�3�)o�T�E���;�;���m=��v9Xp�~��O��O�K4Xy�W��X+��i~IC�@X����\"P�\0Oޗ=h� u4�� ��݊�j����/Y)��$�e\0˙�I�\0.6�J=�Nz�N��=�I�	%�����\r�J�|�T`�C-/�]9b���ҥ��2��mI�\0g��$�vF�±Tm�7Yq\Z$��\ZDI^�_D�\\Q�%mEu�(e\\.G�F��P�Gb�ޕq0�${->}Q�\r�p.<\rIuX�4��b��a�7�/�đ�\Zd�qڇ���q�R�+�i�:�b��`I���	M7q_��밪��Ρ鹻8��g~�4zӌ5F����qJ30�`�0�\0E�}YjV�IMQ��ϲ�<�#(ag�bi;SI�\0� ��T�Z)�D�[�T��e�ղ�yd�L��\r(鐸�)i9̸����r�\'Rd�Ά��M�\r\Zӝ6�꒙Q.�Y�~\\6�Bw3R���!e�\\J���]������U����z�;�c��O������M������Q��3o���H�X�H�z�uZ�828���{�&��u��r;���ct�;�qXf*��2☍�� ��:D��W�\"��RC��Nv�V/H/K��+��\"�S��;wJjx���;#�!=�>�E��A�)�7�m���C����W��]�b>B�$�\n��L�u|��°F�m�Op)�:��>�59��#1@�龇l��齿�E�\\�܋@�M��f��!ڵ\'V�=��>����L�\n��:��P��q�]���1IЃ%��\0d��\0#�ʌy��F�]��#�����sNf�>H�D{V���\\Bņ6�v��C��52�nMb���z��Lv�}�նLPW�j�>+ߑQoM�-D�����rq�ZE�Y~d���\0����b�݉���=�M�\"�Z�\04�]2�;h�;�M�s `�\n?]�5��+��1G����F���C����t\"��8�M��_�3t�%~�U�5DH��2懷4:R��U�Lv�+TK�@��a�R��G��h��3���~f@q\'-W����\0��JR\Z���Y��R�1lP�զn���t�����Gm���C�q3������yQ�bZV<b�]Ռ���ꪖQ��x�Y����f����Z@���J�Y�|nd�����{(��Q�@nv8�5�$��R��T\0��_��;�v	��V=���Y:�Λ���,�\'���_��NB�К�EJr⿃2g,Pe�1܊=�/Ic�M�5/W����i�B����-ޱҺ�����AzV���\rF7�͓��JS�ܙL�o6(�9�a���Q�Mc�Q�L|v�:�W\"��DQ���ո�;)L#���W���n�/��J�E�EA�xN��ٯ.伸ys�Wd�ZjS�t�#��Bxj	�����OsG�\0����j,s�{�u1��1� ��66W҃ڜ{��A �+ڈn�Z�.Te�v�C����1(?���t�$V=�b�)9��T�ԡؚ_�/eP2泗~U\Z�ԟ6���w��@{M6v�^ƻ����?��Wq���������;.��d�tWM�cjs���n�\0�)FX��jA�\0.��W�D���a�ĺ��B-�SB�+�	a85e)��94ێu�xq-�#K��۰�_h�e0ʯ�_��V��PQm��ӱ�+�\n=����\n&��H�e��j$\rtjO��Q�7��h�Wy\0=��XөS��p�G�|�書�;�tz�Խ��T�T�8��_u\n��1�N�ú�tZ_�{S}V���\n��0����#�����c!0CqɎH/�D��\0.��\\{�gh\'E�O�c\'C��l?�$�Ԯ�֩,���]�[&l���Et��e�v�1g&�XuKy�$����,$�B��ȫ�.6_��������(�������c�\'LR���:R����.���(&(���i\0汈� ��G��ۿ��O�SC�-�C���\r1�A�iH]������=��\\��I�X�i�P�_��٣ڥ;�*;Q��զ�\0n�����Ҙ���ټoK�3���c��<����\02���{�7M�[�\ZQ��I�sG��<@��$�*^s����t8,�t��Vw�6�4����;xV:�� �\0��!Pt�8�ڷp�����ub�iV��O�MN\'���v����4~T�?XM �����h����(pMm���굍���\0\Zs��U��v�ۮ0)�G�;�#t��\'���84G�钸�p���c\n(���Y`�߼��j8�W9J��+=�h��Y�(\r��j��{hԮ1�ԧ���5Jq_�Nh����nA��w$��:q�+�H�L=�;�-��SZȫ�1{nbN�j�B�[F�{8��2���nC	A�=�m&b�\0�\\$h�,⡀C�	S�)C\Z�ⱙ\r7�������W]��f[�}W���/�f�R�.G�vʈ��u��>���.u�\0�����k��&��1;k��ڟ�ɯ�G�j�b4Q1S�֠0�y��FБUAy�+��ZS�,�sW߀�H>4�ɏ�OR|��{\n�W�����	;�(ucO �I$�m�x1�3\r�m��w�Z�f��M�%�(cӐ�p}W��Mڿ�0�\0=�7�_�]s��޶�����-����������sf�u%��?�5\'qNr	O�-w����L3J�X1�;fh}���u�F�t���c�r�A�Q�4qԹ��}���i:0��1?H?&��t���WH#��z�e0�3iwfI����^j��\0���v�{��pE��e}�(��2�� ��20��NW���G��G��FޘaE}g����TJv��4�-G��4���W�3C��x��J?B0�<�ݑ\nf��&��\ZQ�\0�5��:�㨡Dc4:�8�CK�${c5��@@�\'�J�CDg\"�2V�8d����q�A`WF�?j��tzM�P�h���=Mc$����2��4��k�\0�q_�We5R�z��E\nn�������O�H;P�){����S}W�b�{I>���ۣ�4���=�}g��Rtl�@�����C��\'%�.XS�;躊3y��x/ƛ�q��\'p�.��&Jh��]C�\\�r��X��Wg�1��݁݋|�����Վ�zIڏs_濕<�b.\"r�8��p�\0@�jN�(����:R����=�dc�\0��N�!GcC�J�M�A��c���n8#��pƅ��AR|�B�Əe�!��I95��E\' :��Q�#\\���S�K4gCC�OW��]�Z����K�x��Iε��RG���������4�Ҕ�a9����=�挈�f�!�P��]\Zf����ua�Y;��Y�&�\"�\Z�W����\n=iڻ���j>����rs�C7Y(L�\r�hk����}��?:���ȕ�4:�C���~��\Z?!G���\n�3楑����Dd��8�(=HPk�w4��vw���*���Sux�$�2Y㕏����8�0?�<	�M*�h�����D%/������%�\\<nA�b\r2��,S���ss,�������G\'&�4�,��eݓ��m�R�XȨuLG{��\n�������5���4�,��������|p~d����h�aB��nbX`���n�P�_ʏ`�+�P�&Cx���\'���B&¬Q��\Z뱫Eg���>b�m�ch�K�īo��-��7�H��gL��j��$;�ʊ\n?n�������7�%Q���f�3�MN&f�X�x՚9�_c�Rs7T�CB	9d��\Z���3���	�Q���3J��UPӓ%̰�I�6&�D]e�^��e���4��:\Z�Qࢀ�G�5�G�±֐e�h�4�\0�3�\0ֻ����ii>�S�)>`�X���覰~G�c�4~�Q�R��1�����Ї�X�iT\0�U�Zᴹ���xH�V�������_0�Ss#3��P�\\,��Y��c-0��҅���`	�h�|���J��f��Cm,�s��T�w�+eٻV��]�����졋,�ݦB�j\' �r �c-^f�0�\n\\�~�3֔{i����\0?u�\n��4���ѣ�iE7�ʇ��e�g\0W�b����A�W�{�G���v(��P�����h��<��v3�w��O�\":Y�R�G��K˷��#�.��@�4un��IN�]�g���\"Q��Z�{��p�F� �܉7��-���I}��k��\0#�Ẑ�B}�3�j�l�SH$����˕@f�gZWnA�l�@���hMY��(.$Z�}�i�26ҏrP�i�V(�\n�C��r���F��}����M�Z���9�3\\���`(Ly{��i&�lVS�%io��B��@�r\rw��\ZیQ�5%��7��-+:�pj�Z+�\Z.���K*7I1����[�@_�4�\nkQ�i\0�Vڻ�M2�r��eY[�\n��$ks�%LҺ�7\"�6\0�5���17��S!�ٻ{-�*21���y䐙SJߓ0 �L��rI��Er(9�C��$��V�U���q\'�b�{�홂��\0G�܀�З(�F���5}5�iz7�3�+C���k��#��~��9>�B#�%]�[��ؗ#�kފ�l@g��O=�6Ž����Ns-��<�*�.��m�K�0.ՖY&��#3���H��US}���\Z�U���]�©���Է�Ǻ�ԡu�y�dj������	p<��#ù��7q�i��`�&�`fe1v�1=�yY��%W�&�݁i�E��2[#�ܮ6�bq��2ӷ��؞���̽s7�noew\Z�TFݫ���27�ŉ1��(˹��GHr���u��>T���t%�c;f+J��zQ���\'��ɏ�+��\rczW�u�(�D�����>r&�$�s��t@��Z;Z���ט�ABw�d�21�Gm(XԖ��8���r����\"j�\"���cR-�7���������,ux. /�B)dR2�p�V��[��%j<F0��䳵ܦ�֙ićn��8���	L��\r���DCc��<��c�)�;�Z�2�<Hƭ�1Fi-եb�B��\ZiBo&�J��ۍ�1�]��\n�&U�\'/�}�&�fYwR��RHOH�o+�\n�*\"S�L�h_ũjO��#��2�+�+<��P�݅�-vZ���MBS��\0��	�rh��5�Y�����v�8y�6~8nI0IYQݥ��Z�k֘F���-��\Zy�Y�:J�*�#�K���O��P\'\\�T�K���h�U��3b#y2�9*�Q���O,�M�F�\n��ci\"��<��,��B�r�L�H\r���r�D������-���,75���v��<�r�ɘ�\nw�a�R\'�Tse����3�H�ޤoƂt	Twb��`mQ�d} ��);M[��\r�H@���b-��mF\\�fz���G�-r�Ȧ���疋,gq;Tm�w\n��&)��j2M5��n�1\\�c\\��R�>^��6���4à�+�\"�(�H���:�T�	��5Y�YOR���+�ţ�N��(D�����=��Y�O2F/�y����aL��k=1��z⑚.�@p8�P\Z�^S�;J��R�1a(�EF��%�#�Żs��dZuX�ɷ�ۙB��Qj�I)���Q��M�B�-�Q��\\\n�W�9����.:H�������/I2(�*<�3tj<����\Z�-�����i����=2zE\'�D�ʌ{@88�ޛ�)^��7��^]N���s!Z�ɔ������Xw��sYdYą~$R�i��LFB�\"�yd�҄R�9272��j�a�QLMP1\"%,����j�3.�7�h<(宧mb�i��0r0��Vu�\n(xA��~�#��|�}��-�ۛ�V�8z@�Mp\"��y6WU���4Ʀ�/m&�4~�s�hŅ^�$�+�������\0�T�̑��ɺb�H�ɴ$km���5$Dv^.��8\"��r����b�IwWg}öz\0d\Z*��\0�f�W\"��Y��5�D�3n�������}���qrI�\0v�޿�!�N=�G��=*���+���~�9���b�@wH�����3K��>a�{#b�H����1Bi|��;�\"�$@�U��#x��3�v,Ű�	\ZE���@*\\?)fqq/�H��&jh�T-�;�Ut\nF��\n���bI@6)~�~AX��wP,��r4W�)%�Sq��t��-�j�]���9���pi����bś��W�x�[,�=rd�-</�Z�dW8;R�\'�P�G��#�H��L������[��^[��ܙ�?9����_�����@��ҁ7)��F��\Z���{�7�R��g|ŕʾP������~�u+@�RY�vd���}FJ�C�\Z��݁���ۗ�h$�ȵ\"9�ơ�p����Ayyƣ�r�(9��l��^_G2QG 1�IQ�$c��\"[��De��l����28w54L�Lq��-q<0Ri\Zs�#ptL��� x�\0L�@վ��4j��\"����xj�9~�a��͖ݶzM��YeH���--���B�5lc�j�+k	�gq��r�}¼�[���ʮ�i��%�<��̰e���\0���EN��l��CQ�f8�<�\\7(�|$�Wqj��E찔��r3S����¶����V&�Hǵ��P���ժ+K���@��\\B��s���)~t	+�j]�rtٹ�\"^\\i���-J\\-3��\\�;#Yi9k��G�eh�~2\Z�X�[i)�9Y��R���Øƌ��@�����.Tr�PH�f	�;�&��e_H�A�Dۼ�|ɩ�.U�����>g�WVJ�m{ox�����56����. ���c�����|�v���^�W>oV�f��J�g������� y9G2�iq}���)%�j>aw&ݙ�m�u�%��%~b�[��{��p/ I�f4�#)�T�e$�;�n�����1�Ah���f����pWp���ۙ�����Y-Ӯ�J�j�L� kge���̛~蜓_x�(�OС�ZPp�r�R�tI	�FSm��T��٣w��b�6��9J�U7�\"�v����L�GiG�\nnb�1��5��U��y���0�f���(��\'X�.9�؁�1�Q+!O�jm����!ҧ߭�T�$Ѳ=��iͮ����-��\rVҦ1ݩ�{[�4W�ڵ��M�Y��(�����(�x��|0�,w�S�\Z?��z�n��A,��,�#[\'\"3,/+���W|�\"@��gq-Kr¬�,n[̶j4��-{�]�+\ry5\0i�j͸@��TDoJ�ɜ���O�ضɘg�҈ȥ�F􏷩����\0�v���$�D���}�:P�Q�蔏�M\\8]N�7/�BE(yyJ��I%��fPC��a2��fY$�(��dO�(��i0��/Ew`�c쌡�>	�	Z��L�9�DcQ��%%�!7ne}�i5y\',���,Z�΢��*�Aʏ�2;��=:��]��1�	��Ͷ�U����k��[�帉ֿ������օ�Qگ?�O\\:�uxk��Ȭ1.�k)%�~HՄ�m�٘Ű��/�Ya=ZQ���\\�I��+����;���VEI\0/!�0��2�R`�	����8�Q\\�{rh�s���,��S:ʻBa��y�(S�ʊ�Sv��Q�%\n�UmVZic�#*%l�xȖ��-� �,od1�\0Ή���c���Y�H[��$(�G��e�vJ�vƋg��J��Q!.Lw����JU���Wv�\\���N7�^aF�����1Kj����5�^�:�K�:0�a5=:6/�G7*�;o�2C)}SNM^�f��J���{�\0z��QP����x�A�tK91Sp�^�vW�{[��|Or�˴^\\<MX<Ƥ,I���4���Jmɑ16>��DY�;or@�1﹍Y�H�0�Xh�R:���z�� ���7VH���M�T�p���#\"��\r^J���7��\ZF�y`�[Q#4�� 4�ؠ�?��\ZRO8\"�,� �X�m!�,߈�ā����)+Rr�`AV��D\r\r����T��>oCq&�jXe��#�m<�����qk6�\'2�I�WU6 Dn��O�j-l�a~R��bQ6�&P��S%2+�\n�.����͖�5-s�{Ʊ	?g�e�)�\\hvs��h3��E>��Ar�;��� Y�e�aD��+�df�&�ʊ�^b�v�\n�4�GPNk��88�_pYc��~���]��\n0� ���_U�Q��枇Jo��W=5�2n`�D�b�G&�2��%��n9�#\\{Ūm��-(O-I3�˻mJ\"M�$2����UP�0C1h�)n@��j������.��5�4��(E��ǈm��\\���r���I���K�n�QP�&�-g9�L��~w6;�akw��=��k���wgP�H�j��3W7�����t��e�\\��J�����韥@b�X�*N��5Է�� ��f4��(v���L�u[\'�6g�3�����Ў����GzN�z�z�����0�W�vS�^�l�F����1��O暣�Z(��w��o`������Kp�F9hd�E�*��1����#���j�.\'n]���\Z�A��9�/`�lZM2�}SRk�P���J� �<����@������Q��\"����n!�]�s�)l�$#�qn�0<Zr��#�qw\r��ƫ{��\\K ��F�}W�3\\�n*��;��-Z��L#�$Pɚ�&��aV0H��S��J��K��F�JLY0z>)�5޿�7ʾ(*?�_U��}\Z�\nn��Qam��1���2qR��K@�,�Q�#R�bbIF���\"TT-,h��� ����\\Z���P�Id�+{��ͯ\n]���8qQA	��\'��##�?�(l�#��zu�C��,!����-nm�Km�	�[�/1�z��~e�f�+\Z�>�oK]F�\Z�fAk�7�*�Z\Z4�DEE�=f�	��n\'��;1=����-I\0Kh����jҷ�tJa��o�a�� �\\L\Z9NpV��I@7R����4�ӣ޿�����A���;s@�����ڊ�Y���jآJ��b����tc�\\M\'�1˺�h&��˘�[Z^]t��K�v5���͸(Q�p����I�݋m/MK���->�����y\'{k�\'���7\r�\Z��F1O���\Zנ��H�-;P�P�I���˷s�Ų�w��u+v���ɴu��Ъ�h���UB��_�eI!C���ɺ�v�&��Won�\\�J_������/!����5Lvڻ��I6H�\"��2cZx�d�Bc|�}��2_�[O{vq��W˵����v���\nǤ�\n�u\'�x�M(YC�Gߋ\"�!c��V�ew2O���-��0��6�:Q-��{u��i�]\n���\ZmϞ�u��(�vӋ�_�N�>#��F���-��Q��Z�U��9���7RAB���I#�u��NE�\"6�	��T{�3��\0��N@����5+��C+1~by�<*ȑ�uwUi�%Q�Xm!��G29nkj��̭P�#6b�ipXD}D��]�yN��B\'�`��:����h�:%��\"]�Rع��ۖ�\Z;���obף2��)��>:��y��F�E�\0��ƴޖ0�MO���S��H��֝�m�G�j��9�z\n@�ạ���:-���a�[ݗ�\n��EQ����j?�\r$���54d�999b6���\0Q�_˚H�byO��^5*��$���;`�H��5G:�>�8|ċqy4��M!t�Q\\O�N\'Ӧ���\'�T2#,��r+�kRgװ]\nϯU���X����[i��^�j��]D��<VV�s��0Oa~�R�5����V{�]G|\\2��{�\0٩eHɫh���mm�����c����1����{V�����F���R�c�\Z���פ����\'�%v�v��m������h\'�R���#�2�pE�L{Q���J�9�v��>�}uMΘe+i\rrv���.&A*���wXl��܉��c3������	�q,;��^�ͤ��=7z}����B��[�Y\n[]Gr�I<T���{�@��/-ח�7V�тp�	�Bϔ9��f�U��W�	��W,-J9F�㎵tY��7��u�[mcPkU�M�M�F�ZK]N�D� �x�=j��M�0�ȑ@�_�˱��P���j7�ʲYV�q��Gw���f���� #�w��R�h�\'R��hI)��c���9݁!�5<�H}Ƥn��\0)I\'����� )r\0P��	ذ��.Y�y\'�U?\r��&i2�/=�i���3B����,\'����,��� a��HSmCP=+�5d�Ǉ�䲱G���V?1���Ҧ�1�Z_[��ӯt�K=Z��-sl3ms\r�s3Y#�њ6i�\\��[R�J�X4�<ipKye��y��H�`0���%��V\Z��y\Z�Wo�_���Kx�6��L�Ff�������n��ÌyKg�����l]�r�l-�����&C��U��m�L�9���&U1h � {)W�<`�rW���&�?rBْWN��/,Γ�ti#��i�(�^fu��ej�-��_H��-a����*�G��4K4M�V�L��&[�BZ�U��=���m����)�Wu��um&k�nluI,}�_�^F�7��f�i��Qy��J�tCu��\ZE��H��������N��\\�{c�&;��ҹ+c�[���>��������Y^��W��#M���Ê�v�[y��+p�P��w\Z\\�����f��������^� @�\0\"3@t������IR �R��J|%�EL�9d7)*,U�n`���{yms���Jԍ�$�$�J��XK�$B�zd��+����GV��b-�G.��I��V�l���+�cj��R\n���f����J�D�艳_҇�YD�2%[kS�6O4�k\r~[ !���{����Y�\Z�䯨��!KxR*��4-=�\\k�dQ��3��~!��am��s_U��Ϫ]�$�r�����˩L-,�㲷X�o-\"��h.�6Uɺ���~J�\r(Ww �JU�R7P+;\r0�N���f��!X�$�,�����f\\g�E�M���M�<��BzM���O�n�8h��k+D@�,Q�C�}΁�a\nM�]4|77,Ig�Ű���@��\ZL\'��1�+�[|H�}R:ƅ՚�뒶Zh�$Ʃ������䆕#�����G��V��B�����7�FV)�3\n��.j��j��-%���v6�/)��X�r�g���݌����\0B�ͥk��#e윻9��v�͍�r*	���ק0YYCan�xf��yc\r�\"6Lɕ*Ԡ��+�3O�\n�\n�Z`�P�MFʒ+��^���R��zH��CQ�,X]��)�*��?%bo,L������%ZiK�0�#D��ˑ�w2dG�i�M�T�c:F���:��\\Cm1���ǚ���1	le\ZL�m2��|UxR�,�8?\0��D���\'>��wk��*�\0Xf��izS,�j��g�f�4w7Q��ۮ�^[��L�x�\\x\\����y�~�u%Ÿ�]�oF+Y��t�q�{l�i�\Zv���ͯ���(2�\"M����͗X��P�o�Q���Ux�t�~$YgH���-�\Z��69iCi��d�cgn��):�I|��۱؊�\0�P�Г��lp�\0�WI��������	�ؑ���l~E�Wح	̒�M\"�s_���wv��f�֏\r\\���ίb����.�u}L2�hO��A_~� )(����(������j72[\"*i���sof�S-��`�kR6m\\�k�1\0��Xm�QLm�ͣk��&��W{�9Xe����`A�Դ�}N25\r2�G$p�͓وe�!���mZ�d%�+��t�6��K�n�c�]����J?.\Z�@Y�k�,B�F~�e�����\0���D[�qe�R{6�	,y)x\n�98hq����NQv�gʄ}�v�\"G<�$��<�\"��3R����������&�AO�-o�����:��n$EA�P���I�Oj>RÓ���\0��*|�QB(_M���)�TV�`��[��V�Q��M���\'X�|͌W[I@VI�9u��,A8�Z1�\'�l˾�-�ּ˙g��k\"�8j[Y|�\Zԗ�[ZA�!$�bR�If�y3!��#�o���2KM_�t��r�r��F�$�12\'M�)��` �dᩥ<�@�\rB�-c�3��!�O�tXЋdR0�a��\Z��\"p��bsE�ǹ&`^���5ц�%�mC}@~�uPL�\\mZ�^شv\r+Y�F��\r��͢O�t�w��_���hz\'�-�yt�d�o��OA�h�D=Wrcͬ�0����.nn�Ἴ-�՝���	���iv�Ќq��7�&�y `��T�YYqۄ����OߣU��/�<wz��-3[Ӯ�.��N�<_&*n#�%�����Oo*��:���ԭ6IA#ƠR��K��FEl;�AY��9;�3y�T�ޟ�l̋R�\ZF�-H{��J��:wvAbk�I�%�XҚYj�nw�RI���wUCv�<	qD��2����SË!�s8>m�k���\"��nt���|2/oZ����ze��3�a\"�������D�{V�J��\ZT2ȫ�i>B-�Y�|��È���z0�՞X���K�4x�:]��G�H�Uۮp�$I=�I;���y\'�N����f[o�,�pN��t�u[k�\\Q����*����$��eTT#���|��-2Ӷ\\�j^��cS����ʻ��_n\\�^�`���]�Cu�	z�v�D�s����N��QMW�q��4 �,-o��qiZ�gO�.&�Q0�n��Z��^�XG��ƥ���������]���P�2�e`��\0�<5}u-�ie�v��\'&:д8�PK����\0|�	&?T�\n��a�\'e\r�!�,�t�[��F=��k�4�-o#�ӧ�fG�^,�2c��,&@�[k�+s�ZN)tk�.�\\\'�0u��]�V�AF\\��QA.*PB�_�d�P9aA����&�͹E`\n��p\\X��v�>�1�u��,���M�:��s��\r���[g��N�T7������w��|~L]M��0#2,8��5h�K��L�u,��%���&�m��mk� �Ӭ�?T�x����e�1��ߠ�\0�c��3�q~C����_�#Z0�G��ڀD��^��}l�jgO�x#eRV��v��hx��%�e��ض���WZ}�Ӈ��;Gɿ��O�t���R�\\J���ue� h���Z~����wJ�R\\�I���`�z\\`��w�挨�k�$�:A������~�qL�W�;M�+#!�)��x��r!���V����u����M��}=�qL�K��s�b���%\"H\'��g�6i�O�ưF��9$D����5���9#Ԧ�m���V�_+�����6qo�����:uƥs�)@jZuޤX�-u=J=6כ�s�ʼG�/��,��My]�-is�:�M�>�����������5�����I.�ἁ�Դk�\"Cug�Yj1�x�$�\\�]B�h^9�����6�J��N���P}�(�4��rpĺd�+�\"��Կ׬��cJ��\Z�@ofהi�$j���$兑c�oA�gh\"��K�XKt�\n0�zx��^�)�r�i���ꇄ��1���/�m/u��Z:w���v^���&�n�X���gvl��9�CCɶ���u8-�U���z�2i:	�),v��o���āF<.��K�Y�-%ԮQ�C�m�1�Q�4Bhd��yR��R�:����S�S�Z�˿�ڈ�[��̶ږ���r4�R�S��M!��畆.#��,F$-�T�����nJ$�p�>ym%�i����H���Ƥ�c\Z��s��#��]Ә���c1�\0.�$�.��ޣ�&�=�>)��jˊa�Q�=\\E7C���b�0}Q`_k�ŕiou��\Zwcl��+_&;�>E9P|. K�?�#h�\"�mSM�lBU�4�B$n�[�Y��=�GD�\Z�����U��6P�`��^�[�0��\\6�*�N��X�B��}�[#+(?��Z͡��5d$�ҘX\\��D��\\���P���y���{GMSI����au-���]v\nrq��D���/|Fصc63��5UY!z�K\\V�2�U�DޏE6��,K~��ǶUHc����F��1@u{�m�BӜ�7i���ut�o3�\\��&�����������oi��5�ٹv<9,�\0���T����;��_�o�X-����!6����F�s\Z�)޵c�O~#6�e9�V2jM���KX\ZX`��n��(E\0ַ���0��o-�=Eg�:6�&�8�I�=Y�5m�Ԟ��.��=�\Z�8�t�l��*p��줋�t�5k�w�Iٍ��ƥ�wn�	�&�S�u)$���{E��Ǟ�^����J�5�IȾ���q�gb\n�w;���X���R]r�/V��AҮ�F}��ob�t�I�s�4[��Z������J3-��Ó�h<I�W[K6D��y��˾[9Q�7��ȡ-��_(���t��2��	�4,�����X�R�jm�\0���Ė�gH��#pb`6̝7Y��EW��B$��N�o��g�o9�Cy�<)%D[����B�=%���:�B5�8�ڦі�w+ՖTI z=#�g�ڔ.B���;r@:��!U�m�+�KsѦ�i��P�=,��ɜ	dbW�$�]]�~�\\�B�UH�7�7�1h�dx����x�����̉-Z��:���{[,z�f�[�jt[�k�ǘFg��V�诵\'�p�7�q^@R;��K����\0���goZ±f�F����z]C![�\Z��kl���C�g<�x�N��O���\Zjd���so4֕>#�`3~-f���/�k�o��ڤC�F�vl���aGv)��\0\rA�6��v赺�.׫b��;>�w��#��&~Kki5+�h�&��V�0[����h�zr�i����K�����d���6l4��@\0~��\0�8�\'f�3��<��d��M�ǅ�Dh�\'=�\'�q$Х�A�X\r&����:%����]/Ok5$��]/���=\\X!MR&ۻ[�9C<�����]eW�5��^W��!Yc��yk�.�jCm�����m�Į��<�/$���ǘ��N�-�]�4y��*��6�ԮA�[����3��[֞A��,x�H�B+m2�t�A�ƥ���(�.8��lԗ7�{it�Bl�z�����\Z��{{ݶ:��������ح�u]u\n2K9((&S~��qsX����ⶮ#w�Cco�y��H�JK��>����zMq]��to3�h����Z�D��i7&nMͳ�Dt�t�[p�������.a�<V�����mյ��E)�Uy˰:��Gc��;�2�cW�L2���J�uY���s 7R������E�$V�W�i��8>�?<���G����X\"qek����\Z�j�1:�A)ln�Iy�:]������z#&��dyI튢&���R.}f��jr4�j+�_T���[ZX��1$r. ߯+UżwP�:���]��J$���m����i�h���o+��q^ۉ,5K�)�G �C���Q�/���b���\rK2i�V�\0��Z���ѳ���Qu/2�G��Wm�2�ٳK��٬���*3O��-�1I��y)�g&�x�xV��Q�\Z>�����&�XZ�����l�e�Ȓ��[\'\"�%H���rĳD��\0��1���`�kL�\0亍]�4Ukge�z�i��b���4��K^T�奻T�VFB��2+Z^�%��;��Mō��U�&��;�D�=g�\\��%��c%6dѡk��ֿzl��Y�أ\'#Nq�b��;B� �g�?��e�+-;��T�8�[&<%Ϫ�Q��E���=Z��4�A�G��V(U�ȷ��6��Lo�j�h��ݑ\\Ql�j+<����j҉�\0Qj5�S�o~lW��)�\n�}�Ž����>����6�(�F�M�(��3�K�䰛	�kp�n�Y�Au�{���x�\"��	X?��D�mQ�����B�@z�ڍC�!\\��os�2ʣ��v(��p�v)��Rdcj�Ē�hp����ڎE�}w\\:����S���ӭҥ�b���o���Y��4���_KP�\"�S�,��ņW�{V��\0�-�}x��*_�h��-h~��4�6MgD]=|����	�F�3I�e��6w�j0���%?:�PK�g�0ʚbWK�u�%��S2�H�(b��[�tb*5-\"��Eā@ϋ�B\n�<��k�0��b�:M��z�Q^�{�k.(��>CMӟT�X��u�SKu\0V�x�H�`H��UE�?h� \n��0�m3�Q��	oS.��eW�R���}�t�?�W��ڮ���\0��_ܞ�&�S�6rǼā�M�m����ӵ9���障Z�紊��%��}e@x�R�~Ywj=vʜ��c�[U��Њg�VV��Ƈ�\nZ-�����w��Si����b�i��N�;U�е�i4{m�5����O�g�2��v�`���	�SxLVz|V�4���_X=~�ڴ�՗�����W�\0{���kL\Z����s)#WPR��*H#-��R��u�/�&3F���Wk>V,����*�/P������i5�!�0�±#�,���y���mf	xz5�i�\\+jn5u伋9��8�K�f�Z����%�˭��v���\"����(\Z����\n�ȥE�B�Os���ho�tK�{��/��դ����Ӫ4ۣ�O�\0��~���#�sy\"7���K�*�$�\Z�QQ�۸�H�v@Ө��7��U�S{)]^��G��u�E��D�TjK�\0���c��in7�r֭\"�:,����;�B�rE(�q�W�\0pk��caپ\rě1V���h֦Mr��L��\'	��ҹ�O?\'Hq�Q)4��-]�XF�����JI��f��ް�k��d�|�,�2��.$�\0V��{��p�ԭ����@���j�r8��F�B�u���WS���A\"��,浿1K���E_{T0��$��#_���i��D�s�]�Z�L�J7!HG�Ku���\\��L=#�i>��*�.���)��bb��b�/V��&�qK�4�S�L�44��\ZU¶6��:��Iys?w�.V�h�a8o�m�t�Z/)��R���V+(<��\'�:,�T�mC1Yni#X�-����-Q��\\]���EŔ&f��~��Zi#�.�Ѯe����߸hxk6v�Ա�V�Q��i1�X���խ��S~&ԙ*�T��S��lƵ���2Ӵ���b��$���1�H�zTl�]���q\n�lyx�r��pw����w����c�BW[��o�\Z�ժ춉x��@��#B�%В3�����̷!d孱b�Q5}�AimK_��]����cl�@���W6H�Ư�>���[sY���&\n��r���wf����wU�=u9��G��󤙷�D핬b�a	�[��#m�R&r�1�r��\\ �5�@��Z�e@���g51ai\n���F܆����P*�㒄��r�p��I��5��uM��֌���S�В�K��vNo�nkQ�ZX:�6���`��2L̑\n\'�uX %5\r}ظ���@�\'kBK���`Y�k���7ZR~��ZQ�\0ٯ+Y������d�\0�;m���5N�I��z��������T���t�u\"�\"u9b������϶�*&j�T�h�&CA��/��\r�F����-�o�P-3(;N�Rځ�,hccW�b����#��n�k�g�e$z��<�����N�M]�ա��z\n�� �\\�B�R�4��b,(.����1�Пh!�\r��k@�6\"����{?�5���B�W�{��ST1*h�/afR����I\\\Z��O�}ѭf?)�NnW!��=��ޠ�{3��C\0��]m�4�\0� X�K19\0Z4\n��3ry��A����ՇM�d�:�?R��$�&��\\S�/��	�\r]5@�1y�WHU�$q\'*}\",����֧kj+R�>j����BF�a�@(L6�ʠ��,P��I��O�Q�Go���-L~����`����{U���s�Ggj��M���\0�8��Eݭ�H��R{)�V�{+�۱�c�E�j���HK/Ad��91�H[qy�\\����BdN[2��B`	����;\Z�J8��\r`ԋ�0E5�\0��6ڐ���o��O\rXK$Q�(#�S����T-���w�M,�ؑJ��M�s*��5��E���鉭�����	�#H�-q���~�ZL?�{V���U��qY�\0��}ٯ���(��2Ȩ9[�̘uc��5�(�g�\\F��G���!���j�,��Ot�9���(ib~H��8�\n�J�iJ�y�@%��$](�dtI8�v�e���_@$���5?-u�>���#�5u?���Y8�a��j3_�͆�e�0�,A�5C|��M�GAs�Hq)���?��{x��o��k�������f��<\ri��\0�]Gi����?��ji�[����W0��ia��1����DQ��Y�F�MjeZn![�Z�wRB�2���c����\"U�lUvI��=+��V�(($e��IXnn��^�L6�}�6�j=�OsM�\\�j����5úȞ1mDxOy�*MZ�W�{of��PDVs\\$�oj���{�2EpԲr�v����dX�\07+k����e��t=?4(D\0z�X�\0��9��<\riĎ,�z8�����`�����`��MzE����)lބ}R䲢�$38N`$#T��)�*���<�y����6GK1L�y�1V7Jȱ,i�@�H� ��&,����]��K���������F�u����MI�\n}�ʝ/_I��wx���2q</u�j-A4��T1���`-lD`2�؝kR}�N-�v��C�(�,�I�S�Ik�C��� �_Aui(�����ե�Oc��k��\0�s�?n��[���Y��p���5���������6��hZA�>s�N�V��#�����!��=��-S&��Tg����IKE)�<�ϵL(9RF�˒c��\"�Lq�5�R�f���\0%�!^���T֥�&n���b���ɬs�;��m#�iҳR�j3K��)�*F�S���f����ŨE	*�BQ�A͚Hƛ���j�Q���n~�[��L�LC���֗�\0ɮ�<[�\0\n����s@t��#���ƍ�H�4	\Z�}�Rͣ�y.v��Gss�|���cn\r\r:����hi���:e�(�m��!�e�i��b��\\T�\\[�L��_��I�\"�:e�W�0dT\Z4,¤�!cGGQC�:2\0��\0��T��J�B����WJL	�Z��?,��ƞ����`�c���[5�	#ĕ����.^�\0�/�R���y���^\'�i�o������Wg��z�\\�ɶ�K�����\r���3̶�<��c�b�E\n�M^F��O��/��L0�C�gD�;��$��j�ޕ���)J��]����>\r#(����S�m�)�*��Y)~�.�^Zx 9>%��g�����=�ݰl�IYqZ%��wa�a�#����^C�JQ�Zy�\0���*Pl\"<*?\r�x�ؾ(�SV�:C\'��.����$˘d\ZݾQgC�C�\r���Xp��2wg�k�-]:�F 5w�>T+wL\'F���V�R���r�W�C�9/�鴩����(p��\"�lFz\n��V��)�-%�{�<WZ.������k���jV���`W��զ��e_G&�(�	����)vM��e�K}��)6޾��B��ǽ_�)@{���2{��\'��aX�n���^�ǲ��HC\"f�iW��,\r6�Z\nL;��x��E-�CD�\\ >��Y��@�~V\n���3N���louHa�����a����;3Kq�jp-�ؼ�e�>�+��i\\���:l~�ZnON5A4�~l�ƣ�2�K\\Jh�$�s�_N�a����ӆm���\0��5�A˟�q��P���9���\Z�B��\0�z�h�\0LW�/�:Q�2�[��cֿ�M�aE�@�J�hb�]�\r�G�ǆ?=�2�X�bO�>�?�u\'!D�/�8�J����9�r�b�se<\\!7�a��j�N8��q��a5ƹdt�m	-��h�\\\0��\0��m?8�?cT��Y��}���\'vp1Rt�1�ݖ�����GZݑ��m5�XJ�c��*2�Ȯ��0��=<&���O�SGB(������\"��8�6�U����|�2��5�o��;�ps�5��\0�Ȳ)TѬ�xk\0�*�S>f�x��>�m��j�C�j��[&���\nv���J�YW��\n���Z�vJ�(�t�X8�-�E�qK�m;�v5�@_C<�4c���	OH�O�j���N���0y�l��5�6H�XbX�>�\\F��ųo�[�kJ⛳�Ne����%�}�����ip�V����5A�[U���n8�!\n�+�������v���O[�L��2\'�\r&w��� u�#����EN+i�]��\0��x}��\0��t��T�2��J^^�\\m��^oV�z��`��A��i0��֕��5ϥ�F8s1���=z�{Q.t9<���g�P�a����ֵ&��4��v�x����;�\0�ǶI��O�����ipp�;�Q^�~��nlWO��?{E֛�����S���ע��\Z���(t�aic���ϯ����,����Ӥ����%q�c�i�ߋO���5���%���H�Y�I|\rjZ�V����Ԯv�Zr��k��Ea�Scq�p�k��d�t������{7�պ�Z�_��\0 \0\0\0\0\0\0\0\0\0\00@P 1A`��\0?\0�w]�z�	�LFu1H���B �u?�\Z>	>��ȝ�ɟ�N��g�E��/�%���C8Y\\X���DgSQT��:΢!�x#<[QP�����bɶ��ϒo��\Z�l���G��5^��y:SQ��EP�D5:S�Н1���ԏL(���N㎃������Z�#ZG�t���<a�w���u�� B!B�D.�BV@(�\'<���^G����\0$\0\0\0\0\0\0\0\0\0\0 P0@!12AQ`p��\0?\0��\0%O1<��T@vO�*>��I�K�\Z�ܪ��1�\0R��~�I�a��Y�A����\\l��b~ꎈd!�u\\q�@�㳏�2<�;�ˎ8�и���+;8�!�F#�ll��F�H��R8��6]#p�\r�S���QE�.xS���Ò�0\r!��5D�q~�&�p�N���\0잁��Rn`�=`��\r:�(�����cLs���q놰�u��9��q�jN&�����v�6�q�u�3�F3�GIP���p���X�pS�8�\"�]���?��\0H\0\0\0!1AQ\"a 2q0BR��#b���3C�Scr���$@���4s��D�d����\0\0?nAj�#+怓2�)�݃�u�u_[��ԣ�<�Xܧd�u�F�B\Z����r�.=I��i��gEA	�T�x�z�5�������8h�����ĭ܆ˢ�(�F��+s���굕�ᢅ�\rܶ�\rT�Q:���_>9��r��o\0<�_V��4�9-W�D�O\r�U7�m�z(�i��Ya�\Z��^��[.d�_zQXqT�E��sA���bv|5̭�J\Z1N����e\0�;�.���\nb�]��IF�/WD�-�vw_>��s�8���	���sa�v���tQ�j#HZq��ԂWH�OU�G,�M�h.�.��T�0BχE�l�d\Z�z-ܷ0�!dab���G#I+�vW���*��U;C�~������Nl�*�Y�N�_!ڪ��7\"���h,�V�V��c��F\\5(^s��8����V��^���y�h]Q��@�%���\0��#;,����Ge�_V�t]%M�D(������7C˧�s���Wei� =v��������6�S���j�66Z���\'���U�Ai+��+��[�Vs�)�K���|�NW��x�\r�-��{�/�uS�\\w<7���[�}�(�Ted2˄-�j�+�����u�Qp�4��tD��(j����=�d��T���\0%1�����Z�9>ę)�5f���WU���p�D���ټ6�vf�:���]x������5��(�1��C ��B�Q�p�zxt�M��ϏX�wZ��5:𜸛��!���U�P-�&�\0�x)���k9�n9�X%����7�wl��ԁ�xȬ���U�Ǉ���\r���%\Z���|G��+X�\ZJ�����]�Jw�u]T��Q��a�\Z�U�;�mâ߆�\\H��5�[�8F�����Ly���\0�����i��˲v��gܨ�p�����Ч�f�C߀V�}P��uC�s+e�㺎���WTI�4\n.J�s�TTJ��J�-Tg�]x\rL�ۆ��^0�ì�E�Q��Z��V�\0����ew��+���Y]�o��=��_F�o��2-e��(��x�f�S��.kۓ�`��Z��1���*�f�\0�m@K�#s��\\x6���ӏT7Z����jP_c�I[f�l��/�����+��#��!��7��V��\Z@��B��p|��&Ӭ�:FˈN�$2�L��/��Ű��x��L��\'ٺ�o����:��:94�:x6<>\"�Kp����r�9\0�r��<r��c����E��.�+x7<���n|@�0��\nC�D}U^�k���tb��`�ǳ\r=���U(��I�$A��o膥jJ蛧\r����\0\0ᛴ���K�N-#�W\r�n�f *�..�7�GU^W��=�A\r��x���J�u�t���:q�p����ѳ�����CK������|;���BW�P�oT�S�s��?�����i�\0���.�����P5K��q�;�N]hor��WL�p���A|��\rW�h���Z\\x��U<$��\0\"0��&�޼>!06ڨ!|7O���6� \r��i+�\r�ᬮ��w�WDTd�<�^�ð_>\'n��:/�^�N���W&��w#��wf�th�O#��P�v`���I�A�O��Z|��N�\'���cN�~?��d[�\ZU����I�3�@��\n5:�%���B��r��1F�>��7T~�h_�Տ����\r��F9�p��fW�5�vAt(��\0����ԭ�\r��~%mtW��e�Й�u�zd�q���\"�A�2UW�4��F�M�g5��0�G�Pxձ�\0Ӳ�>׾������Ӈ��Ӈ��8�uEZ0ˆ0�Z@$���%P6�c���@����:�m�T���°8��Ox@3&%vJ@o݉��\0>��j����ȱNi�����y�>|zp��L�]]<[)]8��9��A~\Z\"V���VNwX���\0�øk���~���W���\05���W���\05~���W���\07����\07��\Z^�Q3�z-��^.�}8a�ħ�{����ԝ��o&A)�^�sL�Q{��\\G�UKXm\"<T�i�_���������}��׎�8\\-�hV��\rV�5[4��n���>�7��8���i����j��6EaC%�FVt����sB�P����uS���t��rw�[���@����uE|�J�ç����a�q�G��Ӂ�<\"�7(�꺮�\n�����\'XN	��ۀ�|GE��`��7��o1�D�\0e��==�^��)��5]W^u�q�.��-���<\r���ǧ���C���xu]x��N\Z��u������t��a�y�\"��l��]hDϲ��`�\n�F�HӀ��\0�_$�������`�p�t㿋?�=P�#xP`�.�wCu�q���\"�Da��.�����n|�U��7S�tO:&�!�\nn�P�|z��>.�z-���O����߄����Ԕ��6�t}ˆ����Q��9_-}���m��!2w��:�[��zJ�C�6��\'JuP	�(O����E�f��1dǘlӀ!\\�[�-V�l����\Z;���`�$�Bۆ��%`�(EөG�^J�#�+Z�p7Pf��4�;\"����M�M��g�57Np���v�c^��K�\0��Q����]�>_D\r����V6�Y�&3 9�l�jl,�ʩP�M�xL�a�U q7c��E�;�����_���a�~#�^������nH��0��ZB�Na|�E;A���X���b�:�N��0�����q�uG�%�Dܑ�k\Z>I��I�Ɨ�rM�3̽6�Z͒��Og2�6��\r���{�Lm�X��8�.�k��vQ��8]���F���Lil7=S]�=�܎~�d���aB�}VÎ~����4��uׇE�H���aO��%FJ�-Rd����HیǶ%���f�\Z��]pZ%49�Ǥ��NvM� !���tN�.�[�*�G*d��.��V!�-�S2���1�h�	��(�8���|�\r��N��)��OE�OE=3S�)�T`��@�H�(�Q��6�>�r��B���������׆����uӄu�>\'b���p��Qv!�2�Ǒ0f�73�+s��U��6jk	��􅀰\r실fI7E��R[�䱉6��C�\Z&Ӟ|1�\rm�An�49ܠ�����`��l�U�i%F+�_E`f�X�!�:�ZuQ��J�L�r*�̈́�ۋR��xB\'���Q��V�E�9#0�m:���O��D�H6�q��x፿T:r�vvK�.\\�Q���$��*��7� �10�ы�x��kG��L0\"���-�m>�\0m��>�uo�=Ú$A��}�V�Y�z�c���	��柄�ewB�Ł��ƛ#;�eِn��a���DDȑb}U�P���년�L���6�.�䮠\0�L\rT�\r����fS@�Lbˢ��?0��f���7��)���h�����F�eP�a��k�g��������6B�	��6XS�F@L\rVB�}S�7��06TiuD�c����J�\Z���k}e5��\\�bJ�I�uΒ��S�hl c��7@�e>�6��峢�dg��C�]%������n�p|��T�îi�\'\"L�\0��C}�ӄ�2��q\0����M�E\n`�\r>��c\Z㨔l�Ma�\"I6?%!�^c?U��9A�2S�֒�K\"-ʦ.t���Rp�g��$^2Q#I�E�l�n� n�x���`d�G���H6�e��[,h.r����ы�D/�S([�>\rIP=�����oï�uӄJ}@\'D�O�M�r�L3mS�T^f2U�j�?��3���6P���7,�D�q&���&ڵ� ��$l���E�H8A�9\'<\0��w�30&9BZV\'��8{��gr�$���T#�:��4j�F�ft]�c����rvjO;����,�8�٦�A���2Ӱ��_�0���9B�H�w&�Fm������g\"p-r�H���\'�:\':�˿it\\@T񜍏�NH�f�<C���2֛�\Z�~i�����:-��g$?��(}�#\rӄ�&�T\r&B�|���\'�FK-2Z��ym��el����/T���7�\0�\Z�j�	\'%�4�N�vX�Y<������L�h�U���s��\r̐S�dFw�aww�$ضM9�dI�@�����(%������.d_ˣJ���՚\".��.��0�S8m�˳@��xNi�t��{��s��J���|���y\rt��Ln�L\'�f��- 1��S�d<�T3�O�-7$���v�\rw؉��˥�w`���\Zsp:\r�#����N��s�L��y��/�܄jbge�@�Y�D/�F�*D��Q��钙�J�&Q�n�s�Ib�DZ$�����t�o]	���M���U�.�k�.�Ԣ�\0�Mi\'IȦP���s!�<��>g\'5�K�d�+d!o��\"\n��9��Aܮ��+���`\0�ⰹ���B\"ZL�7�/-|���X��ۜ�|4���&����\Z�@;E�T3&A���l�$���yu�Wtn�2�9��ph7O\"�Kd)n��g\"2�쀕���u���5��Q��}ѩ�� ��Z�Q��Y���$L��u\0i3�Se� �ؓ�)�����I9�{0�\"�8�A��m����:\":��� e%7 �(�e��F��\'!����vx��F�%=�\"v��Ni�-@XA�,<�s�8������%?$@�	��S�+r�?g��M��}P=eb�L��Fp�q�t��\0��N@?D�@\0=�A_f�5�ܶ�\0i�P��iF���G���%4�x�X�(�i���7	�����:_dyL؇̡�d?_��P\Z�\'b2X�����Sn�)�ca��p��\\\r7=S�����\Z�I98�E�w���9���֋�u>	�a)�LFvX��\ruP\'���kA��xh��AY(���{/�a��R��U橙�4Ԫ�?3�U^_��Z�f\r\Z���|;��N>���Lk���=�\r��?�E���A7���ִ�~r>H�ɥ�~�$�p�#	�U&�i�a;f���>WE���f̛z\'�kIX��D\'V2Ħ�B\0�����5�}�.��~�;�O�hL�� �������`���n����ȁd��!7݆풃1�����i�6Y��6\'M���\0��FBq8Y�/��a��� ��z�U_�����5֌�1�ƥ2�����C^=�9&�s�a�[� 8�t\Z\"p3#�̟T�-3l�Sg\0�ql�L�,zB�c��ӏ.��T^9�LFjL��/��X4\\�[8-6M��2�!�v;A��G\'ZQ���sS�����9�UJ�k\"���2e�J /�*K]�Q�pL���U���`;qv����uw^��5�����Wܷ�vj�y����IH �#?�8���s�+���\n���,�觙�����	�|�*e�<����F�\0c��s�S1���,	�	�|�*��_�c�m��S��H�lSr&�D\\�T.eE�oC\n��t̀Zm��4�csNlt���Э	�X`Xx�@\"$l��A9͙��Eû6���\'����sݜ���0ڰ]2T��k�\Z�A�˧�1�����\r�����0�<4ŀv�9��O0^l���l1����,|��Tƿ+{Ƚ��d�sF���I���H��wih��z�ݒz*s��H$&��DC�!-�u���f�,֌N�Wh�[��?ځЪ}��ժ�YRL��\n�}��i�o�U���AA�0�D�Xg�r�Ns�Y��X�����U���A��.gD5V��Ct`S|%A�R�/T\0�3�*{���@`B8p�`L�S�˄B�Z��j�Ӑ5�e�y��l8��F�%�*��#E�\r��#�9�jS���eO%�\n���}�D��a��H�wQn���?5pFP��V�Z2�,�C�&P���>��ӇNxo���tj�\0h\'u��t��L�3B��9��L��\r�����# M���P^0��H:�iiT���g�kf�\rBu��n�l⼒��$z�����4�|Oy�c�a-�cs@p�9�l�8�e9ɮ�7$�g��&Qa�%4ikf��[�r �_HMy���|��|�F�6�0�\r\r�p+v*�w�t+�Ohwg\Zҩ���_��/.��]�vj̨>�U(�|��Bn:5�����ϭTa\0�]�<<�l*�X>j���aP��0�H?2�wik0��q��Q��֙�e��$u��+���2[z&l��\n�&���dZ�!�� ���E�BT�0 ��F\'O4�i|��\r�A����B�y1�Ȭ�@�]�1�D��q\'$D�M6<�[���p�Q�r��h�P&T�*@[��c6��u��<�e�����5��C%0��s+��ؔ,��pT��51	��\0q�Av�B��s�ŶM\0�h�S	�6�ꦠ���\'��P�~�8���Xm�1�3eL���w��\\��$9<����F)t��-�0�]�}S���ZCϔD��3�2�8����|�s$�́��,ЎE�F�5�*�:��d]���E�\\2MowP�\02���ק�2y]�]���fz$B`�R�g�n��m1O��{�kl\ZL`�*��U���&\0j���[Sw�7?\n�ɏyV�}t��<�1	�(�M���\Z�,�|��&��Lt=wf��a�F �:M5L��-w��e:���Oi\r���S�I��}/#Y6[(P�B����\"%�l|ʼ���\\B\0�N x��d���m�oǧ�XÄ-c`0%��>�S��:M���%�ai����l�P��8r>�1����s0�y�d��,m��Q|���8>�d�6�h5M��>H?A���jy�\Z�����\r��X��mm�-p��y=IN�8Xm�5����UG��F#�g�Uf:�\'���E�i��^�D���;jl]��������Wjl�Y�]��.��\0):��n��t�𹠎�a:�л?j��u,eΓ��Q��NurO_�A\'�,3}��C��6H�vS���=�e/��\r��mً-��fQ�\r��U�R$�B�7c�_��+�t��Q&3(�r��uG�t`(3�i�e\'�_��&B�9p���1Pa��m ���1\"v0�&�m!=�ɰh�U�-����cn��.n���n�3ey��\"uW�����+��>ciR�l��@�E��ܥS��[��<�0���\"���\'�2#�����\0s�h�Wkx�����7/IT�֓�@���t�Te��\n�\\#�7g�D���a>�]���/\'P��w�\"�ؽ�ޢP����B��/�~���vS�wo<�ǘ)�����\\~���u(�أHA���l�fމ����W��ܫ�.��i>Tv�P��4Ê[&��L7������}]��������Ë��\r��� �̠�$�@�h��Xf:&R�����\'L��\\���dٓ	�\',F�����!0`�$ f��`,�4��0N��Q{�B��f�TC�Jo�]�&��z�lsC��:c3|�x\Z�(b�<�^8��3�Ŋ��(3��.�?�ѩ:� �c�ƒ_�]����n�\\)��=�y��H����L�dg\n�p��#D� �Sr�r��a\Z�j��Q�a3��j�k�B��ڻ-Znq35\n�es�L���#˦#%^ �&Ҩ��ܥb�[S��@�NF�[n����\0�:�ԬVn�f�0}��h�0����O��[hPp�,W��Ap�$ׂM��J�_9�d?�&0�d��\r���c�D�?7_�\"@x�}P��q�Sh2A�sA��65�����5�����\0F���8ap�6�N�8O���\0�]PdEK�1���{C�i��\\�����k�<���񌼌Ow�JAު�sw���TmFO�#�Qs��:~o��S����}�ieVz�+	ƽV�ԪFX� �x�M*o\r�͘L�)�ȳ7�j(���V�8`�:,Ah�͇���v9\\J�t=.�|�:�.<-3+|�����d��N���\'���`�1vq��o�u�w�E�\\0��E�\'!�=�6\' �������%R��6�:&�JZ��Q�f����6Eܶ����0\0$�R�\\�\0�F Sl�ڰ��2P�	갴h�I]�g��\r6M�\ZxET��\0vN�@����\\\\91B�_��廙��A`s��q7��Rx��`��\Z�A?/\rQ��B�a(M<u�9\r���g�?��@i�L��%7  x�c��3�Y����k��Q���_[\'8��h\Z�E(Y���y��6Se^�[J�5+.�]	Rdf��G`;�.����y9�X�\0���]S����0�Y��d��\0.+|�i%ٞ�\08�}Wv����A�wN���mkl�x�H��?$�q~{B��^�	�\\���\\��~�M�tG\n�`Ԡ߱����;����EG\rg0��#��-F>�,2��k�B`p���K�զ�_�ܷ�\';\\0SDb2|@}�.޽y�_|o�쌁��\0��^k�#�5��h��	cyZݷ��z���P�W7=���|����b5\n��Sl�:��0�3<��=Q�\0��4&�v]|:Fh6bީ�˕��5X��4&��ה�\0�ņ&j�:	�� �H��軼�M�K���­\0Y�\r�(F�$��Uph�Uw�2ܻ���R�\0��\0J�؇fa��Q�E�x��R�e��I{�j,�+�\0iA��U���3i*�ТK�3!��*oi�{.�g�7���T�7��Z}�b\0�W�Wߋ��b3`��,Yj�^��]�%�2#D\r���f��L��l���u�G��T2]2]<cD	�x�w�z�ygh��s��/����9܀��]ٱlœw��}U6��$L&�@h2�8[o��%�P\"���oa3�q�l�$̂G��$l���Z9��P�(�6`�*�Z���@��ev\n���yZ�E�88H#/b�-6!~�08���+2�|���0 <O�a.y��M���.N�%g���t\0�՗��Y	�)�L(ɢ:��S���XD��H[Ub�m��l8A��q:oʄ���n�-cp�Eމ�0����\\K�T%�#(�V�Y�q!�}��6�h\r��Ӫa��6^���ʾ�7����ʫ�-vA�_eޚxM�f�M6�iU���Z�#9H��pk��{��{֐\rZ;�\0��������U7�a0z{ٿc�q��U�wڙ�7��\'.A��\0��&8A_�	��(0�ч�耎\Z\"r����\r��u���4JaL�߈���>b���	ӊd\r�wF,c�2�P2ԢN7�DX�C�pX@\'qr�i���r�2���;�\0D�s賖vF{&S��4��󟑲���`���}XU�Fc\">^ó���ɓ�Q��@Թ7����?�hvf�_b�;�z�jk*�ys�>V�OwEٚ;�ޥ&�k����6���rT�W�UXi՘�Mи�U����9�{Sn*\rWm�jm�\\�<˰	�D{�|\"V݄�ً��;� N�X���uX�Ѧa�V��d�([ �p�t�O�m�Y�����w���(�=�.�ˈ�,g�3�XfL�VF�CyN[���`��<5�U帶=�zA�u5٫w��xa����)=�Su��9L����8Ī=��Wz@O4{5=MC0��>lpخ�_�a9豗�,_��.����X���ݹ������P�}&��a���%S�n�;<0ꖝ����,�D�J�棆����\0Pa�Y�\0n斸��\'@�j���\0+�I�{\r�i��\n\Z4��\0���d�/&��^%��5^1��0A�/TP:�M���O�\Z����T���BQ���1�op�-%f��b�\0,z��qr��[��?f\\\\r�����\r풩O��g) (�2Pu�P�yͰ�S�8�6Z��Ox���N\0���p�oaN�\'e��jssT���*?h�F�~�&qHd�wMc�װD C�d*4~k�U���*N���ƿ��Pxv�q��\r�K*��}�j��s�@v��\0\r���nsy}�<���H`�3���vba]���A�o���hv�p��z\'	�Q��|Lhv7D�������������B�e�(�ڡ�!���t�^�hLv`���j2R�TF@��d�2�(�[��+4,�`DJ�K���e�Ԯ칮8��]�e��gD���pja��Úu�|HC�6�`����Wkc+W0L�/�9q���\0\"���J��m.���X�j��I(��z��\0-��hU\na��jx�9���.�G(���u��U��\'_�<��֐\rz_��ʼ�˳粩Y���tXOr������Xg�W�p:�O�N����.����5_�\Z.�\05���3޴6=Uv����v:o�l.��ݺ�3H���\Zd���`�b��~��\0U$�:��ҿ�Z�(��=3RH��r��1\"�C�B:�W�s�W�ː[�N=N.8}��g5�s4GPU69���t��\'�]r9-\n}�<��H��kXj0\r:*fX� �a��z&���<O~Իg�Uv\'�M���<�� �y�O\0�w�UB^X��m�#9U�P��|G�`-n���FX���L�X�76����dA�k0��Q��8��:���}ދ�۳���fw��\0Q�.��p��\0��\rh�Q��I�`q�^g��+��<?��I�{E��XH���Wi%�3\r��:�\0E�0���@���w�W�gb�׃�Ա]��ƹ/�N���D�V����B��,\"�F�\rN�ϓ���փ���~��8�-\"�); ѝ��2�,Y�W-J/��A�.���t�\'��cy�zmē�`#�9��I�1\0c�<�Z$�������P�p|K��H�R��D-d�\r�\\�T�`+ ��\"�O3��e8��9`I���U[���t[��5l�t�m�F�\"����j@2`�S�s�#�����\0�a������i�_��j�>fF_$��WՅD��eM�V����e��1ǗF�\0��N-�<��U����`p9��:H�]I���D(7+H[�f�z���2.���Tt_Tӭ�,��/l���!>X)�\ZM�*\r� ���8Z\'�Mq���T%�wL���sT�T�\0��O��|���A���7;�g)N8��`���\r�5Uhcpa�߅�\r�#��F?A��y\07?�c\\ʕ�(ԍ�he��h&`/)S�?��h�����n#8eV�ɛK�]��v��q�G�ƫ��UV�٭\'$�$��]�_Q�ۊ[��9�U�KyĨ�4���*�Z�����\0V*��+�HB�]�HT�7u�5i>`s3\nu8�~r���Tne_�b�Ąg\'t/(1��rؐ�(\r���]8}Ҋ9�n� �貉�}Ц�R��/�X]㌑=s0��3ת4��w!K��\n��0��w�ت�\0���nH\nOڲ�?�����\0�� I�����\Z!ˈŶS!�G��1Ty�E�D����l��w����T2@󐵙M�� <�{ŕGF7���g�gn��CN�zs��h��0�/�}��ڭ�1���\rks)�̥��\0s�U&�kQG3�*�U���\0�VvI�nO�A�l��r�0�U���A��\Zdщ��_�\"l79�+m���XV�5\Zp���)��S���B1�W{Z��A�5�zd����Je3\0Ld�\0^L�D�pRn���<H<ju�ƯC\r*�#�M<�<N\02�>_�����kD�\0�;��&���Ԧ��6\n�ߐU�kE�~��O����Be�id���ZA����e�Zv0ckG��ܣ���US�N+����wl�c�?͗R��-���W��_\0�z.�PQ3�]&��y�p��l��/\0�L�a�K�U�ڇ�	���,Z��s��(���ʀ�J�tS(�}T-���|#�3�NpÅ6ʦ��;����s*4�}.��.\0Ld�����\'d�0њx�����?�\Z��\0%��*����}�W�8GE]��\0�?����hS<�O��,Z�b5*��%v�G�HN��w1�ϋ	{�ḫ�8�M�xv&=�uE����Wg#�kt�U�\0Վj���}�J��vV�1�Urs�t�jԋ�o��H^��Q�ʐ��O�{��q�(�N���T��ω�ˮ�� oP��;��1	���Gd5�q�e.m�7�4�8*��߱U\Z[Q���4�e~\Z���Q[506���6Qq�Q�P��bp�#�ASgI�-�L\0V/3m�XFQo�]��1!3���O�Ӓ}�mN���V�c��i0�����\0`�]�@�]��wӍ�3�|�jˋ����ٴ<�6\Z�g��6�l���#/��0�o]�:�\'F�*�{K�9ۢ�a���góY�S��Q<����g� M�v\r�<��7�8lB��z[z*q��g ������:�0،+�9�ɥ�Wk�M��\Z��+�q�a�T����9��@5�Vu�&�� ��2�\rsG��{�q��W\'U�6Z��#�h����i�\0%Ȇ�(ɒ�4T��\'>�$�&>�D�,V\0/�I���	�ۯ�_ׅY�����,M�T�F��?�Ӻ���|�}ڿ�ӆ���N�u<Q���2iT��\0j�&��tU�5+ݵNs�O$5�\0�x�[�{b�#���\0�P2��R{1neb1�7e\nn��l�Pڵ:7Ӈ��Z88\r�:����[�v�A�@��r�h����	�á]�Ю�\0+�D.�A��4���G�A���3M�g@2%��6�1��E�HȪ#�+GC���ߙo��m��*� ,ˣuS�s���q���t�u�Q%�|EK�	>o�d�|�\0�H!��0$��8`L\r���dO3L�q� ��\\��p�k���\\Y��\0���K��\\�ڵo��\0�AVki�O�����\n�=\0̠����T\Z�ݪ���k�q�{�O_UXw}���������y�Z����Lt�:Ǒ�:zx��]��d�,�0���no�<�8y�����h��tk�X��U\r�v�9�3]p�ល�g�9��T����\0ev����+�Pv��U`.��.���٨��]���Vok� 俲pr\"ۅ���w0��ȃ;��S��XFh��=�3S�|���Sg���p��6%a��vTˇ�9�#<�����5C���&^\r3t���Re�� �\n��(_���\r�fq�\0�tT���sN`�nvo��eL�]�w[j��LЧTKX�\\L*M`���i�����e�:�+R��Qt�j���m��\'�{\r�7�\'_B�������G���\Z	��!T��ʦ�F8\"n8n�a���\'���n�V���k޺}�����k��\0d���U�d�;��0�b��1�ꫳ�S�}ɖ��^�ͻȱ_��RϹ�e�#�-,s�ZX��U-Q��L�	�S�5�6�,ӕ�\Z!��j���d�1e��$��ahұ�e\Z����m���HF�i�uM�w�v���򏃇s��\r�k�	�ky9s\n�\rh̓��z�\01�\0�T������\r�|U�}��������ګG���c�����i�Wm8�8��vOn�w�0��3�V��6ǨN~\'8Z�3E�y���S��yƾ��\0dD(>h�wE<X��t��c�4H�n��`t�;\'��빖w�vLp\"}SL����Z����TN.���0FM<{\'�U�}ҫސ?�訸\n��>`���S����dr��Z��rN2�Aq-�n(o�8���U\"�����H\Z�M�Q�	���<�R�X	�4i�a \0o��5�g�c�Ԗ�R�\\��K��zdx��F/�(�va���}���5��s=�\r�\0\Z�����Tbc��{C���9��j��zG�\0OT�ދ��Z�%F�\"q�����2��+���܇ƚ\08I5���]�Zln���T��~ѓ|��7\"�_T,G�Wj�g9�4�9l�5)�mX�xy��s�Q�#���c�\Z���Wgq��7��T�����O�C��u�(�3�]�DCMӽ�GAu�p�I J{n����MB�~�+�kƊj\0]��|,@��N �\"3��A���~����kZ8�����l��E��8�vE6?/���io�3�j�u�z�G:��\r<��_�I�P���\nB_I���h>\0p֦qS|dWj�G�Ӷ<���Tq�o�A�\'��V�|�1������\0ӢGN���5�%v���L�3�h�2���<Mva?%s�:*�g��niȏjuO���·O�~��u�x����wQ/h��P���*��Z9ƭ_Dqr�c9�B�D�>��4|�vA�\\�s�$&�̢\rݚŝI�4��}P�[�	ꌻ�A��vF�#�ۀ6 �5����Ol�~���3]��h�w૖��f|U��۸��)~��|��.3��U���٘�ʍ��1Շ%y��|\0bű�tYU..|�]���K�U�\0��jl�G��ہ�\0ڟ�4\0@#��c�mUى��Ϙ�?�a��Hhm�)����L��aLhkZ ��x�����<�l��ZwPvh}�(�*N�Ojƞ���l*C�Z\'�M6p�À,CL)�Qȯ�vz#��+�5V��NR%H-&=W8�����C�S�K�tP�\0�Q=2M3��7\'Dƈ��ɩ��&�m�ָ�h��s� �&F���Roٿ��\0~��Ws���4�l���ےWd�k\0�S��LM�z�u�m9������*KGN,$�@�����tO��ܻp�:{N�bA��ZUi�d�x�vB�1�^�ЪB\Z���\0����A�S��f��oiD�:,�-��4�3s��UY @�\nt\'C�,`��ڌ�蹰T���`�j|����݅y�N���p�~=WIᮊ�CA(�(��Y�T-�2�i�btg|�O����&�_��Z���\'\0�m��\0r�� Wf/�@�XyU6�Q����T� �]��\\t�G��B{��0�׃#,ӆ\'�	��� ��U���\'��|n��V�b�UHk���9.�I���}ҩ�����檿�Ԙ��7���~6ڦ	�D�H�:\'���e�����]��l�E[��6�h�l�M��P\r�����j�oT��f]8<�X	*J���e�M�7C3�L���_\r�n��7�\';.i�@)9�2���s��q;7;r�CZ3%vjx���N�)����W�=M�{B#P�wk/�vJ��4��<�9$�/��c�a?�OUI��n@{@yF���P9�����\rs�+�r�O`�{8��ີC�1!~ӡ-6i.�@��5�\"���N{W��<Ԟr����ĉ�9�Hv���i��3���C���nW��m]\n��Q1�D��s9J!��Dd�9�g��]m��Y�[3�T�NfQ�xb�|��؏\r��\'m�(��H6���XN\r1������*��͇�M���\0\0F�&aϘ/����kU�P�`nN�o��E��A~��7�\\�b�[��߷7\r7��`X*�I��]�tyn��Z�M�Z�w�a6w���p���_f�c��	o���o&�#kix*�y���4I .��d��\Z�E��V�dڠΚi��bpWl�\0�4�\"c\\�D�F~��p�\'����T^\0���#-S�����h<e!+�Bݓ<�{KJ`�D1���^����[O�Yɥ���Wo�ʌ�&Iu�[n�w?X�t��Z��n\\�\0h\'����[Y��7j��kO���q�}��C���x�Jm1S+�O��32%6�2\ZfJ	��. �@�\'��lAvH9�����\'au���.�T��d}�l�G��FS\'%N	�.}�	�wr���B\'��	[���_�NJ~\\z��-��!f��\Z�kOv��SL����P.~�1��8��g	62�Uf8O���\0�_?lPW�S]�`� ��,sӅ*��o�^F�*�]q�?>�w�˴3���:���v)���f�9�̋g��5���O��B��0�k�;�������=���$<�iFF��#$�,����ҷDސ���ꉳ+��M8��Q�P%35P�*�2�nk�غ^�UGfnc�M��9�Ⴣ�5�ID;�a�@v�}�*����M>CR�\'�� ����9����������Шw�}�F�5� �@�1������E��kk]f�F6���A>���r~�Ĉ,�3a�\\���\r����G��N\'(��W��bw�GDD�;��6�\'�Ѽ���4��>��y��i�	�Pv����\"�1�vv\r�Ϫo.3��\\���8�g�)�y0\0�v�?�\r�{������JwmX7�P}�|;4�>oh�,p�a�C��\n���I��n��`91�50Æa9��35Q��!��B�Q���9�ꨟ���{�Q�]Q��\Z���s�1!{��ǢV�[1>A�lR�B���D�R����c�M��?��$��r����C	�J�U;3�������b���	s�s�T	,��Q�Se�5����Q�|�-9�\'�?��j-U�XS��n�~H�ݰ֌��\Z�N��p����`�s�+lu�,�ƾ���#@��I<����	�4\0�G��MV&ߏT2��<=�}��n�\r�i��k�S�-��Jэ��\nhŋ-ʣѭj�w�Rjr]�������D���UK�O���MhkF@q���6���G͢>h���-��_����F~ژ`�.-:��yg	��ʦ�p�����x��1���\'/� q2&[{.�Q����J_�Zfut�]�Wv��UJm\0�Ti@&\'J�)>�G6�ə�j�7M�F�zʋM�ț�k����X�R����D�����M-\'��\n���\0�G�!�j�eZ^�ۧ{�o���+��ԧAe?/��=�e�޹�9�]���a�}\Z}��}���T�Of�����W�4��s�y����7 =���$wEu���ZlBs�1�ك��m,6��Ȣy��:�d��M��y�Gc�������]�}��pU{\'{Ah��9Ņ�.�a]2r����Ί�Njn\Z\0�@A����\n��\'4膵�>��b���T��c�HC�se���L�e5��cUܓ��p��s$}ۢ1�.\n�濻����\n�[��UN>��D�\r���E�d��/� �\0d\'�D�t���?�1����a噆@w4��?�lz(�R����x��r�2������fyO�2e�6�6̔ff\"��9�i��P��[F*ݦ��0M�h�����X2�9*�E�x���(�\\��?5���S��2���B�>�r�@���d\0�����\0uwb�{Kf�\0\0_@Z��M�)Q�ٝ=�9�����qT\Z�>\\qN�S�fV�46�P���&j0_}�6�A$k��i�>���\0\n�X� 8�K�䱤¢ʎo��Y�<�\0�(��a7�o�Ը�[��BB��(��so7�\"?%h6�9j��!~�X��|-�Bv٫H�d2��Ny�,6��\\qDī�Z�]}c$��gx2Kw(��ܮ��\r!tMi ��?^\r���<EG��؀i�{���\Z��1����uH--�d��j�Q���}J\'\'I9 ��\0۩E�����F�Ú��}������!��v�����/���왱�ր:q��U����_AM�2�Ơ+8Ί�5N2��?9���Eˠ�<0�M���Cw�T�Y!�\"n��0R-���>�aK�S�0`L�?8V��D�㪔��\Z�W�u�di��:88|���6���εH�jU2�0�P�q�Qd�]��tV��>)PCc	��\0+8����I��I#��$\0Qh�f�L�U-�e������#eL��i؄f�W,x�z��\Z�y{���5l��no�>k�yX�n���aN#X9��M�����1@�Taa�Y?%R�Sg�#\0��X��?5�V�a�vL`\0�	�(�#jk\Z�XE���k�i��m�N2��\r�3/�l�?�}�U*�_nWf%�\'���+�u�DH�q\"3v�/��,�ꁇ��\'R�b�A���\n�L�,Im���\Ze�\\*}sMȉ�&�`@������E����2�L��Z\0?%�tےUA}A^����/��>I��֡��sD�U4S�@�@�%8a#c�h<�f��V�䮈��d�*MlE�S]&/�\0�#\'��6.8���d�*�\0�v\'��� ]=�x˙�,N/�[�\Z N@sU<֖��T��ۦ�d��T��p��cx�e�R���v�w�� yBcCZ4�y�y��}�O�����Q���^�8Q#%���p���b8��PȦ��0\0�$�G$-h�:$d\n��{�4Y���G�0[-��\';�rh^z�\r�&���=L\'���p��ᒓ�$�\n\"�U�\"�{�o� �Jy�{���I���C�	�5B�0}J��*���顥��|I܍?U�Rp�h����Ʃ��T���Rî_5��$����ϻ���,�<��T��>\rp��G�^��~�c����p�T���̜$TijsnH��Ǫ����7<32&�@e:���̱�\\���a�@��`�c(]�n�33軮ApO��^ܛ!��l:��w܍$a&�,D��DLf���6L�X�Vh6����WD(�� �EE�	uګv�7��V�w]���	]��WS:�f�ct��iC1Av���W�qo�&5�i���,\"T<\r\'�l�r�%0��H��:e�\"J�δg���*����|�`� �u�3w�$��꿞=�\Z��s�X�U��,�	���F�S�ysfr�������-ne��G����h��ŝ�8y�7>U�\0f�M�r�aq�.����4I�tغ�F��P�ťNh٧\'�e�$�Ѣ�L�$@jx�ظ�ֵ��XB�$%]D�̬��+�\\�N�1�i��\\ò��Ty��k�Ą0�n{��l�@=���\0U.���G7�����Hpq��fLB�4�|�u�����F�@�������4@O����\0����@[s�dbk��GY��N����S<�����H�#��w#��ȗ}Z�	�\r��N�����Ԕ�a ���t+�h�Q��c�w�F��h��Ta�a��\0�O�\'�\\t\"~�:�� ���C��T����0�V��\':�校(�I��!�\"xb@��U�\rЗ���Ԫ�\\o��`�~�k\0��FhZ�J8�1��&8���8%�*�<�+b%3<��ϰ�2�$���$f��=�9�X�:	�D2h����3���@�]ƣ�ߢ������]�MF��w�]ݽSZ[�3�\n�X_=J�~�\\H豻=����lzJ�7L�r�]�\0o0R�!�E��}P��D܂�=��!\ZL��\0�6\'������ �A8�\r`�b��O��\\$��G��PDe0{���{O���8��+j���N�J�wl1�M�)�Ç�2�El8|�Jo(��\0�El\0S���XT��i�E�9�q$�V��p���b�M��\'�97��q�m�oM���S}l�1��5�\0�_�c��O`2�O	ҨY��q�*n?Ep\ZD^<�)�<n��#�)#�����s<\nĂ9;$����M��WR�~V��|�8j��\n9���E��;�=�x�D-6!Sqe.h�oES��6p�ӭ\\a웚x�O�\\��ȳ�Qϼ�}�K�Tq0A�I�9�\Zi44�p�����;�(�ӄ~()F\Z��3��@�r&T&�\0���r��Yu���9tN@,�����a��S�P]�ت��U��m�Oc�M#(���^�1�z��v����v������v�H�#6�W���?�A�MJ���<M��\0��je��8�eO\r�꧋�yJ�\"�3�,Z+&���1��<=x�n�����P�i��V�c�0{�YF���Z=���E�]۶�|pd�E�ҥ\\9�U�e���ETC�n8�[�_�=�\\�a#؏3y�\n�����\0z&fnxO����kHPԮ�e+�C��W�G��Yq�Y,J���z��hĪ@��]��4�9c�d�\0Q��\0��t)����9���6�a��~Őj��\0^$(�����ңDTť]w*U�5.��᧰٪8N�h8h�%����Z�n��,`�=�0_���#���_��4�m����=�هqc�&d�>6A���	D�;���ᒕ79�9JnAG���\0\n;�$�ZBt�+e0��n�qG���tC~\Z��l�\0�ǯ�\Z8��dƞ&�G1������X>��{��4����x��l��Eo� dݕ67C�H�	�8h8B�	�WSy�bV �Y�=���u�rh�Ӑ��M��`�����O���i�ő5\\���o� ���g8H�0詙că����o^V�����>c��O�w�PͮE��L��\0�T�	������\0\'\0\0\0\0\0!1AQa q����0������\0\0_~݄�T^��j�D7ma�`���lj/�-�>�MS������\n J�0�\0Yc%��~lz��J�X��+����Ph���\0c���%J�Թ~O��V��A���h���;\n���	g�K��H�ĵ�����pPF�t��ckX؋�Ļ��(4��� H\Z�4R�%,��+�+^3P\\C��KՕZ�`4���x`�B`*�Tˎ��?�����}�I@�*�<Zr}[H}*�J-&�l�\05vSqg�L�x�^�q�����U <�O������g o�&Nά���ˈ�A���jɰ��f�����KK@5=��7��Y�·#y����1�����Y�nY��F%�\\RZ!���X�C�_D�,��՗kwaC\'#�Tu���\r��SG�u6�US\Z�ڗ�W����ǉ���2=8=�	��O��\0e��/x���\"���k�f=.Z炿�3�K�Gd�7��.ۯ���h�JqWHUڜ�-XL���;3f�L��.u�4f�iDe&����x=[�+B��K�\Z1M=_h�	{��;o�<(�\0�[Ha\Z�\0�+[����\0f�?PIR�Ԡ�^�+��\'f#{Edՙ\r?��,&�G�M��W.�!u[�B-��bv\0?�}%��B��/!�ٸHX?A����o\nzF��&T�+@�:�sLq���j�HB͘l����U�z!����v���-Dn�B�\"�Mfߩ.NCb��1�y.���\0�x���R�6\Z��A��:��\0e���@�e�4�yQ6ES*����E%|b{+Y��@\r�g^EA�M�Z�t�e�lL�v��WV7P��������8�,��X�8��j�\0��ܲ��\'�\ZTt�	E��9 �!(�pX�ܗ���J�8*�\n��u��W~��\Z��q�RE�$b��B,����D�7ڂ���\'NZ)�+At	LA������\0��ذu��#��)Q@PE�Tj�QQ0��\ne�1���R~�K�[e�2{\\�C�~�P�F����a�����u�6�D@�a%]݁Qu���e����xC9kg�d��ؤ\\��5����WG���m�3ۙ\0����g�Co%ݝC\0.^������ ��p�.��%x\r����g�HJ�����.����\'_�O�P��W�X˶X� ��0kQ���˴P)ǋ��[�B%D�S�)LPy����E\n���������k�iB�\n�a��\0,&����[c\0yfÁ�d����y�kT4V�!�rކ�W��\0J:��f��V��4�,Ѭ`L�m�u����\'b߱{�X_����&�����6J=?q�MZ�p��`@5����:����<>�7o�-�lf����6V�j<���W�\0�.�ܸ��R�GM#���,\\��X�m�L/�!��ځs�_��1����nX2��J����\0*d�e�\0�~�8�]\r��0�O�`O���_�P�ɡ\0a�,Ua����YT�e?S��p\'�4\ZV��ślX����O��l`_��(5�%X%�]��-���	�eQ��\"UB����������he�\\ρ0 5u��_/��`B���O���Q�l�@��I\Z��T��ߤX��Ȑ���`b��\r�\'�J�*,Z�{���!q&4�!�U�IF��L��r;_lp�zL��<��7�\0v�@,�h�\"��=S(��-E�e`�P�<e�+`��.��h� ����~��Z��`un!s����)\nҡ\0g��d>��SC��b���D�[E����Vkw,�	�BUͷP�1��j�	e�\"�U��+G��f�X.M��N�#ߺ_��� pB�Rٝj��\\\nmw%(\"Y��O�\'�1�L���\Z�d|x�k���\r����ठ\\�\0�W��$�\\�[����?�UE�Z�U��Q]	�Sr�qf��G��\"��� hg��*���V�(a~������o�J�dE[�HeQȝ��\Zm�7�׿�&�U�U�E�Ef�@~��`nU�\\�7x��\n�e����Z\n���f���\0�cm�`#w�~�Pݸ�[�T�i��׏�Qu�y���Z�\0b�������\Z�0@Ƽ��P.]��ߑ4\'h���;j�\rKX}�[��)z2��֍?��}2ã�Ebe�̿�k�\\��j��.��l?b�\0�Z+�*G ��������E�0\Z��]7̨|���WQZ�?��H�WAD�%}�6T&�`���l�����\0�@\r��L,3j��L�u�U�\n�ϥ_D��mWKϢ_����дkK\\J�+��a��o�`HP��o��}ĵ��}o���.�f�XHi��M�Xa�\0�����@�v��`.𿠖��N�\\�\0mH&����Pi�E�Ө��%�����Ϭ&Q���={z��*�r=P�\"���e�>�үe���\"���pIs��c�`V�M��\n�[�N@S�a,ä���_.��zp��7�P�a��\0���D:�~9e�7�.����(�K���Ѝ�_*�_�k��a�_��<<[�H�%�k? �|?�p�O�\0��hbmVd���Q���1M�#a�UNHT��Ap�8������#}R7�\0t�\0G`S�u1��J��k�����\0H\Zq�q@��!��\n��m��5�r��e@���m6��ZT#\"*��Dt�OP��ޗaB�!B�׿�Y�{���T��͆9�P�Y�,\0JrW0=R�X��}������O�\0\ZT�\\�њ��t����PR��������!\Z��!SVI�Z,�����jϖF�,�����@��rU�-�.�!��lg�B|<�(�,_�eC�� ���n�9��G���*��O���n\Z+���\"�T����*uY�i~�\\��\0p�P-��8&���n�Z��_H-�K$[�L=���؀��T�%q�����K�v�ր���\\��B�Q�0,���\0�\\b�!v��R������J~�\n�aC��@Y��,���;�j��;�	wp�K�!KO���%��\'�aZ!ka���7�\0��O�Jz�b8�\0}��/���N����\\���� ��eT\0�g�/� ����$��V�ht?�*1�wV)Z�7\Z�aKU��z䍟o�\r6֩pS�f�k.7�@Y�s���PsNˉ���j&�o�mAX[�TUf��	\n�Gk ���\0�CXr����N�.�	c�~���S�B~\Zc���bT�\0�c�U�p���;>١5B���Dad���\0;�Z�����Ƴ=�����b\"�Y6�.�:XB�zܱ�l��펣�i`&69�,��I��D��\n$9���T!b���A[_Ҡ����WjL\\>�Ƒ�;��?SH>B�}+mj7�o�Ez�\0�%��f�\0p�\\J{*4��DTW���ˀ{h����q�U�8��>��iv�+��L+\n<e~ی&/��W�#m��>������?��T�U U�|%�������Ј��_�\Z���������ڀ�|����\Z������\0�\n!o���-�/�1|Q��rƢ%�>P�\0�c]na�_�4}�,�\'\rm̱N@]Q&�P�_ԬXz͏̖*\"��\r�aVY~��b��>�V���zl6kA�����\0���\0P����񽓡�A?�3���,`�_��S\r�\0c�\0����4���B��z?��{����7�U������e���(��?�\"�V��\\P�]�YD	b̈́ë.���s�H�gwo�(-��c�lSX��<QR��`m=�<�t@������A|]@����_p?�K�\n�w�<S\\�\'Ĕk�_��\n�#��ڋ�M���P�����}P��Kj֢�����u����\'��U����.�k��6�m˪�\ZA�ư)K�%���\']S ,Sꮏ�*\Z������|�\0�}�x�G�b��O���%�{TD�\n�a�׃*lBW�L\0��9m��x<5\"*��U�+����݁d6?o�\0#I��\0�6�%����w�b��j}�dX_�qgˬ\nƃ>�U��ȆքFf��]�\Z��׶>�ˁ�\0T_�]����XK��\'�KYz�\n�=�?����+?���Oa0����3e�E,ѳ�!�8�8X���M,$h�m���\07�-��D�M�K\r}.\0��@)�Sg�7aуm��䠿�D�|d0j��m+�\0k�؝^�U�����@��ľ���5�c�]x�\0�M�M	C�\0��/�P�\rܪ����JN��d*��	�92���1��Bԡ�L5�>\\��+�\rU06�.a´BmD�YZ!:�(�l��%Y`DgX����\Z�赮Nmd�5��?u]�s�vn�L;y\0 Qh�&J�c��;d�\0m_�?g%_�Y�-Ew���Hx@�U<Pt�YT?0-epv�������AE�Y)>�\\��R��]v�\0a�Jİ�EGF��	�ۖ����4��T5�\0��2���[��B{K��Y���䱯��k�\'���E�/��	�ɇ�)ck�\"���;q�Ju@�&��>�a{�#	1k�	�=���	�Yt�ĤTh��B��U�1%�+�� �rP���[Io<��HIk�J{����i�U��i�\0��O��(�\Zk�g:�mN���ݻd��`��9�/®���/w\0c�(��j���!��\0�L-i\Z�+�T1�Ƿ���\nV�G��TJ\r��$��%���ĄPQ\n�T�U����ŭ{i���r���\0Rt��X-&��Auw\'D�Y{Q�Z��l>Q,�4���ML�,Ej�\"8\n����v���Ț%�eK,\'���>����l5���h,Y�A����iF�i��ث�F1�1k�\\���HP~}|���,�S�u�BM��\0%�*���)E׉dUQ���nXU�զ���p�f��F�J�ᙴY|�?���è3AU���?��(��_��Z�U�u����06��K��-V�����6��\r4`����1QCjYcRˉP\\`8��\0�m�s���\r�Kx=���_�G�\0�?��k���U���@����^]�P�����A~ar�T�Z��e�o�?�?��Qha,\\����USy���,γ�\"����\Z�&ݾ�.�b�����CY�]�\0�[��Lzλ�Oڍ��\0���!\Zz�l`\n���������T���g ջ��,��Y�;|�a��\'\r�t9��� ^�f�-4B;M@q~/���P_`�\0��*�~`B���A@�T+\r�0J~�!�NC>v٥yJ�A��\n�c�WC��5�;���]�k��CH�WJ��+K�\0��\n���\0��\0B;?�B������iVi���\0c_��<]�����f� �)>�*��h��\r���H3�ܰS�)��q�)�֣�:~��\0�0ׂ���l� p�}A�V\"�s�l0���n��Pv����m�K�lŮ��G�P,�T�:�͌\re�U\r��	�:0�4��ę�D�<_�������X�4S�h=��x+0�_�N�\0J��(Ռ5\Z���\\\r���Ǖ�6[�����aA��[!�\"����h�\r��p�!?@`7�Rj�O#��\'��ǀ�����+=�0!�JԠ�����	�Q�%�j�u�h��K,���.:�-@�{W\r�C?9wT\r�Շ�\Z�C腕.G%3��}�-��`K��ѲZ�(T��1��v]��ı����~�M	��x�F����c�R�X�ծt/�u��!���%�2������m*}��`j��6��!��}�S����R6Z�L*\0���VrMS?^ȑ���ĩ5�C��ʌ %�Ji`A\Z?u�1!å%Z`��0�.��M�e��M�8XS�Zb��4�!�pi��@�e��S}m_�\"`<�>���]�-�%Z^�.�G(����\0og�(��Uj\\�З[�.R�I�(O�.�K�����A�np%���Yh�����Ul��qR�\\A�:Bc��~��\"�}����rە����\0[�B�IB��tRJ�|�����4VJ0ڦ��6��\0��\\��i��N+�h�f`ɶ�1X}�2�(�KV�7F�x��Eb�	���f��@���S!m�q��F�/G��P*������٩T�N��Ru��UR�\r��KX�Vy��?ѠA��j+8e�ž�����ͥQ�����N[	�TV���4�ilHS��EB�ʂŷ��\0U]X7�b-a8\0@\r˖\0��1�`L�2�K,��b-	��o���N�-x�1j�g0-���|�t���A@�Sw��I���֖d2�6\09�]R�mq�6�jzb\n��lB�����0��km�Yr�T�b�|/�g���,cB�,�J���<\na˴�E/��\\���HR}�%s��6�[/EGXj�*Md�D�qW+�\r�T�|�r�@�*\0�O�R�Y��CP�W_�r���Bxۯ�mX[C	[����f�jly@d4g��U�\0	x�hH�vDh�N����M.>���n{*�����\r��XbF���*�5n �)h	�q���?&,lG�P��P�mfTX7R�?b����e��l�C\'������U����0c�+Me=A��И�����Z��w� ���p	W�z�ʻ:W�\0�EE�Қ��B:�F�|]R	�T>�L\n0�Q�BDW鍻P�,X~n�P��u�M��WX�}$��6����jgB]�@����5�DASc�AM\Z�%AV���b����ƇؤX�ԧ��b�it���ں^\0�l�Ρ�\\�5t�o+�+���{��`n�1�}y;O�|��zG|��%(_�����4g����)G\\����X�Ҫ\Z�U��~���26/�CR��-��0��5^dHw�\n��D\rs\0RɁ��Pɏ�G�����\rw��I{L�5�ϟ���r�h����K�>AT1G�M�%����_v؂��|����\r\nXZ��u}���)�K��m�x����\0*�(%�YV���� 0F�R��ְ���`]�K\"��	{7Bx�\n���Ŏ\n�*��n��DGhe�cv⸡Z4�H��X�Dۿ��zq�A�I[�\\,c;TeB�X �ތ�>�UQ\0��B _�Q�A/�+�o`Yx��6�)��J�����YC���Ԋ���N�Q|�kՁ��!)7(�_ڝa�U��X��@�L}�<..���LR���eT�Q-����\n�R0Ղ�eWPԕ�J�&%©Žt��h�x/ghAa#Q��c�B�Z�(�T�T��6�J���T���?]�G���q�Ar���lf�յͪ�E���1�}C��\Z�~��X�;H�+�D�\0\0�!v*��\Z!���E�e�%�����W\Z��Fi�-�>�|8w��v5���27�)XA߉�~��X\"r@�ՔAK4<_����;`\ZY@��F��,WB��]:GX�(��\n��S���/��*J�r�e�Q*?�����a{RxEw��e���~�»N�a����&[�b��(���e�$�r`^c�!B����kv�p�����>�W�PJ+����ʉգ`�ו%��4�.~��SVŶF�i����\Z�\'8��l�[���u�B�+�\0���(�z�LC\\x}�S R��P��A��\"���,�B\nX�ph�U��ԑ�h@�KR��0P��e@�O)jʋdmf�v��A�o��Q1��ڊ���B��e��]ia_���uF���������s��F�a\01D�i9jX���O�N�tW +oZK��\0r(\n�o��g���䲏�z�W\ZYs�,��v(��Zl\n�l�+\0��-&B�ga� ��{jS�]E�Y �&m��\Z���pB5~%��`�����-T f�6���+��ą��8WhH���\0Q\n4��@Z;J9Ȇ��c�˝c� �x��+�&���� K�WH7B��0��֋�\"5��KU�����G�vږ�~*5�:o*�oU�-�W卮Z�\n�ۉxv��@K�IW��:aݗ�VAh�`�{p<�������#�@���ن�O�X@�q�N�e��\n�4��!^��ȴ�\0jg�Py���� !o����\n7� w���W\n\n֝58\r�[�?\0��c����\0m��������\r�*<\nLs��dc�q,1iczT-��g�@%\\=�iUs}&`ҷsQ��h����o �\\/�$�=Ki9E\n\Z�\Z��K��5(����GS\n�j���놠��^	;�kٮ��t���.�u�m�y�n��? *>�,Y�I�_��-�dVB��p�$�s;���~�[=X�+��Q\0\\şcF��@<��y6�jB�Z�V�O��Q�ŋQ�~T�@�a9���++|n�7ժc:_���I̵wp���PƇV�i��,Jsش�h%��Y�>([´;]N����e	�8d���ѓJRU���\"���<���z�C�<�j$�h��E)b����c��N��l*Q�CzK�-�C4�,�yDZ_����d�8�7���j�MX׍�z��cUD�;`�\n�j�{<b�\0���r�v�j�oۅ�y��\r��\\\r��\0]�@�&x�9[�S4\Z�\n��\r����$��)�x�?^Q��K���T�\0���z&@�ܪm�B�f]�\"�aG�h�+�ٰ��ۦu[��������@�,*{{�#m�8�,O�M]>ޡ8�|�AOv�b���@x����D)��%[�w�4o���)��K����cw���P���\r��V�(�2�����9[�Z�P hv�[�����-Eܼ�j]�+q1(mӜԱ@�-�:�yfZ|�����KR�����*��)�{`h�Ҡ�d�/BL���؜Um��F���O�`�I��z ��=���[�s�c�&�|v��D����IJ��x��ૺ�zA�7��_6B\0���b�tJ�r��]�S?�1g#��)g%2�a\n�]Z�唣E��Pk\\^u\"Ѹ�)O��T|j�#�/ZqFU�b�#�1a\Z�Pf�`9�j˹W܋\n��AT��f�*�3���kHf�h�V(. ;��wK�ݜ�00Ftm�qH�\'�s��5R�N@R�Z4ƚ��q�o���dT!��H�JZ�\\��Kҡ��O�ju5���7���,��vÃ:�j��*z��@.�L��m��B�Cq�&*���צ1\rWe�����x7�)?m��W�EEAP*�E�V�} -/���C��O[�:�jR(ihZ��f\r������\nZ�*T�w#�K��V�U�V/7���բ@�������*n��2{z����l�J�N�a���!4�V��/�6��9U�߸a�=�tG��UZ?�x?�@̬��Yv���I\n�)�\0[�FE�	�%_�(�7@x#M�ެY�C\n\r)6��,� 7�[[�\"C �\ZںlU�6�.ap�ue�q�k�\r�*��2*�B��F����؅�C�n�=��Q#x��\'��,5=Q/�(e!�J���a�H�\\ڰ�S=��xS�*�l�����n��[#d�;�*\r��4\\R��@%6�.�c(AJ�R�\\�\0��vu�M�\'?}�U~d`��1}�#�:D�.��t�<VMC��*Z�_yD��0T�v�h���{\\���`j�]T.9�^����b��o����9y\Zt���8J061w�\\�*r@86$a�E�h����+�B�q�QB8G\r��	i���5���G��K�%j���eñ-)����^G@��\"�����*-�5|�������\'��4��5�i����S/�����j���A�\n@Ǘ \Z\"��J_M@���J(t.o�V���YK\nߥ��yÔ*Ҧq��f1�XP�Ny��)�Q�R��0;�_p9�\\��������\Z.�\Z\0�m�@cz�P^�S�\0`��q:�)g�V\0U�1u���؂�W��A�)m�i��֖��L��\0.4�3I��9��J����\0�J��6���\0L��\0��.�1Z�R�9�9����.�XG��K|��Ê[F�M�\0\\���\nZ������BP���7��+$�E#D��H(H*�(dU[n�\0X��(i�)��X� �[p�Ѳց���p����f�P��\'���KuP] J�*U�԰�{p�T\r����*n��O�/9�\'Tû�ƥ7���n)�=�h��;����lG{I�M/l��D�gLŻ�g�3epe�dX�����+;�y��3��[�m��mW���{#p\"����cX���\\�x��#V\r��(�RPB�PHF�r�齨C�q�\ZP��G�����E��rrq�K��J8��\'�P�Q�P�7�h-��M�=;>V%9�aD\rH�i��mV�\r�kk�����5P_�{i¸a���1;T�\Za��0_�\"(�i0����Tk�u(bȌᤃNK�`�k��諸J�?g�j�*�\nP�\n�\rj�ЁШ���qY��ⱆy)^�]�-P9�P��XXho��u��UA*2��V�2��S�Q�����>�2Ӣ��v�\nBG]�`�\n����}}���Y�\"\Z��U�Y1�kj_g��[m,\\�%�4~���MM�4����dv�Z�+:�O�i�5s���r�!xΏ�K��(�\0���C\n��\ZnsзEՌ��x����5��$uo��.���#6�ȣ�6��fp4��~�W�V�CpZKk�!ԏ�బMK�}��KNiM�}uk�Ky�\'e3�m�\rX�N̄�ێ��HU��E��ף\0[~ٿAZT���ˊC��\0�����H;���e�8\rR!B�����i����Qbj0���E�XtY�o��EL<���Ԡ�`�=^.��W*`�\n��TPQ��~�v�^l+���/V�^\"4�oi�OS��3т��\Z%�}j������I%v-��x�=�A�5���r�\0� zL�ƨ8m*t���.S%%��C �,p4]���#t[��{lP@��_P����b�ė�%3[䰥��y�̽9��p���T����oP�o8\ne��l��o�0(<�WQ�\0iO��vr�s�O����I��i�S#�PRSnPX�	X(���\\�SM�U���d�r��]���ԫ�[D���qQ\n��z \ribU�C�� ����.�j��l�и����#Uh\"<b�\0�zy����,��)�v@����%T�#�+�&���{���B�\r$H�� �h�_�s�X߃����=T���D���H�V�F�j��`�\0�͸�Q��������q2AE�Z��=� ��﮷���\0K(n[m��.��`��x�n;gu�\n�{0]���\r��#�z�ѠI�v\ZcE�O���tp@h�y�U��B!]`j�D�a;r)D12#Z�.�H8��}�P@$ �ߕ_5A=�T��`[)��h�+F��5�\'7�����\0�ESu~	��l]\0�ʨUB�V�`�s�&�Y)+���j�S�ؚ���P�ө&��\0�I\n�������`^�}��b�)���D��W�BY�ص��_H�c5h@5�w�Եᢞ��h�:��.�����{��㟬Z$*���@%GMp�oK���h\r�C��pX� �����>�;�2O�Er���@~��r��22�׀)�(n��K��@͌eJ�Y��W}>TzKc�	w:Ak����^*_mW���j�BB�1����d >�?1���r5�4�R�X��\"n\"�T\0�N�<���>�ݠ���a%\0�������-EO�P~G��@R��h��}E�+%����0`ۖ��2jsJ$5�\\�E_�����̞OV�ͩTu2��%���,˵QL�9�m���L.�e�<g�\n��5���֙,��J�6*b����Y\Z��Tր��nDy��a/z2��M�v�~�4�0�]�*�`��#MC�V�M�]�j p�\n�fZe]@���nw}�A��)�kՁ�(J�Q-`K��\0B�gJy��)\'�������p�y<�F�#-�uB�E�V���ڕ��Q�����1hX.���Y�Af�C�SH�`��Ս��Y�२�\rC��J���sT�m���GK%��J�-�.����@F��e[��l7/�S�Va�|+%y\'��D.��%��B�����@(������H�E�\ZsR$8((>�k������(���%(/͊[�!�s�/W�or�����\r��e6�,��T��8j�g��->�!qOV�t��`�4��G�����]�\n9�Գ����ji�/@��\'Ƃ��1B���IP,r���O���V�M��\0P	^r\Z�A��Ƣ	{�\r�\0@T���\"�8�e�qU��<�6���l���[�^8\rl���sP/�\Z�Zte_�F�+�6�1�0�������K�WG�\0ʆ#�5�[V!蒠�\ZZ#S�B�]�#Y٫�+�4�a��̈w=Mr��U�0�9+��D�4t������HՐ)��rS���F�]7�8�P��T���{�J�|e�����:���4bݼJ���W�]T�\r�K	SiH��#un��Iqj\n���O�\n��\0K�P�ڏ��\'\\\r����C��D��w�f�����(o�2.0��@	d)��v�\0�d���]\n}�n����&jӓ��ю��e� �\rHP.���ST\"�����1E5V���j���	��L���%��+���!�͡��N��	ZPi��XW�ώ�r $���r��\0��F�s\'��;5	p��z���pbv�+��\n���~�\nH{?H3a���bc�f��V����,\n��׎�P�}�<�]�����,�����C��Ϡ��4�zﷃ�?��>\n6�MEKI��LX]��\0{4P)Z�\r�rͣ=�.]G\"QQ\n�Q�!bJ����T�j�Yg�HV��*#�bPDx#�����V��RC���˳H7�.!C�Q�wSG�,�����6ς-�o�h�=�*���������J⳦d�|��$�v1��!{��+Џ]z��ݖ��>�&�����0�Z���������)}��a�D��KQb4pC&U?T�H}�B�~P3�ћ�+�8�����ᏞDCEdV���]�����7��	Kh��6eZi)0�J���\0\\��S�����1�cR`9��J_>�ES�b�݃�南ؽ����\0?���\n˩r�T�n\\K���jB�#�\0�\'B�T,�u� ��u^˩\nR��6��~��8�~��4z8O�� �a�l\"��K^1�+ܕH|�챋t�j��\"�yJ�j�YI�ʨKՠ��\nA�[	o�>��?���]\"�gv,�.������FG��`�EQ��\"��.��D�Z��Zj����iG�N�������Gϐ�,�H�W�1���߄�^V2������Oݏ^�����h�F���s-#k\nQfK���������b�p>��q�_�����X��o��v�mF�������_/�k�P�� \\�t�s����.\0Mܘ��Х5�+v��y��P��	fŔ��(�Qi�M��k>ܭ������lE+�@\'�l�ʵA�Xm ��^�[N�[.�Z!�E����.*?�ݥ�\0�]��#���]^W����lWZ\0� ��P�+��(��\'��u�L�X�ۘM*S^\\�ŴA�9��:��ci��C����\n\0��1�D�ĩl4�Y@�>�\'�6)<\0��/��`R(��ʒ�\Z��B۶\0D�������]˦n��\"{�����G��\Z�f<�=�b�����M���L�5�����]����h��Cҗoe��Wp���;�ΐj��{E���(����\0\"���w�?��5P9C��u�j%�%\Z�u��>wy\"N�^�\0���z�a[q�K��H���{m��f���{TG��ֆ�Q���������i*F���Y��K��������C����,�y��\"d2�\0ۓ;d��U\"�\rg���q�Y���ߓ��؎:�z+�Z	��f���p��~�Q�&����vk����^�OA`�FC���:%􎁨Y�.�k�\r�BY�����c0-s4k��>f������L+\n:! 	��[���U�b)�:�(�A�t)uSB�U�	����6E��k���]����bԐ\'[/�2�y�1���䅚m��x ���Z�1�~R]��_�h���|��̞����89�������G�b����<�c�-@��.�V��A�,���q���\"������\rȭ~}�n��%��V/#k�렪u�e~*S����x��O�]�����6��(6��;c�B�H����ȡD�+���尩iA�(���X!̹�dJ\0\nA�������KcߦV����u�INk��l���(\0�^&t�A1�z>,+��F�-`�=�.<�v�:�[N>��ο�\0�1ff+�|�|�(���̎X�q�b�\0=R\rw)K���vQ�\0�J�a��ioZ��4���������+J0��&�Ⱥҏ�Ķ��,h��ɰa���	I�%��}m���7�|\0	�H�] �HP�YW	Q��&Z�lW_��0�,��\Z���\0�D ;6DTil�ڡ�/s>ѐ��lVt0���GKb\"p#t;z[��R����B5�#ŕ�Ƴoh���P(i̎��#��G���\"\'�j\r��8�!o���x+\0,1�i�2W-B�YM�PS^�`/�֪ut���RX����*�Qcք.��\0\'rYm���O\n}K���#g��ï���@HX�X>8���[�1=E�=XS�6����K�Vt\0��ʸM���=9g���q>�$�ڮ=B	Z0���AE�3�>[��M{�0By����a�1^D�fE{��+�6`|�n�I��Ke��B[\Z>ؗh*4S��\r[�e��6���8�/^�Z��w!\0.�H�˚1pu�t@AG��=Ny\n�0��</��]�i���ȋ��D�\0w\nѥq��J�,@�ra�:�\'b����\"+�P�7�+=\"�2i60����1ܴ�\"l�-fᴠ��q�\Zy��M�Wc�*��T�a!Q�S*�cg|0�>���:��S;n.�A6Q�9SH(\'��X�ج��s#��~��yB��:��O�ő�8�S��=�l��DÄ��MҶ	�1��g�z<\"<���!ߧX��ܔg^�1��>m���d-���<a�$��Ve�H#ԵD�-�O��طK������DX��4��4e(�(�J\0���\n���a��/!�[��1�t��O��<�ezU0�Z������|*��C?ȰW���\\G_���+�dd�����(���K�A@j-ؖ�Vq������܆�V�������18)�/�Q}$~Xr!!�Po���Z|�vr��;.���4�Z�\0��JiS�R�_!�\0Z�&�E$��%��0H8�Z��dR]�O���V\rBhkq�\r������p�:�S�\0�b�!M�?(Q)��AUgQ��K��n�f��\ZT5��`cȨ�\0��\"���^�o����DQiN;�؂���:n���Uu�Sv��\0� �\0j�ʖ��5�T[Uý���\0��M/`S�!��G�w��A���x&5A�JV`�K���ǗЄ�S��0J��ȡ�QR�Q�L*�cp$J���e������}nV��GTE#<���F�ܾ����|��e@�]�ĭ^Y���?�s��*����/��H��^�*yRK��CTcW�hj`ņ\\%��n6��f�īE\Z,�b,�4��[e3b�OV����`g�\0닟�Ps��W)��>�U�(��1*�K���z\"����쒖�!E��XeK�<��\\6��*�*-�Z8�\r��O���6u�����7+z�-B \0\0 ���H�U��\'q�����k�������[9j\Z�c�1Vް)��j�]���)G�\0\Z�L��+f�O��I,#֞o*��^p&����SAE�����5����(H��xɈ<މb���\0�]��y���`�P����,�~�*6�*�I��D>�\r��Rho�iOM[~2 ���N�es�/\0�\"�\0�+T�\nY����?\0���bM��-<[�6���������y�>���t��3в�|���-o���49��h�����T�oT<���%�(�k�m3�=�v�y(.���\n��O�Vz��y�V����N�d3z�����S`4�A\n8�Үգs�Q�Yw��4 \Z�_\0]�.m�0��m\ZKS�RE�zh�T�4g�>�t�KW\0��(Y�cY������Q0����i�I9)��+k\0��A��!ĩq����Ĩ\0Z�����A��N�y��ǓW����\\���na�U�W�d�V�s���k�c�iL2��\\j��$,�����WT��:Pr=�qx���JC�#,�u�-$2����5��p��`�\r}���8��Y�z��F�v�X�e@5P�m�f8��&�\n*z#�R��#����ehoC�b_$��R���)���mD��.��ӑ�j�)k!8@��k�a�?�-ڪ�d6\Z���M�nZ�Ҷ��]�#Mz�<�k� ��Y��H6��}�ʇ,���`]�b�����_~�w0���_��:T���p�uK<yn 7ؖ��9Q6\r�K��*�:CS[~��\\0���|=>�@�Xõ��A����s����}@�\0%��(��Rk�0�]P64 SK����!��\n+j�e&a�<T�O��tv$^�{˖�l��KD�\Z�cG.	>�/����	� ��������ɂ�W��F\r������|J��)�ꉫ`\Z]���K�n@Z�d%�ҳu��j�|;��=�^�@;���m�?U�P�!?+�e\nk���C�m[�e\Z�uP��a�$0�\'�+P��@��J���.�:���2��_�HE�^�-]�7UM��PY8�k�_;߸�ǧ����#��`[e�\0y�e��%M�F�ϰT�7�qy���k����Z�����\0^E��?���E(�3�Al�^sM��\0E���O�g*��~�cV���<2�d��|���<yX%b@6AZ3����9����kV�Z�IRQ!���iK¸�}�۸�١OO�/H�C>�xK��<�cuHB���M4U\Z��I-�O�p��SJ�r����P���`0y.��\"vSԩ��C<��҉1�`Y	�K��F�k������������\r��W�����Zp��@P��o������b�	�(���S�TK8�x�Y�|�$�t�ܣ]QAig���G�<Ї������_�E^���*����G�BF��4Ĵh�o��JR��B�|�?��Z����s�;R�{s��f%�j���t�\Z~w)H���۔�ƪ.΁��\\3�N��\n�J!�~�[W+����fR�8�\0^r��觌��u�\0�0�dJ�o�*a؟��b�+F� )!AG��O�ݺ%�e|ce/{sL%R�����a\\��4+Ka�.U�EG���4������ࠏFl*v����]�p\nRph�Sj�T� ��j�@|3Z����$�N-���żM�7�q&\0�b|=>zR-F��Mܺ��s�0(\na]�Ry��b�S���?pߟt�*�������됫V*�b���>\\|��Koeg�k��t�@�/c��sR�J�ĨR��)�\r��\02���\\GM= �KSw(mD���n^���J�D?�!\r�٧_�˅.�y\0����b�*����e�ϩ��,T��_�b�\n��cJ��/ՠ\0�Q\0��cx7��h������k��\\V>qæ>\n��q�<&eB�r��\"���v|Ȳ\\%	Q��@��Q��� �J�1[~�d�\0#a���B�CR6�Eɀ��t\0�pM$K#�LڴUe�(*�t�E`��K�lQ_�����xY�	�R{�]�`�8��q���z��TV	�iz̊qI`~j�7%��<m��\r�I��c��:��\0�K�(\n/��v�5���\n�5+0E٢�\r�[��*%�Fњ�@R\'.��\0)���Z�>@ m4� Jn����Z��km�;�\0�����ۇ�5��m؅[�����)	�FO&.\\����z�+|��P�@�W�@�z^\0�U�|+ah� m��M�:u`�Q.3�磏�am#�<��9�+����0D�aX�c�\n�d=P��b\ZE{�s\n��ֱt3*\0X�弿����!~����j�,�IW����_�B3k�{�S��������`��QrNkVn���C[�7x�M�\n[e��k,�ݲRհ�0�~�ks(n\Z[x\Zn�d\nDM\0�L�)wE?�u�cuZ\"�A�f�y1�����<�kR��r��ZC��;�v��2i��1�pŴ���Ir�����r�(�\"8�c��.��w>w�1�\0,��I(K\n�ڶ_�=�f�3<4&�\n�w��2s��(,>6�;��l\nsR�KT,Ӓg�F�	�[(Ty,3�]���G`�TȈt��C������ �8���oɲ�h>|\r&��Ð�g>�b�^\"(��ږ��)�1�\0̱M��D�͓��\Z�i�*��6D�*B�=��X�g��e�ɩ�&�S�n�yi\Z.�����ׅ~�[*.(�N���#�\r��gc-e׬5��Z�x��V�EkeGX�p��o�	���1�	�\05��^�%P�P����g��S�;�z�A*e�?j+�1�9��G�E��b<���#�*���D֮w����:w�P|/�Ec��}Z�7v�U}�T*gj���\\�r�3�ۿ��^�)\r`�A��&	bg0��J��\Z0�~y�@�칼@�-+�_�\08�L|���ح����J��\0KB�H�����D�Wh,\'ܵ��kb��@Ʉ0�`�lN��v&�υ�V��j��h�P��Z`�h;u��*����JJ)hx1R�� ��M�)��gݙ����g�b�IĨ�����ڥߞ!+������п��Y)�\"%��|2�!*-�#x\\G|P�b&�n�����W�������xJN*�%A�]��>�ꑀ\Z�$N��&\"[�\\�~�N�hƯ���J���U��\07�F��K�N%=pZLVd\0�b	��SR6z�M=�ծ�Q��SZ&:m�a��ek��5cP(l�\n�i��<@����F�!7Q�$y�0吿����^=x�t��q;��_�ɤ���.��j�F����P�@� GF�;6��;��W=hEk��2o�-谋J�z|����&�j�d[z@�U���3�b��M�.�]�Qh7P(6Q:d,��w�]\\��(	������>6�~Q���,&�5�R=B��R<�\nԈ#&8B|�7H�U��\0�{D^)A�Ӷ�����\0D�6�l��V��0�)�y~XJZ�%�e�U����)��k�.&��~�3�.�\n����d�\r%޹ia�������%���i���@��f�Z�V�*��\0Ҡ���x;\Z����E�lH�Nۅ\Z���?�P>\\ �,	u�E:@�= ���IS�^��Gҡ\Z�+�Op=YA-�W��E�{�݊H+UX[�\Z)��>D7�W�i�\"���>�����+����$�h>�ȋӮ�-p8ר�4n%�꣗�A����\r�\0\'珂}�If�;�yV��R���j��$������~°B��֌���.��{��7����\Z����l-�2]�\0�n&��\'\0Ƃ��\Zji���U�%��f��X�ij\\5��!TI0�������\'�߫�Z�3\"+\\`D�r\n�	lKr2�N�^@?g��%�P.��\Z���x^?(\n�~w�W3]����T}�4�<�%��&�~�\0�˶b��$��~V^`�D&Bm��N��V����\0��\'ǒ�&b1Ò{*߰��#�+<�B�+�DS�Qyj\n�.~8�[R�!Z�M�D\0�wO�D}\n���C���`����FZ}��#%�.�\Z@F:l�*�D^\\R@��}v/��]̡ru_�N���\"�X���c#KB�]N�Vt��!�J�C�ϛ�Os.V5�i�ʄ���t.�x��{FF��|{��+SZ�۶+l����_~R¾eޑ��/��)��̃O��\r�΁Y�;�Tu�T��\0�^���/l�&�g	��b|�K�<�A@���,�y/\\��;q��\0T�֡�\nE��i��B�\0�\nτ�Q�qyU\'�8�4�N�����~�_�b?� \"]I�q���Jv��`�z@Tbc�Ix����T\"��P���(�`{��y��QyKQ4��EN�^�.�F3���:U��<���R�y]��ȅ��\\�s�\r��_���h�@��2��}�Pho=#�h��M��BK����Kn�F��W�/h�7�l����1ЉrHB�~{����p�\nb�RVk�y���?��;�w�-Yb[#<Rژ\0}�\'��1�ü�=Z^�W[<��\n	e\'�­\Zyj7���b^N��y������k:�`��-���TR�Z�R��v��h�A��q=�\0\'����q+�Sq�\ZV�\'ʲi)!��ĥ��`	�IU�@�E�O�X��)V�����T0ړ#P_�-���� B��1vr��\n�XFj���= �~�����%̟����\0�E��ߦ\rҺeU+�3u��9-�Ae�W��bL�CܘwZ9�p���\0���\0Z=|\"f�����_uR�\n���<�,x��- �A4rIx?\Z\0?%�m�K�����?��\0�\rXt%�C0A�6RU����0���!.�J�\'/X(�|�BI�����y�龼�io8	H4�h����-7aP�j�w�L&�*np�q�u�q,#����\r��T!o+1�!�ĜK������*�Іp\Z �`j��.�6G��ت~^���(�(#�i\\^��^�h}TjϿ ���oK�D*\rm/�*#�G�mm����\Z�Nz���\0\0Px|,K�\n?�.(>,�fB&�g(�=�.�<h�a���Z����PW c�>0\0R8�*b7��\0����SX ů����|Xh �CϠ��剻�7���@�xѻDV�&zH|���Pn��Խ������wu��60�\n��aF��ހWh��B,��y�&1�h�X���ZWO���3��--QJj-�*���\"�u�/0LEv�M�t�O� �\n�\0@50�M�S�`����\0�%Cc^\\Б��\\���:|\0���e�E�`�2�D�j��w���8���\0��y��[�~Oh�������ß��{J���4��aH��4\"\r�\0�|1�!�eq�X���d��Śԭ���Ho���p�R��w�\r�P蛆�!��v�n\0~���KWD-h}��A�\n�W�j5���/�SG�h�k��E�?t���(*�ʈ;��s��#�w����_a��0�){�ahY[Ft� �!���;�v��������\0vQ��� ��K�]D��w�\0���ܣ��W�?U�YkM5�\0}0c��JG����V) �Ք2��.�V�T��ZK�����3:���Ņ�jFI�����@�PQ�9���\0G��-�ɷ+��Xm��c��~����CK$���iN\r�B��m�:��u�����?n(�T��\n��r���X(4�\n�\0U�����)AvU���*��߉U?����gF�������\0��g�f��3K��Z\'� ,\r��\Z����0�WPq�(`\\$��V�HAeu%��R�6S�`\Z\'�&�W{(Pk�}��U�4�O�R)��\n�\Z�UoB��cC��*Z�\Z��2�ˡ�Uȅ*\rj�\r����ZP�����24jub����?L�\0�o��g�Z�I�t��R��=�a�6\"\n!|�� �ka	�r��e9��\"����>6�-Ԕ�Kuf�\0�R7�1��}cY��(�2Y,�?���UIQ�漣��B�Ŗ��_B��=/��v��ct\rE���2�V�j�R�s=�3�[P���!�,�FTv\r�E{�W��w���J�]���7!Y�[+\0�DE<\nф��kP�j�l�\rq\n����=D�+�(l�A�\nB�p�1���:��GYx*\'M���u�c ^��G�����\"�\r-.�K]V���5�z0�8;�Ȳ��+�?�XzQ��\"$���#v)ȑ���{,	���f)����)\\���?���T��G\0��a.����,&�>{�QR8}��!�b��LPZ@Ky�@��ېWP�V;�j�M@R�\\\03�r���!YLյ\0�T�g�@-����\Zh����\'���ە�<Y)���W�HO|B����(\\%4���\rmX�\0����_�L�|h��M��������h�y^D�jS���_��\n����{��(J5e\r�;�/�vv[�@����˙`��E�LvV6�V��\n[CC���Ng�k�Ǻ+!ȓCDGQQR�N��~>��+��W����y�,�p5�B��ضj�+q\r��9 K� ��R���o�����!�A��T\0��0�n+�!x�H���c^U,f��Z�ތ�@�5�\"����R�}a\"��Q7�\n)�%X�d��T���\0	�K�O�F�*��a�lf�`����ʸ����~<���~^�Ia@J�w��o��c��#�/t[?��i}M���ɫ>�P��-�h��.�B_�uCJ��~�\n���T걼�*|l�6�� :�6�\0^���o2�����:�\01p����Ʊ(#B�h��\r�\0�Z���\"��U���T!O1?���F�����6U�Dq�)�\0\Z���W�\reܮL$�8�}��[��׊��Z��$RDXHj	�����e�1�#t�{�7v=��C:\"��D�^+�P�ߓD�D�tvW����PXn�>1��|L� ?#Vv��%] �N�*����|�#�������D�=�\\�A�Qh)�gt�4�O�\0��^�!F���)k�[C�wuk!�J#���O� \0�1��:��w�V������o����=���\0��ן�`�D&���Ɗ,e��If�\0�����1�`Z��Թ��[t@[O0ϡi�m5��@*%�����Qy-��a]l���^�����\0H��!�\Z����j�bh��<b���B���Ĩ��5AT%7Q�4�!�4�iy\0M��|\r:�Qr��/w3����|YP��\\/�E7PW�$��?aHP�Q�1�1���B\r슉i�G��^/O!�\nlUu/v�6�0٤\0���f�\0��W�2}��~���v\\����0S�ߟ~O��y�+���e\rz5�Q��-r�j�h�Zr�\n��j�B�������-~�z�uZ�n*���J[J���n�h�\rGL*1�m/\0,h�u�������\"�CW����v(Y �C	B�-�\ZU�5r�޶Q�I�~^�ߴ3s��Z\'EP\Z{H���]>�|)�C�AF�>+~0�j��P}h<\0!�Z�Q����g�\ZIN1 �Šj��Ce�\n�r��out67���ąD(\\�P����6	S�Drz$��Ck�b�b�a��Pd���a����?���bgВ�Gʍ��З��DR6�xG�/�zGM�8U�)�z��~�l�x������r��2LM�~� �6��-��a��}ۑF�MD)��jY�.�͇#*Q~Q/�0��\n�cO�J��B��V�n�`WA��r,lա�!2�K[*uc\n���4��M����Hʛ������*���4��C�_�y��):�#�Uq�\"�=��8j���������[�eQFF���§�P��y�́���T�?$9�47�%5�\'�>H�>�}�)�t�X6#�D�W��� ��\00Qţ56�Pn��9q#X}ޕ��U+k�ă���h`�H�$�:��@�ű������E����1�]F��^�O���\0\rQch�]+O�ӥc^�K�a�m(���(�Mb����:\07�#��LOr��0х�W�i� y�\0��\r���q�����ˀ*\Z�쩯�e2��W�3j�۽J���?�Rd�����f�@����Q~�dV&��e4]h���\Z��C߱J�k�\n �`��~*%��R�\0�����C����,\"0�!��-/#���L�Q��.0L���-��fE���\Z��Ss�OA����2F��\r\0:>ۣ���iRİV�鰻ʑ�X<	`�P��Ի^$g�\0ӑh)����K��R�x��uL��B\r�Ȯ��TW�*�4)#��>�P\"2����d\0����XV��9�~>Y�:���a�j�\\\"�sR�eu��\ZU�qo�;(k}E�*���\Z������u @�JĐ2T<��=�Q_x`��B�U��M�����*N_�?���d�E��������Qp�~Q�c��>�{����%l6����,�A�8n��h�X�Y`�����J�XTJ+W�1��m*=gpk}I�#�}�:��e��(�GA���ZP6��UB\0�F�@�)�wj����b���������B:PH�%T�+4T��+�����P�_��DR����	R�[X�/�-P�����7^5�sy6�D��))��C�a;>]�G�ЀM?�\\���Jn�`�U-�����a�j���\rXc2���][��I�_�|g����h�H��ts�����g��]�_���Y(�����óFX��(�� \0D���׹���	E�0�\0��H���*n�d+�5��i��J<�j����!Ƿ*+�X��V V�r;�	���D\\�X%QFp��:���Z����[�^�[T\"Jg�w�Z;m4�B��W�B1HU�\'�����M��{:��m�����a�t*Z�d1n^3޳�a	�e���T2\nZ�7�ߤ�ۻJA!T��6����K��|{�|���k��>j���CJ\r4C��4�s��s����w�<Xo�m�P��Jw�*d�#e�\\\0�@Se�E��գB�闯$%z\\�⢿ \Z@�P�{@�4ܗ	��3M��C���>�y������\Z�R�������[�?����5�����L�%�(���\r����Q�b^�+�<l\"4�[�\0f�?��t��\0�bcG�Vi�ض�#��RW�An�?��2�t��E���)�H�X�7��L9��{g���|_��2�*�=7A�K��`�����nM_ژ�cr\'��?����y㰟aS����`Tڵ�Pi�*���o���E��\0_���l%{?�AtC7d��F*�d\'ī{/�CBj�r_�,�G\\�K���/� �&���\0�ś�;�d4[RW���¼��e͏5]P�b� ~�R��}7�7���NO%[�.w��-��2Zs���/Jڰ�k4թk7f\'9�p�|z�?/�7�]蛪��>\rǢ�υ���N��ø6��~6��>K��ұ\"�\"���y>��8�\Z�CCa���>�ķj�?��#�:@	R-O�!���i��>$L�3	���Λ?I�J�f��g�$�����{	��J\"F�t��X�V矟QB�| [\0D������\n@�Z��@-�vj��P���T@�MNЇ��\Z�?��wF�/�W����%5��T����G��<�(Ԥ]��&�Em����ճ�{/P^|�>��\\h<���3����\"Va��%�I��(\n��(�U��[kO2	RX)7��2�+X*9�e�x�1EU�a�`�_[������_^�9��	˙\nEU�@l����8���=�\nu?�.R�[}�C@��G�X�򪺢5Y\Z���q��V/��0\'��U��r�����l9D}*��z����~}�Bз��D��$����4���JP(���o㸁������<�*v/��;�YI.h�+w�,_�iW�y.:~��#�S:���>�+_s���Qx/��ES��S���?l�f�����?�\0��\r�K<�2�̂���R��&ԕ�D1��S�KȊ�x�dIk	�l���?��=eg*�5�,�J����\\SP{��V�S|��!HO�~�!�O�*�Igǿ<����&F);�l|n�2(E�=�z|2����y��t�V|�Tx�`�%շr�\\X����,:����mt���6��ߏ�߶�\rД$�ϥ#���9�\n����Yu�\r?�5ek�l��D6}K���տ�5�aNR�W�!\0�)\"1b��bҕe�G�*�H-(��\ZE\n`x�G�U����,?�aa�C\'�!������u��+�#���J������K[^J�D��p�y�_%�|zb	�_�GZ�9���h�S�\0`W��6���\"�Z&��q(�gY(��wA��,&�D�h�_�Oj �H�X�����=���Ko�0V�Q���\\w�/:}\\��0��*�)�\0���x�����[��*^_c4XQ��b�Py�%CI�\03-Q?��p��Q�a�` ���>y�W�U�ب��Rp|�\'K���ŭ\\�m5���!�r�\0���	�BS;�_0���&��̀���`�\n���O��U�[=���Y9��=��*�j(���P�]\"}��AU�_D}h�gQo�TZ�D-M����=��Cɕ\r��^ƾ��):�\0�n�Ո\n5e��n�����W�~�߁@���l̆�M�\0�?�2۟�Y��<�˰EQ�N!@��N*�?~`��s��{�K\\�a�ڌpJ���_*�iwjȖ\r��`J���@�2%��4ض�t�P���B�nYe�_>�־\n���K��y\0�vr��e��;��1�������\0*\0\0\0\0\0\0!A 01Qaq@�P��`����p��\0\0?�g�\0�?������G,�,��;��ӌ�u~9C�����/���\0�C䕷�g��.H�M&�|ttm�\0��Ë�	��?��M<8�����_\0�CУ��S���9������i��m��^j4õ\\����!��<�\0�(;�\0��ȴ�+q��\0�_���n\r�\0�<X�j�����8��1�0J�+(z�GM/�ӊ�i��#ȢԪ�݌Sқ�T�6��c�ϼ3��\0d��]��_Pҥ��5*}�6����;V xJ��/�ƴ1��xxy���m�����\0�!jo<g�K�2{��	�����;w`l�H3���]o��:�LLk��x�z�-1���d�������}P�\0eƻ8\"zb�)�_r�ݫ\\4�z\"�o��7�1�x1��:?�|\"�2�Ծ�I����J�=qgD�j]�\Z�]�V��PLx�z?��ģ����	�ԭkLExs�V����T*{�e|ZI��{M���a�U���:hG�h��Y�r��k,����q2yfI�*�*3���y=1:tkh���*~�h��z�·4��xSmrm���$����ŭ�����[�opG�cnt\"=�W���C]��%h�����/�űlrgr\r�gw�H�b9�K���i�Lv�fehxt����Ӧ�<���	o���j1߼u�ܷ@�\0*}�⣍�:��V�z����T�5b�M�[�zʦ T/.�<|�w���xw�f8��έs:�t��I�D��ĮΊF�1��%lgx���nE6�s�t�f��Ι�1,u��B�<-�gӹ��q��K��].t�	n+���ζ���ޣg����2������2�F��(���3�3��T�Z��feJ���-x�j�PJ�oD��R�\\,�2�����F�E^Tg^�������5`��(����\n�����9��߮�z-���r�\\�&P�<@���\0�����.a�ѿ�/���n�ʱa���%\"\'J`V�b_�1R!��0��Â�\\g��L��(�z��~�;[���1*��3�\0Rz�WU�R���t�bd��(�@���u\r1�^�#�q]�\ZnJ!s��(�?����������<.��U!��^���D���o\\�^H/��):�u�E��_��z��pcܳaGD^�����3�dѨź?gsC�1�\r*_*�yN���äC� ���*Q:���ҩC�D}D丮����/@���Z�7x�>��o���$A�-I��t��;Y���cӼ=1��\Z�?���w����K7�\Z�<�o�xι�ygi�D��O���O�<�\Z�F7n��ĬNY�m8�=�g��b�>��̴�B�s�+�?�YCЖ�w�^bY:w���+��#˦��[��t���<=x�:#ɏ�|�� >�c�#U�Z/pӤ��2���x0&^��9�:x\Z�Ӹ阱ߛ�/��hJ�G\r<���N�^�����λ=b{e�[-��]�����Q���ߎ{?π�į�4��E�?Ps�A��44s���{��x�a����lk �SW��lGgE�+̥��z}F��Ƿ,�1>��<T|!Y�N���yE͛ϩk\'(c��=�\0�xE���gL����^�#f����a|�E\rN6�h�1��?k	3�����/~;�y/���֚�y�}�<fTǩp���\r<&��?�E�;�/�_�J�p�p��ҹ�ʮ�!���d��C⾮���ȧ]`{j{$���K�|�w�<O�^`=����yc������q��]������:�Q1�a������@��c�+¾xF��[}�����_��\'!��*���>Ξ�OQ��\0^ ��؁��\\���pȻ�-�;���+�������1�B �T �����G���ژ:�i�����{������rhƕ�R0�3��~�/�y����_�|�֏�h�e�8�#[��L;�t����Q����y\\Ϯ��^���KC��c���qb�����+��̲�w���<��Y:����Cx�.^n����勠C���9��Ãp����D�E\r���.:�D���<�C�ʹ^*�q\\t�9�%=IZc�G��$��\"��~�p&�9�z<��g�g����\ZD�ߥ|ꌵ��0�������e�g׉\\g&���p�O������[�+�NQ7����Dvuߋ��i�.�W�S�}�೑g\n���\Z[y�u�֣��8]r:<+�>�=֭f�����\Zl�\0�g�����a_n���1����s6���-��@�\\���+D��\0G�4a�[�w�\'�u[�+�<�=Kg�6\"�W��t���|��%�����Q�E��xüxI΀��L��4+�GOh�Te�#�L+��9�1թU�ƈ�Q�M<��\r��~5C�iF�JI|�\'��d+�A�B0	Ϸn[����v��z���wG���.X�\0X�����F<���ξ>Ϯ�s�al�|�����t�Av�9<��s?��U����x\n��ֱ�F4��l�G�k_R<�p</,�~�k���9���\r�\Z���ϛ�4��ۭ�띥����΢_�5�s�i�^\n�s�K��8��XD�\0���Oo�߁���Q����~������\n�>���;��T��j-Z�Wѯ\\C�����s?K��Ⱦ�\0Pq/�2u��px��9�N��S�v�\n�S�Þ{���\0qݹ������ɏ�=��{�9�=���xG�Ӱ�������5x����5Xrh��WA������b���hsC��CJ�F�z^���M?���N/��]\Z$���x��:`\Z4�{�x��c�����|N�}��;,N�w�y�w��;+F<�7��#�4ǲ��\'�?x�ү�>��^\'��S���l���t΄ĭ-��+ҪvI`b��9�r(��X��Y�\0���w`��\\á�Kw�7��t��\r혋ݳE���=�b]iR�������}D�@|#��oN��ژ��[������P�c�:J��(8.����Ѓ@`��.`�0t��c��\"u�\0�<�2�x�r�2���h���2b0r�U]b�Y1�F������T�u=�}ܧ:��H�q��=3�?�������S�����P~0�x���!����\0|��<���?�g���\"v�|_��','2020-08-08',NULL,NULL);
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
  `personne_Invitee` int(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsable`
--

LOCK TABLES `responsable` WRITE;
/*!40000 ALTER TABLE `responsable` DISABLE KEYS */;
INSERT INTO `responsable` VALUES (1,31),(2,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'hakim',' 62, rue Taha Houcine -ex Galilee, Grand Casablanca','elhaiba120@gmail.com','0613468734',1,'2023-01-09 15:42:45','2023-01-09 15:42:55','192.63.4.15','SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c'),(2,'FDFD','fdfd','fdfdfdf','4444444',NULL,'2023-01-25 17:17:03','2023-01-25 17:17:03',NULL,NULL),(3,'FDFD','fdfd','fdfdfdf','4444444',NULL,'2023-01-25 17:17:59','2023-01-25 17:17:59',NULL,NULL),(5,'GHHGH','gfgf','gfgfgf','54545',NULL,'2023-01-25 17:27:01','2023-01-25 17:27:01',NULL,NULL),(6,'JJJJJJJJJJJJJJJH','FDFFFF','FDFDF','54545',NULL,'2023-01-25 17:29:28','2023-01-25 17:29:28',NULL,NULL),(7,'GHGHG','fdfdf','fdfdf','66666',NULL,'2023-01-25 17:33:19','2023-01-25 17:33:19',NULL,NULL),(8,'DFDD','fdfd','fdfd','44444444',NULL,'2023-01-25 17:35:00','2023-01-25 17:35:00',NULL,NULL),(12,'FFF','fffffff','ffffff','1111111',NULL,'2023-01-25 17:50:28','2023-01-25 17:50:28',NULL,NULL),(13,'FFF','fffff','ffffff','2222',NULL,'2023-01-25 17:52:42','2023-01-25 17:52:42',NULL,NULL),(14,'ddd','dd','dd','2222',NULL,'2023-01-25 17:57:06','2023-01-25 17:57:06',NULL,NULL),(15,'ddd','dd','dd','2222',NULL,'2023-01-25 18:00:13','2023-01-25 18:00:13',NULL,NULL),(16,'dddbbb','dd','bbbb','2222',NULL,'2023-01-25 18:01:01','2023-01-25 18:01:01',NULL,NULL),(17,'xxxxxxxx','xxxxx','dddd','111111111',NULL,'2023-01-25 18:13:54','2023-01-25 18:13:54',NULL,NULL),(18,'CCCCCCC','xxxv','ccccccccccv','11111',NULL,'2023-01-25 18:17:42','2023-01-25 18:17:42',NULL,NULL),(19,'DDD','ddddd','dddd','2222',NULL,'2023-01-25 18:23:00','2023-01-25 18:23:00',NULL,NULL),(20,'DDDDDD','hakim_adresse','hakim@gmail.com','0',NULL,'2023-01-26 13:10:09','2023-01-26 13:10:09',NULL,NULL),(21,'DDDD','gggg','DDDDD','11111111',NULL,'2023-02-01 15:18:15','2023-02-01 15:18:15',NULL,NULL);
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

-- Dump completed on 2023-02-02  0:26:35
