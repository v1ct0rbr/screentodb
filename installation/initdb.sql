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

CREATE TABLE `category` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`description` VARCHAR(256) NULL DEFAULT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `unq_category_name` (`name`)
)
COLLATE='latin1_swedish_ci'
;

ALTER TABLE `screen_captures`
	ADD COLUMN `category_id` INT NULL AFTER `path`,
	ADD CONSTRAINT `fk_screen_captures_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;