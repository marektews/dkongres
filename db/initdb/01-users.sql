
CREATE TABLE IF NOT EXISTS `Users` (
    `id` int NOT NULL AUTO_INCREMENT,
    `superuser` tinyint NOT NULL default 0,
    `login` varchar(64) NOT NULL, 
    `hash` varchar(64) NOT NULL,
    `fn` varchar(64) NOT NULL,
    `ln` varchar(64) NOT NULL,
    `is_sra` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Czy ma dostep do SRA',
    `is_srp` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Czy ma dostep do SRP',
    `is_pk` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Czy ma dostep do PK',
    `is_rja` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Czy ma dostep do RJA',
    `is_monitoring` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Czy ma dostep do Monitoring',
    `is_users` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Czy dostep do listy użytkowników',
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    UNIQUE KEY `login_UNIQUE` (`login`),
    UNIQUE KEY `hash_UNIQUE` (`hash`)
) 
COMMENT 'Lista uzytkownikow z dostepem administracyjnym';