
CREATE TABLE IF NOT EXISTS `Dzialy` (
    `id` int NOT NULL AUTO_INCREMENT,
    `lang` varchar(32) NOT NULL DEFAULT 'pl',
    `name` varchar(128) NOT NULL,
    `password` varchar(32) NOT NULL,
    `plimit` INT DEFAULT 3 NOT NULL,
    `tura` INT DEFAULT 1 NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
) 
COMMENT 'Lista dzialow kongresowych';
