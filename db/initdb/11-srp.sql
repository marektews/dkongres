CREATE TABLE IF NOT EXISTS `SRP` (
    `id` int NOT NULL AUTO_INCREMENT,
    `zbor_id` int NOT NULL,
    `pass_nr` int NOT NULL,
    `regnum1` int NOT NULL,
    `regnum2` int NULL,
    `regnum3` int NULL,
    `info` varchar(1024) NULL,
    `timestamp` timestamp NOT NULL DEFAULT NOW(),
    `d1` int NULL,
    `d2` int NULL,
    `d3` int NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    FOREIGN KEY (`zbor_id`) REFERENCES `Zbory`(`id`)
)
COMMENT 'System rejestracji pojazdow';