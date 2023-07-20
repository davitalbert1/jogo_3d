-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/07/2023 às 03:33
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jogo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `xp` int(11) DEFAULT NULL,
  `nivel` smallint(6) DEFAULT NULL,
  `tamanho` tinyint(4) DEFAULT NULL,
  `proximidade` tinyint(4) DEFAULT NULL,
  `personalidade` text DEFAULT NULL,
  `regiao` tinyint(4) DEFAULT NULL,
  `casa` smallint(6) DEFAULT NULL,
  `profissao` varchar(30) DEFAULT NULL,
  `inteligencia` tinyint(4) DEFAULT NULL,
  `forca` tinyint(4) DEFAULT NULL,
  `destreza` tinyint(4) DEFAULT NULL,
  `sorte` tinyint(4) DEFAULT NULL,
  `carisma` tinyint(4) DEFAULT NULL,
  `combate` tinyint(4) DEFAULT NULL,
  `animais` tinyint(4) DEFAULT NULL,
  `percepcao` tinyint(4) DEFAULT NULL,
  `furtividade` tinyint(4) DEFAULT NULL,
  `medo` tinyint(4) DEFAULT NULL,
  `armadura` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `arma`
--

CREATE TABLE `arma` (
  `id_arma` int(11) NOT NULL,
  `dano` tinyint(4) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `preco` smallint(6) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `armadura`
--

CREATE TABLE `armadura` (
  `id_armadura` int(11) NOT NULL,
  `id_material_armadura` int(11) DEFAULT NULL,
  `id_roupa` int(11) DEFAULT NULL,
  `protecao` tinyint(4) DEFAULT NULL,
  `furtifividade_impede` tinyint(4) DEFAULT NULL,
  `preco` smallint(6) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `capacete`
--

CREATE TABLE `capacete` (
  `id_capacete` int(11) NOT NULL,
  `id_material` int(11) DEFAULT NULL,
  `id_roupa` int(11) DEFAULT NULL,
  `protecao` tinyint(4) DEFAULT NULL,
  `furtifividade_impede` tinyint(4) DEFAULT NULL,
  `preco` smallint(6) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comida`
--

CREATE TABLE `comida` (
  `id_comida` int(11) NOT NULL,
  `vida_recupera` tinyint(4) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `preco` smallint(6) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `efeito`
--

CREATE TABLE `efeito` (
  `id_efeito` int(11) NOT NULL,
  `efeito` text DEFAULT NULL,
  `tempo` tinyint(4) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `habilidade`
--

CREATE TABLE `habilidade` (
  `id_habilidade` int(11) NOT NULL,
  `id_roupa` int(11) DEFAULT NULL,
  `aumento` tinyint(4) DEFAULT NULL,
  `habilidade` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ingrediente`
--

CREATE TABLE `ingrediente` (
  `id_ingrediente` int(11) NOT NULL,
  `vida_recupera` tinyint(4) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `efeito_add` text DEFAULT NULL,
  `preco` smallint(6) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `id_receita` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `material`
--

CREATE TABLE `material` (
  `id_material` int(11) NOT NULL,
  `peso` tinyint(4) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `efeito` text DEFAULT NULL,
  `preco` tinyint(4) DEFAULT NULL,
  `quantidade` tinyint(4) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `npc`
--

CREATE TABLE `npc` (
  `id_npc` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `xp` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `proximidade` tinyint(4) DEFAULT NULL,
  `personalidade` text DEFAULT NULL,
  `regiao` tinyint(4) DEFAULT NULL,
  `casa` smallint(6) DEFAULT NULL,
  `profissao` varchar(30) DEFAULT NULL,
  `inteligencia` tinyint(4) DEFAULT NULL,
  `forca` tinyint(4) DEFAULT NULL,
  `destreza` tinyint(4) DEFAULT NULL,
  `sorte` tinyint(4) DEFAULT NULL,
  `carisma` tinyint(4) DEFAULT NULL,
  `combate` tinyint(4) DEFAULT NULL,
  `cozinha` tinyint(4) DEFAULT NULL,
  `animais` tinyint(4) DEFAULT NULL,
  `plantas` tinyint(4) DEFAULT NULL,
  `percepcao` tinyint(4) DEFAULT NULL,
  `furtividade` tinyint(4) DEFAULT NULL,
  `medo` tinyint(4) DEFAULT NULL,
  `armadura` tinyint(4) DEFAULT NULL,
  `armadura_usada` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `objeto`
--

CREATE TABLE `objeto` (
  `id_objeto` int(11) NOT NULL,
  `id_material` int(11) DEFAULT NULL,
  `preco` smallint(6) DEFAULT NULL,
  `peso` smallint(6) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `quantidade` tinyint(4) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personagem`
--

CREATE TABLE `personagem` (
  `id_jogador` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `xp` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `inteligencia` tinyint(4) DEFAULT NULL,
  `forca` tinyint(4) DEFAULT NULL,
  `destreza` tinyint(4) DEFAULT NULL,
  `sorte` tinyint(4) DEFAULT NULL,
  `carisma` tinyint(4) DEFAULT NULL,
  `combate` tinyint(4) DEFAULT NULL,
  `cozinha` tinyint(4) DEFAULT NULL,
  `animais` tinyint(4) DEFAULT NULL,
  `plantas` tinyint(4) DEFAULT NULL,
  `percepcao` tinyint(4) DEFAULT NULL,
  `furtividade` tinyint(4) DEFAULT NULL,
  `medo` tinyint(4) DEFAULT NULL,
  `armadura` tinyint(4) DEFAULT NULL,
  `armadura_usada` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `receita`
--

CREATE TABLE `receita` (
  `id_receita` int(11) NOT NULL,
  `numero_ingrediente` tinyint(4) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `efeito_add` text DEFAULT NULL,
  `preco` smallint(6) DEFAULT NULL,
  `quantidade` tinyint(4) DEFAULT NULL,
  `id_comida` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `roupa`
--

CREATE TABLE `roupa` (
  `id_roupa` int(11) NOT NULL,
  `id_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`);

--
-- Índices de tabela `arma`
--
ALTER TABLE `arma`
  ADD PRIMARY KEY (`id_arma`),
  ADD KEY `id_item` (`id_item`);

--
-- Índices de tabela `armadura`
--
ALTER TABLE `armadura`
  ADD PRIMARY KEY (`id_armadura`),
  ADD KEY `id_roupa` (`id_roupa`);

--
-- Índices de tabela `capacete`
--
ALTER TABLE `capacete`
  ADD PRIMARY KEY (`id_capacete`),
  ADD KEY `id_material` (`id_material`),
  ADD KEY `id_roupa` (`id_roupa`);

--
-- Índices de tabela `comida`
--
ALTER TABLE `comida`
  ADD PRIMARY KEY (`id_comida`),
  ADD KEY `id_item` (`id_item`);

--
-- Índices de tabela `efeito`
--
ALTER TABLE `efeito`
  ADD PRIMARY KEY (`id_efeito`),
  ADD KEY `id_item` (`id_item`);

--
-- Índices de tabela `habilidade`
--
ALTER TABLE `habilidade`
  ADD PRIMARY KEY (`id_habilidade`),
  ADD KEY `id_roupa` (`id_roupa`);

--
-- Índices de tabela `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`id_ingrediente`),
  ADD KEY `id_receita` (`id_receita`),
  ADD KEY `id_item` (`id_item`);

--
-- Índices de tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices de tabela `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`),
  ADD KEY `id_item` (`id_item`);

--
-- Índices de tabela `npc`
--
ALTER TABLE `npc`
  ADD PRIMARY KEY (`id_npc`);

--
-- Índices de tabela `objeto`
--
ALTER TABLE `objeto`
  ADD PRIMARY KEY (`id_objeto`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `id_material` (`id_material`);

--
-- Índices de tabela `personagem`
--
ALTER TABLE `personagem`
  ADD PRIMARY KEY (`id_jogador`);

--
-- Índices de tabela `receita`
--
ALTER TABLE `receita`
  ADD PRIMARY KEY (`id_receita`),
  ADD KEY `id_comida` (`id_comida`);

--
-- Índices de tabela `roupa`
--
ALTER TABLE `roupa`
  ADD PRIMARY KEY (`id_roupa`),
  ADD KEY `id_item` (`id_item`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `arma`
--
ALTER TABLE `arma`
  MODIFY `id_arma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `armadura`
--
ALTER TABLE `armadura`
  MODIFY `id_armadura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `capacete`
--
ALTER TABLE `capacete`
  MODIFY `id_capacete` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comida`
--
ALTER TABLE `comida`
  MODIFY `id_comida` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `efeito`
--
ALTER TABLE `efeito`
  MODIFY `id_efeito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `habilidade`
--
ALTER TABLE `habilidade`
  MODIFY `id_habilidade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ingrediente`
--
ALTER TABLE `ingrediente`
  MODIFY `id_ingrediente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `material`
--
ALTER TABLE `material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `npc`
--
ALTER TABLE `npc`
  MODIFY `id_npc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `objeto`
--
ALTER TABLE `objeto`
  MODIFY `id_objeto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `personagem`
--
ALTER TABLE `personagem`
  MODIFY `id_jogador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `receita`
--
ALTER TABLE `receita`
  MODIFY `id_receita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roupa`
--
ALTER TABLE `roupa`
  MODIFY `id_roupa` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `arma`
--
ALTER TABLE `arma`
  ADD CONSTRAINT `arma_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);

--
-- Restrições para tabelas `armadura`
--
ALTER TABLE `armadura`
  ADD CONSTRAINT `armadura_ibfk_1` FOREIGN KEY (`id_roupa`) REFERENCES `roupa` (`id_roupa`);

--
-- Restrições para tabelas `capacete`
--
ALTER TABLE `capacete`
  ADD CONSTRAINT `capacete_ibfk_1` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`),
  ADD CONSTRAINT `capacete_ibfk_2` FOREIGN KEY (`id_roupa`) REFERENCES `roupa` (`id_roupa`);

--
-- Restrições para tabelas `comida`
--
ALTER TABLE `comida`
  ADD CONSTRAINT `comida_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);

--
-- Restrições para tabelas `efeito`
--
ALTER TABLE `efeito`
  ADD CONSTRAINT `efeito_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);

--
-- Restrições para tabelas `habilidade`
--
ALTER TABLE `habilidade`
  ADD CONSTRAINT `habilidade_ibfk_1` FOREIGN KEY (`id_roupa`) REFERENCES `roupa` (`id_roupa`);

--
-- Restrições para tabelas `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD CONSTRAINT `ingrediente_ibfk_1` FOREIGN KEY (`id_receita`) REFERENCES `receita` (`id_receita`),
  ADD CONSTRAINT `ingrediente_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);

--
-- Restrições para tabelas `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);

--
-- Restrições para tabelas `objeto`
--
ALTER TABLE `objeto`
  ADD CONSTRAINT `objeto_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  ADD CONSTRAINT `objeto_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`);

--
-- Restrições para tabelas `receita`
--
ALTER TABLE `receita`
  ADD CONSTRAINT `receita_ibfk_1` FOREIGN KEY (`id_comida`) REFERENCES `comida` (`id_comida`);

--
-- Restrições para tabelas `roupa`
--
ALTER TABLE `roupa`
  ADD CONSTRAINT `roupa_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
