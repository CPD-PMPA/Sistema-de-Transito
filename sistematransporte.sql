-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Nov-2017 às 19:53
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistematransporte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `papel` text NOT NULL,
  `matricula` int(11) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `numero_moradia` bigint(6) DEFAULT NULL,
  `cep` bigint(8) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `cidade` varchar(80) DEFAULT 'Pouso Alegre'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `cpf`, `nome`, `username`, `papel`, `matricula`, `senha`, `email`, `numero_moradia`, `cep`, `bairro`, `rua`, `cidade`) VALUES
(20, '11111111111', 'Samuel', 'cem10000', 'Administrador,Motorista', 1, 'e10adc3949ba59abbe56e057f20f883e', 'samuel@gmail.com', 50, 37550000, 'jatobá', 'Alberto de barros cobra', 'Pouso Alegre'),
(21, '11652766669', 'Edson Gabriel Pereira Soares', 'eggabriel', 'Administrador,Motorista', 2, '647431b5ca55b04fdf3c2fce31ef1915', 'ps.eggabriel@gmail.com', NULL, NULL, NULL, NULL, 'Pouso Alegre');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `nascimento` date NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `rua_embarque` varchar(100) NOT NULL,
  `bairro_embarque` varchar(80) NOT NULL,
  `rua_desembarque` varchar(100) NOT NULL,
  `bairro_desembarque` varchar(80) NOT NULL,
  `serie` enum('inicial','primeiro_ano','segundo_ano','terceiro_ano','quarto_ano','quinto_ano','sexto_ano','setimo_ano','oitavo_ano','nono_ano') NOT NULL,
  `classe` varchar(20) NOT NULL,
  `turno` enum('Manhã','Tarde','Noite','') NOT NULL,
  `escola` varchar(100) NOT NULL,
  `veiculo_ida` varchar(50) NOT NULL,
  `veiculo_volta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `nascimento`, `rua`, `numero`, `rua_embarque`, `bairro_embarque`, `rua_desembarque`, `bairro_desembarque`, `serie`, `classe`, `turno`, `escola`, `veiculo_ida`, `veiculo_volta`) VALUES
(3, 'Diego Alves Openheimer', '1994-09-12', 'rua 16', '120', 'rua 10', 'Monte Azul', 'rua 10', 'Monte Azul', 'nono_ano', 'turma b', 'Noite', 'E.M prof maria barbosa', 'HJT4157', 'carro'),
(4, 'quijo vinagretes', '0909-09-09', 'djahoehaegw', '1243', 'aehgria', 'iughdaue', 'ageakghuiae', 'graigweiu', 'inicial', 'aheoiah', 'Manhã', 'ieoaheoihadouiwa', 'HJT4157', 'aoihdeoaihe'),
(5, 'sdkae', '0000-00-00', 'kçljwadioahe', '877', 'haoiheoiahe', 'iasoi', 'ahsruiohare', 's', 'oitavo_ano', '3a', 'Manhã', 'Samuel Felipe da Conseição2', 'HJT4157', 'fdfd'),
(6, 'oauir', '0000-00-00', 'ageagar', '999', 'oij', 'haruiha', 'jio', 'jiojqiojar', 'inicial', '3', 'Manhã', 'gdfg', 'HJT4157', 'h'),
(7, 'samael od the light', '0001-01-01', 'rua do ceu', '777', 'marioba', 'ceu', 'marioba', 'ceu', 'quinto_ano', '6b', 'Tarde', 'openheimerdinger stitution enletronic masterpice', 'HJT4157', 'HJT4157'),
(8, 'lkajsrekla', '0000-00-00', 'adasrewafr', '23', 'bahjega', 'aejkaheae', 'hadiugare', 'kashkegaorjgb', 'terceiro_ano', '22222', 'Tarde', 'openheimerdinger stitution enletronic masterpice', 'dfdffdfd', 'fye-0506'),
(9, 'Aa', '0000-00-00', 'A', '34', 'A', 'A', 'A', 'A', 'inicial', 'A', 'Manhã', 'A', 'HJT4157', 'A'),
(10, 'a', '0000-00-00', 'a', '22', 'a', 'a', 'a', 'a', 'inicial', 'a', 'Manhã', 'a', 'HJT4157', 'dsdf'),
(11, 'b', '1221-12-12', 'b', '24', 'safdar', 'Vila Costa Rios', 'asfdar', 'Vale da Andorinhas', 'setimo_ano', '7', 'Noite', 'Samuel Felipe da Conseição', '', 'HJT4157'),
(12, 'c', '0000-00-00', 'sout park avenue', '13', 'erer', 'Anhumas', 'apartamento', 'Aristeu Cosanta Rios', 'quinto_ano', 'rerererer', 'Tarde', 'openheimerdinger stitution enletronic masterpice', 'HJT4157', 'HJT4157'),
(13, 'd', '0000-00-00', 'Benedicto miguel da costa', '17', '11', 'Árvore Grande', 'rua 16', 'Afonsos', '', '21ds21', 'Tarde', 'Escola Municipal Doutor Ângelo Cônsoli', 'dfdffdfd', 'dfdffdfd'),
(15, 'Fulano Beltrano', '0000-00-00', 'a', '55', 'a', 'a', 'a', 'a', 'inicial', 'a', 'Manhã', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` int(6) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `contato` varchar(20) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_final` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `escola`
--

INSERT INTO `escola` (`id`, `nome`, `rua`, `numero`, `bairro`, `telefone`, `contato`, `hora_inicio`, `hora_final`) VALUES
(3, 'E.M prof maria barbosa', '10', 0, 'algodao', '3534494994', 'algodao@prefeitura.m', '07:10:00', '22:30:00'),
(4, 'Escola Municipal Doutor Ângelo Cônsoli', ' R. Álvaro Leite', 0, 'Fatima', '3534494994', '353449-4321', '07:10:00', '22:30:00'),
(8, 'Samuel Felipe da Conseição', 'sout park avenue', 0, 'snowday', '3534494994', 'samuelEscola@gmil.co', '07:30:00', '23:00:00'),
(9, 'openheimerdinger stitution enletronic masterpice', 'sout park avenue', 0, 'snowday', '3534494994', '353449-4321', '06:33:00', '18:08:00'),
(11, 'Samuel Felipe da Conseição1', 'sout park avenue', 0, 'snowday', '3534494994', '353449-4321', '11:11:00', '11:01:00'),
(12, 'Samuel Felipe da Conseição2', 'sout park avenue', 0, 'snowday', '3534494994', '353449-4321', '22:22:00', '22:22:00'),
(13, 'Samuel Felipe da Conseição22', 'sout park avenue', 0, 'snowday', '3534494994', '353449-4321', '22:22:00', '22:22:00'),
(14, 'Samuel Felipe da Conseição24', 'sout park avenue', 0, 'snowday', '3534494994', '353449-4321', '03:33:00', '03:33:00'),
(15, 'Samuel Felipe da Conseição244', 'sout park avenue', 0, 'snowday', '3534494994', '353449-4321', '11:11:00', '11:11:00'),
(16, 'Samuel Felipe da Conseição2444', 'sout park avenue', 0, 'snowday', '3534494994', '353449-4321', '03:33:00', '03:33:00'),
(17, 'escola generica 01', 'rua generica 01', 0, 'bairro generico 01', '34235005', 'contato genérico 01', '23:00:00', '23:01:00'),
(18, 'Samuel', 'dos', 0, 'gays', '01010', '010101', '07:10:00', '20:10:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE `motorista` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `cpf` bigint(11) NOT NULL,
  `nascimento` date NOT NULL,
  `telefone` bigint(12) NOT NULL,
  `cnh` varchar(11) NOT NULL,
  `vencimento` date NOT NULL,
  `matricula` int(11) NOT NULL,
  `papel` text NOT NULL,
  `senha` varchar(32) NOT NULL,
  `numero_moradia` varchar(6) DEFAULT NULL,
  `cep` bigint(8) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `cidade` varchar(80) DEFAULT 'Pouso Alegre',
  `endereco` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `motorista`
--

INSERT INTO `motorista` (`id`, `nome`, `username`, `cpf`, `nascimento`, `telefone`, `cnh`, `vencimento`, `matricula`, `papel`, `senha`, `numero_moradia`, `cep`, `bairro`, `rua`, `cidade`, `endereco`) VALUES
(2, 'Diego Alves Openheimer', 'Diego', 11111111113, '1994-09-12', 35988741539, 'd4s54d2', '2018-03-13', 3, 'Motorista', 'e99a18c428cb38d5f260853678922e03', NULL, NULL, NULL, NULL, NULL, ''),
(11, 'Samuel Felipe da Conseição', 'samuel', 10011010, '0000-00-00', 1010110, '01010110', '0000-00-00', 0, '', 'd8ae5776067290c4712fa454006c8ec6', NULL, NULL, NULL, NULL, 'Pouso Alegre', 'Rua Procopio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `onibus_alunos`
--

CREATE TABLE `onibus_alunos` (
  `int` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `placa_veiculo` varchar(8) DEFAULT NULL,
  `placa_veiculoVolta` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `onibus_alunos`
--

INSERT INTO `onibus_alunos` (`int`, `id_aluno`, `placa_veiculo`, `placa_veiculoVolta`) VALUES
(2, 10, 'HJT4157', NULL),
(3, 11, NULL, 'HJT4157'),
(4, 12, 'HJT4157', 'HJT4157'),
(5, 13, 'dfdffdfd', 'dfdffdfd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `responsaveis`
--

CREATE TABLE `responsaveis` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `celular01` varchar(18) DEFAULT NULL,
  `celular02` varchar(18) DEFAULT NULL,
  `cpf` varchar(14) NOT NULL,
  `bairro` varchar(80) NOT NULL,
  `rua` varchar(80) NOT NULL,
  `numero` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `responsaveis`
--

INSERT INTO `responsaveis` (`id`, `nome`, `celular01`, `celular02`, `cpf`, `bairro`, `rua`, `numero`) VALUES
(3, 'xxxxx', '(35) 33333-3333', '(35) 33333-3333', '222.222.222-22', '', '', ''),
(4, 'yyyyyy', '(35) 33333-3333', '(35) 33333-3333', '222.222.222-22', '', '', ''),
(5, 'wshae pvoiayw', '(35) 77777-7777', '(35) 77777-7777', '777.777.777-77', '', '', ''),
(6, 'dsdsd', '22222', '323233', '323232323', '', '', ''),
(7, 'fdfd', '(35) 43434-3434', '(35) 43434-3434', '434.343.434-34', '', '', ''),
(8, 'fxxx', '32312', '(35) 43434-3434', '434.343.434-34', '', '', ''),
(9, 'gfgfg', '(35) 44555-4545', '(35) 45454-54', '545.454.5454', '', '', ''),
(10, 'fish', '(35) 43443-4343', '(35) 45454-5454', '545.454.545-45', '', '', ''),
(11, 'fisha', '(35) 43443-4343', '(35) 45454-5454', '545.454.545-45', '', '', ''),
(12, 'Diego Alves Openheimer', '(35) 98874-1639', '(35) 25235-411', '084.225.361-47', 'Morumbi', 'rua benedicto mguel da costa', '55'),
(13, 'dsd', '(35) -2323', '(35) 23232-3', '233.232', '3232', '3232', '323'),
(14, 'Diego Alves Openheimer', '(35) 98874-1639', '(35) 34228-646', '365.287.412-5', 'morumbid', 'dsdsd', '323'),
(15, 'xxxxx', '(35) 333', '(35) 3333', '333.33', '333', '333', '333'),
(16, 'Ssss', '(35) -222', '(35) 222', '222.22', 'ss', 'ss', 'sss');

-- --------------------------------------------------------

--
-- Estrutura da tabela `responsaveis_aluno`
--

CREATE TABLE `responsaveis_aluno` (
  `int` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_responsavel` int(11) NOT NULL,
  `parentesco` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rotas`
--

CREATE TABLE `rotas` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id` int(11) NOT NULL,
  `placa` varchar(8) NOT NULL,
  `frota` varchar(15) NOT NULL,
  `modelo` varchar(15) NOT NULL,
  `ano` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `renavam` int(11) NOT NULL,
  `chassi` varchar(17) NOT NULL,
  `vencimentoInspecao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `placa`, `frota`, `modelo`, `ano`, `capacidade`, `renavam`, `chassi`, `vencimentoInspecao`) VALUES
(1, 'fye-0506', '345', 'onibus', 2008, 48, 343434435, '35435gfgd', '2017-10-30'),
(2, 'HJT4157', '654', 'UNO', 2009, 20, 1021020101, '0a0a0a0a', '2017-10-28'),
(3, 'dfdffdfd', 'dfdfdf', 'ded434', 0, 48, 0, 'fdfdf', '2017-10-26'),
(4, 'asdsa', 'dsadsa', 'dsa', 0, 0, 0, 'dsadsa', '2017-10-11'),
(6, 'sdadsa', 'dsadsa', 'dsadsa', 0, 0, 0, 'dsadas', '2017-11-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`,`cpf`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `matricula` (`matricula`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Indexes for table `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cnh` (`cnh`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `onibus_alunos`
--
ALTER TABLE `onibus_alunos`
  ADD PRIMARY KEY (`int`),
  ADD KEY `placa_veiculo` (`placa_veiculo`),
  ADD KEY `placa_veiculoVolta` (`placa_veiculoVolta`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Indexes for table `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsaveis_aluno`
--
ALTER TABLE `responsaveis_aluno`
  ADD PRIMARY KEY (`int`),
  ADD KEY `id_responsavel` (`id_responsavel`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Indexes for table `rotas`
--
ALTER TABLE `rotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `placa` (`placa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `escola`
--
ALTER TABLE `escola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `motorista`
--
ALTER TABLE `motorista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `onibus_alunos`
--
ALTER TABLE `onibus_alunos`
  MODIFY `int` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `responsaveis`
--
ALTER TABLE `responsaveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `responsaveis_aluno`
--
ALTER TABLE `responsaveis_aluno`
  MODIFY `int` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rotas`
--
ALTER TABLE `rotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `onibus_alunos`
--
ALTER TABLE `onibus_alunos`
  ADD CONSTRAINT `onibus_alunos_ibfk_2` FOREIGN KEY (`placa_veiculo`) REFERENCES `veiculo` (`placa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `onibus_alunos_ibfk_3` FOREIGN KEY (`placa_veiculoVolta`) REFERENCES `veiculo` (`placa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `onibus_alunos_ibfk_4` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `responsaveis_aluno`
--
ALTER TABLE `responsaveis_aluno`
  ADD CONSTRAINT `responsaveis_aluno_ibfk_2` FOREIGN KEY (`id_responsavel`) REFERENCES `responsaveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responsaveis_aluno_ibfk_3` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
