
CREATE TABLE IF NOT EXISTS `Sektory` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(32) NOT NULL,
    `tid` int NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
)
COMMENT 'Przystanki autobusowe do transferu pasażerów';
