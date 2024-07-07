CREATE TABLE IF NOT EXISTS `Czw` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nr_rej` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nr_ident` int NOT NULL,
  `zbor_id` int NOT NULL,
  `issuing` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'moment wydania',
  `cancellation` datetime DEFAULT NULL COMMENT 'moment anulowania',
  PRIMARY KEY (`id`),
  KEY `Czw_Zbory_FK` (`zbor_id`),
  KEY `Czw_nr_ident_IDX` (`nr_ident`) USING BTREE,
  KEY `Czw_issuing_IDX` (`issuing`) USING BTREE,
  CONSTRAINT `Czw_Zbory_FK` FOREIGN KEY (`zbor_id`) REFERENCES `Zbory` (`id`)
) 
COMMENT 'Wjazdowki na czwartkowe sprzatanie';