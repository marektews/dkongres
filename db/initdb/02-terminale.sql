
CREATE TABLE IF NOT EXISTS `Terminale` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(64) NOT NULL,
    `is_buffer` tinyint NOT NULL DEFAULT 0,
    `assigned_buffer` int NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    UNIQUE KEY `name_UNIQUE` (`name`)
) 
COMMENT 'Lista terminali autobusowych (grupowanie sektorow)';

-- 
-- Zainicjuj terminale i bufory zgodnie z ustaleniami działu parkingów
-- 
INSERT INTO `Terminale` (name, is_buffer) VALUES('Bufor', 1);
INSERT INTO `Terminale` (name, assigned_buffer) 
    SELECT 'Torwar', id FROM `Terminale` WHERE `name` = 'Bufor' LIMIT 1;