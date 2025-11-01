CREATE DATABASE  IF NOT EXISTS `projeto_ivam` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projeto_ivam`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_ivam
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agente`
--

DROP TABLE IF EXISTS `agente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agente` (
  `id_Agente` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `Orgao_id_Orgao` int NOT NULL,
  PRIMARY KEY (`id_Agente`),
  KEY `fk_Agente_Orgão1_idx` (`Orgao_id_Orgao`),
  CONSTRAINT `fk_Agente_Orgão1` FOREIGN KEY (`Orgao_id_Orgao`) REFERENCES `orgao` (`id_Orgao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agente`
--

LOCK TABLES `agente` WRITE;
/*!40000 ALTER TABLE `agente` DISABLE KEYS */;
INSERT INTO `agente` VALUES (1,'AGT2025001','Carlos Henrique da Silva',1),(2,'AGT2025002','Ana Paula Rodrigues',2),(3,'AGT2025003','João Marcos de Souza',3),(4,'AGT2025004','Mariana Lopes Ferreira',1),(5,'AGT2025005','Fernando Alves Santos',2);
/*!40000 ALTER TABLE `agente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cnh`
--

DROP TABLE IF EXISTS `cnh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cnh` (
  `id_CNH` int NOT NULL AUTO_INCREMENT,
  `registro_cnh` varchar(11) NOT NULL,
  `categoria` varchar(3) NOT NULL,
  `data_de_emissao` datetime NOT NULL,
  `data_validade` datetime NOT NULL,
  `orgao_emissor` varchar(3) NOT NULL,
  `UF` varchar(2) NOT NULL,
  PRIMARY KEY (`id_CNH`),
  UNIQUE KEY `registro_cnh_UNIQUE` (`registro_cnh`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnh`
--

LOCK TABLES `cnh` WRITE;
/*!40000 ALTER TABLE `cnh` DISABLE KEYS */;
INSERT INTO `cnh` VALUES (1,'03519823476','A','2018-02-15 00:00:00','2028-02-15 00:00:00','SSP','SC'),(2,'04628174935','B','2019-07-03 00:00:00','2029-07-03 00:00:00','SSP','SC'),(3,'05739201846','AB','2020-04-10 00:00:00','2030-04-10 00:00:00','SSP','SC'),(4,'06841932757','BC','2017-11-21 00:00:00','2027-11-21 00:00:00','SSP','SC'),(5,'07953043868','ABC','2021-09-12 00:00:00','2031-09-12 00:00:00','SSP','SC'),(6,'08064154979','A','2022-01-05 00:00:00','2032-01-05 00:00:00','SSP','SC'),(7,'09175265080','B','2023-05-22 00:00:00','2033-05-22 00:00:00','SSP','SC'),(8,'01286376191','AB','2020-12-14 00:00:00','2030-12-14 00:00:00','SSP','SC'),(9,'02397487202','BC','2021-06-19 00:00:00','2031-06-19 00:00:00','SSP','SC'),(10,'03408598313','ABC','2022-09-07 00:00:00','2032-09-07 00:00:00','SSP','SC'),(11,'04519609424','A','2018-03-02 00:00:00','2028-03-02 00:00:00','SSP','SC'),(12,'05620710535','B','2019-10-25 00:00:00','2029-10-25 00:00:00','SSP','SC'),(13,'06731821646','AB','2020-01-11 00:00:00','2030-01-11 00:00:00','SSP','SC'),(14,'07842932757','BC','2021-04-30 00:00:00','2031-04-30 00:00:00','SSP','SC'),(15,'08953043868','ABC','2023-01-09 00:00:00','2033-01-09 00:00:00','SSP','SC'),(16,'09064154979','A','2018-06-17 00:00:00','2028-06-17 00:00:00','SSP','SC'),(17,'01175265080','B','2020-07-13 00:00:00','2030-07-13 00:00:00','SSP','SC'),(18,'02286376191','AB','2021-02-28 00:00:00','2031-02-28 00:00:00','SSP','SC'),(19,'03397487202','BC','2019-09-22 00:00:00','2029-09-22 00:00:00','SSP','SC'),(20,'04408598313','ABC','2022-11-11 00:00:00','2032-11-11 00:00:00','SSP','SC'),(21,'05519609424','A','2019-12-10 00:00:00','2029-12-10 00:00:00','SSP','SC'),(22,'06620710535','B','2021-05-08 00:00:00','2031-05-08 00:00:00','SSP','SC'),(23,'07731821646','AB','2020-10-19 00:00:00','2030-10-19 00:00:00','SSP','SC'),(24,'08842932757','BC','2022-03-17 00:00:00','2032-03-17 00:00:00','SSP','SC'),(25,'09953043868','ABC','2023-02-05 00:00:00','2033-02-05 00:00:00','SSP','SC'),(26,'01064154979','A','2020-01-29 00:00:00','2030-01-29 00:00:00','SSP','SC'),(27,'02175265080','B','2021-06-14 00:00:00','2031-06-14 00:00:00','SSP','SC'),(28,'03286376191','AB','2022-08-20 00:00:00','2032-08-20 00:00:00','SSP','SC'),(29,'04397487202','BC','2020-02-09 00:00:00','2030-02-09 00:00:00','SSP','SC'),(30,'05408598313','ABC','2019-09-01 00:00:00','2029-09-01 00:00:00','SSP','SC'),(31,'06519609424','A','2023-03-18 00:00:00','2033-03-18 00:00:00','SSP','SC'),(32,'07620710535','B','2022-04-22 00:00:00','2032-04-22 00:00:00','SSP','SC'),(33,'08731821646','AB','2021-09-13 00:00:00','2031-09-13 00:00:00','SSP','SC'),(34,'09842932757','BC','2020-06-04 00:00:00','2030-06-04 00:00:00','SSP','SC'),(35,'01953043868','ABC','2023-07-25 00:00:00','2033-07-25 00:00:00','SSP','SC'),(36,'02064154979','A','2021-08-08 00:00:00','2031-08-08 00:00:00','SSP','SC'),(37,'03175265080','B','2018-05-15 00:00:00','2028-05-15 00:00:00','SSP','SC'),(38,'04286376191','AB','2022-10-11 00:00:00','2032-10-11 00:00:00','SSP','SC'),(39,'05397487202','BC','2023-09-30 00:00:00','2033-09-30 00:00:00','SSP','SC'),(40,'06408598313','ABC','2021-12-20 00:00:00','2031-12-20 00:00:00','SSP','SC');
/*!40000 ALTER TABLE `cnh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrator`
--

DROP TABLE IF EXISTS `infrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infrator` (
  `id_Infrator` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `data_de_nascimento` date NOT NULL,
  `CNH_id_CNH` int NOT NULL,
  PRIMARY KEY (`id_Infrator`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  KEY `fk_Infrator_CNH1_idx` (`CNH_id_CNH`),
  CONSTRAINT `fk_Infrator_CNH1` FOREIGN KEY (`CNH_id_CNH`) REFERENCES `cnh` (`id_CNH`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrator`
--

LOCK TABLES `infrator` WRITE;
/*!40000 ALTER TABLE `infrator` DISABLE KEYS */;
INSERT INTO `infrator` VALUES (1,'Ana Beatriz Souza','12345678901','48991234567','1990-03-12',1),(2,'Carlos Eduardo Lima','23456789012','48998765432','1988-07-25',2),(3,'Mariana Oliveira','34567890123','48999112233','1995-11-04',3),(4,'Rafael Santos','45678901234','48998223344','1992-01-16',4),(5,'Fernanda Costa','56789012345','48997334455','1997-06-08',5),(6,'João Pedro Almeida','67890123456','48996445566','1989-09-20',6),(7,'Juliana Martins','78901234567','48995556677','1993-02-11',7),(8,'Lucas Ferreira','89012345678','48994667788','1991-12-02',8),(9,'Patrícia Gomes','90123456789','48993778899','1996-04-14',9),(10,'Gabriel Carvalho','11223344556','48992889900','1994-05-18',10),(11,'Camila Ribeiro','22334455667','48991990011','1992-10-03',11),(12,'Rodrigo Barros','33445566778','48990011222','1990-07-29',12),(13,'Letícia Pires','44556677889','48991122334','1998-02-23',13),(14,'Thiago Nunes','55667788990','48992233445','1987-08-06',14),(15,'Natália Araújo','66778899001','48993344556','1993-09-09',15),(16,'Bruno Almeida','77889900112','48994455667','1991-01-27',16),(17,'Larissa Rocha','88990011223','48995566778','1997-03-30',17),(18,'Felipe Duarte','99001122334','48996677889','1994-12-19',18),(19,'Paula Castro','10111213141','48997788990','1990-10-25',19),(20,'Ricardo Silva','11121314151','48998899001','1989-06-14',20),(21,'Aline Torres','12131415161','48999900112','1996-08-22',21),(22,'Daniel Correia','13141516171','48991011223','1992-05-01',22),(23,'Tatiane Moura','14151617181','48992122334','1997-11-10',23),(24,'Marcelo Pinto','15161718191','48993233445','1988-04-08',24),(25,'Vanessa Lopes','16171819202','48994344556','1995-02-17',25),(26,'Gustavo Andrade','17181920313','48995455667','1991-09-05',26),(27,'Bianca Freitas','18192031414','48996566778','1998-12-13',27),(28,'Eduardo Ramos','19203141515','48997677889','1993-06-27',28),(29,'Priscila Mendes','20212223242','48998788990','1994-01-09',29),(30,'Diego Teixeira','21222324353','48999899001','1992-10-14',30),(31,'Renata Figueiredo','22232425364','48990900112','1995-07-21',31),(32,'Fábio Lopes','23242526375','48991911223','1987-05-05',32),(33,'Amanda Nascimento','24252627386','48992922334','1999-09-30',33),(34,'Leandro Souza','25262728397','48993933445','1993-04-02',34),(35,'Jéssica Carvalho','26272829408','48994944556','1991-02-15',35),(36,'André Melo','27282930419','48995955667','1996-07-18',36),(37,'Carla Matos','28293031420','48996966778','1992-11-11',37),(38,'Vinícius Duarte','29303132421','48997977889','1990-12-30',38),(39,'Helena Moreira','30313233422','48998988990','1998-08-08',39),(40,'Roberto Lima','31323334423','48999999001','1989-01-01',40);
/*!40000 ALTER TABLE `infrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multa`
--

DROP TABLE IF EXISTS `multa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multa` (
  `id_Multa` int NOT NULL AUTO_INCREMENT,
  `data_multa` datetime NOT NULL,
  `vencimento_multa` datetime NOT NULL,
  `Agente_id_Agente` int NOT NULL,
  `Infrator_id_Infrator` int NOT NULL,
  `Veiculo_id_Veiculo` int NOT NULL,
  `Tipo_Multa_id_Tipo_Multa` int NOT NULL,
  PRIMARY KEY (`id_Multa`),
  KEY `fk_Multa_Agente_idx` (`Agente_id_Agente`),
  KEY `fk_Multa_Infrator1_idx` (`Infrator_id_Infrator`),
  KEY `fk_Multa_Veiculo1_idx` (`Veiculo_id_Veiculo`),
  KEY `fk_Multa_Tipo_Multa1_idx` (`Tipo_Multa_id_Tipo_Multa`),
  CONSTRAINT `fk_Multa_Agente` FOREIGN KEY (`Agente_id_Agente`) REFERENCES `agente` (`id_Agente`),
  CONSTRAINT `fk_Multa_Infrator1` FOREIGN KEY (`Infrator_id_Infrator`) REFERENCES `infrator` (`id_Infrator`),
  CONSTRAINT `fk_Multa_Tipo_Multa1` FOREIGN KEY (`Tipo_Multa_id_Tipo_Multa`) REFERENCES `tipo_multa` (`id_Tipo_Multa`),
  CONSTRAINT `fk_Multa_Veiculo1` FOREIGN KEY (`Veiculo_id_Veiculo`) REFERENCES `veiculo` (`id_Veiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multa`
--

LOCK TABLES `multa` WRITE;
/*!40000 ALTER TABLE `multa` DISABLE KEYS */;
INSERT INTO `multa` VALUES (1,'2025-10-01 08:00:00','2030-10-01 00:00:00',1,1,1,2),(2,'2025-10-01 08:20:00','2030-10-01 00:00:00',2,2,2,4),(3,'2025-10-01 08:40:00','2030-10-01 00:00:00',3,3,3,10),(4,'2025-10-01 09:00:00','2030-10-01 00:00:00',2,4,4,8),(5,'2025-10-01 09:10:00','2030-10-01 00:00:00',1,5,5,10),(6,'2025-10-01 09:30:00','2030-10-01 00:00:00',3,6,6,6),(7,'2025-10-01 09:40:00','2030-10-01 00:00:00',5,7,7,1),(8,'2025-10-01 09:50:00','2030-10-01 00:00:00',1,8,8,11),(9,'2025-10-01 10:00:00','2030-10-01 00:00:00',3,9,9,7),(10,'2025-10-01 10:30:00','2030-10-01 00:00:00',2,10,10,2),(11,'2025-10-01 11:00:00','2030-10-01 00:00:00',2,11,11,12),(12,'2025-10-01 13:45:00','2030-10-01 00:00:00',3,12,12,13),(13,'2025-10-01 16:10:00','2030-10-01 00:00:00',1,13,13,5),(14,'2025-10-01 19:30:00','2030-10-01 00:00:00',2,14,14,9),(15,'2025-10-01 22:05:00','2030-10-01 00:00:00',5,15,15,10),(16,'2025-10-02 07:15:00','2030-10-02 00:00:00',1,16,16,7),(17,'2025-10-02 09:50:00','2030-10-02 00:00:00',2,17,17,4),(18,'2025-10-02 12:25:00','2030-10-02 00:00:00',3,18,18,10),(19,'2025-10-02 14:00:00','2030-10-02 00:00:00',1,19,19,3),(20,'2025-10-02 17:35:00','2030-10-02 00:00:00',2,20,20,3),(21,'2025-10-02 20:00:00','2030-10-02 00:00:00',3,21,21,10),(22,'2025-10-03 08:30:00','2030-10-03 00:00:00',1,22,22,1),(23,'2025-10-03 10:45:00','2030-10-03 00:00:00',4,23,23,1),(24,'2025-10-03 13:10:00','2030-10-03 00:00:00',3,24,24,1),(25,'2025-10-03 15:55:00','2030-10-03 00:00:00',1,25,25,1),(26,'2025-10-03 18:20:00','2030-10-03 00:00:00',2,26,26,9),(27,'2025-10-03 21:05:00','2030-10-03 00:00:00',3,27,27,2),(28,'2025-10-04 06:40:00','2030-10-04 00:00:00',1,28,28,2),(29,'2025-10-04 09:15:00','2030-10-04 00:00:00',2,29,29,2),(30,'2025-10-04 11:50:00','2030-10-04 00:00:00',3,30,30,3),(31,'2025-10-04 14:35:00','2030-10-04 00:00:00',1,31,31,3),(32,'2025-10-04 17:10:00','2030-10-04 00:00:00',2,32,32,10),(33,'2025-10-04 19:45:00','2030-10-04 00:00:00',3,33,33,11),(34,'2025-10-05 08:20:00','2030-10-05 00:00:00',4,34,34,6),(35,'2025-10-05 10:55:00','2030-10-05 00:00:00',2,35,35,9),(36,'2025-10-05 13:30:00','2030-10-05 00:00:00',3,36,36,9),(37,'2025-10-05 16:05:00','2030-10-05 00:00:00',1,37,37,4),(38,'2025-10-05 18:40:00','2030-10-05 00:00:00',2,38,38,5),(39,'2025-10-05 21:15:00','2030-10-05 00:00:00',3,39,39,7),(40,'2025-10-06 07:00:00','2030-10-06 00:00:00',4,40,40,8),(41,'2025-10-06 10:30:00','2030-10-06 00:00:00',2,6,6,1),(42,'2025-10-06 22:05:00','2030-10-06 00:00:00',3,15,15,6),(43,'2025-10-07 08:30:00','2030-10-07 00:00:00',1,22,22,11),(44,'2025-10-07 09:20:00','2030-10-01 00:00:00',1,2,2,7),(45,'2025-10-07 17:10:00','2030-10-07 00:00:00',4,32,32,11),(46,'2025-10-07 19:15:00','2030-10-07 00:00:00',2,16,16,2),(47,'2025-10-08 07:00:00','2030-10-08 00:00:00',3,3,41,10),(48,'2025-10-08 07:30:00','2030-10-08 00:00:00',1,5,42,3),(49,'2025-10-08 08:00:00','2030-10-08 00:00:00',5,8,43,11),(50,'2025-10-08 12:00:00','2030-10-08 00:00:00',3,13,44,8),(51,'2025-10-08 14:00:00','2030-10-08 00:00:00',1,28,45,12),(52,'2025-10-08 17:00:00','2030-10-08 00:00:00',4,33,46,13);
/*!40000 ALTER TABLE `multa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgao`
--

DROP TABLE IF EXISTS `orgao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orgao` (
  `id_Orgao` int NOT NULL AUTO_INCREMENT,
  `nome_orgao` varchar(150) NOT NULL,
  `sigla` varchar(10) NOT NULL,
  `Jurisdicao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_Orgao`),
  UNIQUE KEY `nome_orgão_UNIQUE` (`nome_orgao`),
  UNIQUE KEY `sigla_UNIQUE` (`sigla`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgao`
--

LOCK TABLES `orgao` WRITE;
/*!40000 ALTER TABLE `orgao` DISABLE KEYS */;
INSERT INTO `orgao` VALUES (1,'Policia Rodoviária Federal','PRF','Federal'),(2,'Departamento Nacional de Trânsito','DENATRAN','Federal'),(3,'Departamento Estadual de Trânsito de Santa Catarina','DETRAN-SC','Estadual');
/*!40000 ALTER TABLE `orgao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_multa`
--

DROP TABLE IF EXISTS `tipo_multa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_multa` (
  `id_Tipo_Multa` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `valor_base` decimal(10,2) NOT NULL,
  `Pontuacao` int NOT NULL,
  `gravidade` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Tipo_Multa`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_multa`
--

LOCK TABLES `tipo_multa` WRITE;
/*!40000 ALTER TABLE `tipo_multa` DISABLE KEYS */;
INSERT INTO `tipo_multa` VALUES (1,'Ultrapassar pelo acostamento',957.70,7,'Gravissima'),(2,'Avançar o sinal vermelho do semáforo',293.47,7,'Gravissima'),(3,'Dirigir sob efeito de álcool',2934.47,7,'Gravissima'),(4,'Transitar em velocidade superior à máxima em até 20%',130.16,4,'Media'),(5,'Transitar em velocidade superior à máxima entre 20% e 50%',195.23,5,'Grave'),(6,'Transitar em velocidade superior à máxima em mais de 50%',880.41,7,'Gravissima'),(7,'Estacionar local/horário de estacionamento e parada proibidos pela sinalização ',195.23,5,'Grave'),(8,'Deixar de usar o cinto de segurança',195.23,5,'Grave'),(9,'Usar o celular ao volante',130.16,5,'Media'),(10,'Conduzir motocicleta sem capacete',293.47,7,'Gravissima'),(11,'Parar sobre a faixa de pedestre na mudança de sinal',130.16,4,'Media'),(12,'Estacionar nos acostamentos',88.38,3,'Leve'),(13,'Transportar criança sem observância das normas de segurança estabelecidas p/ CTB',293.47,7,'Gravissima');
/*!40000 ALTER TABLE `tipo_multa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `id_Veiculo` int NOT NULL AUTO_INCREMENT,
  `Placa` varchar(10) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `ano_fabricacao` year NOT NULL,
  `Infrator_id_Infrator` int NOT NULL,
  PRIMARY KEY (`id_Veiculo`),
  UNIQUE KEY `Placa_UNIQUE` (`Placa`),
  KEY `fk_Veiculo_Infrator1_idx` (`Infrator_id_Infrator`),
  CONSTRAINT `fk_Veiculo_Infrator1` FOREIGN KEY (`Infrator_id_Infrator`) REFERENCES `infrator` (`id_Infrator`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'ABC1D23','CG 160','Honda',2021,1),(2,'BCD2E45','Onix','Chevrolet',2017,2),(3,'CDE3F67','MT-03','Yamaha',2023,3),(4,'DEF4G89','Corolla','Toyota',2019,4),(5,'EFG5H01','CB 300R','Honda',2016,5),(6,'FGH6J23','PCX 160','Honda',2020,6),(7,'GHI7K45','HB20','Hyundai',2018,7),(8,'HIJ8L67','MT-07','Yamaha',2022,8),(9,'IJK9M89','Argo','Fiat',2021,9),(10,'JKL0N10','CG 125','Honda',2015,10),(11,'KLM1P32','CH 160','Honda',2020,11),(12,'LMN2Q54','Grand Siena','Fiat',2014,12),(13,'MNO3R76','CB 500X','Honda',2021,13),(14,'NOP4S98','Golf','Volkswagen',2017,14),(15,'OPQ5T10','CG 150','Honda',2013,15),(16,'PQR6U32','PCX 150','Honda',2012,16),(17,'QRS7V54','Ka','Ford',2019,17),(18,'RST8W76','Fan 160','Honda',2020,18),(19,'STU9X98','HB20','Hyundai',2018,19),(20,'TUV0Y10','Versa','Nissan',2016,20),(21,'UVW1Z32','CG 160','Honda',2022,21),(22,'VWX2A54','Fit','Honda',2015,22),(23,'WXY3B76','Onix','Chevrolet',2023,23),(24,'XYZ4C98','Prisma','Chevrolet',2014,24),(25,'YZA5D10','Ka','Ford',2011,25),(26,'ZAB6E32','Palio','Fiat',2013,26),(27,'ABC7F54','CG 160','Honda',2020,27),(28,'BCD8G76','NXR 160','Honda',2018,28),(29,'CDE9H98','Hyundai HB20','Hyundai',2021,29),(30,'DEF0J10','Fiesta',' Ford',2012,30),(31,'EFG1K32','CB 300R','Honda',2024,31),(32,'FGH2L54','City','Honda',2016,32),(33,'GHI3M76','CG 125','Honda',2013,33),(34,'HIJ4N98','Cobalt','Chevrolet',2017,34),(35,'IJK5P10','Palio','Fiat',2018,35),(36,'JKL6Q32','HR-V','Honda',2020,36),(37,'KLM7R54','Ka','Ford',2021,37),(38,'LMN8S76','MT-03','Yamaha',2019,38),(39,'MNO9T98','Corolla','Toyota',2014,39),(40,'NOP0U10','Versa','Nissan',2015,40),(41,'OPQ1V32','CB 500X','Honda',2023,3),(42,'PQR2W54','Corolla','Toyota',2015,5),(43,'QRS3X76','NXR 160','Honda',2016,8),(44,'RST4Y98','HB20','Hyundai',2017,13),(45,'STU5Z10','CG 150','Honda',2018,28),(46,'TUV6A11','Corolla','Toyota',2022,33),(47,'UVW7B22','MT-07','Yamaha',2021,38);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-01 17:07:29
