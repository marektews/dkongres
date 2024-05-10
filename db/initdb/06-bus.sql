
CREATE TABLE IF NOT EXISTS `Bus` (
    `id` int NOT NULL AUTO_INCREMENT,
    `type` varchar(24) NOT NULL,
    `distance` varchar(24) NOT NULL,
    `parking_mode` varchar(16) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
)
COMMENT 'Lista busow zborowych deklarowanych na kongres';

-- 
-- Opisy wynikające z kodu źródłowego
-- 
-- type: ['minibus_9', 'minibus_30', 'autokar_50', 'autokar_70', 'autobus_12m', 'autobus_18m']
-- distance: ['15km', '25km', '50km', '100km', '200km', 'more200km']
-- parking_mode: ['needed', 'not_needed']
--