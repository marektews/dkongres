CREATE TABLE IF NOT EXISTS `SRP` (
    `id` int NOT NULL AUTO_INCREMENT,
    `zbor_id` int NOT NULL,
    `pass_nr` int NOT NULL,
    `regnum1` varchar(12) NOT NULL,
    `regnum2` varchar(12) NULL,
    `regnum3` varchar(12) NULL,
    `info` varchar(1024) NULL,
    `timestamp` timestamp NOT NULL DEFAULT NOW(),
    `d1` datetime NULL,
    `d2` datetime NULL,
    `d3` datetime NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    FOREIGN KEY (`zbor_id`) REFERENCES `Zbory`(`id`)
)
COMMENT 'System rejestracji pojazdow';