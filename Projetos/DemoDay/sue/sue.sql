-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 04-Dez-2020 às 17:47
-- Versão do servidor: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sue`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_aluno`
--

CREATE TABLE `tbl_aluno` (
  `id_aluno` smallint(6) NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `nasc` varchar(10) DEFAULT NULL,
  `genero` enum('feminino','masculino','outro') DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `estados_brasil` varchar(50) DEFAULT NULL,
  `ncasa` varchar(50) DEFAULT NULL,
  `comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_aluno`
--

INSERT INTO `tbl_aluno` (`id_aluno`, `nome`, `cpf`, `email`, `senha`, `tel`, `nasc`, `genero`, `cep`, `estados_brasil`, `ncasa`, `comp`) VALUES
(42, 'adm', '111.111.111-11', 'adm@123.com', '123456', '(11) 11111-1111', '02/01/2005', NULL, '02.335-68', 'BA', '01', 'm'),
(43, 'giovani cachorro belga', '865.316.853-16', 'belga@cachorro.com', '123456', '(98) 51218-4531', '01/03/1947', NULL, '01.122-365', 'PI', '55', '99'),
(44, 'pablo', '987.654.846-53', 'pablo@htm.com', '962371316', '(11) 40028-9223', '01/02/2010', NULL, '01.203-221', 'MS', '55', 'b'),
(45, 'aaa', '451.684.532-13', 'a@a.a', 'aaaaa', '(98) 22746-5132', '02/01/2005', NULL, '01.122-365', 'RN', '10', '25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ponto`
--

CREATE TABLE `tbl_ponto` (
  `id` smallint(6) NOT NULL,
  `ponto` int(11) DEFAULT NULL,
  `id_aluno` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_ponto`
--

INSERT INTO `tbl_ponto` (`id`, `ponto`, `id_aluno`) VALUES
(1, 40, 42),
(2, 40, 44);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_professor`
--

CREATE TABLE `tbl_professor` (
  `id_professor` smallint(6) NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `senha` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `nasc` varchar(10) DEFAULT NULL,
  `estados_brasil` varchar(40) DEFAULT NULL,
  `ncasa` varchar(50) DEFAULT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `comp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_professor`
--

INSERT INTO `tbl_professor` (`id_professor`, `nome`, `senha`, `email`, `genero`, `cpf`, `tel`, `nasc`, `estados_brasil`, `ncasa`, `cep`, `comp`) VALUES
(2, 'adm', '123456', 'adm@123.com', NULL, '555.444.333-22', '(11) 11111-1111', '', '', '99', '02.335-68', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aluno`
--
ALTER TABLE `tbl_aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_ponto`
--
ALTER TABLE `tbl_ponto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pontos_aluno` (`id_aluno`);

--
-- Indexes for table `tbl_professor`
--
ALTER TABLE `tbl_professor`
  ADD PRIMARY KEY (`id_professor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_aluno`
--
ALTER TABLE `tbl_aluno`
  MODIFY `id_aluno` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tbl_ponto`
--
ALTER TABLE `tbl_ponto`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_professor`
--
ALTER TABLE `tbl_professor`
  MODIFY `id_professor` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbl_ponto`
--
ALTER TABLE `tbl_ponto`
  ADD CONSTRAINT `fk_pontos_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id_aluno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
