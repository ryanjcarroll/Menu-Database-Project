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
-- Table structure for table `menuItem`
--

DROP TABLE IF EXISTS `menuItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuItem` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `restaurantId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuItem`
--

LOCK TABLES `menuItem` WRITE;
/*!40000 ALTER TABLE `menuItem` DISABLE KEYS */;
INSERT INTO `menuItem` VALUES (1,'BBQ Chicken','',8,1),(2,'Curry Chicken','',8,1),(3,'Jerk Chicken','',8,1),(4,'Jerk Pork','',8,1),(5,'Grilled Salmon','',12,1),(6,'Thai Fried Rice','stir fried eggs, onions, tomatoes, cabbage, carrots, green onions',12.5,2),(7,'Thai Spicy Noodles','pan fried wide rice noodles with eggs, onions, cabbage, carrots, bell peppers, basil leaves, green bean and chili paste',12.95,2),(8,'Pad Thai','stir fried thin rice noodles with eggs, cabbage, carrots, and green onions served with peanuts and lime',12.95,2),(9,'Salmon Green Curry','sauteed salmon filet with green curry paste and coconut milk, bell peppers, bamboo shoot, green beans and basil leaves',15.95,2),(10,'Suki','stir fried glass noodles with eggs, shrimp, chicken, squid, napa, carrot, onions, bell peppers in garlic soy sauce',14.5,2),(11,'The Grit Veggie Plate','A plate of our fabulous and dynamic variety of vegetable dishes, stews, and casseroles listed daily on the Specials Board.',9.95,3),(12,'Golden Tofu Wrap','Grit style tofu cubes and sautéed veggies bundled up in a flour tortilla and toasted to perfection on our flat-top grill with Sriracha mayo.',7.95,3),(13,'Falafel Sandwich','Chickpea fritters in pita bread with veggies, hummus, and your choice of lemon-tahini dressing or tzatziki dressing.',7.75,3),(14,'Seitan Gyro','Zesty Greek-seasoned seitan, sizzled on the grill with roasted red peppers and onion',7.95,3),(15,'Grit Burger of the Day','Delectible “Grit Original” burger creations, changing from day to day',7.95,3),(16,'El Sandwich Cubano','your choice of steak and chicken, milanesa served with egg lettuce, tomatoes, grilled onions, cheese jalapenos & mayo',5.95,4),(17,'Tito\'s Big Burrito','grilled steak or chicken, served with onions, green & red bell peppers, mushrooms, rice, lettuce, tomatoes and cheese',6.75,4),(18,'El Rico Tamal','steamed white corn meal, filled with pork or chicken, topped with red onions and jalapenos on the sides',5.95,4),(19,'Quesadillas','filled with rice, beans, mozzarella cheese, grilled onions, mushrooms and bell peppers served with lettuce and tomatoes on the side',6.75,4),(20,'Los Fish Tacos','fried tilapia tacos served with lettuce, cheese, red onions, cilantro and chipotle sauce',2.95,4);
/*!40000 ALTER TABLE `menuItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'Kelly\'s Jamaican','Jamaican'),(2,'Thai Spoon','Thai'),(3,'The Grit','American'),(4,'Cali N Tito\'s','Latin American');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-07 14:02:17
