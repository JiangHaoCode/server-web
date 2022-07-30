--mysqldump: [Warning] Using a password on the command line interface can be insecure.-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: gva
-- ------------------------------------------------------
-- Server version	5.7.36
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8 */
;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;

/*!40103 SET TIME_ZONE='+00:00' */
;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;

--
-- Table structure for table `app_tab`
--
DROP TABLE IF EXISTS `app_tab`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `app_tab` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) NOT NULL COMMENT '标签名称',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `idx_app_tab_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `app_tab`
--
LOCK TABLES `app_tab` WRITE;

/*!40000 ALTER TABLE `app_tab` DISABLE KEYS */
;

INSERT INTO
  `app_tab`
VALUES
  (
    1,
    '2022-05-11 09:56:45.417',
    '2022-05-16 15:28:35.386',
    '2022-05-16 16:36:13.249',
    'golang',
    1
  ),
(
    2,
    '2022-05-16 16:27:24.563',
    '2022-05-16 16:32:21.880',
    '2022-05-16 16:36:13.249',
    'test55555',
    0
  ),
(
    3,
    '2022-05-16 16:59:45.422',
    '2022-05-16 17:01:47.394',
    NULL,
    'PHP',
    1
  ),
(
    4,
    '2022-05-16 16:59:56.342',
    '2022-05-16 17:00:06.007',
    NULL,
    'JavaScript',
    1
  ),
(
    5,
    '2022-05-16 17:01:14.449',
    '2022-05-16 17:01:14.449',
    NULL,
    'c',
    1
  ),
(
    6,
    '2022-05-16 17:01:23.625',
    '2022-05-16 17:01:23.625',
    NULL,
    'c++',
    0
  ),
(
    7,
    '2022-05-16 17:01:38.754',
    '2022-05-16 17:02:07.650',
    NULL,
    'Rust',
    1
  ),
(
    8,
    '2022-05-16 17:04:21.814',
    '2022-05-16 17:04:21.814',
    NULL,
    'HTML',
    1
  );

/*!40000 ALTER TABLE `app_tab` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Temporary table structure for view `authority_menu`
--
DROP TABLE IF EXISTS `authority_menu`;

/*!50001 DROP VIEW IF EXISTS `authority_menu`*/
;

SET
  @saved_cs_client = @ @character_set_client;

SET
  character_set_client = utf8;

/*!50001 CREATE VIEW `authority_menu` AS SELECT 
 1 AS `id`,
 1 AS `path`,
 1 AS `icon`,
 1 AS `name`,
 1 AS `sort`,
 1 AS `title`,
 1 AS `hidden`,
 1 AS `component`,
 1 AS `parent_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `deleted_at`,
 1 AS `keep_alive`,
 1 AS `menu_level`,
 1 AS `default_menu`,
 1 AS `close_tab`,
 1 AS `menu_id`,
 1 AS `authority_id`*/
;

SET
  character_set_client = @saved_cs_client;

--
-- Table structure for table `casbin_rule`
--
DROP TABLE IF EXISTS `casbin_rule`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `casbin_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_type` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 728 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `casbin_rule`
--
LOCK TABLES `casbin_rule` WRITE;

/*!40000 ALTER TABLE `casbin_rule` DISABLE KEYS */
;

INSERT INTO
  `casbin_rule`
VALUES
  (92, 'p', '8881', '/base/login', 'POST', '', '', ''),
(
    93,
    'p',
    '8881',
    '/user/admin_register',
    'POST',
    '',
    '',
    ''
  ),
(95, 'p', '8881', '/api/getApiList', 'GET', '', '', ''),
(
    96,
    'p',
    '8881',
    '/api/getApiById/:id',
    'GET',
    '',
    '',
    ''
  ),
(97, 'p', '8881', '/api/deleteApi', 'DELETE', '', '', ''),
(98, 'p', '8881', '/api/updateApi', 'PUT', '', '', ''),
(99, 'p', '8881', '/api/getAllApis', 'GET', '', '', ''),
(
    100,
    'p',
    '8881',
    '/authority/createAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    101,
    'p',
    '8881',
    '/authority/deleteAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    102,
    'p',
    '8881',
    '/authority/getAuthorityList',
    'POST',
    '',
    '',
    ''
  ),
(
    103,
    'p',
    '8881',
    '/authority/setDataAuthority',
    'POST',
    '',
    '',
    ''
  ),
(104, 'p', '8881', '/menu/getMenu', 'POST', '', '', ''),
(
    105,
    'p',
    '8881',
    '/menu/getMenuList',
    'POST',
    '',
    '',
    ''
  ),
(
    106,
    'p',
    '8881',
    '/menu/addBaseMenu',
    'POST',
    '',
    '',
    ''
  ),
(
    107,
    'p',
    '8881',
    '/menu/getBaseMenuTree',
    'POST',
    '',
    '',
    ''
  ),
(
    108,
    'p',
    '8881',
    '/menu/addMenuAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    109,
    'p',
    '8881',
    '/menu/getMenuAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    110,
    'p',
    '8881',
    '/menu/deleteBaseMenu',
    'POST',
    '',
    '',
    ''
  ),
(
    111,
    'p',
    '8881',
    '/menu/updateBaseMenu',
    'POST',
    '',
    '',
    ''
  ),
(
    112,
    'p',
    '8881',
    '/menu/getBaseMenuById',
    'POST',
    '',
    '',
    ''
  ),
(
    113,
    'p',
    '8881',
    '/user/changePassword',
    'POST',
    '',
    '',
    ''
  ),
(
    114,
    'p',
    '8881',
    '/user/getUserList',
    'POST',
    '',
    '',
    ''
  ),
(
    115,
    'p',
    '8881',
    '/user/setUserAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    116,
    'p',
    '8881',
    '/fileUploadAndDownload/upload',
    'POST',
    '',
    '',
    ''
  ),
(
    117,
    'p',
    '8881',
    '/fileUploadAndDownload/getFileList',
    'POST',
    '',
    '',
    ''
  ),
(
    118,
    'p',
    '8881',
    '/fileUploadAndDownload/deleteFile',
    'POST',
    '',
    '',
    ''
  ),
(
    119,
    'p',
    '8881',
    '/fileUploadAndDownload/editFileName',
    'POST',
    '',
    '',
    ''
  ),
(
    120,
    'p',
    '8881',
    '/casbin/updateCasbin',
    'POST',
    '',
    '',
    ''
  ),
(
    121,
    'p',
    '8881',
    '/casbin/getPolicyPathByAuthorityId',
    'POST',
    '',
    '',
    ''
  ),
(
    122,
    'p',
    '8881',
    '/jwt/jsonInBlacklist',
    'POST',
    '',
    '',
    ''
  ),
(
    123,
    'p',
    '8881',
    '/system/getSystemConfig',
    'POST',
    '',
    '',
    ''
  ),
(
    124,
    'p',
    '8881',
    '/system/setSystemConfig',
    'POST',
    '',
    '',
    ''
  ),
(
    125,
    'p',
    '8881',
    '/customer/customer',
    'POST',
    '',
    '',
    ''
  ),
(
    126,
    'p',
    '8881',
    '/customer/customer',
    'PUT',
    '',
    '',
    ''
  ),
(
    127,
    'p',
    '8881',
    '/customer/customer',
    'DELETE',
    '',
    '',
    ''
  ),
(
    128,
    'p',
    '8881',
    '/customer/customer',
    'GET',
    '',
    '',
    ''
  ),
(
    129,
    'p',
    '8881',
    '/customer/customerList',
    'GET',
    '',
    '',
    ''
  ),
(
    130,
    'p',
    '8881',
    '/user/getUserInfo',
    'GET',
    '',
    '',
    ''
  ),
(131, 'p', '9528', '/base/login', 'POST', '', '', ''),
(
    132,
    'p',
    '9528',
    '/user/admin_register',
    'POST',
    '',
    '',
    ''
  ),
(134, 'p', '9528', '/api/getApiList', 'GET', '', '', ''),
(
    135,
    'p',
    '9528',
    '/api/getApiById/:id',
    'GET',
    '',
    '',
    ''
  ),
(
    136,
    'p',
    '9528',
    '/api/deleteApi',
    'DELETE',
    '',
    '',
    ''
  ),
(137, 'p', '9528', '/api/updateApi', 'POST', '', '', ''),
(138, 'p', '9528', '/api/getAllApis', 'POST', '', '', ''),
(
    139,
    'p',
    '9528',
    '/authority/createAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    140,
    'p',
    '9528',
    '/authority/deleteAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    141,
    'p',
    '9528',
    '/authority/getAuthorityList',
    'POST',
    '',
    '',
    ''
  ),
(
    142,
    'p',
    '9528',
    '/authority/setDataAuthority',
    'POST',
    '',
    '',
    ''
  ),
(143, 'p', '9528', '/menu/getMenu', 'POST', '', '', ''),
(
    144,
    'p',
    '9528',
    '/menu/getMenuList',
    'POST',
    '',
    '',
    ''
  ),
(
    145,
    'p',
    '9528',
    '/menu/addBaseMenu',
    'POST',
    '',
    '',
    ''
  ),
(
    146,
    'p',
    '9528',
    '/menu/getBaseMenuTree',
    'POST',
    '',
    '',
    ''
  ),
(
    147,
    'p',
    '9528',
    '/menu/addMenuAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    148,
    'p',
    '9528',
    '/menu/getMenuAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    149,
    'p',
    '9528',
    '/menu/deleteBaseMenu',
    'POST',
    '',
    '',
    ''
  ),
(
    150,
    'p',
    '9528',
    '/menu/updateBaseMenu',
    'POST',
    '',
    '',
    ''
  ),
(
    151,
    'p',
    '9528',
    '/menu/getBaseMenuById',
    'POST',
    '',
    '',
    ''
  ),
(
    152,
    'p',
    '9528',
    '/user/changePassword',
    'POST',
    '',
    '',
    ''
  ),
(
    153,
    'p',
    '9528',
    '/user/getUserList',
    'POST',
    '',
    '',
    ''
  ),
(
    154,
    'p',
    '9528',
    '/user/setUserAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    155,
    'p',
    '9528',
    '/fileUploadAndDownload/upload',
    'POST',
    '',
    '',
    ''
  ),
(
    156,
    'p',
    '9528',
    '/fileUploadAndDownload/getFileList',
    'POST',
    '',
    '',
    ''
  ),
(
    157,
    'p',
    '9528',
    '/fileUploadAndDownload/deleteFile',
    'POST',
    '',
    '',
    ''
  ),
(
    158,
    'p',
    '9528',
    '/fileUploadAndDownload/editFileName',
    'POST',
    '',
    '',
    ''
  ),
(
    159,
    'p',
    '9528',
    '/casbin/updateCasbin',
    'POST',
    '',
    '',
    ''
  ),
(
    160,
    'p',
    '9528',
    '/casbin/getPolicyPathByAuthorityId',
    'POST',
    '',
    '',
    ''
  ),
(
    161,
    'p',
    '9528',
    '/jwt/jsonInBlacklist',
    'POST',
    '',
    '',
    ''
  ),
(
    162,
    'p',
    '9528',
    '/system/getSystemConfig',
    'POST',
    '',
    '',
    ''
  ),
(
    163,
    'p',
    '9528',
    '/system/setSystemConfig',
    'POST',
    '',
    '',
    ''
  ),
(
    164,
    'p',
    '9528',
    '/customer/customer',
    'PUT',
    '',
    '',
    ''
  ),
(
    165,
    'p',
    '9528',
    '/customer/customer',
    'GET',
    '',
    '',
    ''
  ),
(
    166,
    'p',
    '9528',
    '/customer/customer',
    'POST',
    '',
    '',
    ''
  ),
(
    167,
    'p',
    '9528',
    '/customer/customer',
    'DELETE',
    '',
    '',
    ''
  ),
(
    168,
    'p',
    '9528',
    '/customer/customerList',
    'GET',
    '',
    '',
    ''
  ),
(
    169,
    'p',
    '9528',
    '/autoCode/createTemp',
    'POST',
    '',
    '',
    ''
  ),
(
    170,
    'p',
    '9528',
    '/user/getUserInfo',
    'GET',
    '',
    '',
    ''
  ),
(631, 'p', '888', '/base/login', 'POST', '', '', ''),
(
    632,
    'p',
    '888',
    '/jwt/jsonInBlacklist',
    'POST',
    '',
    '',
    ''
  ),
(
    633,
    'p',
    '888',
    '/user/deleteUser',
    'DELETE',
    '',
    '',
    ''
  ),
(
    634,
    'p',
    '888',
    '/user/admin_register',
    'POST',
    '',
    '',
    ''
  ),
(
    635,
    'p',
    '888',
    '/user/getUserList',
    'POST',
    '',
    '',
    ''
  ),
(636, 'p', '888', '/user/setUserInfo', 'PUT', '', '', ''),
(637, 'p', '888', '/user/setSelfInfo', 'PUT', '', '', ''),
(638, 'p', '888', '/user/getUserInfo', 'GET', '', '', ''),
(
    639,
    'p',
    '888',
    '/user/setUserAuthorities',
    'POST',
    '',
    '',
    ''
  ),
(
    640,
    'p',
    '888',
    '/user/changePassword',
    'POST',
    '',
    '',
    ''
  ),
(
    641,
    'p',
    '888',
    '/user/setUserAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    642,
    'p',
    '888',
    '/user/resetPassword',
    'POST',
    '',
    '',
    ''
  ),
(643, 'p', '888', '/api/createApi', 'POST', '', '', ''),
(644, 'p', '888', '/api/deleteApi', 'DELETE', '', '', ''),
(645, 'p', '888', '/api/updateApi', 'PUT', '', '', ''),
(646, 'p', '888', '/api/getApiList', 'GET', '', '', ''),
(647, 'p', '888', '/api/getAllApis', 'GET', '', '', ''),
(
    648,
    'p',
    '888',
    '/api/deleteApisByIds',
    'DELETE',
    '',
    '',
    ''
  ),
(
    649,
    'p',
    '888',
    '/api/getAllApisList',
    'GET',
    '',
    '',
    ''
  ),
(
    650,
    'p',
    '888',
    '/authority/copyAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    651,
    'p',
    '888',
    '/authority/createAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    652,
    'p',
    '888',
    '/authority/deleteAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    653,
    'p',
    '888',
    '/authority/updateAuthority',
    'PUT',
    '',
    '',
    ''
  ),
(
    654,
    'p',
    '888',
    '/authority/getAuthorityList',
    'POST',
    '',
    '',
    ''
  ),
(
    655,
    'p',
    '888',
    '/authority/setDataAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    656,
    'p',
    '888',
    '/casbin/updateCasbin',
    'POST',
    '',
    '',
    ''
  ),
(
    657,
    'p',
    '888',
    '/casbin/getPolicyPathByAuthorityId',
    'POST',
    '',
    '',
    ''
  ),
(
    658,
    'p',
    '888',
    '/menu/addBaseMenu',
    'POST',
    '',
    '',
    ''
  ),
(659, 'p', '888', '/menu/getMenu', 'POST', '', '', ''),
(
    660,
    'p',
    '888',
    '/menu/deleteBaseMenu',
    'POST',
    '',
    '',
    ''
  ),
(
    661,
    'p',
    '888',
    '/menu/updateBaseMenu',
    'POST',
    '',
    '',
    ''
  ),
(
    662,
    'p',
    '888',
    '/menu/getBaseMenuById',
    'POST',
    '',
    '',
    ''
  ),
(
    663,
    'p',
    '888',
    '/menu/getMenuList',
    'POST',
    '',
    '',
    ''
  ),
(
    664,
    'p',
    '888',
    '/menu/getBaseMenuTree',
    'POST',
    '',
    '',
    ''
  ),
(
    665,
    'p',
    '888',
    '/menu/getMenuAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    666,
    'p',
    '888',
    '/menu/addMenuAuthority',
    'POST',
    '',
    '',
    ''
  ),
(
    667,
    'p',
    '888',
    '/fileUploadAndDownload/breakpointContinue',
    'POST',
    '',
    '',
    ''
  ),
(
    668,
    'p',
    '888',
    '/fileUploadAndDownload/breakpointContinueFinish',
    'POST',
    '',
    '',
    ''
  ),
(
    669,
    'p',
    '888',
    '/fileUploadAndDownload/removeChunk',
    'POST',
    '',
    '',
    ''
  ),
(
    670,
    'p',
    '888',
    '/fileUploadAndDownload/upload',
    'POST',
    '',
    '',
    ''
  ),
(
    671,
    'p',
    '888',
    '/fileUploadAndDownload/deleteFile',
    'POST',
    '',
    '',
    ''
  ),
(
    672,
    'p',
    '888',
    '/fileUploadAndDownload/editFileName',
    'POST',
    '',
    '',
    ''
  ),
(
    673,
    'p',
    '888',
    '/fileUploadAndDownload/getFileList',
    'POST',
    '',
    '',
    ''
  ),
(
    674,
    'p',
    '888',
    '/system/getServerInfo',
    'POST',
    '',
    '',
    ''
  ),
(
    675,
    'p',
    '888',
    '/system/getSystemConfig',
    'POST',
    '',
    '',
    ''
  ),
(
    676,
    'p',
    '888',
    '/system/setSystemConfig',
    'POST',
    '',
    '',
    ''
  ),
(
    677,
    'p',
    '888',
    '/customer/customer',
    'PUT',
    '',
    '',
    ''
  ),
(
    678,
    'p',
    '888',
    '/customer/customer',
    'POST',
    '',
    '',
    ''
  ),
(
    679,
    'p',
    '888',
    '/customer/customer',
    'DELETE',
    '',
    '',
    ''
  ),
(
    680,
    'p',
    '888',
    '/customer/customer',
    'GET',
    '',
    '',
    ''
  ),
(
    681,
    'p',
    '888',
    '/customer/customerList',
    'GET',
    '',
    '',
    ''
  ),
(682, 'p', '888', '/autoCode/getDB', 'GET', '', '', ''),
(
    683,
    'p',
    '888',
    '/autoCode/getTables',
    'GET',
    '',
    '',
    ''
  ),
(
    684,
    'p',
    '888',
    '/autoCode/createTemp',
    'POST',
    '',
    '',
    ''
  ),
(
    685,
    'p',
    '888',
    '/autoCode/preview',
    'POST',
    '',
    '',
    ''
  ),
(
    686,
    'p',
    '888',
    '/autoCode/getColumn',
    'GET',
    '',
    '',
    ''
  ),
(
    687,
    'p',
    '888',
    '/autoCode/createPackage',
    'POST',
    '',
    '',
    ''
  ),
(
    688,
    'p',
    '888',
    '/autoCode/getPackage',
    'POST',
    '',
    '',
    ''
  ),
(
    689,
    'p',
    '888',
    '/autoCode/delPackage',
    'POST',
    '',
    '',
    ''
  ),
(
    690,
    'p',
    '888',
    '/autoCode/getMeta',
    'POST',
    '',
    '',
    ''
  ),
(
    691,
    'p',
    '888',
    '/autoCode/rollback',
    'POST',
    '',
    '',
    ''
  ),
(
    692,
    'p',
    '888',
    '/autoCode/getSysHistory',
    'POST',
    '',
    '',
    ''
  ),
(
    693,
    'p',
    '888',
    '/autoCode/delSysHistory',
    'POST',
    '',
    '',
    ''
  ),
(
    694,
    'p',
    '888',
    '/sysDictionaryDetail/updateSysDictionaryDetail',
    'PUT',
    '',
    '',
    ''
  ),
(
    695,
    'p',
    '888',
    '/sysDictionaryDetail/createSysDictionaryDetail',
    'POST',
    '',
    '',
    ''
  ),
(
    696,
    'p',
    '888',
    '/sysDictionaryDetail/deleteSysDictionaryDetail',
    'DELETE',
    '',
    '',
    ''
  ),
(
    697,
    'p',
    '888',
    '/sysDictionaryDetail/findSysDictionaryDetail',
    'GET',
    '',
    '',
    ''
  ),
(
    698,
    'p',
    '888',
    '/sysDictionaryDetail/getSysDictionaryDetailList',
    'GET',
    '',
    '',
    ''
  ),
(
    699,
    'p',
    '888',
    '/sysDictionary/createSysDictionary',
    'POST',
    '',
    '',
    ''
  ),
(
    700,
    'p',
    '888',
    '/sysDictionary/deleteSysDictionary',
    'DELETE',
    '',
    '',
    ''
  ),
(
    701,
    'p',
    '888',
    '/sysDictionary/updateSysDictionary',
    'PUT',
    '',
    '',
    ''
  ),
(
    702,
    'p',
    '888',
    '/sysDictionary/findSysDictionary',
    'GET',
    '',
    '',
    ''
  ),
(
    703,
    'p',
    '888',
    '/sysDictionary/getSysDictionaryList',
    'GET',
    '',
    '',
    ''
  ),
(
    704,
    'p',
    '888',
    '/sysOperationRecord/createSysOperationRecord',
    'POST',
    '',
    '',
    ''
  ),
