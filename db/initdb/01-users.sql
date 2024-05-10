
CREATE TABLE IF NOT EXISTS `Users` (
    `id` int NOT NULL AUTO_INCREMENT,
    `superuser` tinyint NOT NULL default 0,
    `login` varchar(64) NOT NULL, 
    `hash` varchar(64) NOT NULL,
    `fn` varchar(64) NOT NULL,
    `ln` varchar(64) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    UNIQUE KEY `login_UNIQUE` (`login`),
    UNIQUE KEY `hash_UNIQUE` (`hash`)
) 
COMMENT 'Lista uzytkownikow z dostepem administracyjnym';