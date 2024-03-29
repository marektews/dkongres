-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kongres
-- ------------------------------------------------------
-- Server version	8.3.0

--
-- Table structure for table `terminals`
--

CREATE TABLE IF NOT EXISTS `terminals` (
  `idterminals` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idterminals`),
  UNIQUE KEY `idterminals_UNIQUE` (`idterminals`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
