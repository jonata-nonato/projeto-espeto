CREATE DATABASE bdRestaurante;

USE bdRestaurante;

CREATE TABLE `tbbebidas` (
  `idBeb` int(11) NOT NULL,
  `nomeBeb` varchar(20) NOT NULL,
  `precUnitBeb` decimal(3,2) NOT NULL,
  `descBeb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbespetos`
--

CREATE TABLE `tbespetos` (
  `idEsp` int(11) NOT NULL,
  `nomeEsp` varchar(20) NOT NULL,
  `precUnitEsp` decimal(3,2) NOT NULL,
  `descEsp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabela De Espetos';

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpedido`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsobremesas`
--

CREATE TABLE `tbsobremesas` (
  `idSobr` int(11) NOT NULL,
  `nomeSobr` varchar(20) NOT NULL,
  `precUnitSobr` decimal(3,2) NOT NULL,
  `descSobr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tbpedido` (
  `idPed` int(11) NOT NULL,
  `idEsp` int(11) NOT NULL,
  `idBeb` int(11) NOT NULL,
  `idSobr` int(11) NOT NULL,
  `qntEspeto` int(11) NOT NULL,
  `qntBebida` int(11) NOT NULL,
  `qntSobremesa` int(11) NOT NULL,
  `totalPedido` decimal(5,2) NOT NULL,
  `dataPedido` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE 
  current_timestamp()

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbbebidas`
--
ALTER TABLE `tbbebidas`
  ADD PRIMARY KEY (`idBeb`);

--
-- Índices para tabela `tbespetos`
--
ALTER TABLE `tbespetos`
  ADD PRIMARY KEY (`idEsp`);

--
-- Índices para tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  ADD PRIMARY KEY (`idPed`);

--
-- Índices para tabela `tbsobremesas`
--
ALTER TABLE `tbsobremesas`
  ADD PRIMARY KEY (`idSobr`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbbebidas`
--
ALTER TABLE `tbbebidas`
  MODIFY `idBeb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbespetos`
--
ALTER TABLE `tbespetos`
  MODIFY `idEsp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  MODIFY `idPed` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbsobremesas`
--
ALTER TABLE `tbsobremesas`
  MODIFY `idSobr` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

-- DEFINIÇÃO DE CHAVE ESTRANGEIRA

ALTER TABLE `tbpedido`
  ADD FOREIGN KEY (idEsp) REFERENCES tbespetos(idEsp),
  ADD FOREIGN KEY (idBeb) REFERENCES tbbebidas(idBeb),
  ADD FOREIGN KEY (idSobr) REFERENCES tbsobremesas(idSobr);

