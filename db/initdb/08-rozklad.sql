CREATE TABLE IF NOT EXISTS `Rozklad` (
    `id` int NOT NULL AUTO_INCREMENT,
    `sra_id` int NOT NULL,
    `sektor_id` int NOT NULL,
    `tura` int NOT NULL,
    `a1` time NULL,
    `a2` time NULL,
    `a3` time NULL,
    `d1` time NULL,
    `d2` time NULL,
    `d3` time NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
)
COMMENT 'Rozklad jazdy autobusow; planowane podstawienia i odjazdy';