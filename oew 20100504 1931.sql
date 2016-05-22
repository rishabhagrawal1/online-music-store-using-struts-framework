-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.30-community-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema oew
--

CREATE DATABASE IF NOT EXISTS oew;
USE oew;

--
-- Definition of table `content_master`
--

DROP TABLE IF EXISTS `content_master`;
CREATE TABLE `content_master` (
  `content_id` int(3) NOT NULL AUTO_INCREMENT,
  `content_desc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_master`
--

/*!40000 ALTER TABLE `content_master` DISABLE KEYS */;
INSERT INTO `content_master` (`content_id`,`content_desc`) VALUES 
 (1,'movie'),
 (2,'audio_song'),
 (3,'video_song');
/*!40000 ALTER TABLE `content_master` ENABLE KEYS */;


--
-- Definition of table `disk_master`
--

DROP TABLE IF EXISTS `disk_master`;
CREATE TABLE `disk_master` (
  `disk_id` int(3) NOT NULL AUTO_INCREMENT,
  `disk_desc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`disk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disk_master`
--

/*!40000 ALTER TABLE `disk_master` DISABLE KEYS */;
INSERT INTO `disk_master` (`disk_id`,`disk_desc`) VALUES 
 (1,'dvd'),
 (2,'cd'),
 (3,'dual_layer_dvd');
/*!40000 ALTER TABLE `disk_master` ENABLE KEYS */;


--
-- Definition of table `login_master`
--

DROP TABLE IF EXISTS `login_master`;
CREATE TABLE `login_master` (
  `login_id` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_master`
--

/*!40000 ALTER TABLE `login_master` DISABLE KEYS */;
INSERT INTO `login_master` (`login_id`,`password`,`role`,`status`) VALUES 
 ('aveg','jhindal','user','activated'),
 ('d','d','admin','activated'),
 ('e','e','user','activated'),
 ('garvit','as','user','activated'),
 ('hbti','mittal','user','activated'),
 ('kusk','kush','user','activated'),
 ('sunita','mittal','user','activated'),
 ('varun','bansal','user','activated');
/*!40000 ALTER TABLE `login_master` ENABLE KEYS */;


--
-- Definition of table `member_detail`
--

DROP TABLE IF EXISTS `member_detail`;
CREATE TABLE `member_detail` (
  `login_id` varchar(50) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `contact_basic` varchar(10) DEFAULT NULL,
  `contact_mobile` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `occupation` varchar(10) DEFAULT NULL,
  KEY `login_id` (`login_id`),
  CONSTRAINT `member_detail_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login_master` (`login_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_detail`
--

/*!40000 ALTER TABLE `member_detail` DISABLE KEYS */;
INSERT INTO `member_detail` (`login_id`,`fname`,`mname`,`lname`,`contact_basic`,`contact_mobile`,`email`,`dob`,`street`,`city`,`pincode`,`state`,`country`,`occupation`) VALUES 
 ('garvit','garvit ','','mittal','5612232630','','mittalgarvit','13-01-1994','','firozabad','','up','',''),
 ('sunita','sunita','','agrawal','','','','','','firozabad','','','',''),
 ('aveg','aveg','','jhindal','','900','hk',';;','k;l','k;','k;','k',';k',';k');
/*!40000 ALTER TABLE `member_detail` ENABLE KEYS */;


--
-- Definition of table `order_master`
--

DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master` (
  `order_id` int(20) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(20) DEFAULT NULL,
  `stock_id` varchar(20) DEFAULT NULL,
  `order_date` varchar(20) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

/*!40000 ALTER TABLE `order_master` DISABLE KEYS */;
INSERT INTO `order_master` (`order_id`,`login_id`,`stock_id`,`order_date`,`quantity`,`status`) VALUES 
 (1,'${sessionScope.id}','213terminator','IST',3,'delever'),
 (2,'${sessionScope.id}','213terminator','IST',3,'delever'),
 (3,'${sessionScope.id}','111ddlj','IST',2,'delever'),
 (4,'${sessionScope.id}','111ddlj','IST',2,'pending'),
 (5,'${sessionScope.id}','112singhisking','IST',78,'pending'),
 (6,'${sessionScope.id}','213terminator','IST',12,'pending'),
 (7,'456','112singhisking','IST',12,'pending'),
 (8,'\"${sessionScope.id}\"','112singhisking','IST',12,'pending'),
 (9,'123','212rambo','IST',3,'pending'),
 (10,'123','212rambo','IST',3,'pending'),
 (11,'123','212rambo','IST',3,'pending'),
 (12,'123','213terminator','IST',12,'pending'),
 (13,'123','111ddlj','IST',56,'pending'),
 (14,'123','111ddlj','IST',56,'pending'),
 (15,'c','111ddlj','IST',12,'pending'),
 (17,'c','111rangdebasanti','11',12,'pending'),
 (18,'e','112singhisking','11',23,'delever'),
 (19,'e','112singhisking','11',45,'pending'),
 (20,'e','213terminator','11',12,'pending'),
 (22,'garvit','111rangdebasanti','12',3,'delever'),
 (23,'sunita','212rambo','13',5,'delever'),
 (24,'aveg','111ddlj','16',21,'pending'),
 (25,'aveg','111ghajini','16',12,'pending'),
 (26,'aveg','111rangdebasanti','16',12,'pending'),
 (27,'rishabh','111jannat','20',2,'delever'),
 (28,'garvit','111ddlj','21',2,'pending'),
 (29,'garvit','112singhisking','21',1,'pending'),
 (30,'garvit','111ddlj','21',2,'pending');
/*!40000 ALTER TABLE `order_master` ENABLE KEYS */;


--
-- Definition of table `stock_master`
--

DROP TABLE IF EXISTS `stock_master`;
CREATE TABLE `stock_master` (
  `stock_id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `disk_type` varchar(20) DEFAULT NULL,
  `content_type` varchar(20) DEFAULT NULL,
  `version_type` varchar(20) DEFAULT NULL,
  `image` varchar(20) DEFAULT NULL,
  `cast` varchar(50) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_master`
--

/*!40000 ALTER TABLE `stock_master` DISABLE KEYS */;
INSERT INTO `stock_master` (`stock_id`,`name`,`disk_type`,`content_type`,`version_type`,`image`,`cast`,`director`,`year`,`quantity`,`price`) VALUES 
 ('111ddlj','ddlj','dvd','movie','hindi','111ddlj.jpg','shahrukh,kajol','aditya chopra','1995','100','200'),
 ('111ghajini','ghajini','dvd','movie','hindi','111ghajini.jpg','aamir,asin','a.r.murugaudoss','2008','50','200'),
 ('111jannat','jannat','dvd','movie','hindi','111jannat.jpg','imran,sonal','mukesh bhatt','2008','48','250'),
 ('111rangdebasanti','rangdebasanti','dvd','movie','hindi','111rangdebasanti.jpg','aamir','rakeysh om prakash mehra','2006','47','250'),
 ('111sarkar-raj','sarkar-raj','dvd','movie','hindi','111sarkar-raj.jpg','amitabh,aishwarya,abhishek','ram gopal verma','2008','50','250'),
 ('112lakshya','lakshya','dvd','audio song','hindi','112lakshya.jpg','hrithik,preity','farhan akhtar','2005','50','250'),
 ('112singhisking','singhisking','dvd','audio song','hindi','112singhisking.jpg','akshay,katrina','anees bazmee','2008','27','250'),
 ('113apne','apne','dvd','video song','hindi','113apne.jpg','sunny,katrina,bobby,shipla','anil sharma','2007','50','250'),
 ('123don','don','cd','video song','hindi','123don.jpg','shahrukh,priyanka','farhan akhtar','2007','50','250'),
 ('123rangdebasanti','rangdebasanti','cd','video song','hindi','123rangdebasanti.jpg','aamir','rakeysh mehra','2007','50','250'),
 ('123veerzara','veerzara','cd','video song','hindi','123veerzara.jpg','shahrukh,priety,rani','yash chopra','2007','50','250'),
 ('212 2f2f','2f2f','movie','audio song','english','212 2f2f.jpg','helly belly','will smith','2007','50','280'),
 ('212rambo','rambo','dvd','audio song','english','212rambo.jpg','brad pitt','will smith','2007','45','280'),
 ('213terminator','terminator','dvd','video song','english','213terminator.jpg','tom criuse','greame smith','2007','44','280'),
 ('221horror','horror','cd','movie','english','221horror.jpg','rob quiney','dwayne smith','2002','50','380'),
 ('221thehangover','thehangover','cd','movie','english','221thehangover.jpg','shane tyson','david garner','1992','50','180'),
 ('221transformers','transformers','cd','movie','english','221transformers.jpg','mike hendorson','joyel garner','1999','50','380');
/*!40000 ALTER TABLE `stock_master` ENABLE KEYS */;


--
-- Definition of table `user_account_detail`
--

DROP TABLE IF EXISTS `user_account_detail`;
CREATE TABLE `user_account_detail` (
  `login_id` varchar(20) DEFAULT NULL,
  `amount` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account_detail`
--

/*!40000 ALTER TABLE `user_account_detail` DISABLE KEYS */;
INSERT INTO `user_account_detail` (`login_id`,`amount`) VALUES 
 ('garvit',5000),
 ('sunita',5000),
 ('aveg',5000),
 ('jTextField1',6890),
 ('jTextField1',6890),
 ('jTextField1',689),
 ('jTextField1',89),
 ('jTextField1',90),
 ('jTextField1',10),
 ('jTextField1',89),
 ('jTextField1',0),
 ('jTextField1',8),
 ('jTextField1',7),
 ('kusk',0);
/*!40000 ALTER TABLE `user_account_detail` ENABLE KEYS */;


--
-- Definition of table `version_master`
--

DROP TABLE IF EXISTS `version_master`;
CREATE TABLE `version_master` (
  `version_id` int(3) NOT NULL AUTO_INCREMENT,
  `version_desc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`version_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `version_master`
--

/*!40000 ALTER TABLE `version_master` DISABLE KEYS */;
INSERT INTO `version_master` (`version_id`,`version_desc`) VALUES 
 (1,'hindi'),
 (2,'english'),
 (3,'tamil');
/*!40000 ALTER TABLE `version_master` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
