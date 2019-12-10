-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: finalproject
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `accidents` int(11) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'Harold','Summers',0,'Harold has had a lot of driving experience through years of working as a Dominos delivery guy. He is the safest driver on our team with 0 accidents on his record.'),(2,'Jessica','Gamesh',0,'Jessica has the best all-around delivery track record of all of drivers. She gets you your food faster than any other Tom, Dick, or Harry!'),(3,'Tom','Stewpits',1,'Tom is an honest, hardworking man who moonlights as a bus driver in the daytime. He knows all the best routes to get you your food pronto.'),(4,'Torvis','Girdler',15,'Torvis honestly cant drive. Were working on letting him go.'),(5,'Iggy','Azzigy',3,'Iggy holds the record in our company for fastest deliveries! She will zigzag through traffic to get you your food ASAP!');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuItems`
--

DROP TABLE IF EXISTS `menuItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuItems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuItems`
--

LOCK TABLES `menuItems` WRITE;
/*!40000 ALTER TABLE `menuItems` DISABLE KEYS */;
INSERT INTO `menuItems` VALUES (1,'Burrito','Your choice of Tortilla: Flour, Wheat, Chipotle or Spinach',6.49,'ent'),(2,'Mini Burrito','Your choice of Tortilla: Flour or Wheat',5.49,'ent'),(3,'Bowl','Build your own Burrito Bowl',6.49,'ent'),(4,'Salad','Homemade Dressings Buttermilk Ranch, Southwest Vinaigrette, Chipotle Ranch or Fat Free Balsamic Vinaigrette',6.49,'ent'),(5,'Nachos','Served with Mouth Watering Cheese Dip on the side.',6.49,'ent'),(6,'2 Tacos','Both Tacos must be identical',6.49,'ent'),(7,'Taco','Your choice of Crispy Corn, Soft Flour or Soft Corn Taco Shells',3.69,'ent'),(8,'10in Quesadilla','Served with a Side of Sour Cream and Pico De Gallo',6.49,'ent'),(9,'12in Quesadilla','Served with a Side of Sour Cream and Pico De Gallo',7.49,'ent'),(10,'10in Cheese Quesadilla','Served with a Side of Sour Cream and Pico De Gallo',5.49,'ent'),(11,'12in Cheese Quesadilla','Served with a Side of Sour Cream and Pico De Gallo',5.99,'ent'),(12,'Soda','Coke products',1,'drn'),(13,'Bottled Water','Dasani',1.25,'drn'),(14,'Vegan Burrito','Rice, Beans, Tofu, Pico de Gallo, lettuce and Guacamole on a Tortilla of your choice.',7.49,'spc'),(15,'California Burrito','Comes with Rice, Beans (Pinto or Black), Pico De Gallo, Lettuce, Fresh Sliced Avocado & Southwest Vinaigrette on a Whole Wheat Tortilla.',6.89,'spc'),(16,'Fajita Burrito','Comes with Rice, Beans (Pinto or Black),Protein, Cheese, Pico De Gallo, Lettuce, Sour Cream, Sauteed Peppers and Onions, on a Flour Tortilla.',7.89,'spc'),(17,'Jerk Fish Taco','Grilled Jerk Fish, Cheese, Lettuce, Guacamole, Lime Juice. Served on your choice of Taco Shell. Available on Fridays Only.',4.29,'spc'),(18,'Salsa','Tomatillo or Heavy D.',0.25,'sid'),(19,'Cheese Dip 2 oz','Served with Chips',1.09,'sid'),(20,'Cheese Dip 4 oz','Served with Chips',2.09,'sid'),(21,'Cheese Dip 8 oz','Served with Chips',4.09,'sid'),(22,'Guacamole 4 oz','Served with Chips',2.09,'sid'),(23,'Guacamole 8 oz','Served with Chips',4.59,'sid'),(24,'Pinto Beans','Side of beans',1.49,'sid'),(25,'Rice','Side of rice',1.49,'sid'),(26,'Cookie','Chocolate Chunk',0.69,'des');
/*!40000 ALTER TABLE `menuItems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09 19:43:14
