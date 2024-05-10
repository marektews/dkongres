
CREATE TABLE IF NOT EXISTS `Sektory` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(32) NOT NULL,
    `tid` int NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
)
COMMENT 'Przystanki autobusowe do transferu pasazerow';

SET @tid = SELECT id FROM `Terminale` WHERE `name` = 'Torwar' and `is_buffer` = 0 LIMIT 1;
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 1', @tid);
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 2', @tid);
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 3', @tid);
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 4', @tid);
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 5', @tid);
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 6', @tid);
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 7', @tid);
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 8', @tid);
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 9', @tid);
INSERT INTO `Sektory` (`name`, `tid`) VALUES('Sektor 10', @tid);