(
    705,
    'p',
    '888',
    '/sysOperationRecord/findSysOperationRecord',
    'GET',
    '',
    '',
    ''
  ),
(
    706,
    'p',
    '888',
    '/sysOperationRecord/getSysOperationRecordList',
    'GET',
    '',
    '',
    ''
  ),
(
    707,
    'p',
    '888',
    '/sysOperationRecord/deleteSysOperationRecord',
    'DELETE',
    '',
    '',
    ''
  ),
(
    708,
    'p',
    '888',
    '/sysOperationRecord/deleteSysOperationRecordByIds',
    'DELETE',
    '',
    '',
    ''
  ),
(
    709,
    'p',
    '888',
    '/simpleUploader/upload',
    'POST',
    '',
    '',
    ''
  ),
(
    710,
    'p',
    '888',
    '/simpleUploader/checkFileMd5',
    'GET',
    '',
    '',
    ''
  ),
(
    711,
    'p',
    '888',
    '/simpleUploader/mergeFileMd5',
    'GET',
    '',
    '',
    ''
  ),
(712, 'p', '888', '/email/emailTest', 'POST', '', '', ''),
(713, 'p', '888', '/email/emailSend', 'POST', '', '', ''),
(
    714,
    'p',
    '888',
    '/excel/importExcel',
    'POST',
    '',
    '',
    ''
  ),
(715, 'p', '888', '/excel/loadExcel', 'GET', '', '', ''),
(
    716,
    'p',
    '888',
    '/excel/exportExcel',
    'POST',
    '',
    '',
    ''
  ),
(
    717,
    'p',
    '888',
    '/excel/downloadTemplate',
    'GET',
    '',
    '',
    ''
  ),
(
    718,
    'p',
    '888',
    '/authorityBtn/setAuthorityBtn',
    'POST',
    '',
    '',
    ''
  ),
(
    719,
    'p',
    '888',
    '/authorityBtn/getAuthorityBtn',
    'POST',
    '',
    '',
    ''
  ),
(
    720,
    'p',
    '888',
    '/authorityBtn/canRemoveAuthorityBtn',
    'POST',
    '',
    '',
    ''
  ),
(
    721,
    'p',
    '888',
    '/appTab/createAppTab',
    'POST',
    '',
    '',
    ''
  ),
(
    722,
    'p',
    '888',
    '/appTab/deleteAppTab',
    'DELETE',
    '',
    '',
    ''
  ),
(
    723,
    'p',
    '888',
    '/appTab/deleteAppTabByIds',
    'DELETE',
    '',
    '',
    ''
  ),
(
    724,
    'p',
    '888',
    '/appTab/updateAppTab',
    'PUT',
    '',
    '',
    ''
  ),
(
    725,
    'p',
    '888',
    '/appTab/findAppTab',
    'GET',
    '',
    '',
    ''
  ),
(
    726,
    'p',
    '888',
    '/appTab/getAppTabList',
    'GET',
    '',
    '',
    ''
  ),
(
    727,
    'p',
    '888',
    '/api/getApiById/:id',
    'GET',
    NULL,
    NULL,
    NULL
  );

/*!40000 ALTER TABLE `casbin_rule` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `exa_customers`
--
DROP TABLE IF EXISTS `exa_customers`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `exa_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` varchar(191) DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 16 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `exa_customers`
--
LOCK TABLES `exa_customers` WRITE;

/*!40000 ALTER TABLE `exa_customers` DISABLE KEYS */
;

INSERT INTO
  `exa_customers`
VALUES
  (
    1,
    '2022-04-19 15:45:50.105',
    '2022-04-19 15:45:50.105',
    '2022-04-19 15:45:58.933',
    'mimi',
    '14322331155',
    3,
    '888'
  ),
(
    2,
    '2022-04-28 20:18:51.217',
    '2022-04-28 20:18:51.217',
    '2022-04-29 10:15:44.415',
    'wuhao',
    '13399880055',
    1,
    '888'
  ),
(
    3,
    '2022-04-28 21:22:44.829',
    '2022-04-28 21:22:44.829',
    '2022-04-29 10:15:44.424',
    'wuhao',
    '15566779900',
    1,
    '888'
  ),
(
    4,
    '2022-04-28 21:23:22.348',
    '2022-04-29 09:23:59.886',
    '2022-04-29 10:15:44.421',
    'lisi0',
    '15200833442',
    1,
    '888'
  ),
(
    5,
    '2022-04-28 21:23:38.708',
    '2022-04-28 21:23:38.708',
    '2022-04-29 10:15:44.428',
    'mimi',
    '15644332233',
    1,
    '888'
  ),
(
    6,
    '2022-04-28 21:23:52.852',
    '2022-04-28 21:23:52.852',
    '2022-04-29 10:15:44.431',
    'mimo',
    '14233115544',
    1,
    '888'
  ),
(
    7,
    '2022-04-28 21:24:15.429',
    '2022-04-28 21:24:15.429',
    '2022-04-29 10:15:44.435',
    'wangwu',
    '17499223311',
    1,
    '888'
  ),
(
    8,
    '2022-04-28 21:24:36.893',
    '2022-04-28 21:24:36.893',
    '2022-04-29 10:15:44.448',
    'wumi',
    '14511223399',
    1,
    '888'
  ),
(
    9,
    '2022-04-28 21:25:05.190',
    '2022-04-28 21:25:05.190',
    '2022-04-29 10:15:44.451',
    'chenda',
    '16822335544',
    1,
    '888'
  ),
(
    10,
    '2022-04-28 21:25:34.469',
    '2022-04-28 21:25:34.469',
    '2022-04-29 10:15:44.445',
    'wanglaoer',
    '13522347744',
    1,
    '888'
  ),
(
    11,
    '2022-04-28 21:26:44.319',
    '2022-04-28 21:26:44.319',
    '2022-04-29 10:15:44.455',
    'wuhaozhong',
    '14322333188',
    1,
    '888'
  ),
(
    12,
    '2022-04-28 21:27:09.127',
    '2022-04-28 21:27:09.127',
    '2022-04-29 10:15:44.610',
    'maoshi',
    '15422331155',
    1,
    '888'
  ),
(
    13,
    '2022-04-29 10:16:35.320',
    '2022-04-29 10:16:35.320',
    '2022-04-29 10:22:44.526',
    'lisi',
    '15544223355',
    1,
    '888'
  ),
(
    14,
    '2022-04-29 10:23:05.464',
    '2022-04-29 10:23:05.464',
    '2022-05-07 10:34:20.820',
    'wanglaowu',
    '13322009955',
    1,
    '888'
  ),
(
    15,
    '2022-05-07 10:40:35.869',
    '2022-05-07 10:40:35.869',
    NULL,
    'wuhao',
    '13566728809',
    1,
    '888'
  );

/*!40000 ALTER TABLE `exa_customers` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `exa_file_chunks`
--
DROP TABLE IF EXISTS `exa_file_chunks`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `exa_file_chunks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `exa_file_id` bigint(20) unsigned DEFAULT NULL,
  `file_chunk_number` bigint(20) DEFAULT NULL,
  `file_chunk_path` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `exa_file_chunks`
--
LOCK TABLES `exa_file_chunks` WRITE;

/*!40000 ALTER TABLE `exa_file_chunks` DISABLE KEYS */
;

INSERT INTO
  `exa_file_chunks`
VALUES
  (
    1,
    '2022-04-15 17:33:29.595',
    '2022-04-15 17:33:29.595',
    '2022-04-15 17:33:29.630',
    1,
    0,
    './breakpointDir/1d36cc7499a4f46e7a8b2cf3ea5725ae/lQLPDhtUqKROKHjM880CKbBCjHDzQILUeQJbYMwAAG8A_553_243.png_0'
  ),
(
    2,
    '2022-04-21 11:02:46.686',
    '2022-04-21 11:02:46.686',
    '2022-04-21 11:02:46.776',
    2,
    0,
    './breakpointDir/3d9e8829db9823ec3aa3689e0e1cd4ca/疾病(完整)-20220421101058.xlsx_0'
  ),
(
    3,
    '2022-04-21 11:02:46.749',
    '2022-04-21 11:02:46.749',
    '2022-04-21 11:02:46.776',
    2,
    1,
    './breakpointDir/3d9e8829db9823ec3aa3689e0e1cd4ca/疾病(完整)-20220421101058.xlsx_1'
  ),
(
    4,
    '2022-04-28 20:01:20.138',
    '2022-04-28 20:01:20.138',
    '2022-04-28 20:01:20.168',
    3,
    0,
    './breakpointDir/a9ddf118109d032c94f5609af410c20a/微信图片_20220427085328.jpg_0'
  ),
(
    5,
    '2022-04-29 17:40:20.535',
    '2022-04-29 17:40:20.535',
    '2022-04-29 17:40:20.609',
    4,
    0,
    './breakpointDir/28c93dfd02cc0bc791b6db9ace03277e/Golang101-v1.17.b.pdf-KaiTi.pdf_0'
  ),
(
    6,
    '2022-04-29 17:40:20.559',
    '2022-04-29 17:40:20.559',
    '2022-04-29 17:40:20.609',
    4,
    1,
    './breakpointDir/28c93dfd02cc0bc791b6db9ace03277e/Golang101-v1.17.b.pdf-KaiTi.pdf_1'
  ),
(
    7,
    '2022-04-29 17:40:20.559',
    '2022-04-29 17:40:20.559',
    '2022-04-29 17:40:20.609',
    4,
    3,
    './breakpointDir/28c93dfd02cc0bc791b6db9ace03277e/Golang101-v1.17.b.pdf-KaiTi.pdf_3'
  ),
(
    8,
    '2022-04-29 17:40:20.577',
    '2022-04-29 17:40:20.577',
    '2022-04-29 17:40:20.609',
    4,
    2,
    './breakpointDir/28c93dfd02cc0bc791b6db9ace03277e/Golang101-v1.17.b.pdf-KaiTi.pdf_2'
  );

/*!40000 ALTER TABLE `exa_file_chunks` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `exa_file_upload_and_downloads`
--
DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `exa_file_upload_and_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `exa_file_upload_and_downloads`
--
LOCK TABLES `exa_file_upload_and_downloads` WRITE;

/*!40000 ALTER TABLE `exa_file_upload_and_downloads` DISABLE KEYS */
;

INSERT INTO
  `exa_file_upload_and_downloads`
VALUES
  (
    1,
    '2022-04-15 17:31:14.931',
    '2022-04-15 17:31:14.931',
    NULL,
    '10.png',
    'https://qmplusimg.henrongyi.top/gvalogo.png',
    'png',
    '158787308910.png'
  ),
(
    2,
    '2022-04-15 17:31:14.931',
    '2022-04-15 17:31:14.931',
    NULL,
    'logo.png',
    'https://qmplusimg.henrongyi.top/1576554439myAvatar.png',
    'png',
    '1587973709logo.png'
  ),
(
    3,
    '2022-04-18 10:33:03.225',
    '2022-04-18 10:33:03.225',
    NULL,
    'cropImg.png',
    'uploads/file/4dc4f4091be64f1982a3e9d809ba4a57_20220418103303.png',
    'png',
    '4dc4f4091be64f1982a3e9d809ba4a57_20220418103303.png'
  ),
(
    4,
    '2022-04-18 10:33:24.660',
    '2022-04-18 10:33:24.660',
    NULL,
    'yueganrenhe.png',
    'uploads/file/54bd793e84a5dc0a0ca8e0b7a17f54b2_20220418103324.png',
    'png',
    '54bd793e84a5dc0a0ca8e0b7a17f54b2_20220418103324.png'
  ),
(
    5,
    '2022-04-27 10:31:06.089',
    '2022-05-07 14:41:53.613',
    NULL,
    'image.png',
    'uploads/file/e0f52359bcc0b132ecca12275ccbd2b2_20220427103106.png',
    'png',
    'e0f52359bcc0b132ecca12275ccbd2b2_20220427103106.png'
  ),
(
    6,
    '2022-04-28 19:01:32.585',
    '2022-04-28 19:01:32.585',
    NULL,
    'dibiao.png',
    'uploads/file/b1fadf6143cd6298cde848b0c8d64a2f_20220428190132.png',
    'png',
    'b1fadf6143cd6298cde848b0c8d64a2f_20220428190132.png'
  ),
(
    7,
    '2022-04-28 19:13:34.473',
    '2022-04-28 19:13:34.473',
    NULL,
    '二哈.png',
    'uploads/file/4b2ea3c82f4507317aaa0340fd24d186_20220428191334.png',
    'png',
    '4b2ea3c82f4507317aaa0340fd24d186_20220428191334.png'
  ),
(
    8,
    '2022-05-07 11:32:08.156',
    '2022-05-07 14:27:22.363',
    NULL,
    '23_iso100_14mm.jpg',
    'uploads/file/3768a18e1d6e8997a8a9c838e64d3cd7_20220507113208.jpg',
    'jpg',
    '3768a18e1d6e8997a8a9c838e64d3cd7_20220507113208.jpg'
  );

/*!40000 ALTER TABLE `exa_file_upload_and_downloads` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `exa_files`
--
DROP TABLE IF EXISTS `exa_files`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `exa_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_md5` varchar(191) DEFAULT NULL,
  `file_path` varchar(191) DEFAULT NULL,
  `chunk_total` bigint(20) DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `exa_files`
--
LOCK TABLES `exa_files` WRITE;

/*!40000 ALTER TABLE `exa_files` DISABLE KEYS */
;

INSERT INTO
  `exa_files`
VALUES
  (
    1,
    '2022-04-15 17:33:26.844',
    '2022-04-15 17:33:29.627',
    NULL,
    'lQLPDhtUqKROKHjM880CKbBCjHDzQILUeQJbYMwAAG8A_553_243.png',
    '1d36cc7499a4f46e7a8b2cf3ea5725ae',
    './fileDir/lQLPDhtUqKROKHjM880CKbBCjHDzQILUeQJbYMwAAG8A_553_243.png',
    1,
    1
  ),
(
    2,
    '2022-04-21 11:02:43.972',
    '2022-04-21 11:02:46.773',
    NULL,
    '疾病(完整)-20220421101058.xlsx',
    '3d9e8829db9823ec3aa3689e0e1cd4ca',
    './fileDir/疾病(完整)-20220421101058.xlsx',
    2,
    1
  ),
(
    3,
    '2022-04-28 20:01:18.585',
    '2022-04-28 20:01:20.165',
    NULL,
    '微信图片_20220427085328.jpg',
    'a9ddf118109d032c94f5609af410c20a',
    './fileDir/微信图片_20220427085328.jpg',
    1,
    1
  ),
(
    4,
    '2022-04-29 17:40:17.566',
    '2022-04-29 17:40:20.606',
    NULL,
    'Golang101-v1.17.b.pdf-KaiTi.pdf',
    '28c93dfd02cc0bc791b6db9ace03277e',
    './fileDir/Golang101-v1.17.b.pdf-KaiTi.pdf',
    4,
    1
  );

/*!40000 ALTER TABLE `exa_files` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `jwt_blacklists`
--
DROP TABLE IF EXISTS `jwt_blacklists`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `jwt_blacklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `jwt` text COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `jwt_blacklists`
--
LOCK TABLES `jwt_blacklists` WRITE;

/*!40000 ALTER TABLE `jwt_blacklists` DISABLE KEYS */
;

/*!40000 ALTER TABLE `jwt_blacklists` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `meta`
--
DROP TABLE IF EXISTS `meta`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `meta` (
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否缓存',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '是否是基础路由（开发中）',
  `title` varchar(191) DEFAULT NULL COMMENT '菜单名',
  `icon` varchar(191) DEFAULT NULL COMMENT '菜单图标',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '自动关闭tab'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `meta`
--
LOCK TABLES `meta` WRITE;

/*!40000 ALTER TABLE `meta` DISABLE KEYS */
;

/*!40000 ALTER TABLE `meta` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_apis`
--
DROP TABLE IF EXISTS `sys_apis`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_apis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 106 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_apis`
--
LOCK TABLES `sys_apis` WRITE;

/*!40000 ALTER TABLE `sys_apis` DISABLE KEYS */
;

INSERT INTO
  `sys_apis`
VALUES
  (
    1,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/base/login',
    '用户登录(必选)',
    'base',
    'POST'
  ),
(
    2,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/jwt/jsonInBlacklist',
    'jwt加入黑名单(退出，必选)',
    'jwt',
    'POST'
  ),
(
    3,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/deleteUser',
    '删除用户',
    '系统用户',
    'DELETE'
  ),
(
    4,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/admin_register',
    '用户注册',
    '系统用户',
    'POST'
  ),
(
    5,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/getUserList',
    '获取用户列表',
    '系统用户',
    'POST'
  ),
(
    6,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/setUserInfo',
    '设置用户信息',
    '系统用户',
    'PUT'
  ),
(
    7,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/setSelfInfo',
    '设置自身信息(必选)',
    '系统用户',
    'PUT'
  ),
(
    8,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/getUserInfo',
    '获取自身信息(必选)',
    '系统用户',
    'GET'
  ),
(
    9,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/setUserAuthorities',
    '设置权限组',
    '系统用户',
    'POST'
  ),
(
    10,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/changePassword',
    '修改密码（建议选择)',
    '系统用户',
    'POST'
  ),
(
    11,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/setUserAuthority',
    '修改用户角色(必选)',
    '系统用户',
    'POST'
  ),
(
    12,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/user/resetPassword',
    '重置用户密码',
    '系统用户',
    'POST'
  ),
(
    13,
    '2022-04-15 17:31:14.854',
    '2022-05-23 11:45:29.200',
    NULL,
    '/api/createApi',
    '创建api',
    'api',
    'POST'
  ),
(
    14,
    '2022-04-15 17:31:14.854',
    '2022-04-19 10:23:29.587',
    NULL,
    '/api/deleteApi',
    '删除Api',
    'api',
    'DELETE'
  ),
(
    15,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/api/updateApi',
    '更新Api',
    'api',
    'PUT'
  ),
(
    16,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/api/getApiList',
    '获取api列表',
    'api',
    'GET'
  ),
(
    17,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/api/getAllApis',
    '获取所有api',
    'api',
    'GET'
  ),
(
    18,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/api/getApiById/:id',
    '获取api详细信息',
    'api',
    'GET'
  ),
(
    19,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/api/deleteApisByIds',
    '批量删除api',
    'api',
    'DELETE'
  ),
(
    20,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/authority/copyAuthority',
    '拷贝角色',
    '角色',
    'POST'
  ),
(
    21,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/authority/createAuthority',
    '创建角色',
    '角色',
    'POST'
  ),
(
    22,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/authority/deleteAuthority',
    '删除角色',
    '角色',
    'POST'
  ),
(
    23,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/authority/updateAuthority',
    '更新角色信息',
    '角色',
    'PUT'
  ),
(
    24,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/authority/getAuthorityList',
    '获取角色列表',
    '角色',
    'POST'
  ),
(
    25,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/authority/setDataAuthority',
    '设置角色资源权限',
    '角色',
    'POST'
  ),
(
    26,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/casbin/updateCasbin',
    '更改角色api权限',
    'casbin',
    'POST'
  ),
(
    27,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/casbin/getPolicyPathByAuthorityId',
    '获取权限列表',
    'casbin',
    'POST'
  ),
(
    28,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/menu/addBaseMenu',
    '新增菜单',
    '菜单',
    'POST'
  ),
(
    29,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/menu/getMenu',
    '获取菜单树(必选)',
    '菜单',
    'POST'
  ),
(
    30,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/menu/deleteBaseMenu',
    '删除菜单',
    '菜单',
    'POST'
  ),
(
    31,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/menu/updateBaseMenu',
    '更新菜单',
    '菜单',
    'POST'
  ),
(
    32,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/menu/getBaseMenuById',
    '根据id获取菜单',
    '菜单',
    'POST'
  ),
(
    33,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/menu/getMenuList',
    '分页获取基础menu列表',
    '菜单',
    'POST'
  ),
(
    34,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/menu/getBaseMenuTree',
    '获取用户动态路由',
    '菜单',
    'POST'
  ),
(
    35,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/menu/getMenuAuthority',
    '获取指定角色menu',
    '菜单',
    'POST'
  ),
(
    36,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/menu/addMenuAuthority',
    '增加menu和角色关联关系',
    '菜单',
    'POST'
  ),
(
    37,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/fileUploadAndDownload/findFile',
    '寻找目标文件（秒传）',
    '分片上传',
    'POST'
  ),
(
    38,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/fileUploadAndDownload/breakpointContinue',
    '断点续传',
    '分片上传',
    'POST'
  ),
(
    39,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/fileUploadAndDownload/breakpointContinueFinish',
    '断点续传完成',
    '分片上传',
    'POST'
  ),
(
    40,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/fileUploadAndDownload/removeChunk',
    '上传完成移除文件',
    '分片上传',
    'POST'
  ),
(
    41,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/fileUploadAndDownload/upload',
    '文件上传示例',
    '文件上传与下载',
    'POST'
  ),
(
    42,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/fileUploadAndDownload/deleteFile',
    '删除文件',
    '文件上传与下载',
    'POST'
  ),
