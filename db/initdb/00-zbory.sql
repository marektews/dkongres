
CREATE TABLE IF NOT EXISTS `Zbory` (
    `id` int NOT NULL AUTO_INCREMENT,
    `number` int NOT NULL, 
    `name` varchar(45) NOT NULL,
    `lang` varchar(45) NOT NULL,
    `plimit` int NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    UNIQUE KEY `number_UNIQUE` (`number`),
    UNIQUE KEY `name_UNIQUE` (`name`)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
COMMENT='Lista zborów biorących udział w kongresie';
