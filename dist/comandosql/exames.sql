-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Nov-2022 às 04:30
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `exames`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_paciente`
--

CREATE TABLE `cadastro_paciente` (
  `id` int(255) NOT NULL,
  `paciente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idade` int(3) NOT NULL,
  `data` date NOT NULL DEFAULT current_timestamp(),
  `peso` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cadastro_paciente`
--

INSERT INTO `cadastro_paciente` (`id`, `paciente`, `nacionalidade`, `idade`, `data`, `peso`) VALUES
(10, '[paciente]', '[nacionalidade]', 0, '0000-00-00', '[peso]'),
(11, '[paciente]', '[nacionalidade]', 0, '0000-00-00', '[peso]'),
(12, 'Bianca', 'Ramos', 23, '2022-11-15', '68,600'),
(13, 'Caio Ramos de Lima', 'Brasil', 22, '9910-08-07', ''),
(14, 'Biaca de Matos Bueno', 'Brasil', 23, '1998-08-28', '68'),
(15, 'Caio Ramos de Lima', 'Brasil', 22, '2000-08-07', '69,800'),
(16, 'Caio Ramos de Lima', 'Brasil', 22, '2000-08-07', '69,800');

-- --------------------------------------------------------

--
-- Estrutura da tabela `capa`
--

CREATE TABLE `capa` (
  `id_capa` int(50) NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_envio` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `capa`
--

INSERT INTO `capa` (`id_capa`, `path`, `data_envio`, `nome`) VALUES
(1, 'arquivo/636b13504a66d.png', '2022-11-08 23:41:20.307017', 'MATRIX.png'),
(2, 'arquivo/636b14227101e.pdf', '2022-11-08 23:44:50.463670', 'Curriculo Caio.pdf'),
(3, 'arquivo/636b1532c5e4d.pdf', '2022-11-08 23:49:22.812654', 'Curriculo Caio.pdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editar_paciente`
--

CREATE TABLE `editar_paciente` (
  `cpf_paciente` int(10) NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idade` int(5) NOT NULL,
  `nacionalidade` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`email`, `senha`) VALUES
('ramoscaio69@gmail.com', '$2y$10$Z97t.i4V5erdMK9Ho0koH.sxWkGHjPRvH.yWtMW8Y1Dt2FW24Xqdu');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro_paciente`
--
ALTER TABLE `cadastro_paciente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `capa`
--
ALTER TABLE `capa`
  ADD PRIMARY KEY (`id_capa`);

--
-- Índices para tabela `editar_paciente`
--
ALTER TABLE `editar_paciente`
  ADD PRIMARY KEY (`cpf_paciente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro_paciente`
--
ALTER TABLE `cadastro_paciente`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `capa`
--
ALTER TABLE `capa`
  MODIFY `id_capa` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `editar_paciente`
--
ALTER TABLE `editar_paciente`
  MODIFY `cpf_paciente` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
