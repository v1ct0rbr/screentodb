CREATE TABLE `screen_captures` (
	`id` BIGINT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`description` VARCHAR(256) NOT NULL,
	`created_at` DATETIME NOT NULL,
	`token` VARCHAR(128) NOT NULL,
	`path` VARCHAR(256) NOT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8_general_ci'
;
