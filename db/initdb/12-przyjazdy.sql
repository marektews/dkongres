CREATE TABLE IF NOT EXISTS `Arrivals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bus_id` int NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `arrived` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `Arrivals_Bus_FK` (`bus_id`),
  KEY `Arrivals_datetime_IDX` (`datetime`) USING BTREE,
  CONSTRAINT `Arrivals_Bus_FK` FOREIGN KEY (`bus_id`) REFERENCES `Bus` (`id`)
) 
COMMENT 'Poranne przyjazdy autokarów';