(
    43,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/fileUploadAndDownload/editFileName',
    '文件名或者备注编辑',
    '文件上传与下载',
    'POST'
  ),
(
    44,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/fileUploadAndDownload/getFileList',
    '获取上传文件列表',
    '文件上传与下载',
    'POST'
  ),
(
    45,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/system/getServerInfo',
    '获取服务器信息',
    '系统服务',
    'POST'
  ),
(
    46,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/system/getSystemConfig',
    '获取配置文件内容',
    '系统服务',
    'POST'
  ),
(
    47,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/system/setSystemConfig',
    '设置配置文件内容',
    '系统服务',
    'POST'
  ),
(
    48,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/customer/customer',
    '更新客户',
    '客户',
    'PUT'
  ),
(
    49,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/customer/customer',
    '创建客户',
    '客户',
    'POST'
  ),
(
    50,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/customer/customer',
    '删除客户',
    '客户',
    'DELETE'
  ),
(
    51,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/customer/customer',
    '获取单一客户',
    '客户',
    'GET'
  ),
(
    52,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/customer/customerList',
    '获取客户列表',
    '客户',
    'GET'
  ),
(
    53,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/getDB',
    '获取所有数据库',
    '代码生成器',
    'GET'
  ),
(
    54,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/getTables',
    '获取数据库表',
    '代码生成器',
    'GET'
  ),
(
    55,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/createTemp',
    '自动化代码',
    '代码生成器',
    'POST'
  ),
(
    56,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/preview',
    '预览自动化代码',
    '代码生成器',
    'POST'
  ),
(
    57,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/getColumn',
    '获取所选table的所有字段',
    '代码生成器',
    'GET'
  ),
(
    58,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/createPackage',
    '生成包(package)',
    '包（pkg）生成器',
    'POST'
  ),
(
    59,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/getPackage',
    '获取所有包(package)',
    '包（pkg）生成器',
    'POST'
  ),
(
    60,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/delPackage',
    '删除包(package)',
    '包（pkg）生成器',
    'POST'
  ),
(
    61,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/getMeta',
    '获取meta信息',
    '代码生成器历史',
    'POST'
  ),
(
    62,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/rollback',
    '回滚自动生成代码',
    '代码生成器历史',
    'POST'
  ),
(
    63,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/getSysHistory',
    '查询回滚记录',
    '代码生成器历史',
    'POST'
  ),
(
    64,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/autoCode/delSysHistory',
    '删除回滚记录',
    '代码生成器历史',
    'POST'
  ),
(
    65,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionaryDetail/updateSysDictionaryDetail',
    '更新字典内容',
    '系统字典详情',
    'PUT'
  ),
(
    66,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionaryDetail/createSysDictionaryDetail',
    '新增字典内容',
    '系统字典详情',
    'POST'
  ),
(
    67,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionaryDetail/deleteSysDictionaryDetail',
    '删除字典内容',
    '系统字典详情',
    'DELETE'
  ),
(
    68,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionaryDetail/findSysDictionaryDetail',
    '根据ID获取字典内容',
    '系统字典详情',
    'GET'
  ),
(
    69,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionaryDetail/getSysDictionaryDetailList',
    '获取字典内容列表',
    '系统字典详情',
    'GET'
  ),
(
    70,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionary/createSysDictionary',
    '新增字典',
    '系统字典',
    'POST'
  ),
(
    71,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionary/deleteSysDictionary',
    '删除字典',
    '系统字典',
    'DELETE'
  ),
(
    72,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionary/updateSysDictionary',
    '更新字典',
    '系统字典',
    'PUT'
  ),
(
    73,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionary/findSysDictionary',
    '根据ID获取字典',
    '系统字典',
    'GET'
  ),
(
    74,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysDictionary/getSysDictionaryList',
    '获取字典列表',
    '系统字典',
    'GET'
  ),
(
    75,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysOperationRecord/createSysOperationRecord',
    '新增操作记录',
    '操作记录',
    'POST'
  ),
(
    76,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysOperationRecord/findSysOperationRecord',
    '根据ID获取操作记录',
    '操作记录',
    'GET'
  ),
(
    77,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysOperationRecord/getSysOperationRecordList',
    '获取操作记录列表',
    '操作记录',
    'GET'
  ),
(
    78,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysOperationRecord/deleteSysOperationRecord',
    '删除操作记录',
    '操作记录',
    'DELETE'
  ),
(
    79,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/sysOperationRecord/deleteSysOperationRecordByIds',
    '批量删除操作历史',
    '操作记录',
    'DELETE'
  ),
(
    80,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/simpleUploader/upload',
    '插件版分片上传',
    '断点续传(插件版)',
    'POST'
  ),
(
    81,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/simpleUploader/checkFileMd5',
    '文件完整度验证',
    '断点续传(插件版)',
    'GET'
  ),
(
    82,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/simpleUploader/mergeFileMd5',
    '上传完成合并文件',
    '断点续传(插件版)',
    'GET'
  ),
(
    83,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/email/emailTest',
    '发送测试邮件',
    'email',
    'POST'
  ),
(
    84,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/email/emailSend',
    '发送邮件示例',
    'email',
    'POST'
  ),
(
    85,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/excel/importExcel',
    '导入excel',
    'excel',
    'POST'
  ),
(
    86,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/excel/loadExcel',
    '下载excel',
    'excel',
    'GET'
  ),
(
    87,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/excel/exportExcel',
    '导出excel',
    'excel',
    'POST'
  ),
(
    88,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/excel/downloadTemplate',
    '下载excel模板',
    'excel',
    'GET'
  ),
(
    89,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/authorityBtn/setAuthorityBtn',
    '设置按钮权限',
    '按钮权限',
    'POST'
  ),
(
    90,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/authorityBtn/getAuthorityBtn',
    '获取已有按钮权限',
    '按钮权限',
    'POST'
  ),
(
    91,
    '2022-04-15 17:31:14.854',
    '2022-04-15 17:31:14.854',
    NULL,
    '/authorityBtn/canRemoveAuthorityBtn',
    '删除按钮',
    '按钮权限',
    'POST'
  ),
(
    92,
    '2022-04-19 10:34:25.564',
    '2022-04-19 10:34:25.564',
    NULL,
    '/api/getAllApisList',
    'api get',
    'api',
    'GET'
  ),
(
    93,
    '2022-05-10 18:03:11.745',
    '2022-05-10 18:03:11.745',
    '2022-05-11 08:55:31.209',
    '/appTab/createAppTab',
    '新增appTab表',
    'appTab',
    'POST'
  ),
(
    94,
    '2022-05-10 18:03:11.745',
    '2022-05-10 18:03:11.745',
    '2022-05-11 08:55:31.209',
    '/appTab/deleteAppTab',
    '删除appTab表',
    'appTab',
    'DELETE'
  ),
(
    95,
    '2022-05-10 18:03:11.746',
    '2022-05-10 18:03:11.746',
    '2022-05-11 08:55:31.209',
    '/appTab/deleteAppTabByIds',
    '批量删除appTab表',
    'appTab',
    'DELETE'
  ),
(
    96,
    '2022-05-10 18:03:11.746',
    '2022-05-10 18:03:11.746',
    '2022-05-11 08:55:31.209',
    '/appTab/updateAppTab',
    '更新appTab表',
    'appTab',
    'PUT'
  ),
(
    97,
    '2022-05-10 18:03:11.747',
    '2022-05-10 18:03:11.747',
    '2022-05-11 08:55:31.209',
    '/appTab/findAppTab',
    '根据ID获取appTab表',
    'appTab',
    'GET'
  ),
(
    98,
    '2022-05-10 18:03:11.747',
    '2022-05-10 18:03:11.747',
    '2022-05-11 08:55:31.209',
    '/appTab/getAppTabList',
    '获取appTab表列表',
    'appTab',
    'GET'
  ),
(
    99,
    '2022-05-11 09:18:35.689',
    '2022-05-11 09:18:35.689',
    NULL,
    '/appTab/createAppTab',
    '新增appTab表',
    'appTab',
    'POST'
  ),
(
    100,
    '2022-05-11 09:18:35.690',
    '2022-05-11 09:18:35.690',
    NULL,
    '/appTab/deleteAppTab',
    '删除appTab表',
    'appTab',
    'DELETE'
  ),
(
    101,
    '2022-05-11 09:18:35.690',
    '2022-05-11 09:18:35.690',
    NULL,
    '/appTab/deleteAppTabByIds',
    '批量删除appTab表',
    'appTab',
    'DELETE'
  ),
(
    102,
    '2022-05-11 09:18:35.691',
    '2022-05-11 09:18:35.691',
    NULL,
    '/appTab/updateAppTab',
    '更新appTab表',
    'appTab',
    'PUT'
  ),
(
    103,
    '2022-05-11 09:18:35.691',
    '2022-05-11 09:18:35.691',
    NULL,
    '/appTab/findAppTab',
    '根据ID获取appTab表',
    'appTab',
    'GET'
  ),
(
    104,
    '2022-05-11 09:18:35.692',
    '2022-05-11 09:18:35.692',
    NULL,
    '/appTab/getAppTabList',
    '获取appTab表列表',
    'appTab',
    'GET'
  ),
(
    105,
    '2022-05-20 17:58:53.064',
    '2022-05-20 17:58:53.064',
    '2022-05-20 18:02:08.045',
    '/etst',
    'test',
    'test',
    'GET'
  );

/*!40000 ALTER TABLE `sys_apis` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_authorities`
--
DROP TABLE IF EXISTS `sys_authorities`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_authorities` (
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  `authority_name` varchar(191) DEFAULT NULL COMMENT '角色名',
  `parent_id` varchar(191) DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `authority_id` (`authority_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_authorities`
--
LOCK TABLES `sys_authorities` WRITE;

/*!40000 ALTER TABLE `sys_authorities` DISABLE KEYS */
;

INSERT INTO
  `sys_authorities`
VALUES
  (
    '2022-04-15 17:31:14.865',
    '2022-05-11 09:56:22.259',
    NULL,
    '888',
    '普通用户',
    '0',
    'dashboard'
  ),
(
    '2022-04-15 17:31:14.865',
    '2022-04-15 17:31:14.927',
    NULL,
    '8881',
    '普通用户子角色',
    '888',
    'dashboard'
  ),
(
    '2022-04-15 17:31:14.865',
    '2022-04-15 17:31:14.920',
    NULL,
    '9528',
    '测试角色',
    '0',
    'dashboard'
  );

/*!40000 ALTER TABLE `sys_authorities` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_authority_btns`
--
DROP TABLE IF EXISTS `sys_authority_btns`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_authority_btns` (
  `authority_id` varchar(191) DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  `sys_base_menu_btn_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单按钮ID'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_authority_btns`
--
LOCK TABLES `sys_authority_btns` WRITE;

/*!40000 ALTER TABLE `sys_authority_btns` DISABLE KEYS */
;

/*!40000 ALTER TABLE `sys_authority_btns` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_authority_menus`
--
DROP TABLE IF EXISTS `sys_authority_menus`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_authority_menus` (
  `sys_base_menu_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`, `sys_authority_authority_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_authority_menus`
--
LOCK TABLES `sys_authority_menus` WRITE;

/*!40000 ALTER TABLE `sys_authority_menus` DISABLE KEYS */
;

INSERT INTO
  `sys_authority_menus`
VALUES
  (1, '888'),
(1, '8881'),
(1, '9528'),
(2, '888'),
(2, '8881'),
(2, '9528'),
(3, '888'),
(4, '888'),
(4, '8881'),
(5, '888'),
(5, '8881'),
(6, '888'),
(6, '8881'),
(7, '888'),
(7, '8881'),
(8, '888'),
(8, '8881'),
(8, '9528'),
(9, '888'),
(9, '8881'),
(10, '888'),
(10, '8881'),
(11, '888'),
(11, '8881'),
(12, '888'),
(12, '8881'),
(13, '888'),
(14, '888'),
(14, '8881'),
(15, '888'),
(15, '8881'),
(16, '888'),
(16, '8881'),
(17, '888'),
(17, '8881'),
(18, '888'),
(19, '888'),
(20, '888'),
(24, '888'),
(25, '888'),
(26, '888'),
(28, '888');

/*!40000 ALTER TABLE `sys_authority_menus` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_auto_code_histories`
--
DROP TABLE IF EXISTS `sys_auto_code_histories`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_auto_code_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package` varchar(191) DEFAULT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `request_meta` text,
  `auto_code_path` text,
  `injection_meta` text,
  `struct_name` varchar(191) DEFAULT NULL,
  `struct_cn_name` varchar(191) DEFAULT NULL,
  `api_ids` varchar(191) DEFAULT NULL,
  `flag` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_histories_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_auto_code_histories`
--
LOCK TABLES `sys_auto_code_histories` WRITE;

/*!40000 ALTER TABLE `sys_auto_code_histories` DISABLE KEYS */
;

INSERT INTO
  `sys_auto_code_histories`
VALUES
  (
    1,
    '2022-05-10 18:03:11.793',
    '2022-05-11 08:55:31.234',
    NULL,
    'app',
    'app_tab',
    '{\"structName\":\"AppTab\",\"tableName\":\"app_tab\",\"packageName\":\"appTab\",\"humpPackageName\":\"app_tab\",\"abbreviation\":\"appTab\",\"description\":\"appTab表\",\"autoCreateApiToSql\":true,\"autoMoveFile\":true,\"fields\":[{\"fieldName\":\"Name\",\"fieldDesc\":\"客户名\",\"fieldType\":\"string\",\"fieldJson\":\"name\",\"dataTypeLong\":\"191\",\"comment\":\"客户名\",\"columnName\":\"name\",\"fieldSearchType\":\"\",\"dictType\":\"\"},{\"fieldName\":\"SysUserId\",\"fieldDesc\":\"管理ID\",\"fieldType\":\"bool\",\"fieldJson\":\"sysUserId\",\"dataTypeLong\":\"\",\"comment\":\"管理ID\",\"columnName\":\"sys_user_id\",\"fieldSearchType\":\"\",\"dictType\":\"\"}],\"package\":\"app\"}',
    '/home/jianghao/man/gin-vue-admin/server/api/v1/app/app_tab.go;/home/jianghao/man/gin-vue-admin/server/model/app/app_tab.go;/home/jianghao/man/gin-vue-admin/server/model/app/request/app_tab.go;/home/jianghao/man/gin-vue-admin/server/router/app/app_tab.go;/home/jianghao/man/gin-vue-admin/server/service/app/app_tab.go;/home/jianghao/man/gin-vue-admin/web/src/api/appTab.js;/home/jianghao/man/gin-vue-admin/web/src/view/appTab/appTabForm.vue;/home/jianghao/man/gin-vue-admin/web/src/view/appTab/appTab.vue;',
    '/home/jianghao/man/gin-vue-admin/server/initialize/gorm.go@MysqlTables@app.AppTab{},;/home/jianghao/man/gin-vue-admin/server/initialize/router.go@Routers@appRouter.InitAppTabRouter(PrivateGroup);/home/jianghao/man/gin-vue-admin/server/api/v1/app/enter.go@ApiGroup@AppTabApi;/home/jianghao/man/gin-vue-admin/server/router/app/enter.go@RouterGroup@AppTabRouter;/home/jianghao/man/gin-vue-admin/server/service/app/enter.go@ServiceGroup@AppTabService;',
    'AppTab',
    'appTab表',
    '93;94;95;96;97;98;',
    1
  ),
(
    2,
    '2022-05-11 09:18:35.726',
    '2022-05-11 09:18:35.726',
    NULL,
    'app',
    'app_tab',
    '{\"structName\":\"AppTab\",\"tableName\":\"app_tab\",\"packageName\":\"appTab\",\"humpPackageName\":\"app_tab\",\"abbreviation\":\"appTab\",\"description\":\"appTab表\",\"autoCreateApiToSql\":true,\"autoMoveFile\":true,\"fields\":[{\"fieldName\":\"Name\",\"fieldDesc\":\"标签名称\",\"fieldType\":\"string\",\"fieldJson\":\"name\",\"dataTypeLong\":\"191\",\"comment\":\"标签名称\",\"columnName\":\"name\",\"fieldSearchType\":\"\",\"dictType\":\"\"},{\"fieldName\":\"Status\",\"fieldDesc\":\"状态\",\"fieldType\":\"bool\",\"fieldJson\":\"status\",\"dataTypeLong\":\"\",\"comment\":\"状态\",\"columnName\":\"status\",\"fieldSearchType\":\"\",\"dictType\":\"\"}],\"package\":\"app\"}',
    '/home/jianghao/man/gin-vue-admin/server/api/v1/app/app_tab.go;/home/jianghao/man/gin-vue-admin/server/model/app/app_tab.go;/home/jianghao/man/gin-vue-admin/server/model/app/request/app_tab.go;/home/jianghao/man/gin-vue-admin/server/router/app/app_tab.go;/home/jianghao/man/gin-vue-admin/server/service/app/app_tab.go;/home/jianghao/man/gin-vue-admin/web/src/api/appTab.js;/home/jianghao/man/gin-vue-admin/web/src/view/appTab/appTabForm.vue;/home/jianghao/man/gin-vue-admin/web/src/view/appTab/appTab.vue;',
    '/home/jianghao/man/gin-vue-admin/server/initialize/gorm.go@MysqlTables@app.AppTab{},;/home/jianghao/man/gin-vue-admin/server/initialize/router.go@Routers@appRouter.InitAppTabRouter(PrivateGroup);/home/jianghao/man/gin-vue-admin/server/api/v1/app/enter.go@ApiGroup@AppTabApi;/home/jianghao/man/gin-vue-admin/server/router/app/enter.go@RouterGroup@AppTabRouter;/home/jianghao/man/gin-vue-admin/server/service/app/enter.go@ServiceGroup@AppTabService;',
    'AppTab',
    'appTab表',
    '99;100;101;102;103;104;',
    0
  );

/*!40000 ALTER TABLE `sys_auto_code_histories` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_auto_codes`
--
DROP TABLE IF EXISTS `sys_auto_codes`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_auto_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package_name` varchar(191) DEFAULT NULL COMMENT '包名',
  `label` varchar(191) DEFAULT NULL COMMENT '展示名',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_codes_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_auto_codes`
--
LOCK TABLES `sys_auto_codes` WRITE;

/*!40000 ALTER TABLE `sys_auto_codes` DISABLE KEYS */
;

INSERT INTO
  `sys_auto_codes`
VALUES
  (
    1,
    '2022-04-24 11:46:26.293',
    '2022-04-24 11:46:26.293',
    NULL,
    'order',
    '订单',
    '订单'
  ),
(
    2,
    '2022-05-10 18:01:59.591',
    '2022-05-10 18:01:59.591',
    NULL,
    'app',
    'app',
    'tab'
  );

/*!40000 ALTER TABLE `sys_auto_codes` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_base_menu_btns`
--
DROP TABLE IF EXISTS `sys_base_menu_btns`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_base_menu_btns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '按钮关键key',
  `desc` varchar(191) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_btns_deleted_at` (`deleted_at`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_base_menu_btns`
--
LOCK TABLES `sys_base_menu_btns` WRITE;

/*!40000 ALTER TABLE `sys_base_menu_btns` DISABLE KEYS */
;

/*!40000 ALTER TABLE `sys_base_menu_btns` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_base_menu_parameters`
--
DROP TABLE IF EXISTS `sys_base_menu_parameters`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_base_menu_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_base_menu_parameters`
--
LOCK TABLES `sys_base_menu_parameters` WRITE;

/*!40000 ALTER TABLE `sys_base_menu_parameters` DISABLE KEYS */
;

/*!40000 ALTER TABLE `sys_base_menu_parameters` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_base_menus`
--
DROP TABLE IF EXISTS `sys_base_menus`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_base_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `menu_level` bigint(20) unsigned DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 29 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_base_menus`
--
LOCK TABLES `sys_base_menus` WRITE;

/*!40000 ALTER TABLE `sys_base_menus` DISABLE KEYS */
;

INSERT INTO
  `sys_base_menus`
VALUES
  (
    1,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '0',
    'dashboard',
    'dashboard',
    0,
    'view/dashboard/index.vue',
    1,
    0,
    0,
    '仪表盘',
    'odometer',
    0
  ),
(
    2,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '0',
    'about',
    'about',
    0,
    'view/about/index.vue',
    7,
    0,
    0,
    '关于我们',
    'info-filled',
    0
  ),
(
    3,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '0',
    'admin',
    'superAdmin',
    0,
    'view/superAdmin/index.vue',
    3,
    0,
    0,
    '超级管理员',
    'user',
    0
  ),
(
    4,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '3',
    'authority',
    'authority',
    0,
    'view/superAdmin/authority/authority.vue',
    1,
    0,
    0,
    '角色管理',
    'avatar',
    0
  ),
(
    5,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '3',
    'menu',
    'menu',
    0,
    'view/superAdmin/menu/menu.vue',
    2,
    1,
    0,
    '菜单管理',
    'tickets',
    0
  ),
