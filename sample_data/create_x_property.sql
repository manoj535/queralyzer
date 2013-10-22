-- MySQL dump 10.13  Distrib 5.5.20, for Linux (x86_64)
--
-- Host: localhost    Database: nor1
-- ------------------------------------------------------
-- Server version	5.5.20-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `x_property`
--

DROP TABLE IF EXISTS `x_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_property` (
  `ID` int(11) NOT NULL,
  `CHAIN_ID` int(11) NOT NULL,
  `NAME` varchar(200) DEFAULT NULL,
  `STREET` varchar(100) DEFAULT NULL,
  `ZIP` varchar(30) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `STATE` varchar(100) DEFAULT NULL,
  `COUNTRY` varchar(100) DEFAULT NULL,
  `PHONE` varchar(50) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `CURRENCY` varchar(10) DEFAULT NULL,
  `CUTOFF_NEW` int(11) DEFAULT NULL,
  `CUTOFF_MODIFY` int(11) DEFAULT NULL,
  `CUTOFF_EMAIL` int(11) DEFAULT NULL,
  `DEFAULT_CHECKIN_TIME` time DEFAULT NULL,
  `GUESTAWARDS_EMAIL_SENDTIME` time DEFAULT NULL,
  `GUESTAWARD_DAY` int(11) DEFAULT NULL,
  `GMT` varchar(5) DEFAULT NULL,
  `TIMEZONE` varchar(20) DEFAULT NULL,
  `TIMEZONE_ID` int(11) DEFAULT NULL,
  `LAST_AWARD_EMAIL` datetime DEFAULT NULL,
  `GUEST_SMTP_ID` int(11) DEFAULT NULL,
  `PROPERTY_SMTP_ID` int(11) DEFAULT NULL,
  `COLORS` varchar(200) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `LAUNCH_DATE` date DEFAULT NULL,
  `MODIFIED` datetime DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TRUSTBOOKER_CD` varchar(50) DEFAULT NULL,
  `PMS_CD` varchar(50) DEFAULT NULL,
  `NUM_ROOMS` int(11) DEFAULT NULL,
  `REMINDER_EMAILS` varchar(2000) DEFAULT NULL,
  `REMINDER_EMAILS_SEND` varchar(50) DEFAULT '0',
  `SHOW_DISCLAIMER` varchar(10) DEFAULT '1',
  `SHOW_GUEST_SAL` varchar(5) DEFAULT '0',
  `MANAGER` int(11) DEFAULT NULL,
  `REM_FLAG_1` varchar(5) DEFAULT '0',
  `PRI_AM` int(11) DEFAULT NULL,
  `REM_FLAG_2` varchar(5) DEFAULT '0',
  `SEC_AM` varchar(20) DEFAULT NULL,
  `REM_FLAG_3` varchar(5) DEFAULT '0',
  `OTHER_MANAGER` int(11) DEFAULT NULL,
  `REM_FLAG_4` varchar(5) DEFAULT '0',
  `SHOW_NOR1_OPTIN` varchar(2) DEFAULT NULL,
  `SEND_CONFIRMATION_DELAY` varchar(5) DEFAULT '0',
  `UPGRADE_PERCENT_RULE_ID` varchar(5) DEFAULT '0',
  `OPTIMAL_OFFER` varchar(100) DEFAULT NULL,
  `BEST_AWARDING` varchar(100) DEFAULT NULL,
  `INVENTORY_DAYS` int(11) DEFAULT NULL,
  `DEPLOY` tinyint(1) DEFAULT '1',
  `WORKFLOW` varchar(20) DEFAULT NULL,
  `UPGRADE_POSITION` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `BILLING_PREFERENCE` varchar(20) DEFAULT NULL,
  `SPARE` varchar(20) DEFAULT NULL,
  `CHANGED_BY_USER_ID` int(11) DEFAULT NULL,
  `CHANGED_DATE` datetime DEFAULT NULL,
  `DENIED_EMAIL_REMINDER` varchar(2) DEFAULT NULL,
  `ACCOUNT_MANAGEMENT_ID` int(11) DEFAULT NULL,
  `SELF_IMPLEMENTATION_WIZARD` int(11) DEFAULT NULL,
  `SELF_MANAGED` varchar(5) DEFAULT '0',
  `WIZARD_UPDATED` datetime DEFAULT NULL,
  `SEND_PREARRIVAL_EMAILS` varchar(20) DEFAULT '0',
  `TYPE_PREARRIVAL_EMAILS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`CHAIN_ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `index_pri_am` (`PRI_AM`),
  KEY `index_state` (`STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-23 21:42:27
