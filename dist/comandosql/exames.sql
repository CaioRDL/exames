-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Nov-2022 às 06:19
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
(0, 'CAio Moreira', 'EUROPA', 25, '2000-08-19', '60,800'),
(11, '[paciente]', '[nacionalidade]', 0, '0000-00-00', '[peso]'),
(12, 'Bianca', 'Ramos', 23, '2022-11-15', '68,600'),
(13, 'Caio Ramos de Lima', 'Brasil', 22, '9910-08-07', ''),
(14, 'Biaca de Matos Bueno', 'Brasil', 23, '1998-08-28', '68'),
(15, 'Caio Ramos de Lima', 'Brasil', 22, '2000-08-07', '69,800'),
(16, 'Caio Ramos de Lima', 'Brasil', 22, '2000-08-07', '69,800'),
(17, 'Cleonilda Ramos', 'Bolivia', 58, '2022-11-10', '68'),
(18, 'Cleonilda Ramos', 'Brasileira', 25, '1995-09-08', '78'),
(19, 'Hudo Ramos', 'Russia', 28, '2005-09-07', '78,500'),
(20, 'Luis Carlos de Oliveira Pereira', 'CANADA', 32, '2000-09-07', '130'),
(21, '', '', 0, '0000-00-00', ''),
(22, '', '', 0, '0000-00-00', ''),
(23, 'Lucas Gabriel', 'Canada', 22, '1999-08-20', '68'),
(24, 'Luis Carlos', 'EUA', 32, '2020-10-05', '120'),
(25, 'Fernando Moreira', 'EUROPA', 25, '2000-08-19', '68'),
(26, 'Lucas Ramos Serra', 'China', 29, '2000-09-07', '69'),
(27, 'Bianca Matos Bueno', 'Bolivia', 22, '2022-11-13', '72,600'),
(28, 'Luis Faustino da Silva', 'Argentina', 36, '2022-11-06', '88,600'),
(29, 'Lucas Da Silva', 'Uruguai ', 30, '2022-11-20', '58,900'),
(30, 'Kevin Santos', 'Russia', 27, '2021-08-24', '98,600'),
(31, 'Soy Fong', 'China', 26, '2022-01-31', '78+600'),
(32, 'Mey Lee', 'Japão', 27, '2022-11-06', '85,600');

-- --------------------------------------------------------

--
-- Estrutura da tabela `capa`
--

CREATE TABLE `capa` (
  `id_capa` int(50) NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_envio` date NOT NULL DEFAULT current_timestamp(),
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `capa`
--

INSERT INTO `capa` (`id_capa`, `path`, `data_envio`, `nome`) VALUES
(1, 'arquivo/636b13504a66d.png', '2022-11-08', 'MATRIX.png'),
(2, 'arquivo/636b14227101e.pdf', '2022-11-08', 'Curriculo Caio.pdf'),
(3, 'arquivo/636b1532c5e4d.pdf', '2022-11-08', 'Curriculo Caio.pdf'),
(4, './arquivos6375a57fd5111.png', '2022-11-17', 'capa.png'),
(5, './arquivos6375a9694ec8e.pdf', '2022-11-17', 'Curriculo Caio.pdf'),
(6, './arquivos6375aa24372f4.pdf', '2022-11-17', 'Curriculo Caio.pdf'),
(7, './arquivos6375aa4237b44.pdf', '2022-11-17', 'Curriculo Caio.pdf'),
(8, './arquivos6375aa42e573d.pdf', '2022-11-17', 'Curriculo Caio.pdf'),
(9, './arquivos6375aa43a3080.pdf', '2022-11-17', 'Curriculo Caio.pdf'),
(10, './arquivos6375aa448f6bb.pdf', '2022-11-17', 'Curriculo Caio.pdf'),
(11, './arquivos6375aa4bd042a.pdf', '2022-11-17', 'Curriculo Caio.pdf');

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
('ramoscaio69@gmail.com', '$2y$10$Z97t.i4V5erdMK9Ho0koH.sxWkGHjPRvH.yWtMW8Y1Dt2FW24Xqdu'),
('admin@gmail.com', '$2y$10$FsVe9CzNkJ0GQj3wQNiQ3emF4fO9bg/l/i2PNvNTvWQF5fx2SgT6O'),
('alvarogustavo@gmail.com', '$2y$10$liqIHI7f7w7jPzrSej2O3OHqKB9YcTDPEcA2sT2n9.b/93tEXeJYi');

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `capa`
--
ALTER TABLE `capa`
  MODIFY `id_capa` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `editar_paciente`
--
ALTER TABLE `editar_paciente`
  MODIFY `cpf_paciente` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;