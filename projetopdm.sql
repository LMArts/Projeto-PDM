-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 11-Jan-2021 às 04:29
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetopdm`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
CREATE TABLE IF NOT EXISTS `responsavel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCompletoResp` varchar(250) DEFAULT NULL,
  `sexoResp` varchar(250) DEFAULT NULL,
  `celularResp` varchar(250) DEFAULT NULL,
  `emailResp` varchar(250) DEFAULT NULL,
  `senhaResp` varchar(250) DEFAULT NULL,
  `estadoResp` varchar(250) DEFAULT NULL,
  `cidadeResp` varchar(250) DEFAULT NULL,
  `enderecoResp` varchar(250) DEFAULT NULL,
  `numeroResp` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
