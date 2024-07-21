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
    `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `prefix` char(1) NOT NULL DEFAULT 'T' COMMENT 'Litera identyfikatora, np. T z T12, W45, itp.',
    `static_identifier` varchar(6) DEFAULT NULL COMMENT 'Sztywny identyfikator np D12 Białołęka, wynikający ze zgłoszenia w ZTM i zaprogramowania w autobusach.',
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    FOREIGN KEY (`zbor_id`) REFERENCES `Zbory`(`id`),
    FOREIGN KEY (`bus_id`) REFERENCES `Bus`(`id`),
    FOREIGN KEY (`pilot1_id`) REFERENCES `Pilot`(`id`),
    FOREIGN KEY (`pilot2_id`) REFERENCES `Pilot`(`id`),
    FOREIGN KEY (`pilot3_id`) REFERENCES `Pilot`(`id`)
)
COMMENT 'System rejestracji autokarow';