DROP DATABASE IF EXISTS `cpw`;
CREATE DATABASE cpw CHARACTER SET utf8 COLLATE utf8_general_ci;
use cpw;
DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`added` int(11) NOT NULL,
	`size` bigint(20) NOT NULL,
	`revision` int(4) NOT NULL,
	`md5` varchar(32) NOT NULL,
	`type` enum('element','launcher','patcher') NOT NULL DEFAULT 'element',
	`folder` varchar(1024) NOT NULL,
	`folder_base64` varchar(1024) NOT NULL,
	`file` varchar(512) NOT NULL,
	`file_base64` varchar(512) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;