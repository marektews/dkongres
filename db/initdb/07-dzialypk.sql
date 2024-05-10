
CREATE TABLE IF NOT EXISTS `DzialyPK` (
    `id` int NOT NULL AUTO_INCREMENT,
    `dzial_id` int NOT NULL,
    `pass_nr` int NOT NULL,
    `regnum1` varchar(16) NOT NULL,
    `regnum2` varchar(16) NULL,
    `regnum3` varchar(16) NULL,
    `registered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `d1` timestamp NULL,
    `d2` timestamp NULL,
    `d3` timestamp NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    FOREIGN KEY (`dzial_id`) REFERENCES `Dzialy`(`id`)
) 
COMMENT 'Rejestracja i uzytkowanie pojazdow dzialow kongresowych';