(
    6,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '3',
    'api',
    'api',
    0,
    'view/superAdmin/api/api.vue',
    3,
    1,
    0,
    'api管理',
    'platform',
    0
  ),
(
    7,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '3',
    'user',
    'user',
    0,
    'view/superAdmin/user/user.vue',
    4,
    0,
    0,
    '用户管理',
    'coordinate',
    0
  ),
(
    8,
    '2022-04-15 17:31:14.908',
    '2022-04-18 10:56:06.782',
    NULL,
    0,
    '0',
    'person',
    'person',
    1,
    'view/person/person.vue',
    4,
    0,
    0,
    '个人信息',
    'message',
    0
  ),
(
    9,
    '2022-04-15 17:31:14.908',
    '2022-05-07 15:17:50.587',
    NULL,
    0,
    '0',
    'example',
    'example',
    0,
    'view/example/index.vue',
    6,
    0,
    0,
    '示例文件',
    'briefcase',
    0
  ),
(
    10,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '9',
    'excel',
    'excel',
    0,
    'view/example/excel/excel.vue',
    4,
    0,
    0,
    'excel导入导出',
    'takeaway-box',
    0
  ),
(
    11,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '9',
    'upload',
    'upload',
    0,
    'view/example/upload/upload.vue',
    5,
    0,
    0,
    '媒体库（上传下载）',
    'upload',
    0
  ),
(
    12,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '9',
    'breakpoint',
    'breakpoint',
    0,
    'view/example/breakpoint/breakpoint.vue',
    6,
    0,
    0,
    '断点续传',
    'upload-filled',
    0
  ),
(
    13,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '9',
    'customer',
    'customer',
    0,
    'view/example/customer/customer.vue',
    7,
    0,
    0,
    '客户列表（资源示例）',
    'avatar',
    0
  ),
(
    14,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '0',
    'systemTools',
    'systemTools',
    0,
    'view/systemTools/index.vue',
    5,
    0,
    0,
    '系统工具',
    'tools',
    0
  ),
(
    15,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '14',
    'autoCode',
    'autoCode',
    0,
    'view/systemTools/autoCode/index.vue',
    1,
    1,
    0,
    '代码生成器',
    'cpu',
    0
  ),
(
    16,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '14',
    'formCreate',
    'formCreate',
    0,
    'view/systemTools/formCreate/index.vue',
    2,
    1,
    0,
    '表单生成器',
    'magic-stick',
    0
  ),
(
    17,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '14',
    'system',
    'system',
    0,
    'view/systemTools/system/system.vue',
    3,
    0,
    0,
    '系统配置',
    'operation',
    0
  ),
(
    18,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '3',
    'dictionary',
    'dictionary',
    0,
    'view/superAdmin/dictionary/sysDictionary.vue',
    5,
    0,
    0,
    '字典管理',
    'notebook',
    0
  ),
(
    19,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '3',
    'dictionaryDetail/:id',
    'dictionaryDetail',
    1,
    'view/superAdmin/dictionary/sysDictionaryDetail.vue',
    1,
    0,
    0,
    '字典详情',
    'order',
    0
  ),
(
    20,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '3',
    'operation',
    'operation',
    0,
    'view/superAdmin/operation/sysOperationRecord.vue',
    6,
    0,
    0,
    '操作历史',
    'pie-chart',
    0
  ),
(
    21,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '9',
    'simpleUploader',
    'simpleUploader',
    0,
    'view/example/simpleUploader/simpleUploader',
    6,
    0,
    0,
    '断点续传（插件版）',
    'upload',
    0
  ),
(
    23,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    0,
    '0',
    'state',
    'state',
    0,
    'view/system/state.vue',
    6,
    0,
    0,
    '服务器状态',
    'cloudy',
    0
  ),
(
    24,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '14',
    'autoCodeAdmin',
    'autoCodeAdmin',
    0,
    'view/systemTools/autoCodeAdmin/index.vue',
    1,
    0,
    0,
    '自动化代码管理',
    'magic-stick',
    0
  ),
(
    25,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '14',
    'autoCodeEdit/:id',
    'autoCodeEdit',
    1,
    'view/systemTools/autoCode/index.vue',
    0,
    0,
    0,
    '自动化代码（复用）',
    'magic-stick',
    0
  ),
(
    26,
    '2022-04-15 17:31:14.908',
    '2022-04-15 17:31:14.908',
    NULL,
    0,
    '14',
    'autoPkg',
    'autoPkg',
    0,
    'view/systemTools/autoPkg/autoPkg.vue',
    0,
    0,
    0,
    '自动化package',
    'folder',
    0
  ),
(
    27,
    '2022-05-10 18:11:09.959',
    '2022-05-10 18:14:35.944',
    '2022-05-11 09:00:22.249',
    0,
    '0',
    'tab',
    'tab',
    0,
    'view/appTab/appTab.vue',
    6,
    1,
    0,
    '标签',
    'delete-location',
    1
  ),
(
    28,
    '2022-05-11 09:45:25.707',
    '2022-05-11 09:53:08.945',
    NULL,
    0,
    '0',
    'tab',
    'tab',
    0,
    'view/appTab/appTab.vue',
    6,
    0,
    0,
    '标签',
    'aim',
    0
  );

/*!40000 ALTER TABLE `sys_base_menus` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_data_authority_id`
--
DROP TABLE IF EXISTS `sys_data_authority_id`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_data_authority_id` (
  `sys_authority_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (
    `sys_authority_authority_id`,
    `data_authority_id_authority_id`
  )
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_data_authority_id`
--
LOCK TABLES `sys_data_authority_id` WRITE;

/*!40000 ALTER TABLE `sys_data_authority_id` DISABLE KEYS */
;

INSERT INTO
  `sys_data_authority_id`
VALUES
  ('888', '888'),
('888', '8881'),
('888', '9528'),
('9528', '8881'),
('9528', '9528');

/*!40000 ALTER TABLE `sys_data_authority_id` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_dictionaries`
--
DROP TABLE IF EXISTS `sys_dictionaries`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_dictionaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_dictionaries`
--
LOCK TABLES `sys_dictionaries` WRITE;

/*!40000 ALTER TABLE `sys_dictionaries` DISABLE KEYS */
;

INSERT INTO
  `sys_dictionaries`
VALUES
  (
    1,
    '2022-04-15 17:31:14.876',
    '2022-04-15 17:31:14.880',
    NULL,
    '性别',
    'gender',
    1,
    '性别字典'
  ),
(
    2,
    '2022-04-15 17:31:14.876',
    '2022-04-15 17:31:14.884',
    NULL,
    '数据库int类型',
    'int',
    1,
    'int类型对应的数据库类型'
  ),
(
    3,
    '2022-04-15 17:31:14.876',
    '2022-04-15 17:31:14.887',
    NULL,
    '数据库时间日期类型',
    'time.Time',
    1,
    '数据库时间日期类型'
  ),
(
    4,
    '2022-04-15 17:31:14.876',
    '2022-04-15 17:31:14.889',
    NULL,
    '数据库浮点型',
    'float64',
    1,
    '数据库浮点型'
  ),
(
    5,
    '2022-04-15 17:31:14.876',
    '2022-04-15 17:31:14.892',
    NULL,
    '数据库字符串',
    'string',
    1,
    '数据库字符串'
  ),
(
    6,
    '2022-04-15 17:31:14.876',
    '2022-04-15 17:31:14.896',
    NULL,
    '数据库bool类型',
    'bool',
    1,
    '数据库bool类型'
  );

/*!40000 ALTER TABLE `sys_dictionaries` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_dictionary_details`
--
DROP TABLE IF EXISTS `sys_dictionary_details`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_dictionary_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL COMMENT '展示值',
  `value` bigint(20) DEFAULT NULL COMMENT '字典值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint(20) unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 26 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_dictionary_details`
--
LOCK TABLES `sys_dictionary_details` WRITE;

/*!40000 ALTER TABLE `sys_dictionary_details` DISABLE KEYS */
;

INSERT INTO
  `sys_dictionary_details`
VALUES
  (
    1,
    '2022-04-15 17:31:14.880',
    '2022-04-15 17:31:14.880',
    NULL,
    '男',
    1,
    1,
    1,
    1
  ),
(
    2,
    '2022-04-15 17:31:14.880',
    '2022-04-15 17:31:14.880',
    NULL,
    '女',
    2,
    1,
    2,
    1
  ),
(
    3,
    '2022-04-15 17:31:14.884',
    '2022-04-15 17:31:14.884',
    NULL,
    'smallint',
    1,
    1,
    1,
    2
  ),
(
    4,
    '2022-04-15 17:31:14.884',
    '2022-04-15 17:31:14.884',
    NULL,
    'mediumint',
    2,
    1,
    2,
    2
  ),
(
    5,
    '2022-04-15 17:31:14.884',
    '2022-04-15 17:31:14.884',
    NULL,
    'int',
    3,
    1,
    3,
    2
  ),
(
    6,
    '2022-04-15 17:31:14.884',
    '2022-04-15 17:31:14.884',
    NULL,
    'bigint',
    4,
    1,
    4,
    2
  ),
(
    7,
    '2022-04-15 17:31:14.887',
    '2022-04-15 17:31:14.887',
    NULL,
    'date',
    0,
    1,
    0,
    3
  ),
(
    8,
    '2022-04-15 17:31:14.887',
    '2022-04-15 17:31:14.887',
    NULL,
    'time',
    1,
    1,
    1,
    3
  ),
(
    9,
    '2022-04-15 17:31:14.887',
    '2022-04-15 17:31:14.887',
    NULL,
    'year',
    2,
    1,
    2,
    3
  ),
(
    10,
    '2022-04-15 17:31:14.887',
    '2022-04-15 17:31:14.887',
    NULL,
    'datetime',
    3,
    1,
    3,
    3
  ),
(
    11,
    '2022-04-15 17:31:14.887',
    '2022-04-15 17:31:14.887',
    NULL,
    'timestamp',
    5,
    1,
    5,
    3
  ),
(
    12,
    '2022-04-15 17:31:14.889',
    '2022-04-15 17:31:14.889',
    NULL,
    'float',
    0,
    1,
    0,
    4
  ),
(
    13,
    '2022-04-15 17:31:14.889',
    '2022-04-15 17:31:14.889',
    NULL,
    'double',
    1,
    1,
    1,
    4
  ),
(
    14,
    '2022-04-15 17:31:14.889',
    '2022-04-15 17:31:14.889',
    NULL,
    'decimal',
    2,
    1,
    2,
    4
  ),
(
    15,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'char',
    0,
    1,
    0,
    5
  ),
(
    16,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'varchar',
    1,
    1,
    1,
    5
  ),
(
    17,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'tinyblob',
    2,
    1,
    2,
    5
  ),
(
    18,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'tinytext',
    3,
    1,
    3,
    5
  ),
(
    19,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'text',
    4,
    1,
    4,
    5
  ),
(
    20,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'blob',
    5,
    1,
    5,
    5
  ),
(
    21,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'mediumblob',
    6,
    1,
    6,
    5
  ),
(
    22,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'mediumtext',
    7,
    1,
    7,
    5
  ),
(
    23,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'longblob',
    8,
    1,
    8,
    5
  ),
(
    24,
    '2022-04-15 17:31:14.892',
    '2022-04-15 17:31:14.892',
    NULL,
    'longtext',
    9,
    1,
    9,
    5
  ),
(
    25,
    '2022-04-15 17:31:14.896',
    '2022-04-15 17:31:14.896',
    NULL,
    'tinyint',
    0,
    1,
    0,
    6
  );

/*!40000 ALTER TABLE `sys_dictionary_details` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_operation_records`
--
DROP TABLE IF EXISTS `sys_operation_records`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_operation_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) DEFAULT NULL COMMENT '请求路径',
  `status` bigint(20) DEFAULT NULL COMMENT '请求状态',
  `latency` bigint(20) DEFAULT NULL COMMENT '延迟',
  `agent` varchar(191) DEFAULT NULL COMMENT '代理',
  `error_message` varchar(191) DEFAULT NULL COMMENT '错误信息',
  `body` text COMMENT '请求Body',
  `resp` text COMMENT '响应Body',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 354 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_operation_records`
--
LOCK TABLES `sys_operation_records` WRITE;

/*!40000 ALTER TABLE `sys_operation_records` DISABLE KEYS */
;

INSERT INTO
  `sys_operation_records`
VALUES
  (
    1,
    '2022-04-15 17:32:57.556',
    '2022-04-15 17:32:57.556',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getServerInfo',
    200,
    200945717,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"linux\",\"numCpu\":12,\"compiler\":\"gc\",\"goVersion\":\"go1.18\",\"numGoroutine\":13},\"cpu\":{\"cpus\":[0,0,5.000000000068212,5.263157894768334,0,0,0,5.263157894768334,4.7619047619202295,4.999999999886313,4.999999999977263,9.523809523840459],\"cores\":6},\"ram\":{\"usedMb\":13653,\"totalMb\":32040,\"usedPercent\":42},\"disk\":{\"usedMb\":25677,\"usedGb\":25,\"totalMb\":73527,\"totalGb\":71,\"usedPercent\":36}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    2,
    '2022-04-15 17:33:07.554',
    '2022-04-15 17:33:07.554',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getServerInfo',
    200,
    200815685,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"linux\",\"numCpu\":12,\"compiler\":\"gc\",\"goVersion\":\"go1.18\",\"numGoroutine\":13},\"cpu\":{\"cpus\":[0,0,0,4.7619047619202295,4.999999999886313,0,0,0,4.7619047619202295,0,0,0],\"cores\":6},\"ram\":{\"usedMb\":13625,\"totalMb\":32040,\"usedPercent\":42},\"disk\":{\"usedMb\":25677,\"usedGb\":25,\"totalMb\":73527,\"totalGb\":71,\"usedPercent\":36}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    3,
    '2022-04-15 17:35:45.746',
    '2022-04-15 17:35:45.746',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getServerInfo',
    200,
    200814165,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"linux\",\"numCpu\":12,\"compiler\":\"gc\",\"goVersion\":\"go1.18\",\"numGoroutine\":13},\"cpu\":{\"cpus\":[0,4.999999999977263,5.000000000068212,5.263157894667559,9.999999999954525,4.999999999977263,4.999999999977263,9.523809523840459,4.999999999977263,9.999999999954525,0,0],\"cores\":6},\"ram\":{\"usedMb\":13751,\"totalMb\":32040,\"usedPercent\":42},\"disk\":{\"usedMb\":25679,\"usedGb\":25,\"totalMb\":73527,\"totalGb\":71,\"usedPercent\":36}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    4,
    '2022-04-15 17:36:13.670',
    '2022-04-15 17:36:13.670',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    16467128,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":1,\"authorityIds\":[\"888\",\"9528\",\"8881\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    5,
    '2022-04-15 17:36:19.137',
    '2022-04-15 17:36:19.137',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    10827254,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":2,\"authorityIds\":[\"888\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    6,
    '2022-04-15 17:36:33.171',
    '2022-04-15 17:36:33.171',
    NULL,
    '127.0.0.1',
    'PUT',
    '/user/setUserInfo',
    200,
    13962395,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":1,\"CreatedAt\":\"2022-04-15T17:31:14.897+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.903+08:00\",\"uuid\":\"3239efe2-a81b-4ada-ba1b-2688fa5bb6e0\",\"userName\":\"admin\",\"nickName\":\"超级管理员\",\"sideMode\":\"dark\",\"headerImg\":\"https://qmplusimg.henrongyi.top/gvalogo.png\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":\"888\",\"authority\":{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.916+08:00\",\"DeletedAt\":null,\"authorityId\":\"888\",\"authorityName\":\"普通用户\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},\"authorities\":[{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.916+08:00\",\"DeletedAt\":null,\"authorityId\":\"888\",\"authorityName\":\"普通用户\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.927+08:00\",\"DeletedAt\":null,\"authorityId\":\"8881\",\"authorityName\":\"普通用户子角色\",\"parentId\":\"888\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.92+08:00\",\"DeletedAt\":null,\"authorityId\":\"9528\",\"authorityName\":\"测试角色\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}],\"phone\":\"17611111111\",\"email\":\"333333333@qq.com\",\"authorityIds\":[\"888\",\"9528\",\"8881\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}',
    1
  ),
(
    7,
    '2022-04-15 21:00:38.351',
    '2022-04-15 21:00:38.351',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10893117,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"8881\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    8,
    '2022-04-15 21:00:42.262',
    '2022-04-15 21:00:42.262',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10565509,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    9,
    '2022-04-15 21:00:45.607',
    '2022-04-15 21:00:45.607',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10597451,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"8881\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    10,
    '2022-04-15 21:00:55.415',
    '2022-04-15 21:00:55.415',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    11064771,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"9528\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    11,
    '2022-04-17 11:11:16.239',
    '2022-04-17 11:11:16.239',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10928480,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    12,
    '2022-04-17 11:12:23.175',
    '2022-04-17 11:12:23.175',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getServerInfo',
    200,
    200708654,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"linux\",\"numCpu\":12,\"compiler\":\"gc\",\"goVersion\":\"go1.18\",\"numGoroutine\":13},\"cpu\":{\"cpus\":[5.000000001045919,5.000000000318323,4.761904762636894,19.999999999272404,4.999999999818101,4.76190476153354,0,4.999999999363354,5.000000000318323,4.999999999818101,5.000000000318323,0],\"cores\":6},\"ram\":{\"usedMb\":18564,\"totalMb\":32040,\"usedPercent\":57},\"disk\":{\"usedMb\":26450,\"usedGb\":25,\"totalMb\":73527,\"totalGb\":71,\"usedPercent\":37}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    13,
    '2022-04-17 11:12:33.173',
    '2022-04-17 11:12:33.173',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getServerInfo',
    200,
    200897943,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"linux\",\"numCpu\":12,\"compiler\":\"gc\",\"goVersion\":\"go1.18\",\"numGoroutine\":13},\"cpu\":{\"cpus\":[0,4.999999999818101,4.999999999818101,5.0000000000909495,0,9.090909089856783,0,0,0,0,0,4.76190476219349],\"cores\":6},\"ram\":{\"usedMb\":18541,\"totalMb\":32040,\"usedPercent\":57},\"disk\":{\"usedMb\":26450,\"usedGb\":25,\"totalMb\":73527,\"totalGb\":71,\"usedPercent\":37}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    14,
    '2022-04-17 11:12:43.173',
    '2022-04-17 11:12:43.173',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getServerInfo',
    200,
    200890590,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"linux\",\"numCpu\":12,\"compiler\":\"gc\",\"goVersion\":\"go1.18\",\"numGoroutine\":13},\"cpu\":{\"cpus\":[0,0,0,0,0,5.263157893502348,0,0,4.999999999818101,0,0,0],\"cores\":6},\"ram\":{\"usedMb\":18538,\"totalMb\":32040,\"usedPercent\":57},\"disk\":{\"usedMb\":26450,\"usedGb\":25,\"totalMb\":73527,\"totalGb\":71,\"usedPercent\":37}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    15,
    '2022-04-17 11:12:53.173',
    '2022-04-17 11:12:53.173',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getServerInfo',
    200,
    200802358,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"linux\",\"numCpu\":12,\"compiler\":\"gc\",\"goVersion\":\"go1.18\",\"numGoroutine\":13},\"cpu\":{\"cpus\":[0,0,4.999999999818101,0,9.52380952306708,4.76190476153354,14.285714286147378,9.523809524170435,0,0,0,13.636363636175725],\"cores\":6},\"ram\":{\"usedMb\":18548,\"totalMb\":32040,\"usedPercent\":57},\"disk\":{\"usedMb\":26450,\"usedGb\":25,\"totalMb\":73527,\"totalGb\":71,\"usedPercent\":37}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    16,
    '2022-04-17 11:12:59.808',
    '2022-04-17 11:12:59.808',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getServerInfo',
    200,
    200845321,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"linux\",\"numCpu\":12,\"compiler\":\"gc\",\"goVersion\":\"go1.18\",\"numGoroutine\":13},\"cpu\":{\"cpus\":[10.526315787722718,10.000000000636646,10.526315789335118,9.999999999636202,27.27272727235145,14.999999998999556,15.789473683883006,10.00000000086402,5.555555554994139,15.000000001409717,5.263157894787229,15.789473683883006],\"cores\":6},\"ram\":{\"usedMb\":18580,\"totalMb\":32040,\"usedPercent\":57},\"disk\":{\"usedMb\":26450,\"usedGb\":25,\"totalMb\":73527,\"totalGb\":71,\"usedPercent\":37}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    17,
    '2022-04-18 09:33:11.635',
    '2022-04-18 09:33:11.635',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10966350,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"8881\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    18,
    '2022-04-18 09:33:19.897',
    '2022-04-18 09:33:19.897',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10819813,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    19,
    '2022-04-18 09:33:25.410',
    '2022-04-18 09:33:25.410',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10882861,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"8881\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    20,
    '2022-04-18 09:33:29.908',
    '2022-04-18 09:33:29.908',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    3831906,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"9528\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    21,
    '2022-04-18 09:33:39.666',
    '2022-04-18 09:33:39.666',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10720996,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    22,
    '2022-04-18 10:54:27.912',
    '2022-04-18 10:54:27.912',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    270027,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    23,
    '2022-04-18 10:55:20.912',
    '2022-04-18 10:55:20.912',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/updateBaseMenu',
    200,
    10996358,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":8,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"person\",\"name\":\"person\",\"hidden\":false,\"component\":\"view/person/person.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"个人信息\",\"icon\":\"message\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    24,
    '2022-04-18 10:55:50.885',
    '2022-04-18 10:55:50.885',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    36974,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    25,
    '2022-04-18 10:56:06.792',
    '2022-04-18 10:56:06.792',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/updateBaseMenu',
    200,
    10627267,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":8,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-18T10:55:20.902+08:00\",\"parentId\":\"0\",\"path\":\"person\",\"name\":\"person\",\"hidden\":true,\"component\":\"view/person/person.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"个人信息\",\"icon\":\"message\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    26,
    '2022-04-18 10:59:06.513',
    '2022-04-18 10:59:06.513',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    61468,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    27,
    '2022-04-18 11:04:06.763',
    '2022-04-18 11:04:06.763',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById',
    200,
    316748,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"id\":13}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    28,
    '2022-04-18 14:04:14.695',
    '2022-04-18 14:04:14.695',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    80807,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    29,
    '2022-04-18 18:59:28.884',
    '2022-04-18 18:59:28.884',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById',
    200,
    32539,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    30,
    '2022-04-18 19:12:02.059',
    '2022-04-18 19:12:02.059',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById',
    200,
    68040,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    31,
    '2022-04-18 19:24:10.332',
    '2022-04-18 19:24:10.332',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    32117,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    32,
    '2022-04-18 19:30:15.161',
    '2022-04-18 19:30:15.161',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    357562,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    33,
    '2022-04-18 19:30:20.169',
    '2022-04-18 19:30:20.169',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    548861,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    34,
    '2022-04-19 10:06:42.148',
    '2022-04-19 10:06:42.148',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    417648,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    35,
    '2022-04-19 10:06:47.089',
    '2022-04-19 10:06:47.089',
    NULL,
    '127.0.0.1',
    'PUT',
    '/api/updateApi',
    200,
    11522486,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    36,
    '2022-04-19 10:07:05.574',
    '2022-04-19 10:07:05.574',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    540649,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:06:47.079+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    37,
    '2022-04-19 10:23:19.056',
    '2022-04-19 10:23:19.056',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/14',
    200,
    411281,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"path\":\"/api/deleteApi\",\"description\":\"删除Api\",\"apiGroup\":\"api\",\"method\":\"DELETE\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    38,
    '2022-04-19 10:23:23.264',
    '2022-04-19 10:23:23.264',
    NULL,
    '127.0.0.1',
    'PUT',
    '/api/updateApi',
    200,
    14241632,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"path\":\"/api/deleteApi\",\"description\":\"删除Api\",\"apiGroup\":\"api\",\"method\":\"POST\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    39,
    '2022-04-19 10:23:25.336',
    '2022-04-19 10:23:25.336',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/14',
    200,
    387196,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:23:23.261+08:00\",\"path\":\"/api/deleteApi\",\"description\":\"删除Api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    40,
    '2022-04-19 10:23:29.591',
    '2022-04-19 10:23:29.591',
    NULL,
    '127.0.0.1',
    'PUT',
    '/api/updateApi',
    200,
    13959632,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:23:23.261+08:00\",\"path\":\"/api/deleteApi\",\"description\":\"删除Api\",\"apiGroup\":\"api\",\"method\":\"DELETE\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    41,
    '2022-04-19 10:23:48.762',
    '2022-04-19 10:23:48.762',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/api/deleteApi',
    200,
    14936865,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:06:47.079+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    42,
    '2022-04-19 10:34:25.575',
    '2022-04-19 10:34:25.575',
    NULL,
    '127.0.0.1',
    'POST',
    '/api/createApi',
    200,
    11129921,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"path\":\"/api/getAllApisList\",\"apiGroup\":\"api\",\"method\":\"GET\",\"description\":\"api get\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    43,
    '2022-04-19 11:24:10.623',
    '2022-04-19 11:24:10.623',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    247420,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    44,
    '2022-04-19 11:24:15.649',
    '2022-04-19 11:24:15.649',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    9692730,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    1
  ),
