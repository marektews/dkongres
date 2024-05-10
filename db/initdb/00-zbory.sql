
CREATE TABLE IF NOT EXISTS `Zbory` (
    `id` int NOT NULL AUTO_INCREMENT,
    `number` int NOT NULL, 
    `name` varchar(45) NOT NULL,
    `lang` char(3) NOT NULL DEFAULT 'pl',
    `plimit` int NOT NULL DEFAULT 2,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    UNIQUE KEY `number_UNIQUE` (`number`),
    UNIQUE KEY `name_UNIQUE` (`name`)
)
COMMENT 'Lista zborow bioracych udzial w kongresie';
