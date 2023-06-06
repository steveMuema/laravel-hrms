-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)

--

-- Host: localhost    Database: _afriq_hrm_

-- ------------------------------------------------------

-- Server version	8.0.30-0ubuntu0.22.04.1



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

-- Table structure for table `action_events`

--



DROP TABLE IF EXISTS `action_events`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `action_events` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,

  `user_id` bigint unsigned NOT NULL,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `actionable_id` bigint unsigned NOT NULL,

  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `target_id` bigint unsigned NOT NULL,

  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `model_id` bigint unsigned DEFAULT NULL,

  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',

  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  `original` mediumtext COLLATE utf8mb4_unicode_ci,

  `changes` mediumtext COLLATE utf8mb4_unicode_ci,

  PRIMARY KEY (`id`),

  KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),

  KEY `action_events_target_type_target_id_index` (`target_type`,`target_id`),

  KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),

  KEY `action_events_user_id_index` (`user_id`)

) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `action_events`

--



LOCK TABLES `action_events` WRITE;

/*!40000 ALTER TABLE `action_events` DISABLE KEYS */;

INSERT INTO `action_events` VALUES (1,'9771c8f3-0198-4ad8-bc5d-beabc58069bd',1,'Create','App\\Models\\Staff',4,'App\\Models\\Staff',4,'App\\Models\\Staff',4,'','finished','','2022-10-07 16:33:04','2022-10-07 16:33:04',NULL,'{\"picture\":\"mUuwnmWg2XVJ0orOf0DFJkyhODF8RVCDaRgLRp5W.jpg\",\"firstname\":\"Steve\",\"lastname\":\"Muema\",\"email\":\"stevemuema@gmail.com\",\"password\":\"$2y$10$fx7X4qDb16NLsGIrSktiAO5rE\\/1Yxn0PiHNF82Kik8awcuSacPRkO\",\"status\":\"1\",\"identity_no\":\"292933930\",\"personal_email\":\"steve@gmail.com\",\"contact_no\":\"254712345678\",\"date_of_birth\":\"2022-10-06T21:00:00.000000Z\",\"gender\":\"male\",\"emergency_contact_relationship\":\"Brother\",\"emergency_contact\":\"254712345676\",\"current_address\":\"Nairobi\",\"city\":\"Nairobi\",\"permanent_address\":\"Nairobi\",\"emergency_contact_address\":\"Nairobi\",\"type\":\"office\",\"staff_status\":\"0\",\"branch_id\":3,\"department_id\":4,\"joining_date\":\"2022-10-06T21:00:00.000000Z\",\"exit_date\":null,\"designation\":\"Here\",\"updated_at\":\"2022-10-07T13:33:04.000000Z\",\"created_at\":\"2022-10-07T13:33:04.000000Z\",\"id\":4,\"full_name\":\"Steve Muema\"}'),(2,'9771c9ae-6c7b-4c24-8877-6fdbbc054654',1,'Create','App\\Models\\JobApplication',1,'App\\Models\\JobApplication',1,'App\\Models\\JobApplication',1,'','finished','','2022-10-07 16:35:07','2022-10-07 16:35:07',NULL,'{\"job_title\":\"Customer Service Job\",\"job_description\":\"Service\",\"job_position\":\"Customer Service\",\"job_link\":\"none\",\"start_date\":\"2022-10-06T21:00:00.000000Z\",\"end_date\":\"2022-10-26T21:00:00.000000Z\",\"updated_at\":\"2022-10-07T13:35:07.000000Z\",\"created_at\":\"2022-10-07T13:35:07.000000Z\",\"id\":1}'),(3,'9771ce99-201c-4c05-bdf2-aedd7baa840d',1,'Create','App\\Models\\WorkShift',1,'App\\Models\\WorkShift',1,'App\\Models\\WorkShift',1,'','finished','','2022-10-07 16:48:52','2022-10-07 16:48:52',NULL,'{\"name\":\"Day Shift\",\"start_date\":\"2022-07-01T06:00:00.000000Z\",\"end_date\":\"2022-10-31T14:00:00.000000Z\",\"updated_at\":\"2022-10-07T13:48:52.000000Z\",\"created_at\":\"2022-10-07T13:48:52.000000Z\",\"id\":1}'),(4,'9771ceaa-4e19-4d05-8188-8be8b7ebab6a',1,'Attach','App\\Models\\WorkShift',1,'App\\Models\\Staff',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2022-10-07 16:49:03','2022-10-07 16:49:03',NULL,'{\"work_shift_id\":\"1\",\"staff_id\":\"1\"}'),(5,'9771cee4-30fe-45ab-8010-2c46185ad15d',1,'Create','App\\Models\\Department',5,'App\\Models\\Department',5,'App\\Models\\Department',5,'','finished','','2022-10-07 16:49:41','2022-10-07 16:49:41',NULL,'{\"department_name\":\"Customer service\",\"updated_at\":\"2022-10-07T13:49:41.000000Z\",\"created_at\":\"2022-10-07T13:49:41.000000Z\",\"id\":5}'),(6,'9771cef8-f223-4a36-baf3-461967964897',1,'Create','App\\Models\\Branch',5,'App\\Models\\Branch',5,'App\\Models\\Branch',5,'','finished','','2022-10-07 16:49:55','2022-10-07 16:49:55',NULL,'{\"name\":\"Home\",\"address\":\"Home\",\"updated_at\":\"2022-10-07T13:49:55.000000Z\",\"created_at\":\"2022-10-07T13:49:55.000000Z\",\"id\":5}'),(7,'9771cfaa-950b-4bbe-a7b2-3b7752c13196',1,'Create','KirschbaumDevelopment\\NovaMail\\Models\\NovaMailTemplate',1,'KirschbaumDevelopment\\NovaMail\\Models\\NovaMailTemplate',1,'KirschbaumDevelopment\\NovaMail\\Models\\NovaMailTemplate',1,'','finished','','2022-10-07 16:51:51','2022-10-07 16:51:51',NULL,'{\"name\":\"Applied Mail Template\",\"subject\":\"Thank you for applying to Afriq Networks\",\"content\":\"Dear John Doe,\\r\\n\\r\\nThank you for your interest in joining Afriq Networks! We know you have many options so we appreciate you taking the time to apply.\\r\\n\\r\\nWhat happens next? The Talent Acquisition team will review your resume with the hiring team over the next few days and if there is a fit, we will reach out to you. If we don\'t have an open role that aligns at this time, please continue to apply to other roles in the future.\\r\\n\\r\\nWe hope you and your loved ones are staying happy, healthy, and safe.\\r\\n\\r\\nBest regards,\\r\\n\\r\\nTalent Acquisition Team Afriq Networks\",\"send_delay_in_minutes\":\"0\",\"user_id\":1,\"updated_at\":\"2022-10-07T13:51:51.000000Z\",\"created_at\":\"2022-10-07T13:51:51.000000Z\",\"id\":1}'),(8,'9771cfde-f92c-4bce-a0ae-8f12187de4d8',1,'Create','KirschbaumDevelopment\\NovaMail\\Models\\NovaMailEvent',1,'KirschbaumDevelopment\\NovaMail\\Models\\NovaMailEvent',1,'KirschbaumDevelopment\\NovaMail\\Models\\NovaMailEvent',1,'','finished','','2022-10-07 16:52:25','2022-10-07 16:52:25',NULL,'{\"mail_template_id\":1,\"model\":\"App\\\\Models\\\\Applicant\",\"name\":\"Applied Mail Event\",\"column\":\"status\",\"value\":\"applied\",\"user_id\":1,\"updated_at\":\"2022-10-07T13:52:25.000000Z\",\"created_at\":\"2022-10-07T13:52:25.000000Z\",\"id\":1}'),(9,'9771d095-b522-4356-85a0-54fade43e2e4',1,'Create','App\\Models\\Salary',1,'App\\Models\\Salary',1,'App\\Models\\Salary',1,'','finished','','2022-10-07 16:54:25','2022-10-07 16:54:25',NULL,'{\"staff_id\":1,\"gross_salary\":\"10000\",\"basic_salary\":\"10000\",\"hardship_allowance\":\"200\",\"medical_allowance\":\"200\",\"special_allowance\":\"200\",\"commuter_allowance\":\"200\",\"paye_deduction\":\"200\",\"updated_at\":\"2022-10-07T13:54:25.000000Z\",\"created_at\":\"2022-10-07T13:54:25.000000Z\",\"id\":1}'),(10,'9775522b-7b48-480b-8c48-8d79dd6e54b7',1,'Create','App\\Models\\Staff',5,'App\\Models\\Staff',5,'App\\Models\\Staff',5,'','finished','','2022-10-09 10:44:15','2022-10-09 10:44:15',NULL,'{\"picture\":\"qGp0WDeSIU9AUWHdPKuCh8Rq75ioNG8o3tsCG77l.jpg\",\"firstname\":\"Kamau\",\"lastname\":\"Njoroge\",\"email\":\"ricreatek@gmail.com\",\"password\":\"$2y$10$RkZS\\/yfqjluDTgOcG4HqtO9doDMPumqTJMW2YH3ZfPB83Di7OgeCq\",\"status\":\"-2\",\"identity_no\":\"2777777777777777\",\"personal_email\":\"ricreatek@gmail.com\",\"contact_no\":\"254715157766\",\"date_of_birth\":\"2022-10-30T21:00:00.000000Z\",\"gender\":\"male\",\"emergency_contact_relationship\":\"Father\",\"emergency_contact\":\"0715157766\",\"current_address\":\"Ngara\",\"city\":\"Nairobi\",\"permanent_address\":\"Ngara\",\"emergency_contact_address\":\"Kapsabet\",\"type\":\"office\",\"staff_status\":\"1\",\"branch_id\":1,\"department_id\":4,\"joining_date\":\"2022-12-30T21:00:00.000000Z\",\"exit_date\":\"2021-05-31T21:00:00.000000Z\",\"designation\":\"Watchman\",\"updated_at\":\"2022-10-09T07:44:15.000000Z\",\"created_at\":\"2022-10-09T07:44:15.000000Z\",\"id\":5,\"full_name\":\"Kamau Njoroge\"}'),(11,'977553b0-2c6a-4ad1-b979-a246067d32f8',1,'Create','App\\Models\\Salary',2,'App\\Models\\Salary',2,'App\\Models\\Salary',2,'','finished','','2022-10-09 10:48:30','2022-10-09 10:48:30',NULL,'{\"staff_id\":5,\"gross_salary\":\"50000\",\"basic_salary\":\"50000\",\"hardship_allowance\":\"-2\",\"medical_allowance\":\"2\",\"special_allowance\":\"-2\",\"commuter_allowance\":\"5\",\"paye_deduction\":\"9050\",\"updated_at\":\"2022-10-09T07:48:30.000000Z\",\"created_at\":\"2022-10-09T07:48:30.000000Z\",\"id\":2}'),(12,'9775552b-9a97-4794-becf-d45e0fb88ee4',1,'Create','App\\Models\\JobApplication',2,'App\\Models\\JobApplication',2,'App\\Models\\JobApplication',2,'','finished','','2022-10-09 10:52:38','2022-10-09 10:52:38',NULL,'{\"job_title\":\"Gamer\",\"job_description\":\"Gaming expert\",\"job_position\":\"Gaming expert\",\"job_link\":\"http:\\/\\/dev-demo.afriqnetworks.co.ke\\/\",\"start_date\":\"2020-08-31T21:00:00.000000Z\",\"end_date\":\"2021-01-31T21:00:00.000000Z\",\"updated_at\":\"2022-10-09T07:52:38.000000Z\",\"created_at\":\"2022-10-09T07:52:38.000000Z\",\"id\":2}'),(13,'9775561d-b18b-451c-9bde-8a399dcf0139',1,'Create','App\\Models\\Applicant',1,'App\\Models\\Applicant',1,'App\\Models\\Applicant',1,'','finished','','2022-10-09 10:55:17','2022-10-09 10:55:17',NULL,'{\"status\":\"applied\",\"first_name\":\"Gamer\",\"last_name\":\"Canaan\",\"email\":\"gamer@canaan.com\",\"job_application_id\":2,\"dob\":\"2024-06-29T21:00:00.000000Z\",\"years_of_experience\":\"-10\",\"cv\":\"FAJSaVmiWpusO6O4VK8zExDP16jwDCN3h7z680eJ.docx\",\"full_name\":\"Gamer Canaan\",\"updated_at\":\"2022-10-09T07:55:17.000000Z\",\"created_at\":\"2022-10-09T07:55:17.000000Z\",\"id\":1}'),(14,'97755e78-165b-448b-93cd-cd747c701dc0',1,'Create','App\\Models\\Branch',6,'App\\Models\\Branch',6,'App\\Models\\Branch',6,'','finished','','2022-10-09 11:18:38','2022-10-09 11:18:38',NULL,'{\"name\":\"Mandera\",\"address\":\"Mandera Wajir Roa\",\"updated_at\":\"2022-10-09T08:18:38.000000Z\",\"created_at\":\"2022-10-09T08:18:38.000000Z\",\"id\":6}'),(15,'97756138-10ca-43d8-a2c7-13105cb2b69c',1,'Update','App\\Models\\Branch',6,'App\\Models\\Branch',6,'App\\Models\\Branch',6,'','finished','','2022-10-09 11:26:20','2022-10-09 11:26:20','{\"address\":\"Mandera Wajir Roa\"}','{\"address\":\"Mandera \\/ Wajir Roa\"}'),(16,'97756169-d1dd-4591-bba2-2fa5a68c0851',1,'Create','App\\Models\\Department',6,'App\\Models\\Department',6,'App\\Models\\Department',6,'','finished','','2022-10-09 11:26:52','2022-10-09 11:26:52',NULL,'{\"department_name\":\"RnD\",\"updated_at\":\"2022-10-09T08:26:52.000000Z\",\"created_at\":\"2022-10-09T08:26:52.000000Z\",\"id\":6}'),(17,'977563f8-92a7-433b-b6bf-ccd1f49c3756',1,'Update','App\\Models\\LeaveType',2,'App\\Models\\LeaveType',2,'App\\Models\\LeaveType',2,'','finished','','2022-10-09 11:34:02','2022-10-09 11:34:02','{\"count\":30}','{\"count\":\"14\"}'),(18,'977564a8-28d4-45bb-85f8-dcace8502eea',1,'Update','App\\Models\\LeaveType',1,'App\\Models\\LeaveType',1,'App\\Models\\LeaveType',1,'','finished','','2022-10-09 11:35:57','2022-10-09 11:35:57','{\"count\":21}','{\"count\":\"20\"}'),(19,'9779e012-5021-40ff-8bb4-3981ac0c335a',1,'Update','App\\Models\\Staff',5,'App\\Models\\Staff',5,'App\\Models\\Staff',5,'','finished','','2022-10-11 17:04:21','2022-10-11 17:04:21','{\"password\":\"$2y$10$RkZS\\/yfqjluDTgOcG4HqtO9doDMPumqTJMW2YH3ZfPB83Di7OgeCq\"}','{\"password\":\"$2y$10$f4Uyz1V7QLFuRpjY5rwAJuwt6QrcK9cPtawdXWv9WjLR1cda7DqRy\"}'),(20,'9779e044-7ebe-4d0f-8371-ff799b612584',1,'Update','App\\Models\\Staff',5,'App\\Models\\Staff',5,'App\\Models\\Staff',5,'','finished','','2022-10-11 17:04:54','2022-10-11 17:04:54','{\"password\":\"$2y$10$f4Uyz1V7QLFuRpjY5rwAJuwt6QrcK9cPtawdXWv9WjLR1cda7DqRy\"}','{\"password\":\"$2y$10$6rFYI6MgKXaXd3PulnCq6ezNMC.31U\\/6mxA6XORD8bjtDn32xHLFS\"}'),(21,'9779e14b-ac39-4b50-b249-2dff1bb4b949',1,'Update','App\\Models\\Staff',2,'App\\Models\\Staff',2,'App\\Models\\Staff',2,'','finished','','2022-10-11 17:07:46','2022-10-11 17:07:46','{\"emergency_contact_address\":null,\"password\":\"$2y$10$viN7iV8mEjexwJXYdRgRiOwpOqJhUR6jCYJ3ByKN7im7Sl3b93MuK\",\"current_address\":null,\"permanent_address\":null,\"staff_status\":\"permanent\"}','{\"emergency_contact_address\":\"home\",\"password\":\"$2y$10$g1gWGDE9yWyDRwHJXz7kUuiLO8bQdYtRsq8lBllt7ix\\/bmyw4u1Zi\",\"current_address\":\"home\",\"permanent_address\":\"home\",\"staff_status\":null}'),(22,'977bcdc2-612a-4137-b938-62532b798df2',1,'Delete','App\\Models\\Designation',4,'App\\Models\\Designation',4,'App\\Models\\Designation',4,'','finished','','2022-10-12 16:04:48','2022-10-12 16:04:48',NULL,NULL),(23,'977bd04d-7cb1-4550-9670-8e29b438b298',1,'Update','App\\Models\\Applicant',1,'App\\Models\\Applicant',1,'App\\Models\\Applicant',1,'','finished','','2022-10-12 16:11:55','2022-10-12 16:11:55','{\"dob\":\"2024-06-29T21:00:00.000000Z\",\"years_of_experience\":-10}','{\"dob\":\"2001-07-30 00:00:00\",\"years_of_experience\":\"15\"}'),(24,'977bd08a-a4f1-47fc-ae43-15cd003a2871',1,'Revoke Staff','App\\Models\\Staff',3,'App\\Models\\Staff',3,'App\\Models\\Staff',3,'a:0:{}','finished','','2022-10-12 16:12:35','2022-10-12 16:12:35',NULL,NULL),(25,'977d4973-6da3-498a-9496-5f18540e01d2',1,'Create','App\\Models\\Staff',6,'App\\Models\\Staff',6,'App\\Models\\Staff',6,'','finished','','2022-10-13 09:46:30','2022-10-13 09:46:30',NULL,'{\"firstname\":\"Kyle\",\"lastname\":\"Delacruz\",\"email\":\"fygedokupo@mailinator.com\",\"password\":\"$2y$10$TiN3Os.4kcXFkwRCvNm6Xuh2XCDSo4iREp9VKTJ4G3TQu3SwYFcv.\",\"status\":\"36\",\"identity_no\":\"Mollit rerum in haru\",\"personal_email\":\"qabyhum@mailinator.com\",\"contact_no\":\"Voluptatem Fugiat n\",\"date_of_birth\":\"1986-02-06T21:00:00.000000Z\",\"gender\":\"female\",\"emergency_contact_relationship\":\"Impedit esse et fu\",\"emergency_contact\":\"90\",\"current_address\":\"Ipsum voluptas qui d\",\"city\":\"Officia dolore quis\",\"permanent_address\":\"Nostrud voluptatem\",\"emergency_contact_address\":\"Expedita culpa cum q\",\"type\":\"remote\",\"staff_status\":\"1\",\"branch_id\":3,\"department_id\":4,\"joining_date\":\"1980-09-05T21:00:00.000000Z\",\"exit_date\":\"1986-01-23T21:00:00.000000Z\",\"designation_id\":8,\"updated_at\":\"2022-10-13T06:46:30.000000Z\",\"created_at\":\"2022-10-13T06:46:30.000000Z\",\"id\":6,\"full_name\":\"Kyle Delacruz\"}'),(26,'977d6e87-580c-4cee-af05-0114d2715393',1,'Delete','App\\Models\\Salary',2,'App\\Models\\Salary',2,'App\\Models\\Salary',2,'','finished','','2022-10-13 11:30:10','2022-10-13 11:30:10',NULL,NULL),(27,'97862528-e1f7-4f6a-bddb-f5f47fa474c0',1,'Create','App\\Models\\Leave',13,'App\\Models\\Leave',13,'App\\Models\\Leave',13,'','finished','','2022-10-17 19:27:28','2022-10-17 19:27:28',NULL,'{\"leave_type\":\"1\",\"datefrom\":\"2022-10-17T21:00:00.000000Z\",\"dateto\":\"2022-10-26T21:00:00.000000Z\",\"point_of_contact\":1,\"line_manager\":2,\"cc_to\":\"stevemuema@gmail.com\",\"subject\":\"leave test\",\"description\":\"Test\",\"staff_id\":1,\"updated_at\":\"2022-10-17T16:27:28.000000Z\",\"created_at\":\"2022-10-17T16:27:28.000000Z\",\"id\":13}'),(28,'978a7ad8-41c9-4256-bb60-35f7e2826c52',1,'Create','App\\Models\\JobApplication',3,'App\\Models\\JobApplication',3,'App\\Models\\JobApplication',3,'','finished','','2022-10-19 23:10:22','2022-10-19 23:10:22',NULL,'{\"job_title\":\"Sales\",\"job_description\":\"Sales team\",\"job_position\":\"Sales team\",\"job_link\":\"https:\\/\\/dev-demo.afriqnetworks.co.ke\\/\",\"start_date\":\"2022-10-19T21:00:00.000000Z\",\"end_date\":\"2022-09-24T21:00:00.000000Z\",\"is_published\":true,\"updated_at\":\"2022-10-19T20:10:22.000000Z\",\"created_at\":\"2022-10-19T20:10:22.000000Z\",\"id\":3}'),(29,'978a7c80-edf3-42a5-b307-cf088a62f948',1,'Create','App\\Models\\Applicant',2,'App\\Models\\Applicant',2,'App\\Models\\Applicant',2,'','finished','','2022-10-19 23:15:01','2022-10-19 23:15:01',NULL,'{\"status\":\"applied\",\"first_name\":\"Sales\",\"last_name\":\"idris\",\"email\":\"idris@gmail.com\",\"job_application_id\":3,\"dob\":\"1999-12-25T21:00:00.000000Z\",\"years_of_experience\":\"5\",\"full_name\":\"Sales idris\",\"updated_at\":\"2022-10-19T20:15:01.000000Z\",\"created_at\":\"2022-10-19T20:15:01.000000Z\",\"id\":2}'),(30,'978a84bb-3498-4c35-a916-b4477bf424dc',1,'Create','App\\Models\\Contract',1,'App\\Models\\Contract',1,'App\\Models\\Contract',1,'','finished','','2022-10-19 23:38:01','2022-10-19 23:38:01',NULL,'{\"staff_id\":5,\"start_date\":\"2022-10-18T21:00:00.000000Z\",\"end_date\":\"2022-12-30T21:00:00.000000Z\",\"updated_at\":\"2022-10-19T20:38:01.000000Z\",\"created_at\":\"2022-10-19T20:38:01.000000Z\",\"id\":1}'),(31,'978dcd58-207c-49f2-b392-ba9a55c135c3',1,'Create','App\\Models\\BiometricDevice',1,'App\\Models\\BiometricDevice',1,'App\\Models\\BiometricDevice',1,'','finished','','2022-10-21 14:48:32','2022-10-21 14:48:32',NULL,'{\"ip_address\":\"10.5.0.54\",\"branch_id\":1,\"updated_at\":\"2022-10-21T11:48:32.000000Z\",\"created_at\":\"2022-10-21T11:48:32.000000Z\",\"id\":1}'),(32,'9793235f-f1e7-4eae-a4b3-67608ef11a93',1,'Create','App\\Models\\BiometricDevice',2,'App\\Models\\BiometricDevice',2,'App\\Models\\BiometricDevice',2,'','finished','','2022-10-24 06:28:14','2022-10-24 06:28:14',NULL,'{\"ip_address\":\"123.123.123.13\",\"branch_id\":1,\"updated_at\":\"2022-10-24T03:28:14.000000Z\",\"created_at\":\"2022-10-24T03:28:14.000000Z\",\"id\":2}'),(33,'97932377-031c-4374-8d3f-acb9e7e71a03',1,'Delete','App\\Models\\BiometricDevice',2,'App\\Models\\BiometricDevice',2,'App\\Models\\BiometricDevice',2,'','finished','','2022-10-24 06:28:29','2022-10-24 06:28:29',NULL,NULL),(34,'97932565-f5b8-424d-ba27-82d4320f7f4c',1,'Create','App\\Models\\Contract',2,'App\\Models\\Contract',2,'App\\Models\\Contract',2,'','finished','','2022-10-24 06:33:54','2022-10-24 06:33:54',NULL,'{\"staff_id\":4,\"start_date\":\"2022-10-23T21:00:00.000000Z\",\"end_date\":\"2025-07-09T21:00:00.000000Z\",\"updated_at\":\"2022-10-24T03:33:54.000000Z\",\"created_at\":\"2022-10-24T03:33:54.000000Z\",\"id\":2}'),(35,'97933137-26f8-4397-8116-2bd5fbe6cb50',1,'Create','App\\Models\\Staff',7,'App\\Models\\Staff',7,'App\\Models\\Staff',7,'','finished','','2022-10-24 07:06:56','2022-10-24 07:06:56',NULL,'{\"picture\":\"goLksfKLmoMov1stZWxdwgI1ho8cMnoWWiKn6VGK.webp\",\"firstname\":\"Test Contract\",\"lastname\":\"Test Contract\",\"email\":\"peter@afriq.com\",\"password\":\"$2y$10$bDoerAfxB1hc2mrJG4SG5uFyMJ5Pa.q1cIi5hQuNMgMKEvDOmH4j6\",\"status\":\"1\",\"identity_no\":\"2344556\",\"personal_email\":\"g.nanguti@gmail.com\",\"contact_no\":\"0726076333\",\"date_of_birth\":\"2000-05-23T21:00:00.000000Z\",\"gender\":\"female\",\"emergency_contact_relationship\":\"0726076333\",\"emergency_contact\":\"0726076333\",\"current_address\":\"0773240657\",\"city\":\"Nairobi\",\"permanent_address\":\"0773240657\",\"emergency_contact_address\":\"0773240657\",\"type\":\"remote\",\"staff_status\":\"0\",\"branch_id\":2,\"department_id\":5,\"joining_date\":\"2022-10-23T21:00:00.000000Z\",\"designation_id\":11,\"updated_at\":\"2022-10-24T04:06:56.000000Z\",\"created_at\":\"2022-10-24T04:06:56.000000Z\",\"id\":7,\"full_name\":\"Test Contract Test Contract\"}'),(36,'97933182-1023-4545-9daf-908d2b063fd1',1,'Create','App\\Models\\Contract',3,'App\\Models\\Contract',3,'App\\Models\\Contract',3,'','finished','','2022-10-24 07:07:45','2022-10-24 07:07:45',NULL,'{\"staff_id\":4,\"start_date\":\"2022-10-23T21:00:00.000000Z\",\"end_date\":\"2022-10-24T21:00:00.000000Z\",\"updated_at\":\"2022-10-24T04:07:45.000000Z\",\"created_at\":\"2022-10-24T04:07:45.000000Z\",\"id\":3}'),(37,'97933191-4476-4854-a5dd-e51317c027b7',1,'Delete','App\\Models\\Contract',3,'App\\Models\\Contract',3,'App\\Models\\Contract',3,'','finished','','2022-10-24 07:07:55','2022-10-24 07:07:55',NULL,NULL),(38,'97933195-6aac-4c19-8214-70fb53e25185',1,'Delete','App\\Models\\Contract',2,'App\\Models\\Contract',2,'App\\Models\\Contract',2,'','finished','','2022-10-24 07:07:58','2022-10-24 07:07:58',NULL,NULL);

/*!40000 ALTER TABLE `action_events` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `applicants`

--



DROP TABLE IF EXISTS `applicants`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `applicants` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `first_name` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `last_name` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `full_name` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `dob` datetime NOT NULL,

  `years_of_experience` int NOT NULL,

  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  `job_application_id` int unsigned NOT NULL,

  PRIMARY KEY (`id`),

  KEY `job_fk` (`job_application_id`),

  CONSTRAINT `job_fk` FOREIGN KEY (`job_application_id`) REFERENCES `job_applications` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `applicants`

--



LOCK TABLES `applicants` WRITE;

/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;

INSERT INTO `applicants` VALUES (1,'Gamer','Canaan','Gamer Canaan','gamer@canaan.com','2001-07-30 00:00:00',15,'applied','2022-10-09 10:55:17','2022-10-12 16:11:55',2),(2,'Sales','idris','Sales idris','idris@gmail.com','1999-12-26 00:00:00',5,'applied','2022-10-19 23:15:01','2022-10-19 23:15:01',3);

/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `attendance_breaks`

--



DROP TABLE IF EXISTS `attendance_breaks`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `attendance_breaks` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `staff_id` int NOT NULL,

  `timestamp_break_start` datetime NOT NULL,

  `timestamp_break_end` datetime DEFAULT NULL,

  `date` date NOT NULL,

  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'present',

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `attendance_breaks`

--



LOCK TABLES `attendance_breaks` WRITE;

/*!40000 ALTER TABLE `attendance_breaks` DISABLE KEYS */;

/*!40000 ALTER TABLE `attendance_breaks` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `attendance_corrections`

--



DROP TABLE IF EXISTS `attendance_corrections`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `attendance_corrections` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `staff_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `time_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `time_out` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `break_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `break_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `attendance_corrections`

--



LOCK TABLES `attendance_corrections` WRITE;

/*!40000 ALTER TABLE `attendance_corrections` DISABLE KEYS */;

/*!40000 ALTER TABLE `attendance_corrections` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `attendance_summaries`

--



DROP TABLE IF EXISTS `attendance_summaries`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `attendance_summaries` (

  `id` int unsigned NOT NULL,

  `staff_id` int NOT NULL,

  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,

  `second_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,

  `first_time_in` time DEFAULT NULL,

  `last_time_out` time DEFAULT NULL,

  `first_timestamp_in` datetime DEFAULT NULL,

  `last_timestamp_out` datetime DEFAULT NULL,

  `total_time` int DEFAULT NULL,

  `date` date NOT NULL,

  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'present',

  `is_delay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  UNIQUE KEY `staff_id` (`staff_id`,`first_name`,`second_name`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `attendance_summaries`

--



LOCK TABLES `attendance_summaries` WRITE;

/*!40000 ALTER TABLE `attendance_summaries` DISABLE KEYS */;

INSERT INTO `attendance_summaries` VALUES (32,95,'Faith','Kanyari','08:17:42','13:10:14',NULL,NULL,5,'2022-10-22','present','Yes','2022-10-14 09:34:43','2022-10-22 13:10:39'),(34,16,'Damaris','Mwende','08:12:24','13:20:57',NULL,NULL,5,'2022-10-22','present','Yes','2022-10-14 09:47:04','2022-10-22 13:21:20'),(35,85,'Angela','Wambui','06:58:50','15:55:26',NULL,NULL,9,'2022-10-22','present','No','2022-10-14 09:47:04','2022-10-22 17:50:59'),(36,78,'Renson','Sibo','08:09:47','13:00:58',NULL,NULL,5,'2022-10-22','present','Yes','2022-10-14 09:47:04','2022-10-22 13:01:28'),(37,110,'Ndolo','Mutisya','08:35:01','13:59:32',NULL,NULL,5,'2022-10-22','present','Yes','2022-10-14 09:47:04','2022-10-22 17:50:59'),(38,111,'Carol','Wanjiku','07:51:59','13:29:24',NULL,NULL,6,'2022-10-22','present','Yes','2022-10-14 09:47:04','2022-10-22 13:29:51'),(39,115,'Purity','Wanjiku','08:42:09','16:45:53',NULL,NULL,8,'2022-10-21','present','No','2022-10-14 09:47:04','2022-10-21 16:46:13'),(40,112,'Lazarus','Masika','08:25:34','13:01:03',NULL,NULL,5,'2022-10-22','present','Yes','2022-10-14 09:47:04','2022-10-22 13:01:28'),(41,121,'Edward','Macharia','09:45:13','12:48:12',NULL,NULL,3,'2022-10-14','present','Yes','2022-10-14 09:47:04','2022-10-14 09:47:04'),(42,123,'Steve','Kiawa','10:24:40','15:56:22',NULL,NULL,6,'2022-10-21','present','Yes','2022-10-14 09:47:04','2022-10-21 16:11:21'),(43,54,'Stephen','Muita','08:48:40','13:56:59',NULL,NULL,5,'2022-10-22','present','Yes','2022-10-14 11:30:58','2022-10-22 13:57:29'),(45,109,'Moses','Mwaniki','14:40:57','21:07:51',NULL,NULL,6,'2022-10-23','present','Yes','2022-10-19 10:25:42','2022-10-23 21:08:12'),(46,122,'Kevin','Wafula','07:09:17','17:36:26',NULL,NULL,10,'2022-10-21','present','No','2022-10-19 10:25:44','2022-10-21 17:36:55'),(47,107,'Amina','Ali','07:05:27','07:30:31',NULL,NULL,0,'2022-10-24','present','Yes','2022-10-19 11:07:12','2022-10-24 07:30:45');

/*!40000 ALTER TABLE `attendance_summaries` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `attendances`

--



DROP TABLE IF EXISTS `attendances`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `attendances` (

  `id` int NOT NULL AUTO_INCREMENT,

  `staff_id` int NOT NULL,

  `time_in` time DEFAULT NULL,

  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'present',

  `uuid` int NOT NULL,

  `sign_in` tinyint NOT NULL,

  `sign_out` tinyint NOT NULL,

  `clock_time` time NOT NULL,

  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,

  `second_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,

  `branch_id` int unsigned NOT NULL,

  PRIMARY KEY (`id`),

  UNIQUE KEY `un_clock_time` (`clock_time`)

) ENGINE=InnoDB AUTO_INCREMENT=2784467 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `attendances`

--



LOCK TABLES `attendances` WRITE;

/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;

INSERT INTO `attendances` VALUES (1,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'06:26:12','Moses','Mwaniki',0),(2,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'06:44:28','Moses','Mwaniki',0),(3,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'06:45:52','Moses','Mwaniki',0),(4,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'06:58:40','Kevin','Wafula',0),(5,1,'14:52:59','2022-10-04 21:00:00','present',110,1,0,'07:26:17','Ndolo','Mutisya',0),(6,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'07:36:07','Moses','Mwaniki',0),(7,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'07:36:47','Moses','Mwaniki',0),(8,1,'14:52:59','2022-10-04 21:00:00','present',111,1,0,'07:54:00','Carol','Wanjiku',0),(9,1,'14:52:59','2022-10-04 21:00:00','present',95,1,0,'08:00:58','Faith','Kanyari',0),(10,1,'14:52:59','2022-10-04 21:00:00','present',111,1,1,'08:02:31','Carol','Wanjiku',0),(11,1,'14:52:59','2022-10-04 21:00:00','present',85,1,0,'08:03:05','Angela','Wambui',0),(12,1,'14:52:59','2022-10-04 21:00:00','present',111,1,0,'08:05:04','Carol','Wanjiku',0),(13,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'08:08:52','Kevin','Wafula',0),(14,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'08:09:31','Kevin','Wafula',0),(15,1,'14:52:59','2022-10-04 21:00:00','present',16,1,0,'08:09:45','Damaris','Mwende',0),(16,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'08:17:11','Kevin','Wafula',0),(17,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'08:17:48','Kevin','Wafula',0),(18,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'08:23:33','Moses','Mwaniki',0),(19,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'08:23:42','Moses','Mwaniki',0),(20,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'08:24:25','Moses','Mwaniki',0),(21,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'08:24:32','Moses','Mwaniki',0),(22,1,'14:52:59','2022-10-04 21:00:00','present',112,1,0,'08:26:30','Lazarus','Masika',0),(23,1,'14:52:59','2022-10-04 21:00:00','present',111,1,1,'08:28:30','Carol','Wanjiku',0),(24,1,'14:52:59','2022-10-04 21:00:00','present',111,1,0,'08:30:13','Carol','Wanjiku',0),(25,1,'14:52:59','2022-10-04 21:00:00','present',111,1,1,'08:32:57','Carol','Wanjiku',0),(26,1,'14:52:59','2022-10-04 21:00:00','present',111,1,0,'08:36:31','Carol','Wanjiku',0),(27,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'08:46:51','Moses','Mwaniki',0),(28,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'08:47:05','Moses','Mwaniki',0),(29,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'08:47:19','Moses','Mwaniki',0),(30,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'08:48:42','Moses','Mwaniki',0),(31,1,'14:52:59','2022-10-04 21:00:00','present',115,1,0,'08:50:32','Purity','Wanjiku',0),(32,1,'14:52:59','2022-10-04 21:00:00','present',16,1,1,'09:03:39','Damaris','Mwende',0),(33,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'09:08:11','Moses','Mwaniki',0),(34,1,'14:52:59','2022-10-04 21:00:00','present',112,1,1,'09:09:05','Lazarus','Masika',0),(35,1,'14:52:59','2022-10-04 21:00:00','present',16,1,0,'09:09:10','Damaris','Mwende',0),(36,1,'14:52:59','2022-10-04 21:00:00','present',54,1,0,'09:12:08','Stephen','Muita',0),(37,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'09:13:06','Moses','Mwaniki',0),(38,1,'14:52:59','2022-10-04 21:00:00','present',54,1,1,'09:19:29','Stephen','Muita',0),(39,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'09:23:08','Kevin','Wafula',0),(40,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'09:23:52','Kevin','Wafula',0),(41,1,'14:52:59','2022-10-04 21:00:00','present',123,1,0,'09:33:03','Steve','Kiawa',0),(42,1,'14:52:59','2022-10-04 21:00:00','present',95,1,1,'09:43:52','Faith','Kanyari',0),(43,1,'14:52:59','2022-10-04 21:00:00','present',54,1,0,'09:45:10','Stephen','Muita',0),(44,1,'14:52:59','2022-10-04 21:00:00','present',112,1,0,'09:46:46','Lazarus','Masika',0),(45,1,'14:52:59','2022-10-04 21:00:00','present',95,1,0,'09:46:49','Faith','Kanyari',0),(46,1,'14:52:59','2022-10-04 21:00:00','present',121,1,0,'09:54:50','Edward','Macharia',0),(47,1,'14:52:59','2022-10-04 21:00:00','present',85,1,1,'09:57:47','Angela','Wambui',0),(48,1,'14:52:59','2022-10-04 21:00:00','present',85,1,0,'09:59:17','Angela','Wambui',0),(49,1,'14:52:59','2022-10-04 21:00:00','present',78,1,0,'10:17:25','Renson','Sibo',0),(50,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'10:18:31','Kevin','Wafula',0),(51,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'10:19:19','Kevin','Wafula',0),(52,1,'14:52:59','2022-10-04 21:00:00','present',123,1,1,'10:25:51','Steve','Kiawa',0),(53,1,'14:52:59','2022-10-04 21:00:00','present',123,1,0,'10:27:23','Steve','Kiawa',0),(54,1,'14:52:59','2022-10-04 21:00:00','present',54,1,1,'10:37:23','Stephen','Muita',0),(55,1,'14:52:59','2022-10-04 21:00:00','present',78,1,1,'10:37:31','Renson','Sibo',0),(56,1,'14:52:59','2022-10-04 21:00:00','present',112,1,1,'10:37:59','Lazarus','Masika',0),(57,1,'14:52:59','2022-10-04 21:00:00','present',54,1,0,'10:38:46','Stephen','Muita',0),(58,1,'14:52:59','2022-10-04 21:00:00','present',16,1,1,'10:43:28','Damaris','Mwende',0),(59,1,'14:52:59','2022-10-04 21:00:00','present',16,1,0,'10:46:05','Damaris','Mwende',0),(60,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'10:48:38','Moses','Mwaniki',0),(61,1,'14:52:59','2022-10-04 21:00:00','present',111,1,1,'10:51:45','Carol','Wanjiku',0),(62,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'10:53:22','Moses','Mwaniki',0),(63,1,'14:52:59','2022-10-04 21:00:00','present',111,1,0,'10:55:03','Carol','Wanjiku',0),(64,1,'14:52:59','2022-10-04 21:00:00','present',110,1,1,'11:04:07','Ndolo','Mutisya',0),(65,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'11:34:09','Kevin','Wafula',0),(66,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'11:34:57','Kevin','Wafula',0),(67,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'11:54:47','Kevin','Wafula',0),(68,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'11:54:59','Kevin','Wafula',0),(69,1,'14:52:59','2022-10-04 21:00:00','present',95,1,1,'12:00:05','Faith','Kanyari',0),(70,1,'14:52:59','2022-10-04 21:00:00','present',95,1,0,'12:01:15','Faith','Kanyari',0),(71,1,'14:52:59','2022-10-04 21:00:00','present',121,1,1,'12:02:32','Edward','Macharia',0),(72,1,'14:52:59','2022-10-04 21:00:00','present',121,1,0,'12:10:55','Edward','Macharia',0),(73,1,'14:52:59','2022-10-04 21:00:00','present',16,1,1,'12:11:31','Damaris','Mwende',0),(74,1,'14:52:59','2022-10-04 21:00:00','present',121,1,1,'12:11:49','Edward','Macharia',0),(75,1,'14:52:59','2022-10-04 21:00:00','present',16,1,0,'12:13:32','Damaris','Mwende',0),(76,1,'14:52:59','2022-10-04 21:00:00','present',111,1,1,'12:21:26','Carol','Wanjiku',0),(77,1,'14:52:59','2022-10-04 21:00:00','present',111,1,0,'12:23:06','Carol','Wanjiku',0),(78,1,'14:52:59','2022-10-04 21:00:00','present',85,1,1,'12:28:19','Angela','Wambui',0),(79,1,'14:52:59','2022-10-04 21:00:00','present',123,1,1,'12:32:50','Steve','Kiawa',0),(80,1,'14:52:59','2022-10-04 21:00:00','present',85,1,0,'12:33:02','Angela','Wambui',0),(81,1,'14:52:59','2022-10-04 21:00:00','present',78,1,0,'12:34:24','Renson','Sibo',0),(82,1,'14:52:59','2022-10-04 21:00:00','present',112,1,0,'12:34:42','Lazarus','Masika',0),(83,1,'14:52:59','2022-10-04 21:00:00','present',123,1,0,'12:35:56','Steve','Kiawa',0),(84,1,'14:52:59','2022-10-04 21:00:00','present',54,1,1,'12:48:14','Stephen','Muita',0),(85,1,'14:52:59','2022-10-04 21:00:00','present',54,1,0,'12:49:23','Stephen','Muita',0),(86,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'12:56:36','Kevin','Wafula',0),(87,1,'14:52:59','2022-10-04 21:00:00','present',123,1,1,'12:56:43','Steve','Kiawa',0),(88,1,'14:52:59','2022-10-04 21:00:00','present',121,1,0,'13:08:11','Edward','Macharia',0),(89,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'13:14:45','Moses','Mwaniki',0),(90,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'13:15:21','Moses','Mwaniki',0),(91,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'13:16:34','Moses','Mwaniki',0),(92,1,'14:52:59','2022-10-04 21:00:00','present',121,1,1,'13:19:36','Edward','Macharia',0),(93,1,'14:52:59','2022-10-04 21:00:00','present',112,1,1,'13:21:12','Lazarus','Masika',0),(94,1,'14:52:59','2022-10-04 21:00:00','present',112,1,0,'13:21:31','Lazarus','Masika',0),(95,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'13:22:17','Moses','Mwaniki',0),(96,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'13:23:50','Kevin','Wafula',0),(97,1,'14:52:59','2022-10-04 21:00:00','present',123,1,0,'13:23:55','Steve','Kiawa',0),(98,1,'14:52:59','2022-10-04 21:00:00','present',111,1,1,'13:27:05','Carol','Wanjiku',0),(99,1,'14:52:59','2022-10-04 21:00:00','present',111,1,0,'13:29:41','Carol','Wanjiku',0),(100,1,'14:52:59','2022-10-04 21:00:00','present',112,1,1,'13:31:09','Lazarus','Masika',0),(101,1,'14:52:59','2022-10-04 21:00:00','present',112,1,0,'13:31:14','Lazarus','Masika',0),(102,1,'14:52:59','2022-10-04 21:00:00','present',112,1,1,'13:33:50','Lazarus','Masika',0),(103,1,'14:52:59','2022-10-04 21:00:00','present',112,1,0,'13:34:00','Lazarus','Masika',0),(104,1,'14:52:59','2022-10-04 21:00:00','present',112,1,1,'13:34:35','Lazarus','Masika',0),(105,1,'14:52:59','2022-10-04 21:00:00','present',112,1,0,'13:34:52','Lazarus','Masika',0),(106,1,'14:52:59','2022-10-04 21:00:00','present',112,1,1,'13:36:11','Lazarus','Masika',0),(107,1,'14:52:59','2022-10-04 21:00:00','present',112,1,0,'13:36:20','Lazarus','Masika',0),(108,1,'14:52:59','2022-10-04 21:00:00','present',115,1,1,'13:37:29','Purity','Wanjiku',0),(109,1,'14:52:59','2022-10-04 21:00:00','present',115,1,0,'13:39:43','Purity','Wanjiku',0),(110,1,'14:52:59','2022-10-04 21:00:00','present',123,1,1,'13:44:52','Steve','Kiawa',0),(111,1,'14:52:59','2022-10-04 21:00:00','present',16,1,1,'13:48:23','Damaris','Mwende',0),(112,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'13:51:02','Kevin','Wafula',0),(113,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'13:51:09','Kevin','Wafula',0),(114,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'13:51:54','Kevin','Wafula',0),(115,1,'14:52:59','2022-10-04 21:00:00','present',123,1,0,'13:52:39','Steve','Kiawa',0),(116,1,'14:52:59','2022-10-04 21:00:00','present',109,1,1,'13:54:21','Moses','Mwaniki',0),(117,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'13:55:22','Kevin','Wafula',0),(118,1,'14:52:59','2022-10-04 21:00:00','present',109,1,0,'13:55:27','Moses','Mwaniki',0),(119,1,'14:52:59','2022-10-04 21:00:00','present',85,1,1,'14:03:34','Angela','Wambui',0),(120,1,'14:52:59','2022-10-04 21:00:00','present',85,1,0,'14:05:29','Angela','Wambui',0),(121,1,'14:52:59','2022-10-04 21:00:00','present',54,1,1,'14:06:40','Stephen','Muita',0),(122,1,'14:52:59','2022-10-04 21:00:00','present',115,1,1,'14:06:50','Purity','Wanjiku',0),(123,1,'14:52:59','2022-10-04 21:00:00','present',122,1,1,'14:10:36','Kevin','Wafula',0),(124,1,'14:52:59','2022-10-04 21:00:00','present',122,1,0,'14:10:44','Kevin','Wafula',0),(125,1,'14:52:59','2022-10-04 21:00:00','present',78,1,1,'14:13:19','Renson','Sibo',0),(126,1,'14:52:59','2022-10-04 21:00:00','present',115,1,0,'14:15:22','Purity','Wanjiku',0),(127,1,'14:52:59','2022-10-04 21:00:00','present',54,1,0,'14:15:27','Stephen','Muita',0),(128,1,'14:52:59','2022-10-04 21:00:00','present',78,1,0,'14:23:42','Renson','Sibo',0),(129,1,'14:52:59','2022-10-04 21:00:00','present',78,1,1,'14:29:28','Renson','Sibo',0),(130,1,'14:52:59','2022-10-04 21:00:00','present',107,1,0,'14:35:27','Amina','Ali',0),(131,1,'14:52:59','2022-10-04 21:00:00','present',107,1,1,'14:52:26','Amina','Ali',0),(132,1,'14:57:59','2022-10-04 21:00:00','present',107,1,0,'14:57:21','Amina','Ali',0),(133,1,'14:58:59','2022-10-04 21:00:00','present',16,1,0,'14:57:33','Damaris','Mwende',0),(134,1,'15:05:37','2022-10-04 21:00:00','present',85,1,1,'15:05:07','Angela','Wambui',0),(135,1,'15:07:37','2022-10-04 21:00:00','present',85,1,0,'15:07:04','Angela','Wambui',0),(136,1,'15:10:37','2022-10-04 21:00:00','present',123,1,1,'15:10:01','Steve','Kiawa',0),(137,1,'15:12:52','2022-10-04 21:00:00','present',109,1,1,'15:11:40','Moses','Mwaniki',0),(138,1,'15:12:52','2022-10-04 21:00:00','present',112,1,1,'15:11:47','Lazarus','Masika',0),(139,1,'15:12:52','2022-10-04 21:00:00','present',123,1,0,'15:12:04','Steve','Kiawa',0),(140,1,'15:14:16','2022-10-04 21:00:00','present',95,1,1,'15:13:37','Faith','Kanyari',0),(141,1,'15:14:29','2022-10-04 21:00:00','present',111,1,1,'15:13:55','Carol','Wanjiku',0),(142,1,'15:15:20','2022-10-04 21:00:00','present',95,1,0,'15:14:49','Faith','Kanyari',0),(143,1,'15:16:21','2022-10-04 21:00:00','present',111,1,0,'15:15:49','Carol','Wanjiku',0),(144,1,'15:43:09','2022-10-04 21:00:00','present',54,1,1,'15:42:35','Stephen','Muita',0),(145,1,'15:44:06','2022-10-04 21:00:00','present',122,1,1,'15:43:33','Kevin','Wafula',0),(146,1,'15:44:36','2022-10-04 21:00:00','present',54,1,0,'15:43:58','Stephen','Muita',0),(147,1,'15:44:46','2022-10-04 21:00:00','present',122,1,0,'15:44:16','Kevin','Wafula',0),(4852,1,'16:14:41','2022-10-04 21:00:00','present',107,1,1,'16:14:10','Amina','Ali',0),(5592,1,'16:17:59','2022-10-04 21:00:00','present',107,1,0,'16:16:47','Amina','Ali',0),(7082,1,'16:23:51','2022-10-04 21:00:00','present',111,1,1,'16:23:19','Carol','Wanjiku',0),(9182,1,'16:26:11','2022-10-04 21:00:00','present',111,1,0,'16:25:34','Carol','Wanjiku',0),(9937,1,'16:27:01','2022-10-04 21:00:00','present',111,1,1,'16:26:30','Carol','Wanjiku',0),(12217,1,'16:33:59','2022-10-04 21:00:00','present',54,1,1,'16:32:46','Stephen','Muita',0),(14512,1,'16:38:11','2022-10-04 21:00:00','present',111,1,0,'16:37:34','Carol','Wanjiku',0),(16052,1,'16:39:51','2022-10-04 21:00:00','present',54,1,0,'16:39:14','Stephen','Muita',0),(18377,1,'16:47:59','2022-10-04 21:00:00','present',54,1,1,'16:46:42','Stephen','Muita',0),(19313,1,'16:53:59','2022-10-04 21:00:00','present',95,1,1,'16:52:40','Faith','Kanyari',0),(19627,1,'16:55:59','2022-10-04 21:00:00','present',95,1,0,'16:55:04','Faith','Kanyari',0),(26105,1,'17:03:59','2022-10-04 21:00:00','present',95,1,1,'17:02:40','Faith','Kanyari',0),(26741,1,'17:39:19','2022-10-04 21:00:00','present',16,1,1,'17:14:49','Damaris','Mwende',0),(26742,1,'17:39:19','2022-10-04 21:00:00','present',85,1,1,'17:08:33','Angela','Wambui',0),(26743,1,'17:39:19','2022-10-04 21:00:00','present',111,1,1,'17:06:48','Carol','Wanjiku',0),(26744,1,'17:39:19','2022-10-04 21:00:00','present',115,1,1,'17:31:31','Purity','Wanjiku',0),(26745,1,'17:39:19','2022-10-04 21:00:00','present',123,1,1,'17:23:21','Steve','Kiawa',0),(26746,1,'17:39:19','2022-10-04 21:00:00','present',123,1,0,'17:24:33','Steve','Kiawa',0),(31196,1,'17:43:34','2022-10-04 21:00:00','present',122,1,1,'17:43:04','Kevin','Wafula',0),(32192,1,'17:44:34','2022-10-04 21:00:00','present',122,1,0,'17:44:01','Kevin','Wafula',0),(51230,1,'06:58:13','2022-10-05 21:00:00','present',122,1,0,'06:40:29','Kevin','Wafula',0),(51261,1,'07:04:09','2022-10-05 21:00:00','present',107,1,0,'07:02:35','Amina','Ali',0),(51317,1,'07:08:47','2022-10-05 21:00:00','present',107,1,1,'07:08:17','Amina','Ali',0),(51362,1,'07:11:18','2022-10-05 21:00:00','present',107,1,0,'07:10:41','Amina','Ali',0),(51738,1,'07:53:59','2022-10-05 21:00:00','present',122,1,1,'07:53:11','Kevin','Wafula',0),(51743,1,'07:55:00','2022-10-05 21:00:00','present',122,1,0,'07:53:56','Kevin','Wafula',0),(51749,1,'07:55:59','2022-10-05 21:00:00','present',107,1,1,'07:55:13','Amina','Ali',0),(51750,1,'07:55:59','2022-10-05 21:00:00','present',107,1,0,'07:55:20','Amina','Ali',0),(51765,1,'07:58:00','2022-10-05 21:00:00','present',107,1,1,'07:56:37','Amina','Ali',0),(51837,1,'08:05:59','2022-10-05 21:00:00','present',85,1,0,'08:05:06','Angela','Wambui',0),(51838,1,'08:05:59','2022-10-05 21:00:00','present',107,1,0,'08:05:10','Amina','Ali',0),(51848,1,'08:06:59','2022-10-05 21:00:00','present',111,1,0,'08:05:59','Carol','Wanjiku',0),(51860,1,'08:08:00','2022-10-05 21:00:00','present',85,1,1,'08:07:06','Angela','Wambui',0),(51886,1,'08:09:59','2022-10-05 21:00:00','present',95,1,0,'08:09:21','Faith','Kanyari',0),(51887,1,'08:09:59','2022-10-05 21:00:00','present',85,1,0,'08:08:58','Angela','Wambui',0),(52141,1,'08:26:59','2022-10-05 21:00:00','present',122,1,1,'08:25:51','Kevin','Wafula',0),(52157,1,'08:27:59','2022-10-05 21:00:00','present',16,1,0,'08:26:38','Damaris','Mwende',0),(52174,1,'08:58:00','2022-10-05 21:00:00','present',95,1,1,'08:30:46','Faith','Kanyari',0),(52175,1,'08:58:00','2022-10-05 21:00:00','present',95,1,0,'08:32:15','Faith','Kanyari',0),(52176,1,'08:58:00','2022-10-05 21:00:00','present',78,1,0,'08:30:17','Renson','Sibo',0),(52177,1,'08:58:00','2022-10-05 21:00:00','present',78,1,1,'08:34:43','Renson','Sibo',0),(52178,1,'08:58:00','2022-10-05 21:00:00','present',54,1,0,'08:39:22','Stephen','Muita',0),(52179,1,'08:58:00','2022-10-05 21:00:00','present',78,1,0,'08:44:07','Renson','Sibo',0),(52180,1,'08:58:00','2022-10-05 21:00:00','present',54,1,1,'08:52:56','Stephen','Muita',0),(52181,1,'08:58:00','2022-10-05 21:00:00','present',54,1,0,'08:53:08','Stephen','Muita',0),(52182,1,'08:58:00','2022-10-05 21:00:00','present',110,1,0,'08:29:28','Ndolo','Mutisya',0),(52183,1,'08:58:00','2022-10-05 21:00:00','present',111,1,1,'08:31:41','Carol','Wanjiku',0),(52184,1,'08:58:00','2022-10-05 21:00:00','present',111,1,0,'08:34:12','Carol','Wanjiku',0),(52185,1,'08:58:00','2022-10-05 21:00:00','present',112,1,0,'08:30:22','Lazarus','Masika',0),(52186,1,'08:58:00','2022-10-05 21:00:00','present',122,1,0,'08:30:40','Kevin','Wafula',0),(52187,1,'08:58:00','2022-10-05 21:00:00','present',122,1,1,'08:35:09','Kevin','Wafula',0),(52188,1,'08:58:00','2022-10-05 21:00:00','present',122,1,0,'08:35:14','Kevin','Wafula',0),(52189,1,'08:58:00','2022-10-05 21:00:00','present',112,1,0,'08:44:11','Lazarus','Masika',0),(52276,1,'09:00:59','2022-10-05 21:00:00','present',78,1,1,'09:00:29','Renson','Sibo',0),(52277,1,'09:00:59','2022-10-05 21:00:00','present',112,1,1,'09:00:08','Lazarus','Masika',0),(52348,1,'09:02:59','2022-10-05 21:00:00','present',115,1,0,'09:02:26','Purity','Wanjiku',0),(52385,1,'09:04:00','2022-10-05 21:00:00','present',107,1,1,'09:03:07','Amina','Ali',0),(52803,1,'09:08:46','2022-10-05 21:00:00','present',115,1,1,'09:08:16','Purity','Wanjiku',0),(52842,1,'09:08:56','2022-10-05 21:00:00','present',115,1,0,'09:08:23','Purity','Wanjiku',0),(53722,1,'09:12:36','2022-10-05 21:00:00','present',107,1,0,'09:12:05','Amina','Ali',0),(53845,1,'09:15:00','2022-10-05 21:00:00','present',85,1,1,'09:14:29','Angela','Wambui',0),(53971,1,'09:17:59','2022-10-05 21:00:00','present',85,1,0,'09:16:42','Angela','Wambui',0),(54057,1,'09:19:59','2022-10-05 21:00:00','present',54,1,1,'09:19:24','Stephen','Muita',0),(54101,1,'09:21:00','2022-10-05 21:00:00','present',85,1,1,'09:20:02','Angela','Wambui',0),(54146,1,'09:21:59','2022-10-05 21:00:00','present',85,1,0,'09:21:22','Angela','Wambui',0),(54147,1,'09:21:59','2022-10-05 21:00:00','present',54,1,0,'09:21:10','Stephen','Muita',0),(54569,1,'09:30:59','2022-10-05 21:00:00','present',16,1,1,'09:29:49','Damaris','Mwende',0),(54761,1,'09:34:59','2022-10-05 21:00:00','present',16,1,0,'09:33:59','Damaris','Mwende',0),(55937,1,'09:58:59','2022-10-05 21:00:00','present',122,1,0,'09:58:21','Kevin','Wafula',0),(56294,1,'10:05:59','2022-10-05 21:00:00','present',123,1,0,'10:04:43','Steve','Kiawa',0),(56398,1,'10:07:59','2022-10-05 21:00:00','present',85,1,1,'10:07:28','Angela','Wambui',0),(56451,1,'10:08:59','2022-10-05 21:00:00','present',85,1,0,'10:07:46','Angela','Wambui',0),(56505,1,'10:09:59','2022-10-05 21:00:00','present',85,1,1,'10:08:44','Angela','Wambui',0),(56560,1,'10:10:59','2022-10-05 21:00:00','present',85,1,0,'10:10:12','Angela','Wambui',0),(57176,1,'10:22:00','2022-10-05 21:00:00','present',54,1,1,'10:20:33','Stephen','Muita',0),(57233,1,'10:23:00','2022-10-05 21:00:00','present',54,1,0,'10:21:49','Stephen','Muita',0),(57813,1,'10:32:59','2022-10-05 21:00:00','present',95,1,1,'10:32:19','Faith','Kanyari',0),(58049,1,'10:36:59','2022-10-05 21:00:00','present',95,1,0,'10:36:13','Faith','Kanyari',0),(58769,1,'10:49:00','2022-10-05 21:00:00','present',111,1,1,'10:48:24','Carol','Wanjiku',0),(59135,1,'10:51:33','2022-10-05 21:00:00','present',111,1,0,'10:50:59','Carol','Wanjiku',0),(62421,1,'11:00:24','2022-10-05 21:00:00','present',16,1,1,'10:59:47','Damaris','Mwende',0),(62610,1,'11:00:53','2022-10-05 21:00:00','present',110,1,1,'11:00:25','Ndolo','Mutisya',0),(62802,1,'11:01:59','2022-10-05 21:00:00','present',16,1,0,'11:01:19','Damaris','Mwende',0),(62867,1,'11:03:00','2022-10-05 21:00:00','present',110,1,0,'11:01:36','Ndolo','Mutisya',0),(62868,1,'11:03:00','2022-10-05 21:00:00','present',122,1,1,'11:02:24','Kevin','Wafula',0),(62869,1,'11:03:00','2022-10-05 21:00:00','present',122,1,0,'11:02:32','Kevin','Wafula',0),(63207,1,'11:07:59','2022-10-05 21:00:00','present',54,1,1,'11:07:07','Stephen','Muita',0),(63208,1,'11:07:59','2022-10-05 21:00:00','present',54,1,0,'11:07:18','Stephen','Muita',0),(63557,1,'11:13:00','2022-10-05 21:00:00','present',16,1,1,'11:11:44','Damaris','Mwende',0),(64338,1,'11:23:59','2022-10-05 21:00:00','present',123,1,1,'11:22:59','Steve','Kiawa',0),(64410,1,'11:24:59','2022-10-05 21:00:00','present',123,1,0,'11:24:25','Steve','Kiawa',0),(64702,1,'11:28:59','2022-10-05 21:00:00','present',16,1,0,'11:28:28','Damaris','Mwende',0),(64850,1,'11:30:59','2022-10-05 21:00:00','present',78,1,0,'11:30:11','Renson','Sibo',0),(65450,1,'11:39:00','2022-10-05 21:00:00','present',122,1,1,'11:38:10','Kevin','Wafula',0),(65526,1,'11:39:59','2022-10-05 21:00:00','present',122,1,0,'11:39:26','Kevin','Wafula',0),(65680,1,'11:42:00','2022-10-05 21:00:00','present',111,1,1,'11:41:02','Carol','Wanjiku',0),(65836,1,'11:43:59','2022-10-05 21:00:00','present',111,1,0,'11:43:25','Carol','Wanjiku',0),(66231,1,'11:48:59','2022-10-05 21:00:00','present',78,1,1,'11:48:19','Renson','Sibo',0),(66232,1,'11:48:59','2022-10-05 21:00:00','present',78,1,0,'11:48:26','Renson','Sibo',0),(67446,1,'12:05:59','2022-10-05 21:00:00','present',123,1,1,'12:04:40','Steve','Kiawa',0),(67938,1,'12:12:00','2022-10-05 21:00:00','present',111,1,1,'12:11:32','Carol','Wanjiku',0),(68021,1,'12:12:59','2022-10-05 21:00:00','present',111,1,0,'12:11:57','Carol','Wanjiku',0),(68189,1,'12:15:00','2022-10-05 21:00:00','present',78,1,1,'12:14:14','Renson','Sibo',0),(68190,1,'12:15:00','2022-10-05 21:00:00','present',78,1,0,'12:14:24','Renson','Sibo',0),(68275,1,'12:15:59','2022-10-05 21:00:00','present',123,1,0,'12:14:37','Steve','Kiawa',0),(68797,1,'12:22:00','2022-10-05 21:00:00','present',54,1,1,'12:21:29','Stephen','Muita',0),(68973,1,'12:24:00','2022-10-05 21:00:00','present',54,1,0,'12:22:44','Stephen','Muita',0),(69685,1,'12:31:59','2022-10-05 21:00:00','present',85,1,1,'12:31:01','Angela','Wambui',0),(69775,1,'12:33:59','2022-10-05 21:00:00','present',85,1,0,'12:32:54','Angela','Wambui',0),(69957,1,'12:35:59','2022-10-05 21:00:00','present',78,1,1,'12:34:58','Renson','Sibo',0),(69958,1,'12:35:59','2022-10-05 21:00:00','present',78,1,0,'12:35:08','Renson','Sibo',0),(70887,1,'12:45:59','2022-10-05 21:00:00','present',122,1,1,'12:45:29','Kevin','Wafula',0),(70981,1,'12:47:00','2022-10-05 21:00:00','present',122,1,0,'12:45:36','Kevin','Wafula',0),(72406,1,'13:32:33','2022-10-05 21:00:00','present',95,1,1,'13:07:54','Faith','Kanyari',0),(72407,1,'13:32:33','2022-10-05 21:00:00','present',95,1,0,'13:09:44','Faith','Kanyari',0),(72408,1,'13:32:33','2022-10-05 21:00:00','present',78,1,1,'13:24:41','Renson','Sibo',0),(72409,1,'13:32:33','2022-10-05 21:00:00','present',107,1,1,'13:13:03','Amina','Ali',0),(72410,1,'13:32:33','2022-10-05 21:00:00','present',107,1,0,'13:32:07','Amina','Ali',0),(72411,1,'13:32:33','2022-10-05 21:00:00','present',115,1,1,'13:24:49','Purity','Wanjiku',0),(72412,1,'13:32:33','2022-10-05 21:00:00','present',122,1,1,'13:03:26','Kevin','Wafula',0),(72413,1,'13:32:33','2022-10-05 21:00:00','present',122,1,0,'13:31:30','Kevin','Wafula',0),(72921,1,'13:37:00','2022-10-05 21:00:00','present',111,1,1,'13:35:54','Carol','Wanjiku',0),(73025,1,'13:37:59','2022-10-05 21:00:00','present',110,1,1,'13:37:21','Ndolo','Mutisya',0),(73235,1,'13:40:00','2022-10-05 21:00:00','present',111,1,0,'13:39:14','Carol','Wanjiku',0),(73341,1,'13:41:00','2022-10-05 21:00:00','present',115,1,0,'13:39:42','Purity','Wanjiku',0),(74946,1,'14:11:19','2022-10-05 21:00:00','present',16,1,1,'14:05:06','Damaris','Mwende',0),(74947,1,'14:11:19','2022-10-05 21:00:00','present',16,1,0,'14:08:23','Damaris','Mwende',0),(74948,1,'14:11:19','2022-10-05 21:00:00','present',107,1,1,'13:54:19','Amina','Ali',0),(74949,1,'14:11:19','2022-10-05 21:00:00','present',107,1,0,'13:59:28','Amina','Ali',0),(74950,1,'14:11:19','2022-10-05 21:00:00','present',110,1,0,'14:07:59','Ndolo','Mutisya',0),(74951,1,'14:11:19','2022-10-05 21:00:00','present',110,1,1,'14:08:44','Ndolo','Mutisya',0),(78336,1,'14:16:10','2022-10-05 21:00:00','present',115,1,1,'14:15:41','Purity','Wanjiku',0),(79362,1,'14:17:35','2022-10-05 21:00:00','present',85,1,1,'14:17:07','Angela','Wambui',0),(80282,1,'14:18:55','2022-10-05 21:00:00','present',122,1,1,'14:18:22','Kevin','Wafula',0),(80630,1,'14:19:25','2022-10-05 21:00:00','present',85,1,0,'14:18:53','Angela','Wambui',0),(81098,1,'14:20:04','2022-10-05 21:00:00','present',115,1,0,'14:19:32','Purity','Wanjiku',0),(83222,1,'14:23:05','2022-10-05 21:00:00','present',54,1,1,'14:22:35','Stephen','Muita',0),(83579,1,'14:24:00','2022-10-05 21:00:00','present',122,1,0,'14:23:00','Kevin','Wafula',0),(83939,1,'14:24:22','2022-10-05 21:00:00','present',54,1,0,'14:23:48','Stephen','Muita',0),(84544,1,'14:25:09','2022-10-05 21:00:00','present',110,1,0,'14:24:38','Ndolo','Mutisya',0),(86252,1,'14:28:18','2022-10-05 21:00:00','present',85,1,1,'14:26:58','Angela','Wambui',0),(90803,1,'14:39:31','2022-10-05 21:00:00','present',109,1,0,'14:39:03','Moses','Mwaniki',0),(97127,1,'14:47:45','2022-10-05 21:00:00','present',95,1,1,'14:47:12','Faith','Kanyari',0),(98502,1,'14:49:26','2022-10-05 21:00:00','present',123,1,1,'14:48:53','Steve','Kiawa',0),(104424,1,'14:56:46','2022-10-05 21:00:00','present',122,1,1,'14:56:13','Kevin','Wafula',0),(106456,1,'14:59:26','2022-10-05 21:00:00','present',54,1,1,'14:58:54','Stephen','Muita',0),(107992,1,'15:02:59','2022-10-05 21:00:00','present',122,1,0,'15:02:10','Kevin','Wafula',0),(109153,1,'15:04:26','2022-10-05 21:00:00','present',123,1,0,'15:03:55','Steve','Kiawa',0),(111103,1,'15:06:56','2022-10-05 21:00:00','present',85,1,0,'15:06:29','Angela','Wambui',0),(118439,1,'15:16:07','2022-10-05 21:00:00','present',95,1,0,'15:15:40','Faith','Kanyari',0),(122267,1,'15:20:42','2022-10-05 21:00:00','present',107,1,1,'15:20:16','Amina','Ali',0),(131710,1,'15:32:26','2022-10-05 21:00:00','present',16,1,1,'15:32:00','Damaris','Mwende',0),(134390,1,'15:36:54','2022-10-05 21:00:00','present',16,1,0,'15:36:21','Damaris','Mwende',0),(149105,1,'15:54:24','2022-10-05 21:00:00','present',54,1,0,'15:53:50','Stephen','Muita',0),(169505,1,'16:41:14','2022-10-05 21:00:00','present',122,1,1,'16:40:46','Kevin','Wafula',0),(170190,1,'16:42:04','2022-10-05 21:00:00','present',122,1,0,'16:41:31','Kevin','Wafula',0),(172674,1,'16:45:04','2022-10-05 21:00:00','present',95,1,1,'16:44:33','Faith','Kanyari',0),(173647,1,'16:46:14','2022-10-05 21:00:00','present',54,1,1,'16:45:40','Stephen','Muita',0),(173927,1,'16:46:34','2022-10-05 21:00:00','present',95,1,0,'16:46:02','Faith','Kanyari',0),(180695,1,'17:01:59','2022-10-05 21:00:00','present',95,1,1,'17:01:03','Faith','Kanyari',0),(185949,1,'17:07:59','2022-10-05 21:00:00','present',111,1,1,'17:07:33','Carol','Wanjiku',0),(186092,1,'17:08:59','2022-10-05 21:00:00','present',78,1,0,'17:08:01','Renson','Sibo',0),(186236,1,'17:10:00','2022-10-05 21:00:00','present',85,1,1,'17:09:15','Angela','Wambui',0),(186237,1,'17:10:00','2022-10-05 21:00:00','present',78,1,1,'17:09:00','Renson','Sibo',0),(186820,1,'17:14:00','2022-10-05 21:00:00','present',122,1,1,'17:13:26','Kevin','Wafula',0),(187702,1,'17:19:59','2022-10-05 21:00:00','present',115,1,1,'17:19:12','Purity','Wanjiku',0),(187998,1,'17:22:00','2022-10-05 21:00:00','present',16,1,1,'17:20:49','Damaris','Mwende',0),(188296,1,'17:23:59','2022-10-05 21:00:00','present',110,1,1,'17:22:59','Ndolo','Mutisya',0),(189646,1,'17:32:59','2022-10-05 21:00:00','present',122,1,0,'17:32:19','Kevin','Wafula',0),(194780,1,'17:52:40','2022-10-05 21:00:00','present',123,1,1,'17:52:14','Steve','Kiawa',0),(195844,1,'17:53:51','2022-10-05 21:00:00','present',123,1,0,'17:53:25','Steve','Kiawa',0),(199975,1,'18:02:13','2022-10-05 21:00:00','present',123,1,1,'18:01:46','Steve','Kiawa',0),(200129,1,'18:02:24','2022-10-05 21:00:00','present',109,1,1,'18:01:57','Moses','Mwaniki',0),(201369,1,'18:03:34','2022-10-05 21:00:00','present',109,1,0,'18:03:08','Moses','Mwaniki',0),(205425,1,'18:07:51','2022-10-05 21:00:00','present',123,1,0,'18:07:23','Steve','Kiawa',0),(213589,1,'07:28:07','2022-10-06 21:00:00','present',85,1,0,'07:10:44','Angela','Wambui',0),(213590,1,'07:28:07','2022-10-06 21:00:00','present',85,1,1,'07:12:06','Angela','Wambui',0),(213591,1,'07:28:07','2022-10-06 21:00:00','present',85,1,0,'07:13:48','Angela','Wambui',0),(213592,1,'07:28:07','2022-10-06 21:00:00','present',122,1,0,'07:23:20','Kevin','Wafula',0),(213601,1,'07:49:57','2022-10-06 21:00:00','present',122,1,1,'07:31:33','Kevin','Wafula',0),(213602,1,'07:49:57','2022-10-06 21:00:00','present',122,1,0,'07:48:59','Kevin','Wafula',0),(213859,1,'08:01:59','2022-10-06 21:00:00','present',95,1,0,'08:01:21','Faith','Kanyari',0),(213908,1,'08:08:21','2022-10-06 21:00:00','present',16,1,0,'08:07:51','Damaris','Mwende',0),(214564,1,'08:21:57','2022-10-06 21:00:00','present',111,1,0,'08:21:24','Carol','Wanjiku',0),(215059,1,'08:34:00','2022-10-06 21:00:00','present',122,1,1,'08:32:41','Kevin','Wafula',0),(215089,1,'08:37:00','2022-10-06 21:00:00','present',122,1,0,'08:36:09','Kevin','Wafula',0),(215111,1,'08:38:59','2022-10-06 21:00:00','present',122,1,1,'08:37:41','Kevin','Wafula',0),(215112,1,'08:38:59','2022-10-06 21:00:00','present',122,1,0,'08:37:55','Kevin','Wafula',0),(215215,1,'08:46:59','2022-10-06 21:00:00','present',122,1,1,'08:46:25','Kevin','Wafula',0),(215216,1,'08:46:59','2022-10-06 21:00:00','present',122,1,0,'08:46:34','Kevin','Wafula',0),(215860,1,'09:01:59','2022-10-06 21:00:00','present',78,1,0,'09:01:30','Renson','Sibo',0),(215861,1,'09:01:59','2022-10-06 21:00:00','present',54,1,0,'09:01:33','Stephen','Muita',0),(215862,1,'09:01:59','2022-10-06 21:00:00','present',112,1,0,'09:01:27','Lazarus','Masika',0),(216004,1,'09:09:59','2022-10-06 21:00:00','present',54,1,1,'09:09:15','Stephen','Muita',0),(216137,1,'09:17:00','2022-10-06 21:00:00','present',54,1,0,'09:16:31','Stephen','Muita',0),(216177,1,'09:19:00','2022-10-06 21:00:00','present',78,1,1,'09:17:54','Renson','Sibo',0),(216178,1,'09:19:00','2022-10-06 21:00:00','present',112,1,1,'09:18:02','Lazarus','Masika',0),(216969,1,'09:28:59','2022-10-06 21:00:00','present',95,1,1,'09:28:24','Faith','Kanyari',0),(217015,1,'09:31:00','2022-10-06 21:00:00','present',95,1,0,'09:29:55','Faith','Kanyari',0),(217016,1,'09:31:00','2022-10-06 21:00:00','present',122,1,1,'09:29:45','Kevin','Wafula',0),(217090,1,'09:33:59','2022-10-06 21:00:00','present',122,1,0,'09:33:17','Kevin','Wafula',0),(217194,1,'09:38:00','2022-10-06 21:00:00','present',115,1,0,'09:37:13','Purity','Wanjiku',0),(217275,1,'09:40:59','2022-10-06 21:00:00','present',115,1,1,'09:40:23','Purity','Wanjiku',0),(217276,1,'09:40:59','2022-10-06 21:00:00','present',115,1,0,'09:40:31','Purity','Wanjiku',0),(217681,1,'09:43:24','2022-10-06 21:00:00','present',111,1,1,'09:42:57','Carol','Wanjiku',0),(218401,1,'09:47:24','2022-10-06 21:00:00','present',111,1,0,'09:46:56','Carol','Wanjiku',0),(218773,1,'09:55:00','2022-10-06 21:00:00','present',85,1,1,'09:54:06','Angela','Wambui',0),(218869,1,'09:57:59','2022-10-06 21:00:00','present',123,1,0,'09:56:59','Steve','Kiawa',0),(219199,1,'10:00:24','2022-10-06 21:00:00','present',85,1,0,'09:59:51','Angela','Wambui',0),(220559,1,'10:08:59','2022-10-06 21:00:00','present',112,1,0,'10:08:00','Lazarus','Masika',0),(220629,1,'10:11:00','2022-10-06 21:00:00','present',85,1,1,'10:09:40','Angela','Wambui',0),(220630,1,'10:11:00','2022-10-06 21:00:00','present',85,1,0,'10:10:00','Angela','Wambui',0),(220740,1,'10:14:00','2022-10-06 21:00:00','present',122,1,1,'10:13:09','Kevin','Wafula',0),(220778,1,'10:15:00','2022-10-06 21:00:00','present',122,1,0,'10:13:42','Kevin','Wafula',0),(221012,1,'10:21:00','2022-10-06 21:00:00','present',112,1,1,'10:19:56','Lazarus','Masika',0),(221372,1,'10:29:59','2022-10-06 21:00:00','present',54,1,1,'10:29:24','Stephen','Muita',0),(221454,1,'10:31:59','2022-10-06 21:00:00','present',123,1,1,'10:30:43','Steve','Kiawa',0),(221664,1,'10:36:59','2022-10-06 21:00:00','present',111,1,1,'10:36:07','Carol','Wanjiku',0),(221665,1,'10:36:59','2022-10-06 21:00:00','present',123,1,0,'10:36:24','Steve','Kiawa',0),(221752,1,'10:38:59','2022-10-06 21:00:00','present',111,1,0,'10:38:15','Carol','Wanjiku',0),(223687,1,'10:50:17','2022-10-06 21:00:00','present',54,1,0,'10:49:46','Stephen','Muita',0),(225711,1,'11:10:59','2022-10-06 21:00:00','present',16,1,1,'11:10:29','Damaris','Mwende',0),(225993,1,'11:16:59','2022-10-06 21:00:00','present',16,1,0,'11:16:35','Damaris','Mwende',0),(226041,1,'11:17:59','2022-10-06 21:00:00','present',122,1,1,'11:17:05','Kevin','Wafula',0),(226042,1,'11:17:59','2022-10-06 21:00:00','present',112,1,0,'11:17:24','Lazarus','Masika',0),(226091,1,'11:18:59','2022-10-06 21:00:00','present',122,1,0,'11:17:47','Kevin','Wafula',0),(226448,1,'11:26:00','2022-10-06 21:00:00','present',54,1,1,'11:24:57','Stephen','Muita',0),(226449,1,'11:26:00','2022-10-06 21:00:00','present',54,1,0,'11:25:04','Stephen','Muita',0),(226554,1,'11:28:00','2022-10-06 21:00:00','present',85,1,1,'11:27:16','Angela','Wambui',0),(226662,1,'11:30:00','2022-10-06 21:00:00','present',85,1,0,'11:28:50','Angela','Wambui',0),(226772,1,'11:32:00','2022-10-06 21:00:00','present',111,1,1,'11:31:17','Carol','Wanjiku',0),(226884,1,'11:33:59','2022-10-06 21:00:00','present',111,1,0,'11:33:18','Carol','Wanjiku',0),(230646,1,'12:12:59','2022-10-06 21:00:00','present',112,1,1,'12:12:10','Lazarus','Masika',0),(230647,1,'12:12:59','2022-10-06 21:00:00','present',112,1,0,'12:12:22','Lazarus','Masika',0),(230823,1,'12:15:59','2022-10-06 21:00:00','present',112,1,1,'12:14:57','Lazarus','Masika',0),(230824,1,'12:15:59','2022-10-06 21:00:00','present',112,1,0,'12:15:07','Lazarus','Masika',0),(231372,1,'12:25:01','2022-10-06 21:00:00','present',123,1,1,'12:24:16','Steve','Kiawa',0),(231434,1,'12:25:59','2022-10-06 21:00:00','present',123,1,0,'12:25:26','Steve','Kiawa',0),(232064,1,'12:36:00','2022-10-06 21:00:00','present',122,1,1,'12:34:51','Kevin','Wafula',0),(232065,1,'12:36:00','2022-10-06 21:00:00','present',122,1,0,'12:35:29','Kevin','Wafula',0),(232194,1,'12:37:59','2022-10-06 21:00:00','present',95,1,1,'12:37:15','Faith','Kanyari',0),(232260,1,'12:39:00','2022-10-06 21:00:00','present',95,1,0,'12:38:26','Faith','Kanyari',0),(232394,1,'15:13:49','2022-10-06 21:00:00','present',16,1,1,'13:27:43','Damaris','Mwende',0),(232395,1,'15:13:49','2022-10-06 21:00:00','present',16,1,0,'13:29:58','Damaris','Mwende',0),(232396,1,'15:13:49','2022-10-06 21:00:00','present',85,1,1,'12:48:28','Angela','Wambui',0),(232397,1,'15:13:49','2022-10-06 21:00:00','present',85,1,0,'12:50:25','Angela','Wambui',0),(232398,1,'15:13:49','2022-10-06 21:00:00','present',85,1,1,'13:39:25','Angela','Wambui',0),(232399,1,'15:13:49','2022-10-06 21:00:00','present',85,1,0,'13:41:50','Angela','Wambui',0),(232400,1,'15:13:49','2022-10-06 21:00:00','present',85,1,1,'13:42:05','Angela','Wambui',0),(232401,1,'15:13:49','2022-10-06 21:00:00','present',85,1,0,'13:42:57','Angela','Wambui',0),(232402,1,'15:13:49','2022-10-06 21:00:00','present',85,1,1,'13:50:11','Angela','Wambui',0),(232403,1,'15:13:49','2022-10-06 21:00:00','present',85,1,0,'13:50:41','Angela','Wambui',0),(232404,1,'15:13:49','2022-10-06 21:00:00','present',85,1,1,'14:23:30','Angela','Wambui',0),(232405,1,'15:13:49','2022-10-06 21:00:00','present',85,1,0,'14:24:59','Angela','Wambui',0),(232406,1,'15:13:49','2022-10-06 21:00:00','present',54,1,1,'12:48:01','Stephen','Muita',0),(232407,1,'15:13:49','2022-10-06 21:00:00','present',54,1,0,'12:49:29','Stephen','Muita',0),(232408,1,'15:13:49','2022-10-06 21:00:00','present',54,1,1,'13:51:16','Stephen','Muita',0),(232409,1,'15:13:49','2022-10-06 21:00:00','present',54,1,0,'13:52:28','Stephen','Muita',0),(232410,1,'15:13:49','2022-10-06 21:00:00','present',78,1,0,'14:28:07','Renson','Sibo',0),(232411,1,'15:13:49','2022-10-06 21:00:00','present',78,1,1,'14:38:25','Renson','Sibo',0),(232412,1,'15:13:49','2022-10-06 21:00:00','present',111,1,1,'12:41:34','Carol','Wanjiku',0),(232413,1,'15:13:49','2022-10-06 21:00:00','present',111,1,0,'12:59:15','Carol','Wanjiku',0),(232414,1,'15:13:49','2022-10-06 21:00:00','present',111,1,1,'13:50:31','Carol','Wanjiku',0),(232415,1,'15:13:49','2022-10-06 21:00:00','present',111,1,0,'13:50:35','Carol','Wanjiku',0),(232416,1,'15:13:49','2022-10-06 21:00:00','present',111,1,1,'13:59:10','Carol','Wanjiku',0),(232417,1,'15:13:49','2022-10-06 21:00:00','present',111,1,0,'14:02:37','Carol','Wanjiku',0),(232418,1,'15:13:49','2022-10-06 21:00:00','present',109,1,0,'14:29:24','Moses','Mwaniki',0),(232419,1,'15:13:49','2022-10-06 21:00:00','present',115,1,1,'14:49:52','Purity','Wanjiku',0),(232420,1,'15:13:49','2022-10-06 21:00:00','present',115,1,0,'15:01:12','Purity','Wanjiku',0),(232421,1,'15:13:49','2022-10-06 21:00:00','present',122,1,1,'13:08:03','Kevin','Wafula',0),(232422,1,'15:13:49','2022-10-06 21:00:00','present',122,1,0,'13:36:41','Kevin','Wafula',0),(232423,1,'15:13:49','2022-10-06 21:00:00','present',112,1,1,'13:48:08','Lazarus','Masika',0),(232424,1,'15:13:49','2022-10-06 21:00:00','present',112,1,0,'13:59:17','Lazarus','Masika',0),(232425,1,'15:13:49','2022-10-06 21:00:00','present',112,1,1,'14:07:37','Lazarus','Masika',0),(232426,1,'15:13:49','2022-10-06 21:00:00','present',123,1,1,'13:07:58','Steve','Kiawa',0),(232427,1,'15:13:49','2022-10-06 21:00:00','present',123,1,0,'13:08:44','Steve','Kiawa',0),(232428,1,'15:13:49','2022-10-06 21:00:00','present',123,1,1,'13:12:20','Steve','Kiawa',0),(232429,1,'15:13:49','2022-10-06 21:00:00','present',123,1,0,'13:17:28','Steve','Kiawa',0),(232430,1,'15:13:49','2022-10-06 21:00:00','present',123,1,1,'13:17:47','Steve','Kiawa',0),(232431,1,'15:13:49','2022-10-06 21:00:00','present',123,1,0,'13:23:00','Steve','Kiawa',0),(233549,1,'15:15:36','2022-10-06 21:00:00','present',85,1,1,'15:15:07','Angela','Wambui',0),(242771,1,'15:31:15','2022-10-06 21:00:00','present',95,1,1,'15:30:44','Faith','Kanyari',0),(242985,1,'15:31:35','2022-10-06 21:00:00','present',54,1,1,'15:31:07','Stephen','Muita',0),(243741,1,'15:32:45','2022-10-06 21:00:00','present',95,1,0,'15:32:14','Faith','Kanyari',0),(243850,1,'15:32:55','2022-10-06 21:00:00','present',54,1,0,'15:32:28','Stephen','Muita',0),(246490,1,'15:42:59','2022-10-06 21:00:00','present',123,1,1,'15:42:19','Steve','Kiawa',0),(246601,1,'15:43:59','2022-10-06 21:00:00','present',123,1,0,'15:43:17','Steve','Kiawa',0),(246937,1,'15:46:59','2022-10-06 21:00:00','present',122,1,1,'15:46:10','Kevin','Wafula',0),(247050,1,'15:47:59','2022-10-06 21:00:00','present',122,1,0,'15:47:04','Kevin','Wafula',0),(247051,1,'15:47:59','2022-10-06 21:00:00','present',123,1,1,'15:46:54','Steve','Kiawa',0),(247165,1,'15:48:18','2022-10-06 21:00:00','present',123,1,0,'15:47:46','Steve','Kiawa',0),(250761,1,'15:53:59','2022-10-06 21:00:00','present',16,1,1,'15:53:26','Damaris','Mwende',0),(251112,1,'15:56:59','2022-10-06 21:00:00','present',16,1,0,'15:56:05','Damaris','Mwende',0),(252056,1,'16:04:59','2022-10-06 21:00:00','present',54,1,1,'16:03:55','Stephen','Muita',0),(252651,1,'16:09:59','2022-10-06 21:00:00','present',115,1,1,'16:08:42','Purity','Wanjiku',0),(253011,1,'16:12:59','2022-10-06 21:00:00','present',115,1,0,'16:12:13','Purity','Wanjiku',0),(256036,1,'16:19:25','2022-10-06 21:00:00','present',122,1,1,'16:18:55','Kevin','Wafula',0),(256402,1,'16:19:55','2022-10-06 21:00:00','present',122,1,0,'16:19:29','Kevin','Wafula',0),(263413,1,'16:39:57','2022-10-06 21:00:00','present',54,1,0,'16:39:09','Stephen','Muita',0),(264777,1,'16:41:44','2022-10-06 21:00:00','present',111,1,1,'16:41:12','Carol','Wanjiku',0),(265402,1,'16:42:34','2022-10-06 21:00:00','present',95,1,1,'16:42:11','Faith','Kanyari',0),(266158,1,'16:43:34','2022-10-06 21:00:00','present',111,1,0,'16:43:11','Carol','Wanjiku',0),(267809,1,'16:45:44','2022-10-06 21:00:00','present',78,1,0,'16:45:15','Renson','Sibo',0),(268321,1,'16:46:24','2022-10-06 21:00:00','present',112,1,0,'16:45:59','Lazarus','Masika',0),(270385,1,'16:49:04','2022-10-06 21:00:00','present',95,1,0,'16:48:32','Faith','Kanyari',0),(271295,1,'16:51:59','2022-10-06 21:00:00','present',109,1,1,'16:50:45','Moses','Mwaniki',0),(271950,1,'16:56:59','2022-10-06 21:00:00','present',109,1,0,'16:56:15','Moses','Mwaniki',0),(272082,1,NULL,'2022-10-07 00:00:00','present',95,1,1,'17:00:41','Faith','Kanyari',0),(272083,1,NULL,'2022-10-07 00:00:00','present',78,1,1,'16:57:13','Renson','Sibo',0),(272084,1,NULL,'2022-10-07 00:00:00','present',54,1,1,'16:58:15','Stephen','Muita',0),(272085,1,NULL,'2022-10-07 00:00:00','present',54,1,0,'16:59:06','Stephen','Muita',0),(272086,1,NULL,'2022-10-07 00:00:00','present',54,1,1,'17:00:01','Stephen','Muita',0),(272087,1,NULL,'2022-10-07 00:00:00','present',111,1,1,'17:01:48','Carol','Wanjiku',0),(272088,1,NULL,'2022-10-07 00:00:00','present',115,1,1,'17:13:44','Purity','Wanjiku',0),(272089,1,NULL,'2022-10-07 00:00:00','present',115,1,0,'17:20:33','Purity','Wanjiku',0),(272090,1,NULL,'2022-10-07 00:00:00','present',112,1,1,'17:00:06','Lazarus','Masika',0),(272091,1,NULL,'2022-10-07 00:00:00','present',122,1,1,'17:15:06','Kevin','Wafula',0),(273941,1,NULL,'2022-10-07 00:00:00','present',122,1,0,'17:22:32','Kevin','Wafula',0),(300293,1,NULL,'2022-10-07 00:00:00','present',115,1,1,'17:58:30','Purity','Wanjiku',0),(300294,1,NULL,'2022-10-07 00:00:00','present',122,1,1,'17:41:30','Kevin','Wafula',0),(300295,1,NULL,'2022-10-07 00:00:00','present',123,1,1,'17:41:21','Steve','Kiawa',0),(377174,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'07:00:39','Angela','Wambui',0),(377175,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'07:05:50','Angela','Wambui',0),(377176,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'07:05:59','Angela','Wambui',0),(377243,1,NULL,'2022-10-08 00:00:00','present',95,1,0,'08:05:54','Faith','Kanyari',0),(377244,1,NULL,'2022-10-08 00:00:00','present',16,1,0,'08:21:05','Damaris','Mwende',0),(377245,1,NULL,'2022-10-08 00:00:00','present',95,1,1,'09:54:32','Faith','Kanyari',0),(377246,1,NULL,'2022-10-08 00:00:00','present',95,1,0,'09:55:44','Faith','Kanyari',0),(377247,1,NULL,'2022-10-08 00:00:00','present',95,1,1,'12:11:20','Faith','Kanyari',0),(377248,1,NULL,'2022-10-08 00:00:00','present',95,1,0,'12:12:41','Faith','Kanyari',0),(377249,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'08:15:39','Angela','Wambui',0),(377250,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'08:15:46','Angela','Wambui',0),(377251,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'08:17:32','Angela','Wambui',0),(377252,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'08:17:39','Angela','Wambui',0),(377253,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'08:18:02','Angela','Wambui',0),(377254,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'08:19:43','Angela','Wambui',0),(377255,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'09:12:14','Angela','Wambui',0),(377256,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'09:24:57','Angela','Wambui',0),(377257,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'09:33:40','Angela','Wambui',0),(377258,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'09:35:11','Angela','Wambui',0),(377259,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'10:59:46','Angela','Wambui',0),(377260,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'11:01:10','Angela','Wambui',0),(377261,1,NULL,'2022-10-08 00:00:00','present',54,1,0,'08:03:14','Stephen','Muita',0),(377262,1,NULL,'2022-10-08 00:00:00','present',54,1,1,'08:14:33','Stephen','Muita',0),(377263,1,NULL,'2022-10-08 00:00:00','present',78,1,0,'08:30:18','Renson','Sibo',0),(377264,1,NULL,'2022-10-08 00:00:00','present',54,1,0,'09:37:48','Stephen','Muita',0),(377265,1,NULL,'2022-10-08 00:00:00','present',54,1,1,'10:52:20','Stephen','Muita',0),(377266,1,NULL,'2022-10-08 00:00:00','present',78,1,1,'10:52:25','Renson','Sibo',0),(377267,1,NULL,'2022-10-08 00:00:00','present',54,1,0,'11:41:29','Stephen','Muita',0),(377268,1,NULL,'2022-10-08 00:00:00','present',54,1,1,'12:07:56','Stephen','Muita',0),(377269,1,NULL,'2022-10-08 00:00:00','present',111,1,0,'07:57:55','Carol','Wanjiku',0),(377270,1,NULL,'2022-10-08 00:00:00','present',110,1,0,'08:31:33','Ndolo','Mutisya',0),(377271,1,NULL,'2022-10-08 00:00:00','present',111,1,1,'08:51:24','Carol','Wanjiku',0),(377272,1,NULL,'2022-10-08 00:00:00','present',111,1,0,'08:53:05','Carol','Wanjiku',0),(377273,1,NULL,'2022-10-08 00:00:00','present',111,1,1,'08:53:27','Carol','Wanjiku',0),(377274,1,NULL,'2022-10-08 00:00:00','present',111,1,0,'08:53:38','Carol','Wanjiku',0),(377275,1,NULL,'2022-10-08 00:00:00','present',111,1,1,'08:56:42','Carol','Wanjiku',0),(377276,1,NULL,'2022-10-08 00:00:00','present',111,1,0,'09:00:23','Carol','Wanjiku',0),(377277,1,NULL,'2022-10-08 00:00:00','present',111,1,1,'10:13:07','Carol','Wanjiku',0),(377278,1,NULL,'2022-10-08 00:00:00','present',111,1,0,'10:34:19','Carol','Wanjiku',0),(377279,1,NULL,'2022-10-08 00:00:00','present',110,1,1,'10:48:12','Ndolo','Mutisya',0),(377280,1,NULL,'2022-10-08 00:00:00','present',110,1,0,'10:49:39','Ndolo','Mutisya',0),(377281,1,NULL,'2022-10-08 00:00:00','present',111,1,1,'11:21:43','Carol','Wanjiku',0),(377282,1,NULL,'2022-10-08 00:00:00','present',111,1,0,'11:23:20','Carol','Wanjiku',0),(377283,1,NULL,'2022-10-08 00:00:00','present',112,1,0,'08:31:37','Lazarus','Masika',0),(377284,1,NULL,'2022-10-08 00:00:00','present',112,1,1,'08:56:35','Lazarus','Masika',0),(377285,1,NULL,'2022-10-08 00:00:00','present',112,1,0,'08:56:46','Lazarus','Masika',0),(377286,1,NULL,'2022-10-08 00:00:00','present',112,1,1,'08:58:53','Lazarus','Masika',0),(377287,1,NULL,'2022-10-08 00:00:00','present',112,1,0,'08:58:59','Lazarus','Masika',0),(377288,1,NULL,'2022-10-08 00:00:00','present',112,1,1,'10:52:31','Lazarus','Masika',0),(378811,1,NULL,'2022-10-08 00:00:00','present',112,1,0,'12:24:51','Lazarus','Masika',0),(379211,1,NULL,'2022-10-08 00:00:00','present',54,1,0,'12:26:11','Stephen','Muita',0),(379212,1,NULL,'2022-10-08 00:00:00','present',78,1,0,'12:26:14','Renson','Sibo',0),(380251,1,NULL,'2022-10-08 00:00:00','present',16,1,1,'12:47:56','Damaris','Mwende',0),(380252,1,NULL,'2022-10-08 00:00:00','present',16,1,0,'12:51:08','Damaris','Mwende',0),(380253,1,NULL,'2022-10-08 00:00:00','present',95,1,1,'13:03:52','Faith','Kanyari',0),(380254,1,NULL,'2022-10-08 00:00:00','present',16,1,1,'13:17:32','Damaris','Mwende',0),(380255,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'12:46:12','Angela','Wambui',0),(380256,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'12:48:03','Angela','Wambui',0),(380257,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'12:48:25','Angela','Wambui',0),(380258,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'12:48:56','Angela','Wambui',0),(380259,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'13:31:59','Angela','Wambui',0),(380260,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'13:33:14','Angela','Wambui',0),(380261,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'13:56:14','Angela','Wambui',0),(380262,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'13:57:39','Angela','Wambui',0),(380263,1,NULL,'2022-10-08 00:00:00','present',54,1,1,'13:00:14','Stephen','Muita',0),(380264,1,NULL,'2022-10-08 00:00:00','present',78,1,1,'13:00:31','Renson','Sibo',0),(380265,1,NULL,'2022-10-08 00:00:00','present',111,1,1,'12:46:51','Carol','Wanjiku',0),(380266,1,NULL,'2022-10-08 00:00:00','present',111,1,0,'12:48:19','Carol','Wanjiku',0),(380267,1,NULL,'2022-10-08 00:00:00','present',111,1,1,'13:01:06','Carol','Wanjiku',0),(380268,1,NULL,'2022-10-08 00:00:00','present',110,1,1,'13:10:16','Ndolo','Mutisya',0),(380269,1,NULL,'2022-10-08 00:00:00','present',110,1,0,'13:20:45','Ndolo','Mutisya',0),(380270,1,NULL,'2022-10-08 00:00:00','present',110,1,1,'13:48:56','Ndolo','Mutisya',0),(380271,1,NULL,'2022-10-08 00:00:00','present',112,1,1,'13:00:36','Lazarus','Masika',0),(393464,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'15:23:07','Angela','Wambui',0),(393465,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'15:24:43','Angela','Wambui',0),(393466,1,NULL,'2022-10-08 00:00:00','present',107,1,0,'14:53:15','Amina','Ali',0),(395516,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'15:30:49','Angela','Wambui',0),(395670,1,NULL,'2022-10-08 00:00:00','present',85,1,0,'15:31:12','Angela','Wambui',0),(396606,1,NULL,'2022-10-08 00:00:00','present',85,1,1,'15:33:08','Angela','Wambui',0),(489036,1,NULL,'2022-10-08 00:00:00','present',107,1,1,'18:46:25','Amina','Ali',0),(489756,1,NULL,'2022-10-08 00:00:00','present',107,1,0,'18:47:50','Amina','Ali',0),(509358,1,NULL,'2022-10-09 00:00:00','present',5,1,0,'09:01:59','Erick','Kiboi',0),(509359,1,NULL,'2022-10-09 00:00:00','present',107,1,0,'06:42:05','Amina','Ali',0),(509744,1,NULL,'2022-10-09 00:00:00','present',5,1,1,'10:55:27','Erick','Kiboi',0),(510023,1,NULL,'2022-10-09 00:00:00','present',5,1,0,'11:16:23','Erick','Kiboi',0),(511195,1,NULL,'2022-10-09 00:00:00','present',5,1,1,'12:25:04','Erick','Kiboi',0),(511385,1,NULL,'2022-10-09 00:00:00','present',5,1,0,'13:57:04','Erick','Kiboi',0),(511386,1,NULL,'2022-10-09 00:00:00','present',107,1,1,'12:41:18','Amina','Ali',0),(511387,1,NULL,'2022-10-09 00:00:00','present',107,1,0,'12:46:41','Amina','Ali',0),(512473,1,NULL,'2022-10-09 00:00:00','present',107,1,1,'15:17:14','Amina','Ali',0),(512474,1,NULL,'2022-10-09 00:00:00','present',109,1,0,'14:48:44','Moses','Mwaniki',0),(515013,1,NULL,'2022-10-09 00:00:00','present',5,1,1,'16:03:27','Erick','Kiboi',0),(522086,1,NULL,'2022-10-09 00:00:00','present',109,1,1,'21:04:08','Moses','Mwaniki',0),(522134,1,NULL,'2022-10-10 00:00:00','present',109,1,0,'06:28:23','Moses','Mwaniki',0),(522135,1,NULL,'2022-10-10 00:00:00','present',109,1,1,'06:31:13','Moses','Mwaniki',0),(522136,1,NULL,'2022-10-10 00:00:00','present',109,1,0,'06:32:19','Moses','Mwaniki',0),(522992,1,NULL,'2022-10-10 00:00:00','present',107,1,0,'14:27:06','Amina','Ali',0),(522993,1,NULL,'2022-10-10 00:00:00','present',109,1,1,'11:42:49','Moses','Mwaniki',0),(522994,1,NULL,'2022-10-10 00:00:00','present',109,1,0,'11:43:51','Moses','Mwaniki',0),(522995,1,NULL,'2022-10-10 00:00:00','present',109,1,1,'14:05:45','Moses','Mwaniki',0),(522996,1,NULL,'2022-10-10 00:00:00','present',109,1,0,'14:06:49','Moses','Mwaniki',0),(522997,1,NULL,'2022-10-10 00:00:00','present',109,1,1,'14:57:48','Moses','Mwaniki',0),(522998,1,NULL,'2022-10-10 00:00:00','present',109,1,0,'15:03:47','Moses','Mwaniki',0),(522999,1,NULL,'2022-10-10 00:00:00','present',109,1,1,'15:09:36','Moses','Mwaniki',0),(531671,1,NULL,'2022-10-10 00:00:00','present',107,1,1,'18:35:30','Amina','Ali',0),(531803,1,NULL,'2022-10-10 00:00:00','present',107,1,0,'18:37:17','Amina','Ali',0),(532609,1,NULL,'2022-10-10 00:00:00','present',107,1,1,'18:47:38','Amina','Ali',0),(533001,1,NULL,'2022-10-10 00:00:00','present',107,1,0,'18:52:22','Amina','Ali',0),(544821,1,NULL,'2022-10-10 00:00:00','present',107,1,1,'21:04:00','Amina','Ali',0),(561637,1,NULL,'2022-10-11 00:00:00','present',107,1,0,'07:06:41','Amina','Ali',0),(561851,1,NULL,'2022-10-11 00:00:00','present',107,1,1,'07:42:30','Amina','Ali',0),(561852,1,NULL,'2022-10-11 00:00:00','present',107,1,0,'07:42:38','Amina','Ali',0),(562046,1,NULL,'2022-10-11 00:00:00','present',110,1,0,'07:53:16','Ndolo','Mutisya',0),(562170,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'07:58:31','Angela','Wambui',0),(562560,1,NULL,'2022-10-11 00:00:00','present',95,1,0,'08:11:35','Faith','Kanyari',0),(563022,1,NULL,'2022-10-11 00:00:00','present',16,1,0,'08:24:26','Damaris','Mwende',0),(563029,1,NULL,'2022-10-11 00:00:00','present',111,1,0,'08:24:31','Carol','Wanjiku',0),(563189,1,NULL,'2022-10-11 00:00:00','present',78,1,0,'08:27:55','Renson','Sibo',0),(563243,1,NULL,'2022-10-11 00:00:00','present',112,1,0,'08:28:58','Lazarus','Masika',0),(563273,1,NULL,'2022-10-11 00:00:00','present',78,1,1,'08:29:26','Renson','Sibo',0),(563757,1,NULL,'2022-10-11 00:00:00','present',112,1,1,'08:36:44','Lazarus','Masika',0),(564669,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'08:49:25','Angela','Wambui',0),(564682,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'08:49:33','Angela','Wambui',0),(565158,1,NULL,'2022-10-11 00:00:00','present',115,1,0,'08:55:15','Purity','Wanjiku',0),(565338,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'08:57:15','Angela','Wambui',0),(565466,1,NULL,'2022-10-11 00:00:00','present',16,1,1,'09:14:11','Damaris','Mwende',0),(565467,1,NULL,'2022-10-11 00:00:00','present',16,1,0,'09:29:46','Damaris','Mwende',0),(565468,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'08:58:48','Angela','Wambui',0),(565469,1,NULL,'2022-10-11 00:00:00','present',54,1,0,'08:58:58','Stephen','Muita',0),(565470,1,NULL,'2022-10-11 00:00:00','present',54,1,1,'09:00:06','Stephen','Muita',0),(565471,1,NULL,'2022-10-11 00:00:00','present',78,1,0,'09:17:06','Renson','Sibo',0),(565472,1,NULL,'2022-10-11 00:00:00','present',78,1,1,'09:24:45','Renson','Sibo',0),(565473,1,NULL,'2022-10-11 00:00:00','present',54,1,0,'09:39:41','Stephen','Muita',0),(565474,1,NULL,'2022-10-11 00:00:00','present',78,1,0,'09:52:13','Renson','Sibo',0),(565475,1,NULL,'2022-10-11 00:00:00','present',115,1,1,'09:03:01','Purity','Wanjiku',0),(565476,1,NULL,'2022-10-11 00:00:00','present',110,1,1,'09:07:17','Ndolo','Mutisya',0),(565477,1,NULL,'2022-10-11 00:00:00','present',110,1,0,'09:10:55','Ndolo','Mutisya',0),(565478,1,NULL,'2022-10-11 00:00:00','present',111,1,1,'09:32:00','Carol','Wanjiku',0),(565479,1,NULL,'2022-10-11 00:00:00','present',111,1,0,'09:35:46','Carol','Wanjiku',0),(565480,1,NULL,'2022-10-11 00:00:00','present',112,1,0,'09:17:10','Lazarus','Masika',0),(565481,1,NULL,'2022-10-11 00:00:00','present',122,1,0,'09:18:54','Kevin','Wafula',0),(565482,1,NULL,'2022-10-11 00:00:00','present',122,1,1,'09:37:01','Kevin','Wafula',0),(565483,1,NULL,'2022-10-11 00:00:00','present',122,1,0,'09:38:22','Kevin','Wafula',0),(565484,1,NULL,'2022-10-11 00:00:00','present',112,1,1,'09:59:29','Lazarus','Masika',0),(565485,1,NULL,'2022-10-11 00:00:00','present',123,1,0,'09:57:38','Steve','Kiawa',0),(565486,1,NULL,'2022-10-11 00:00:00','present',123,1,1,'09:59:22','Steve','Kiawa',0),(565487,1,NULL,'2022-10-11 00:00:00','present',123,1,0,'10:00:28','Steve','Kiawa',0),(566480,1,NULL,'2022-10-11 00:00:00','present',122,1,1,'10:05:34','Kevin','Wafula',0),(566640,1,NULL,'2022-10-11 00:00:00','present',122,1,0,'10:06:18','Kevin','Wafula',0),(567583,1,NULL,'2022-10-11 00:00:00','present',110,1,1,'10:10:07','Ndolo','Mutisya',0),(567625,1,NULL,'2022-10-11 00:00:00','present',121,1,0,'10:10:15','Edward','Macharia',0),(568313,1,NULL,'2022-10-11 00:00:00','present',123,1,1,'10:12:56','Steve','Kiawa',0),(569149,1,NULL,'2022-10-11 00:00:00','present',123,1,0,'10:16:11','Steve','Kiawa',0),(569555,1,NULL,'2022-10-11 00:00:00','present',95,1,1,'10:20:58','Faith','Kanyari',0),(569556,1,NULL,'2022-10-11 00:00:00','present',95,1,0,'10:24:19','Faith','Kanyari',0),(569557,1,NULL,'2022-10-11 00:00:00','present',16,1,1,'11:24:31','Damaris','Mwende',0),(569558,1,NULL,'2022-10-11 00:00:00','present',16,1,0,'11:27:40','Damaris','Mwende',0),(569559,1,NULL,'2022-10-11 00:00:00','present',95,1,1,'13:25:11','Faith','Kanyari',0),(569560,1,NULL,'2022-10-11 00:00:00','present',16,1,1,'13:29:18','Damaris','Mwende',0),(569561,1,NULL,'2022-10-11 00:00:00','present',16,1,0,'13:31:32','Damaris','Mwende',0),(569562,1,NULL,'2022-10-11 00:00:00','present',95,1,0,'13:57:54','Faith','Kanyari',0),(569563,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'10:21:32','Angela','Wambui',0),(569564,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'10:23:40','Angela','Wambui',0),(569565,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'12:11:00','Angela','Wambui',0),(569566,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'12:14:22','Angela','Wambui',0),(569567,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'13:45:22','Angela','Wambui',0),(569568,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'13:47:04','Angela','Wambui',0),(569569,1,NULL,'2022-10-11 00:00:00','present',54,1,1,'10:17:55','Stephen','Muita',0),(569570,1,NULL,'2022-10-11 00:00:00','present',54,1,0,'10:18:14','Stephen','Muita',0),(569571,1,NULL,'2022-10-11 00:00:00','present',78,1,1,'10:44:22','Renson','Sibo',0),(569572,1,NULL,'2022-10-11 00:00:00','present',78,1,0,'10:50:03','Renson','Sibo',0),(569573,1,NULL,'2022-10-11 00:00:00','present',78,1,1,'11:15:24','Renson','Sibo',0),(569574,1,NULL,'2022-10-11 00:00:00','present',54,1,1,'11:15:43','Stephen','Muita',0),(569575,1,NULL,'2022-10-11 00:00:00','present',54,1,0,'11:39:31','Stephen','Muita',0),(569576,1,NULL,'2022-10-11 00:00:00','present',78,1,0,'13:44:10','Renson','Sibo',0),(569577,1,NULL,'2022-10-11 00:00:00','present',107,1,1,'10:45:07','Amina','Ali',0),(569578,1,NULL,'2022-10-11 00:00:00','present',107,1,0,'11:04:12','Amina','Ali',0),(569579,1,NULL,'2022-10-11 00:00:00','present',107,1,1,'13:08:58','Amina','Ali',0),(569580,1,NULL,'2022-10-11 00:00:00','present',107,1,0,'13:11:10','Amina','Ali',0),(569581,1,NULL,'2022-10-11 00:00:00','present',107,1,1,'13:34:05','Amina','Ali',0),(569582,1,NULL,'2022-10-11 00:00:00','present',107,1,0,'13:35:16','Amina','Ali',0),(569583,1,NULL,'2022-10-11 00:00:00','present',110,1,0,'11:16:54','Ndolo','Mutisya',0),(569584,1,NULL,'2022-10-11 00:00:00','present',110,1,1,'12:54:57','Ndolo','Mutisya',0),(569585,1,NULL,'2022-10-11 00:00:00','present',115,1,1,'13:08:41','Purity','Wanjiku',0),(569586,1,NULL,'2022-10-11 00:00:00','present',115,1,0,'13:11:29','Purity','Wanjiku',0),(569587,1,NULL,'2022-10-11 00:00:00','present',110,1,0,'13:44:07','Ndolo','Mutisya',0),(569588,1,NULL,'2022-10-11 00:00:00','present',112,1,0,'10:50:41','Lazarus','Masika',0),(569589,1,NULL,'2022-10-11 00:00:00','present',122,1,1,'11:24:01','Kevin','Wafula',0),(569590,1,NULL,'2022-10-11 00:00:00','present',121,1,1,'11:54:40','Edward','Macharia',0),(569591,1,NULL,'2022-10-11 00:00:00','present',121,1,0,'11:55:41','Edward','Macharia',0),(569592,1,NULL,'2022-10-11 00:00:00','present',122,1,0,'12:04:09','Kevin','Wafula',0),(569593,1,NULL,'2022-10-11 00:00:00','present',121,1,1,'12:51:27','Edward','Macharia',0),(569594,1,NULL,'2022-10-11 00:00:00','present',122,1,1,'12:55:56','Kevin','Wafula',0),(569595,1,NULL,'2022-10-11 00:00:00','present',123,1,1,'10:42:24','Steve','Kiawa',0),(569596,1,NULL,'2022-10-11 00:00:00','present',123,1,0,'10:43:21','Steve','Kiawa',0),(569597,1,NULL,'2022-10-11 00:00:00','present',123,1,1,'11:23:55','Steve','Kiawa',0),(569598,1,NULL,'2022-10-11 00:00:00','present',123,1,0,'12:03:14','Steve','Kiawa',0),(569599,1,NULL,'2022-10-11 00:00:00','present',123,1,1,'12:55:21','Steve','Kiawa',0),(569600,1,NULL,'2022-10-11 00:00:00','present',123,1,0,'13:06:01','Steve','Kiawa',0),(579110,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'14:20:51','Angela','Wambui',0),(579846,1,NULL,'2022-10-11 00:00:00','present',111,1,1,'14:22:17','Carol','Wanjiku',0),(582357,1,NULL,'2022-10-11 00:00:00','present',111,1,0,'14:26:49','Carol','Wanjiku',0),(582827,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'14:27:39','Angela','Wambui',0),(586057,1,NULL,'2022-10-11 00:00:00','present',115,1,1,'14:33:54','Purity','Wanjiku',0),(587977,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'14:37:09','Angela','Wambui',0),(588559,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'14:38:17','Angela','Wambui',0),(589343,1,NULL,'2022-10-11 00:00:00','present',115,1,0,'14:39:36','Purity','Wanjiku',0),(593798,1,NULL,'2022-10-11 00:00:00','present',109,1,0,'14:47:11','Moses','Mwaniki',0),(595098,1,NULL,'2022-10-11 00:00:00','present',122,1,0,'14:49:22','Kevin','Wafula',0),(595704,1,NULL,'2022-10-11 00:00:00','present',122,1,1,'14:50:23','Kevin','Wafula',0),(596520,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'14:51:38','Angela','Wambui',0),(596521,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'14:51:46','Angela','Wambui',0),(597144,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'14:52:48','Angela','Wambui',0),(597249,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'14:52:54','Angela','Wambui',0),(597355,1,NULL,'2022-10-11 00:00:00','present',122,1,0,'14:53:00','Kevin','Wafula',0),(599174,1,NULL,'2022-10-11 00:00:00','present',121,1,0,'14:59:30','Edward','Macharia',0),(607922,1,NULL,'2022-10-11 00:00:00','present',107,1,1,'15:12:56','Amina','Ali',0),(609230,1,NULL,'2022-10-11 00:00:00','present',123,1,1,'15:16:23','Steve','Kiawa',0),(609231,1,NULL,'2022-10-11 00:00:00','present',123,1,0,'15:17:41','Steve','Kiawa',0),(611450,1,NULL,'2022-10-11 00:00:00','present',54,1,1,'15:29:58','Stephen','Muita',0),(611674,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'15:34:13','Angela','Wambui',0),(612239,1,NULL,'2022-10-11 00:00:00','present',78,1,1,'15:35:02','Renson','Sibo',0),(613151,1,NULL,'2022-10-11 00:00:00','present',85,1,0,'15:36:23','Angela','Wambui',0),(615451,1,NULL,'2022-10-11 00:00:00','present',54,1,0,'15:39:45','Stephen','Muita',0),(617307,1,NULL,'2022-10-11 00:00:00','present',5,1,0,'15:42:32','Erick','Kiboi',0),(630528,1,NULL,'2022-10-11 00:00:00','present',122,1,1,'15:53:36','Kevin','Wafula',0),(633006,1,NULL,'2022-10-11 00:00:00','present',122,1,0,'15:55:22','Kevin','Wafula',0),(647048,1,NULL,'2022-10-11 00:00:00','present',115,1,1,'16:08:14','Purity','Wanjiku',0),(647288,1,NULL,'2022-10-11 00:00:00','present',54,1,1,'16:08:28','Stephen','Muita',0),(648014,1,NULL,'2022-10-11 00:00:00','present',112,1,1,'16:09:10','Lazarus','Masika',0),(649844,1,NULL,'2022-10-11 00:00:00','present',115,1,0,'16:10:22','Purity','Wanjiku',0),(660668,1,NULL,'2022-10-11 00:00:00','present',95,1,1,'16:17:41','Faith','Kanyari',0),(662776,1,NULL,'2022-10-11 00:00:00','present',95,1,0,'16:19:05','Faith','Kanyari',0),(687276,1,NULL,'2022-10-11 00:00:00','present',78,1,0,'16:30:28','Renson','Sibo',0),(701388,1,NULL,'2022-10-11 00:00:00','present',78,1,1,'16:36:25','Renson','Sibo',0),(707611,1,NULL,'2022-10-11 00:00:00','present',95,1,1,'16:39:00','Faith','Kanyari',0),(709147,1,NULL,'2022-10-11 00:00:00','present',54,1,0,'16:39:47','Stephen','Muita',0),(726820,1,NULL,'2022-10-11 00:00:00','present',95,1,0,'16:49:32','Faith','Kanyari',0),(738260,1,NULL,'2022-10-11 00:00:00','present',54,1,1,'16:55:41','Stephen','Muita',0),(743500,1,NULL,'2022-10-11 00:00:00','present',16,1,1,'16:57:48','Damaris','Mwende',0),(756040,1,NULL,'2022-10-11 00:00:00','present',95,1,1,'17:02:47','Faith','Kanyari',0),(767079,1,NULL,'2022-10-11 00:00:00','present',16,1,0,'17:06:28','Damaris','Mwende',0),(776057,1,NULL,'2022-10-11 00:00:00','present',109,1,1,'17:09:31','Moses','Mwaniki',0),(779837,1,NULL,'2022-10-11 00:00:00','present',78,1,0,'17:10:59','Renson','Sibo',0),(781741,1,NULL,'2022-10-11 00:00:00','present',78,1,1,'17:11:54','Renson','Sibo',0),(784618,1,NULL,'2022-10-11 00:00:00','present',110,1,1,'17:13:24','Ndolo','Mutisya',0),(786688,1,NULL,'2022-10-11 00:00:00','present',109,1,0,'17:14:29','Moses','Mwaniki',0),(800588,1,NULL,'2022-10-11 00:00:00','present',85,1,1,'17:21:38','Angela','Wambui',0),(836988,1,NULL,'2022-10-11 00:00:00','present',16,1,1,'17:44:30','Damaris','Mwende',0),(854754,1,NULL,'2022-10-11 00:00:00','present',109,1,1,'17:51:19','Moses','Mwaniki',0),(855180,1,NULL,'2022-10-11 00:00:00','present',110,1,0,'17:51:27','Ndolo','Mutisya',0),(856181,1,NULL,'2022-10-11 00:00:00','present',109,1,0,'17:51:42','Moses','Mwaniki',0),(856469,1,NULL,'2022-10-11 00:00:00','present',110,1,1,'17:51:47','Ndolo','Mutisya',0),(880394,1,NULL,'2022-10-11 00:00:00','present',111,1,1,'17:59:26','Carol','Wanjiku',0),(913098,1,NULL,'2022-10-11 00:00:00','present',121,1,1,'18:14:51','Edward','Macharia',0),(916626,1,NULL,'2022-10-11 00:00:00','present',121,1,0,'18:16:55','Edward','Macharia',0),(926098,1,NULL,'2022-10-11 00:00:00','present',122,1,1,'18:23:18','Kevin','Wafula',0),(926396,1,NULL,'2022-10-11 00:00:00','present',123,1,1,'18:23:38','Steve','Kiawa',0),(928196,1,NULL,'2022-10-11 00:00:00','present',123,1,0,'18:25:40','Steve','Kiawa',0),(928498,1,NULL,'2022-10-11 00:00:00','present',122,1,0,'18:26:01','Kevin','Wafula',0),(928954,1,NULL,'2022-10-11 00:00:00','present',122,1,1,'18:26:30','Kevin','Wafula',0),(930331,1,NULL,'2022-10-11 00:00:00','present',122,1,0,'18:28:00','Kevin','Wafula',0),(933719,1,NULL,'2022-10-11 00:00:00','present',123,1,1,'18:31:45','Steve','Kiawa',0),(933874,1,NULL,'2022-10-11 00:00:00','present',122,1,1,'18:31:51','Kevin','Wafula',0),(940270,1,NULL,'2022-10-11 00:00:00','present',115,1,1,'18:54:01','Purity','Wanjiku',0),(946707,1,NULL,'2022-10-11 00:00:00','present',109,1,1,'21:04:18','Moses','Mwaniki',0),(946708,1,NULL,'2022-10-11 00:00:00','present',121,1,1,'19:36:11','Edward','Macharia',0),(946709,1,NULL,'2022-10-11 00:00:00','present',112,1,0,'20:03:10','Lazarus','Masika',0),(946710,1,NULL,'2022-10-11 00:00:00','present',112,1,1,'20:09:58','Lazarus','Masika',0),(955562,1,NULL,'2022-10-12 00:00:00','present',109,1,0,'06:34:43','Moses','Mwaniki',0),(955563,1,NULL,'2022-10-12 00:00:00','present',109,1,1,'07:00:14','Moses','Mwaniki',0),(955564,1,NULL,'2022-10-12 00:00:00','present',109,1,0,'07:00:25','Moses','Mwaniki',0),(956834,1,NULL,'2022-10-12 00:00:00','present',109,1,1,'07:54:53','Moses','Mwaniki',0),(956882,1,NULL,'2022-10-12 00:00:00','present',109,1,0,'07:55:58','Moses','Mwaniki',0),(956922,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'07:56:38','Angela','Wambui',0),(956994,1,NULL,'2022-10-12 00:00:00','present',85,1,1,'07:57:38','Angela','Wambui',0),(957120,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'07:59:04','Angela','Wambui',0),(957264,1,NULL,'2022-10-12 00:00:00','present',111,1,0,'08:00:35','Carol','Wanjiku',0),(957498,1,NULL,'2022-10-12 00:00:00','present',95,1,0,'08:02:42','Faith','Kanyari',0),(958318,1,NULL,'2022-10-12 00:00:00','present',16,1,0,'08:09:43','Damaris','Mwende',0),(958769,1,NULL,'2022-10-12 00:00:00','present',78,1,0,'08:18:54','Renson','Sibo',0),(958770,1,NULL,'2022-10-12 00:00:00','present',78,1,1,'08:18:59','Renson','Sibo',0),(958771,1,NULL,'2022-10-12 00:00:00','present',78,1,0,'08:19:34','Renson','Sibo',0),(958772,1,NULL,'2022-10-12 00:00:00','present',54,1,0,'08:23:00','Stephen','Muita',0),(958773,1,NULL,'2022-10-12 00:00:00','present',78,1,1,'08:25:21','Renson','Sibo',0),(958774,1,NULL,'2022-10-12 00:00:00','present',54,1,1,'08:38:51','Stephen','Muita',0),(958775,1,NULL,'2022-10-12 00:00:00','present',109,1,1,'08:44:34','Moses','Mwaniki',0),(958776,1,NULL,'2022-10-12 00:00:00','present',109,1,0,'08:44:41','Moses','Mwaniki',0),(958777,1,NULL,'2022-10-12 00:00:00','present',110,1,0,'08:45:28','Ndolo','Mutisya',0),(958778,1,NULL,'2022-10-12 00:00:00','present',122,1,0,'08:46:32','Kevin','Wafula',0),(958779,1,NULL,'2022-10-12 00:00:00','present',122,1,1,'08:47:22','Kevin','Wafula',0),(958780,1,NULL,'2022-10-12 00:00:00','present',122,1,0,'08:48:15','Kevin','Wafula',0),(958907,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'09:59:36','Angela','Wambui',0),(958908,1,NULL,'2022-10-12 00:00:00','present',78,1,0,'08:52:24','Renson','Sibo',0),(958909,1,NULL,'2022-10-12 00:00:00','present',54,1,0,'08:54:25','Stephen','Muita',0),(958910,1,NULL,'2022-10-12 00:00:00','present',78,1,1,'09:15:45','Renson','Sibo',0),(958911,1,NULL,'2022-10-12 00:00:00','present',109,1,0,'08:58:29','Moses','Mwaniki',0),(958912,1,NULL,'2022-10-12 00:00:00','present',109,1,1,'08:58:54','Moses','Mwaniki',0),(958913,1,NULL,'2022-10-12 00:00:00','present',109,1,0,'08:59:06','Moses','Mwaniki',0),(958914,1,NULL,'2022-10-12 00:00:00','present',110,1,1,'09:02:15','Ndolo','Mutisya',0),(958915,1,NULL,'2022-10-12 00:00:00','present',115,1,0,'09:08:55','Purity','Wanjiku',0),(958916,1,NULL,'2022-10-12 00:00:00','present',110,1,0,'09:09:57','Ndolo','Mutisya',0),(958917,1,NULL,'2022-10-12 00:00:00','present',110,1,1,'09:38:04','Ndolo','Mutisya',0),(958918,1,NULL,'2022-10-12 00:00:00','present',111,1,1,'10:01:03','Carol','Wanjiku',0),(958919,1,NULL,'2022-10-12 00:00:00','present',111,1,0,'10:04:15','Carol','Wanjiku',0),(958920,1,NULL,'2022-10-12 00:00:00','present',122,1,1,'08:53:36','Kevin','Wafula',0),(958921,1,NULL,'2022-10-12 00:00:00','present',121,1,0,'09:26:14','Edward','Macharia',0),(958922,1,NULL,'2022-10-12 00:00:00','present',112,1,0,'09:28:08','Lazarus','Masika',0),(958923,1,NULL,'2022-10-12 00:00:00','present',122,1,0,'10:02:50','Kevin','Wafula',0),(958924,1,NULL,'2022-10-12 00:00:00','present',123,1,0,'10:08:28','Steve','Kiawa',0),(959251,1,NULL,'2022-10-12 00:00:00','present',122,1,1,'10:12:59','Kevin','Wafula',0),(961583,1,NULL,'2022-10-12 00:00:00','present',95,1,1,'10:23:22','Faith','Kanyari',0),(961584,1,NULL,'2022-10-12 00:00:00','present',95,1,0,'10:24:56','Faith','Kanyari',0),(961585,1,NULL,'2022-10-12 00:00:00','present',16,1,1,'10:46:58','Damaris','Mwende',0),(961586,1,NULL,'2022-10-12 00:00:00','present',16,1,0,'10:49:24','Damaris','Mwende',0),(961587,1,NULL,'2022-10-12 00:00:00','present',16,1,1,'11:31:01','Damaris','Mwende',0),(961588,1,NULL,'2022-10-12 00:00:00','present',16,1,0,'11:31:21','Damaris','Mwende',0),(961589,1,NULL,'2022-10-12 00:00:00','present',95,1,1,'11:46:33','Faith','Kanyari',0),(961590,1,NULL,'2022-10-12 00:00:00','present',95,1,0,'11:46:40','Faith','Kanyari',0),(961591,1,NULL,'2022-10-12 00:00:00','present',95,1,1,'12:15:30','Faith','Kanyari',0),(961592,1,NULL,'2022-10-12 00:00:00','present',95,1,0,'12:17:02','Faith','Kanyari',0),(961593,1,NULL,'2022-10-12 00:00:00','present',16,1,1,'12:34:22','Damaris','Mwende',0),(961594,1,NULL,'2022-10-12 00:00:00','present',16,1,0,'12:36:11','Damaris','Mwende',0),(961595,1,NULL,'2022-10-12 00:00:00','present',95,1,1,'14:25:17','Faith','Kanyari',0),(961596,1,NULL,'2022-10-12 00:00:00','present',95,1,0,'14:26:36','Faith','Kanyari',0),(961597,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'11:37:05','Angela','Wambui',0),(961598,1,NULL,'2022-10-12 00:00:00','present',85,1,1,'12:25:18','Angela','Wambui',0),(961599,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'12:28:28','Angela','Wambui',0),(961600,1,NULL,'2022-10-12 00:00:00','present',85,1,1,'13:56:40','Angela','Wambui',0),(961601,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'13:58:05','Angela','Wambui',0),(961602,1,NULL,'2022-10-12 00:00:00','present',85,1,1,'14:14:27','Angela','Wambui',0),(961603,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'14:15:52','Angela','Wambui',0),(961604,1,NULL,'2022-10-12 00:00:00','present',85,1,1,'14:23:09','Angela','Wambui',0),(961605,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'14:23:39','Angela','Wambui',0),(961606,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'14:28:21','Angela','Wambui',0),(961607,1,NULL,'2022-10-12 00:00:00','present',85,1,1,'15:08:49','Angela','Wambui',0),(961608,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'15:10:05','Angela','Wambui',0),(961609,1,NULL,'2022-10-12 00:00:00','present',54,1,1,'11:17:59','Stephen','Muita',0),(961610,1,NULL,'2022-10-12 00:00:00','present',54,1,0,'11:57:13','Stephen','Muita',0),(961611,1,NULL,'2022-10-12 00:00:00','present',54,1,1,'12:34:12','Stephen','Muita',0),(961612,1,NULL,'2022-10-12 00:00:00','present',78,1,0,'14:37:55','Renson','Sibo',0),(961613,1,NULL,'2022-10-12 00:00:00','present',111,1,1,'11:55:30','Carol','Wanjiku',0),(961614,1,NULL,'2022-10-12 00:00:00','present',111,1,0,'11:57:32','Carol','Wanjiku',0),(961615,1,NULL,'2022-10-12 00:00:00','present',111,1,1,'12:53:42','Carol','Wanjiku',0),(961616,1,NULL,'2022-10-12 00:00:00','present',111,1,0,'12:55:38','Carol','Wanjiku',0),(961617,1,NULL,'2022-10-12 00:00:00','present',109,1,1,'13:11:08','Moses','Mwaniki',0),(961618,1,NULL,'2022-10-12 00:00:00','present',109,1,0,'14:00:27','Moses','Mwaniki',0),(961619,1,NULL,'2022-10-12 00:00:00','present',115,1,1,'14:02:07','Purity','Wanjiku',0),(961620,1,NULL,'2022-10-12 00:00:00','present',109,1,1,'14:02:25','Moses','Mwaniki',0),(961621,1,NULL,'2022-10-12 00:00:00','present',109,1,0,'14:07:45','Moses','Mwaniki',0),(961622,1,NULL,'2022-10-12 00:00:00','present',115,1,0,'14:08:11','Purity','Wanjiku',0),(961623,1,NULL,'2022-10-12 00:00:00','present',111,1,1,'14:12:12','Carol','Wanjiku',0),(961624,1,NULL,'2022-10-12 00:00:00','present',111,1,0,'14:13:51','Carol','Wanjiku',0),(961625,1,NULL,'2022-10-12 00:00:00','present',111,1,1,'14:19:18','Carol','Wanjiku',0),(961626,1,NULL,'2022-10-12 00:00:00','present',115,1,1,'14:33:55','Purity','Wanjiku',0),(961627,1,NULL,'2022-10-12 00:00:00','present',111,1,0,'14:36:58','Carol','Wanjiku',0),(961628,1,NULL,'2022-10-12 00:00:00','present',115,1,0,'14:37:47','Purity','Wanjiku',0),(961629,1,NULL,'2022-10-12 00:00:00','present',121,1,1,'10:43:32','Edward','Macharia',0),(961630,1,NULL,'2022-10-12 00:00:00','present',112,1,1,'10:54:02','Lazarus','Masika',0),(961631,1,NULL,'2022-10-12 00:00:00','present',121,1,0,'10:54:54','Edward','Macharia',0),(961632,1,NULL,'2022-10-12 00:00:00','present',122,1,0,'11:06:16','Kevin','Wafula',0),(961633,1,NULL,'2022-10-12 00:00:00','present',122,1,1,'11:09:46','Kevin','Wafula',0),(961634,1,NULL,'2022-10-12 00:00:00','present',121,1,1,'11:28:43','Edward','Macharia',0),(961635,1,NULL,'2022-10-12 00:00:00','present',121,1,0,'11:29:42','Edward','Macharia',0),(961636,1,NULL,'2022-10-12 00:00:00','present',112,1,0,'12:14:27','Lazarus','Masika',0),(961637,1,NULL,'2022-10-12 00:00:00','present',112,1,1,'13:11:12','Lazarus','Masika',0),(961638,1,NULL,'2022-10-12 00:00:00','present',121,1,1,'13:13:39','Edward','Macharia',0),(961639,1,NULL,'2022-10-12 00:00:00','present',121,1,0,'14:11:29','Edward','Macharia',0),(961640,1,NULL,'2022-10-12 00:00:00','present',112,1,0,'14:39:57','Lazarus','Masika',0),(961641,1,NULL,'2022-10-12 00:00:00','present',123,1,1,'11:41:25','Steve','Kiawa',0),(961642,1,NULL,'2022-10-12 00:00:00','present',123,1,0,'11:44:18','Steve','Kiawa',0),(961643,1,NULL,'2022-10-12 00:00:00','present',123,1,1,'11:44:28','Steve','Kiawa',0),(961644,1,NULL,'2022-10-12 00:00:00','present',123,1,0,'11:53:00','Steve','Kiawa',0),(961645,1,NULL,'2022-10-12 00:00:00','present',123,1,1,'14:11:50','Steve','Kiawa',0),(961646,1,NULL,'2022-10-12 00:00:00','present',123,1,0,'14:13:03','Steve','Kiawa',0),(961803,1,NULL,'2022-10-12 00:00:00','present',85,1,1,'15:31:37','Angela','Wambui',0),(961914,1,NULL,'2022-10-12 00:00:00','present',85,1,0,'15:34:10','Angela','Wambui',0),(961915,1,NULL,'2022-10-12 00:00:00','present',107,1,0,'15:41:49','Amina','Ali',0),(961916,1,NULL,'2022-10-12 00:00:00','present',109,1,1,'15:49:29','Moses','Mwaniki',0),(967158,1,NULL,'2022-10-12 00:00:00','present',78,1,1,'15:57:20','Renson','Sibo',0),(971298,1,NULL,'2022-10-12 00:00:00','present',78,1,0,'16:03:22','Renson','Sibo',0),(980578,1,NULL,'2022-10-12 00:00:00','present',111,1,1,'16:16:41','Carol','Wanjiku',0),(981865,1,NULL,'2022-10-12 00:00:00','present',111,1,0,'16:18:29','Carol','Wanjiku',0),(982101,1,NULL,'2022-10-12 00:00:00','present',107,1,1,'16:18:56','Amina','Ali',0),(983767,1,NULL,'2022-10-12 00:00:00','present',107,1,0,'16:21:09','Amina','Ali',0),(986647,1,NULL,'2022-10-12 00:00:00','present',95,1,1,'16:25:13','Faith','Kanyari',0),(987736,1,NULL,'2022-10-12 00:00:00','present',95,1,0,'16:26:42','Faith','Kanyari',0),(988468,1,NULL,'2022-10-12 00:00:00','present',107,1,1,'16:27:49','Amina','Ali',0),(998062,1,NULL,'2022-10-12 00:00:00','present',107,1,0,'16:40:45','Amina','Ali',0),(1002402,1,NULL,'2022-10-12 00:00:00','present',123,1,1,'16:46:40','Steve','Kiawa',0),(1003527,1,NULL,'2022-10-12 00:00:00','present',123,1,0,'16:48:08','Steve','Kiawa',0),(1005795,1,NULL,'2022-10-12 00:00:00','present',95,1,1,'17:02:00','Faith','Kanyari',0),(1005796,1,NULL,'2022-10-12 00:00:00','present',78,1,1,'17:00:52','Renson','Sibo',0),(1005797,1,NULL,'2022-10-12 00:00:00','present',112,1,1,'17:00:49','Lazarus','Masika',0),(1011213,1,NULL,'2022-10-12 00:00:00','present',85,1,1,'17:13:47','Angela','Wambui',0),(1015373,1,NULL,'2022-10-12 00:00:00','present',111,1,1,'17:19:04','Carol','Wanjiku',0),(1021399,1,NULL,'2022-10-12 00:00:00','present',115,1,1,'17:26:49','Purity','Wanjiku',0),(1022587,1,NULL,'2022-10-12 00:00:00','present',16,1,1,'17:28:14','Damaris','Mwende',0),(1023252,1,NULL,'2022-10-12 00:00:00','present',115,1,0,'17:29:05','Purity','Wanjiku',0),(1024190,1,NULL,'2022-10-12 00:00:00','present',115,1,1,'17:30:15','Purity','Wanjiku',0),(1051055,1,NULL,'2022-10-12 00:00:00','present',123,1,1,'18:03:47','Steve','Kiawa',0),(1051871,1,NULL,'2022-10-12 00:00:00','present',123,1,0,'18:04:41','Steve','Kiawa',0),(1057351,1,NULL,'2022-10-13 00:00:00','present',95,1,0,'08:05:29','Faith','Kanyari',0),(1057352,1,NULL,'2022-10-13 00:00:00','present',95,1,1,'08:09:07','Faith','Kanyari',0),(1057353,1,NULL,'2022-10-13 00:00:00','present',95,1,0,'08:09:14','Faith','Kanyari',0),(1057354,1,NULL,'2022-10-13 00:00:00','present',16,1,0,'08:13:14','Damaris','Mwende',0),(1057355,1,NULL,'2022-10-13 00:00:00','present',85,1,0,'08:00:40','Angela','Wambui',0),(1057356,1,NULL,'2022-10-13 00:00:00','present',78,1,0,'07:56:45','Renson','Sibo',0),(1057357,1,NULL,'2022-10-13 00:00:00','present',78,1,1,'08:11:01','Renson','Sibo',0),(1057358,1,NULL,'2022-10-13 00:00:00','present',78,1,0,'08:11:08','Renson','Sibo',0),(1057359,1,NULL,'2022-10-13 00:00:00','present',54,1,0,'08:26:54','Stephen','Muita',0),(1057360,1,NULL,'2022-10-13 00:00:00','present',78,1,1,'08:29:48','Renson','Sibo',0),(1057361,1,NULL,'2022-10-13 00:00:00','present',78,1,0,'09:32:24','Renson','Sibo',0),(1057362,1,NULL,'2022-10-13 00:00:00','present',107,1,0,'06:51:52','Amina','Ali',0),(1057363,1,NULL,'2022-10-13 00:00:00','present',107,1,1,'07:10:33','Amina','Ali',0),(1057364,1,NULL,'2022-10-13 00:00:00','present',107,1,1,'09:00:33','Amina','Ali',0),(1057365,1,NULL,'2022-10-13 00:00:00','present',107,1,0,'09:16:38','Amina','Ali',0),(1057366,1,NULL,'2022-10-13 00:00:00','present',110,1,0,'07:48:09','Ndolo','Mutisya',0),(1057367,1,NULL,'2022-10-13 00:00:00','present',111,1,0,'07:54:37','Carol','Wanjiku',0),(1057368,1,NULL,'2022-10-13 00:00:00','present',115,1,0,'09:11:07','Purity','Wanjiku',0),(1057369,1,NULL,'2022-10-13 00:00:00','present',111,1,1,'09:11:16','Carol','Wanjiku',0),(1057370,1,NULL,'2022-10-13 00:00:00','present',111,1,0,'09:12:58','Carol','Wanjiku',0),(1057371,1,NULL,'2022-10-13 00:00:00','present',112,1,0,'08:29:14','Lazarus','Masika',0),(1057372,1,NULL,'2022-10-13 00:00:00','present',112,1,1,'08:35:24','Lazarus','Masika',0),(1057373,1,NULL,'2022-10-13 00:00:00','present',112,1,0,'08:35:34','Lazarus','Masika',0),(1057374,1,NULL,'2022-10-13 00:00:00','present',112,1,1,'08:40:17','Lazarus','Masika',0),(1057375,1,NULL,'2022-10-13 00:00:00','present',112,1,0,'08:40:23','Lazarus','Masika',0),(1057376,1,NULL,'2022-10-13 00:00:00','present',112,1,1,'08:46:35','Lazarus','Masika',0),(1057377,1,NULL,'2022-10-13 00:00:00','present',122,1,0,'09:29:08','Kevin','Wafula',0),(1057378,1,NULL,'2022-10-13 00:00:00','present',112,1,0,'09:32:26','Lazarus','Masika',0),(1057786,1,NULL,'2022-10-13 00:00:00','present',78,1,1,'09:35:49','Renson','Sibo',0),(1057816,1,NULL,'2022-10-13 00:00:00','present',112,1,1,'09:35:53','Lazarus','Masika',0),(1058281,1,NULL,'2022-10-13 00:00:00','present',16,1,1,'09:38:25','Damaris','Mwende',0),(1058473,1,NULL,'2022-10-13 00:00:00','present',16,1,0,'09:42:38','Damaris','Mwende',0),(1060453,1,NULL,'2022-10-13 00:00:00','present',85,1,1,'09:57:10','Angela','Wambui',0),(1060793,1,NULL,'2022-10-13 00:00:00','present',85,1,0,'09:58:57','Angela','Wambui',0),(1061458,1,NULL,'2022-10-13 00:00:00','present',54,1,1,'10:03:03','Stephen','Muita',0),(1061530,1,NULL,'2022-10-13 00:00:00','present',121,1,0,'10:05:56','Edward','Macharia',0),(1061863,1,NULL,'2022-10-13 00:00:00','present',123,1,0,'10:09:48','Steve','Kiawa',0),(1061939,1,NULL,'2022-10-13 00:00:00','present',16,1,1,'10:10:01','Damaris','Mwende',0),(1062095,1,NULL,'2022-10-13 00:00:00','present',122,1,1,'10:10:46','Kevin','Wafula',0),(1062695,1,NULL,'2022-10-13 00:00:00','present',16,1,0,'10:12:20','Damaris','Mwende',0),(1062859,1,NULL,'2022-10-13 00:00:00','present',122,1,0,'10:13:02','Kevin','Wafula',0),(1064119,1,NULL,'2022-10-13 00:00:00','present',54,1,0,'10:18:02','Stephen','Muita',0),(1064721,1,NULL,'2022-10-13 00:00:00','present',123,1,1,'10:27:27','Steve','Kiawa',0),(1065161,1,NULL,'2022-10-13 00:00:00','present',123,1,0,'10:37:24','Steve','Kiawa',0),(1066241,1,NULL,'2022-10-13 00:00:00','present',122,1,1,'11:01:17','Kevin','Wafula',0),(1066287,1,NULL,'2022-10-13 00:00:00','present',122,1,0,'11:02:45','Kevin','Wafula',0),(1066851,1,NULL,'2022-10-13 00:00:00','present',123,1,1,'11:14:10','Steve','Kiawa',0),(1066899,1,NULL,'2022-10-13 00:00:00','present',123,1,0,'11:15:29','Steve','Kiawa',0),(1066948,1,NULL,'2022-10-13 00:00:00','present',111,1,1,'11:16:00','Carol','Wanjiku',0),(1067968,1,NULL,'2022-10-13 00:00:00','present',111,1,0,'11:20:15','Carol','Wanjiku',0),(1078212,1,NULL,'2022-10-13 00:00:00','present',112,1,1,'11:46:06','Lazarus','Masika',0),(1078424,1,NULL,'2022-10-13 00:00:00','present',95,1,1,'11:46:46','Faith','Kanyari',0),(1079180,1,NULL,'2022-10-13 00:00:00','present',95,1,0,'11:48:41','Faith','Kanyari',0),(1083580,1,NULL,'2022-10-13 00:00:00','present',85,1,1,'12:13:07','Angela','Wambui',0),(1083581,1,NULL,'2022-10-13 00:00:00','present',85,1,0,'12:13:27','Angela','Wambui',0),(1083582,1,NULL,'2022-10-13 00:00:00','present',85,1,1,'12:13:55','Angela','Wambui',0),(1083754,1,NULL,'2022-10-13 00:00:00','present',122,1,1,'12:16:26','Kevin','Wafula',0),(1083931,1,NULL,'2022-10-13 00:00:00','present',85,1,0,'12:19:41','Angela','Wambui',0),(1084771,1,NULL,'2022-10-13 00:00:00','present',122,1,0,'12:33:21','Kevin','Wafula',0),(1085564,1,NULL,'2022-10-13 00:00:00','present',122,1,1,'12:46:47','Kevin','Wafula',0),(1085812,1,NULL,'2022-10-13 00:00:00','present',122,1,0,'12:50:07','Kevin','Wafula',0),(1086631,1,NULL,'2022-10-13 00:00:00','present',122,1,1,'13:03:28','Kevin','Wafula',0),(1086759,1,NULL,'2022-10-13 00:00:00','present',122,1,0,'13:05:37','Kevin','Wafula',0),(1087344,1,NULL,'2022-10-13 00:00:00','present',107,1,1,'13:14:29','Amina','Ali',0),(1087542,1,NULL,'2022-10-13 00:00:00','present',121,1,1,'13:17:10','Edward','Macharia',0),(1087743,1,NULL,'2022-10-13 00:00:00','present',107,1,0,'13:20:26','Amina','Ali',0),(1089171,1,NULL,'2022-10-13 00:00:00','present',54,1,1,'13:41:32','Stephen','Muita',0),(1089240,1,NULL,'2022-10-13 00:00:00','present',16,1,1,'13:42:17','Damaris','Mwende',0),(1089241,1,NULL,'2022-10-13 00:00:00','present',54,1,0,'13:42:06','Stephen','Muita',0),(1089311,1,NULL,'2022-10-13 00:00:00','present',78,1,0,'13:43:13','Renson','Sibo',0),(1089312,1,NULL,'2022-10-13 00:00:00','present',112,1,0,'13:43:16','Lazarus','Masika',0),(1089384,1,NULL,'2022-10-13 00:00:00','present',16,1,0,'13:44:24','Damaris','Mwende',0),(1089532,1,NULL,'2022-10-13 00:00:00','present',85,1,1,'13:46:16','Angela','Wambui',0),(1089607,1,NULL,'2022-10-13 00:00:00','present',85,1,0,'13:47:55','Angela','Wambui',0),(1090595,1,NULL,'2022-10-13 00:00:00','present',115,1,1,'14:00:19','Purity','Wanjiku',0),(1090826,1,NULL,'2022-10-13 00:00:00','present',115,1,0,'14:03:27','Purity','Wanjiku',0),(1090904,1,NULL,'2022-10-13 00:00:00','present',122,1,1,'14:04:59','Kevin','Wafula',0),(1091457,1,NULL,'2022-10-13 00:00:00','present',122,1,0,'14:11:42','Kevin','Wafula',0),(1091857,1,NULL,'2022-10-13 00:00:00','present',110,1,1,'14:16:56','Ndolo','Mutisya',0),(1092829,1,NULL,'2022-10-13 00:00:00','present',78,1,1,'14:28:56','Renson','Sibo',0),(1092911,1,NULL,'2022-10-13 00:00:00','present',85,1,1,'14:29:58','Angela','Wambui',0),(1092994,1,NULL,'2022-10-13 00:00:00','present',78,1,0,'14:30:50','Renson','Sibo',0),(1092995,1,NULL,'2022-10-13 00:00:00','present',110,1,0,'14:30:37','Ndolo','Mutisya',0),(1093079,1,NULL,'2022-10-13 00:00:00','present',85,1,0,'14:31:45','Angela','Wambui',0),(1093939,1,NULL,'2022-10-13 00:00:00','present',121,1,0,'14:41:39','Edward','Macharia',0),(1094113,1,NULL,'2022-10-13 00:00:00','present',122,1,1,'14:43:39','Kevin','Wafula',0),(1094377,1,NULL,'2022-10-13 00:00:00','present',109,1,0,'14:46:38','Moses','Mwaniki',0),(1094466,1,NULL,'2022-10-13 00:00:00','present',54,1,1,'14:47:38','Stephen','Muita',0),(1094556,1,NULL,'2022-10-13 00:00:00','present',54,1,0,'14:48:52','Stephen','Muita',0),(1096012,1,NULL,'2022-10-13 00:00:00','present',122,1,0,'15:04:26','Kevin','Wafula',0),(1096380,1,NULL,'2022-10-13 00:00:00','present',85,1,1,'15:08:06','Angela','Wambui',0),(1096473,1,NULL,'2022-10-13 00:00:00','present',85,1,0,'15:09:22','Angela','Wambui',0),(1096849,1,NULL,'2022-10-13 00:00:00','present',123,1,1,'15:13:53','Steve','Kiawa',0),(1097039,1,NULL,'2022-10-13 00:00:00','present',123,1,0,'15:15:37','Steve','Kiawa',0),(1097231,1,NULL,'2022-10-13 00:00:00','present',95,1,1,'15:17:30','Faith','Kanyari',0),(1097328,1,NULL,'2022-10-13 00:00:00','present',95,1,0,'15:18:30','Faith','Kanyari',0),(1097426,1,NULL,'2022-10-13 00:00:00','present',78,1,1,'15:19:49','Renson','Sibo',0),(1097427,1,NULL,'2022-10-13 00:00:00','present',78,1,0,'15:19:58','Renson','Sibo',0),(1097428,1,NULL,'2022-10-13 00:00:00','present',112,1,1,'15:19:41','Lazarus','Masika',0),(1097527,1,NULL,'2022-10-13 00:00:00','present',78,1,1,'15:20:02','Renson','Sibo',0),(1099771,1,NULL,'2022-10-13 00:00:00','present',16,1,1,'15:53:14','Damaris','Mwende',0),(1099772,1,NULL,'2022-10-13 00:00:00','present',16,1,0,'16:02:17','Damaris','Mwende',0),(1099773,1,NULL,'2022-10-13 00:00:00','present',85,1,1,'16:04:43','Angela','Wambui',0),(1099774,1,NULL,'2022-10-13 00:00:00','present',85,1,0,'16:06:45','Angela','Wambui',0),(1099775,1,NULL,'2022-10-13 00:00:00','present',78,1,0,'16:17:54','Renson','Sibo',0),(1099776,1,NULL,'2022-10-13 00:00:00','present',107,1,1,'15:50:00','Amina','Ali',0),(1099777,1,NULL,'2022-10-13 00:00:00','present',112,1,0,'15:59:57','Lazarus','Masika',0),(1099778,1,NULL,'2022-10-13 00:00:00','present',122,1,0,'16:24:25','Kevin','Wafula',0),(1100548,1,NULL,'2022-10-13 00:00:00','present',78,1,1,'16:43:15','Renson','Sibo',0),(1100549,1,NULL,'2022-10-13 00:00:00','present',112,1,1,'16:43:07','Lazarus','Masika',0),(1105633,1,NULL,'2022-10-13 00:00:00','present',95,1,1,'16:50:43','Faith','Kanyari',0),(1106317,1,NULL,'2022-10-13 00:00:00','present',95,1,0,'16:51:46','Faith','Kanyari',0),(1107927,1,NULL,'2022-10-13 00:00:00','present',95,1,1,'17:01:57','Faith','Kanyari',0),(1107928,1,NULL,'2022-10-13 00:00:00','present',16,1,1,'17:02:53','Damaris','Mwende',0),(1108278,1,NULL,'2022-10-13 00:00:00','present',16,1,0,'17:07:24','Damaris','Mwende',0),(1108279,1,NULL,'2022-10-13 00:00:00','present',16,1,1,'17:44:20','Damaris','Mwende',0),(1108280,1,NULL,'2022-10-13 00:00:00','present',85,1,1,'17:32:31','Angela','Wambui',0),(1108281,1,NULL,'2022-10-13 00:00:00','present',85,1,0,'17:33:05','Angela','Wambui',0),(1108282,1,NULL,'2022-10-13 00:00:00','present',85,1,1,'17:34:28','Angela','Wambui',0),(1108283,1,NULL,'2022-10-13 00:00:00','present',54,1,1,'19:09:00','Stephen','Muita',0),(1108284,1,NULL,'2022-10-13 00:00:00','present',110,1,1,'17:10:28','Ndolo','Mutisya',0),(1108285,1,NULL,'2022-10-13 00:00:00','present',111,1,1,'17:14:04','Carol','Wanjiku',0),(1108286,1,NULL,'2022-10-13 00:00:00','present',109,1,1,'17:17:42','Moses','Mwaniki',0),(1108287,1,NULL,'2022-10-13 00:00:00','present',109,1,0,'17:19:22','Moses','Mwaniki',0),(1108288,1,NULL,'2022-10-13 00:00:00','present',115,1,1,'18:02:57','Purity','Wanjiku',0),(1108289,1,NULL,'2022-10-13 00:00:00','present',109,1,1,'19:09:07','Moses','Mwaniki',0),(1108290,1,NULL,'2022-10-13 00:00:00','present',109,1,0,'19:10:05','Moses','Mwaniki',0),(1108291,1,NULL,'2022-10-13 00:00:00','present',122,1,1,'17:05:08','Kevin','Wafula',0),(1108292,1,NULL,'2022-10-13 00:00:00','present',121,1,1,'18:20:27','Edward','Macharia',0),(1108293,1,NULL,'2022-10-13 00:00:00','present',121,1,0,'18:27:29','Edward','Macharia',0),(1108294,1,NULL,'2022-10-13 00:00:00','present',121,1,1,'19:08:15','Edward','Macharia',0),(1108295,1,NULL,'2022-10-13 00:00:00','present',123,1,1,'17:33:42','Steve','Kiawa',0),(1108296,1,NULL,'2022-10-13 00:00:00','present',123,1,0,'17:35:10','Steve','Kiawa',0),(1108297,1,NULL,'2022-10-13 00:00:00','present',123,1,1,'18:05:08','Steve','Kiawa',0),(1111292,1,NULL,'2022-10-14 00:00:00','present',95,1,0,'08:02:03','Faith','Kanyari',0),(1111293,1,NULL,'2022-10-14 00:00:00','present',16,1,0,'08:15:17','Damaris','Mwende',0),(1111294,1,NULL,'2022-10-14 00:00:00','present',95,1,1,'09:42:39','Faith','Kanyari',0),(1111295,1,NULL,'2022-10-14 00:00:00','present',95,1,0,'09:44:19','Faith','Kanyari',0),(1111296,1,NULL,'2022-10-14 00:00:00','present',85,1,0,'07:07:28','Angela','Wambui',0),(1111297,1,NULL,'2022-10-14 00:00:00','present',85,1,1,'07:08:31','Angela','Wambui',0),(1111298,1,NULL,'2022-10-14 00:00:00','present',85,1,0,'07:10:40','Angela','Wambui',0),(1111299,1,NULL,'2022-10-14 00:00:00','present',85,1,1,'07:20:56','Angela','Wambui',0),(1111300,1,NULL,'2022-10-14 00:00:00','present',85,1,0,'07:21:13','Angela','Wambui',0),(1111301,1,NULL,'2022-10-14 00:00:00','present',78,1,0,'08:09:30','Renson','Sibo',0),(1111302,1,NULL,'2022-10-14 00:00:00','present',78,1,1,'08:33:40','Renson','Sibo',0),(1111303,1,NULL,'2022-10-14 00:00:00','present',78,1,0,'08:33:48','Renson','Sibo',0),(1111304,1,NULL,'2022-10-14 00:00:00','present',54,1,0,'09:04:05','Stephen','Muita',0),(1111305,1,NULL,'2022-10-14 00:00:00','present',78,1,1,'09:21:18','Renson','Sibo',0),(1111306,1,NULL,'2022-10-14 00:00:00','present',110,1,0,'07:33:19','Ndolo','Mutisya',0),(1111307,1,NULL,'2022-10-14 00:00:00','present',111,1,0,'07:59:30','Carol','Wanjiku',0),(1111308,1,NULL,'2022-10-14 00:00:00','present',115,1,0,'09:09:31','Purity','Wanjiku',0),(1111309,1,NULL,'2022-10-14 00:00:00','present',112,1,0,'08:34:50','Lazarus','Masika',0),(1111310,1,NULL,'2022-10-14 00:00:00','present',112,1,1,'08:38:35','Lazarus','Masika',0),(1111311,1,NULL,'2022-10-14 00:00:00','present',112,1,0,'08:38:45','Lazarus','Masika',0),(1111312,1,NULL,'2022-10-14 00:00:00','present',112,1,1,'08:39:53','Lazarus','Masika',0),(1111313,1,NULL,'2022-10-14 00:00:00','present',112,1,0,'08:40:02','Lazarus','Masika',0),(1111314,1,NULL,'2022-10-14 00:00:00','present',112,1,1,'09:21:25','Lazarus','Masika',0),(1111315,1,NULL,'2022-10-14 00:00:00','present',121,1,0,'09:45:13','Edward','Macharia',0),(1111316,1,NULL,'2022-10-14 00:00:00','present',123,1,0,'10:21:33','Steve','Kiawa',0),(1112517,1,NULL,'2022-10-14 00:00:00','present',85,1,1,'10:53:52','Angela','Wambui',0),(1112518,1,NULL,'2022-10-14 00:00:00','present',78,1,0,'10:49:48','Renson','Sibo',0),(1112519,1,NULL,'2022-10-14 00:00:00','present',111,1,1,'10:40:42','Carol','Wanjiku',0),(1112520,1,NULL,'2022-10-14 00:00:00','present',111,1,0,'10:42:53','Carol','Wanjiku',0),(1112521,1,NULL,'2022-10-14 00:00:00','present',111,1,1,'10:43:35','Carol','Wanjiku',0),(1112522,1,NULL,'2022-10-14 00:00:00','present',111,1,0,'10:45:02','Carol','Wanjiku',0),(1112523,1,NULL,'2022-10-14 00:00:00','present',115,1,1,'10:53:06','Purity','Wanjiku',0),(1112524,1,NULL,'2022-10-14 00:00:00','present',115,1,0,'10:53:15','Purity','Wanjiku',0),(1112525,1,NULL,'2022-10-14 00:00:00','present',112,1,0,'10:49:57','Lazarus','Masika',0),(1112526,1,NULL,'2022-10-14 00:00:00','present',123,1,1,'10:35:40','Steve','Kiawa',0),(1112527,1,NULL,'2022-10-14 00:00:00','present',123,1,0,'10:42:45','Steve','Kiawa',0),(1112841,1,NULL,'2022-10-14 00:00:00','present',85,1,0,'10:56:04','Angela','Wambui',0),(1121795,1,NULL,'2022-10-14 00:00:00','present',115,1,1,'11:36:33','Purity','Wanjiku',0),(1121833,1,NULL,'2022-10-14 00:00:00','present',110,1,1,'11:36:40','Ndolo','Mutisya',0),(1122067,1,NULL,'2022-10-14 00:00:00','present',110,1,0,'11:37:43','Ndolo','Mutisya',0),(1122467,1,NULL,'2022-10-14 00:00:00','present',115,1,0,'11:39:30','Purity','Wanjiku',0),(1132840,1,NULL,'2022-10-14 00:00:00','present',110,1,1,'12:21:56','Ndolo','Mutisya',0),(1134226,1,NULL,'2022-10-14 00:00:00','present',95,1,1,'12:27:25','Faith','Kanyari',0),(1134742,1,NULL,'2022-10-14 00:00:00','present',95,1,0,'12:29:35','Faith','Kanyari',0),(1135446,1,NULL,'2022-10-14 00:00:00','present',78,1,1,'12:32:15','Renson','Sibo',0),(1135491,1,NULL,'2022-10-14 00:00:00','present',112,1,1,'12:32:24','Lazarus','Masika',0),(1135859,1,NULL,'2022-10-14 00:00:00','present',85,1,1,'12:33:46','Angela','Wambui',0),(1137363,1,NULL,'2022-10-14 00:00:00','present',85,1,0,'12:39:01','Angela','Wambui',0),(1140003,1,NULL,'2022-10-14 00:00:00','present',121,1,1,'12:48:12','Edward','Macharia',0),(1142649,1,NULL,'2022-10-14 00:00:00','present',110,1,0,'12:57:21','Ndolo','Mutisya',0),(1148399,1,NULL,'2022-10-14 00:00:00','present',123,1,1,'13:16:33','Steve','Kiawa',0),(1148909,1,NULL,'2022-10-14 00:00:00','present',95,1,1,'13:18:19','Faith','Kanyari',0),(1150313,1,NULL,'2022-10-14 00:00:00','present',78,1,0,'13:22:45','Renson','Sibo',0),(1150314,1,NULL,'2022-10-14 00:00:00','present',112,1,0,'13:22:42','Lazarus','Masika',0),(1150421,1,NULL,'2022-10-14 00:00:00','present',95,1,0,'13:23:07','Faith','Kanyari',0),(1151906,1,NULL,'2022-10-14 00:00:00','present',115,1,1,'13:27:31','Purity','Wanjiku',0),(1153026,1,NULL,'2022-10-14 00:00:00','present',115,1,0,'13:30:52','Purity','Wanjiku',0),(1159752,1,NULL,'2022-10-14 00:00:00','present',121,1,0,'13:50:36','Edward','Macharia',0),(1160796,1,NULL,'2022-10-14 00:00:00','present',123,1,0,'13:53:42','Steve','Kiawa',0),(1162979,1,NULL,'2022-10-14 00:00:00','present',16,1,1,'13:59:52','Damaris','Mwende',0),(1163819,1,NULL,'2022-10-14 00:00:00','present',16,1,0,'14:02:13','Damaris','Mwende',0),(1168089,1,NULL,'2022-10-14 00:00:00','present',109,1,0,'14:13:52','Moses','Mwaniki',0),(1185821,1,NULL,'2022-10-14 00:00:00','present',95,1,1,'15:01:45','Faith','Kanyari',0),(1186388,1,NULL,'2022-10-14 00:00:00','present',95,1,0,'15:03:18','Faith','Kanyari',0),(1188692,1,NULL,'2022-10-14 00:00:00','present',85,1,1,'15:09:11','Angela','Wambui',0),(1193762,1,NULL,'2022-10-14 00:00:00','present',115,1,1,'15:22:20','Purity','Wanjiku',0),(1194686,1,NULL,'2022-10-14 00:00:00','present',111,1,1,'15:24:46','Carol','Wanjiku',0),(1194753,1,NULL,'2022-10-14 00:00:00','present',115,1,0,'15:24:55','Purity','Wanjiku',0),(1195297,1,NULL,'2022-10-14 00:00:00','present',111,1,0,'15:26:16','Carol','Wanjiku',0),(1200403,1,NULL,'2022-10-14 00:00:00','present',112,1,1,'15:38:43','Lazarus','Masika',0),(1200613,1,NULL,'2022-10-14 00:00:00','present',78,1,1,'15:39:07','Renson','Sibo',0),(1200897,1,NULL,'2022-10-14 00:00:00','present',112,1,0,'15:39:48','Lazarus','Masika',0),(1201473,1,NULL,'2022-10-14 00:00:00','present',78,1,0,'15:41:18','Renson','Sibo',0),(1210671,1,NULL,'2022-10-14 00:00:00','present',95,1,1,'16:02:25','Faith','Kanyari',0),(1215259,1,NULL,'2022-10-14 00:00:00','present',78,1,1,'16:12:38','Renson','Sibo',0),(1224184,1,NULL,'2022-10-14 00:00:00','present',123,1,1,'16:32:40','Steve','Kiawa',0),(1224792,1,NULL,'2022-10-14 00:00:00','present',123,1,0,'16:34:08','Steve','Kiawa',0),(1225947,1,NULL,'2022-10-14 00:00:00','present',111,1,1,'16:36:36','Carol','Wanjiku',0),(1226025,1,NULL,'2022-10-14 00:00:00','present',78,1,0,'16:36:46','Renson','Sibo',0),(1229106,1,NULL,'2022-10-14 00:00:00','present',111,1,0,'16:43:16','Carol','Wanjiku',0),(1231426,1,NULL,'2022-10-14 00:00:00','present',110,1,1,'16:48:13','Ndolo','Mutisya',0),(1231993,1,NULL,'2022-10-14 00:00:00','present',110,1,0,'16:49:25','Ndolo','Mutisya',0),(1233797,1,NULL,'2022-10-14 00:00:00','present',16,1,1,'17:24:15','Damaris','Mwende',0),(1233798,1,NULL,'2022-10-14 00:00:00','present',78,1,1,'17:01:58','Renson','Sibo',0),(1233799,1,NULL,'2022-10-14 00:00:00','present',54,1,1,'17:03:54','Stephen','Muita',0),(1233800,1,NULL,'2022-10-14 00:00:00','present',111,1,1,'17:05:55','Carol','Wanjiku',0),(1233801,1,NULL,'2022-10-14 00:00:00','present',110,1,1,'17:24:05','Ndolo','Mutisya',0),(1233802,1,NULL,'2022-10-14 00:00:00','present',115,1,1,'17:24:30','Purity','Wanjiku',0),(1233803,1,NULL,'2022-10-14 00:00:00','present',112,1,1,'17:02:08','Lazarus','Masika',0),(1238158,1,NULL,'2022-10-14 00:00:00','present',109,1,1,'18:25:23','Moses','Mwaniki',0),(1238159,1,NULL,'2022-10-14 00:00:00','present',109,1,0,'18:26:20','Moses','Mwaniki',0),(1238160,1,NULL,'2022-10-14 00:00:00','present',121,1,1,'18:26:12','Edward','Macharia',0),(1238161,1,NULL,'2022-10-14 00:00:00','present',123,1,1,'18:17:01','Steve','Kiawa',0),(1241971,1,NULL,'2022-10-15 00:00:00','present',95,1,0,'08:09:36','Faith','Kanyari',0),(1241972,1,NULL,'2022-10-15 00:00:00','present',16,1,0,'08:17:10','Damaris','Mwende',0),(1241973,1,NULL,'2022-10-15 00:00:00','present',16,1,1,'08:55:03','Damaris','Mwende',0),(1241974,1,NULL,'2022-10-15 00:00:00','present',16,1,0,'08:58:43','Damaris','Mwende',0),(1241975,1,NULL,'2022-10-15 00:00:00','present',95,1,1,'10:26:04','Faith','Kanyari',0),(1241976,1,NULL,'2022-10-15 00:00:00','present',95,1,0,'10:27:34','Faith','Kanyari',0),(1241977,1,NULL,'2022-10-15 00:00:00','present',85,1,0,'07:11:22','Angela','Wambui',0),(1241978,1,NULL,'2022-10-15 00:00:00','present',85,1,1,'09:32:14','Angela','Wambui',0),(1241979,1,NULL,'2022-10-15 00:00:00','present',85,1,0,'09:42:04','Angela','Wambui',0),(1241980,1,NULL,'2022-10-15 00:00:00','present',85,1,1,'09:48:19','Angela','Wambui',0),(1241981,1,NULL,'2022-10-15 00:00:00','present',85,1,0,'09:48:39','Angela','Wambui',0),(1241982,1,NULL,'2022-10-15 00:00:00','present',78,1,0,'08:19:03','Renson','Sibo',0),(1241983,1,NULL,'2022-10-15 00:00:00','present',78,1,1,'08:19:42','Renson','Sibo',0),(1241984,1,NULL,'2022-10-15 00:00:00','present',78,1,0,'08:20:35','Renson','Sibo',0),(1241985,1,NULL,'2022-10-15 00:00:00','present',78,1,1,'08:56:03','Renson','Sibo',0),(1241986,1,NULL,'2022-10-15 00:00:00','present',54,1,0,'08:59:48','Stephen','Muita',0),(1241987,1,NULL,'2022-10-15 00:00:00','present',78,1,0,'09:31:00','Renson','Sibo',0),(1241988,1,NULL,'2022-10-15 00:00:00','present',111,1,0,'07:59:19','Carol','Wanjiku',0),(1241989,1,NULL,'2022-10-15 00:00:00','present',110,1,0,'08:17:05','Ndolo','Mutisya',0),(1241990,1,NULL,'2022-10-15 00:00:00','present',115,1,0,'08:46:56','Purity','Wanjiku',0),(1241991,1,NULL,'2022-10-15 00:00:00','present',111,1,1,'09:10:57','Carol','Wanjiku',0),(1241992,1,NULL,'2022-10-15 00:00:00','present',111,1,0,'09:23:18','Carol','Wanjiku',0),(1241993,1,NULL,'2022-10-15 00:00:00','present',115,1,1,'10:02:19','Purity','Wanjiku',0),(1241994,1,NULL,'2022-10-15 00:00:00','present',115,1,0,'10:07:48','Purity','Wanjiku',0),(1241995,1,NULL,'2022-10-15 00:00:00','present',112,1,0,'08:33:43','Lazarus','Masika',0),(1241996,1,NULL,'2022-10-15 00:00:00','present',112,1,1,'08:56:10','Lazarus','Masika',0),(1241997,1,NULL,'2022-10-15 00:00:00','present',112,1,0,'09:26:25','Lazarus','Masika',0),(1241998,1,NULL,'2022-10-15 00:00:00','present',121,1,0,'09:35:40','Edward','Macharia',0),(1245415,1,NULL,'2022-10-15 00:00:00','present',85,1,1,'11:10:57','Angela','Wambui',0),(1245734,1,NULL,'2022-10-15 00:00:00','present',85,1,0,'11:12:45','Angela','Wambui',0),(1246364,1,NULL,'2022-10-15 00:00:00','present',16,1,1,'11:17:45','Damaris','Mwende',0),(1246891,1,NULL,'2022-10-15 00:00:00','present',16,1,0,'11:20:44','Damaris','Mwende',0),(1250475,1,NULL,'2022-10-15 00:00:00','present',110,1,1,'11:39:42','Ndolo','Mutisya',0),(1250805,1,NULL,'2022-10-15 00:00:00','present',110,1,0,'11:41:22','Ndolo','Mutisya',0),(1251349,1,NULL,'2022-10-15 00:00:00','present',111,1,1,'11:44:09','Carol','Wanjiku',0),(1251734,1,NULL,'2022-10-15 00:00:00','present',111,1,0,'11:46:00','Carol','Wanjiku',0),(1252382,1,NULL,'2022-10-15 00:00:00','present',115,1,1,'11:49:07','Purity','Wanjiku',0),(1252900,1,NULL,'2022-10-15 00:00:00','present',115,1,0,'11:51:24','Purity','Wanjiku',0),(1253242,1,NULL,'2022-10-15 00:00:00','present',112,1,1,'11:52:52','Lazarus','Masika',0),(1253320,1,NULL,'2022-10-15 00:00:00','present',54,1,1,'11:53:12','Stephen','Muita',0),(1253560,1,NULL,'2022-10-15 00:00:00','present',54,1,0,'11:54:12','Stephen','Muita',0),(1254011,1,NULL,'2022-10-15 00:00:00','present',112,1,0,'11:56:06','Lazarus','Masika',0),(1260983,1,NULL,'2022-10-15 00:00:00','present',16,1,1,'12:23:43','Damaris','Mwende',0),(1261413,1,NULL,'2022-10-15 00:00:00','present',115,1,1,'12:25:16','Purity','Wanjiku',0),(1261545,1,NULL,'2022-10-15 00:00:00','present',16,1,0,'12:25:53','Damaris','Mwende',0),(1262310,1,NULL,'2022-10-15 00:00:00','present',121,1,1,'12:28:39','Edward','Macharia',0),(1263690,1,NULL,'2022-10-15 00:00:00','present',95,1,1,'12:33:38','Faith','Kanyari',0),(1264019,1,NULL,'2022-10-15 00:00:00','present',95,1,0,'12:34:52','Faith','Kanyari',0),(1265507,1,NULL,'2022-10-15 00:00:00','present',85,1,1,'12:40:04','Angela','Wambui',0),(1266193,1,NULL,'2022-10-15 00:00:00','present',85,1,0,'12:42:26','Angela','Wambui',0),(1270393,1,NULL,'2022-10-15 00:00:00','present',111,1,1,'12:56:21','Carol','Wanjiku',0),(1270903,1,NULL,'2022-10-15 00:00:00','present',111,1,0,'12:58:01','Carol','Wanjiku',0),(1271995,1,NULL,'2022-10-15 00:00:00','present',78,1,1,'13:01:39','Renson','Sibo',0),(1272048,1,NULL,'2022-10-15 00:00:00','present',112,1,1,'13:01:46','Lazarus','Masika',0),(1273290,1,NULL,'2022-10-15 00:00:00','present',111,1,1,'13:05:35','Carol','Wanjiku',0),(1273345,1,NULL,'2022-10-15 00:00:00','present',54,1,1,'13:05:42','Stephen','Muita',0),(1274409,1,NULL,'2022-10-15 00:00:00','present',110,1,1,'13:08:51','Ndolo','Mutisya',0),(1274466,1,NULL,'2022-10-15 00:00:00','present',110,1,0,'13:09:08','Ndolo','Mutisya',0),(1274872,1,NULL,'2022-10-15 00:00:00','present',110,1,1,'13:10:12','Ndolo','Mutisya',0),(1275462,1,NULL,'2022-10-15 00:00:00','present',95,1,1,'13:11:57','Faith','Kanyari',0),(1278582,1,NULL,'2022-10-15 00:00:00','present',16,1,1,'13:20:39','Damaris','Mwende',0),(1278643,1,NULL,'2022-10-15 00:00:00','present',16,1,0,'13:20:46','Damaris','Mwende',0),(1279449,1,NULL,'2022-10-15 00:00:00','present',16,1,1,'13:22:56','Damaris','Mwende',0),(1280583,1,NULL,'2022-10-15 00:00:00','present',121,1,0,'13:26:00','Edward','Macharia',0),(1295559,1,NULL,'2022-10-15 00:00:00','present',85,1,1,'14:05:03','Angela','Wambui',0),(1296274,1,NULL,'2022-10-15 00:00:00','present',85,1,0,'14:06:55','Angela','Wambui',0),(1301158,1,NULL,'2022-10-15 00:00:00','present',107,1,1,'16:34:02','Amina','Ali',0),(1301159,1,NULL,'2022-10-15 00:00:00','present',107,1,0,'16:41:37','Amina','Ali',0),(1301160,1,NULL,'2022-10-15 00:00:00','present',121,1,1,'14:50:17','Edward','Macharia',0),(1345107,1,NULL,'2022-10-16 00:00:00','present',107,1,0,'06:57:06','Amina','Ali',0),(1345108,1,NULL,'2022-10-16 00:00:00','present',107,1,1,'10:18:05','Amina','Ali',0),(1345109,1,NULL,'2022-10-16 00:00:00','present',107,1,0,'10:23:51','Amina','Ali',0),(1345110,1,NULL,'2022-10-16 00:00:00','present',107,1,1,'14:02:17','Amina','Ali',0),(1345111,1,NULL,'2022-10-16 00:00:00','present',107,1,0,'14:06:06','Amina','Ali',0),(1345327,1,NULL,'2022-10-16 00:00:00','present',109,1,0,'14:32:35','Moses','Mwaniki',0),(1345363,1,NULL,'2022-10-16 00:00:00','present',109,1,1,'14:34:10','Moses','Mwaniki',0),(1345384,1,NULL,'2022-10-16 00:00:00','present',109,1,0,'14:35:23','Moses','Mwaniki',0),(1346696,1,NULL,'2022-10-17 00:00:00','present',107,1,0,'06:59:43','Amina','Ali',0),(1346697,1,NULL,'2022-10-17 00:00:00','present',122,1,0,'07:17:58','Kevin','Wafula',0),(1346698,1,NULL,'2022-10-17 00:00:00','present',122,1,1,'07:18:23','Kevin','Wafula',0),(1346699,1,NULL,'2022-10-17 00:00:00','present',122,1,0,'07:18:34','Kevin','Wafula',0),(1347032,1,NULL,'2022-10-17 00:00:00','present',115,1,0,'07:47:24','Purity','Wanjiku',0),(1347082,1,NULL,'2022-10-17 00:00:00','present',115,1,1,'07:57:00','Purity','Wanjiku',0),(1347088,1,NULL,'2022-10-17 00:00:00','present',115,1,0,'07:58:04','Purity','Wanjiku',0),(1347109,1,NULL,'2022-10-17 00:00:00','present',85,1,0,'08:00:51','Angela','Wambui',0),(1347181,1,NULL,'2022-10-17 00:00:00','present',111,1,0,'08:10:19','Carol','Wanjiku',0),(1347226,1,NULL,'2022-10-17 00:00:00','present',16,1,0,'08:14:44','Damaris','Mwende',0),(1347227,1,NULL,'2022-10-17 00:00:00','present',110,1,0,'08:15:35','Ndolo','Mutisya',0),(1347248,1,NULL,'2022-10-17 00:00:00','present',78,1,0,'08:17:27','Renson','Sibo',0),(1347416,1,NULL,'2022-10-17 00:00:00','present',95,1,0,'08:30:52','Faith','Kanyari',0),(1347417,1,NULL,'2022-10-17 00:00:00','present',112,1,0,'08:31:21','Lazarus','Masika',0),(1347514,1,NULL,'2022-10-17 00:00:00','present',112,1,1,'08:38:23','Lazarus','Masika',0),(1347515,1,NULL,'2022-10-17 00:00:00','present',112,1,0,'08:38:33','Lazarus','Masika',0),(1347562,1,NULL,'2022-10-17 00:00:00','present',54,1,0,'08:40:55','Stephen','Muita',0),(1347613,1,NULL,'2022-10-17 00:00:00','present',54,1,1,'08:44:21','Stephen','Muita',0),(1347614,1,NULL,'2022-10-17 00:00:00','present',54,1,0,'08:44:31','Stephen','Muita',0),(1347689,1,NULL,'2022-10-17 00:00:00','present',78,1,1,'08:48:14','Renson','Sibo',0),(1347690,1,NULL,'2022-10-17 00:00:00','present',78,1,0,'08:48:24','Renson','Sibo',0),(1347710,1,NULL,'2022-10-17 00:00:00','present',16,1,1,'08:48:45','Damaris','Mwende',0),(1347798,1,NULL,'2022-10-17 00:00:00','present',16,1,0,'08:53:12','Damaris','Mwende',0),(1347913,1,NULL,'2022-10-17 00:00:00','present',54,1,1,'08:58:20','Stephen','Muita',0),(1348081,1,NULL,'2022-10-17 00:00:00','present',78,1,1,'09:05:34','Renson','Sibo',0),(1348106,1,NULL,'2022-10-17 00:00:00','present',112,1,1,'09:05:54','Lazarus','Masika',0),(1349941,1,NULL,'2022-10-17 00:00:00','present',78,1,0,'09:45:00','Renson','Sibo',0),(1349942,1,NULL,'2022-10-17 00:00:00','present',112,1,0,'09:44:57','Lazarus','Masika',0),(1350260,1,NULL,'2022-10-17 00:00:00','present',121,1,0,'09:55:56','Edward','Macharia',0),(1350500,1,NULL,'2022-10-17 00:00:00','present',95,1,1,'10:04:10','Faith','Kanyari',0),(1350593,1,NULL,'2022-10-17 00:00:00','present',95,1,0,'10:06:45','Faith','Kanyari',0),(1350913,1,NULL,'2022-10-17 00:00:00','present',85,1,1,'10:16:51','Angela','Wambui',0),(1350914,1,NULL,'2022-10-17 00:00:00','present',85,1,0,'10:17:32','Angela','Wambui',0),(1350947,1,NULL,'2022-10-17 00:00:00','present',85,1,1,'10:18:21','Angela','Wambui',0),(1351017,1,NULL,'2022-10-17 00:00:00','present',85,1,0,'10:20:06','Angela','Wambui',0),(1351665,1,NULL,'2022-10-17 00:00:00','present',54,1,1,'10:38:13','Stephen','Muita',0),(1351739,1,NULL,'2022-10-17 00:00:00','present',54,1,0,'10:39:41','Stephen','Muita',0),(1351815,1,NULL,'2022-10-17 00:00:00','present',107,1,1,'10:42:08','Amina','Ali',0),(1352244,1,NULL,'2022-10-17 00:00:00','present',107,1,0,'10:53:23','Amina','Ali',0),(1352844,1,NULL,'2022-10-17 00:00:00','present',110,1,1,'11:08:34','Ndolo','Mutisya',0),(1353213,1,NULL,'2022-10-17 00:00:00','present',110,1,0,'11:16:43','Ndolo','Mutisya',0),(1354557,1,NULL,'2022-10-17 00:00:00','present',111,1,1,'11:36:02','Carol','Wanjiku',0),(1355245,1,NULL,'2022-10-17 00:00:00','present',111,1,0,'11:39:20','Carol','Wanjiku',0),(1355333,1,NULL,'2022-10-17 00:00:00','present',112,1,1,'11:41:36','Lazarus','Masika',0),(1355378,1,NULL,'2022-10-17 00:00:00','present',112,1,0,'11:41:47','Lazarus','Masika',0),(1355470,1,NULL,'2022-10-17 00:00:00','present',16,1,1,'11:44:13','Damaris','Mwende',0),(1356081,1,NULL,'2022-10-17 00:00:00','present',16,1,0,'11:46:25','Damaris','Mwende',0),(1357425,1,NULL,'2022-10-17 00:00:00','present',78,1,1,'11:58:54','Renson','Sibo',0),(1357523,1,NULL,'2022-10-17 00:00:00','present',54,1,1,'12:01:05','Stephen','Muita',0),(1357673,1,NULL,'2022-10-17 00:00:00','present',54,1,0,'12:03:56','Stephen','Muita',0),(1357724,1,NULL,'2022-10-17 00:00:00','present',5,1,1,'12:05:15','Erick','Kiboi',0),(1357725,1,NULL,'2022-10-17 00:00:00','present',5,1,0,'12:05:23','Erick','Kiboi',0),(1357726,1,NULL,'2022-10-17 00:00:00','present',112,1,1,'12:05:08','Lazarus','Masika',0),(1357832,1,NULL,'2022-10-17 00:00:00','present',5,1,1,'12:07:33','Erick','Kiboi',0),(1357887,1,NULL,'2022-10-17 00:00:00','present',5,1,0,'12:07:39','Erick','Kiboi',0),(1358391,1,NULL,'2022-10-17 00:00:00','present',110,1,1,'12:16:58','Ndolo','Mutisya',0),(1358790,1,NULL,'2022-10-17 00:00:00','present',121,1,1,'12:24:06','Edward','Macharia',0),(1358848,1,NULL,'2022-10-17 00:00:00','present',121,1,0,'12:25:21','Edward','Macharia',0),(1359084,1,NULL,'2022-10-17 00:00:00','present',110,1,0,'12:29:22','Ndolo','Mutisya',0),(1359384,1,NULL,'2022-10-17 00:00:00','present',54,1,1,'12:34:35','Stephen','Muita',0),(1359445,1,NULL,'2022-10-17 00:00:00','present',85,1,1,'12:35:34','Angela','Wambui',0),(1359631,1,NULL,'2022-10-17 00:00:00','present',85,1,0,'12:38:20','Angela','Wambui',0),(1362340,1,NULL,'2022-10-17 00:00:00','present',95,1,1,'13:05:21','Faith','Kanyari',0),(1362341,1,NULL,'2022-10-17 00:00:00','present',16,1,1,'13:50:09','Damaris','Mwende',0),(1362342,1,NULL,'2022-10-17 00:00:00','present',95,1,0,'13:57:46','Faith','Kanyari',0),(1362343,1,NULL,'2022-10-17 00:00:00','present',5,1,1,'13:30:57','Erick','Kiboi',0),(1362344,1,NULL,'2022-10-17 00:00:00','present',5,1,0,'13:31:05','Erick','Kiboi',0),(1362345,1,NULL,'2022-10-17 00:00:00','present',78,1,0,'13:18:38','Renson','Sibo',0),(1362346,1,NULL,'2022-10-17 00:00:00','present',54,1,0,'13:18:42','Stephen','Muita',0),(1362347,1,NULL,'2022-10-17 00:00:00','present',78,1,1,'13:53:52','Renson','Sibo',0),(1362348,1,NULL,'2022-10-17 00:00:00','present',107,1,1,'13:22:04','Amina','Ali',0),(1362349,1,NULL,'2022-10-17 00:00:00','present',107,1,0,'13:28:14','Amina','Ali',0),(1362350,1,NULL,'2022-10-17 00:00:00','present',107,1,1,'13:36:51','Amina','Ali',0),(1362351,1,NULL,'2022-10-17 00:00:00','present',107,1,0,'13:50:59','Amina','Ali',0),(1362352,1,NULL,'2022-10-17 00:00:00','present',107,1,1,'14:02:18','Amina','Ali',0),(1362353,1,NULL,'2022-10-17 00:00:00','present',107,1,0,'14:02:34','Amina','Ali',0),(1362354,1,NULL,'2022-10-17 00:00:00','present',115,1,1,'13:11:11','Purity','Wanjiku',0),(1362355,1,NULL,'2022-10-17 00:00:00','present',115,1,0,'13:14:18','Purity','Wanjiku',0),(1362356,1,NULL,'2022-10-17 00:00:00','present',111,1,1,'13:40:41','Carol','Wanjiku',0),(1362357,1,NULL,'2022-10-17 00:00:00','present',111,1,0,'13:42:33','Carol','Wanjiku',0),(1362358,1,NULL,'2022-10-17 00:00:00','present',122,1,0,'13:10:43','Kevin','Wafula',0),(1362359,1,NULL,'2022-10-17 00:00:00','present',121,1,1,'13:14:59','Edward','Macharia',0),(1362360,1,NULL,'2022-10-17 00:00:00','present',112,1,0,'14:02:24','Lazarus','Masika',0),(1362361,1,NULL,'2022-10-17 00:00:00','present',112,1,1,'14:02:30','Lazarus','Masika',0),(1363458,1,NULL,'2022-10-17 00:00:00','present',121,1,0,'14:06:22','Edward','Macharia',0),(1364763,1,NULL,'2022-10-17 00:00:00','present',111,1,1,'14:08:53','Carol','Wanjiku',0),(1366083,1,NULL,'2022-10-17 00:00:00','present',85,1,1,'14:16:09','Angela','Wambui',0),(1366350,1,NULL,'2022-10-17 00:00:00','present',85,1,0,'14:18:54','Angela','Wambui',0),(1366980,1,NULL,'2022-10-17 00:00:00','present',16,1,0,'14:25:41','Damaris','Mwende',0),(1366981,1,NULL,'2022-10-17 00:00:00','present',109,1,0,'14:25:52','Moses','Mwaniki',0),(1366982,1,NULL,'2022-10-17 00:00:00','present',109,1,1,'14:26:06','Moses','Mwaniki',0),(1366983,1,NULL,'2022-10-17 00:00:00','present',109,1,0,'14:26:08','Moses','Mwaniki',0),(1368014,1,NULL,'2022-10-17 00:00:00','present',78,1,0,'14:59:59','Renson','Sibo',0),(1368015,1,NULL,'2022-10-17 00:00:00','present',107,1,1,'15:31:58','Amina','Ali',0),(1368016,1,NULL,'2022-10-17 00:00:00','present',109,1,1,'14:37:02','Moses','Mwaniki',0),(1368017,1,NULL,'2022-10-17 00:00:00','present',111,1,0,'14:49:29','Carol','Wanjiku',0),(1368018,1,NULL,'2022-10-17 00:00:00','present',109,1,0,'14:59:17','Moses','Mwaniki',0),(1368019,1,NULL,'2022-10-17 00:00:00','present',112,1,0,'15:00:04','Lazarus','Masika',0),(1371914,1,NULL,'2022-10-17 00:00:00','present',54,1,1,'15:40:38','Stephen','Muita',0),(1372419,1,NULL,'2022-10-17 00:00:00','present',78,1,1,'15:41:35','Renson','Sibo',0),(1372521,1,NULL,'2022-10-17 00:00:00','present',54,1,0,'15:42:12','Stephen','Muita',0),(1372522,1,NULL,'2022-10-17 00:00:00','present',54,1,1,'15:42:36','Stephen','Muita',0),(1372625,1,NULL,'2022-10-17 00:00:00','present',54,1,0,'15:42:47','Stephen','Muita',0),(1380080,1,NULL,'2022-10-17 00:00:00','present',54,1,1,'16:08:24','Stephen','Muita',0),(1383472,1,NULL,'2022-10-17 00:00:00','present',85,1,1,'16:15:11','Angela','Wambui',0),(1383473,1,NULL,'2022-10-17 00:00:00','present',85,1,0,'16:15:22','Angela','Wambui',0),(1383904,1,NULL,'2022-10-17 00:00:00','present',78,1,0,'16:18:39','Renson','Sibo',0),(1388373,1,NULL,'2022-10-17 00:00:00','present',54,1,0,'16:35:35','Stephen','Muita',0),(1389363,1,NULL,'2022-10-17 00:00:00','present',16,1,1,'16:44:18','Damaris','Mwende',0),(1390032,1,NULL,'2022-10-17 00:00:00','present',95,1,1,'16:49:49','Faith','Kanyari',0),(1390258,1,NULL,'2022-10-17 00:00:00','present',95,1,0,'16:52:13','Faith','Kanyari',0),(1391398,1,NULL,'2022-10-17 00:00:00','present',110,1,1,'17:02:33','Ndolo','Mutisya',0),(1391628,1,NULL,'2022-10-17 00:00:00','present',54,1,1,'17:03:17','Stephen','Muita',0),(1391744,1,NULL,'2022-10-17 00:00:00','present',95,1,1,'17:04:08','Faith','Kanyari',0),(1392563,1,NULL,'2022-10-17 00:00:00','present',78,1,1,'17:10:54','Renson','Sibo',0),(1392564,1,NULL,'2022-10-17 00:00:00','present',115,1,1,'17:11:02','Purity','Wanjiku',0),(1392565,1,NULL,'2022-10-17 00:00:00','present',112,1,1,'17:11:07','Lazarus','Masika',0),(1396043,1,NULL,'2022-10-17 00:00:00','present',111,1,1,'17:16:01','Carol','Wanjiku',0),(1396527,1,NULL,'2022-10-17 00:00:00','present',16,1,1,'17:16:46','Damaris','Mwende',0),(1435323,1,NULL,'2022-10-17 00:00:00','present',85,1,1,'18:05:53','Angela','Wambui',0),(1435815,1,NULL,'2022-10-17 00:00:00','present',85,1,0,'18:06:33','Angela','Wambui',0),(1436187,1,NULL,'2022-10-17 00:00:00','present',85,1,1,'18:06:56','Angela','Wambui',0),(1439187,1,NULL,'2022-10-17 00:00:00','present',85,1,0,'18:10:28','Angela','Wambui',0),(1495257,1,NULL,'2022-10-17 00:00:00','present',85,1,1,'19:01:20','Angela','Wambui',0),(1570695,1,NULL,'2022-10-17 00:00:00','present',122,1,1,'19:40:35','Kevin','Wafula',0),(1610759,1,NULL,'2022-10-17 00:00:00','present',121,1,1,'20:20:35','Edward','Macharia',0),(1655651,1,NULL,'2022-10-17 00:00:00','present',109,1,1,'21:06:38','Moses','Mwaniki',0),(1656561,1,NULL,'2022-10-17 00:00:00','present',109,1,0,'21:07:35','Moses','Mwaniki',0),(1661539,1,NULL,'2022-10-17 00:00:00','present',5,1,1,'21:13:48','Erick','Kiboi',0),(1661671,1,NULL,'2022-10-17 00:00:00','present',109,1,1,'21:13:57','Moses','Mwaniki',0),(1793208,1,NULL,'2022-10-18 00:00:00','present',109,1,0,'06:40:56','Moses','Mwaniki',0),(1793439,1,NULL,'2022-10-18 00:00:00','present',109,1,1,'07:19:23','Moses','Mwaniki',0),(1793441,1,NULL,'2022-10-18 00:00:00','present',109,1,0,'07:19:31','Moses','Mwaniki',0),(1794191,1,NULL,'2022-10-18 00:00:00','present',95,1,0,'08:01:17','Faith','Kanyari',0),(1794319,1,NULL,'2022-10-18 00:00:00','present',122,1,0,'08:06:37','Kevin','Wafula',0),(1794354,1,NULL,'2022-10-18 00:00:00','present',85,1,0,'08:07:55','Angela','Wambui',0),(1794396,1,NULL,'2022-10-18 00:00:00','present',16,1,0,'08:09:09','Damaris','Mwende',0),(1794397,1,NULL,'2022-10-18 00:00:00','present',111,1,0,'08:08:54','Carol','Wanjiku',0),(1794398,1,NULL,'2022-10-18 00:00:00','present',110,1,0,'08:09:04','Ndolo','Mutisya',0),(1794919,1,NULL,'2022-10-18 00:00:00','present',112,1,0,'08:36:47','Lazarus','Masika',0),(1794963,1,NULL,'2022-10-18 00:00:00','present',78,1,0,'08:40:54','Renson','Sibo',0),(1794964,1,NULL,'2022-10-18 00:00:00','present',78,1,1,'08:41:01','Renson','Sibo',0),(1794976,1,NULL,'2022-10-18 00:00:00','present',78,1,0,'08:41:47','Renson','Sibo',0),(1794977,1,NULL,'2022-10-18 00:00:00','present',115,1,0,'08:42:17','Purity','Wanjiku',0),(1795711,1,NULL,'2022-10-18 00:00:00','present',78,1,1,'08:50:16','Renson','Sibo',0),(1795727,1,NULL,'2022-10-18 00:00:00','present',78,1,0,'08:50:25','Renson','Sibo',0),(1796016,1,NULL,'2022-10-18 00:00:00','present',78,1,1,'08:54:32','Renson','Sibo',0),(1796034,1,NULL,'2022-10-18 00:00:00','present',78,1,0,'08:54:42','Renson','Sibo',0),(1796053,1,NULL,'2022-10-18 00:00:00','present',111,1,1,'08:55:58','Carol','Wanjiku',0),(1796093,1,NULL,'2022-10-18 00:00:00','present',111,1,0,'08:57:46','Carol','Wanjiku',0),(1796177,1,NULL,'2022-10-18 00:00:00','present',78,1,1,'09:02:11','Renson','Sibo',0),(1796178,1,NULL,'2022-10-18 00:00:00','present',109,1,1,'09:02:18','Moses','Mwaniki',0),(1797017,1,NULL,'2022-10-18 00:00:00','present',109,1,0,'09:11:39','Moses','Mwaniki',0),(1797192,1,NULL,'2022-10-18 00:00:00','present',122,1,1,'09:18:04','Kevin','Wafula',0),(1797296,1,NULL,'2022-10-18 00:00:00','present',122,1,0,'09:22:29','Kevin','Wafula',0),(1797377,1,NULL,'2022-10-18 00:00:00','present',122,1,1,'09:25:19','Kevin','Wafula',0),(1797405,1,NULL,'2022-10-18 00:00:00','present',122,1,0,'09:25:56','Kevin','Wafula',0),(1797783,1,NULL,'2022-10-18 00:00:00','present',123,1,0,'09:39:48','Steve','Kiawa',0),(1797843,1,NULL,'2022-10-18 00:00:00','present',95,1,1,'09:41:05','Faith','Kanyari',0),(1798029,1,NULL,'2022-10-18 00:00:00','present',112,1,0,'09:41:54','Lazarus','Masika',0),(1799277,1,NULL,'2022-10-18 00:00:00','present',95,1,0,'09:47:38','Faith','Kanyari',0),(1799343,1,NULL,'2022-10-18 00:00:00','present',112,1,1,'09:47:46','Lazarus','Masika',0),(1800499,1,NULL,'2022-10-18 00:00:00','present',110,1,1,'09:52:51','Ndolo','Mutisya',0),(1803929,1,NULL,'2022-10-18 00:00:00','present',85,1,1,'10:07:00','Angela','Wambui',0),(1804433,1,NULL,'2022-10-18 00:00:00','present',85,1,0,'10:08:58','Angela','Wambui',0),(1807616,1,NULL,'2022-10-18 00:00:00','present',111,1,1,'10:21:37','Carol','Wanjiku',0),(1808490,1,NULL,'2022-10-18 00:00:00','present',111,1,0,'10:24:51','Carol','Wanjiku',0),(1813363,1,NULL,'2022-10-18 00:00:00','present',78,1,0,'10:42:48','Renson','Sibo',0),(1817942,1,NULL,'2022-10-18 00:00:00','present',110,1,0,'10:58:35','Ndolo','Mutisya',0),(1820221,1,NULL,'2022-10-18 00:00:00','present',112,1,1,'11:06:18','Lazarus','Masika',0),(1821409,1,NULL,'2022-10-18 00:00:00','present',112,1,0,'11:10:07','Lazarus','Masika',0),(1826539,1,NULL,'2022-10-18 00:00:00','present',85,1,1,'11:26:32','Angela','Wambui',0),(1828241,1,NULL,'2022-10-18 00:00:00','present',85,1,0,'11:31:46','Angela','Wambui',0),(1828899,1,NULL,'2022-10-18 00:00:00','present',111,1,1,'11:33:44','Carol','Wanjiku',0),(1829667,1,NULL,'2022-10-18 00:00:00','present',111,1,0,'11:36:11','Carol','Wanjiku',0),(1832460,1,NULL,'2022-10-18 00:00:00','present',16,1,1,'11:44:23','Damaris','Mwende',0),(1833310,1,NULL,'2022-10-18 00:00:00','present',16,1,0,'11:46:44','Damaris','Mwende',0),(1834789,1,NULL,'2022-10-18 00:00:00','present',109,1,1,'11:50:58','Moses','Mwaniki',0),(1835985,1,NULL,'2022-10-18 00:00:00','present',109,1,0,'11:54:20','Moses','Mwaniki',0),(1838158,1,NULL,'2022-10-18 00:00:00','present',95,1,1,'12:00:11','Faith','Kanyari',0),(1839130,1,NULL,'2022-10-18 00:00:00','present',95,1,0,'12:02:44','Faith','Kanyari',0),(1840670,1,NULL,'2022-10-18 00:00:00','present',110,1,1,'12:06:42','Ndolo','Mutisya',0),(1844478,1,NULL,'2022-10-18 00:00:00','present',110,1,0,'12:16:39','Ndolo','Mutisya',0),(1855593,1,NULL,'2022-10-18 00:00:00','present',123,1,1,'12:41:33','Steve','Kiawa',0),(1856811,1,NULL,'2022-10-18 00:00:00','present',123,1,0,'12:44:05','Steve','Kiawa',0),(1863242,1,NULL,'2022-10-18 00:00:00','present',112,1,1,'12:59:49','Lazarus','Masika',0),(1864983,1,NULL,'2022-10-18 00:00:00','present',122,1,1,'13:04:17','Kevin','Wafula',0),(1869863,1,NULL,'2022-10-18 00:00:00','present',78,1,1,'13:15:51','Renson','Sibo',0),(1869925,1,NULL,'2022-10-18 00:00:00','present',115,1,1,'13:15:56','Purity','Wanjiku',0),(1870051,1,NULL,'2022-10-18 00:00:00','present',111,1,1,'13:16:22','Carol','Wanjiku',0),(1870883,1,NULL,'2022-10-18 00:00:00','present',115,1,0,'13:18:06','Purity','Wanjiku',0),(1870948,1,NULL,'2022-10-18 00:00:00','present',111,1,0,'13:18:24','Carol','Wanjiku',0),(1871014,1,NULL,'2022-10-18 00:00:00','present',109,1,1,'13:18:34','Moses','Mwaniki',0),(1871550,1,NULL,'2022-10-18 00:00:00','present',54,1,1,'13:20:10','Stephen','Muita',0),(1871686,1,NULL,'2022-10-18 00:00:00','present',54,1,0,'13:22:16','Stephen','Muita',0),(1871755,1,NULL,'2022-10-18 00:00:00','present',54,1,1,'13:22:50','Stephen','Muita',0),(1872735,1,NULL,'2022-10-18 00:00:00','present',121,1,1,'13:27:33','Edward','Macharia',0),(1873871,1,NULL,'2022-10-18 00:00:00','present',16,1,1,'13:29:46','Damaris','Mwende',0),(1875023,1,NULL,'2022-10-18 00:00:00','present',122,1,0,'13:32:05','Kevin','Wafula',0),(1877505,1,NULL,'2022-10-18 00:00:00','present',54,1,0,'13:36:56','Stephen','Muita',0),(1889863,1,NULL,'2022-10-18 00:00:00','present',54,1,1,'13:57:34','Stephen','Muita',0),(1892488,1,NULL,'2022-10-18 00:00:00','present',54,1,0,'14:02:41','Stephen','Muita',0),(1893704,1,NULL,'2022-10-18 00:00:00','present',54,1,1,'14:04:53','Stephen','Muita',0),(1894243,1,NULL,'2022-10-18 00:00:00','present',109,1,0,'14:05:47','Moses','Mwaniki',0),(1902667,1,NULL,'2022-10-18 00:00:00','present',123,1,1,'14:21:26','Steve','Kiawa',0),(1904563,1,NULL,'2022-10-18 00:00:00','present',121,1,0,'14:24:44','Edward','Macharia',0),(1913283,1,NULL,'2022-10-18 00:00:00','present',54,1,0,'14:40:24','Stephen','Muita',0),(1914255,1,NULL,'2022-10-18 00:00:00','present',16,1,0,'14:42:03','Damaris','Mwende',0),(1916633,1,NULL,'2022-10-18 00:00:00','present',85,1,1,'14:46:19','Angela','Wambui',0),(1917546,1,NULL,'2022-10-18 00:00:00','present',107,1,0,'14:47:49','Amina','Ali',0),(1920741,1,NULL,'2022-10-18 00:00:00','present',111,1,1,'14:54:31','Carol','Wanjiku',0),(1921931,1,NULL,'2022-10-18 00:00:00','present',123,1,0,'14:56:29','Steve','Kiawa',0),(1922189,1,NULL,'2022-10-18 00:00:00','present',95,1,1,'14:56:43','Faith','Kanyari',0),(1924190,1,NULL,'2022-10-18 00:00:00','present',95,1,0,'14:58:31','Faith','Kanyari',0),(1925334,1,NULL,'2022-10-18 00:00:00','present',111,1,0,'14:59:31','Carol','Wanjiku',0),(1936946,1,NULL,'2022-10-18 00:00:00','present',111,1,1,'15:10:13','Carol','Wanjiku',0),(1937401,1,NULL,'2022-10-18 00:00:00','present',115,1,1,'15:10:42','Purity','Wanjiku',0),(1937493,1,NULL,'2022-10-18 00:00:00','present',109,1,1,'15:10:57','Moses','Mwaniki',0),(1937679,1,NULL,'2022-10-18 00:00:00','present',112,1,0,'15:11:16','Lazarus','Masika',0),(1940123,1,NULL,'2022-10-18 00:00:00','present',115,1,0,'15:14:31','Purity','Wanjiku',0),(1942213,1,NULL,'2022-10-18 00:00:00','present',85,1,0,'15:32:59','Angela','Wambui',0),(1942214,1,NULL,'2022-10-18 00:00:00','present',85,1,1,'15:36:12','Angela','Wambui',0),(1942215,1,NULL,'2022-10-18 00:00:00','present',85,1,0,'15:39:29','Angela','Wambui',0),(1942216,1,NULL,'2022-10-18 00:00:00','present',111,1,0,'15:19:06','Carol','Wanjiku',0),(1965676,1,NULL,'2022-10-18 00:00:00','present',16,1,1,'16:21:44','Damaris','Mwende',0),(1966976,1,NULL,'2022-10-18 00:00:00','present',16,1,0,'16:23:36','Damaris','Mwende',0),(1974753,1,NULL,'2022-10-18 00:00:00','present',78,1,1,'16:33:22','Renson','Sibo',0),(1974754,1,NULL,'2022-10-18 00:00:00','present',112,1,1,'16:33:27','Lazarus','Masika',0),(1977328,1,NULL,'2022-10-18 00:00:00','present',107,1,1,'16:36:38','Amina','Ali',0),(1982320,1,NULL,'2022-10-18 00:00:00','present',95,1,1,'16:42:35','Faith','Kanyari',0),(1984000,1,NULL,'2022-10-18 00:00:00','present',95,1,0,'16:44:38','Faith','Kanyari',0),(1984318,1,NULL,'2022-10-18 00:00:00','present',107,1,0,'16:44:44','Amina','Ali',0),(1988919,1,NULL,'2022-10-18 00:00:00','present',110,1,1,'16:50:23','Ndolo','Mutisya',0),(1990539,1,NULL,'2022-10-18 00:00:00','present',110,1,0,'16:52:08','Ndolo','Mutisya',0),(1996425,1,NULL,'2022-10-18 00:00:00','present',95,1,1,'16:58:55','Faith','Kanyari',0),(1996645,1,NULL,'2022-10-18 00:00:00','present',54,1,1,'16:59:10','Stephen','Muita',0),(1999198,1,NULL,'2022-10-18 00:00:00','present',110,1,1,'17:02:04','Ndolo','Mutisya',0),(2002558,1,NULL,'2022-10-18 00:00:00','present',111,1,1,'17:05:44','Carol','Wanjiku',0),(2012276,1,NULL,'2022-10-18 00:00:00','present',115,1,1,'17:16:55','Purity','Wanjiku',0),(2012390,1,NULL,'2022-10-18 00:00:00','present',85,1,1,'17:17:03','Angela','Wambui',0),(2013310,1,NULL,'2022-10-18 00:00:00','present',122,1,1,'17:18:23','Kevin','Wafula',0),(2031290,1,NULL,'2022-10-18 00:00:00','present',16,1,1,'17:44:29','Damaris','Mwende',0),(2053754,1,NULL,'2022-10-18 00:00:00','present',121,1,1,'18:16:51','Edward','Macharia',0),(2054698,1,NULL,'2022-10-18 00:00:00','present',107,1,1,'21:18:36','Amina','Ali',0),(2054699,1,NULL,'2022-10-18 00:00:00','present',123,1,1,'18:20:43','Steve','Kiawa',0),(2054818,1,NULL,'2022-10-19 00:00:00','present',109,1,0,'06:43:34','Moses','Mwaniki',0),(2054862,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'07:11:23','Kevin','Wafula',0),(2054910,1,NULL,'2022-10-19 00:00:00','present',109,1,1,'07:23:04','Moses','Mwaniki',0),(2054911,1,NULL,'2022-10-19 00:00:00','present',109,1,0,'07:23:11','Moses','Mwaniki',0),(2055110,1,NULL,'2022-10-19 00:00:00','present',110,1,0,'07:48:27','Ndolo','Mutisya',0),(2055130,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'07:50:13','Kevin','Wafula',0),(2055142,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'07:51:00','Kevin','Wafula',0),(2055310,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'08:02:59','Angela','Wambui',0),(2055342,1,NULL,'2022-10-19 00:00:00','present',95,1,0,'08:05:14','Faith','Kanyari',0),(2055360,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'08:05:55','Angela','Wambui',0),(2055390,1,NULL,'2022-10-19 00:00:00','present',95,1,1,'08:07:43','Faith','Kanyari',0),(2055427,1,NULL,'2022-10-19 00:00:00','present',95,1,0,'08:09:25','Faith','Kanyari',0),(2055455,1,NULL,'2022-10-19 00:00:00','present',111,1,0,'08:09:59','Carol','Wanjiku',0),(2055575,1,NULL,'2022-10-19 00:00:00','present',16,1,0,'08:14:30','Damaris','Mwende',0),(2055991,1,NULL,'2022-10-19 00:00:00','present',112,1,0,'08:27:26','Lazarus','Masika',0),(2056025,1,NULL,'2022-10-19 00:00:00','present',78,1,1,'08:28:08','Renson','Sibo',0),(2056026,1,NULL,'2022-10-19 00:00:00','present',112,1,1,'08:28:18','Lazarus','Masika',0),(2056177,1,NULL,'2022-10-19 00:00:00','present',54,1,0,'08:32:26','Stephen','Muita',0),(2056777,1,NULL,'2022-10-19 00:00:00','present',112,1,0,'08:47:11','Lazarus','Masika',0),(2056819,1,NULL,'2022-10-19 00:00:00','present',78,1,0,'08:48:06','Renson','Sibo',0),(2057781,1,NULL,'2022-10-19 00:00:00','present',109,1,1,'09:08:58','Moses','Mwaniki',0),(2057829,1,NULL,'2022-10-19 00:00:00','present',54,1,1,'09:10:41','Stephen','Muita',0),(2058029,1,NULL,'2022-10-19 00:00:00','present',112,1,1,'09:14:24','Lazarus','Masika',0),(2058030,1,NULL,'2022-10-19 00:00:00','present',112,1,0,'09:14:32','Lazarus','Masika',0),(2058083,1,NULL,'2022-10-19 00:00:00','present',54,1,0,'09:15:16','Stephen','Muita',0),(2058084,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'09:15:09','Kevin','Wafula',0),(2058141,1,NULL,'2022-10-19 00:00:00','present',54,1,1,'09:16:32','Stephen','Muita',0),(2058142,1,NULL,'2022-10-19 00:00:00','present',54,1,0,'09:16:41','Stephen','Muita',0),(2058143,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'09:16:04','Kevin','Wafula',0),(2058269,1,NULL,'2022-10-19 00:00:00','present',109,1,0,'09:17:58','Moses','Mwaniki',0),(2058731,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'09:25:16','Angela','Wambui',0),(2058867,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'09:27:12','Angela','Wambui',0),(2059007,1,NULL,'2022-10-19 00:00:00','present',95,1,1,'09:29:10','Faith','Kanyari',0),(2059079,1,NULL,'2022-10-19 00:00:00','present',95,1,0,'09:30:19','Faith','Kanyari',0),(2060929,1,NULL,'2022-10-19 00:00:00','present',78,1,1,'09:55:17','Renson','Sibo',0),(2061309,1,NULL,'2022-10-19 00:00:00','present',123,1,0,'10:00:08','Steve','Kiawa',0),(2061387,1,NULL,'2022-10-19 00:00:00','present',110,1,1,'10:01:09','Ndolo','Mutisya',0),(2061467,1,NULL,'2022-10-19 00:00:00','present',110,1,0,'10:02:32','Ndolo','Mutisya',0),(2061959,1,NULL,'2022-10-19 00:00:00','present',54,1,1,'10:07:47','Stephen','Muita',0),(2064905,1,NULL,'2022-10-19 00:00:00','present',78,1,1,'10:29:54','Renson','Sibo',0),(2064906,1,NULL,'2022-10-19 00:00:00','present',112,1,1,'10:29:58','Lazarus','Masika',0),(2064995,1,NULL,'2022-10-19 00:00:00','present',16,1,1,'10:31:13','Damaris','Mwende',0),(2065179,1,NULL,'2022-10-19 00:00:00','present',16,1,0,'10:32:57','Damaris','Mwende',0),(2065180,1,NULL,'2022-10-19 00:00:00','present',78,1,0,'10:33:27','Renson','Sibo',0),(2065181,1,NULL,'2022-10-19 00:00:00','present',112,1,0,'10:33:29','Lazarus','Masika',0),(2073705,1,NULL,'2022-10-19 00:00:00','present',110,1,1,'10:57:33','Ndolo','Mutisya',0),(2074355,1,NULL,'2022-10-19 00:00:00','present',110,1,0,'10:59:02','Ndolo','Mutisya',0),(2078792,1,NULL,'2022-10-19 00:00:00','present',123,1,1,'11:09:51','Steve','Kiawa',0),(2079624,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'11:11:50','Angela','Wambui',0),(2080154,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'11:13:18','Angela','Wambui',0),(2081720,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'11:16:47','Kevin','Wafula',0),(2081940,1,NULL,'2022-10-19 00:00:00','present',123,1,0,'11:17:22','Steve','Kiawa',0),(2081996,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'11:17:32','Kevin','Wafula',0),(2092037,1,NULL,'2022-10-19 00:00:00','present',112,1,1,'11:35:01','Lazarus','Masika',0),(2106846,1,NULL,'2022-10-19 00:00:00','present',95,1,1,'11:59:00','Faith','Kanyari',0),(2107506,1,NULL,'2022-10-19 00:00:00','present',95,1,0,'12:00:29','Faith','Kanyari',0),(2109336,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'12:04:06','Kevin','Wafula',0),(2109337,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'12:04:10','Kevin','Wafula',0),(2113431,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'12:12:26','Kevin','Wafula',0),(2113495,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'12:12:36','Kevin','Wafula',0),(2114080,1,NULL,'2022-10-19 00:00:00','present',111,1,1,'12:13:42','Carol','Wanjiku',0),(2115070,1,NULL,'2022-10-19 00:00:00','present',111,1,0,'12:15:36','Carol','Wanjiku',0),(2122842,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'12:30:04','Kevin','Wafula',0),(2123046,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'12:30:37','Kevin','Wafula',0),(2123529,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'12:31:24','Angela','Wambui',0),(2123809,1,NULL,'2022-10-19 00:00:00','present',110,1,1,'12:31:50','Ndolo','Mutisya',0),(2124448,1,NULL,'2022-10-19 00:00:00','present',110,1,0,'12:32:56','Ndolo','Mutisya',0),(2124520,1,NULL,'2022-10-19 00:00:00','present',110,1,1,'12:33:05','Ndolo','Mutisya',0),(2130214,1,NULL,'2022-10-19 00:00:00','present',109,1,1,'12:42:17','Moses','Mwaniki',0),(2131028,1,NULL,'2022-10-19 00:00:00','present',109,1,0,'12:43:05','Moses','Mwaniki',0),(2143553,1,NULL,'2022-10-19 00:00:00','present',112,1,0,'12:53:55','Lazarus','Masika',0),(2143629,1,NULL,'2022-10-19 00:00:00','present',78,1,0,'12:54:06','Renson','Sibo',0),(2145015,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'12:56:25','Kevin','Wafula',0),(2145405,1,NULL,'2022-10-19 00:00:00','present',95,1,1,'12:56:51','Faith','Kanyari',0),(2148723,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'13:02:19','Angela','Wambui',0),(2148803,1,NULL,'2022-10-19 00:00:00','present',110,1,0,'13:02:24','Ndolo','Mutisya',0),(2150180,1,NULL,'2022-10-19 00:00:00','present',112,1,1,'13:04:39','Lazarus','Masika',0),(2150426,1,NULL,'2022-10-19 00:00:00','present',95,1,0,'13:04:45','Faith','Kanyari',0),(2151422,1,NULL,'2022-10-19 00:00:00','present',115,1,1,'13:06:29','Purity','Wanjiku',0),(2153354,1,NULL,'2022-10-19 00:00:00','present',115,1,0,'13:09:17','Purity','Wanjiku',0),(2154459,1,NULL,'2022-10-19 00:00:00','present',109,1,1,'13:10:54','Moses','Mwaniki',0),(2155491,1,NULL,'2022-10-19 00:00:00','present',109,1,0,'13:12:29','Moses','Mwaniki',0),(2164104,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'13:24:45','Kevin','Wafula',0),(2172728,1,NULL,'2022-10-19 00:00:00','present',54,1,0,'13:37:09','Stephen','Muita',0),(2182251,1,NULL,'2022-10-19 00:00:00','present',110,1,1,'13:50:40','Ndolo','Mutisya',0),(2183331,1,NULL,'2022-10-19 00:00:00','present',111,1,1,'13:52:08','Carol','Wanjiku',0),(2184241,1,NULL,'2022-10-19 00:00:00','present',111,1,0,'13:53:22','Carol','Wanjiku',0),(2184885,1,NULL,'2022-10-19 00:00:00','present',110,1,0,'13:54:12','Ndolo','Mutisya',0),(2185071,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'13:54:38','Kevin','Wafula',0),(2185447,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'13:54:56','Kevin','Wafula',0),(2190482,1,NULL,'2022-10-19 00:00:00','present',111,1,1,'14:01:42','Carol','Wanjiku',0),(2191922,1,NULL,'2022-10-19 00:00:00','present',107,1,0,'14:03:36','Amina','Ali',0),(2193862,1,NULL,'2022-10-19 00:00:00','present',16,1,1,'14:06:00','Damaris','Mwende',0),(2195430,1,NULL,'2022-10-19 00:00:00','present',16,1,0,'14:07:57','Damaris','Mwende',0),(2205726,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'14:22:37','Angela','Wambui',0),(2206026,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'14:22:55','Angela','Wambui',0),(2207642,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'14:25:11','Angela','Wambui',0),(2209487,1,NULL,'2022-10-19 00:00:00','present',123,1,1,'14:27:50','Steve','Kiawa',0),(2209591,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'14:28:00','Angela','Wambui',0),(2210536,1,NULL,'2022-10-19 00:00:00','present',123,1,0,'14:29:12','Steve','Kiawa',0),(2220818,1,NULL,'2022-10-19 00:00:00','present',111,1,0,'14:43:08','Carol','Wanjiku',0),(2234300,1,NULL,'2022-10-19 00:00:00','present',109,1,1,'15:01:17','Moses','Mwaniki',0),(2235056,1,NULL,'2022-10-19 00:00:00','present',109,1,0,'15:02:18','Moses','Mwaniki',0),(2239198,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'15:07:49','Angela','Wambui',0),(2240078,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'15:08:58','Angela','Wambui',0),(2240633,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'15:11:43','Kevin','Wafula',0),(2241417,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'15:16:10','Angela','Wambui',0),(2246050,1,NULL,'2022-10-19 00:00:00','present',78,1,1,'15:22:02','Renson','Sibo',0),(2246051,1,NULL,'2022-10-19 00:00:00','present',109,1,1,'15:22:07','Moses','Mwaniki',0),(2248695,1,NULL,'2022-10-19 00:00:00','present',122,1,0,'15:25:27','Kevin','Wafula',0),(2257047,1,NULL,'2022-10-19 00:00:00','present',110,1,1,'15:33:40','Ndolo','Mutisya',0),(2259387,1,NULL,'2022-10-19 00:00:00','present',110,1,0,'15:35:14','Ndolo','Mutisya',0),(2267765,1,NULL,'2022-10-19 00:00:00','present',123,1,1,'15:45:13','Steve','Kiawa',0),(2269193,1,NULL,'2022-10-19 00:00:00','present',16,1,1,'15:46:48','Damaris','Mwende',0),(2269194,1,NULL,'2022-10-19 00:00:00','present',123,1,0,'15:46:53','Steve','Kiawa',0),(2270040,1,NULL,'2022-10-19 00:00:00','present',95,1,1,'15:47:49','Faith','Kanyari',0),(2271260,1,NULL,'2022-10-19 00:00:00','present',95,1,0,'15:49:20','Faith','Kanyari',0),(2272859,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'15:51:06','Angela','Wambui',0),(2274347,1,NULL,'2022-10-19 00:00:00','present',16,1,0,'15:52:55','Damaris','Mwende',0),(2274472,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'15:53:04','Angela','Wambui',0),(2275354,1,NULL,'2022-10-19 00:00:00','present',16,1,1,'15:54:02','Damaris','Mwende',0),(2275608,1,NULL,'2022-10-19 00:00:00','present',16,1,0,'15:54:23','Damaris','Mwende',0),(2277016,1,NULL,'2022-10-19 00:00:00','present',112,1,0,'15:55:49','Lazarus','Masika',0),(2278306,1,NULL,'2022-10-19 00:00:00','present',123,1,1,'15:57:24','Steve','Kiawa',0),(2280646,1,NULL,'2022-10-19 00:00:00','present',123,1,0,'15:59:54','Steve','Kiawa',0),(2282087,1,NULL,'2022-10-19 00:00:00','present',107,1,1,'16:01:30','Amina','Ali',0),(2282219,1,NULL,'2022-10-19 00:00:00','present',107,1,0,'16:01:40','Amina','Ali',0),(2283682,1,NULL,'2022-10-19 00:00:00','present',111,1,1,'16:03:09','Carol','Wanjiku',0),(2284620,1,NULL,'2022-10-19 00:00:00','present',111,1,0,'16:04:45','Carol','Wanjiku',0),(2284890,1,NULL,'2022-10-19 00:00:00','present',78,1,0,'16:05:47','Renson','Sibo',0),(2299714,1,NULL,'2022-10-19 00:00:00','present',107,1,1,'16:28:58','Amina','Ali',0),(2309715,1,NULL,'2022-10-19 00:00:00','present',107,1,0,'16:40:09','Amina','Ali',0),(2316891,1,NULL,'2022-10-19 00:00:00','present',95,1,1,'16:55:17','Faith','Kanyari',0),(2316892,1,NULL,'2022-10-19 00:00:00','present',54,1,1,'16:55:22','Stephen','Muita',0),(2317311,1,NULL,'2022-10-19 00:00:00','present',95,1,0,'16:56:20','Faith','Kanyari',0),(2317734,1,NULL,'2022-10-19 00:00:00','present',54,1,0,'16:56:56','Stephen','Muita',0),(2321710,1,NULL,'2022-10-19 00:00:00','present',95,1,1,'17:01:25','Faith','Kanyari',0),(2323712,1,NULL,'2022-10-19 00:00:00','present',54,1,1,'17:03:50','Stephen','Muita',0),(2325728,1,NULL,'2022-10-19 00:00:00','present',78,1,1,'17:06:06','Renson','Sibo',0),(2325729,1,NULL,'2022-10-19 00:00:00','present',112,1,1,'17:06:03','Lazarus','Masika',0),(2327480,1,NULL,'2022-10-19 00:00:00','present',115,1,1,'17:08:10','Purity','Wanjiku',0),(2329685,1,NULL,'2022-10-19 00:00:00','present',115,1,0,'17:10:47','Purity','Wanjiku',0),(2334569,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'17:16:35','Angela','Wambui',0),(2335463,1,NULL,'2022-10-19 00:00:00','present',110,1,1,'17:17:35','Ndolo','Mutisya',0),(2335763,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'17:17:56','Angela','Wambui',0),(2339085,1,NULL,'2022-10-19 00:00:00','present',122,1,1,'17:23:11','Kevin','Wafula',0),(2339389,1,NULL,'2022-10-19 00:00:00','present',123,1,1,'17:23:30','Steve','Kiawa',0),(2340460,1,NULL,'2022-10-19 00:00:00','present',123,1,0,'17:24:43','Steve','Kiawa',0),(2347390,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'17:32:04','Angela','Wambui',0),(2347391,1,NULL,'2022-10-19 00:00:00','present',85,1,0,'17:32:13','Angela','Wambui',0),(2348014,1,NULL,'2022-10-19 00:00:00','present',85,1,1,'17:32:51','Angela','Wambui',0),(2350212,1,NULL,'2022-10-19 00:00:00','present',111,1,1,'17:35:06','Carol','Wanjiku',0),(2354478,1,NULL,'2022-10-19 00:00:00','present',16,1,1,'17:39:53','Damaris','Mwende',0),(2357817,1,NULL,'2022-10-19 00:00:00','present',123,1,1,'17:43:11','Steve','Kiawa',0),(2358297,1,NULL,'2022-10-19 00:00:00','present',123,1,0,'17:43:49','Steve','Kiawa',0),(2358941,1,NULL,'2022-10-19 00:00:00','present',107,1,1,'21:03:30','Amina','Ali',0),(2358942,1,NULL,'2022-10-19 00:00:00','present',115,1,1,'17:45:58','Purity','Wanjiku',0),(2358943,1,NULL,'2022-10-19 00:00:00','present',123,1,1,'17:50:24','Steve','Kiawa',0),(2415685,1,NULL,'2022-10-20 00:00:00','present',107,1,0,'07:00:00','Amina','Ali',0),(2415686,1,NULL,'2022-10-20 00:00:00','present',107,1,1,'08:54:24','Amina','Ali',0),(2415687,1,NULL,'2022-10-20 00:00:00','present',107,1,1,'13:43:15','Amina','Ali',0),(2415688,1,NULL,'2022-10-20 00:00:00','present',107,1,0,'13:50:21','Amina','Ali',0),(2415689,1,NULL,'2022-10-20 00:00:00','present',107,1,1,'15:14:37','Amina','Ali',0),(2415690,1,NULL,'2022-10-20 00:00:00','present',110,1,0,'11:23:52','Ndolo','Mutisya',0),(2415691,1,NULL,'2022-10-20 00:00:00','present',110,1,1,'11:55:01','Ndolo','Mutisya',0),(2415692,1,NULL,'2022-10-20 00:00:00','present',110,1,0,'12:06:41','Ndolo','Mutisya',0),(2415693,1,NULL,'2022-10-20 00:00:00','present',110,1,1,'12:19:04','Ndolo','Mutisya',0),(2415694,1,NULL,'2022-10-20 00:00:00','present',110,1,0,'12:19:14','Ndolo','Mutisya',0),(2415695,1,NULL,'2022-10-20 00:00:00','present',110,1,1,'12:20:54','Ndolo','Mutisya',0),(2415696,1,NULL,'2022-10-20 00:00:00','present',110,1,0,'12:21:02','Ndolo','Mutisya',0),(2415697,1,NULL,'2022-10-20 00:00:00','present',109,1,0,'14:18:17','Moses','Mwaniki',0),(2415698,1,NULL,'2022-10-20 00:00:00','present',109,1,1,'14:27:13','Moses','Mwaniki',0),(2415699,1,NULL,'2022-10-20 00:00:00','present',109,1,0,'14:30:53','Moses','Mwaniki',0),(2415700,1,NULL,'2022-10-20 00:00:00','present',110,1,1,'15:14:45','Ndolo','Mutisya',0),(2415701,1,NULL,'2022-10-20 00:00:00','present',110,1,0,'15:15:56','Ndolo','Mutisya',0),(2415702,1,NULL,'2022-10-20 00:00:00','present',110,1,0,'15:31:06','Ndolo','Mutisya',0),(2415703,1,NULL,'2022-10-20 00:00:00','present',109,1,1,'15:44:47','Moses','Mwaniki',0),(2415704,1,NULL,'2022-10-20 00:00:00','present',109,1,0,'15:45:38','Moses','Mwaniki',0),(2415705,1,NULL,'2022-10-20 00:00:00','present',110,1,1,'16:31:11','Ndolo','Mutisya',0),(2415706,1,NULL,'2022-10-20 00:00:00','present',109,1,1,'18:26:36','Moses','Mwaniki',0),(2415707,1,NULL,'2022-10-20 00:00:00','present',109,1,0,'18:27:32','Moses','Mwaniki',0),(2417010,1,NULL,'2022-10-20 00:00:00','present',109,1,1,'21:04:38','Moses','Mwaniki',0),(2425148,1,NULL,'2022-10-21 00:00:00','present',16,1,0,'08:18:22','Damaris','Mwende',0),(2425149,1,NULL,'2022-10-21 00:00:00','present',16,1,1,'09:34:32','Damaris','Mwende',0),(2425150,1,NULL,'2022-10-21 00:00:00','present',16,1,0,'09:40:48','Damaris','Mwende',0),(2425151,1,NULL,'2022-10-21 00:00:00','present',85,1,0,'07:09:10','Angela','Wambui',0),(2425152,1,NULL,'2022-10-21 00:00:00','present',85,1,1,'07:13:40','Angela','Wambui',0),(2425153,1,NULL,'2022-10-21 00:00:00','present',85,1,0,'07:15:32','Angela','Wambui',0),(2425154,1,NULL,'2022-10-21 00:00:00','present',85,1,1,'07:35:15','Angela','Wambui',0),(2425155,1,NULL,'2022-10-21 00:00:00','present',85,1,0,'07:35:23','Angela','Wambui',0),(2425156,1,NULL,'2022-10-21 00:00:00','present',85,1,1,'09:44:29','Angela','Wambui',0),(2425157,1,NULL,'2022-10-21 00:00:00','present',85,1,0,'09:46:12','Angela','Wambui',0),(2425158,1,NULL,'2022-10-21 00:00:00','present',54,1,0,'08:26:12','Stephen','Muita',0),(2425159,1,NULL,'2022-10-21 00:00:00','present',78,1,0,'08:26:18','Renson','Sibo',0),(2425160,1,NULL,'2022-10-21 00:00:00','present',78,1,1,'09:16:49','Renson','Sibo',0),(2425161,1,NULL,'2022-10-21 00:00:00','present',78,1,0,'09:16:57','Renson','Sibo',0),(2425162,1,NULL,'2022-10-21 00:00:00','present',78,1,1,'09:19:59','Renson','Sibo',0),(2425163,1,NULL,'2022-10-21 00:00:00','present',54,1,1,'09:22:19','Stephen','Muita',0),(2425164,1,NULL,'2022-10-21 00:00:00','present',54,1,0,'09:22:27','Stephen','Muita',0),(2425165,1,NULL,'2022-10-21 00:00:00','present',54,1,1,'09:23:51','Stephen','Muita',0),(2425166,1,NULL,'2022-10-21 00:00:00','present',54,1,0,'09:23:58','Stephen','Muita',0),(2425167,1,NULL,'2022-10-21 00:00:00','present',54,1,1,'10:13:14','Stephen','Muita',0),(2425168,1,NULL,'2022-10-21 00:00:00','present',111,1,0,'07:41:33','Carol','Wanjiku',0),(2425169,1,NULL,'2022-10-21 00:00:00','present',115,1,0,'08:42:09','Purity','Wanjiku',0),(2425170,1,NULL,'2022-10-21 00:00:00','present',110,1,0,'08:51:59','Ndolo','Mutisya',0),(2425171,1,NULL,'2022-10-21 00:00:00','present',122,1,0,'07:09:17','Kevin','Wafula',0),(2425172,1,NULL,'2022-10-21 00:00:00','present',122,1,1,'07:23:48','Kevin','Wafula',0),(2425173,1,NULL,'2022-10-21 00:00:00','present',122,1,0,'07:24:30','Kevin','Wafula',0),(2425174,1,NULL,'2022-10-21 00:00:00','present',112,1,0,'08:26:16','Lazarus','Masika',0),(2425175,1,NULL,'2022-10-21 00:00:00','present',122,1,1,'08:29:18','Kevin','Wafula',0),(2425176,1,NULL,'2022-10-21 00:00:00','present',122,1,0,'08:29:56','Kevin','Wafula',0),(2425177,1,NULL,'2022-10-21 00:00:00','present',112,1,1,'09:20:05','Lazarus','Masika',0),(2425178,1,NULL,'2022-10-21 00:00:00','present',122,1,1,'09:39:22','Kevin','Wafula',0),(2425179,1,NULL,'2022-10-21 00:00:00','present',122,1,0,'09:41:40','Kevin','Wafula',0),(2425180,1,NULL,'2022-10-21 00:00:00','present',123,1,0,'10:24:40','Steve','Kiawa',0),(2425216,1,NULL,'2022-10-21 00:00:00','present',54,1,0,'10:29:05','Stephen','Muita',0),(2427456,1,NULL,'2022-10-21 00:00:00','present',78,1,0,'10:39:53','Renson','Sibo',0),(2427457,1,NULL,'2022-10-21 00:00:00','present',112,1,0,'10:39:51','Lazarus','Masika',0),(2427752,1,NULL,'2022-10-21 00:00:00','present',95,1,1,'10:41:13','Faith','Kanyari',0),(2428930,1,NULL,'2022-10-21 00:00:00','present',95,1,0,'10:46:24','Faith','Kanyari',0),(2428931,1,NULL,'2022-10-21 00:00:00','present',78,1,1,'10:46:25','Renson','Sibo',0),(2429170,1,NULL,'2022-10-21 00:00:00','present',54,1,1,'10:47:28','Stephen','Muita',0),(2430400,1,NULL,'2022-10-21 00:00:00','present',112,1,1,'10:52:24','Lazarus','Masika',0),(2430442,1,NULL,'2022-10-21 00:00:00','present',112,1,0,'10:52:32','Lazarus','Masika',0),(2430443,1,NULL,'2022-10-21 00:00:00','present',122,1,1,'10:52:41','Kevin','Wafula',0),(2430662,1,NULL,'2022-10-21 00:00:00','present',122,1,0,'10:53:30','Kevin','Wafula',0),(2432012,1,NULL,'2022-10-21 00:00:00','present',110,1,1,'10:58:36','Ndolo','Mutisya',0),(2432380,1,NULL,'2022-10-21 00:00:00','present',110,1,0,'10:59:59','Ndolo','Mutisya',0),(2435341,1,NULL,'2022-10-21 00:00:00','present',54,1,0,'11:10:39','Stephen','Muita',0),(2438653,1,NULL,'2022-10-21 00:00:00','present',95,1,1,'11:22:04','Faith','Kanyari',0),(2441152,1,NULL,'2022-10-21 00:00:00','present',112,1,1,'11:30:36','Lazarus','Masika',0),(2446802,1,NULL,'2022-10-21 00:00:00','present',115,1,1,'11:49:38','Purity','Wanjiku',0),(2449301,1,NULL,'2022-10-21 00:00:00','present',115,1,0,'11:57:44','Purity','Wanjiku',0),(2449509,1,NULL,'2022-10-21 00:00:00','present',115,1,1,'11:58:30','Purity','Wanjiku',0),(2450411,1,NULL,'2022-10-21 00:00:00','present',115,1,0,'12:01:20','Purity','Wanjiku',0),(2451126,1,NULL,'2022-10-21 00:00:00','present',85,1,0,'12:03:34','Angela','Wambui',0),(2453870,1,NULL,'2022-10-21 00:00:00','present',110,1,1,'12:11:44','Ndolo','Mutisya',0),(2454212,1,NULL,'2022-10-21 00:00:00','present',110,1,0,'12:12:45','Ndolo','Mutisya',0),(2454560,1,NULL,'2022-10-21 00:00:00','present',111,1,1,'12:13:38','Carol','Wanjiku',0),(2455150,1,NULL,'2022-10-21 00:00:00','present',111,1,0,'12:15:27','Carol','Wanjiku',0),(2456350,1,NULL,'2022-10-21 00:00:00','present',122,1,1,'12:18:43','Kevin','Wafula',0),(2463304,1,NULL,'2022-10-21 00:00:00','present',110,1,1,'12:37:51','Ndolo','Mutisya',0),(2463366,1,NULL,'2022-10-21 00:00:00','present',110,1,0,'12:38:03','Ndolo','Mutisya',0),(2464752,1,NULL,'2022-10-21 00:00:00','present',110,1,1,'12:41:39','Ndolo','Mutisya',0),(2464753,1,NULL,'2022-10-21 00:00:00','present',110,1,0,'12:41:46','Ndolo','Mutisya',0),(2465467,1,NULL,'2022-10-21 00:00:00','present',122,1,0,'12:43:31','Kevin','Wafula',0),(2466589,1,NULL,'2022-10-21 00:00:00','present',78,1,0,'12:46:20','Renson','Sibo',0),(2466590,1,NULL,'2022-10-21 00:00:00','present',112,1,0,'12:46:24','Lazarus','Masika',0),(2466997,1,NULL,'2022-10-21 00:00:00','present',54,1,1,'12:47:18','Stephen','Muita',0),(2467411,1,NULL,'2022-10-21 00:00:00','present',112,1,1,'12:48:23','Lazarus','Masika',0),(2467481,1,NULL,'2022-10-21 00:00:00','present',54,1,0,'12:48:35','Stephen','Muita',0),(2467482,1,NULL,'2022-10-21 00:00:00','present',54,1,1,'12:48:38','Stephen','Muita',0),(2467483,1,NULL,'2022-10-21 00:00:00','present',112,1,0,'12:48:33','Lazarus','Masika',0),(2467919,1,NULL,'2022-10-21 00:00:00','present',54,1,0,'12:49:34','Stephen','Muita',0),(2473839,1,NULL,'2022-10-21 00:00:00','present',112,1,1,'13:02:54','Lazarus','Masika',0),(2474289,1,NULL,'2022-10-21 00:00:00','present',112,1,0,'13:03:53','Lazarus','Masika',0),(2475125,1,NULL,'2022-10-21 00:00:00','present',123,1,1,'13:05:44','Steve','Kiawa',0),(2475433,1,NULL,'2022-10-21 00:00:00','present',95,1,0,'13:06:31','Faith','Kanyari',0),(2475745,1,NULL,'2022-10-21 00:00:00','present',123,1,0,'13:07:05','Steve','Kiawa',0),(2479853,1,NULL,'2022-10-21 00:00:00','present',78,1,1,'13:16:00','Renson','Sibo',0),(2479933,1,NULL,'2022-10-21 00:00:00','present',115,1,1,'13:16:08','Purity','Wanjiku',0),(2482120,1,NULL,'2022-10-21 00:00:00','present',78,1,0,'13:20:36','Renson','Sibo',0),(2485892,1,NULL,'2022-10-21 00:00:00','present',112,1,1,'13:28:24','Lazarus','Masika',0),(2492947,1,NULL,'2022-10-21 00:00:00','present',111,1,1,'13:41:04','Carol','Wanjiku',0),(2495803,1,NULL,'2022-10-21 00:00:00','present',85,1,1,'13:43:51','Angela','Wambui',0),(2497418,1,NULL,'2022-10-21 00:00:00','present',85,1,0,'13:45:33','Angela','Wambui',0),(2499740,1,NULL,'2022-10-21 00:00:00','present',115,1,0,'13:48:18','Purity','Wanjiku',0),(2506874,1,NULL,'2022-10-21 00:00:00','present',78,1,1,'13:56:20','Renson','Sibo',0),(2508986,1,NULL,'2022-10-21 00:00:00','present',16,1,1,'13:59:44','Damaris','Mwende',0),(2509965,1,NULL,'2022-10-21 00:00:00','present',16,1,0,'14:01:19','Damaris','Mwende',0),(2515455,1,NULL,'2022-10-21 00:00:00','present',16,1,1,'14:59:52','Damaris','Mwende',0),(2515456,1,NULL,'2022-10-21 00:00:00','present',16,1,0,'15:01:44','Damaris','Mwende',0),(2515457,1,NULL,'2022-10-21 00:00:00','present',95,1,1,'15:41:50','Faith','Kanyari',0),(2515458,1,NULL,'2022-10-21 00:00:00','present',95,1,0,'15:47:16','Faith','Kanyari',0),(2515459,1,NULL,'2022-10-21 00:00:00','present',85,1,1,'15:20:06','Angela','Wambui',0),(2515460,1,NULL,'2022-10-21 00:00:00','present',78,1,0,'14:11:20','Renson','Sibo',0),(2515461,1,NULL,'2022-10-21 00:00:00','present',78,1,1,'14:52:13','Renson','Sibo',0),(2515462,1,NULL,'2022-10-21 00:00:00','present',54,1,1,'14:57:58','Stephen','Muita',0),(2515463,1,NULL,'2022-10-21 00:00:00','present',54,1,0,'14:59:18','Stephen','Muita',0),(2515464,1,NULL,'2022-10-21 00:00:00','present',78,1,1,'15:18:09','Renson','Sibo',0),(2515465,1,NULL,'2022-10-21 00:00:00','present',111,1,0,'14:18:19','Carol','Wanjiku',0),(2515466,1,NULL,'2022-10-21 00:00:00','present',110,1,1,'14:18:40','Ndolo','Mutisya',0),(2515467,1,NULL,'2022-10-21 00:00:00','present',110,1,0,'14:20:41','Ndolo','Mutisya',0),(2515468,1,NULL,'2022-10-21 00:00:00','present',109,1,0,'14:25:42','Moses','Mwaniki',0),(2515469,1,NULL,'2022-10-21 00:00:00','present',109,1,1,'14:31:33','Moses','Mwaniki',0),(2515470,1,NULL,'2022-10-21 00:00:00','present',109,1,0,'14:32:45','Moses','Mwaniki',0),(2515471,1,NULL,'2022-10-21 00:00:00','present',110,1,1,'15:15:47','Ndolo','Mutisya',0),(2515472,1,NULL,'2022-10-21 00:00:00','present',110,1,0,'15:17:01','Ndolo','Mutisya',0),(2515473,1,NULL,'2022-10-21 00:00:00','present',111,1,1,'15:45:45','Carol','Wanjiku',0),(2515474,1,NULL,'2022-10-21 00:00:00','present',111,1,0,'15:47:44','Carol','Wanjiku',0),(2515475,1,NULL,'2022-10-21 00:00:00','present',122,1,1,'14:49:57','Kevin','Wafula',0),(2515476,1,NULL,'2022-10-21 00:00:00','present',122,1,0,'14:50:51','Kevin','Wafula',0),(2515477,1,NULL,'2022-10-21 00:00:00','present',112,1,0,'15:17:54','Lazarus','Masika',0),(2515478,1,NULL,'2022-10-21 00:00:00','present',112,1,1,'15:18:15','Lazarus','Masika',0),(2515479,1,NULL,'2022-10-21 00:00:00','present',122,1,1,'16:04:24','Kevin','Wafula',0),(2515480,1,NULL,'2022-10-21 00:00:00','present',122,1,0,'16:05:05','Kevin','Wafula',0),(2515481,1,NULL,'2022-10-21 00:00:00','present',123,1,1,'15:56:22','Steve','Kiawa',0),(2515482,1,NULL,'2022-10-21 00:00:00','present',123,1,0,'16:03:01','Steve','Kiawa',0),(2544372,1,NULL,'2022-10-21 00:00:00','present',109,1,1,'16:32:16','Moses','Mwaniki',0),(2545452,1,NULL,'2022-10-21 00:00:00','present',109,1,0,'16:33:28','Moses','Mwaniki',0),(2562997,1,NULL,'2022-10-21 00:00:00','present',115,1,1,'16:45:53','Purity','Wanjiku',0),(2570927,1,NULL,'2022-10-21 00:00:00','present',95,1,1,'16:52:46','Faith','Kanyari',0),(2571050,1,NULL,'2022-10-21 00:00:00','present',95,1,0,'16:52:55','Faith','Kanyari',0),(2573778,1,NULL,'2022-10-21 00:00:00','present',54,1,1,'16:55:40','Stephen','Muita',0),(2578028,1,NULL,'2022-10-21 00:00:00','present',95,1,1,'16:59:58','Faith','Kanyari',0),(2582061,1,NULL,'2022-10-21 00:00:00','present',112,1,0,'17:04:00','Lazarus','Masika',0),(2588461,1,NULL,'2022-10-21 00:00:00','present',78,1,1,'17:10:19','Renson','Sibo',0),(2588462,1,NULL,'2022-10-21 00:00:00','present',112,1,1,'17:10:27','Lazarus','Masika',0),(2590281,1,NULL,'2022-10-21 00:00:00','present',111,1,1,'17:12:06','Carol','Wanjiku',0),(2607180,1,NULL,'2022-10-21 00:00:00','present',16,1,1,'17:21:34','Damaris','Mwende',0),(2607444,1,NULL,'2022-10-21 00:00:00','present',110,1,1,'17:21:56','Ndolo','Mutisya',0),(2622473,1,NULL,'2022-10-21 00:00:00','present',122,1,1,'17:36:26','Kevin','Wafula',0),(2662941,1,NULL,'2022-10-22 00:00:00','present',16,1,0,'08:12:24','Damaris','Mwende',0),(2662942,1,NULL,'2022-10-22 00:00:00','present',95,1,0,'08:17:42','Faith','Kanyari',0),(2662943,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'06:58:50','Angela','Wambui',0),(2662944,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'06:59:55','Angela','Wambui',0),(2662945,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'07:01:34','Angela','Wambui',0),(2662946,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'07:25:56','Angela','Wambui',0),(2662947,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'07:26:11','Angela','Wambui',0),(2662948,1,NULL,'2022-10-22 00:00:00','present',78,1,0,'08:09:47','Renson','Sibo',0),(2662949,1,NULL,'2022-10-22 00:00:00','present',111,1,0,'07:51:59','Carol','Wanjiku',0),(2662950,1,NULL,'2022-10-22 00:00:00','present',112,1,0,'08:25:34','Lazarus','Masika',0),(2663041,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'08:32:48','Angela','Wambui',0),(2663063,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'08:34:28','Angela','Wambui',0),(2663087,1,NULL,'2022-10-22 00:00:00','present',110,1,0,'08:35:01','Ndolo','Mutisya',0),(2663139,1,NULL,'2022-10-22 00:00:00','present',112,1,1,'08:36:53','Lazarus','Masika',0),(2663140,1,NULL,'2022-10-22 00:00:00','present',112,1,0,'08:37:01','Lazarus','Masika',0),(2663169,1,NULL,'2022-10-22 00:00:00','present',112,1,1,'08:38:22','Lazarus','Masika',0),(2663170,1,NULL,'2022-10-22 00:00:00','present',112,1,0,'08:38:29','Lazarus','Masika',0),(2663509,1,NULL,'2022-10-22 00:00:00','present',54,1,0,'08:48:40','Stephen','Muita',0),(2664157,1,NULL,'2022-10-22 00:00:00','present',78,1,1,'09:07:30','Renson','Sibo',0),(2664195,1,NULL,'2022-10-22 00:00:00','present',16,1,1,'09:08:24','Damaris','Mwende',0),(2664196,1,NULL,'2022-10-22 00:00:00','present',54,1,1,'09:08:01','Stephen','Muita',0),(2664197,1,NULL,'2022-10-22 00:00:00','present',112,1,1,'09:07:39','Lazarus','Masika',0),(2664371,1,NULL,'2022-10-22 00:00:00','present',16,1,0,'09:12:02','Damaris','Mwende',0),(2664647,1,NULL,'2022-10-22 00:00:00','present',111,1,1,'09:18:33','Carol','Wanjiku',0),(2664695,1,NULL,'2022-10-22 00:00:00','present',111,1,0,'09:18:40','Carol','Wanjiku',0),(2664745,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'09:19:58','Angela','Wambui',0),(2664797,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'09:21:26','Angela','Wambui',0),(2664959,1,NULL,'2022-10-22 00:00:00','present',111,1,1,'09:24:17','Carol','Wanjiku',0),(2664960,1,NULL,'2022-10-22 00:00:00','present',111,1,0,'09:24:25','Carol','Wanjiku',0),(2665423,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'09:32:19','Angela','Wambui',0),(2665483,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'09:32:34','Angela','Wambui',0),(2665917,1,NULL,'2022-10-22 00:00:00','present',54,1,0,'09:39:46','Stephen','Muita',0),(2666045,1,NULL,'2022-10-22 00:00:00','present',54,1,1,'09:42:03','Stephen','Muita',0),(2666046,1,NULL,'2022-10-22 00:00:00','present',54,1,0,'09:42:09','Stephen','Muita',0),(2666113,1,NULL,'2022-10-22 00:00:00','present',54,1,1,'09:42:53','Stephen','Muita',0),(2666148,1,NULL,'2022-10-22 00:00:00','present',110,1,1,'09:44:31','Ndolo','Mutisya',0),(2666184,1,NULL,'2022-10-22 00:00:00','present',54,1,0,'09:44:41','Stephen','Muita',0),(2666221,1,NULL,'2022-10-22 00:00:00','present',110,1,0,'09:45:54','Ndolo','Mutisya',0),(2666335,1,NULL,'2022-10-22 00:00:00','present',110,1,1,'09:48:44','Ndolo','Mutisya',0),(2666452,1,NULL,'2022-10-22 00:00:00','present',110,1,0,'09:52:31','Ndolo','Mutisya',0),(2666972,1,NULL,'2022-10-22 00:00:00','present',54,1,1,'10:04:48','Stephen','Muita',0),(2667218,1,NULL,'2022-10-22 00:00:00','present',95,1,1,'10:24:21','Faith','Kanyari',0),(2667219,1,NULL,'2022-10-22 00:00:00','present',95,1,0,'10:28:37','Faith','Kanyari',0),(2667220,1,NULL,'2022-10-22 00:00:00','present',16,1,1,'10:38:12','Damaris','Mwende',0),(2667221,1,NULL,'2022-10-22 00:00:00','present',16,1,0,'10:39:32','Damaris','Mwende',0),(2667222,1,NULL,'2022-10-22 00:00:00','present',16,1,1,'10:52:52','Damaris','Mwende',0),(2667223,1,NULL,'2022-10-22 00:00:00','present',16,1,0,'10:53:00','Damaris','Mwende',0),(2667224,1,NULL,'2022-10-22 00:00:00','present',16,1,1,'11:51:46','Damaris','Mwende',0),(2667225,1,NULL,'2022-10-22 00:00:00','present',16,1,0,'11:53:38','Damaris','Mwende',0),(2667226,1,NULL,'2022-10-22 00:00:00','present',95,1,1,'12:27:21','Faith','Kanyari',0),(2667227,1,NULL,'2022-10-22 00:00:00','present',95,1,0,'12:32:21','Faith','Kanyari',0),(2667228,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'11:38:07','Angela','Wambui',0),(2667229,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'11:40:14','Angela','Wambui',0),(2667230,1,NULL,'2022-10-22 00:00:00','present',54,1,0,'10:18:26','Stephen','Muita',0),(2667231,1,NULL,'2022-10-22 00:00:00','present',78,1,0,'10:39:10','Renson','Sibo',0),(2667232,1,NULL,'2022-10-22 00:00:00','present',78,1,1,'11:34:29','Renson','Sibo',0),(2667233,1,NULL,'2022-10-22 00:00:00','present',78,1,0,'11:39:59','Renson','Sibo',0),(2667234,1,NULL,'2022-10-22 00:00:00','present',111,1,1,'10:33:20','Carol','Wanjiku',0),(2667235,1,NULL,'2022-10-22 00:00:00','present',111,1,0,'10:34:51','Carol','Wanjiku',0),(2667236,1,NULL,'2022-10-22 00:00:00','present',110,1,1,'11:06:25','Ndolo','Mutisya',0),(2667237,1,NULL,'2022-10-22 00:00:00','present',110,1,0,'11:07:35','Ndolo','Mutisya',0),(2667238,1,NULL,'2022-10-22 00:00:00','present',111,1,1,'12:01:07','Carol','Wanjiku',0),(2667239,1,NULL,'2022-10-22 00:00:00','present',111,1,0,'12:02:20','Carol','Wanjiku',0),(2667240,1,NULL,'2022-10-22 00:00:00','present',112,1,0,'10:38:31','Lazarus','Masika',0),(2667241,1,NULL,'2022-10-22 00:00:00','present',112,1,1,'10:48:47','Lazarus','Masika',0),(2667242,1,NULL,'2022-10-22 00:00:00','present',112,1,0,'10:48:57','Lazarus','Masika',0),(2676854,1,NULL,'2022-10-22 00:00:00','present',78,1,1,'13:00:58','Renson','Sibo',0),(2676855,1,NULL,'2022-10-22 00:00:00','present',112,1,1,'13:01:03','Lazarus','Masika',0),(2680594,1,NULL,'2022-10-22 00:00:00','present',95,1,1,'13:10:14','Faith','Kanyari',0),(2681284,1,NULL,'2022-10-22 00:00:00','present',111,1,1,'13:11:49','Carol','Wanjiku',0),(2683174,1,NULL,'2022-10-22 00:00:00','present',111,1,0,'13:16:28','Carol','Wanjiku',0),(2685091,1,NULL,'2022-10-22 00:00:00','present',16,1,1,'13:20:57','Damaris','Mwende',0),(2686099,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'13:23:17','Angela','Wambui',0),(2686829,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'13:24:51','Angela','Wambui',0),(2688827,1,NULL,'2022-10-22 00:00:00','present',111,1,1,'13:29:24','Carol','Wanjiku',0),(2698877,1,NULL,'2022-10-22 00:00:00','present',110,1,1,'13:55:50','Ndolo','Mutisya',0),(2698878,1,NULL,'2022-10-22 00:00:00','present',110,1,0,'13:55:56','Ndolo','Mutisya',0),(2699108,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'13:56:21','Angela','Wambui',0),(2699420,1,NULL,'2022-10-22 00:00:00','present',54,1,1,'13:56:59','Stephen','Muita',0),(2699578,1,NULL,'2022-10-22 00:00:00','present',110,1,1,'13:57:23','Ndolo','Mutisya',0),(2699738,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'13:57:52','Angela','Wambui',0),(2699739,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'15:16:53','Angela','Wambui',0),(2699740,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'15:18:23','Angela','Wambui',0),(2699741,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'15:48:54','Angela','Wambui',0),(2699742,1,NULL,'2022-10-22 00:00:00','present',85,1,0,'15:52:13','Angela','Wambui',0),(2699743,1,NULL,'2022-10-22 00:00:00','present',85,1,1,'15:55:26','Angela','Wambui',0),(2699744,1,NULL,'2022-10-22 00:00:00','present',107,1,0,'14:27:08','Amina','Ali',0),(2699745,1,NULL,'2022-10-22 00:00:00','present',107,1,1,'16:31:57','Amina','Ali',0),(2699746,1,NULL,'2022-10-22 00:00:00','present',107,1,0,'16:34:11','Amina','Ali',0),(2699747,1,NULL,'2022-10-22 00:00:00','present',110,1,0,'13:58:20','Ndolo','Mutisya',0),(2699748,1,NULL,'2022-10-22 00:00:00','present',110,1,1,'13:59:32','Ndolo','Mutisya',0),(2730405,1,NULL,'2022-10-22 00:00:00','present',107,1,1,'18:46:59','Amina','Ali',0),(2731233,1,NULL,'2022-10-22 00:00:00','present',107,1,0,'18:48:28','Amina','Ali',0),(2743137,1,NULL,'2022-10-23 00:00:00','present',107,1,0,'06:52:43','Amina','Ali',0),(2743138,1,NULL,'2022-10-23 00:00:00','present',107,1,1,'09:00:43','Amina','Ali',0),(2743139,1,NULL,'2022-10-23 00:00:00','present',107,1,0,'09:10:13','Amina','Ali',0),(2743956,1,NULL,'2022-10-23 00:00:00','present',107,1,1,'13:41:17','Amina','Ali',0),(2744036,1,NULL,'2022-10-23 00:00:00','present',107,1,0,'13:44:42','Amina','Ali',0),(2745716,1,NULL,'2022-10-23 00:00:00','present',109,1,0,'14:40:57','Moses','Mwaniki',0),(2747786,1,NULL,'2022-10-23 00:00:00','present',107,1,1,'15:38:39','Amina','Ali',0),(2750768,1,NULL,'2022-10-23 00:00:00','present',109,1,1,'16:49:47','Moses','Mwaniki',0),(2750920,1,NULL,'2022-10-23 00:00:00','present',109,1,0,'16:52:57','Moses','Mwaniki',0),(2752072,1,NULL,'2022-10-23 00:00:00','present',109,1,1,'17:14:25','Moses','Mwaniki',0),(2752122,1,NULL,'2022-10-23 00:00:00','present',109,1,0,'17:15:15','Moses','Mwaniki',0),(2759008,1,NULL,'2022-10-23 00:00:00','present',109,1,1,'18:59:48','Moses','Mwaniki',0),(2759080,1,NULL,'2022-10-23 00:00:00','present',109,1,0,'19:00:40','Moses','Mwaniki',0),(2768973,1,NULL,'2022-10-23 00:00:00','present',109,1,1,'21:07:51','Moses','Mwaniki',0),(2783393,1,NULL,'2022-10-24 00:00:00','present',122,1,0,'06:23:07','Kevin','Wafula',0),(2783793,1,NULL,'2022-10-24 00:00:00','present',107,1,0,'07:05:27','Amina','Ali',0),(2784283,1,NULL,'2022-10-24 00:00:00','present',107,1,1,'07:30:31','Amina','Ali',0),(2784295,1,NULL,'2022-10-24 00:00:00','present',107,1,0,'07:30:56','Amina','Ali',0);

/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `biometric_devices`

--



DROP TABLE IF EXISTS `biometric_devices`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `biometric_devices` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `branch_id` int unsigned NOT NULL,

  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  KEY `biometric_devices_branch_id_index` (`branch_id`),

  CONSTRAINT `biometric_devices_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE

) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `biometric_devices`

--



LOCK TABLES `biometric_devices` WRITE;

/*!40000 ALTER TABLE `biometric_devices` DISABLE KEYS */;

INSERT INTO `biometric_devices` VALUES (1,1,'10.5.0.54','2022-10-21 14:48:32','2022-10-21 14:48:32');

/*!40000 ALTER TABLE `biometric_devices` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `branches`

--



DROP TABLE IF EXISTS `branches`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `branches` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `status` tinyint(1) NOT NULL DEFAULT '1',

  `timing_start` time DEFAULT NULL,

  `timing_off` time DEFAULT NULL,

  `weekend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `branches`

--



LOCK TABLES `branches` WRITE;

/*!40000 ALTER TABLE `branches` DISABLE KEYS */;

INSERT INTO `branches` VALUES (1,'HQ, Ngara',1,'14:00:00','22:00:00','[\"Saturday\",\"Sunday\"]','YTL(Tigoni) Centre, Ngara Road, Nairobi',NULL,'2022-10-07 16:04:45','2022-10-07 16:04:45'),(2,'Garrisa',1,'09:00:00','18:00:00','[\"Sunday\"]','Garrisa',NULL,'2022-10-07 16:04:45','2022-10-07 16:04:45'),(3,'Embu',1,'09:00:00','18:00:00','[\"Sunday\"]','Embu',NULL,'2022-10-07 16:04:45','2022-10-07 16:04:45'),(4,'Wajir',1,'09:00:00','18:00:00','[\"Sunday\"]','Wajir',NULL,'2022-10-07 16:04:46','2022-10-07 16:04:46'),(5,'Home',1,NULL,NULL,NULL,'Home',NULL,'2022-10-07 16:49:55','2022-10-07 16:49:55'),(6,'Mandera',1,NULL,NULL,NULL,'Mandera / Wajir Roa',NULL,'2022-10-09 11:18:38','2022-10-09 11:26:20');

/*!40000 ALTER TABLE `branches` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `contracts`

--



DROP TABLE IF EXISTS `contracts`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `contracts` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `staff_id` int unsigned DEFAULT NULL,

  `start_date` date NOT NULL,

  `end_date` date NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  KEY `contracts_staff_id_foreign` (`staff_id`),

  CONSTRAINT `contracts_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE

) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `contracts`

--



LOCK TABLES `contracts` WRITE;

/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;

INSERT INTO `contracts` VALUES (1,5,'2022-10-19','2022-12-31','2022-10-19 23:38:01','2022-10-19 23:38:01');

/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `departments`

--



DROP TABLE IF EXISTS `departments`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `departments` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `status` int NOT NULL DEFAULT '1',

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `departments`

--



LOCK TABLES `departments` WRITE;

/*!40000 ALTER TABLE `departments` DISABLE KEYS */;

INSERT INTO `departments` VALUES (1,'HR',1,'2022-10-07 16:04:46','2022-10-07 16:04:46'),(2,'Accounts',1,'2022-10-07 16:04:46','2022-10-07 16:04:46'),(3,'Sales',1,'2022-10-07 16:04:47','2022-10-07 16:04:47'),(4,'IT',1,'2022-10-07 16:04:47','2022-10-07 16:04:47'),(5,'Customer service',1,'2022-10-07 16:49:41','2022-10-07 16:49:41'),(6,'RnD',1,'2022-10-09 11:26:52','2022-10-09 11:26:52');

/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `designations`

--



DROP TABLE IF EXISTS `designations`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `designations` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `designation_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `status` int NOT NULL DEFAULT '1',

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `designations`

--



LOCK TABLES `designations` WRITE;

/*!40000 ALTER TABLE `designations` DISABLE KEYS */;

INSERT INTO `designations` VALUES (1,'CEO',1,NULL,NULL),(2,'Project Coordinator',1,NULL,NULL),(3,'Developer',1,NULL,NULL),(5,'Sales Officer',1,NULL,NULL),(6,'Customer Care Representative',1,NULL,NULL),(7,'Digital Marketing Executive',1,NULL,NULL),(8,'Account Sales Executive',1,NULL,NULL),(9,'Content Writer',1,NULL,NULL),(10,'Digital Marketer',1,NULL,NULL),(11,'HR Manager',1,NULL,NULL),(12,'HR Officer',1,NULL,NULL),(13,'Admin',1,NULL,NULL);

/*!40000 ALTER TABLE `designations` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `documents`

--



DROP TABLE IF EXISTS `documents`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `documents` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `status` tinyint(1) NOT NULL DEFAULT '1',

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `documents`

--



LOCK TABLES `documents` WRITE;

/*!40000 ALTER TABLE `documents` DISABLE KEYS */;

INSERT INTO `documents` VALUES (1,'handbook.pdf','handbook.pdf',1,'2022-10-07 16:04:45','2022-10-07 16:04:45'),(2,'handbook2.pdf','handbook2.pdf',1,'2022-10-07 16:04:45','2022-10-07 16:04:45');

/*!40000 ALTER TABLE `documents` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `job_applications`

--



DROP TABLE IF EXISTS `job_applications`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `job_applications` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `job_title` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `job_description` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `job_position` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `job_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `start_date` datetime NOT NULL,

  `end_date` datetime NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  `is_published` tinyint(1) NOT NULL DEFAULT '0',

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `job_applications`

--



LOCK TABLES `job_applications` WRITE;

/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;

INSERT INTO `job_applications` VALUES (1,'Customer Service Job','Service','Customer Service','none','2022-10-07 00:00:00','2022-10-27 00:00:00','2022-10-07 16:35:07','2022-10-07 16:35:07',0),(2,'Gamer','Gaming expert','Gaming expert','http://dev-demo.afriqnetworks.co.ke/','2020-09-01 00:00:00','2021-02-01 00:00:00','2022-10-09 10:52:38','2022-10-09 10:52:38',0),(3,'Sales','Sales team','Sales team','https://dev-demo.afriqnetworks.co.ke/','2022-10-20 00:00:00','2022-09-25 00:00:00','2022-10-19 23:10:22','2022-10-19 23:10:22',1);

/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `jobs`

--



DROP TABLE IF EXISTS `jobs`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `jobs` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `description` text COLLATE utf8mb4_unicode_ci,

  `branch_id` int NOT NULL,

  `designation_id` int NOT NULL,

  `department_id` int NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `jobs`

--



LOCK TABLES `jobs` WRITE;

/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;

/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `jobs_queue`

--



DROP TABLE IF EXISTS `jobs_queue`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `jobs_queue` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,

  `attempts` tinyint unsigned NOT NULL,

  `reserved_at` int unsigned DEFAULT NULL,

  `available_at` int unsigned NOT NULL,

  `created_at` int unsigned NOT NULL,

  PRIMARY KEY (`id`),

  KEY `jobs_queue_queue_index` (`queue`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `jobs_queue`

--



LOCK TABLES `jobs_queue` WRITE;

/*!40000 ALTER TABLE `jobs_queue` DISABLE KEYS */;

/*!40000 ALTER TABLE `jobs_queue` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `leave_types`

--



DROP TABLE IF EXISTS `leave_types`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `leave_types` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `count` int NOT NULL DEFAULT '12',

  `status` int NOT NULL DEFAULT '0',

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `leave_types`

--



LOCK TABLES `leave_types` WRITE;

/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;

INSERT INTO `leave_types` VALUES (1,'Annual',20,1,'2022-10-07 16:04:45','2022-10-09 11:35:57'),(2,'Sick Leaves',14,1,'2022-10-07 16:04:45','2022-10-09 11:34:02'),(3,'Casual Leaves',7,1,'2022-10-07 16:04:45','2022-10-07 16:04:45'),(4,'Maternity',90,1,'2022-10-07 16:04:45','2022-10-07 16:04:45'),(5,'Partenity',14,1,'2022-10-07 16:04:45','2022-10-07 16:04:45');

/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `leaves`

--



DROP TABLE IF EXISTS `leaves`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `leaves` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `staff_id` int NOT NULL,

  `leave_type` int unsigned NOT NULL,

  `datefrom` datetime DEFAULT NULL,

  `dateto` datetime DEFAULT NULL,

  `cc_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `point_of_contact` int NOT NULL DEFAULT '0',

  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,

  `line_manager` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `leaves`

--



LOCK TABLES `leaves` WRITE;

/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;

INSERT INTO `leaves` VALUES (4,1,2,'2022-10-03 00:00:00','2022-10-05 00:00:00','sejoweto@mailinator.com',2,'Hello','4','Helo','pending','2022-10-03 12:09:39','2022-10-03 12:09:39'),(5,1,2,'2022-10-04 00:00:00','2022-10-19 00:00:00','sejoweto@mailinator.com',2,'Hello','4','Hello','approved','2022-10-03 12:16:45','2022-10-03 12:46:26'),(6,1,3,'2022-10-04 00:00:00','2022-10-04 00:00:00','hr@gmail.com',6,'Test','2','Hello','approved','2022-10-03 12:48:57','2022-10-03 12:49:17'),(7,1,3,'2022-10-04 00:00:00','2022-10-12 00:00:00','sejoweto@mailinator.com',4,'remaining count','6','remaining count','approved','2022-10-03 12:56:57','2022-10-03 13:07:40'),(8,1,3,'2022-10-04 00:00:00','2022-10-05 00:00:00','sejoweto@mailinator.com',2,'Hell','4','Hello','approved','2022-10-03 13:03:37','2022-10-03 13:07:28'),(9,1,3,'2022-10-03 00:00:00','2022-10-26 00:00:00','hr@gmail.com',6,'Hellp','2','Hello','declined','2022-10-03 13:09:28','2022-10-03 13:10:42'),(10,1,3,'2022-10-04 00:00:00','2022-10-27 00:00:00','ceky@mailinator.com',1,'declined.','5','declined','declined','2022-10-03 13:18:31','2022-10-03 13:18:57'),(11,1,3,'2022-10-03 00:00:00','2022-10-07 00:00:00','jamiv@mailinator.com',7,'hospital visit','6','new leave','approved','2022-10-03 14:33:05','2022-10-03 14:33:23'),(12,1,3,'2022-10-03 00:00:00','2022-10-04 00:00:00','sejoweto@mailinator.com',2,'Leave','2','leave','approved','2022-10-03 14:56:21','2022-10-03 14:56:43'),(13,1,1,'2022-10-18 00:00:00','2022-10-27 00:00:00','stevemuema@gmail.com',1,'Test','2','leave test','pending','2022-10-17 19:27:28','2022-10-17 19:27:28');

/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `migrations`

--



DROP TABLE IF EXISTS `migrations`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `migrations` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `batch` int NOT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `migrations`

--



LOCK TABLES `migrations` WRITE;

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2018_01_01_000000_create_action_events_table',1),(3,'2018_02_06_074222_create_job_table',1),(4,'2018_04_18_144447_create_documents_table',1),(5,'2018_04_21_145717_create_leaves_table',1),(6,'2018_04_25_110113_create_monthly_salaries_table',1),(7,'2019_04_30_150259_create_nova_mail_templates_table',1),(8,'2019_04_30_150359_create_nova_sent_mails_table',1),(9,'2019_05_10_000000_add_fields_to_action_events_table',1),(10,'2019_08_28_150259_create_nova_mail_events_table',1),(11,'2019_12_14_000001_create_personal_access_tokens_table',1),(12,'2020_09_16_025052_add_mail_event_id_column_to_sent_mails_table',1),(13,'2020_09_16_081742_alter_clolumn_sender_id_on_sent_mails',1),(14,'2020_09_19_193641_create_permission_tables',1),(15,'2020_09_22_124225_add_user_id_column_to_nova_mail_templates_table',1),(16,'2020_09_27_203047_add_send_delay_in_minutes_column_to_nova_mail_templates_table',1),(17,'2020_09_27_211436_add_send_delay_in_minutes_column_to_nova_sent_mails_table',1),(18,'2021_08_25_193039_create_nova_notifications_table',1),(19,'2022_04_26_000000_add_fields_to_nova_notifications_table',1),(20,'2022_09_19_150012_create_jobs_queue_table',1),(21,'2022_09_19_152616_create_staff_table',1),(22,'2022_09_19_173408_create_branches_table',1),(23,'2022_09_19_180154_create_leave_types_table',1),(24,'2022_09_19_185808_create_staff_leave_type_table',1),(25,'2022_09_19_191301_create_organization_hierarchies_table',1),(26,'2022_09_20_141830_create_designations_table',1),(27,'2022_09_20_145356_create_departments_table',1),(28,'2022_09_20_153109_add_weekend_to_branches_table',1),(29,'2022_09_20_193826_create_teams_table',1),(30,'2022_09_20_204612_create_team_members_table',1),(31,'2022_09_20_211148_create_staff_timings_table',1),(32,'2022_09_21_00335_create_attendance_breaks_table',1),(33,'2022_09_21_01537_add_gender_to_staff_table',1),(34,'2022_09_21_0621624_create_attendance_corrections_table',1),(35,'2022_09_21_062282_create_settings_table',1),(36,'2022_09_21_063322_create_salaries_table',1),(37,'2022_09_21_192709_add_status_to_teams_table',1),(38,'2022_09_23_085109_create_payrolls_table',1),(39,'2022_09_25_145034_create_attendances_table',1),(40,'2022_09_25_145035_create_attendance_summaries_table',1),(41,'2022_09_25_184925_add_description_to_attendances_table',1),(42,'2022_09_25_201252_add_timestamp_in_and_timestamp_out_in_attendance_table',1),(43,'2022_09_25_202329_add_first_timestamp_in_and_last_timestamp_out_to_attendance_summary_table',1),(44,'2022_09_27_065002_create_job_applications_table',1),(45,'2022_09_27_065430_create_applicants_table',1),(46,'2022_09_27_101857_add_applicant_cv_column',1),(47,'2022_10_05_103537_create_work_shifts_table',1),(48,'2022_10_05_121709_create_staff_work_shift',1),(49,'2022_10_12_113927_add_designation_relationship',2),(50,'2022_10_18_154059_add_is_published_column',3),(51,'2022_10_19_115811_create_contracts_table',3),(52,'2022_10_20_191038_create_biometric_devices_table',4);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `model_has_permissions`

--



DROP TABLE IF EXISTS `model_has_permissions`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `model_has_permissions` (

  `permission_id` bigint unsigned NOT NULL,

  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `model_id` bigint unsigned NOT NULL,

  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),

  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),

  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `model_has_permissions`

--



LOCK TABLES `model_has_permissions` WRITE;

/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;

INSERT INTO `model_has_permissions` VALUES (1,'App\\Models\\Staff',2),(2,'App\\Models\\Staff',2),(3,'App\\Models\\Staff',2),(4,'App\\Models\\Staff',2),(5,'App\\Models\\Staff',2),(6,'App\\Models\\Staff',2),(7,'App\\Models\\Staff',2),(8,'App\\Models\\Staff',2),(9,'App\\Models\\Staff',2),(10,'App\\Models\\Staff',2),(11,'App\\Models\\Staff',2),(12,'App\\Models\\Staff',2),(13,'App\\Models\\Staff',2),(14,'App\\Models\\Staff',2),(15,'App\\Models\\Staff',2),(16,'App\\Models\\Staff',2),(17,'App\\Models\\Staff',2),(18,'App\\Models\\Staff',2),(19,'App\\Models\\Staff',2),(20,'App\\Models\\Staff',2),(21,'App\\Models\\Staff',2),(22,'App\\Models\\Staff',2),(23,'App\\Models\\Staff',2),(24,'App\\Models\\Staff',2),(25,'App\\Models\\Staff',2);

/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `model_has_roles`

--



DROP TABLE IF EXISTS `model_has_roles`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `model_has_roles` (

  `role_id` bigint unsigned NOT NULL,

  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `model_id` bigint unsigned NOT NULL,

  PRIMARY KEY (`role_id`,`model_id`,`model_type`),

  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),

  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `model_has_roles`

--



LOCK TABLES `model_has_roles` WRITE;

/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;

INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\Staff',1),(2,'App\\Models\\Staff',2);

/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `monthly_salaries`

--



DROP TABLE IF EXISTS `monthly_salaries`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `monthly_salaries` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `staff_id` int NOT NULL,

  `bonus` int NOT NULL DEFAULT '0',

  `gross_salary` int NOT NULL,

  `leave_deduction` int NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `monthly_salaries`

--



LOCK TABLES `monthly_salaries` WRITE;

/*!40000 ALTER TABLE `monthly_salaries` DISABLE KEYS */;

/*!40000 ALTER TABLE `monthly_salaries` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `nova_mail_events`

--



DROP TABLE IF EXISTS `nova_mail_events`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `nova_mail_events` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `mail_template_id` bigint unsigned NOT NULL,

  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `column` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `user_id` bigint unsigned NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `nova_mail_events`

--



LOCK TABLES `nova_mail_events` WRITE;

/*!40000 ALTER TABLE `nova_mail_events` DISABLE KEYS */;

INSERT INTO `nova_mail_events` VALUES (1,1,'App\\Models\\Applicant','Applied Mail Event','status','applied',1,'2022-10-07 16:52:25','2022-10-07 16:52:25');

/*!40000 ALTER TABLE `nova_mail_events` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `nova_mail_templates`

--



DROP TABLE IF EXISTS `nova_mail_templates`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `nova_mail_templates` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  `user_id` bigint unsigned DEFAULT NULL,

  `send_delay_in_minutes` int DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `nova_mail_templates`

--



LOCK TABLES `nova_mail_templates` WRITE;

/*!40000 ALTER TABLE `nova_mail_templates` DISABLE KEYS */;

INSERT INTO `nova_mail_templates` VALUES (1,'Applied Mail Template','Thank you for applying to Afriq Networks','Dear John Doe,\r\n\r\nThank you for your interest in joining Afriq Networks! We know you have many options so we appreciate you taking the time to apply.\r\n\r\nWhat happens next? The Talent Acquisition team will review your resume with the hiring team over the next few days and if there is a fit, we will reach out to you. If we don\'t have an open role that aligns at this time, please continue to apply to other roles in the future.\r\n\r\nWe hope you and your loved ones are staying happy, healthy, and safe.\r\n\r\nBest regards,\r\n\r\nTalent Acquisition Team Afriq Networks','2022-10-07 16:51:51','2022-10-07 16:51:51',1,0);

/*!40000 ALTER TABLE `nova_mail_templates` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `nova_notifications`

--



DROP TABLE IF EXISTS `nova_notifications`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `nova_notifications` (

  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,

  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `notifiable_id` bigint unsigned NOT NULL,

  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `read_at` timestamp NULL DEFAULT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  `deleted_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  KEY `nova_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `nova_notifications`

--



LOCK TABLES `nova_notifications` WRITE;

/*!40000 ALTER TABLE `nova_notifications` DISABLE KEYS */;

/*!40000 ALTER TABLE `nova_notifications` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `nova_sent_mails`

--



DROP TABLE IF EXISTS `nova_sent_mails`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `nova_sent_mails` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `mail_template_id` bigint unsigned DEFAULT NULL,

  `mailable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `mailable_id` bigint unsigned NOT NULL,

  `sender_id` bigint unsigned DEFAULT NULL,

  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `content` longtext COLLATE utf8mb4_unicode_ci,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  `mail_event_id` bigint unsigned DEFAULT NULL,

  `send_delay_in_minutes` int DEFAULT NULL,

  PRIMARY KEY (`id`),

  KEY `nova_sent_mails_mailable_type_mailable_id_index` (`mailable_type`,`mailable_id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `nova_sent_mails`

--



LOCK TABLES `nova_sent_mails` WRITE;

/*!40000 ALTER TABLE `nova_sent_mails` DISABLE KEYS */;

/*!40000 ALTER TABLE `nova_sent_mails` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `organization_hierarchies`

--



DROP TABLE IF EXISTS `organization_hierarchies`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `organization_hierarchies` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `staff_id` int DEFAULT NULL,

  `line_manager_id` int DEFAULT NULL,

  `parent_id` int DEFAULT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `organization_hierarchies`

--



LOCK TABLES `organization_hierarchies` WRITE;

/*!40000 ALTER TABLE `organization_hierarchies` DISABLE KEYS */;

/*!40000 ALTER TABLE `organization_hierarchies` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `password_resets`

--



DROP TABLE IF EXISTS `password_resets`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `password_resets` (

  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  KEY `password_resets_email_index` (`email`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `password_resets`

--



LOCK TABLES `password_resets` WRITE;

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;

/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `payrolls`

--



DROP TABLE IF EXISTS `payrolls`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `payrolls` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `payrolls`

--



LOCK TABLES `payrolls` WRITE;

/*!40000 ALTER TABLE `payrolls` DISABLE KEYS */;

/*!40000 ALTER TABLE `payrolls` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `permissions`

--



DROP TABLE IF EXISTS `permissions`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `permissions` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)

) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `permissions`

--



LOCK TABLES `permissions` WRITE;

/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` VALUES (1,'Laravel\\Nova\\Http\\Controllers\\ImpersonateController:startImpersonating','web','2022-10-07 16:04:35','2022-10-07 16:04:35'),(2,'Laravel\\Nova\\Http\\Controllers\\ImpersonateController:stopImpersonating','web','2022-10-07 16:04:35','2022-10-07 16:04:35'),(3,'Laravel\\Nova\\Http\\Controllers\\TrixAttachmentController:store','web','2022-10-07 16:04:35','2022-10-07 16:04:35'),(4,'Laravel\\Nova\\Http\\Controllers\\TrixAttachmentController:destroyAttachment','web','2022-10-07 16:04:35','2022-10-07 16:04:35'),(5,'Laravel\\Nova\\Http\\Controllers\\TrixAttachmentController:destroyPending','web','2022-10-07 16:04:35','2022-10-07 16:04:35'),(6,'Laravel\\Nova\\Http\\Controllers\\CreationFieldController:sync','web','2022-10-07 16:04:35','2022-10-07 16:04:35'),(7,'Laravel\\Nova\\Http\\Controllers\\UpdateFieldController:sync','web','2022-10-07 16:04:35','2022-10-07 16:04:35'),(8,'Laravel\\Nova\\Http\\Controllers\\CreationPivotFieldController:sync','web','2022-10-07 16:04:35','2022-10-07 16:04:35'),(9,'Laravel\\Nova\\Http\\Controllers\\UpdatePivotFieldController:sync','web','2022-10-07 16:04:35','2022-10-07 16:04:35'),(10,'Laravel\\Nova\\Http\\Controllers\\ActionController:index','web','2022-10-07 16:04:36','2022-10-07 16:04:36'),(11,'Laravel\\Nova\\Http\\Controllers\\ActionController:store','web','2022-10-07 16:04:36','2022-10-07 16:04:36'),(12,'Laravel\\Nova\\Http\\Controllers\\ActionController:sync','web','2022-10-07 16:04:37','2022-10-07 16:04:37'),(13,'Laravel\\Nova\\Http\\Controllers\\LensController:index','web','2022-10-07 16:04:37','2022-10-07 16:04:37'),(14,'Laravel\\Nova\\Http\\Controllers\\LensController:show','web','2022-10-07 16:04:37','2022-10-07 16:04:37'),(15,'Laravel\\Nova\\Http\\Controllers\\LensActionController:index','web','2022-10-07 16:04:37','2022-10-07 16:04:37'),(16,'Laravel\\Nova\\Http\\Controllers\\LensActionController:store','web','2022-10-07 16:04:37','2022-10-07 16:04:37'),(17,'Laravel\\Nova\\Http\\Controllers\\LensActionController:sync','web','2022-10-07 16:04:37','2022-10-07 16:04:37'),(18,'Laravel\\Nova\\Http\\Controllers\\LensFilterController:index','web','2022-10-07 16:04:37','2022-10-07 16:04:37'),(19,'Laravel\\Nova\\Http\\Controllers\\MetricController:index','web','2022-10-07 16:04:37','2022-10-07 16:04:37'),(20,'Laravel\\Nova\\Http\\Controllers\\MetricController:show','web','2022-10-07 16:04:38','2022-10-07 16:04:38'),(21,'Laravel\\Nova\\Http\\Controllers\\LensMetricController:index','web','2022-10-07 16:04:38','2022-10-07 16:04:38'),(22,'Laravel\\Nova\\Http\\Controllers\\LensMetricController:show','web','2022-10-07 16:04:38','2022-10-07 16:04:38'),(23,'Laravel\\Sanctum\\Http\\Controllers\\CsrfCookieController:show','web','2022-10-07 16:04:38','2022-10-07 16:04:38'),(24,'Laravel\\Nova\\Http\\Controllers\\LoginController:showLoginForm','web','2022-10-07 16:04:38','2022-10-07 16:04:38'),(25,'Laravel\\Nova\\Http\\Controllers\\LoginController:login','web','2022-10-07 16:04:38','2022-10-07 16:04:38'),(26,'Laravel\\Nova\\Http\\Controllers\\LoginController:logout','web','2022-10-07 16:04:38','2022-10-07 16:04:38'),(27,'Laravel\\Nova\\Http\\Controllers\\ForgotPasswordController:showLinkRequestForm','web','2022-10-07 16:04:39','2022-10-07 16:04:39'),(28,'Laravel\\Nova\\Http\\Controllers\\ForgotPasswordController:sendResetLinkEmail','web','2022-10-07 16:04:39','2022-10-07 16:04:39'),(29,'Laravel\\Nova\\Http\\Controllers\\ResetPasswordController:showResetForm','web','2022-10-07 16:04:39','2022-10-07 16:04:39'),(30,'Laravel\\Nova\\Http\\Controllers\\ResetPasswordController:reset','web','2022-10-07 16:04:39','2022-10-07 16:04:39'),(31,'Api\\AttendanceController:cloackingData','web','2022-10-07 16:04:39','2022-10-07 16:04:39'),(32,'Api\\AttendanceController:attendanceSummary','web','2022-10-07 16:04:39','2022-10-07 16:04:39');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `personal_access_tokens`

--



DROP TABLE IF EXISTS `personal_access_tokens`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `personal_access_tokens` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `tokenable_id` bigint unsigned NOT NULL,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,

  `abilities` text COLLATE utf8mb4_unicode_ci,

  `last_used_at` timestamp NULL DEFAULT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),

  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `personal_access_tokens`

--



LOCK TABLES `personal_access_tokens` WRITE;

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;

/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `role_has_permissions`

--



DROP TABLE IF EXISTS `role_has_permissions`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `role_has_permissions` (

  `permission_id` bigint unsigned NOT NULL,

  `role_id` bigint unsigned NOT NULL,

  PRIMARY KEY (`permission_id`,`role_id`),

  KEY `role_has_permissions_role_id_foreign` (`role_id`),

  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,

  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `role_has_permissions`

--



LOCK TABLES `role_has_permissions` WRITE;

/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;

INSERT INTO `role_has_permissions` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2);

/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `roles`

--



DROP TABLE IF EXISTS `roles`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `roles` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)

) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `roles`

--



LOCK TABLES `roles` WRITE;

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` VALUES (1,'admin','web','2022-10-07 16:04:39','2022-10-07 16:04:39'),(2,'HR Manager','web','2022-10-07 16:04:40','2022-10-07 16:04:40');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `salaries`

--



DROP TABLE IF EXISTS `salaries`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `salaries` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `gross_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `basic_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `hardship_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `medical_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `special_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `commuter_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `paye_deduction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `staff_id` int unsigned NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  KEY `salaries_staff_id_foreign` (`staff_id`),

  CONSTRAINT `salaries_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE

) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `salaries`

--



LOCK TABLES `salaries` WRITE;

/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;

INSERT INTO `salaries` VALUES (1,'10000','10000','200','200','200','200','200',1,'2022-10-07 16:54:25','2022-10-07 16:54:25');

/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `settings`

--



DROP TABLE IF EXISTS `settings`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `settings` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `hr_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `settings`

--



LOCK TABLES `settings` WRITE;

/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `staff`

--



DROP TABLE IF EXISTS `staff`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `staff` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `personal_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `identity_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `date_of_birth` date DEFAULT NULL,

  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `emergency_contact_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `emergency_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `emergency_contact_address` text COLLATE utf8mb4_unicode_ci,

  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `current_address` text COLLATE utf8mb4_unicode_ci,

  `permanent_address` text COLLATE utf8mb4_unicode_ci,

  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'office' COMMENT 'work from remote/office',

  `status` int NOT NULL DEFAULT '1',

  `staff_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `joining_date` date DEFAULT NULL,

  `exit_date` date DEFAULT NULL,

  `gross_salary` int DEFAULT '0',

  `bonus` int DEFAULT '0',

  `branch_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',

  `is_admin` int NOT NULL DEFAULT '0',

  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

  `deleted_at` timestamp NULL DEFAULT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  `designation_id` int unsigned DEFAULT NULL,

  `contract_id` int unsigned NOT NULL DEFAULT '1',

  PRIMARY KEY (`id`),

  UNIQUE KEY `staff_email_unique` (`email`),

  UNIQUE KEY `staff_personal_email_unique` (`personal_email`),

  KEY `staff_designation_id_foreign` (`designation_id`),

  CONSTRAINT `staff_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE

) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `staff`

--



LOCK TABLES `staff` WRITE;

/*!40000 ALTER TABLE `staff` DISABLE KEYS */;

INSERT INTO `staff` VALUES (1,'Admin','','0123456789','admin@gmail.com','admin@gmail.com','1320245699852','1978-09-19',NULL,'brother','0123456789',NULL,'$2y$10$biKq5AXsGtxhkEo4pccwhew8X2a8mktxgcycR/j2HqIdevyUP/tr.',NULL,NULL,'Nairobi','admin','office',0,NULL,NULL,'2021-08-23',NULL,0,0,'1',1,NULL,'aprqfXOQdCrrNEkGWUqN8wuZlRVt6DVo42x7kzw39llnVW6ie0pqlfyVWO5W',NULL,'2022-10-07 16:04:42','2022-10-07 16:04:42',NULL,0),(2,'Hr','Manager','0123456789','hr@gmail.com','hr@gmail.com','1320245699855','1988-09-19',NULL,'brother','0123456789','home','$2y$10$g1gWGDE9yWyDRwHJXz7kUuiLO8bQdYtRsq8lBllt7ix/bmyw4u1Zi','home','home','Nairobi','HR Manager','office',1,NULL,NULL,'2021-08-23',NULL,20000,0,'1',0,'1',NULL,NULL,'2022-10-07 16:04:42','2022-10-11 17:07:46',NULL,0),(3,'user','','0726076333','user@gmail.com','user@gmail.com','1320245699855','1978-09-19',NULL,'brother','0726076333',NULL,'$2y$10$gvJKuEgaXf0qc7UCwfm0ousqt32bgFsFeLt.jf4SR5YhIYrAbZbDO',NULL,NULL,'Nairobi','Sales','office',1,'permanent',NULL,'2021-08-23','2022-10-12',20000,0,'1',0,'2',NULL,NULL,'2022-10-07 16:04:45','2022-10-12 16:12:35',NULL,0),(4,'Steve','Muema','254712345678','stevemuema@gmail.com','steve@gmail.com','292933930','2022-10-07','male','Brother','254712345676','Nairobi','$2y$10$fx7X4qDb16NLsGIrSktiAO5rE/1Yxn0PiHNF82Kik8awcuSacPRkO','Nairobi','Nairobi','Nairobi','Here','office',1,'0','mUuwnmWg2XVJ0orOf0DFJkyhODF8RVCDaRgLRp5W.jpg','2022-10-07',NULL,0,0,'3',0,'4',NULL,NULL,'2022-10-07 16:33:04','2022-10-07 16:33:04',NULL,0),(5,'Kamau','Njoroge','254715157766','ricreatek@gmail.com','ricreatek@gmail.com','2777777777777777','2022-10-31','male','Father','0715157766','Kapsabet','$2y$10$6rFYI6MgKXaXd3PulnCq6ezNMC.31U/6mxA6XORD8bjtDn32xHLFS','Ngara','Ngara','Nairobi','Watchman','office',-2,'1','qGp0WDeSIU9AUWHdPKuCh8Rq75ioNG8o3tsCG77l.jpg','2022-12-31','2021-06-01',0,0,'1',0,'4',NULL,NULL,'2022-10-09 10:44:15','2022-10-11 17:04:54',NULL,0),(6,'Kyle','Delacruz','Voluptatem Fugiat n','fygedokupo@mailinator.com','qabyhum@mailinator.com','Mollit rerum in haru','1986-02-07','female','Impedit esse et fu','90','Expedita culpa cum q','$2y$10$TiN3Os.4kcXFkwRCvNm6Xuh2XCDSo4iREp9VKTJ4G3TQu3SwYFcv.','Ipsum voluptas qui d','Nostrud voluptatem','Officia dolore quis',NULL,'remote',36,'1',NULL,'1980-09-06','1986-01-24',0,0,'3',0,'4','X3XKHsqPsqzX0CRKPXq2LQ1CoP5dj03XV5AzoFbrS2rgUzKjbvCXVJhKmdTd',NULL,'2022-10-13 09:46:30','2022-10-13 09:46:30',8,0),(7,'Test Contract','Test Contract','0726076333','peter@afriq.com','g.nanguti@gmail.com','2344556','2000-05-24','female','0726076333','0726076333','0773240657','$2y$10$bDoerAfxB1hc2mrJG4SG5uFyMJ5Pa.q1cIi5hQuNMgMKEvDOmH4j6','0773240657','0773240657','Nairobi',NULL,'remote',1,'0','goLksfKLmoMov1stZWxdwgI1ho8cMnoWWiKn6VGK.webp','2022-10-24',NULL,0,0,'2',0,'5',NULL,NULL,'2022-10-24 07:06:56','2022-10-24 07:06:56',11,1);

/*!40000 ALTER TABLE `staff` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `staff_leave_type`

--



DROP TABLE IF EXISTS `staff_leave_type`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `staff_leave_type` (

  `staff_id` int unsigned NOT NULL,

  `leave_type_id` int unsigned NOT NULL,

  `count` int DEFAULT NULL,

  `remaining_count` tinyint unsigned NOT NULL,

  `leave_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,

  `status` int NOT NULL DEFAULT '0',

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  `id` tinyint DEFAULT NULL,

  PRIMARY KEY (`staff_id`,`leave_type_id`),

  KEY `staff_leave_type_staff_id_index` (`staff_id`),

  KEY `staff_leave_type_leave_type_id_index` (`leave_type_id`),

  CONSTRAINT `staff_leave_type_leave_type_id_foreign` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,

  CONSTRAINT `staff_leave_type_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `staff_leave_type`

--



LOCK TABLES `staff_leave_type` WRITE;

/*!40000 ALTER TABLE `staff_leave_type` DISABLE KEYS */;

INSERT INTO `staff_leave_type` VALUES (1,1,21,21,'Annual',0,'2022-09-26 05:31:57','2022-10-03 09:40:25',NULL),(1,2,30,30,'Sick',0,'2022-09-26 05:31:57','2022-10-03 12:46:26',NULL),(1,3,7,0,'Casual',0,'2022-09-26 05:31:57','2022-10-03 14:56:43',NULL),(2,4,21,14,'Annual',0,'2022-09-26 05:31:57','2022-09-30 09:04:38',NULL);

/*!40000 ALTER TABLE `staff_leave_type` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `staff_timings`

--



DROP TABLE IF EXISTS `staff_timings`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `staff_timings` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `staff_id` int DEFAULT NULL,

  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `timing_start` time DEFAULT NULL,

  `timing_off` time DEFAULT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `staff_timings`

--



LOCK TABLES `staff_timings` WRITE;

/*!40000 ALTER TABLE `staff_timings` DISABLE KEYS */;

/*!40000 ALTER TABLE `staff_timings` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `staff_work_shift`

--



DROP TABLE IF EXISTS `staff_work_shift`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `staff_work_shift` (

  `id` bigint unsigned NOT NULL AUTO_INCREMENT,

  `staff_id` int unsigned DEFAULT NULL,

  `work_shift_id` int unsigned DEFAULT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  KEY `staff_work_shift_staff_id_foreign` (`staff_id`),

  KEY `staff_work_shift_work_shift_id_foreign` (`work_shift_id`),

  CONSTRAINT `staff_work_shift_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,

  CONSTRAINT `staff_work_shift_work_shift_id_foreign` FOREIGN KEY (`work_shift_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE

) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `staff_work_shift`

--



LOCK TABLES `staff_work_shift` WRITE;

/*!40000 ALTER TABLE `staff_work_shift` DISABLE KEYS */;

INSERT INTO `staff_work_shift` VALUES (1,1,1,NULL,NULL);

/*!40000 ALTER TABLE `staff_work_shift` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `team_members`

--



DROP TABLE IF EXISTS `team_members`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `team_members` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `team_id` int NOT NULL,

  `staff_id` int NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `team_members`

--



LOCK TABLES `team_members` WRITE;

/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;

/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `teams`

--



DROP TABLE IF EXISTS `teams`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `teams` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `department_id` int NOT NULL,

  `status` int NOT NULL,

  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `teams`

--



LOCK TABLES `teams` WRITE;

/*!40000 ALTER TABLE `teams` DISABLE KEYS */;

/*!40000 ALTER TABLE `teams` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `work_shifts`

--



DROP TABLE IF EXISTS `work_shifts`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `work_shifts` (

  `id` int unsigned NOT NULL AUTO_INCREMENT,

  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `start_date` datetime NOT NULL,

  `end_date` datetime NOT NULL,

  `created_at` timestamp NULL DEFAULT NULL,

  `updated_at` timestamp NULL DEFAULT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `work_shifts`

--



LOCK TABLES `work_shifts` WRITE;

/*!40000 ALTER TABLE `work_shifts` DISABLE KEYS */;

INSERT INTO `work_shifts` VALUES (1,'Day Shift','2022-07-01 09:00:00','2022-10-31 17:00:00','2022-10-07 16:48:52','2022-10-07 16:48:52');

/*!40000 ALTER TABLE `work_shifts` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