(
    45,
    '2022-04-19 11:24:15.662',
    '2022-04-19 11:24:15.662',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    34359,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    46,
    '2022-04-19 15:12:51.949',
    '2022-04-19 15:12:51.949',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/admin_register',
    200,
    13956742,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"username\":\"\",\"password\":\"wuwu33\",\"nickName\":\"wuwuhuhu\",\"headerImg\":\"https://qmplusimg.henrongyi.top/1576554439myAvatar.png\",\"authorityId\":\"8881\",\"authorityIds\":[\"8881\",\"888\",\"9528\"],\"userName\":\"wuwu33\",\"phone\":\"14322441155\",\"email\":\"info@email.com\"}',
    '{\"code\":0,\"data\":{\"user\":{\"ID\":3,\"CreatedAt\":\"2022-04-19T15:12:51.936008281+08:00\",\"UpdatedAt\":\"2022-04-19T15:12:51.936008281+08:00\",\"uuid\":\"733c9675-83fa-470a-8a7f-e00eb5c7e021\",\"userName\":\"wuwu33\",\"nickName\":\"wuwuhuhu\",\"sideMode\":\"dark\",\"headerImg\":\"https://qmplusimg.henrongyi.top/1576554439myAvatar.png\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":\"8881\",\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":\"\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":[{\"CreatedAt\":\"2022-04-19T15:12:51.936331801+08:00\",\"UpdatedAt\":\"2022-04-19T15:12:51.936331801+08:00\",\"DeletedAt\":null,\"authorityId\":\"8881\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2022-04-19T15:12:51.936331801+08:00\",\"UpdatedAt\":\"2022-04-19T15:12:51.936331801+08:00\",\"DeletedAt\":null,\"authorityId\":\"888\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2022-04-19T15:12:51.936331801+08:00\",\"UpdatedAt\":\"2022-04-19T15:12:51.936331801+08:00\",\"DeletedAt\":null,\"authorityId\":\"9528\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}],\"phone\":\"\",\"email\":\"\"}},\"msg\":\"注册成功\"}',
    1
  ),
(
    47,
    '2022-04-19 15:13:33.488',
    '2022-04-19 15:13:33.488',
    NULL,
    '127.0.0.1',
    'PUT',
    '/user/setUserInfo',
    200,
    17812409,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":3,\"CreatedAt\":\"2022-04-19T15:12:51.936+08:00\",\"UpdatedAt\":\"2022-04-19T15:12:51.936+08:00\",\"uuid\":\"733c9675-83fa-470a-8a7f-e00eb5c7e021\",\"userName\":\"wuwu33\",\"nickName\":\"wuwuhuhu\",\"sideMode\":\"dark\",\"headerImg\":\"https://qmplusimg.henrongyi.top/1576554439myAvatar.png\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":\"888\",\"authority\":{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.927+08:00\",\"DeletedAt\":null,\"authorityId\":\"8881\",\"authorityName\":\"普通用户子角色\",\"parentId\":\"888\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},\"authorities\":[{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.916+08:00\",\"DeletedAt\":null,\"authorityId\":\"888\",\"authorityName\":\"普通用户\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.927+08:00\",\"DeletedAt\":null,\"authorityId\":\"8881\",\"authorityName\":\"普通用户子角色\",\"parentId\":\"888\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.92+08:00\",\"DeletedAt\":null,\"authorityId\":\"9528\",\"authorityName\":\"测试角色\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}],\"phone\":\"13322346577\",\"email\":\"wuwwu@bbq.com\",\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}',
    1
  ),
(
    48,
    '2022-04-19 15:13:42.061',
    '2022-04-19 15:13:42.061',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/resetPassword',
    200,
    10134606,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":3}',
    '{\"code\":0,\"data\":{},\"msg\":\"重置成功\"}',
    1
  ),
(
    49,
    '2022-04-19 15:13:45.139',
    '2022-04-19 15:13:45.139',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/resetPassword',
    200,
    11668316,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2}',
    '{\"code\":0,\"data\":{},\"msg\":\"重置成功\"}',
    1
  ),
(
    50,
    '2022-04-19 15:45:50.115',
    '2022-04-19 15:45:50.115',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10282262,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"customerName\":\"mimi\",\"customerPhoneData\":\"14322331155\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    3
  ),
(
    51,
    '2022-04-19 15:45:58.943',
    '2022-04-19 15:45:58.943',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    10299189,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    3
  ),
(
    52,
    '2022-04-21 11:07:48.060',
    '2022-04-21 11:07:48.060',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    244270,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    3
  ),
(
    53,
    '2022-04-21 11:08:04.835',
    '2022-04-21 11:08:04.835',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    10473972,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    3
  ),
(
    54,
    '2022-04-21 11:08:04.848',
    '2022-04-21 11:08:04.848',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    33656,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    3
  ),
(
    55,
    '2022-04-21 11:08:05.688',
    '2022-04-21 11:08:05.688',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    10043159,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    3
  ),
(
    56,
    '2022-04-21 11:08:05.698',
    '2022-04-21 11:08:05.698',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    33556,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":false,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    3
  ),
(
    57,
    '2022-04-21 11:09:28.303',
    '2022-04-21 11:09:28.303',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    10188689,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    3
  ),
(
    58,
    '2022-04-21 11:09:28.316',
    '2022-04-21 11:09:28.316',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    35281,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    3
  ),
(
    59,
    '2022-04-21 11:09:36.017',
    '2022-04-21 11:09:36.017',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    38446,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    3
  ),
(
    60,
    '2022-04-21 11:22:28.531',
    '2022-04-21 11:22:28.531',
    NULL,
    '127.0.0.1',
    'POST',
    '/authority/setDataAuthority',
    200,
    11140439,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.916+08:00\",\"DeletedAt\":null,\"authorityId\":\"888\",\"authorityName\":\"普通用户\",\"parentId\":\"0\",\"dataAuthorityId\":[{\"authorityId\":\"888\",\"authorityName\":\"普通用户\"},{\"authorityId\":\"8881\",\"authorityName\":\"普通用户子角色\"},{\"authorityId\":\"9528\",\"authorityName\":\"测试角色\"}],\"children\":[{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.927+08:00\",\"DeletedAt\":null,\"authorityId\":\"8881\",\"authorityName\":\"普通用户子角色\",\"parentId\":\"888\",\"dataAuthorityId\":[],\"children\":[],\"menus\":null,\"defaultRouter\":\"dashboard\"}],\"menus\":null,\"defaultRouter\":\"dashboard\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}',
    3
  ),
(
    61,
    '2022-04-21 15:58:33.262',
    '2022-04-21 15:58:33.262',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    419959,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:06:47.079+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    3
  ),
(
    62,
    '2022-04-21 15:58:35.372',
    '2022-04-21 15:58:35.372',
    NULL,
    '127.0.0.1',
    'PUT',
    '/api/updateApi',
    200,
    11032923,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:06:47.079+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    3
  ),
(
    63,
    '2022-04-24 10:15:07.593',
    '2022-04-24 10:15:07.593',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    429462,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    64,
    '2022-04-24 13:51:08.544',
    '2022-04-24 13:51:08.544',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    479138,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    65,
    '2022-04-25 14:32:16.759',
    '2022-04-25 14:32:16.759',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    269925,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    66,
    '2022-04-25 17:12:27.821',
    '2022-04-25 17:12:27.821',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    279443,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    67,
    '2022-04-25 17:17:05.054',
    '2022-04-25 17:17:05.054',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    1608226100,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    68,
    '2022-04-25 17:17:57.846',
    '2022-04-25 17:17:57.846',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    386078729,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    69,
    '2022-04-25 17:18:04.878',
    '2022-04-25 17:18:04.878',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    10090762,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    1
  ),
(
    70,
    '2022-04-25 17:18:04.889',
    '2022-04-25 17:18:04.889',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    67466,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    71,
    '2022-04-25 17:18:10.381',
    '2022-04-25 17:18:10.381',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    2392178099,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    72,
    '2022-04-25 17:24:36.910',
    '2022-04-25 17:24:36.910',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    39125,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    73,
    '2022-04-25 17:24:40.384',
    '2022-04-25 17:24:40.384',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    63172,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    74,
    '2022-04-25 17:24:50.401',
    '2022-04-25 17:24:50.401',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    374658639,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    75,
    '2022-04-25 17:25:03.431',
    '2022-04-25 17:25:03.431',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    2189304088,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    76,
    '2022-04-25 17:28:15.770',
    '2022-04-25 17:28:15.770',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    709069441,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    77,
    '2022-04-25 17:46:12.324',
    '2022-04-25 17:46:12.324',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    70279,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    78,
    '2022-04-25 17:47:02.209',
    '2022-04-25 17:47:02.209',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    10007557,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    1
  ),
(
    79,
    '2022-04-25 17:47:02.226',
    '2022-04-25 17:47:02.226',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    55123,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    80,
    '2022-04-25 17:52:05.637',
    '2022-04-25 17:52:05.637',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    416104,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    81,
    '2022-04-25 17:52:09.889',
    '2022-04-25 17:52:09.889',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    1600763790,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    82,
    '2022-04-25 17:52:57.524',
    '2022-04-25 17:52:57.524',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    83721,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    83,
    '2022-04-25 17:53:29.875',
    '2022-04-25 17:53:29.875',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    384535658,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    84,
    '2022-04-25 17:55:36.002',
    '2022-04-25 17:55:36.002',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    267464,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    85,
    '2022-04-25 17:55:45.116',
    '2022-04-25 17:55:45.116',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    345803468,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    86,
    '2022-04-25 17:56:32.937',
    '2022-04-25 17:56:32.937',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    574841840,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    87,
    '2022-04-25 17:56:47.270',
    '2022-04-25 17:56:47.270',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    931370937,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    88,
    '2022-04-25 17:58:58.729',
    '2022-04-25 17:58:58.729',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    47495,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    89,
    '2022-04-25 17:59:12.114',
    '2022-04-25 17:59:12.114',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    1158284234,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"}',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    90,
    '2022-04-25 17:59:30.956',
    '2022-04-25 17:59:30.956',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    654534289,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":false,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"}',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    91,
    '2022-04-25 18:04:11.478',
    '2022-04-25 18:04:11.478',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    103800,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":false,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"}',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    92,
    '2022-04-26 14:40:49.900',
    '2022-04-26 14:40:49.900',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    257697,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    93,
    '2022-04-26 14:41:24.991',
    '2022-04-26 14:41:24.991',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    34072,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    94,
    '2022-04-26 16:29:32.559',
    '2022-04-26 16:29:32.559',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    257265,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    95,
    '2022-04-26 19:32:44.473',
    '2022-04-26 19:32:44.473',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    262446,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    96,
    '2022-04-26 19:34:11.990',
    '2022-04-26 19:34:11.990',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    23275607,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[\"888\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    97,
    '2022-04-26 19:37:01.846',
    '2022-04-26 19:37:01.846',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    12803192,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[\"888\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    98,
    '2022-04-26 19:37:06.556',
    '2022-04-26 19:37:06.556',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    10873575,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":3,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    99,
    '2022-04-26 19:37:07.996',
    '2022-04-26 19:37:07.996',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    3983096,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":1,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    100,
    '2022-04-26 19:37:15.419',
    '2022-04-26 19:37:15.419',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    10317980,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[]}',
    '{\"code\":7,\"data\":{},\"msg\":\"修改失败\"}',
    1
  ),
(
    101,
    '2022-04-26 19:37:36.586',
    '2022-04-26 19:37:36.586',
    NULL,
    '127.0.0.1',
    'PUT',
    '/user/setUserInfo',
    200,
    15472610,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"CreatedAt\":\"2022-04-15T17:31:14.897+08:00\",\"UpdatedAt\":\"2022-04-19T15:13:45.128+08:00\",\"uuid\":\"e42b6f6b-b515-45bb-8030-48839f31e7a1\",\"userName\":\"a303176530\",\"nickName\":\"QMPlusUser\",\"sideMode\":\"dark\",\"headerImg\":\"https:///qmplusimg.henrongyi.top/1572075907logo.png\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":\"8881\",\"authority\":{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-21T11:22:28.52+08:00\",\"DeletedAt\":null,\"authorityId\":\"888\",\"authorityName\":\"普通用户\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},\"authorities\":[{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-21T11:22:28.52+08:00\",\"DeletedAt\":null,\"authorityId\":\"888\",\"authorityName\":\"普通用户\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.92+08:00\",\"DeletedAt\":null,\"authorityId\":\"9528\",\"authorityName\":\"测试角色\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}],\"phone\":\"17611111111\",\"email\":\"wuwuwuwu@qq.com\",\"authorityIds\":[\"8881\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}',
    1
  ),
(
    102,
    '2022-04-26 19:39:42.411',
    '2022-04-26 19:39:42.411',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    12807685,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[\"8881\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    103,
    '2022-04-26 19:40:00.069',
    '2022-04-26 19:40:00.069',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/resetPassword',
    200,
    2688246,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2}',
    '{\"code\":0,\"data\":{},\"msg\":\"重置成功\"}',
    1
  ),
(
    104,
    '2022-04-26 19:40:46.643',
    '2022-04-26 19:40:46.643',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    15600866,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[]}',
    '{\"code\":7,\"data\":{},\"msg\":\"修改失败\"}',
    1
  ),
(
    105,
    '2022-04-26 19:40:48.405',
    '2022-04-26 19:40:48.405',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    10145397,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[]}',
    '{\"code\":7,\"data\":{},\"msg\":\"修改失败\"}',
    1
  ),
(
    106,
    '2022-04-26 19:40:56.836',
    '2022-04-26 19:40:56.836',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    15631596,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[]}',
    '{\"code\":7,\"data\":{},\"msg\":\"修改失败\"}',
    1
  ),
