-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: atividade11a
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `cpf` bigint NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `telefone` bigint NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Rosa','Azevedo',88766934410,'F',0),(2,'Cintia','Silva',36490291073,'F',0),(3,'Conrado','Martins',26165924432,'M',0),(4,'Roberto','Nunes',10534227203,'M',0),(5,'Katia','Chavez',95427351301,'F',0),(6,'João','Linhares',18294062193,'M',0),(7,'Lurdes','Albulquerque',87776772354,'F',0),(8,'Sara','Souza',63798337099,'F',0),(9,'Larissa','Nunes',73777022327,'F',0),(10,'Paloma','Nunes',95427334567,'F',0),(11,'Rosa','Azevedo',88766934410,'F',123),(12,'Cintia','Silva',36490291073,'F',456),(13,'Conrado','Martins',26165924432,'M',789),(14,'Roberto','Nunes',10534227203,'M',101),(15,'Tiago','Rocha',63145054180,'M',111),(16,'João','Linhares',18294062193,'M',121),(17,'Lurdes','Albulquerque',87776772354,'F',131),(18,'Sara','Souza',63798337099,'F',141),(19,'Larissa','Nunes',73777022327,'F',151),(20,'Maurício','Machado',34933861580,'M',161),(21,'Rosa','Azevedo',88766934410,'F',123),(22,'Cintia','Silva',36490291073,'F',456),(23,'Conrado','Martins',26165924432,'M',789),(24,'Roberto','Nunes',10534227203,'M',101),(25,'Tiago','Rocha',63145054180,'M',111),(26,'João','Linhares',18294062193,'M',121),(27,'Lurdes','Albulquerque',87776772354,'F',131),(28,'Sara','Souza',63798337099,'F',141),(29,'Larissa','Nunes',73777022327,'F',151),(30,'Maurício','Machado',34933861580,'M',161);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 14:02:16
