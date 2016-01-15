-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: securityonion_db
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.12.04.2

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `sid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `signature` varchar(255) NOT NULL,
  `signature_gen` int(10) unsigned NOT NULL,
  `signature_id` int(10) unsigned NOT NULL,
  `signature_rev` int(10) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  `unified_event_id` int(10) unsigned DEFAULT NULL,
  `unified_event_ref` int(10) unsigned DEFAULT NULL,
  `unified_ref_time` datetime DEFAULT NULL,
  `priority` int(10) unsigned DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `status` smallint(5) unsigned DEFAULT '0',
  `src_ip` int(10) unsigned DEFAULT NULL,
  `dst_ip` int(10) unsigned DEFAULT NULL,
  `src_port` int(10) unsigned DEFAULT NULL,
  `dst_port` int(10) unsigned DEFAULT NULL,
  `icmp_type` tinyint(3) unsigned DEFAULT NULL,
  `icmp_code` tinyint(3) unsigned DEFAULT NULL,
  `ip_proto` tinyint(3) unsigned DEFAULT NULL,
  `ip_ver` tinyint(3) unsigned DEFAULT NULL,
  `ip_hlen` tinyint(3) unsigned DEFAULT NULL,
  `ip_tos` tinyint(3) unsigned DEFAULT NULL,
  `ip_len` smallint(5) unsigned DEFAULT NULL,
  `ip_id` smallint(5) unsigned DEFAULT NULL,
  `ip_flags` tinyint(3) unsigned DEFAULT NULL,
  `ip_off` smallint(5) unsigned DEFAULT NULL,
  `ip_ttl` tinyint(3) unsigned DEFAULT NULL,
  `ip_csum` smallint(5) unsigned DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `last_uid` int(10) unsigned DEFAULT NULL,
  `abuse_queue` enum('Y','N') DEFAULT NULL,
  `abuse_sent` enum('Y','N') DEFAULT NULL,
  KEY `event_p_key` (`sid`,`cid`),
  KEY `sid_time` (`sid`,`timestamp`),
  KEY `src_ip` (`src_ip`),
  KEY `dst_ip` (`dst_ip`),
  KEY `dst_port` (`dst_port`),
  KEY `src_port` (`src_port`),
  KEY `icmp_type` (`icmp_type`),
  KEY `icmp_code` (`icmp_code`),
  KEY `timestamp` (`timestamp`),
  KEY `last_modified` (`last_modified`),
  KEY `signature` (`signature`),
  KEY `status` (`status`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=latin1 UNION=(`event_sparrow-eth1-1_20151215`,`event_sparrow-eth1-1_20151216`,`event_sparrow-eth1-1_20151217`,`event_sparrow-eth1-1_20151218`,`event_sparrow-eth1-1_20151219`,`event_sparrow-eth1-1_20151220`,`event_sparrow-eth1-1_20151221`,`event_sparrow-eth1-1_20151222`,`event_sparrow-eth1-1_20151223`,`event_sparrow-eth1-1_20151224`,`event_sparrow-eth1-1_20151225`,`event_sparrow-eth1-1_20151226`,`event_sparrow-eth1-1_20151227`,`event_sparrow-eth1-1_20151228`,`event_sparrow-eth1-1_20151229`,`event_sparrow-eth1-1_20151230`,`event_sparrow-eth1-1_20151231`,`event_sparrow-eth1-1_20160101`,`event_sparrow-eth1-1_20160102`,`event_sparrow-eth1-1_20160103`,`event_sparrow-eth1-1_20160104`,`event_sparrow-eth1-1_20160105`,`event_sparrow-eth1-1_20160106`,`event_sparrow-eth1-1_20160107`,`event_sparrow-eth1-1_20160108`,`event_sparrow-eth1-1_20160109`,`event_sparrow-eth1-1_20160110`,`event_sparrow-eth1-1_20160111`,`event_sparrow-eth1-1_20160112`,`event_sparrow-eth1-1_20160113`,`event_sparrow-eth1_20151215`,`event_sparrow-eth1_20151216`,`event_sparrow-eth1_20151217`,`event_sparrow-eth1_20151218`,`event_sparrow-eth1_20151219`,`event_sparrow-eth1_20151220`,`event_sparrow-eth1_20151221`,`event_sparrow-eth1_20151222`,`event_sparrow-eth1_20151223`,`event_sparrow-eth1_20151224`,`event_sparrow-eth1_20151225`,`event_sparrow-eth1_20151226`,`event_sparrow-eth1_20151227`,`event_sparrow-eth1_20151228`,`event_sparrow-eth1_20151229`,`event_sparrow-eth1_20151230`,`event_sparrow-eth1_20151231`,`event_sparrow-eth1_20160101`,`event_sparrow-eth1_20160102`,`event_sparrow-eth1_20160103`,`event_sparrow-eth1_20160104`,`event_sparrow-eth1_20160105`,`event_sparrow-eth1_20160106`,`event_sparrow-eth1_20160107`,`event_sparrow-eth1_20160108`,`event_sparrow-eth1_20160109`,`event_sparrow-eth1_20160110`,`event_sparrow-eth1_20160111`,`event_sparrow-eth1_20160112`,`event_sparrow-eth1_20160113`,`event_sparrow-eth1_20160114`,`event_sparrow-ossec_20151215`,`event_sparrow-ossec_20151216`,`event_sparrow-ossec_20151217`,`event_sparrow-ossec_20151218`,`event_sparrow-ossec_20151219`,`event_sparrow-ossec_20151220`,`event_sparrow-ossec_20151221`,`event_sparrow-ossec_20151222`,`event_sparrow-ossec_20151223`,`event_sparrow-ossec_20151224`,`event_sparrow-ossec_20151225`,`event_sparrow-ossec_20151226`,`event_sparrow-ossec_20151227`,`event_sparrow-ossec_20151228`,`event_sparrow-ossec_20151229`,`event_sparrow-ossec_20151230`,`event_sparrow-ossec_20151231`,`event_sparrow-ossec_20160101`,`event_sparrow-ossec_20160102`,`event_sparrow-ossec_20160103`,`event_sparrow-ossec_20160104`,`event_sparrow-ossec_20160105`,`event_sparrow-ossec_20160106`,`event_sparrow-ossec_20160107`,`event_sparrow-ossec_20160108`,`event_sparrow-ossec_20160109`,`event_sparrow-ossec_20160110`,`event_sparrow-ossec_20160111`,`event_sparrow-ossec_20160112`,`event_sparrow-ossec_20160113`,`event_sparrow-ossec_20160114`,`event_sparrow-eth1-1_20160114`);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-14 19:03:49