(
    107,
    '2022-04-26 19:41:03.934',
    '2022-04-26 19:41:03.934',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    10235256,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    108,
    '2022-04-26 19:41:45.223',
    '2022-04-26 19:41:45.223',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    11123845,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[\"9528\",\"888\",\"8881\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    109,
    '2022-04-27 10:17:08.280',
    '2022-04-27 10:17:08.280',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10648801,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"9528\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    110,
    '2022-04-27 10:17:08.280',
    '2022-04-27 10:17:08.280',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    13231823,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":1,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    111,
    '2022-04-27 10:17:28.274',
    '2022-04-27 10:17:28.274',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10747554,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"8881\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    112,
    '2022-04-27 10:19:53.093',
    '2022-04-27 10:19:53.093',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10601267,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"9528\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    113,
    '2022-04-27 10:19:58.252',
    '2022-04-27 10:19:58.252',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10455303,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    114,
    '2022-04-27 10:20:01.566',
    '2022-04-27 10:20:01.566',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10529832,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"8881\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    115,
    '2022-04-27 10:20:11.940',
    '2022-04-27 10:20:11.940',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10491986,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    116,
    '2022-04-27 10:21:08.914',
    '2022-04-27 10:21:08.914',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/addMenuAuthority',
    200,
    15840847,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"menus\":[{\"ID\":1,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"dashboard\",\"name\":\"dashboard\",\"hidden\":false,\"component\":\"view/dashboard/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"仪表盘\",\"icon\":\"odometer\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":3,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"admin\",\"name\":\"superAdmin\",\"hidden\":false,\"component\":\"view/superAdmin/index.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"超级管理员\",\"icon\":\"user\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":8,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-18T10:56:06.782+08:00\",\"parentId\":\"0\",\"path\":\"person\",\"name\":\"person\",\"hidden\":true,\"component\":\"view/person/person.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"个人信息\",\"icon\":\"message\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"systemTools\",\"name\":\"systemTools\",\"hidden\":false,\"component\":\"view/systemTools/index.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统工具\",\"icon\":\"tools\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":9,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"example\",\"name\":\"example\",\"hidden\":false,\"component\":\"view/example/index.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"示例文件\",\"icon\":\"management\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":21,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"simpleUploader\",\"name\":\"simpleUploader\",\"hidden\":false,\"component\":\"view/example/simpleUploader/simpleUploader\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传（插件版）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":2,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"about\",\"name\":\"about\",\"hidden\":false,\"component\":\"view/about/index.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"关于我们\",\"icon\":\"info-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}',
    1
  ),
(
    117,
    '2022-04-27 10:21:27.074',
    '2022-04-27 10:21:27.074',
    NULL,
    '127.0.0.1',
    'POST',
    '/casbin/updateCasbin',
    200,
    32169450,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"888\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/admin_register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"DELETE\"},{\"path\":\"/api/updateApi\",\"method\":\"PUT\"},{\"path\":\"/api/getApiList\",\"method\":\"GET\"},{\"path\":\"/api/getAllApis\",\"method\":\"GET\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/editFileName\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/createPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/delPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/authorityBtn/setAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/getAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/canRemoveAuthorityBtn\",\"method\":\"POST\"}]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    118,
    '2022-04-27 10:21:28.526',
    '2022-04-27 10:21:28.526',
    NULL,
    '127.0.0.1',
    'POST',
    '/casbin/updateCasbin',
    200,
    29087730,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"888\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/admin_register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"DELETE\"},{\"path\":\"/api/updateApi\",\"method\":\"PUT\"},{\"path\":\"/api/getApiList\",\"method\":\"GET\"},{\"path\":\"/api/getAllApis\",\"method\":\"GET\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/editFileName\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/createPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/delPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/authorityBtn/setAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/getAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/canRemoveAuthorityBtn\",\"method\":\"POST\"}]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    119,
    '2022-04-27 10:21:49.121',
    '2022-04-27 10:21:49.121',
    NULL,
    '127.0.0.1',
    'POST',
    '/casbin/updateCasbin',
    200,
    32444125,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"888\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/admin_register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"DELETE\"},{\"path\":\"/api/updateApi\",\"method\":\"PUT\"},{\"path\":\"/api/getApiList\",\"method\":\"GET\"},{\"path\":\"/api/getAllApis\",\"method\":\"GET\"},{\"path\":\"/api/getApiById\",\"method\":\"GET\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/api/getAllApisList\",\"method\":\"GET\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/editFileName\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/createPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/delPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/authorityBtn/setAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/getAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/canRemoveAuthorityBtn\",\"method\":\"POST\"}]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    120,
    '2022-04-27 10:21:50.271',
    '2022-04-27 10:21:50.271',
    NULL,
    '127.0.0.1',
    'POST',
    '/casbin/updateCasbin',
    200,
    30082745,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"888\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/admin_register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"DELETE\"},{\"path\":\"/api/updateApi\",\"method\":\"PUT\"},{\"path\":\"/api/getApiList\",\"method\":\"GET\"},{\"path\":\"/api/getAllApis\",\"method\":\"GET\"},{\"path\":\"/api/getApiById\",\"method\":\"GET\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/api/getAllApisList\",\"method\":\"GET\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/editFileName\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/createPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/delPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/authorityBtn/setAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/getAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/canRemoveAuthorityBtn\",\"method\":\"POST\"}]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    121,
    '2022-04-27 10:21:54.110',
    '2022-04-27 10:21:54.110',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/addMenuAuthority',
    200,
    12851585,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"menus\":[{\"ID\":1,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"dashboard\",\"name\":\"dashboard\",\"hidden\":false,\"component\":\"view/dashboard/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"仪表盘\",\"icon\":\"odometer\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":3,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"admin\",\"name\":\"superAdmin\",\"hidden\":false,\"component\":\"view/superAdmin/index.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"超级管理员\",\"icon\":\"user\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":8,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-18T10:56:06.782+08:00\",\"parentId\":\"0\",\"path\":\"person\",\"name\":\"person\",\"hidden\":true,\"component\":\"view/person/person.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"个人信息\",\"icon\":\"message\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"systemTools\",\"name\":\"systemTools\",\"hidden\":false,\"component\":\"view/systemTools/index.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统工具\",\"icon\":\"tools\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":9,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"example\",\"name\":\"example\",\"hidden\":false,\"component\":\"view/example/index.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"示例文件\",\"icon\":\"management\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":21,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"simpleUploader\",\"name\":\"simpleUploader\",\"hidden\":false,\"component\":\"view/example/simpleUploader/simpleUploader\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传（插件版）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":21,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"simpleUploader\",\"name\":\"simpleUploader\",\"hidden\":false,\"component\":\"view/example/simpleUploader/simpleUploader\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传（插件版）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":2,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"about\",\"name\":\"about\",\"hidden\":false,\"component\":\"view/about/index.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"关于我们\",\"icon\":\"info-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}',
    1
  ),
(
    122,
    '2022-04-27 10:22:46.150',
    '2022-04-27 10:22:46.150',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    299225,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    123,
    '2022-04-27 10:22:49.432',
    '2022-04-27 10:22:49.432',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    107335,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"}',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    124,
    '2022-04-27 10:22:53.455',
    '2022-04-27 10:22:53.455',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    71323,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"}',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    125,
    '2022-04-27 10:27:20.475',
    '2022-04-27 10:27:20.475',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    122494,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"}',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    126,
    '2022-04-27 10:28:11.568',
    '2022-04-27 10:28:11.568',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    77542,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":false,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"}',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    127,
    '2022-04-27 10:28:53.265',
    '2022-04-27 10:28:53.265',
    NULL,
    '127.0.0.1',
    'POST',
    '/email/emailTest',
    200,
    735640226,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":false,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"}',
    '{\"code\":7,\"data\":{},\"msg\":\"发送失败\"}',
    1
  ),
(
    128,
    '2022-04-27 10:35:30.647',
    '2022-04-27 10:35:30.647',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/addMenuAuthority',
    200,
    17131996,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"menus\":[{\"ID\":1,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"dashboard\",\"name\":\"dashboard\",\"hidden\":false,\"component\":\"view/dashboard/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"仪表盘\",\"icon\":\"odometer\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":3,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"admin\",\"name\":\"superAdmin\",\"hidden\":false,\"component\":\"view/superAdmin/index.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"超级管理员\",\"icon\":\"user\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":8,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-18T10:56:06.782+08:00\",\"parentId\":\"0\",\"path\":\"person\",\"name\":\"person\",\"hidden\":true,\"component\":\"view/person/person.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"个人信息\",\"icon\":\"message\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"systemTools\",\"name\":\"systemTools\",\"hidden\":false,\"component\":\"view/systemTools/index.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统工具\",\"icon\":\"tools\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":9,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"example\",\"name\":\"example\",\"hidden\":false,\"component\":\"view/example/index.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"示例文件\",\"icon\":\"management\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":21,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"simpleUploader\",\"name\":\"simpleUploader\",\"hidden\":false,\"component\":\"view/example/simpleUploader/simpleUploader\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传（插件版）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":2,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"about\",\"name\":\"about\",\"hidden\":false,\"component\":\"view/about/index.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"关于我们\",\"icon\":\"info-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}',
    1
  ),
(
    129,
    '2022-04-27 11:34:59.987',
    '2022-04-27 11:34:59.987',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    13129784,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":1,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    130,
    '2022-04-27 11:35:55.543',
    '2022-04-27 11:35:55.543',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    11156779,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"9528\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    131,
    '2022-04-27 11:36:00.511',
    '2022-04-27 11:36:00.511',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10753403,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    132,
    '2022-04-27 11:41:49.815',
    '2022-04-27 11:41:49.815',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/addMenuAuthority',
    200,
    13430689,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"menus\":[{\"ID\":1,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"dashboard\",\"name\":\"dashboard\",\"hidden\":false,\"component\":\"view/dashboard/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"仪表盘\",\"icon\":\"odometer\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":3,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"admin\",\"name\":\"superAdmin\",\"hidden\":false,\"component\":\"view/superAdmin/index.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"超级管理员\",\"icon\":\"user\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":8,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-18T10:56:06.782+08:00\",\"parentId\":\"0\",\"path\":\"person\",\"name\":\"person\",\"hidden\":true,\"component\":\"view/person/person.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"个人信息\",\"icon\":\"message\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"systemTools\",\"name\":\"systemTools\",\"hidden\":false,\"component\":\"view/systemTools/index.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统工具\",\"icon\":\"tools\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":9,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"example\",\"name\":\"example\",\"hidden\":false,\"component\":\"view/example/index.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"示例文件\",\"icon\":\"management\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":21,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"simpleUploader\",\"name\":\"simpleUploader\",\"hidden\":false,\"component\":\"view/example/simpleUploader/simpleUploader\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传（插件版）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":2,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"about\",\"name\":\"about\",\"hidden\":false,\"component\":\"view/about/index.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"关于我们\",\"icon\":\"info-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}',
    1
  ),
(
    133,
    '2022-04-27 11:52:46.586',
    '2022-04-27 11:52:46.586',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    297266,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-21T15:58:35.362+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    134,
    '2022-04-27 11:54:21.963',
    '2022-04-27 11:54:21.963',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    428504,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-21T15:58:35.362+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    135,
    '2022-04-27 13:48:32.477',
    '2022-04-27 13:48:32.477',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    471363,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-21T15:58:35.362+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    136,
    '2022-04-27 13:48:34.025',
    '2022-04-27 13:48:34.025',
    NULL,
    '127.0.0.1',
    'PUT',
    '/api/updateApi',
    200,
    10707622,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-21T15:58:35.362+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    137,
    '2022-04-27 14:58:40.143',
    '2022-04-27 14:58:40.143',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/14',
    200,
    404677,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:23:29.587+08:00\",\"path\":\"/api/deleteApi\",\"description\":\"删除Api\",\"apiGroup\":\"api\",\"method\":\"DELETE\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    138,
    '2022-04-27 14:58:45.447',
    '2022-04-27 14:58:45.447',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/14',
    200,
    344865,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:23:29.587+08:00\",\"path\":\"/api/deleteApi\",\"description\":\"删除Api\",\"apiGroup\":\"api\",\"method\":\"DELETE\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    139,
    '2022-04-27 14:59:01.594',
    '2022-04-27 14:59:01.594',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    397522,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    140,
    '2022-04-27 14:59:07.328',
    '2022-04-27 14:59:07.328',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    437551,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    141,
    '2022-04-27 14:59:10.504',
    '2022-04-27 14:59:10.504',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/14',
    200,
    407076,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:23:29.587+08:00\",\"path\":\"/api/deleteApi\",\"description\":\"删除Api\",\"apiGroup\":\"api\",\"method\":\"DELETE\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    142,
    '2022-04-28 11:42:07.724',
    '2022-04-28 11:42:07.724',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    254750,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    143,
    '2022-04-28 11:42:17.329',
    '2022-04-28 11:42:17.329',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    54900,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    144,
    '2022-04-28 11:43:53.645',
    '2022-04-28 11:43:53.645',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    10120600,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    1
  ),
(
    145,
    '2022-04-28 11:43:53.661',
    '2022-04-28 11:43:53.661',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    50310,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server]\",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    146,
    '2022-04-28 11:44:21.508',
    '2022-04-28 11:44:21.508',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    10202338,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    1
  ),
(
    147,
    '2022-04-28 11:44:21.521',
    '2022-04-28 11:44:21.521',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    35787,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    148,
    '2022-04-28 14:21:57.824',
    '2022-04-28 14:21:57.824',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    318477,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    149,
    '2022-04-28 14:23:37.490',
    '2022-04-28 14:23:37.490',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    44845,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    150,
    '2022-04-28 14:24:40.882',
    '2022-04-28 14:24:40.882',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    289302,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    151,
    '2022-04-28 14:25:38.397',
    '2022-04-28 14:25:38.397',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    43956,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    152,
    '2022-04-28 14:26:32.805',
    '2022-04-28 14:26:32.805',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    10130197,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    1
  ),
(
    153,
    '2022-04-28 14:26:32.821',
    '2022-04-28 14:26:32.821',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    38300,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":100,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    154,
    '2022-04-28 14:27:05.484',
    '2022-04-28 14:27:05.484',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/setSystemConfig',
    200,
    9505913,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":1000,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}',
    '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}',
    1
  ),
(
    155,
    '2022-04-28 14:27:05.496',
    '2022-04-28 14:27:05.496',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    45102,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":1000,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    156,
    '2022-04-28 17:25:10.462',
    '2022-04-28 17:25:10.462',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/api/deleteApisByIds',
    200,
    10227355,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ids\":[13,14,15,16,17,18,19,92,1,26]}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    157,
    '2022-04-28 17:25:19.953',
    '2022-04-28 17:25:19.953',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/api/deleteApisByIds',
    200,
    12834170,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ids\":[27,83,84,85,86,87,88,2,53,54]}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    158,
    '2022-04-28 17:26:16.342',
    '2022-04-28 17:26:16.342',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/api/deleteApisByIds',
    200,
    9716035,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ids\":[55,56,57,61,62,63,64,37,38,39]}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    159,
    '2022-04-28 17:35:23.309',
    '2022-04-28 17:35:23.309',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    426702,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    160,
    '2022-04-28 20:18:51.226',
    '2022-04-28 20:18:51.226',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    9475550,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"wuhao\",\"customerPhoneData\":\"13399880055\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    161,
    '2022-04-28 21:22:44.838',
    '2022-04-28 21:22:44.838',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    9640246,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"wuhao\",\"customerPhoneData\":\"15566779900\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    162,
    '2022-04-28 21:23:22.358',
    '2022-04-28 21:23:22.358',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10041991,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"lisi\",\"customerPhoneData\":\"15200833442\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    163,
    '2022-04-28 21:23:38.718',
    '2022-04-28 21:23:38.718',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10221969,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"mimi\",\"customerPhoneData\":\"15644332233\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    164,
    '2022-04-28 21:23:52.862',
    '2022-04-28 21:23:52.862',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10112108,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"mimo\",\"customerPhoneData\":\"14233115544\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    165,
    '2022-04-28 21:24:15.439',
    '2022-04-28 21:24:15.439',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10146628,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"wangwu\",\"customerPhoneData\":\"17499223311\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    166,
    '2022-04-28 21:24:36.903',
    '2022-04-28 21:24:36.903',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10123887,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"wumi\",\"customerPhoneData\":\"14511223399\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    167,
    '2022-04-28 21:25:05.200',
    '2022-04-28 21:25:05.200',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10204296,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"chenda\",\"customerPhoneData\":\"16822335544\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    168,
    '2022-04-28 21:25:34.479',
    '2022-04-28 21:25:34.479',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10095468,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"wanglaoer\",\"customerPhoneData\":\"13522347744\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    169,
    '2022-04-28 21:26:44.329',
    '2022-04-28 21:26:44.329',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10171818,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"wuhaozhong\",\"customerPhoneData\":\"14322333188\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    170,
    '2022-04-28 21:27:09.140',
    '2022-04-28 21:27:09.140',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    12968193,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"maoshi\",\"customerPhoneData\":\"15422331155\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    171,
    '2022-04-29 09:23:52.933',
    '2022-04-29 09:23:52.933',
    NULL,
    '127.0.0.1',
    'PUT',
    '/customer/customer',
    200,
    11584750,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":4,\"CreatedAt\":\"2022-04-28T21:23:22.348+08:00\",\"UpdatedAt\":\"2022-04-28T21:23:22.348+08:00\",\"customerName\":\"lisi\",\"customerPhoneData\":\"15200833442\",\"sysUserId\":1,\"sysUserAuthorityID\":\"888\",\"sysUser\":{\"ID\":0,\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"uuid\":\"00000000-0000-0000-0000-000000000000\",\"userName\":\"\",\"nickName\":\"\",\"sideMode\":\"\",\"headerImg\":\"\",\"baseColor\":\"\",\"activeColor\":\"\",\"authorityId\":\"\",\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":\"\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":null,\"phone\":\"\",\"email\":\"\"}}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    172,
    '2022-04-29 09:23:59.897',
    '2022-04-29 09:23:59.897',
    NULL,
    '127.0.0.1',
    'PUT',
    '/customer/customer',
    200,
    10381821,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":4,\"CreatedAt\":\"2022-04-28T21:23:22.348+08:00\",\"UpdatedAt\":\"2022-04-29T09:23:52.922+08:00\",\"customerName\":\"lisi0\",\"customerPhoneData\":\"15200833442\",\"sysUserId\":1,\"sysUserAuthorityID\":\"888\",\"sysUser\":{\"ID\":0,\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"uuid\":\"00000000-0000-0000-0000-000000000000\",\"userName\":\"\",\"nickName\":\"\",\"sideMode\":\"\",\"headerImg\":\"\",\"baseColor\":\"\",\"activeColor\":\"\",\"authorityId\":\"\",\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":\"\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":null,\"phone\":\"\",\"email\":\"\"}}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    173,
    '2022-04-29 10:15:44.411',
    '2022-04-29 10:15:44.411',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    59693,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    174,
    '2022-04-29 10:15:44.428',
    '2022-04-29 10:15:44.428',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    13103624,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":2}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    175,
    '2022-04-29 10:15:44.428',
    '2022-04-29 10:15:44.428',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    7320172,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":4}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    176,
    '2022-04-29 10:15:44.429',
    '2022-04-29 10:15:44.429',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    4591674,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":3}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    177,
    '2022-04-29 10:15:44.432',
    '2022-04-29 10:15:44.432',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    4385593,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":5}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    178,
    '2022-04-29 10:15:44.433',
    '2022-04-29 10:15:44.433',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    1870805,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":6}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    179,
    '2022-04-29 10:15:44.438',
    '2022-04-29 10:15:44.438',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2444856,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":7}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    180,
    '2022-04-29 10:15:44.450',
    '2022-04-29 10:15:44.450',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    5076839,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":10}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    181,
    '2022-04-29 10:15:44.453',
    '2022-04-29 10:15:44.453',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    4826814,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":8}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    182,
    '2022-04-29 10:15:44.459',
    '2022-04-29 10:15:44.459',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    8499894,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":9}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    183,
    '2022-04-29 10:15:44.460',
    '2022-04-29 10:15:44.460',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    1119742,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":2}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    184,
    '2022-04-29 10:15:44.462',
    '2022-04-29 10:15:44.462',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    7337896,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":11}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    185,
    '2022-04-29 10:15:44.464',
    '2022-04-29 10:15:44.464',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    1882121,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":3}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    186,
    '2022-04-29 10:15:44.466',
    '2022-04-29 10:15:44.466',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    1357040,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":4}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    187,
    '2022-04-29 10:15:44.469',
    '2022-04-29 10:15:44.469',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    575225,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":5}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    188,
    '2022-04-29 10:15:44.481',
    '2022-04-29 10:15:44.481',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2430915,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":6}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    189,
    '2022-04-29 10:15:44.485',
    '2022-04-29 10:15:44.485',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2194925,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":8}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    190,
    '2022-04-29 10:15:44.488',
    '2022-04-29 10:15:44.488',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    1833687,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":9}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    191,
    '2022-04-29 10:15:44.490',
    '2022-04-29 10:15:44.490',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    749034,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":10}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    192,
    '2022-04-29 10:15:44.495',
    '2022-04-29 10:15:44.495',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2721271,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":7}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    193,
    '2022-04-29 10:15:44.501',
    '2022-04-29 10:15:44.501',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    4243670,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":11}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    194,
    '2022-04-29 10:15:44.605',
    '2022-04-29 10:15:44.605',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    29174,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    195,
    '2022-04-29 10:15:44.613',
    '2022-04-29 10:15:44.613',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2431142,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    196,
    '2022-04-29 10:15:44.621',
    '2022-04-29 10:15:44.621',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    13582427,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    197,
    '2022-04-29 10:15:44.636',
    '2022-04-29 10:15:44.636',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    29931,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    198,
    '2022-04-29 10:15:44.640',
    '2022-04-29 10:15:44.640',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    1105406,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    199,
    '2022-04-29 10:15:44.644',
    '2022-04-29 10:15:44.644',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    770697,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    200,
    '2022-04-29 10:15:44.660',
    '2022-04-29 10:15:44.660',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    30945,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    201,
    '2022-04-29 10:15:44.665',
    '2022-04-29 10:15:44.665',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    1212668,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    202,
    '2022-04-29 10:15:44.668',
    '2022-04-29 10:15:44.668',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    1002840,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    203,
    '2022-04-29 10:15:44.688',
    '2022-04-29 10:15:44.688',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    31817,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    204,
    '2022-04-29 10:15:44.693',
    '2022-04-29 10:15:44.693',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2439803,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    205,
    '2022-04-29 10:15:44.693',
    '2022-04-29 10:15:44.693',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    561665,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    206,
    '2022-04-29 10:15:44.713',
    '2022-04-29 10:15:44.713',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    26999,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    207,
    '2022-04-29 10:15:44.718',
    '2022-04-29 10:15:44.718',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2230400,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    208,
    '2022-04-29 10:15:44.719',
    '2022-04-29 10:15:44.719',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    586762,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    209,
    '2022-04-29 10:15:44.736',
    '2022-04-29 10:15:44.736',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    29335,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    210,
    '2022-04-29 10:15:44.742',
    '2022-04-29 10:15:44.742',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2594751,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    211,
    '2022-04-29 10:15:44.742',
    '2022-04-29 10:15:44.742',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    577614,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    212,
    '2022-04-29 10:15:44.759',
    '2022-04-29 10:15:44.759',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    22155,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    213,
    '2022-04-29 10:15:44.762',
    '2022-04-29 10:15:44.762',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    581485,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    214,
    '2022-04-29 10:15:44.764',
    '2022-04-29 10:15:44.764',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    441026,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    215,
    '2022-04-29 10:15:44.777',
    '2022-04-29 10:15:44.777',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    25543,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    216,
    '2022-04-29 10:15:44.781',
    '2022-04-29 10:15:44.781',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2367120,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    217,
    '2022-04-29 10:15:44.782',
    '2022-04-29 10:15:44.782',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    524137,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    218,
    '2022-04-29 10:15:44.795',
    '2022-04-29 10:15:44.795',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    25901,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    219,
    '2022-04-29 10:15:44.800',
    '2022-04-29 10:15:44.800',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2309567,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    220,
    '2022-04-29 10:15:44.800',
    '2022-04-29 10:15:44.800',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    490108,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    221,
    '2022-04-29 10:15:44.814',
    '2022-04-29 10:15:44.814',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    23906,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    222,
    '2022-04-29 10:15:44.817',
    '2022-04-29 10:15:44.817',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    475844,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    223,
    '2022-04-29 10:15:44.819',
    '2022-04-29 10:15:44.819',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    603984,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    224,
    '2022-04-29 10:15:44.837',
    '2022-04-29 10:15:44.837',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    128106,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    225,
    '2022-04-29 10:15:44.841',
    '2022-04-29 10:15:44.841',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    1167875,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    226,
    '2022-04-29 10:15:44.845',
    '2022-04-29 10:15:44.845',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    934797,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    227,
    '2022-04-29 10:15:44.854',
    '2022-04-29 10:15:44.854',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    26561,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    228,
    '2022-04-29 10:15:44.859',
    '2022-04-29 10:15:44.859',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2545790,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    229,
    '2022-04-29 10:15:44.860',
    '2022-04-29 10:15:44.860',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    564458,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    230,
    '2022-04-29 10:15:44.875',
    '2022-04-29 10:15:44.875',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    33003,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    231,
    '2022-04-29 10:15:44.879',
    '2022-04-29 10:15:44.879',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2253565,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    232,
    '2022-04-29 10:15:44.879',
    '2022-04-29 10:15:44.879',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    470023,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    233,
    '2022-04-29 10:15:44.891',
    '2022-04-29 10:15:44.891',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    23169,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    234,
    '2022-04-29 10:15:44.897',
    '2022-04-29 10:15:44.897',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    3372203,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    235,
    '2022-04-29 10:15:44.897',
    '2022-04-29 10:15:44.897',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    770258,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    236,
    '2022-04-29 10:15:44.923',
    '2022-04-29 10:15:44.923',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    33309,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    237,
    '2022-04-29 10:15:44.930',
    '2022-04-29 10:15:44.930',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    3053205,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    238,
    '2022-04-29 10:15:44.930',
    '2022-04-29 10:15:44.930',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    604618,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    239,
    '2022-04-29 10:15:44.943',
    '2022-04-29 10:15:44.943',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    28686,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    240,
    '2022-04-29 10:15:44.948',
    '2022-04-29 10:15:44.948',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2256278,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    241,
    '2022-04-29 10:15:44.948',
    '2022-04-29 10:15:44.948',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    560777,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    242,
    '2022-04-29 10:15:44.963',
    '2022-04-29 10:15:44.963',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    31226,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    243,
    '2022-04-29 10:15:44.969',
    '2022-04-29 10:15:44.969',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2638262,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    244,
    '2022-04-29 10:15:44.969',
    '2022-04-29 10:15:44.969',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    575038,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    245,
    '2022-04-29 10:15:44.980',
    '2022-04-29 10:15:44.980',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    21124,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    246,
    '2022-04-29 10:15:44.985',
    '2022-04-29 10:15:44.985',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    2488119,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    247,
    '2022-04-29 10:15:44.985',
    '2022-04-29 10:15:44.985',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    481688,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    248,
    '2022-04-29 10:15:44.997',
    '2022-04-29 10:15:44.997',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    25710,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    249,
    '2022-04-29 10:15:45.004',
    '2022-04-29 10:15:45.004',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    3437680,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    250,
    '2022-04-29 10:15:45.007',
    '2022-04-29 10:15:45.007',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    3016326,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":12}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    251,
    '2022-04-29 10:15:45.026',
    '2022-04-29 10:15:45.026',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    24303,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    252,
    '2022-04-29 10:15:45.221',
    '2022-04-29 10:15:45.221',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    27038,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    253,
    '2022-04-29 10:15:45.234',
    '2022-04-29 10:15:45.234',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    24009,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    254,
    '2022-04-29 10:15:45.333',
    '2022-04-29 10:15:45.333',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    27386,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    255,
    '2022-04-29 10:15:45.344',
    '2022-04-29 10:15:45.344',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    32450,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    256,
    '2022-04-29 10:15:45.367',
    '2022-04-29 10:15:45.367',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    20069,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    257,
    '2022-04-29 10:15:45.376',
    '2022-04-29 10:15:45.376',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    23235,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    258,
    '2022-04-29 10:15:45.386',
    '2022-04-29 10:15:45.386',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    29815,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    259,
    '2022-04-29 10:15:45.396',
    '2022-04-29 10:15:45.396',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    19979,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    260,
    '2022-04-29 10:15:45.404',
    '2022-04-29 10:15:45.404',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    29321,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    261,
    '2022-04-29 10:15:45.413',
    '2022-04-29 10:15:45.413',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    25715,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    262,
    '2022-04-29 10:15:45.423',
    '2022-04-29 10:15:45.423',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    26817,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    263,
    '2022-04-29 10:15:45.431',
    '2022-04-29 10:15:45.431',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    24234,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    264,
    '2022-04-29 10:15:45.441',
    '2022-04-29 10:15:45.441',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    36677,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    265,
    '2022-04-29 10:15:45.450',
    '2022-04-29 10:15:45.450',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    35403,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    266,
    '2022-04-29 10:15:45.457',
    '2022-04-29 10:15:45.457',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    22820,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    267,
    '2022-04-29 10:15:45.467',
    '2022-04-29 10:15:45.467',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    29267,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    268,
    '2022-04-29 10:15:45.473',
    '2022-04-29 10:15:45.473',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    25627,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    269,
    '2022-04-29 10:15:45.482',
    '2022-04-29 10:15:45.482',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    22020,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    270,
    '2022-04-29 10:15:45.491',
    '2022-04-29 10:15:45.491',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    50754,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    271,
    '2022-04-29 10:15:45.499',
    '2022-04-29 10:15:45.499',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    27799,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    272,
    '2022-04-29 10:15:45.506',
    '2022-04-29 10:15:45.506',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    32575,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    273,
    '2022-04-29 10:15:45.513',
    '2022-04-29 10:15:45.513',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    22396,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    274,
    '2022-04-29 10:15:45.522',
    '2022-04-29 10:15:45.522',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    19706,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    275,
    '2022-04-29 10:15:45.531',
    '2022-04-29 10:15:45.531',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    32658,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    276,
    '2022-04-29 10:15:45.538',
    '2022-04-29 10:15:45.538',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    29256,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    277,
    '2022-04-29 10:15:45.549',
    '2022-04-29 10:15:45.549',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    29195,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    278,
    '2022-04-29 10:15:45.556',
    '2022-04-29 10:15:45.556',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    30519,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    279,
    '2022-04-29 10:15:45.564',
    '2022-04-29 10:15:45.564',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    22619,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    280,
    '2022-04-29 10:15:45.583',
    '2022-04-29 10:15:45.583',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    27512,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    281,
    '2022-04-29 10:15:45.593',
    '2022-04-29 10:15:45.593',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    28676,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    282,
    '2022-04-29 10:15:45.602',
    '2022-04-29 10:15:45.602',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    22103,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    283,
    '2022-04-29 10:15:45.611',
    '2022-04-29 10:15:45.611',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    23697,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    284,
    '2022-04-29 10:15:45.619',
    '2022-04-29 10:15:45.619',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    19223,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    285,
    '2022-04-29 10:15:45.628',
    '2022-04-29 10:15:45.628',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    20268,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    286,
    '2022-04-29 10:15:45.637',
    '2022-04-29 10:15:45.637',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    18418,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    287,
    '2022-04-29 10:15:45.645',
    '2022-04-29 10:15:45.645',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    27384,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    288,
    '2022-04-29 10:15:45.652',
    '2022-04-29 10:15:45.652',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    20846,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    289,
    '2022-04-29 10:15:45.661',
    '2022-04-29 10:15:45.661',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    19501,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{}',
    '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}',
    1
  ),
