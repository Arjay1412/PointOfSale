-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: posdb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `costumer`
--

DROP TABLE IF EXISTS `costumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costumer` (
  `costumer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`costumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costumer`
--

LOCK TABLES `costumer` WRITE;
/*!40000 ALTER TABLE `costumer` DISABLE KEYS */;
INSERT INTO `costumer` VALUES (1,'Carlos Brown','Block 16 Lot 64 Smith Grove 1, 95th Drive Extension, Magarao, 4527 Marinduque','09517555360'),(2,'Whitney Rivera','4911 Andromeda Drive, Oas, 9172 Dinagat Islands','09769562962'),(3,'Adam Owens','B17 L47 Lopez Cove, Lopez Drive, Candoni, 3179 Camarines Sur','09229237746'),(4,'Kyle Haynes','Block 06 Lot 39 Uranus Subdivision, Emerald Street, Libagon, 1893 Batangas','09369789849'),(5,'Derek Little','2583 Unit G Sierra Madre Street, Can-avid, 6256 Cebu','09250232999'),(6,'Kimberly Morris','B10 L81 Palanan Drive, Oliva Estates, Don Victoriano Chiongbian, 8839 Lanao del Norte','09835823154'),(7,'Megan Franklin','Block 19 Lot 55 Pisces Grove, 45th Avenue, Pasay, 0684 Metro Manila','09307075557'),(8,'Gregory Brown','3241 Antares Street, Gladiola Homes Phase 9, Lumbatan, 4636 Batangas','09661820142'),(9,'Jacqueline Perez','8245 A Valdez Road, Tacloban, 3334 Nueva Ecija','09343391529'),(10,'Mark Howard','Unit 725 Zinia Suites, 3319 32nd Street, Dingras, 8636 Davao del Norte','09911505807'),(11,'Frank Rice','6225A Pinatubo Extension, Iba, 5452 Romblon','09592511731'),(12,'Michael Caldwell','B12 L58 Ruiz Cove, Constellation Road, San Juan, 1660 Metro Manila','09528513433'),(13,'Priscilla Mercer','Block 05 Lot 03 Sapphire Avenue, Kalachuchi Subdivision, General Luna, 2206 Sorsogon','09218751402'),(14,'Rebecca Mcdonald','B01 L13 Virgo Street, Virgo Subdivision, Taraka, 5205 Camarines Norte','09977212659'),(15,'Jasmine Hall','7980 Diamond Avenue, Malinao Village 3, Matnog, 3673 Marinduque','09440177718'),(16,'Cory Lawrence MD','5493H Champaca Street, Donsol, 9144 Misamis Oriental','09396748248'),(17,'Joshua Doyle','Block 04 Lot 33 Alvarado Cove Phase 8, Peridot Street, Alicia, 8199 Agusan del Norte','09382181898'),(18,'Pamela Doyle','4196 J Dapdap Drive, Can-avid, 5452 Nueva Vizcaya','09302133431'),(19,'Mr. Andrew Hebert','B05 L12 86th Drive, Lanzones Village, Virac, 2168 Oriental Mindoro','09154970267'),(20,'Jessica Martin','7663 Topaz Street, Mcpherson Estates, Bayang, 2094 Catanduanes','09911472716'),(21,'Stephen Reed','8641 Unit G Libra Street, Muntinlupa, 1016 Metro Manila','09717231437'),(22,'Lisa Hartman','8393 45th Extension, Powell Cove Phase 8, Aglipay, 5720 Eastern Samar','09214851759'),(23,'Dylan Singh','B04 L73 Sunstone Homes, Emerald Highway, Sablayan, 6862 Iloilo','09960537036'),(24,'Sarah Taylor','1198-F Libra Road, Tuao, 3693 Nueva Ecija','09985035398'),(25,'Brittney Green','6791 G 16th Street, Socorro, 8250 Misamis Oriental','09385872696'),(26,'Charles Anthony','7501 Matumtum Drive Extension, Asparagus Village Phase 3, Manila, 1595 Metro Manila','09689562232'),(27,'Jason Moore','2416H Mercury Drive Extension, Matalom, 4045 Benguet','09659241739'),(28,'Rachel Jones','4375 Lapis Lazuli Drive, Tamparan, 8383 Basilan','09749815767'),(29,'David Hubbard','B01 L24 Gemini Village 4, Kanlaon Street, Hadji Panglima Tahil, 5327 Batangas','09956407584'),(30,'William Shelton','8265-E Zircon Drive, General Salipada K. Pendatun, 8764 Surigao del Sur','09621211314'),(31,'Rebecca Cook','9728J Banahaw Extension, Las Piñas, 0739 Metro Manila','09136155397'),(32,'Tracey Gallagher','B20 L61 Comet Street, Ross Subdivision Phase 5, Remedios T. Romualdez, 2443 La Union','09419016220'),(33,'David Quinn','Room 519 Taylor Place Tower 1, 1015 Peridot Street, Mayorga, 5399 Tarlac','09901968787'),(34,'Danielle Simon','5791 Ingram Boulevard, Makati, 1688 Metro Manila','09961475287'),(35,'Timothy Mcpherson','B05 L51 Palali Subdivision, 70th Drive, San Guillermo, 6303 Biliran','09203977184'),(36,'David Lewis','9089 Jasper Road Extension, Kiblawan, 6299 Capiz','09940261395'),(37,'Charles Wells','B12 L92 Green Grove Phase 9, 40th Road, Calauag, 2697 Romblon','09747276442'),(38,'Lucas Klein','8684 F Jasper Street, Bani, 6436 Capiz','09650533210'),(39,'Sarah Townsend','B17 L10 Merritt Estates Phase 7, Apo Drive, Cuenca, 2959 Camarines Norte','09593053838'),(40,'Sara Smith','5244 Mayon Street, Ampatuan, 7592 Agusan del Sur','09663333879'),(41,'William Rodriguez','B08 L10 Banahaw Street, Bakawan Cove, Kalayaan, 8872 Agusan del Sur','09473123068'),(42,'Jacob Hill','Block 08 Lot 47 Sunstone Street, Zodiac Homes, Hadji Panglima Tahil, 2054 Batangas','09297644926'),(43,'Jennifer Glenn','Block 05 Lot 81 59th Drive, Chen Grove Phase 7, Gregorio del Pilar, 6627 Negros Oriental','09790251029'),(44,'Benjamin Miller','B04 L46 Amethyst Road, Uranus Cove Phase 3, Benito Soliven, 4235 Occidental Mindoro','09589330584'),(45,'Shaun Goodwin','7579 Ruby Road Extension, Dita Cove, Mandaluyong, 0818 Metro Manila','09778995750'),(46,'Amy Moore','5318 Dean Street, Parker Estates Phase 7, Bacolod, 4944 Pangasinan','09569904783'),(47,'Karen West','6497 J 29th Street, Bulalacao, 3398 Cavite','09858891964'),(48,'Tiffany Sims','Block 18 Lot 24 Pepper Subdivision Phase 6, 30th Street, Sultan Dumalondong, 8613 Agusan del Sur','09991927659'),(49,'Michele Thompson','B10 L96 Comet Village, Bakawan Drive, Delfin Albano, 3324 Apayao','09936167238'),(50,'Richard Rice','B07 L75 Sierra Madre Road, Lumbayao Cove Phase 2, Zumarraga, 2081 Sorsogon','09129066871'),(51,'Jerome Sanchez','Block 04 Lot 76 Pacheco Cove 9, Ipil Avenue, Jose Dalman, 6863 Capiz','09908063895'),(52,'Jermaine Carter','9015J Santol Drive, Kadingilan, 9637 Surigao del Sur','09696415217'),(53,'Sarah Wheeler','Block 20 Lot 57 Romero Road, Orchid Estates Phase 4, Lupon, 7221 Surigao del Sur','09359755294');
/*!40000 ALTER TABLE `costumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `method` varchar(32) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (104,'Cash',958.48),(105,'Cash',250.37),(106,'Online',958.53),(107,'Online',377.43),(108,'Card',982.56),(109,'Cash',332.66),(110,'Online',618.12),(111,'Card',867.15),(112,'Card',881.98),(113,'Online',999.72),(114,'Cash',217.10),(115,'Online',56.43),(116,'Online',852.40),(117,'Cash',511.12),(118,'Cash',739.29),(119,'Card',466.72),(120,'Card',68.27),(121,'Online',151.17),(122,'Card',209.11),(123,'Card',253.46),(124,'Card',874.99),(125,'Cash',768.60),(126,'Cash',898.67),(127,'Card',302.68),(128,'Card',983.67),(129,'Card',60.19),(130,'Cash',486.10),(131,'Cash',733.75),(132,'Card',325.17),(133,'Card',769.69),(134,'Cash',413.62),(135,'Cash',402.84),(136,'Card',403.71),(137,'Cash',102.36),(138,'Card',774.77),(139,'Online',520.38),(140,'Card',467.43),(141,'Cash',983.79),(142,'Cash',903.66),(143,'Cash',384.64),(144,'Card',798.23),(145,'Online',123.72),(146,'Cash',171.95),(147,'Online',927.98),(148,'Cash',412.10),(149,'Card',511.86),(150,'Card',815.94),(151,'Online',132.80),(152,'Card',990.88),(153,'Card',194.17),(154,'30.75',200.00),(155,'cash',206.75),(156,'cash',206.75),(157,'Cash',206.75),(158,'Cash',206.75),(159,'Cash',206.75),(160,'Cash',206.75),(161,'Cash',206.75),(162,'Cash',206.75),(163,'Cash',206.75),(164,'Cash',206.75),(165,'Cash',306.75),(166,'Cash',308.75),(167,'Cash',308.75),(168,'Cash',338.75),(169,'Cash',338.75),(170,'Cash',338.75);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Rice (5kg)',250.00,568),(2,'Bread (Loaf)',30.75,200),(3,'Instant Noodles (Pack)',12.00,776),(4,'Bottled Water (1L)',20.00,943),(5,'Coffee (100g)',75.00,634),(6,'Cooking Oil (1L)',180.00,374),(7,'Sugar (1kg)',70.00,730),(8,'Eggs (Dozen)',80.00,297),(9,'Milk (1L)',60.00,555),(10,'Butter (225g)',150.00,25),(11,'Cheese (200g)',120.00,744),(12,'Chocolate Bar',50.00,878),(13,'Canned Tuna',35.00,825),(14,'Hotdogs (1kg)',200.00,180),(15,'Pork Chops (1kg)',320.00,792),(16,'Chicken (1kg)',200.00,784),(17,'Beef (1kg)',400.00,456),(18,'Fresh Fish (1kg)',280.00,671),(19,'Ice Cream (Tub)',350.00,540),(20,'Fruit Juice (1L)',100.00,65),(21,'Dishwashing Liquid (500mL)',90.00,383),(22,'Laundry Detergent (1kg)',120.00,689),(23,'Fabric Conditioner (500mL',85.00,165),(24,'Toilet Paper (4 Rolls)',50.00,603),(25,'Shampoo (200mL)',140.00,892),(26,'Toothpaste (100g)',70.00,313),(27,'Soap Bar',35.00,132),(28,'Disinfectant Spray (350mL)',200.00,349),(29,'Trash Bags (10 Pieces)',75.00,193),(30,'Cleaning Sponge (Pack)',50.00,149);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Arjay','Tiniguiban,ppc','09568745622'),(2,'Jessica Newton','Block 21 Lot 91 Virgo Drive, Santol Homes 8, Muntinlupa, 0591 Metro Manila','09657963914'),(3,'Martha Jackson','5417 E 32nd Avenue, San Ildefonso, 9523 Bukidnon','09419226705'),(4,'Kevin Jimenez','291 Bagtikan Street, Freeman Subdivision Phase 4, San Andres, 2833 Romblon','09645239249'),(5,'Susan Houston','1387 Macopa Street, Gumaca, 2542 Ilocos Norte','09195547692'),(6,'Michael Moreno','1876-J Brown Road, San Lorenzo Ruiz, 9036 Agusan del Sur','09886254052'),(7,'Lee Matthews MD','7398G 44th Avenue, General Trias, 3893 Bataan','09558551250'),(8,'Marc Ford','Block 16 Lot 85 Garnet Extension, Hill Homes 5, Doña Remedios Trinidad, 9464 Zamboanga del Sur','09690353770'),(9,'Richard Miller','787 Cucumber Avenue, Mandaluyong, 0583 Metro Manila','09983485774'),(10,'Deborah Morgan','4F Jones Residences, 2302 Melon Avenue, Quezon City, 1382 Metro Manila','09299289399'),(11,'Corey Ryan','19F Andromeda Apartments, 6541 Sicaba Highway, Viga, 5526 Apayao','09332214202'),(12,'Jocelyn Greer','Block 04 Lot 15 Williams Cove, 59th Drive Extension, Divilacan, 2333 Quirino','09539724883'),(13,'Joseph Payne','Block 11 Lot 34 Wood Subdivision Phase 8, 16th Avenue, Bokod, 8639 Zamboanga Sibugay','09934924081'),(14,'Sandra Williams','572 Galaxy Drive, Guihulngan, 6050 Siquijor','09683024265'),(15,'Angela Fischer','Room 331 Burke Condominiums, 2533 Citrine Street, Cagayancillo, 5522 Albay','09975466180'),(16,'Patrick Fernandez','8701 56th Road, Joseph Estates Phase 7, San Teodoro, 9644 Misamis Occidental','09347868099'),(17,'Mrs. Jillian Welch','1024 Larson Road, Panay, 3306 Batangas','09153550841'),(18,'Elizabeth Martin','72 Pinatubo Drive, Mabinay, 6305 Antique','09731283777'),(19,'David Mayer','B03 L47 Diamond Street, Reeves Cove, Dumalneg, 8245 Cotabato','09282530415'),(20,'Nicholas Patel','6352 E 78th Boulevard, Sapa-Sapa, 2824 Quirino','09407474428'),(21,'Christine Miranda','9597 61st Avenue, Sineguelas Village 5, Jomalig, 6650 Biliran','09702248797'),(22,'Susan Hancock','Block 21 Lot 52 Amethyst Road, Stanley Village, Balabac, 6513 Antique','09459211027'),(23,'Grace Aguilar','4051 F Emerald Street, Kumalarang, 5706 Eastern Samar','09472904318'),(24,'Brandon Hill','B18 L48 Cook Homes, Comet Street, Malabon, 0656 Metro Manila','09635680270'),(25,'Kerri Carpenter','5687-G Arayat Drive, Larena, 5019 Antique','09897965985'),(26,'Brian Conway','Unit 6924 Opal Suites Tower 7, 9 6th Road, Basco, 8634 Misamis Oriental','09867082155'),(27,'Betty Murray','Block 24 Lot 17 Zinia Village 7, 82nd Avenue, Parañaque, 1244 Metro Manila','09450763926'),(28,'Cody Parks','Block 15 Lot 15 Jade Road, Malinao Homes, Navotas, 0978 Metro Manila','09405539169'),(29,'Chris Obrien','5623 Cresta Drive, Supa Subdivision 8, Kananga, 4065 Benguet','09764694375'),(30,'Joshua Steele','1024 Milky Way Street, Solsona, 2110 Quirino','09480622949'),(31,'Deanna Castro','5F Balimbing Residences 7, 1994 Balete Avenue Extension, Barili, 1854 Cagayan','09446274908'),(32,'Anthony Cain','3478 Earth Road, Las Piñas, 1478 Metro Manila','09694260114'),(33,'Jasmine Petersen','Room 333 Virgo Towers 3, 4879 94th Boulevard, San Simon, 6440 Leyte','09491308139'),(34,'Kimberly Nicholson','B01 L26 Black Expressway, Amber Grove 3, Madalag, 8235 Zamboanga del Norte','09395916615'),(35,'Charles Hudson','2470 Kalamansi Street, Quezon City, 1322 Metro Manila','09984048199'),(36,'Brandon York','B08 L56 Gray Cove Phase 3, Ballard Street, Peñarrubia, 5001 Negros Occidental','09831748265'),(37,'Kevin Johnson','Block 20 Lot 95 Jones Road Extension, Harrell Subdivision, Laurel, 7337 Compostela Valley','09520607905'),(38,'Eugene Whitaker','5826 Unit G Gumamela Road, Guimbal, 4888 Apayao','09385807598'),(39,'Louis Hammond','11th Floor Campbell Apartment, 4864 Banyan Road, Calanasan, 3197 Nueva Ecija','09829163717'),(40,'Katherine Flores','6882 Spencer Extension, Banahaw Homes Phase 7, Makilala, 6160 Samar','09882809402'),(41,'Lauren Davis','8280 Halcon Circle, Mati, 4871 Apayao','09811748925'),(42,'Tracy Reilly','Unit 3934 Dyer Building Tower 1, 3243 Capricorn Circle, Pata, 8784 Zamboanga del Sur','09846662377'),(43,'Austin Merritt','8476 Contreras Drive, Paniqui, 9109 Surigao del Norte','09655146319'),(44,'Joshua Cox','3052E Squash Road, San Enrique, 7452 Sultan Kudarat','09165475948'),(45,'Virginia Moore','288 Sierra Madre Street, Milky Way Homes Phase 8, San Juan, 1815 Metro Manila','09494020404'),(46,'David Fisher','8522 Moonstone Drive, Mayapis Village 9, Don Carlos, 5793 Antique','09324842398'),(47,'Marie Howard','5875 Scorpio Road, Bacong, 9771 Sarangani','09983472423'),(48,'Lori Mason','7023 Unit C 84th Avenue, Dagupan, 9734 South Cotabato','09475897820'),(49,'Thomas Sanford','1192 C Cypress Drive, San Antonio, 8845 Camiguin','09500312689'),(50,'Roberto Olson','Room 214 Hopkins Tower, 6088 Canopus Street, Pantar, 2785 Sorsogon','09581110899'),(51,'Kristina Webb','Block 03 Lot 80 Coconut Estates 2, 65th Avenue, Cabanatuan, 4056 Bulacan','09323229823'),(52,'Meghan Gardner','26F Bauhinia Place, 8724 52nd Road, Vinzons, 1910 Kalinga','09981179524'),(53,'Paige Norman','6F Aquarius Suites Tower 5, 3871 26th Road, Las Piñas, 1024 Metro Manila','09637567966'),(54,'Andre Palmer','3088 Sagittarius Road, Old Panamao, 2647 Batanes','09699948340');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NOT NULL,
  `costumer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `payment_id` int NOT NULL,
  `transaction_datetime` datetime NOT NULL,
  `product_quantity` int NOT NULL,
  PRIMARY KEY (`transaction_id`,`product_id`),
  KEY `fk_TRANSACTION_STAFF1_idx` (`staff_id`),
  KEY `fk_TRANSACTION_COSTUMER2_idx` (`costumer_id`),
  KEY `fk_TRANSACTION_PRODUCT1_idx` (`product_id`),
  KEY `fk_TRANSACTION_PAYMENT2_idx` (`payment_id`),
  CONSTRAINT `fk_TRANSACTION_COSTUMER2` FOREIGN KEY (`costumer_id`) REFERENCES `costumer` (`costumer_id`),
  CONSTRAINT `fk_TRANSACTION_PAYMENT2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `fk_TRANSACTION_PRODUCT1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_TRANSACTION_STAFF1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (4,1,1,1,104,'2020-01-11 21:16:26',91),(5,2,2,2,104,'2020-01-11 21:16:26',65),(6,3,3,3,104,'2020-01-11 21:16:26',12),(7,4,4,4,104,'2020-01-11 21:16:26',71),(8,5,5,5,104,'2020-01-11 21:16:26',74),(9,6,6,6,104,'2020-01-11 21:16:26',31),(10,7,7,7,104,'2020-01-11 21:16:26',72),(11,8,8,8,104,'2020-01-11 21:16:26',85),(12,9,9,9,104,'2020-01-11 21:16:26',96),(13,10,10,10,104,'2020-01-11 21:16:26',36),(14,11,11,11,104,'2020-01-11 21:16:26',82),(15,12,12,12,104,'2020-01-11 21:16:26',19),(16,13,13,13,104,'2020-01-11 21:16:26',32),(17,14,14,14,104,'2020-01-11 21:16:26',26),(18,15,15,15,104,'2020-01-11 21:16:26',90),(19,16,16,16,104,'2020-01-11 21:16:26',71),(20,17,17,17,104,'2020-01-11 21:16:26',100),(21,18,18,18,104,'2020-01-11 21:16:26',7),(22,19,19,19,104,'2020-01-11 21:16:26',7),(23,20,20,20,104,'2020-01-11 21:16:26',92),(24,21,21,21,104,'2020-01-11 21:16:26',83),(25,22,22,22,104,'2020-01-11 21:16:26',84),(26,23,23,23,104,'2020-01-11 21:16:26',30),(27,24,24,24,104,'2020-01-11 21:16:26',18),(28,25,25,25,104,'2020-01-11 21:16:26',28),(29,26,26,26,104,'2020-01-11 21:16:26',77),(30,27,27,27,104,'2020-01-11 21:16:26',18),(31,28,28,28,104,'2020-01-11 21:16:26',6),(32,29,29,29,104,'2020-01-11 21:16:26',61),(33,30,30,30,104,'2020-01-11 21:16:26',90),(34,2,6,2,168,'2024-12-14 12:03:12',10),(35,2,6,2,169,'2024-12-14 12:04:50',10),(36,2,6,2,170,'2024-12-14 14:14:31',10);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14 20:18:43
