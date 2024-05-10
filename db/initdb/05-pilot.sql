
CREATE TABLE IF NOT EXISTS `Pilot` (
    `id` int NOT NULL AUTO_INCREMENT,
    `fn` varchar(64) NOT NULL,
    `ln` varchar(64) NOT NULL,
    `email` varchar(64) NOT NULL,
    `phone` varchar(64) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
) 
COMMENT 'Dane pilotow w autokarach';