(
    290,
    '2022-04-29 10:16:35.330',
    '2022-04-29 10:16:35.330',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    10220261,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"lisi\",\"customerPhoneData\":\"15544223355\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    291,
    '2022-04-29 10:22:44.536',
    '2022-04-29 10:22:44.536',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    10242466,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"ID\":13}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    292,
    '2022-04-29 10:23:05.477',
    '2022-04-29 10:23:05.477',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    12844654,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '{\"customerName\":\"wanglaowu\",\"customerPhoneData\":\"13322009955\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    293,
    '2022-04-29 11:51:25.427',
    '2022-04-29 11:51:25.427',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    251430,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":1000,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    294,
    '2022-04-29 13:57:19.837',
    '2022-04-29 13:57:19.837',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    68691,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":1000,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    295,
    '2022-04-29 13:57:25.043',
    '2022-04-29 13:57:25.043',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    44902,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 UOS',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":1000,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    296,
    '2022-05-02 15:08:06.103',
    '2022-05-02 15:08:06.103',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    275516,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":1000,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    297,
    '2022-05-02 15:08:22.256',
    '2022-05-02 15:08:22.256',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    39122,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":1000,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    298,
    '2022-05-07 10:34:20.830',
    '2022-05-07 10:34:20.830',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/customer/customer',
    200,
    10105903,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":14}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    299,
    '2022-05-07 10:40:35.878',
    '2022-05-07 10:40:35.878',
    NULL,
    '127.0.0.1',
    'POST',
    '/customer/customer',
    200,
    9923149,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"customerName\":\"wuhao\",\"customerPhoneData\":\"13566728809\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    300,
    '2022-05-07 10:40:41.502',
    '2022-05-07 10:40:41.502',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10909351,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"authorityId\":\"8881\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    301,
    '2022-05-07 10:40:49.406',
    '2022-05-07 10:40:49.406',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    10690151,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"authorityId\":\"9528\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    302,
    '2022-05-07 11:13:22.641',
    '2022-05-07 11:13:22.641',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthority',
    200,
    11725001,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    303,
    '2022-05-07 15:17:50.597',
    '2022-05-07 15:17:50.597',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/updateBaseMenu',
    200,
    11060590,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":9,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"example\",\"name\":\"example\",\"hidden\":false,\"component\":\"view/example/index.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"示例文件\",\"icon\":\"briefcase\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    304,
    '2022-05-07 15:19:05.797',
    '2022-05-07 15:19:05.797',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    443215,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    305,
    '2022-05-07 15:30:44.161',
    '2022-05-07 15:30:44.161',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    423561,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    306,
    '2022-05-07 15:31:07.521',
    '2022-05-07 15:31:07.521',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    526337,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    307,
    '2022-05-07 15:32:28.480',
    '2022-05-07 15:32:28.480',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    12089194,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":1,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    308,
    '2022-05-07 15:32:30.599',
    '2022-05-07 15:32:30.599',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    10902080,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    309,
    '2022-05-07 15:32:33.207',
    '2022-05-07 15:32:33.207',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    10951227,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":3,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    310,
    '2022-05-07 15:32:45.289',
    '2022-05-07 15:32:45.289',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    11092765,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":3,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    311,
    '2022-05-09 15:44:46.891',
    '2022-05-09 15:44:46.891',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    517379,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    312,
    '2022-05-09 15:47:51.166',
    '2022-05-09 15:47:51.166',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    577698,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    313,
    '2022-05-09 15:47:53.741',
    '2022-05-09 15:47:53.741',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/14',
    200,
    345748,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-19T10:23:29.587+08:00\",\"path\":\"/api/deleteApi\",\"description\":\"删除Api\",\"apiGroup\":\"api\",\"method\":\"DELETE\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    314,
    '2022-05-09 15:49:06.953',
    '2022-05-09 15:49:06.953',
    NULL,
    '127.0.0.1',
    'PUT',
    '/user/setUserInfo',
    200,
    8224966,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":2,\"CreatedAt\":\"2022-04-15T17:31:14.897+08:00\",\"UpdatedAt\":\"2022-05-07T15:32:30.589+08:00\",\"uuid\":\"e42b6f6b-b515-45bb-8030-48839f31e7a1\",\"userName\":\"a303176530\",\"nickName\":\"QMPlusUser\",\"sideMode\":\"dark\",\"headerImg\":\"uploads/file/3768a18e1d6e8997a8a9c838e64d3cd7_20220507113208.jpg\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":\"888\",\"authority\":{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-27T11:41:49.803+08:00\",\"DeletedAt\":null,\"authorityId\":\"888\",\"authorityName\":\"普通用户\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},\"authorities\":[{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-27T11:41:49.803+08:00\",\"DeletedAt\":null,\"authorityId\":\"888\",\"authorityName\":\"普通用户\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.927+08:00\",\"DeletedAt\":null,\"authorityId\":\"8881\",\"authorityName\":\"普通用户子角色\",\"parentId\":\"888\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2022-04-15T17:31:14.865+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.92+08:00\",\"DeletedAt\":null,\"authorityId\":\"9528\",\"authorityName\":\"测试角色\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}],\"phone\":\"17611111111\",\"email\":\"wuwuwuwu@qq.com\",\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}',
    1
  ),
(
    315,
    '2022-05-09 19:56:52.762',
    '2022-05-09 19:56:52.762',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    12918697,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":2,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    316,
    '2022-05-10 09:14:23.494',
    '2022-05-10 09:14:23.494',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    7817824,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":1000,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    317,
    '2022-05-10 17:42:03.689',
    '2022-05-10 17:42:03.689',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/8',
    200,
    391942,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":8,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"path\":\"/user/getUserInfo\",\"description\":\"获取自身信息(必选)\",\"apiGroup\":\"系统用户\",\"method\":\"GET\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    318,
    '2022-05-10 18:04:35.787',
    '2022-05-10 18:04:35.787',
    NULL,
    '127.0.0.1',
    'POST',
    '/system/getSystemConfig',
    200,
    300674,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '',
    '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"519fb1f4-4321-446a-bb7b-bfb13b68b960\",\"expires-time\":604800,\"buffer-time\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[server] - \",\"director\":\"log\",\"show-line\":true,\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"log-in-console\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"978561120@qq.com\",\"port\":465,\"from\":\"cadencehao@163.com\",\"host\":\"smtp.163.com\",\"is-ssl\":true,\"secret\":\"wuwuwuwuwuwuwuw\",\"nickname\":\"test\"},\"casbin\":{\"model-path\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":3100,\"db-type\":\"mysql\",\"oss-type\":\"local\",\"use-multipoint\":false,\"use-redis\":true,\"iplimit-count\":15000,\"iplimit-time\":3600},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80},\"autocode\":{\"transfer-restart\":true,\"root\":\"/home/jianghao/man/gin-vue-admin\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-initialize\":\"/initialize\",\"server-model\":\"/model/%s\",\"server-request\":\"/model/%s/request/\",\"server-router\":\"/router/%s\",\"server-service\":\"/service/%s\",\"web\":\"/web/src\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"web-table\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"123456\",\"max-idle-conns\":100,\"max-open-conns\":1000,\"log-mode\":\"error\",\"log-zap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"log-mode\":\"\",\"log-zap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"use-https\":false,\"access-key\":\"\",\"secret-key\":\"\",\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"s3-force-path-style\":false,\"disable-ssl\":false,\"secret-id\":\"xxxxxxxx\",\"secret-key\":\"xxxxxxxx\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}',
    1
  ),
(
    319,
    '2022-05-10 18:06:00.317',
    '2022-05-10 18:06:00.317',
    NULL,
    '127.0.0.1',
    'POST',
    '/casbin/updateCasbin',
    200,
    32072856,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"authorityId\":\"888\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/admin_register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"DELETE\"},{\"path\":\"/api/updateApi\",\"method\":\"PUT\"},{\"path\":\"/api/getApiList\",\"method\":\"GET\"},{\"path\":\"/api/getAllApis\",\"method\":\"GET\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/api/getAllApisList\",\"method\":\"GET\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/editFileName\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/createPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/delPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/authorityBtn/setAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/getAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/canRemoveAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/appTab/createAppTab\",\"method\":\"POST\"},{\"path\":\"/appTab/deleteAppTab\",\"method\":\"DELETE\"},{\"path\":\"/appTab/deleteAppTabByIds\",\"method\":\"DELETE\"},{\"path\":\"/appTab/updateAppTab\",\"method\":\"PUT\"},{\"path\":\"/appTab/findAppTab\",\"method\":\"GET\"},{\"path\":\"/appTab/getAppTabList\",\"method\":\"GET\"}]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    320,
    '2022-05-10 18:06:01.843',
    '2022-05-10 18:06:01.843',
    NULL,
    '127.0.0.1',
    'POST',
    '/casbin/updateCasbin',
    200,
    29546419,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"authorityId\":\"888\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/admin_register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"DELETE\"},{\"path\":\"/api/updateApi\",\"method\":\"PUT\"},{\"path\":\"/api/getApiList\",\"method\":\"GET\"},{\"path\":\"/api/getAllApis\",\"method\":\"GET\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/api/getAllApisList\",\"method\":\"GET\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/editFileName\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/createPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/delPackage\",\"method\":\"POST\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/authorityBtn/setAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/getAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/authorityBtn/canRemoveAuthorityBtn\",\"method\":\"POST\"},{\"path\":\"/appTab/createAppTab\",\"method\":\"POST\"},{\"path\":\"/appTab/deleteAppTab\",\"method\":\"DELETE\"},{\"path\":\"/appTab/deleteAppTabByIds\",\"method\":\"DELETE\"},{\"path\":\"/appTab/updateAppTab\",\"method\":\"PUT\"},{\"path\":\"/appTab/findAppTab\",\"method\":\"GET\"},{\"path\":\"/appTab/getAppTabList\",\"method\":\"GET\"}]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    321,
    '2022-05-10 18:11:09.970',
    '2022-05-10 18:11:09.970',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/addBaseMenu',
    200,
    10526002,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":0,\"path\":\"tab\",\"name\":\"tab\",\"hidden\":false,\"parentId\":\"0\",\"component\":\"view/appTab/appTab.vue\",\"meta\":{\"title\":\"标签\",\"icon\":\"delete-location\",\"defaultMenu\":false,\"closeTab\":true,\"keepAlive\":true},\"parameters\":[],\"menuBtn\":[]}',
    '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}',
    1
  ),
(
    322,
    '2022-05-10 18:11:34.656',
    '2022-05-10 18:11:34.656',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/addMenuAuthority',
    200,
    13691897,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"menus\":[{\"ID\":27,\"CreatedAt\":\"2022-05-10T18:11:09.959+08:00\",\"UpdatedAt\":\"2022-05-10T18:11:09.959+08:00\",\"parentId\":\"0\",\"path\":\"tab\",\"name\":\"tab\",\"hidden\":false,\"component\":\"view/appTab/appTab.vue\",\"sort\":0,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"标签\",\"icon\":\"delete-location\",\"closeTab\":true},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":1,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"dashboard\",\"name\":\"dashboard\",\"hidden\":false,\"component\":\"view/dashboard/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"仪表盘\",\"icon\":\"odometer\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":3,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"admin\",\"name\":\"superAdmin\",\"hidden\":false,\"component\":\"view/superAdmin/index.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"超级管理员\",\"icon\":\"user\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":8,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-18T10:56:06.782+08:00\",\"parentId\":\"0\",\"path\":\"person\",\"name\":\"person\",\"hidden\":true,\"component\":\"view/person/person.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"个人信息\",\"icon\":\"message\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"systemTools\",\"name\":\"systemTools\",\"hidden\":false,\"component\":\"view/systemTools/index.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统工具\",\"icon\":\"tools\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":9,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-05-07T15:17:50.587+08:00\",\"parentId\":\"0\",\"path\":\"example\",\"name\":\"example\",\"hidden\":false,\"component\":\"view/example/index.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"示例文件\",\"icon\":\"briefcase\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":21,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"simpleUploader\",\"name\":\"simpleUploader\",\"hidden\":false,\"component\":\"view/example/simpleUploader/simpleUploader\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传（插件版）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":2,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"about\",\"name\":\"about\",\"hidden\":false,\"component\":\"view/about/index.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"关于我们\",\"icon\":\"info-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}',
    1
  ),
