CREATE TABLE IF NOT EXISTS `SRA` (
    `id` int NOT NULL AUTO_INCREMENT,
    `zbor_id` int NOT NULL,
    `bus_id` int NOT NULL,
    `lp` int NULL,
    `canceled` int NULL,
    `pilot1_id` int NOT NULL,
    `pilot2_id` int NULL,
    `pilot3_id` int NULL,
    `info` varchar(1024) NULL,
    `timestamp` timestamp NOT NULL DEFAULT NOW(),
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    FOREIGN KEY (`zbor_id`) REFERENCES `Zbory`(`id`),
    FOREIGN KEY (`bus_id`) REFERENCES `Bus`(`id`),
    FOREIGN KEY (`pilot1_id`) REFERENCES `Pilot`(`id`),
    FOREIGN KEY (`pilot2_id`) REFERENCES `Pilot`(`id`),
    FOREIGN KEY (`pilot3_id`) REFERENCES `Pilot`(`id`)
)
COMMENT 'System rejestracji autokarow';