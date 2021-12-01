-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Dez-2021 às 03:18
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mbus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadun_parametros`
--

CREATE TABLE `cadun_parametros` (
  `categoriaid` int(11) NOT NULL,
  `categoriagrupo` double DEFAULT NULL,
  `categoriadescricao` varchar(50) DEFAULT NULL,
  `sysupusuario` varchar(50) DEFAULT NULL,
  `sysupdata` datetime DEFAULT NULL,
  `sysuphora` datetime DEFAULT NULL,
  `sysupstatus` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadun_parametros`
--

INSERT INTO `cadun_parametros` (`categoriaid`, `categoriagrupo`, `categoriadescricao`, `sysupusuario`, `sysupdata`, `sysuphora`, `sysupstatus`) VALUES
(1, 1, 'Cliente', '', '2011-08-03 10:01:43', '2011-08-03 10:01:43', ''),
(2, 2, 'Fornecedor', '', '2011-08-03 10:01:43', '2011-08-03 10:01:43', ''),
(3, 3, 'Vendedor', '', '2011-08-03 10:01:43', '2011-08-03 10:01:43', ''),
(4, 4, 'Transportadora', '', '2011-08-03 10:01:43', '2011-08-03 10:01:43', ''),
(5, 5, 'Funcionário', '', '2011-08-03 10:01:43', '2011-08-03 10:01:43', ''),
(6, 6, 'Banco', '90.0.0.10', '2011-08-03 10:01:43', '2011-08-03 10:01:43', ''),
(7, 1.1, 'Cliente VIP', '', '2011-08-03 10:01:43', '2011-08-03 10:01:43', ''),
(8, 2.1, 'Fornecedor Qualificado', NULL, '2011-08-03 10:01:43', '2011-08-03 10:01:43', NULL),
(9, NULL, 'Fornecedor Bloqueado', '192.168.0.178', '2011-08-03 10:01:43', '2011-08-03 10:01:43', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadun_parametros`
--
ALTER TABLE `cadun_parametros`
  ADD PRIMARY KEY (`categoriaid`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadun_parametros`
--
ALTER TABLE `cadun_parametros`
  MODIFY `categoriaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
