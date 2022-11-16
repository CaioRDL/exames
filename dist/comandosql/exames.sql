-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Nov-2022 às 14:27
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

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
  `id` int(50) NOT NULL,
  `paciente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidade` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idade` int(5) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `peso` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cadastro_paciente`
--

INSERT INTO `cadastro_paciente` (`id`, `paciente`, `nacionalidade`, `idade`, `data`, `peso`) VALUES
(4, 'Gustavo ', 'Bolivia', 20, '2022-11-21 00:00:00', '60'),
(5, 'Luis Carlos', 'Bolivia', 32, '2022-11-07 00:00:00', '78');

-- --------------------------------------------------------

--
-- Estrutura da tabela `capa`
--

CREATE TABLE `capa` (
  `id_capa` int(50) NOT NULL,
  `nome` int(100) NOT NULL,
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_envio` int(50) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `capa`
--

INSERT INTO `capa` (`id_capa`, `nome`, `path`, `data_envio`) VALUES
(1, 0, '', 2147483647),
(2, 0, '', 2147483647),
(3, 0, '', 2147483647);

-- --------------------------------------------------------

--
-- Estrutura da tabela `editar_paciente`
--

CREATE TABLE `editar_paciente` (
  `cpf_paciente` int(15) NOT NULL,
  `nome` int(5) NOT NULL,
  `idade` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `editar_paciente`
--

INSERT INTO `editar_paciente` (`cpf_paciente`, `nome`, `idade`, `nacionalidade`, `bairro`, `cidade`, `endereco`) VALUES
(0, 25, 'Br', 'VG', 'Pinhais', 'Rua', 0),
(2147483647, 0, '22', 'BR', 'Pinhais', 'Vargem grande', 0);

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
('ramoscaio69@gmail.com', '$2y$10$9xe8.VEPkFn6X2wQ9hAdz.FyQHI33bMief4AIj2HK87VFiRXtluTC'),
('alvarogustavo@gmail.com', '$2y$10$z/efKFc7HWbgcV4YyQHzmeWDaCi5QdgguxbO..cOMLmyC1DAzbIVu'),
('alvarogustavo@gmail.com', '$2y$10$SHy6LEucD.tyoXh9VC2OKeTwHf5eTSYjhA8cf5vb9RIG.644CP63a');

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `capa`
--
ALTER TABLE `capa`
  MODIFY `id_capa` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
