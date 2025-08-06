CREATE DATABASE  IF NOT EXISTS `ngo_medical_inventory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ngo_medical_inventory`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: ngo_medical_inventory
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Temporary view structure for view `available_medicines`
--

DROP TABLE IF EXISTS `available_medicines`;
/*!50001 DROP VIEW IF EXISTS `available_medicines`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `available_medicines` AS SELECT 
 1 AS `medicine_name`,
 1 AS `batch_number`,
 1 AS `quantity`,
 1 AS `expiry_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clinic`
--

DROP TABLE IF EXISTS `clinic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinic` (
  `clinic_id` int NOT NULL AUTO_INCREMENT,
  `clinic_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  PRIMARY KEY (`clinic_id`),
  UNIQUE KEY `clinic_name` (`clinic_name`,`location`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic`
--

LOCK TABLES `clinic` WRITE;
/*!40000 ALTER TABLE `clinic` DISABLE KEYS */;
INSERT INTO `clinic` VALUES (1,'Rural Health Center','Bhiwani','Dr. Sanjay Verma','9012345670','Bhiwani','Haryana','127021'),(2,'Gramin Swasthya Kendra','Wardha','Dr. Priyanka Deshmukh','9023456781','Wardha','Maharashtra','442001'),(3,'Jan Arogya Clinic','Darbhanga','Dr. Rakesh Kumar','9034567892','Darbhanga','Bihar','846004'),(4,'Adivasi Swasthya Seva','Jhabua','Dr. Anita Solanki','9045678903','Jhabua','Madhya Pradesh','457661'),(5,'Kisan Health Center','Sangrur','Dr. Harpreet Singh','9056789014','Sangrur','Punjab','148001'),(6,'Tribal Medical Unit','Koraput','Dr. Madhu Koda','9067890125','Koraput','Odisha','764020'),(7,'Grameen Arogya Kendra','Barmer','Dr. Vikram Rathore','9078901236','Barmer','Rajasthan','344001'),(8,'Seva Clinic','Bastar','Dr. Sunita Nag','9089012347','Bastar','Chhattisgarh','494222'),(9,'Pragati Medical Center','Nalbari','Dr. Arjun Das','9090123458','Nalbari','Assam','781335'),(10,'Aarogya Niketan','Kalahandi','Dr. Bikram Patra','9101234569','Kalahandi','Odisha','766001'),(11,'Swasthya Sahayata','Palamu','Dr. Rajiv Ranjan','9111122334','Palamu','Jharkhand','822102'),(12,'Jan Kalyan Clinic','Osmanabad','Dr. Meena Gaikwad','9122233445','Osmanabad','Maharashtra','413501'),(13,'Gramin Hospital','Sitapur','Dr. Alok Mishra','9133344556','Sitapur','Uttar Pradesh','261001'),(14,'Adivasi Arogya Kendra','Dahod','Dr. Jayanti Vasava','9144455667','Dahod','Gujarat','389151'),(15,'Kisan Swasthya Seva','Fatehpur','Dr. Ramesh Chandra','9155566778','Fatehpur','Uttar Pradesh','212601'),(16,'Rural Medical Unit','Narmada','Dr. Leela Patel','9166677889','Narmada','Gujarat','393150'),(17,'Gram Swasthya Kendra','Korba','Dr. Anil Agrawal','9177788990','Korba','Chhattisgarh','495677'),(18,'Jan Seva Clinic','Siddharthnagar','Dr. Sunil Tripathi','9188899001','Siddharthnagar','Uttar Pradesh','272207'),(19,'Aarogya Vihar','Jaisalmer','Dr. Priyanka Sharma','9199900112','Jaisalmer','Rajasthan','345001'),(20,'Swasthya Kendra','Nuapada','Dr. Bimala Meher','9200011223','Nuapada','Odisha','766105'),(21,'Grameen Hospital','Katihar','Dr. Amitabh Sinha','9211223344','Katihar','Bihar','854105'),(22,'Adivasi Health Center','Dangs','Dr. Kiran Gamit','9222334455','Dangs','Gujarat','394710'),(23,'Kisan Arogya Seva','Mansa','Dr. Gurpreet Kaur','9233445566','Mansa','Punjab','151505'),(24,'Rural Health Unit','Balrampur','Dr. Vinod Yadav','9244556677','Balrampur','Uttar Pradesh','271201'),(25,'Gramin Arogya Kendra','Kanker','Dr. Rekha Sahu','9255667788','Kanker','Chhattisgarh','494334');
/*!40000 ALTER TABLE `clinic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clinic_dispatches`
--

DROP TABLE IF EXISTS `clinic_dispatches`;
/*!50001 DROP VIEW IF EXISTS `clinic_dispatches`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clinic_dispatches` AS SELECT 
 1 AS `clinic_name`,
 1 AS `medicine_name`,
 1 AS `total_quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dispatch`
--

DROP TABLE IF EXISTS `dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispatch` (
  `dispatch_id` int NOT NULL AUTO_INCREMENT,
  `inventory_id` int NOT NULL,
  `clinic_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `dispatch_date` date NOT NULL,
  `quantity` int NOT NULL,
  `purpose` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`dispatch_id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `clinic_id` (`clinic_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `dispatch_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`),
  CONSTRAINT `dispatch_ibfk_2` FOREIGN KEY (`clinic_id`) REFERENCES `clinic` (`clinic_id`),
  CONSTRAINT `dispatch_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  CONSTRAINT `dispatch_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatch`
--

LOCK TABLES `dispatch` WRITE;
/*!40000 ALTER TABLE `dispatch` DISABLE KEYS */;
INSERT INTO `dispatch` VALUES (1,1,1,1,'2024-01-20',500,'Regular supply for rural health center'),(2,2,2,2,'2024-01-22',450,'Regular supply for gramin center'),(3,3,3,3,'2024-01-25',300,'Allergy season requirements'),(4,4,4,4,'2024-01-28',280,'Allergy treatment in tribal area'),(5,5,5,5,'2024-02-01',200,'Bacterial infection outbreak'),(6,6,6,6,'2024-02-05',180,'Infection treatment in tribal area'),(7,7,7,7,'2024-02-10',150,'Gastric issues in rural area'),(8,8,8,8,'2024-02-15',140,'Acidity problems in region'),(9,9,9,9,'2024-02-18',100,'Cholesterol screening camp'),(10,10,10,10,'2024-02-20',95,'Cardiac health initiative'),(11,11,11,11,'2024-02-22',250,'Diabetes awareness program'),(12,12,12,12,'2024-02-25',230,'Blood sugar management'),(13,13,13,13,'2024-02-28',180,'Pain management for farmers'),(14,14,14,14,'2024-03-01',170,'Joint pain relief program'),(15,15,15,15,'2024-03-05',400,'Fever season preparation'),(16,16,16,16,'2024-03-08',380,'Seasonal illness prevention'),(17,17,17,17,'2024-03-10',120,'Respiratory infection treatment'),(18,18,18,18,'2024-03-12',110,'Cough and cold relief'),(19,19,19,19,'2024-03-15',90,'Hypertension management'),(20,20,20,20,'2024-03-18',85,'Blood pressure control'),(21,21,21,21,'2024-03-20',160,'Acidity issues in region'),(22,22,22,22,'2024-03-22',150,'Digestive health program'),(23,23,23,23,'2024-03-25',110,'Asthma prevalence area'),(24,24,24,24,'2024-03-28',100,'Respiratory health initiative'),(25,25,25,25,'2024-03-30',80,'Inflammation treatment'),(26,1,2,3,'2025-04-26',20,'Routine clinic supply');
/*!40000 ALTER TABLE `dispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `donor_id` int NOT NULL AUTO_INCREMENT,
  `donor_name` varchar(100) NOT NULL,
  `donor_type` enum('Individual','Corporate','Government') NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `registration_date` date NOT NULL,
  PRIMARY KEY (`donor_id`),
  UNIQUE KEY `contact_number` (`contact_number`,`email`),
  KEY `idx_donor_search` (`donor_name`,`donor_type`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES (1,'Rajesh Sharma','Individual','9812345670','rajesh.sharma@example.com','12 Gandhi Nagar, Delhi','2024-01-15'),(2,'Priya Patel','Individual','9823456781','priya.patel@example.com','34 Nehru Road, Mumbai','2024-01-20'),(3,'Sun Pharma','Corporate','9834567892','cs@sunpharma.com','Corporate Office, Mumbai','2023-12-10'),(4,'Ministry of Health','Government','0112345678','moh@health.gov.in','Government Building, New Delhi','2023-11-05'),(5,'Amit Kumar','Individual','9845678903','amit.kumar@example.com','56 Tagore Street, Kolkata','2024-02-01'),(6,'Dr. Reddy\'s Labs','Corporate','9856789014','info@drreddys.com','Hyderabad, Telangana','2023-10-15'),(7,'Ananya Singh','Individual','9867890125','ananya.singh@example.com','78 MG Road, Bangalore','2024-01-25'),(8,'Cipla Ltd','Corporate','9878901236','donations@cipla.com','Mumbai, Maharashtra','2023-09-20'),(9,'Vikram Joshi','Individual','9889012347','vikram.joshi@example.com','90 Patel Chowk, Pune','2024-02-10'),(10,'State Medical Corp','Government','0222345678','smc@maharashtra.gov.in','Mumbai, Maharashtra','2023-08-15'),(11,'Neha Gupta','Individual','9890123458','neha.gupta@example.com','23 Lake View, Chennai','2024-01-30'),(12,'Glenmark Pharma','Corporate','9801234569','csr@glenmark.com','Andheri, Mumbai','2023-07-10'),(13,'Rahul Verma','Individual','9811122334','rahul.verma@example.com','45 Shivaji Marg, Jaipur','2024-02-15'),(14,'Lupin Ltd','Corporate','9822233445','info@lupin.com','Pune, Maharashtra','2023-06-05'),(15,'Smita Desai','Individual','9833344556','smita.desai@example.com','67 Gandhi Road, Ahmedabad','2024-01-10'),(16,'Aurobindo Pharma','Corporate','9844455667','donations@aurobindo.com','Hyderabad, Telangana','2023-05-20'),(17,'Arjun Mehta','Individual','9855566778','arjun.mehta@example.com','89 Nehru Place, Chandigarh','2024-02-20'),(18,'Torrent Pharma','Corporate','9866677889','csr@torrentpharma.com','Ahmedabad, Gujarat','2023-04-15'),(19,'Kavita Reddy','Individual','9877788990','kavita.reddy@example.com','12 Brigade Road, Hyderabad','2024-01-05'),(20,'Zydus Cadila','Corporate','9888899001','info@zyduscadila.com','Ahmedabad, Gujarat','2023-03-10'),(21,'Nitin Malhotra','Individual','9899900112','nitin.malhotra@example.com','34 Connaught Place, Delhi','2024-02-25'),(22,'Biocon Ltd','Corporate','9800011223','donations@biocon.com','Bangalore, Karnataka','2023-02-05'),(23,'Pooja Choudhary','Individual','9811223344','pooja.choudhary@example.com','56 Marine Drive, Mumbai','2024-01-15'),(24,'Alkem Labs','Corporate','9822334455','csr@alkem.com','Mumbai, Maharashtra','2023-01-20'),(25,'Sanjay Kapoor','Individual','9833445566','sanjay.kapoor@example.com','78 Park Street, Kolkata','2024-02-28');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `donor_contributions`
--

DROP TABLE IF EXISTS `donor_contributions`;
/*!50001 DROP VIEW IF EXISTS `donor_contributions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `donor_contributions` AS SELECT 
 1 AS `donor_name`,
 1 AS `donor_type`,
 1 AS `donations_count`,
 1 AS `total_units_donated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expiring_soon`
--

DROP TABLE IF EXISTS `expiring_soon`;
/*!50001 DROP VIEW IF EXISTS `expiring_soon`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `expiring_soon` AS SELECT 
 1 AS `medicine_name`,
 1 AS `batch_number`,
 1 AS `expiry_date`,
 1 AS `quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `medicine_id` int NOT NULL,
  `batch_number` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `expiry_date` date NOT NULL,
  `donation_date` date NOT NULL,
  `donor_id` int NOT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `storage_location` varchar(50) NOT NULL,
  `status` enum('Available','Reserved','Dispatched','Expired') DEFAULT 'Available',
  PRIMARY KEY (`inventory_id`),
  UNIQUE KEY `medicine_id` (`medicine_id`,`batch_number`),
  KEY `donor_id` (`donor_id`),
  KEY `idx_inventory_expiry` (`expiry_date`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`medicine_id`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`),
  CONSTRAINT `inventory_chk_1` CHECK ((`quantity` >= 0)),
  CONSTRAINT `inventory_chk_2` CHECK ((`unit_price` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,'PC202401A',4960,'2025-06-30','2024-01-10',3,0.50,'Shelf A1','Available'),(2,2,'PC202401B',4500,'2025-07-15','2024-01-12',6,0.55,'Shelf A2','Available'),(3,3,'CT202312A',3000,'2025-05-15','2023-12-15',1,1.20,'Shelf B1','Available'),(4,4,'CT202312B',2800,'2025-06-20','2023-12-18',7,1.25,'Shelf B2','Available'),(5,5,'AM202402A',0,'2025-07-20','2024-02-05',2,2.50,'Refrigerator1','Dispatched'),(6,6,'AM202402B',1800,'2025-08-10','2024-02-08',8,2.60,'Refrigerator2','Available'),(7,7,'OM202311A',1500,'2024-11-30','2023-11-20',4,3.00,'Shelf C1','Available'),(8,8,'OM202311B',1400,'2024-12-15','2023-11-25',9,3.10,'Shelf C2','Available'),(9,9,'AT202401A',1000,'2026-01-15','2024-01-25',5,4.50,'Shelf D1','Available'),(10,10,'AT202401B',950,'2026-02-28','2024-01-28',10,4.60,'Shelf D2','Available'),(11,11,'ME202312A',2500,'2025-08-10','2023-12-05',11,1.80,'Shelf A3','Available'),(12,12,'ME202312B',2300,'2025-09-05','2023-12-08',16,1.85,'Shelf A4','Available'),(13,13,'IB202402A',1800,'2025-09-25','2024-02-10',12,2.20,'Shelf B3','Available'),(14,14,'IB202402B',1700,'2025-10-10','2024-02-12',17,2.25,'Shelf B4','Available'),(15,15,'DL202401A',4000,'2025-10-30','2024-01-15',13,0.75,'Shelf C3','Available'),(16,16,'DL202401B',3800,'2025-11-15','2024-01-18',18,0.80,'Shelf C4','Available'),(17,17,'AZ202312A',1200,'2025-04-15','2023-12-20',14,3.50,'Refrigerator3','Available'),(18,18,'AZ202312B',1100,'2025-05-10','2023-12-22',19,3.60,'Refrigerator4','Available'),(19,19,'LO202402A',900,'2026-02-28','2024-02-15',15,5.00,'Shelf D3','Available'),(20,20,'LO202402B',850,'2026-03-15','2024-02-18',20,5.10,'Shelf D4','Available'),(21,21,'PA202401A',1600,'2025-11-20','2024-01-30',21,2.80,'Shelf A5','Available'),(22,22,'PA202401B',1500,'2025-12-05','2024-02-02',22,2.90,'Shelf A6','Available'),(23,23,'MO202312A',1100,'2025-07-05','2023-12-10',23,4.20,'Shelf B5','Available'),(24,24,'MO202312B',1000,'2025-07-20','2023-12-12',24,4.30,'Shelf B6','Available'),(25,25,'DX202402A',800,'2025-08-15','2024-02-20',25,6.50,'Refrigerator5','Available'),(26,1,'BATCH001',100,'2025-12-31','2025-04-26',2,10.50,'Storage Room A','Available');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `medicine_id` int NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(100) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `medicine_type` enum('Tablet','Syrup','Injection','Ointment','Capsule') NOT NULL,
  `description` text,
  PRIMARY KEY (`medicine_id`),
  UNIQUE KEY `medicine_name` (`medicine_name`,`manufacturer`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'Paracetamol','Cipla','Tablet','Pain reliever and fever reducer'),(2,'Paracetamol','Sun Pharma','Tablet','Pain reliever and fever reducer'),(3,'Cetirizine','Cipla','Tablet','Antihistamine for allergies'),(4,'Cetirizine','Dr. Reddy\'s','Tablet','Antihistamine for allergies'),(5,'Amoxicillin','Cipla','Capsule','Antibiotic for bacterial infections'),(6,'Amoxicillin','Lupin','Capsule','Antibiotic for bacterial infections'),(7,'Omeprazole','Zydus Cadila','Capsule','For acid reflux and heartburn'),(8,'Omeprazole','Glenmark','Capsule','For acid reflux and heartburn'),(9,'Atorvastatin','Aurobindo','Tablet','Cholesterol-lowering medicine'),(10,'Atorvastatin','Torrent','Tablet','Cholesterol-lowering medicine'),(11,'Metformin','Biocon','Tablet','For type 2 diabetes'),(12,'Metformin','Alkem','Tablet','For type 2 diabetes'),(13,'Ibuprofen','Sun Pharma','Tablet','Nonsteroidal anti-inflammatory drug'),(14,'Ibuprofen','Dr. Reddy\'s','Tablet','Nonsteroidal anti-inflammatory drug'),(15,'Dolo 650','Micro Labs','Tablet','Paracetamol brand for fever'),(16,'Dolo 650','Cipla','Tablet','Paracetamol brand for fever'),(17,'Azithromycin','Lupin','Tablet','Macrolide antibiotic'),(18,'Azithromycin','Zydus Cadila','Tablet','Macrolide antibiotic'),(19,'Losartan','Glenmark','Tablet','For high blood pressure'),(20,'Losartan','Aurobindo','Tablet','For high blood pressure'),(21,'Pantoprazole','Torrent','Tablet','Proton pump inhibitor'),(22,'Pantoprazole','Biocon','Tablet','Proton pump inhibitor'),(23,'Montelukast','Alkem','Tablet','For asthma and allergies'),(24,'Montelukast','Sun Pharma','Tablet','For asthma and allergies'),(25,'Dexamethasone','Dr. Reddy\'s','Tablet','Corticosteroid for inflammation');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `join_date` date NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `contact_number` (`contact_number`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Ramesh Kumar','Inventory Manager','9912345670','ramesh.kumar@ngo.org','2023-01-10'),(2,'Sunita Devi','Pharmacist','9923456781','sunita.devi@ngo.org','2023-02-15'),(3,'Amit Singh','Logistics Coordinator','9934567892','amit.singh@ngo.org','2023-03-20'),(4,'Priyanka Sharma','Donation Coordinator','9945678903','priyanka.sharma@ngo.org','2023-04-05'),(5,'Vikram Patel','Field Officer','9956789014','vikram.patel@ngo.org','2023-05-12'),(6,'Anjali Gupta','Pharmacist','9967890125','anjali.gupta@ngo.org','2023-06-18'),(7,'Rajiv Malhotra','IT Support','9978901236','rajiv.malhotra@ngo.org','2023-07-22'),(8,'Neha Joshi','Inventory Assistant','9989012347','neha.joshi@ngo.org','2023-08-30'),(9,'Arun Mehta','Logistics Assistant','9990123458','arun.mehta@ngo.org','2023-09-05'),(10,'Pooja Reddy','Donation Assistant','9901234569','pooja.reddy@ngo.org','2023-10-10'),(11,'Sanjay Verma','Field Officer','9911122334','sanjay.verma@ngo.org','2023-11-15'),(12,'Kavita Choudhary','Pharmacist','9922233445','kavita.choudhary@ngo.org','2023-12-20'),(13,'Rahul Desai','IT Assistant','9933344556','rahul.desai@ngo.org','2024-01-05'),(14,'Meena Kapoor','Inventory Clerk','9944455667','meena.kapoor@ngo.org','2024-01-15'),(15,'Vishal Singh','Logistics Clerk','9955566778','vishal.singh@ngo.org','2024-01-20'),(16,'Anita Mishra','Donation Clerk','9966677889','anita.mishra@ngo.org','2024-01-25'),(17,'Prakash Tiwari','Field Assistant','9977788990','prakash.tiwari@ngo.org','2024-02-01'),(18,'Divya Nair','Pharmacist Assistant','9988899001','divya.nair@ngo.org','2024-02-05'),(19,'Alok Saxena','IT Technician','9999900112','alok.saxena@ngo.org','2024-02-10'),(20,'Smita Iyer','Inventory Helper','9900011223','smita.iyer@ngo.org','2024-02-15'),(21,'Deepak Sharma','Logistics Helper','9911223344','deepak.sharma@ngo.org','2024-02-20'),(22,'Rina Banerjee','Donation Helper','9922334455','rina.banerjee@ngo.org','2024-02-25'),(23,'Kiran Bedi','Field Helper','9933445566','kiran.bedi@ngo.org','2024-03-01'),(24,'Manoj Pandey','Pharmacist Helper','9944556677','manoj.pandey@ngo.org','2024-03-05'),(25,'Shweta Rao','IT Helper','9955667788','shweta.rao@ngo.org','2024-03-10');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `available_medicines`
--

/*!50001 DROP VIEW IF EXISTS `available_medicines`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `available_medicines` AS select `m`.`medicine_name` AS `medicine_name`,`i`.`batch_number` AS `batch_number`,`i`.`quantity` AS `quantity`,`i`.`expiry_date` AS `expiry_date` from (`inventory` `i` join `medicine` `m` on((`i`.`medicine_id` = `m`.`medicine_id`))) where (`i`.`status` = 'Available') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clinic_dispatches`
--

/*!50001 DROP VIEW IF EXISTS `clinic_dispatches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clinic_dispatches` AS select `c`.`clinic_name` AS `clinic_name`,`m`.`medicine_name` AS `medicine_name`,sum(`d`.`quantity`) AS `total_quantity` from (((`dispatch` `d` join `clinic` `c` on((`d`.`clinic_id` = `c`.`clinic_id`))) join `inventory` `i` on((`d`.`inventory_id` = `i`.`inventory_id`))) join `medicine` `m` on((`i`.`medicine_id` = `m`.`medicine_id`))) group by `c`.`clinic_name`,`m`.`medicine_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `donor_contributions`
--

/*!50001 DROP VIEW IF EXISTS `donor_contributions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `donor_contributions` AS select `d`.`donor_name` AS `donor_name`,`d`.`donor_type` AS `donor_type`,count(`i`.`inventory_id`) AS `donations_count`,sum(`i`.`quantity`) AS `total_units_donated` from (`donor` `d` left join `inventory` `i` on((`d`.`donor_id` = `i`.`donor_id`))) group by `d`.`donor_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expiring_soon`
--

/*!50001 DROP VIEW IF EXISTS `expiring_soon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expiring_soon` AS select `m`.`medicine_name` AS `medicine_name`,`i`.`batch_number` AS `batch_number`,`i`.`expiry_date` AS `expiry_date`,`i`.`quantity` AS `quantity` from (`inventory` `i` join `medicine` `m` on((`i`.`medicine_id` = `m`.`medicine_id`))) where (`i`.`expiry_date` between curdate() and (curdate() + interval 3 month)) order by `i`.`expiry_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 22:14:11
