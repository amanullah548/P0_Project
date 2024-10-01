create database shoppingsystem ;
use shoppingsystem ;

USE shoppingsystem;
show tables ;
DROP TABLE IF EXISTS tbladmin;
CREATE TABLE tbladmin (
  id bigint NOT NULL AUTO_INCREMENT,
  added_date varchar(56) DEFAULT NULL,
  email varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  name varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES tbladmin WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO tbladmin VALUES (1,'20/01/2020','admin@gmail.com','admin','DataFlair');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS tblcart;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE tblcart (
  id bigint NOT NULL AUTO_INCREMENT,
  discount_price varchar(200) DEFAULT NULL,
  quantity int NOT NULL,
  total_price varchar(200) DEFAULT NULL,
  customer_id bigint NOT NULL,
  product_id bigint NOT NULL,
  mrp_price varchar(200) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcart`
--

LOCK TABLES tblcart WRITE;
/*!40000 ALTER TABLE tblcart DISABLE KEYS */;
INSERT INTO tblcart VALUES (5,'322',322,'4',3,500,'1'),(6,'322',322,'4',3,500,'1'),(8,'356',356,'4',5,500,'1');
/*!40000 ALTER TABLE `tblcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS tblcustomer;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE tblcustomer (
  id int NOT NULL AUTO_INCREMENT,
  address varchar(255) NOT NULL,
  added_date timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  email varchar(100) NOT NULL,
  gender varchar(6) NOT NULL,
  name varchar(50) NOT NULL,
  password varchar(60) NOT NULL,
  phone varchar(200) NOT NULL,
  pin_code varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer`
--

LOCK TABLES tblcustomer WRITE;
/*!40000 ALTER TABLE tblcustomer DISABLE KEYS */;
INSERT INTO tblcustomer VALUES (1,'Nandyal','2024-08-27 04:54:41','amanullah@gmail.com','Male','amanullah','Abcd123','9390788448','560036'),(2,'Bangalore','2024-08-27 05:02:00','kalyani@gmail.com','Female','kalyani','abcd123','9886345721','560036'),(3,'Hyderabad','2024-08-27 07:58:57','priya@gmail.com','Female','priya','abcd123','9886345721','560036'),(4,'hyderabad','2024-08-28 18:30:30','ram@gmail.com','Male','ram','abcd','9886345721','560036'),(5,'Bangalore','2024-08-29 05:05:01','john.@rediffmail.com','Male','Dhruva','dddd','9886345721','560036'),(6,'Bangalore','2024-08-29 06:11:46','krishna.@rediffmail.com','Male','Dhruva','dddd','9886345721','560036'),(7,'Bangalore','2024-08-29 06:12:32','akhil.@rediffmail.com','Male','Dhruva','dddd','9886345721','560036'),(8,'Bangalore','2024-08-29 06:18:29','vishnu.@rediffmail.com','Male','Dhruva','abcd','9886345721','560036'),(9,'Bangalore','2024-08-29 06:28:33','banu.rajesh@rediffmail.com','Male','Dhruva','abcd','9886345721','560036'),(10,'Bangalore','2024-08-29 06:29:11','maruthi.@rediffmail.com','Male','Dhruva','abcd','9886345721','560036'),(11,'Bangalore','2024-08-29 06:34:52','ganesh@rediffmail.com','Male','Dhruva','abcd','9886345721','560036'),(12,'Bangalore','2024-08-29 06:36:25','hemanth.@rediffmail.com','Male','Dhruva','abcd','9886345721','560036');
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS tblorders;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE tblorders (
  id int NOT NULL AUTO_INCREMENT,
  order_no int DEFAULT NULL,
  customer_name varchar(200) DEFAULT NULL,
  mobile_number varchar(100) DEFAULT NULL,
  email_id varchar(100) DEFAULT NULL,
  address varchar(400) DEFAULT NULL,
  address_type varchar(100) DEFAULT NULL,
  pincode  varchar(100) DEFAULT NULL,
  image varchar(200) DEFAULT NULL,
  product_name varchar(400) DEFAULT NULL,
  quantity int DEFAULT NULL,
  product_price varchar(100) DEFAULT NULL,
  product_selling_price varchar(100) DEFAULT NULL,
  product_total_price varchar(100) DEFAULT NULL,
  order_status varchar(100) DEFAULT NULL,
  order_date timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  payment_mode varchar(100) DEFAULT NULL,
  payment_id int DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorders`
--

LOCK TABLES tblorders WRITE;
/*!40000 ALTER TABLE `tblorders` DISABLE KEYS */;
INSERT INTO tblorders VALUES (1,1001,'aman','9886345721','aman@gmail.com','Bangalore','Home','560036','cc-1.jpg','powder',1,'345','245.0','245.0','Deliver','2024-08-27 04:55:49','COD',1),(2,2002,'krishna','9886345721','kalyani@gmail.com','Bangalore','Home','560036','8.png','cream',1,'500','322','322','Deliver','2024-08-27 05:02:53','COD',2),(3,3003,'akhil','9886345721','anusha@gmail.com','Hyderabad','Home','560036','16.png','anusha',1,'500','3568','3568','Deliver','2024-08-27 07:59:52','COD',3),(4,3004,'ganesh','9886345721','ganesh@gmail.com','Hyderabad','Home','560036','8.png','cream',1,'500','322','322','Deliver','2024-08-27 07:59:52','COD',3),(5,4004,'banu','9886345721','banu.@gmail.com','Bangalore','Home','560036','8.png','cream',1,'500','322','322','Deliver','2024-08-29 03:59:28','COD',4),(6,5004,'maruthi','9886345721','rajesh.upadhyay@revature.com','Bangalore','Home','560036','16.png','maruthi',1,'500','3568','3568','Pending','2024-08-29 04:24:09','COD',5);
/*!40000 ALTER TABLE tblorders ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS tblproduct;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE tblproduct (
  id bigint NOT NULL AUTO_INCREMENT,
  active varchar(100) DEFAULT NULL,
  code varchar(100) DEFAULT NULL,
  create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  description varchar(255) DEFAULT NULL,
  image varchar(400) DEFAULT NULL,
  image_name varchar(400) DEFAULT NULL,
  name varchar(400) DEFAULT NULL,
  price varchar(200) DEFAULT NULL,
  mrp_price varchar(200) DEFAULT NULL,
  product_category varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct`
--

drop table tblproduct ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-29 14:38:41


INSERT INTO tblproduct (active, code, description, image, image_name, name, price, mrp_price, product_category) VALUES  (1, 'P003', '', 'images/linenshirt1.jpeg', 'unable to load', 'linen Shirt', 899.99, 1399.99, 'shirts');

select * from tbladmin ;
select * from tblproduct;
select * from tblcustomer ;
truncate table tblcustomer ;
truncate table tblproduct ;
select * from tblorders ;
truncate table tblorders ;
delete from tblproduct where id = 125 ;
delete from tblproduct where id = null ;