(
    323,
    '2022-05-10 18:11:47.610',
    '2022-05-10 18:11:47.610',
    NULL,
    '127.0.0.1',
    'POST',
    '/appTab/createAppTab',
    200,
    9218626,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"name\":\"123123\",\"sysUserId\":false}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    324,
    '2022-05-10 18:12:13.091',
    '2022-05-10 18:12:13.091',
    NULL,
    '127.0.0.1',
    'PUT',
    '/appTab/updateAppTab',
    200,
    9999846,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":1,\"CreatedAt\":\"2022-05-10T18:11:47.601+08:00\",\"UpdatedAt\":\"2022-05-10T18:11:47.601+08:00\",\"name\":\"123123\",\"sysUserId\":true}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    325,
    '2022-05-10 18:14:02.130',
    '2022-05-10 18:14:02.130',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/updateBaseMenu',
    200,
    10899673,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":27,\"CreatedAt\":\"2022-05-10T18:11:09.959+08:00\",\"UpdatedAt\":\"2022-05-10T18:11:09.959+08:00\",\"parentId\":\"0\",\"path\":\"tab\",\"name\":\"tab\",\"hidden\":false,\"component\":\"view/appTab/appTab.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"标签\",\"icon\":\"delete-location\",\"closeTab\":true},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    326,
    '2022-05-10 18:14:35.954',
    '2022-05-10 18:14:35.954',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/updateBaseMenu',
    200,
    10979637,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":27,\"CreatedAt\":\"2022-05-10T18:11:09.959+08:00\",\"UpdatedAt\":\"2022-05-10T18:14:02.119+08:00\",\"parentId\":\"0\",\"path\":\"tab\",\"name\":\"tab\",\"hidden\":false,\"component\":\"view/appTab/appTab.vue\",\"sort\":6,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"标签\",\"icon\":\"delete-location\",\"closeTab\":true},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    327,
    '2022-05-11 09:00:22.264',
    '2022-05-11 09:00:22.264',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/deleteBaseMenu',
    200,
    15649274,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":27}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    328,
    '2022-05-11 09:45:25.717',
    '2022-05-11 09:45:25.717',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/addBaseMenu',
    200,
    10709983,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":0,\"path\":\"tab\",\"name\":\"tab\",\"hidden\":false,\"parentId\":\"0\",\"component\":\"view/appTab/appTab.vue\",\"meta\":{\"title\":\"标签\",\"icon\":\"aim\",\"defaultMenu\":false,\"keepAlive\":true,\"closeTab\":true},\"sort\":6}',
    '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}',
    1
  ),
(
    329,
    '2022-05-11 09:52:49.019',
    '2022-05-11 09:52:49.019',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/updateBaseMenu',
    200,
    11053723,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":28,\"CreatedAt\":\"2022-05-11T09:45:25.707+08:00\",\"UpdatedAt\":\"2022-05-11T09:45:25.707+08:00\",\"parentId\":\"0\",\"path\":\"tab\",\"name\":\"tab\",\"hidden\":false,\"component\":\"view/appTab/appTab.vue\",\"sort\":6,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"标签\",\"icon\":\"aim\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    330,
    '2022-05-11 09:53:08.956',
    '2022-05-11 09:53:08.956',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/updateBaseMenu',
    200,
    11106845,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"ID\":28,\"CreatedAt\":\"2022-05-11T09:45:25.707+08:00\",\"UpdatedAt\":\"2022-05-11T09:52:49.009+08:00\",\"parentId\":\"0\",\"path\":\"tab\",\"name\":\"tab\",\"hidden\":false,\"component\":\"view/appTab/appTab.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"标签\",\"icon\":\"aim\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    331,
    '2022-05-11 09:56:22.270',
    '2022-05-11 09:56:22.270',
    NULL,
    '127.0.0.1',
    'POST',
    '/menu/addMenuAuthority',
    200,
    13067349,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"menus\":[{\"ID\":1,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"dashboard\",\"name\":\"dashboard\",\"hidden\":false,\"component\":\"view/dashboard/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"仪表盘\",\"icon\":\"odometer\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":3,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"admin\",\"name\":\"superAdmin\",\"hidden\":false,\"component\":\"view/superAdmin/index.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"超级管理员\",\"icon\":\"user\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":4,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"authority\",\"name\":\"authority\",\"hidden\":false,\"component\":\"view/superAdmin/authority/authority.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"角色管理\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":19,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionaryDetail/:id\",\"name\":\"dictionaryDetail\",\"hidden\":true,\"component\":\"view/superAdmin/dictionary/sysDictionaryDetail.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典详情\",\"icon\":\"order\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":5,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"menu\",\"name\":\"menu\",\"hidden\":false,\"component\":\"view/superAdmin/menu/menu.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"菜单管理\",\"icon\":\"tickets\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":6,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"api\",\"name\":\"api\",\"hidden\":false,\"component\":\"view/superAdmin/api/api.vue\",\"sort\":3,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"api管理\",\"icon\":\"platform\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":7,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"user\",\"name\":\"user\",\"hidden\":false,\"component\":\"view/superAdmin/user/user.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"用户管理\",\"icon\":\"coordinate\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":18,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"dictionary\",\"name\":\"dictionary\",\"hidden\":false,\"component\":\"view/superAdmin/dictionary/sysDictionary.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"字典管理\",\"icon\":\"notebook\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":20,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"3\",\"path\":\"operation\",\"name\":\"operation\",\"hidden\":false,\"component\":\"view/superAdmin/operation/sysOperationRecord.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"操作历史\",\"icon\":\"pie-chart\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":8,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-18T10:56:06.782+08:00\",\"parentId\":\"0\",\"path\":\"person\",\"name\":\"person\",\"hidden\":true,\"component\":\"view/person/person.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"个人信息\",\"icon\":\"message\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":14,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"systemTools\",\"name\":\"systemTools\",\"hidden\":false,\"component\":\"view/systemTools/index.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统工具\",\"icon\":\"tools\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":25,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeEdit/:id\",\"name\":\"autoCodeEdit\",\"hidden\":true,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码（复用）\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":26,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoPkg\",\"name\":\"autoPkg\",\"hidden\":false,\"component\":\"view/systemTools/autoPkg/autoPkg.vue\",\"sort\":0,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化package\",\"icon\":\"folder\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":15,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCode\",\"name\":\"autoCode\",\"hidden\":false,\"component\":\"view/systemTools/autoCode/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"代码生成器\",\"icon\":\"cpu\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":24,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"autoCodeAdmin\",\"name\":\"autoCodeAdmin\",\"hidden\":false,\"component\":\"view/systemTools/autoCodeAdmin/index.vue\",\"sort\":1,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"自动化代码管理\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":16,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"formCreate\",\"name\":\"formCreate\",\"hidden\":false,\"component\":\"view/systemTools/formCreate/index.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"表单生成器\",\"icon\":\"magic-stick\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":17,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"14\",\"path\":\"system\",\"name\":\"system\",\"hidden\":false,\"component\":\"view/systemTools/system/system.vue\",\"sort\":3,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"系统配置\",\"icon\":\"operation\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":9,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-05-07T15:17:50.587+08:00\",\"parentId\":\"0\",\"path\":\"example\",\"name\":\"example\",\"hidden\":false,\"component\":\"view/example/index.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"示例文件\",\"icon\":\"briefcase\",\"closeTab\":false},\"authoritys\":null,\"children\":[{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":21,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"simpleUploader\",\"name\":\"simpleUploader\",\"hidden\":false,\"component\":\"view/example/simpleUploader/simpleUploader\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传（插件版）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"parameters\":[],\"menuBtn\":[]},{\"ID\":10,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"excel\",\"name\":\"excel\",\"hidden\":false,\"component\":\"view/example/excel/excel.vue\",\"sort\":4,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"excel导入导出\",\"icon\":\"takeaway-box\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":11,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"upload\",\"name\":\"upload\",\"hidden\":false,\"component\":\"view/example/upload/upload.vue\",\"sort\":5,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"媒体库（上传下载）\",\"icon\":\"upload\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":12,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"breakpoint\",\"name\":\"breakpoint\",\"hidden\":false,\"component\":\"view/example/breakpoint/breakpoint.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"断点续传\",\"icon\":\"upload-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"9\",\"path\":\"customer\",\"name\":\"customer\",\"hidden\":false,\"component\":\"view/example/customer/customer.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"客户列表（资源示例）\",\"icon\":\"avatar\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":28,\"CreatedAt\":\"2022-05-11T09:45:25.707+08:00\",\"UpdatedAt\":\"2022-05-11T09:53:08.945+08:00\",\"parentId\":\"0\",\"path\":\"tab\",\"name\":\"tab\",\"hidden\":false,\"component\":\"view/appTab/appTab.vue\",\"sort\":6,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"标签\",\"icon\":\"aim\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]},{\"ID\":2,\"CreatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"UpdatedAt\":\"2022-04-15T17:31:14.908+08:00\",\"parentId\":\"0\",\"path\":\"about\",\"name\":\"about\",\"hidden\":false,\"component\":\"view/about/index.vue\",\"sort\":7,\"meta\":{\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"关于我们\",\"icon\":\"info-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}],\"authorityId\":\"888\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}',
    1
  ),
(
    332,
    '2022-05-11 09:56:45.428',
    '2022-05-11 09:56:45.428',
    NULL,
    '127.0.0.1',
    'POST',
    '/appTab/createAppTab',
    200,
    10160683,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36',
    '',
    '{\"name\":\"golang\",\"status\":true}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    333,
    '2022-05-16 15:28:29.429',
    '2022-05-16 15:28:29.429',
    NULL,
    '127.0.0.1',
    'PUT',
    '/appTab/updateAppTab',
    200,
    10598665,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"ID\":1,\"CreatedAt\":\"2022-05-11T09:56:45.417+08:00\",\"UpdatedAt\":\"2022-05-11T09:56:45.417+08:00\",\"name\":\"golang\",\"status\":false}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    334,
    '2022-05-16 15:28:35.397',
    '2022-05-16 15:28:35.397',
    NULL,
    '127.0.0.1',
    'PUT',
    '/appTab/updateAppTab',
    200,
    10292740,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"ID\":1,\"CreatedAt\":\"2022-05-11T09:56:45.417+08:00\",\"UpdatedAt\":\"2022-05-16T15:28:29.419+08:00\",\"name\":\"golang\",\"status\":true}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    335,
    '2022-05-16 16:27:24.573',
    '2022-05-16 16:27:24.573',
    NULL,
    '127.0.0.1',
    'POST',
    '/appTab/createAppTab',
    200,
    10018605,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"name\":\"test55555\",\"status\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    336,
    '2022-05-16 16:31:27.323',
    '2022-05-16 16:31:27.323',
    NULL,
    '127.0.0.1',
    'PUT',
    '/appTab/updateAppTab',
    200,
    10276791,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"ID\":2,\"CreatedAt\":\"2022-05-16T16:27:24.563+08:00\",\"UpdatedAt\":\"2022-05-16T16:27:24.563+08:00\",\"name\":\"test55555\",\"status\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    337,
    '2022-05-16 16:32:21.890',
    '2022-05-16 16:32:21.890',
    NULL,
    '127.0.0.1',
    'PUT',
    '/appTab/updateAppTab',
    200,
    10205173,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"ID\":2,\"CreatedAt\":\"2022-05-16T16:27:24.563+08:00\",\"UpdatedAt\":\"2022-05-16T16:31:27.312+08:00\",\"name\":\"test55555\",\"status\":0}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    338,
    '2022-05-16 16:36:13.259',
    '2022-05-16 16:36:13.259',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/appTab/deleteAppTabByIds',
    200,
    9654438,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"ids\":[1,2]}',
    '{\"code\":0,\"data\":{},\"msg\":\"批量删除成功\"}',
    1
  ),
(
    339,
    '2022-05-16 16:59:45.430',
    '2022-05-16 16:59:45.430',
    NULL,
    '127.0.0.1',
    'POST',
    '/appTab/createAppTab',
    200,
    7415765,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"name\":\"php\",\"status\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    340,
    '2022-05-16 16:59:56.353',
    '2022-05-16 16:59:56.353',
    NULL,
    '127.0.0.1',
    'POST',
    '/appTab/createAppTab',
    200,
    10119626,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"name\":\"JavaScript\",\"status\":false}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    341,
    '2022-05-16 17:00:06.017',
    '2022-05-16 17:00:06.017',
    NULL,
    '127.0.0.1',
    'PUT',
    '/appTab/updateAppTab',
    200,
    10081190,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"ID\":4,\"CreatedAt\":\"2022-05-16T16:59:56.342+08:00\",\"UpdatedAt\":\"2022-05-16T16:59:56.342+08:00\",\"name\":\"JavaScript\",\"status\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    342,
    '2022-05-16 17:01:14.452',
    '2022-05-16 17:01:14.452',
    NULL,
    '127.0.0.1',
    'POST',
    '/appTab/createAppTab',
    200,
    3344793,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"name\":\"c\",\"status\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    343,
    '2022-05-16 17:01:23.632',
    '2022-05-16 17:01:23.632',
    NULL,
    '127.0.0.1',
    'POST',
    '/appTab/createAppTab',
    200,
    6866256,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"name\":\"c++\",\"status\":0}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    344,
    '2022-05-16 17:01:38.764',
    '2022-05-16 17:01:38.764',
    NULL,
    '127.0.0.1',
    'POST',
    '/appTab/createAppTab',
    200,
    10420792,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"name\":\"blog\",\"status\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    345,
    '2022-05-16 17:01:47.404',
    '2022-05-16 17:01:47.404',
    NULL,
    '127.0.0.1',
    'PUT',
    '/appTab/updateAppTab',
    200,
    10409236,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"ID\":3,\"CreatedAt\":\"2022-05-16T16:59:45.422+08:00\",\"UpdatedAt\":\"2022-05-16T16:59:45.422+08:00\",\"name\":\"PHP\",\"status\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    346,
    '2022-05-16 17:02:07.661',
    '2022-05-16 17:02:07.661',
    NULL,
    '127.0.0.1',
    'PUT',
    '/appTab/updateAppTab',
    200,
    10481278,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"ID\":7,\"CreatedAt\":\"2022-05-16T17:01:38.754+08:00\",\"UpdatedAt\":\"2022-05-16T17:01:38.754+08:00\",\"name\":\"Rust\",\"status\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}',
    1
  ),
(
    347,
    '2022-05-16 17:04:21.825',
    '2022-05-16 17:04:21.825',
    NULL,
    '127.0.0.1',
    'POST',
    '/appTab/createAppTab',
    200,
    10164356,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36',
    '',
    '{\"name\":\"HTML\",\"status\":1}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    348,
    '2022-05-20 17:46:30.524',
    '2022-05-20 17:46:30.524',
    NULL,
    '127.0.0.1',
    'POST',
    '/user/setUserAuthorities',
    200,
    17052805,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36',
    '',
    '{\"ID\":1,\"authorityIds\":[\"888\",\"8881\",\"9528\"]}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  ),
(
    349,
    '2022-05-20 17:58:28.187',
    '2022-05-20 17:58:28.187',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    463109,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    350,
    '2022-05-20 17:58:53.070',
    '2022-05-20 17:58:53.070',
    NULL,
    '127.0.0.1',
    'POST',
    '/api/createApi',
    200,
    6713400,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36',
    '',
    '{\"path\":\"/etst\",\"apiGroup\":\"test\",\"method\":\"GET\",\"description\":\"test\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}',
    1
  ),
(
    351,
    '2022-05-20 18:02:08.057',
    '2022-05-20 18:02:08.057',
    NULL,
    '127.0.0.1',
    'DELETE',
    '/api/deleteApi',
    200,
    12475409,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36',
    '',
    '{\"ID\":105,\"CreatedAt\":\"2022-05-20T17:58:53.064+08:00\",\"UpdatedAt\":\"2022-05-20T17:58:53.064+08:00\",\"path\":\"/etst\",\"description\":\"test\",\"apiGroup\":\"test\",\"method\":\"GET\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}',
    1
  ),
(
    352,
    '2022-05-23 11:45:24.793',
    '2022-05-23 11:45:24.793',
    NULL,
    '127.0.0.1',
    'GET',
    '/api/getApiById/13',
    200,
    454056,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36',
    '',
    '{}',
    '{\"code\":0,\"data\":{\"api\":{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}',
    1
  ),
(
    353,
    '2022-05-23 11:45:29.209',
    '2022-05-23 11:45:29.209',
    NULL,
    '127.0.0.1',
    'PUT',
    '/api/updateApi',
    200,
    10762820,
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36',
    '',
    '{\"ID\":13,\"CreatedAt\":\"2022-04-15T17:31:14.854+08:00\",\"UpdatedAt\":\"2022-04-27T13:48:34.015+08:00\",\"path\":\"/api/createApi\",\"description\":\"创建api\",\"apiGroup\":\"api\",\"method\":\"POST\"}',
    '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}',
    1
  );

/*!40000 ALTER TABLE `sys_operation_records` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_user_authority`
--
DROP TABLE IF EXISTS `sys_user_authority`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_user_authority` (
  `sys_user_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`, `sys_authority_authority_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_user_authority`
--
LOCK TABLES `sys_user_authority` WRITE;

/*!40000 ALTER TABLE `sys_user_authority` DISABLE KEYS */
;

INSERT INTO
  `sys_user_authority`
VALUES
  (1, '888'),
(1, '8881'),
(1, '9528'),
(2, '888'),
(2, '8881'),
(2, '9528'),
(3, '888'),
(3, '8881'),
(3, '9528');

/*!40000 ALTER TABLE `sys_user_authority` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--
DROP TABLE IF EXISTS `sys_users`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `sys_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` varchar(191) DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) DEFAULT '系统用户' COMMENT '用户昵称',
  `side_mode` varchar(191) DEFAULT 'dark' COMMENT '用户侧边主题',
  `header_img` varchar(191) DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg' COMMENT '用户头像',
  `base_color` varchar(191) DEFAULT '#fff' COMMENT '基础颜色',
  `active_color` varchar(191) DEFAULT '#1890ff' COMMENT '活跃颜色',
  `authority_id` varchar(191) DEFAULT '888' COMMENT '用户角色ID',
  `phone` varchar(191) DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) DEFAULT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `sys_users`
--
LOCK TABLES `sys_users` WRITE;

/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */
;

INSERT INTO
  `sys_users`
VALUES
  (
    1,
    '2022-04-15 17:31:14.897',
    '2022-05-20 17:46:30.508',
    NULL,
    '3239efe2-a81b-4ada-ba1b-2688fa5bb6e0',
    'admin',
    'e10adc3949ba59abbe56e057f20f883e',
    '超级管理员',
    'dark',
    'https://qmplusimg.henrongyi.top/gvalogo.png',
    '#fff',
    '#1890ff',
    '888',
    '17611111111',
    '333333333@qq.com'
  ),
(
    2,
    '2022-04-15 17:31:14.897',
    '2022-05-09 19:56:52.750',
    NULL,
    'e42b6f6b-b515-45bb-8030-48839f31e7a1',
    'a303176530',
    'e10adc3949ba59abbe56e057f20f883e',
    'QMPlusUser',
    'dark',
    'uploads/file/3768a18e1d6e8997a8a9c838e64d3cd7_20220507113208.jpg',
    '#fff',
    '#1890ff',
    '888',
    '17611111111',
    'wuwuwuwu@qq.com'
  ),
(
    3,
    '2022-04-19 15:12:51.936',
    '2022-05-07 15:32:45.279',
    NULL,
    '733c9675-83fa-470a-8a7f-e00eb5c7e021',
    'wuwu33',
    'e10adc3949ba59abbe56e057f20f883e',
    'wuwuhuhu',
    'dark',
    'https://qmplusimg.henrongyi.top/1576554439myAvatar.png',
    '#fff',
    '#1890ff',
    '888',
    '13322346577',
    'wuwwu@bbq.com'
  );

/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Final view structure for view `authority_menu`
--
/*!50001 DROP VIEW IF EXISTS `authority_menu`*/
;

/*!50001 SET @saved_cs_client          = @@character_set_client */
;

/*!50001 SET @saved_cs_results         = @@character_set_results */
;

/*!50001 SET @saved_col_connection     = @@collation_connection */
;

/*!50001 SET character_set_client      = utf8mb4 */
;

/*!50001 SET character_set_results     = utf8mb4 */
;

/*!50001 SET collation_connection      = utf8mb4_general_ci */
;

/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `authority_menu` AS select `sys_base_menus`.`id` AS `id`,`sys_base_menus`.`path` AS `path`,`sys_base_menus`.`icon` AS `icon`,`sys_base_menus`.`name` AS `name`,`sys_base_menus`.`sort` AS `sort`,`sys_base_menus`.`title` AS `title`,`sys_base_menus`.`hidden` AS `hidden`,`sys_base_menus`.`component` AS `component`,`sys_base_menus`.`parent_id` AS `parent_id`,`sys_base_menus`.`created_at` AS `created_at`,`sys_base_menus`.`updated_at` AS `updated_at`,`sys_base_menus`.`deleted_at` AS `deleted_at`,`sys_base_menus`.`keep_alive` AS `keep_alive`,`sys_base_menus`.`menu_level` AS `menu_level`,`sys_base_menus`.`default_menu` AS `default_menu`,`sys_base_menus`.`close_tab` AS `close_tab`,`sys_authority_menus`.`sys_base_menu_id` AS `menu_id`,`sys_authority_menus`.`sys_authority_authority_id` AS `authority_id` from (`sys_authority_menus` join `sys_base_menus` on((`sys_authority_menus`.`sys_base_menu_id` = `sys_base_menus`.`id`))) */
;

/*!50001 SET character_set_client      = @saved_cs_client */
;

/*!50001 SET character_set_results     = @saved_cs_results */
;

/*!50001 SET collation_connection      = @saved_col_connection */
;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;

-- Dump completed on 2022-05-23  3:46:17
验证成功