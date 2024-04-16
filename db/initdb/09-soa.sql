CREATE TABLE IF NOT EXISTS `SOA` (
    `id` int NOT NULL AUTO_INCREMENT,
    `rja_id` int NOT NULL,
    `status` varchar(45) NOT NULL,
    `ts` timestamp NOT NULL DEFAULT NOW(),
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    FOREIGN KEY (`rja_id`) REFERENCES `Rozklad`(`id`)
)
COMMENT 'System obsługi autokarów';