--
-- PostgreSQL database dump
--

set schema 'siga';

delete from tb_modelo_arquivo_x_cnab_linha;

delete from tb_cnab_linha_x_cnab_campo;

delete from tb_cnab_linha;

delete from tb_cnab_campo;

delete from tb_tipo_cnab_campo;

delete from tb_tipo_cnab_linha;

delete from tb_banco_x_modelo_arquivo;

delete from tb_modelo_arquivo;

delete from tb_tipo_arquivo;

INSERT INTO tb_tipo_arquivo VALUES (1, 'Boleto');
INSERT INTO tb_tipo_arquivo VALUES (2, 'Remessa');
INSERT INTO tb_tipo_arquivo VALUES (3, 'Retorno');


INSERT INTO tb_modelo_arquivo VALUES (1, 'Boleto da Caixa Economica', 'boleto_caixa_associativa.pdf', 1);
INSERT INTO tb_modelo_arquivo VALUES (2, 'Remessa da Caixa Economica', NULL, 2);
INSERT INTO tb_modelo_arquivo VALUES (3, 'Retorno da Caixa Economica', NULL, 3);

INSERT INTO tb_modelo_arquivo VALUES (4, 'Boleto do Bradesco', 'boleto_bradesco_associativa.pdf', 1);
INSERT INTO tb_modelo_arquivo VALUES (5, 'Remessa do Bradesco', NULL, 2);

INSERT INTO tb_modelo_arquivo VALUES (6, 'Retorno da Febraban', NULL, 3);

INSERT INTO tb_modelo_arquivo VALUES (7, 'Boleto do Banco do Brasil', 'boleto_bb_associativa.pdf', 1);
INSERT INTO tb_modelo_arquivo VALUES (8, 'Remessa do Banco do Brasil', NULL, 2);

INSERT INTO tb_modelo_arquivo VALUES (9, 'Boleto do Sicoob', 'boleto_sicoob_associativa.pdf', 1);
INSERT INTO tb_modelo_arquivo VALUES (10, 'Remessa do Sicoob', NULL, 2);

INSERT INTO tb_modelo_arquivo VALUES (11, 'Boleto do Itau', 'boleto_itau_associativa.pdf', 1);
INSERT INTO tb_modelo_arquivo VALUES (12, 'Remessa do Itau', NULL, 2);

INSERT INTO tb_modelo_arquivo VALUES (13, 'Boleto do Sicredi', 'boleto_sicredi_associativa.pdf', 1);
INSERT INTO tb_modelo_arquivo VALUES (14, 'Remessa do Sicredi', NULL, 2);

INSERT INTO tb_modelo_arquivo VALUES (15, 'Boleto do Banrisul', 'boleto_banrisul_associativa.pdf', 1);
INSERT INTO tb_modelo_arquivo VALUES (16, 'Remessa do Banrisul', NULL, 2);

--
-- TOC entry 2184 (class 0 OID 36835)
-- Dependencies: 183
-- Data for Name: tb_banco_x_modelo_arquivo; Type: TABLE DATA; Schema: sigah; Owner: postgres
--

INSERT INTO tb_banco_x_modelo_arquivo VALUES (1, 104, 1);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (2, 104, 2);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (3, 104, 3);

INSERT INTO tb_banco_x_modelo_arquivo VALUES (4, 237, 4);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (5, 237, 5);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (6, 237, 6);

INSERT INTO tb_banco_x_modelo_arquivo VALUES (7, 1, 7);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (8, 1, 8);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (9, 1, 6);

INSERT INTO tb_banco_x_modelo_arquivo VALUES (10, 756, 9);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (11, 756, 10);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (12, 756, 6);

INSERT INTO tb_banco_x_modelo_arquivo VALUES (13, 341, 11);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (14, 341, 12);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (15, 341, 6);


INSERT INTO tb_banco_x_modelo_arquivo VALUES (16, 748, 13);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (17, 748, 14);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (18, 748, 6);

INSERT INTO tb_banco_x_modelo_arquivo VALUES (19, 41, 15);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (20, 41, 16);
INSERT INTO tb_banco_x_modelo_arquivo VALUES (21, 41, 6);

--
-- TOC entry 2198 (class 0 OID 36877)
-- Dependencies: 197
-- Data for Name: tb_tipo_cnab_linha; Type: TABLE DATA; Schema: sigah; Owner: postgres
--

INSERT INTO tb_tipo_cnab_linha VALUES (1, 'Header Arquivo');
INSERT INTO tb_tipo_cnab_linha VALUES (2, 'Trailer Arquivo');
INSERT INTO tb_tipo_cnab_linha VALUES (3, 'Header Lote');
INSERT INTO tb_tipo_cnab_linha VALUES (4, 'Trailer Lote');
INSERT INTO tb_tipo_cnab_linha VALUES (5, 'Segmento P');
INSERT INTO tb_tipo_cnab_linha VALUES (6, 'Segmento Q');
INSERT INTO tb_tipo_cnab_linha VALUES (7, 'Segmento T');
INSERT INTO tb_tipo_cnab_linha VALUES (8, 'Segmento U');
INSERT INTO tb_tipo_cnab_linha VALUES (9, 'Segmento W');
INSERT INTO tb_tipo_cnab_linha VALUES (10, 'Segmento R');
INSERT INTO tb_tipo_cnab_linha VALUES (11, 'Segmento Q Sindical');


--
-- TOC entry 2197 (class 0 OID 36874)
-- Dependencies: 196
-- Data for Name: tb_tipo_cnab_campo; Type: TABLE DATA; Schema: sigah; Owner: postgres
--

INSERT INTO tb_tipo_cnab_campo VALUES (1, 'Numérico');
INSERT INTO tb_tipo_cnab_campo VALUES (2, 'Alfa');

--
-- TOC entry 2215 (class 0 OID 0)
-- Dependencies: 184
-- Name: tb_banco_x_modelo_arquivo_id_banco_x_modelo_arquivo_seq; Type: SEQUENCE SET; Schema: sigah; Owner: postgres
--

--
-- TOC entry 2186 (class 0 OID 36840)
-- Dependencies: 185
-- Data for Name: tb_cnab_campo; Type: TABLE DATA; Schema: sigah; Owner: postgres
--

INSERT INTO tb_cnab_campo VALUES (4, 'Uso Exclusivo FEBRABAN / CNAB (1)', 'usoExclusivoFebraban1', 2);
INSERT INTO tb_cnab_campo VALUES (5, 'Tipo de Inscrição da Empresa', 'tipoInscricaoEmpresa', 2);
INSERT INTO tb_cnab_campo VALUES (9, 'Dígito Verificador da Agência', 'digitoVerificadorAgencia', 2);
INSERT INTO tb_cnab_campo VALUES (13, 'Nome da Empresa', 'nomeEmpresa', 2);
INSERT INTO tb_cnab_campo VALUES (14, 'Nome do Banco', 'nomeBanco', 2);
INSERT INTO tb_cnab_campo VALUES (15, 'Uso Exclusivo FEBRABAN / CNAB (2)', 'usoExclusivoFebraban2', 2);
INSERT INTO tb_cnab_campo VALUES (16, 'Código Remessa / Retorno', 'codigoRemessaRetorno', 2);
INSERT INTO tb_cnab_campo VALUES (17, 'Data de Geração do Arquivo', 'dataGeracaoArquivo', 2);
INSERT INTO tb_cnab_campo VALUES (18, 'Hora de Geração do Arquivo', 'horaGeracaoArquivo', 2);
INSERT INTO tb_cnab_campo VALUES (20, 'Número da Versão do Layout do Arquivo', 'versaoLayoutArquivo', 2);
INSERT INTO tb_cnab_campo VALUES (22, 'Para Uso Reservado do Banco', 'reservadoBanco', 2);
INSERT INTO tb_cnab_campo VALUES (23, 'Para Uso Reservado da Empresa', 'reservadoEmpresa', 2);
INSERT INTO tb_cnab_campo VALUES (24, 'Versão Aplicativo CAIXA', 'versaoAplicativoCaixa', 2);
INSERT INTO tb_cnab_campo VALUES (25, 'Uso Exclusivo FEBRABAN / CNAB (3)', 'usoExclusivoFebraban3', 2);
INSERT INTO tb_cnab_campo VALUES (29, 'Cód. Segmento do Registro Detalhe', 'codigoSegmentoRegistroDetalhe', 2);
INSERT INTO tb_cnab_campo VALUES (33, 'Nome do Sacado', 'nomeSacado', 2);
INSERT INTO tb_cnab_campo VALUES (34, 'Endereço do Sacado', 'enderecoSacado', 2);
INSERT INTO tb_cnab_campo VALUES (35, 'Bairro do Sacado', 'bairroSacado', 2);
INSERT INTO tb_cnab_campo VALUES (36, 'CEP do Sacado', 'cepSacado', 2);
INSERT INTO tb_cnab_campo VALUES (37, 'Sufixo do CEP do Sacado', 'sufixoCepSacado', 2);
INSERT INTO tb_cnab_campo VALUES (38, 'Cidade do Sacado', 'cidadeSacado', 2);
INSERT INTO tb_cnab_campo VALUES (39, 'Unidade da Federação do Sacado', 'ufSacado', 2);
INSERT INTO tb_cnab_campo VALUES (40, 'Número do Banco do Sacado', 'numeroBancoSacado', 1);
INSERT INTO tb_cnab_campo VALUES (41, 'Nome do Banco do Sacado', 'nomeBancoSacado', 2);
INSERT INTO tb_cnab_campo VALUES (42, 'Código do Sacado no Banco', 'codigoSacadoBanco', 2);
INSERT INTO tb_cnab_campo VALUES (43, 'Identificação Manutenção', 'identificacaoManutencao', 2);
INSERT INTO tb_cnab_campo VALUES (44, 'Valor do Título', 'valorTitulo', 1);
INSERT INTO tb_cnab_campo VALUES (45, 'Tipo de Operação', 'tipoOperacao', 2);
INSERT INTO tb_cnab_campo VALUES (46, 'Tipo de Serviço', 'tipoServico', 2);
INSERT INTO tb_cnab_campo VALUES (47, 'Número da Versão do Layout do Lote', 'numeroVersaoLayoutLote', 2);
INSERT INTO tb_cnab_campo VALUES (49, 'Mensagem 1', 'mensagem1', 2);
INSERT INTO tb_cnab_campo VALUES (50, 'Mensagem 2', 'mensagem2', 2);
INSERT INTO tb_cnab_campo VALUES (51, 'Data de Gravação Remessa/Retorno', 'dataGravacaoRemessaRetorno', 2);
INSERT INTO tb_cnab_campo VALUES (54, 'Quantidade de Títulos em Cobrança Simples', 'quantidadeTitulosCobrancaSimples', 1);
INSERT INTO tb_cnab_campo VALUES (55, 'Valor Total dos Títulos em Carteiras Simples', 'valorTotalTituloCarteirasSimples', 1);
INSERT INTO tb_cnab_campo VALUES (56, 'Quantidade de Títulos em Cobrança Caucionada', 'quantidadeTitulosCobrancaCaucionada', 1);
INSERT INTO tb_cnab_campo VALUES (57, 'Valor Total dos Títulos em Carteiras Caucionada', 'valorTotalTituloCarteirasCaucionada', 1);
INSERT INTO tb_cnab_campo VALUES (58, 'Quantidade de Títulos em Cobrança Descontada', 'quantidadeTitulosCobrancaDescontada', 1);
INSERT INTO tb_cnab_campo VALUES (59, 'Valor Total dos Títulos em Carteiras Descontada', 'valorTotalTituloCarteirasDescontada', 1);
INSERT INTO tb_cnab_campo VALUES (63, 'Forma de Cadastr. do Título no Banco', 'formaCadastroTituloBanco', 1);
INSERT INTO tb_cnab_campo VALUES (64, 'Tipo de Documento', 'tipoDocumento', 2);
INSERT INTO tb_cnab_campo VALUES (66, 'Identificação da Emissão do Bloqueto', 'identificacaoEmissaoBloqueto', 1);
INSERT INTO tb_cnab_campo VALUES (67, 'Identificação da Entrega do Bloqueto', 'identificacaoEntregaBloqueto', 2);
INSERT INTO tb_cnab_campo VALUES (68, 'Número do Documento de Cobrança ', 'numeroDocumentoCobranca', 2);
INSERT INTO tb_cnab_campo VALUES (69, 'Data de Vencimento do Título', 'dataVencimentoTitulo', 1);
INSERT INTO tb_cnab_campo VALUES (70, 'Valor Nominal do Título', 'valorNominalTitulo', 1);
INSERT INTO tb_cnab_campo VALUES (72, 'Agência Encarregada da Cobrança', 'agenciaCobranca', 1);
INSERT INTO tb_cnab_campo VALUES (75, 'Espécie do Título', 'especieTitulo', 1);
INSERT INTO tb_cnab_campo VALUES (77, 'Data da Emissão do Título ', 'dataEmissaoTitulo', 1);
INSERT INTO tb_cnab_campo VALUES (78, 'Código do Juros de Mora', 'codigoJurosMora', 1);
INSERT INTO tb_cnab_campo VALUES (79, 'Data do Juros de Mora ', 'dataJurosMora', 1);
INSERT INTO tb_cnab_campo VALUES (80, 'Juros de Mora por Dia/Taxa ', 'jurosMoraDiaTaxa', 1);
INSERT INTO tb_cnab_campo VALUES (81, 'Código do Desconto 1', 'codigoDesconto1', 1);
INSERT INTO tb_cnab_campo VALUES (82, 'Data do Desconto 1', 'dataDesconto1', 1);
INSERT INTO tb_cnab_campo VALUES (83, 'Valor/Percentual a ser Concedido ', 'valorDescontoConcedido', 1);
INSERT INTO tb_cnab_campo VALUES (84, 'Valor do IOF a ser Recolhido', 'valorIOFRecolhido', 1);
INSERT INTO tb_cnab_campo VALUES (85, 'Valor do Abatimento', 'valorAbatimento', 1);
INSERT INTO tb_cnab_campo VALUES (86, 'Identificação do Título na Empresa', 'identificacaoTituloEmpresa', 2);
INSERT INTO tb_cnab_campo VALUES (87, 'Código para Protesto', 'codigoProtesto', 1);
INSERT INTO tb_cnab_campo VALUES (88, 'Número de Dias para Protesto', 'numeroDiasProtesto', 1);
INSERT INTO tb_cnab_campo VALUES (89, 'Código para Baixa/Devolução', 'codigoBaixa', 1);
INSERT INTO tb_cnab_campo VALUES (8, 'Agência Mantenedora da Conta', 'agenciaMantenedoraConta', 1);
INSERT INTO tb_cnab_campo VALUES (30, 'Código de Movimento Remessa', 'codigoMovimentoRemessa', 1);
INSERT INTO tb_cnab_campo VALUES (10, 'Código do Convênio no Banco Caixa', 'numeroContaCorrente', 1);
INSERT INTO tb_cnab_campo VALUES (7, 'Uso Exclusivo CAIXA (1)', 'usoExclusivoCaixa1', 1);
INSERT INTO tb_cnab_campo VALUES (60, 'Modalidade da Carteira', 'modalidadeCarteira', 1);
INSERT INTO tb_cnab_campo VALUES (1, 'Código do Banco na Compensação', 'codigoBanco', 1);
INSERT INTO tb_cnab_campo VALUES (2, 'Lote de Serviço', 'loteServico', 1);
INSERT INTO tb_cnab_campo VALUES (3, 'Tipo de Registro', 'tipoRegistro', 1);
INSERT INTO tb_cnab_campo VALUES (76, 'Identific. de Título Aceito/Não Aceito ', 'aceite', 2);
INSERT INTO tb_cnab_campo VALUES (12, 'Uso Exclusivo CAIXA (3)', 'usoExclusivoCaixa3', 1);
INSERT INTO tb_cnab_campo VALUES (31, 'Tipo de Inscrição do Sacado', 'tipoInscricaoSacado', 1);
INSERT INTO tb_cnab_campo VALUES (32, 'Número de Inscrição do Sacado', 'numeroInscricaoSacado', 1);
INSERT INTO tb_cnab_campo VALUES (90, 'Número de Dias para Baixa/Devolução', 'numeroDiasBaixa', 1);
INSERT INTO tb_cnab_campo VALUES (91, 'Código da Moeda', 'codigoMoeda', 1);
INSERT INTO tb_cnab_campo VALUES (92, 'Tipo de Inscrição Sac./Aval', 'tipoInscricaoSacAval', 1);
INSERT INTO tb_cnab_campo VALUES (93, 'Número de Inscrição Sacador', 'numeroInscricaoSacador', 1);
INSERT INTO tb_cnab_campo VALUES (26, 'Quantidade de Lotes do Arquivo', 'quantidadeLotesArquivo', 1);
INSERT INTO tb_cnab_campo VALUES (48, 'Código do Modelo Personalizado ', 'codigoModeloPersonalizado', 1);
INSERT INTO tb_cnab_campo VALUES (52, 'Data do Crédito', 'dataCredito', 1);
INSERT INTO tb_cnab_campo VALUES (19, 'Número Sequencial do Arquivo', 'numeroSequencialArquivo', 1);
INSERT INTO tb_cnab_campo VALUES (21, 'Densidade de Gravação do Arquivo', 'densidadeGravacaoArquivo', 1);
INSERT INTO tb_cnab_campo VALUES (11, 'Uso Exclusivo CAIXA (2)', 'usoExclusivoCaixa2', 2);
INSERT INTO tb_cnab_campo VALUES (94, 'Nome do Sacador/Avalista', 'nomeSacador', 2);
INSERT INTO tb_cnab_campo VALUES (96, 'Nosso Nº no Banco Correspondente', 'nossoNumeroBancoCorresp', 2);
INSERT INTO tb_cnab_campo VALUES (6, 'Número de Inscrição da Empresa', 'cpfCnpj', 1);
INSERT INTO tb_cnab_campo VALUES (62, 'Código da Carteira', 'codigoCarteira', 1);
INSERT INTO tb_cnab_campo VALUES (28, 'No Sequencial do Registro no Lote', 'numeroSequencialRegistroLote', 1);
INSERT INTO tb_cnab_campo VALUES (61, 'Identificação do Título no Banco', 'nossoNumero', 1);
INSERT INTO tb_cnab_campo VALUES (95, 'Cód. Bco. Corresp. na Compensação ', 'codigoBancoCorrespCompensacao', 1);
INSERT INTO tb_cnab_campo VALUES (98, 'Dígito Verificador da Agência Encarregada da Cobrança', 'digitoVerificadorAgenciaEncarregada', 1);
INSERT INTO tb_cnab_campo VALUES (53, 'Quantidade de Registros no Lote', 'quantidadeRegistrosLote', 1);
INSERT INTO tb_cnab_campo VALUES (27, 'Quantidade de Registros do Arquivo', 'quantidadeRegistrosArquivo', 1);
INSERT INTO tb_cnab_campo VALUES (97, 'Número Remessa/Retorno', 'numeroSequencialRegistroLote', 1);
INSERT INTO tb_cnab_campo VALUES (99, 'Código de Movimento Retorno', 'codigoMovimentoRetorno', 1);
INSERT INTO tb_cnab_campo VALUES (100, 'Uso Exclusivo CAIXA (4)', 'usoExclusivoCaixa4', 1);
INSERT INTO tb_cnab_campo VALUES (101, 'Uso Exclusivo CAIXA (5)', 'usoExclusivoCaixa5', 1);
INSERT INTO tb_cnab_campo VALUES (102, 'Número do Banco de Sacados ', 'numeroBancoSacados', 1);
INSERT INTO tb_cnab_campo VALUES (103, 'Modalidade Nosso Número', 'modalidadeNossoNumero', 1);
INSERT INTO tb_cnab_campo VALUES (104, 'Uso Exclusivo CAIXA (6)', 'usoExclusivoCaixa6', 1);
INSERT INTO tb_cnab_campo VALUES (105, 'Código do Banco Cobrador/Recebedor', 'codigoBancoCobrador', 1);
INSERT INTO tb_cnab_campo VALUES (106, 'Código da Agência Cobr/Receb', 'codigoAgenciaCobradora', 1);
INSERT INTO tb_cnab_campo VALUES (107, 'Dígito Verificador da Agência Cobr/Rec', 'digitoVerificadorAgenciaCobradora', 1);
INSERT INTO tb_cnab_campo VALUES (108, 'Valor da Tarifa / Custas', 'valorTarifa', 1);
INSERT INTO tb_cnab_campo VALUES (109, 'Motivo da Ocorrência', 'motivoOcorrencia', 2);
INSERT INTO tb_cnab_campo VALUES (110, 'Juros / Multa / Encargos', 'jurosMultaEncargos', 1);
INSERT INTO tb_cnab_campo VALUES (111, 'Valor do Desconto Concedido', 'valorDescontoConcedido', 1);
INSERT INTO tb_cnab_campo VALUES (112, 'Valor do Abat. Concedido/Cancel.', 'valorAbatimentoConcedido', 1);
INSERT INTO tb_cnab_campo VALUES (113, 'Valor do IOF Recolhido', 'valorIOFRecolhido', 1);
INSERT INTO tb_cnab_campo VALUES (114, 'Valor Pago pelo Sacado', 'valorPagoSacado', 1);
INSERT INTO tb_cnab_campo VALUES (115, 'Valor Líquido a ser Creditado', 'valorLiquidoCreditado', 1);
INSERT INTO tb_cnab_campo VALUES (116, 'Valor de Outras Despesas', 'valorOutrasDespesas', 1);
INSERT INTO tb_cnab_campo VALUES (117, 'Valor de Outros Créditos', 'valorOutrosCreditos', 1);
INSERT INTO tb_cnab_campo VALUES (118, 'Data da Ocorrência', 'dataOcorrencia', 1);
INSERT INTO tb_cnab_campo VALUES (119, 'Data da Efetivação do Crédito', 'dataEfetivacaoCredito', 1);
INSERT INTO tb_cnab_campo VALUES (120, 'Data do Débito da Tarifa', 'dataDebitoTarifa', 1);

INSERT INTO tb_cnab_campo VALUES (122, 'Número da Conta Corrente', 'numeroContaCorrente', 1);
INSERT INTO tb_cnab_campo VALUES (123, 'Dígito Verificador da Conta', 'digitoVerificadorConta', 2);
INSERT INTO tb_cnab_campo VALUES (124, 'Dígito Verificador da Ag/Conta', 'digitoVerificadorAgConta', 2);
INSERT INTO tb_cnab_campo VALUES (125, 'Qtde de Contas p/ Conc. (Lotes)', 'qtdeContasConc', 1);
INSERT INTO tb_cnab_campo VALUES (126, 'Identificação do Título', 'identificacaoTitulo', 2);
-- INSERT INTO tb_cnab_campo VALUES (126, 'Identificação do Produto', 'identificacaoProduto', 1);
-- INSERT INTO tb_cnab_campo VALUES (127, 'Uso Exclusivo Bradesco (1)', 'usoExclusivoBradesco1', 1);
INSERT INTO tb_cnab_campo VALUES (128, 'Nosso Número', 'nossoNumero', 1);
-- INSERT INTO tb_cnab_campo VALUES (129, 'Digito do nosso Número', 'digitoNossoNumero', 2);
INSERT INTO tb_cnab_campo VALUES (132, 'Nº do Contrato da Operação de Créd.', 'numeroContratoCred', 1);
INSERT INTO tb_cnab_campo VALUES (133, 'Identificação para Rejeições, Tarifas, Custas, Liquidação e Baixas', 'identRejeicoesTarifasCustas', 2);
INSERT INTO tb_cnab_campo VALUES (134, 'Código da Ocorrência', 'codigoOcorrencia', 2);
INSERT INTO tb_cnab_campo VALUES (135, 'Complem. da Ocorrência', 'complemOcorr?ncia', 2);

INSERT INTO tb_cnab_campo VALUES (136, 'Quantidade de Títulos em Cobrança Vinculada', 'quantidadeTitulosVinculada', 1);
INSERT INTO tb_cnab_campo VALUES (137, 'Valor Total dos Títulos em Carteiras Vinculada', 'valorTitulosVinculada', 1);
INSERT INTO tb_cnab_campo VALUES (138, 'Número do Aviso de Lançamento', 'numeroAvisoLancamento', 1);

INSERT INTO tb_cnab_campo VALUES (139, 'Código Convênio Banco', 'codigoConvenioBancoRemessa', 2);

INSERT INTO tb_cnab_campo VALUES (140, 'Posição Relativa no Arquivo', 'posicaoRelativaArquivo', 1);
INSERT INTO tb_cnab_campo VALUES (141, 'Campos e Erros', 'camposErros', 2);

INSERT INTO tb_cnab_campo VALUES (142, 'Código do Desconto 2', 'codigoDesconto2', 1);
INSERT INTO tb_cnab_campo VALUES (143, 'Data do Desconto 2', 'dataDesconto2', 1);
INSERT INTO tb_cnab_campo VALUES (144, 'Valor/Percentual a ser Concedido 2', 'valorPercentualConcedido2', 1);
INSERT INTO tb_cnab_campo VALUES (145, 'Código do Desconto 3', 'codigoDesconto3', 1);
INSERT INTO tb_cnab_campo VALUES (146, 'Data do Desconto 3', 'dataDesconto3', 1);
INSERT INTO tb_cnab_campo VALUES (147, 'Valor/Percentual a Ser Concedido 3', 'valorPercentualConcedido3', 1);
INSERT INTO tb_cnab_campo VALUES (148, 'Código da Multa', 'codigoMulta', 1);
INSERT INTO tb_cnab_campo VALUES (149, 'Data da Multa', 'dataJurosMora', 1);
INSERT INTO tb_cnab_campo VALUES (150, 'Valor/Percentual a Ser Aplicado', 'valorPercentualAplicado', 1);
INSERT INTO tb_cnab_campo VALUES (151, 'Informação ao Pagador', 'informacaoPagador', 2);
INSERT INTO tb_cnab_campo VALUES (152, 'Mensagem 3', 'mensagem3', 2);
INSERT INTO tb_cnab_campo VALUES (153, 'Mensagem 4', 'mensagem4', 2);
INSERT INTO tb_cnab_campo VALUES (154, 'Cód. Ocor. do Pagador', 'codigoOcorrenciaPagador', 1);
INSERT INTO tb_cnab_campo VALUES (155, 'Cód. do Banco na Conta do Débito', 'códigoBancoContaDebito', 1);
INSERT INTO tb_cnab_campo VALUES (156, 'Código da Agência do Débito', 'códigoAgenciaDebito', 1);
INSERT INTO tb_cnab_campo VALUES (157, 'Dígito Verificador da Agência do Débito', 'dvAgenciaDebito', 1);
INSERT INTO tb_cnab_campo VALUES (158, 'Conta Corrente para Débito', 'contaCorrenteDebito', 1);
INSERT INTO tb_cnab_campo VALUES (159, 'Dígito Verificador da Conta do Débito', 'dvContaCorrenteDebito', 2);
INSERT INTO tb_cnab_campo VALUES (160, 'Aviso para Débito Automático', 'avisoDebitoAutomatico', 1);
INSERT INTO tb_cnab_campo VALUES (161, 'E-mail Sacado', 'emailSacado', 2);
INSERT INTO tb_cnab_campo VALUES (163, 'Zeros', 'zeros', 1);
INSERT INTO tb_cnab_campo VALUES (162, 'Brancos', 'brancos', 2);
INSERT INTO tb_cnab_campo VALUES (164, 'Capital Social da Empresa', 'capitalSocialEmpresa', 1);
INSERT INTO tb_cnab_campo VALUES (165, 'Capital Social do Estabelecimento', 'capitalSocialEstabelecimento', 1);
INSERT INTO tb_cnab_campo VALUES (166, 'Número de Empregados Contribuintes', 'numeroEmpregadosContribuintes', 1);
INSERT INTO tb_cnab_campo VALUES (167, 'Total da Remuneração – Contribuintes ', 'totalRemuneracaoContribuintes', 1);
INSERT INTO tb_cnab_campo VALUES (168, 'Total de Empregados do Estabelecimento ', 'totalEmpregadosEstabelecimento', 1);
INSERT INTO tb_cnab_campo VALUES (169, 'Código CNAE Contribuinte/Pagador', 'codigoCNAE', 1);
INSERT INTO tb_cnab_campo VALUES (170, 'Tipo de Entidade Sindical', 'tipoEntidadeSindical ', 1);
INSERT INTO tb_cnab_campo VALUES (171, 'Código Sindical da Entidade Sindical', 'codigoSindicalEntidadeSindical ', 1);

INSERT INTO tb_cnab_campo VALUES (172, 'Número Conta Corrente Empresa', 'numeroContaCorrenteEmpresa', 2);
INSERT INTO tb_cnab_campo VALUES (173, 'dv Conta Corrente Empresa', 'dvContaCorrenteEmpresa', 2);
INSERT INTO tb_cnab_campo VALUES (174, 'Codigo Convenio Banco Empresa', 'codigoConvenioBancoEmpresa', 2);
INSERT INTO tb_cnab_campo VALUES (175, 'Número Conta Corrente Lote', 'numeroContaCorrenteLote', 2);
INSERT INTO tb_cnab_campo VALUES (176, 'dv Conta Lote', 'dvContaLote', 2);
INSERT INTO tb_cnab_campo VALUES (177, 'Número Conta Corrente', 'numeroContaCorrente', 2);
INSERT INTO tb_cnab_campo VALUES (178, 'dv Conta', 'dvConta', 2);
INSERT INTO tb_cnab_campo VALUES (179, 'dv Agencia Conta', 'dvAgenciaConta', 2);
INSERT INTO tb_cnab_campo VALUES (180, 'Identificacao Titulo', 'identificacaoTitulo', 2);
INSERT INTO tb_cnab_campo VALUES (181, 'Número Documento Cobranca Sindical', 'numeroDocumentoCobrancaSindical', 2);

--
-- TOC entry 2216 (class 0 OID 0)
-- Dependencies: 186
-- Name: tb_cnab_campo_id_cnab_campo_seq; Type: SEQUENCE SET; Schema: sigah; Owner: postgres
--

--
-- TOC entry 2188 (class 0 OID 36845)
-- Dependencies: 187
-- Data for Name: tb_cnab_linha; Type: TABLE DATA; Schema: sigah; Owner: postgres
--

INSERT INTO tb_cnab_linha VALUES (1, 'Header Arquivo CAIXA', 1);
INSERT INTO tb_cnab_linha VALUES (2, 'Trailer Arquivo CAIXA', 2);
INSERT INTO tb_cnab_linha VALUES (3, 'Header Lote CAIXA', 3);
INSERT INTO tb_cnab_linha VALUES (4, 'Trailer Lote CAIXA', 4);
INSERT INTO tb_cnab_linha VALUES (6, 'Segmento P CAIXA', 5);
INSERT INTO tb_cnab_linha VALUES (5, 'Segmento Q FEBRABAN', 6);
INSERT INTO tb_cnab_linha VALUES (7, 'Segmento T CAIXA', 7);
INSERT INTO tb_cnab_linha VALUES (8, 'Segmento U FEBRABAN', 8);

INSERT INTO tb_cnab_linha VALUES (9, 'Header de Arquivo FEBRABAN', 1);
INSERT INTO tb_cnab_linha VALUES (10, 'Trailer de Arquivo FEBRABAN', 2);
INSERT INTO tb_cnab_linha VALUES (11, 'Segmento P FEBRABAN', 5);
INSERT INTO tb_cnab_linha VALUES (12, 'Segmento T FEBRABAN', 7);
INSERT INTO tb_cnab_linha VALUES (13, 'Header Lote FEBRABAN', 3);
INSERT INTO tb_cnab_linha VALUES (14, 'Trailer Lote BRADESCO', 4);

INSERT INTO tb_cnab_linha VALUES (15, 'Segmento W CAIXA', 9);
INSERT INTO tb_cnab_linha VALUES (16, 'Segmento R FEBRABAN', 10);
INSERT INTO tb_cnab_linha VALUES (17, 'Segmento R CAIXA', 10);

INSERT INTO tb_cnab_linha VALUES (18, 'Trailer Lote Banco do Brasil', 4);

INSERT INTO tb_cnab_linha VALUES (19, 'Header Arquivo ITAU', 1);
INSERT INTO tb_cnab_linha VALUES (20, 'Header Lote ITAU', 3);
INSERT INTO tb_cnab_linha VALUES (21, 'Segmento Q ITAU', 6);


INSERT INTO tb_cnab_linha VALUES (22, 'Segmento Q Sindical CAIXA', 11);

--
-- TOC entry 2217 (class 0 OID 0)
-- Dependencies: 188
-- Name: tb_cnab_linha_id_cnab_linha_seq; Type: SEQUENCE SET; Schema: sigah; Owner: postgres
--


--
-- TOC entry 2190 (class 0 OID 36850)
-- Dependencies: 189
-- Data for Name: tb_cnab_linha_x_cnab_campo; Type: TABLE DATA; Schema: sigah; Owner: postgres
--

-- Header Arquivo CAIXA
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (1, 9, 17, NULL, 1, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (2, 18, 18, NULL, 1, 5);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (3, 19, 32, NULL, 1, 6);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (4, 33, 52, NULL, 1, 7);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (5, 53, 57, NULL, 1, 8);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (6, 58, 58, NULL, 1, 9);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (7, 59, 64, NULL, 1, 10);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (8, 72, 72, NULL, 1, 12);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (9, 73, 102, NULL, 1, 13);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (10, 103, 132, NULL, 1, 14);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (11, 133, 142, NULL, 1, 15);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (12, 143, 143, NULL, 1, 16);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (13, 144, 151, NULL, 1, 17);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (14, 152, 157, NULL, 1, 18);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (15, 158, 163, NULL, 1, 19);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (16, 172, 191, NULL, 1, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (17, 192, 211, 'REMESSA-PRODUCAO', 1, 23);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (18, 212, 215, NULL, 1, 24);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (19, 216, 240, NULL, 1, 25);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (118, 1, 3, '104', 1, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (122, 4, 7, '0000', 1, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (126, 8, 8, '0', 1, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (129, 164, 166, '050', 1, 20);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (131, 65, 71, '0000000', 1, 11);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (135, 167, 171, NULL, 1, 21);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (505, 59, 70, NULL, 1, 172);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (506, 71, 71, NULL, 1, 173);

-- TRAILER ARQUIVO CAIXA
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (115, 1, 3, '104', 2, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (123, 4, 7, '9999', 2, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (133, 8, 8, '9', 2, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (20, 9, 17, NULL, 2, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (21, 18, 23, NULL, 2, 26);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (22, 24, 29, NULL, 2, 27);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (23, 30, 35, NULL, 2, 15);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (24, 36, 240, NULL, 2, 25);

-- HEADER LOTE CAIXA
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (117, 1, 3, '104', 3, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (119, 4, 7, '0001', 3, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (127, 8, 8, '1', 3, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (25, 9, 9, NULL, 3, 45);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (26, 10, 11, NULL, 3, 46);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (130, 12, 13, '00', 3, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (132, 14, 16, '030', 3, 47);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (27, 17, 17, NULL, 3, 15);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (28, 18, 18, NULL, 3, 5);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (29, 19, 33, NULL, 3, 6);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (30, 34, 39, NULL, 3, 10);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (124, 40, 53, '0', 3, 7);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (31, 54, 58, NULL, 3, 8);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (32, 59, 59, NULL, 3, 9);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (33, 60, 65, NULL, 3, 10);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (34, 66, 72, NULL, 3, 48);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (125, 73, 73, '0', 3, 11);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (35, 74, 103, NULL, 3, 13);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (36, 104, 143, NULL, 3, 49);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (37, 144, 183, NULL, 3, 50);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (38, 208, 240, NULL, 3, 25);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (107, 184, 191, NULL, 3, 97);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (108, 192, 199, NULL, 3, 51);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (109, 200, 207, NULL, 3, 52);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (507, 34, 53, NULL, 3, 174);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (508, 60, 71, NULL, 3, 175);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (509, 72, 72, NULL, 3, 176);

-- TRAILER LOTE CAIXA
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (116, 1, 3, '104', 4, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (39, 4, 7, '0001', 4, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (128, 8, 8, '5', 4, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (40, 9, 17, NULL, 4, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (41, 18, 23, NULL, 4, 53);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (42, 24, 29, NULL, 4, 54);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (43, 30, 46, NULL, 4, 55);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (44, 47, 52, NULL, 4, 56);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (45, 53, 69, NULL, 4, 57);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (46, 70, 75, NULL, 4, 58);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (47, 76, 92, NULL, 4, 59);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (48, 93, 123, NULL, 4, 15);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (49, 124, 240, NULL, 4, 25);

-- SEGMENTO Q FEBRABAN
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (112, 1, 3, NULL, 5, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (50, 4, 7, '0001', 5, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (110, 8, 8, '3', 5, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (51, 9, 13, NULL, 5, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (113, 14, 14, 'Q', 5, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (52, 15, 15, NULL, 5, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (53, 16, 17, NULL, 5, 30);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (54, 18, 18, NULL, 5, 31);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (55, 19, 33, NULL, 5, 32);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (56, 34, 73, NULL, 5, 33);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (57, 74, 113, NULL, 5, 34);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (58, 114, 128, NULL, 5, 35);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (59, 129, 133, NULL, 5, 36);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (60, 134, 136, NULL, 5, 37);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (61, 137, 151, NULL, 5, 38);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (62, 152, 153, NULL, 5, 39);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (63, 154, 154, NULL, 5, 92);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (64, 155, 169, NULL, 5, 93);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (65, 170, 209, NULL, 5, 94);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (66, 210, 212, NULL, 5, 95);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (67, 213, 232, NULL, 5, 96);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (68, 233, 240, NULL, 5, 15);

-- SEGMENTO P CAIXA
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (114, 1, 3, '104', 6, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (69, 4, 7, '0001', 6, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (111, 8, 8, '3', 6, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (70, 9, 13, NULL, 6, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (120, 14, 14, 'P', 6, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (71, 15, 15, NULL, 6, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (72, 16, 17, NULL, 6, 30);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (73, 18, 22, NULL, 6, 8);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (74, 23, 23, NULL, 6, 9);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (75, 24, 29, NULL, 6, 10);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (76, 30, 40, NULL, 6, 7);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (77, 41, 42, '14', 6, 60);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (78, 43, 57, NULL, 6, 61);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (79, 58, 58, NULL, 6, 62);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (80, 59, 59, NULL, 6, 63);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (121, 60, 60, '2', 6, 64);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (81, 61, 61, NULL, 6, 66);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (82, 62, 62, '0', 6, 67);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (83, 63, 73, NULL, 6, 68);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (84, 74, 77, NULL, 6, 11);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (85, 78, 85, NULL, 6, 69);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (86, 86, 100, NULL, 6, 70);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (87, 101, 105, NULL, 6, 72);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (134, 106, 106, NULL, 6, 98);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (88, 107, 108, NULL, 6, 75);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (89, 109, 109, NULL, 6, 76);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (90, 110, 117, NULL, 6, 77);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (91, 118, 118, NULL, 6, 78);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (92, 119, 126, NULL, 6, 79);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (93, 127, 141, NULL, 6, 80);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (94, 142, 142, NULL, 6, 81);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (95, 143, 150, NULL, 6, 82);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (96, 151, 165, NULL, 6, 83);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (97, 166, 180, NULL, 6, 84);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (98, 181, 195, NULL, 6, 85);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (99, 196, 220, NULL, 6, 86);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (100, 221, 221, NULL, 6, 87);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (101, 222, 223, NULL, 6, 88);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (102, 224, 224, NULL, 6, 89);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (103, 225, 227, NULL, 6, 90);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (106, 228, 229, '9', 6, 91);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (104, 230, 239, NULL, 6, 12);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (105, 240, 240, NULL, 6, 15);

-- SEGMENTO T CAIXA
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (136, 1, 3, NULL, 7, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (137, 4, 7, '0001', 7, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (138, 8, 8, NULL, 7, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (139, 9, 13, NULL, 7, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (140, 14, 14, NULL, 7, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (141, 15, 15, NULL, 7, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (142, 16, 17, NULL, 7, 99);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (143, 18, 22, NULL, 7, 7);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (144, 23, 23, NULL, 7, 11);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (145, 24, 29, NULL, 7, 10);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (146, 30, 32, NULL, 7, 12);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (147, 33, 35, NULL, 7, 102);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (148, 36, 39, NULL, 7, 100);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (149, 40, 41, NULL, 7, 103);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (150, 42, 56, NULL, 7, 61);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (151, 57, 57, NULL, 7, 101);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (152, 58, 58, NULL, 7, 62);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (153, 59, 69, NULL, 7, 68);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (154, 70, 73, NULL, 7, 104);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (155, 74, 81, NULL, 7, 69);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (156, 82, 96, NULL, 7, 70);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (157, 97, 99, NULL, 7, 105);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (158, 100, 104, NULL, 7, 106);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (159, 105, 105, NULL, 7, 107);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (160, 106, 130, NULL, 7, 86);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (161, 131, 132, NULL, 7, 91);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (162, 133, 133, NULL, 7, 31);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (163, 134, 148, NULL, 7, 32);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (164, 149, 188, NULL, 7, 33);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (165, 189, 198, NULL, 7, 132);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (166, 199, 213, NULL, 7, 108);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (167, 214, 223, NULL, 7, 109);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (168, 224, 240, NULL, 7, 25);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (510, 24, 35, NULL, 7, 177);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (511, 36, 36, NULL, 7, 178);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (512, 37, 37, NULL, 7, 179);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (513, 38, 57, NULL, 7, 180);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (514, 59, 73, NULL, 7, 181);

-- SEGMENTO U FEBRABAN
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (169, 1, 3, NULL, 8, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (170, 4, 7, '0001', 8, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (171, 8, 8, NULL, 8, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (172, 9, 13, NULL, 8, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (173, 14, 14, NULL, 8, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (174, 15, 15, NULL, 8, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (175, 16, 17, NULL, 8, 99);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (176, 18, 32, NULL, 8, 110);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (177, 33, 47, NULL, 8, 111);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (178, 48, 62, NULL, 8, 112);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (179, 63, 77, NULL, 8, 113);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (180, 78, 92, NULL, 8, 114);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (181, 93, 107, NULL, 8, 115);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (182, 108, 122, NULL, 8, 116);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (183, 123, 137, NULL, 8, 117);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (184, 138, 145, NULL, 8, 118);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (185, 146, 153, NULL, 8, 119);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (186, 154, 157, NULL, 8, 134);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (187, 158, 165, NULL, 8, 120);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (188, 166, 180, NULL, 8, 42);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (189, 181, 210, NULL, 8, 11);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (190, 211, 213, NULL, 8, 95);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (191, 214, 233, NULL, 8, 135);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (192, 234, 240, NULL, 8, 15);

-- HEADER DE ARQUIVO FEBRABAN
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (193, 1, 3, NULL, 9, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (194, 9, 17, NULL, 9, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (195, 18, 18, NULL, 9, 5);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (196, 19, 32, NULL, 9, 6);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (197, 33, 52, NULL, 9, 139);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (198, 53, 57, NULL, 9, 8);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (199, 58, 58, NULL, 9, 9);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (200, 59, 70, NULL, 9, 122);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (201, 71, 71, NULL, 9, 123);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (202, 72, 72, NULL, 9, 124);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (203, 73, 102, NULL, 9, 13);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (204, 103, 132, NULL, 9, 14);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (205, 133, 142, NULL, 9, 15);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (206, 143, 143, NULL, 9, 16);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (207, 144, 151, NULL, 9, 17);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (208, 152, 157, NULL, 9, 18);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (209, 158, 163, NULL, 9, 19);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (210, 167, 171, NULL, 9, 21);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (211, 172, 191, NULL, 9, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (212, 192, 211, NULL, 9, 23);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (213, 212, 240, NULL, 9, 25);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (214, 164, 166, '084', 9, 20);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (215, 4, 7, '0000', 9, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (216, 8, 8, '0', 9, 3);

-- TRAILER DE ARQUIVO FEBRABAN
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (217, 1, 3, NULL, 10, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (218, 9, 17, NULL, 10, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (219, 18, 23, NULL, 10, 26);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (220, 24, 29, NULL, 10, 27);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (221, 30, 35, NULL, 10, 125);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (222, 36, 240, NULL, 10, 15);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (223, 4, 7, '9999', 10, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (224, 8, 8, '9', 10, 3);


-- SEGMENTO P FEBRABAN
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (225, 1, 3, NULL, 11, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (226, 4, 7, NULL, 11, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (227, 8, 8, '3', 11, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (228, 9, 13, NULL, 11, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (229, 14, 14, 'P', 11, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (230, 15, 15, NULL, 11, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (231, 16, 17, NULL, 11, 30);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (232, 18, 22, NULL, 11, 8);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (233, 23, 23, NULL, 11, 9);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (234, 24, 35, NULL, 11, 122);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (235, 36, 36, NULL, 11, 123);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (236, 37, 37, NULL, 11, 124);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (237, 38, 57, NULL, 11, 126);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (241, 58, 58, NULL, 11, 62);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (242, 59, 59, NULL, 11, 63);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (243, 60, 60, '1', 11, 64);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (244, 61, 61, NULL, 11, 66);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (245, 62, 62, '2', 11, 67);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (246, 63, 77, NULL, 11, 68);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (247, 78, 85, NULL, 11, 69);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (248, 86, 100, NULL, 11, 70);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (249, 101, 105, NULL, 11, 72);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (250, 106, 106, NULL, 11, 98);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (251, 107, 108, NULL, 11, 75);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (252, 109, 109, NULL, 11, 76);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (253, 110, 117, NULL, 11, 77);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (254, 118, 118, NULL, 11, 78);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (255, 119, 126, NULL, 11, 79);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (256, 127, 141, NULL, 11, 80);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (257, 142, 142, NULL, 11, 81);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (258, 143, 150, NULL, 11, 82);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (259, 151, 165, NULL, 11, 83);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (260, 166, 180, NULL, 11, 84);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (261, 181, 195, NULL, 11, 85);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (262, 196, 220, NULL, 11, 86);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (263, 221, 221, NULL, 11, 87);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (264, 222, 223, NULL, 11, 88);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (265, 224, 224, NULL, 11, 89);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (266, 225, 227, NULL, 11, 90);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (267, 228, 229, '09', 11, 91);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (268, 230, 239, NULL, 11, 132);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (269, 240, 240, NULL, 11, 15);

-- SEGMENTO T FEBRABAN
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (270, 1, 3, NULL, 12, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (271, 4, 7, NULL, 12, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (272, 8, 8, NULL, 12, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (273, 9, 13, NULL, 12, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (274, 14, 14, NULL, 12, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (275, 15, 15, NULL, 12, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (276, 16, 17, NULL, 12, 99);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (277, 18, 22, NULL, 12, 8);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (278, 23, 23, NULL, 12, 9);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (279, 24, 35, NULL, 12, 122);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (280, 36, 36, NULL, 12, 123);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (281, 37, 37, NULL, 12, 124);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (282, 38, 57, NULL, 12, 128);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (283, 58, 58, NULL, 12, 62);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (284, 59, 73, NULL, 12, 68);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (285, 74, 81, NULL, 12, 69);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (286, 82, 96, NULL, 12, 70);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (287, 97, 99, NULL, 12, 105);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (288, 100, 104, NULL, 12, 106);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (289, 105, 105, NULL, 12, 107);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (290, 106, 130, NULL, 12, 86);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (291, 131, 132, NULL, 12, 91);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (292, 133, 133, NULL, 12, 31);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (293, 134, 148, NULL, 12, 32);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (294, 149, 188, NULL, 12, 33);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (295, 189, 198, NULL, 12, 132);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (296, 199, 213, NULL, 12, 108);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (297, 214, 223, NULL, 12, 133);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (298, 224, 240, NULL, 12, 15);

-- HEADER LOTE FEBRABAN
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (300, 9, 9, NULL, 13, 45);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (301, 10, 11, NULL, 13, 46);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (302, 17, 17, NULL, 13, 15);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (303, 18, 18, NULL, 13, 5);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (304, 19, 33, NULL, 13, 6);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (305, 34, 53, NULL, 13, 139);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (306, 54, 58, NULL, 13, 8);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (307, 59, 59, NULL, 13, 9);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (308, 60, 71, NULL, 13, 122);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (309, 72, 72, NULL, 13, 123);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (310, 74, 103, NULL, 13, 13);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (311, 104, 143, NULL, 13, 49);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (312, 144, 183, NULL, 13, 50);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (313, 208, 240, NULL, 13, 25);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (314, 184, 191, NULL, 13, 97);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (315, 192, 199, NULL, 13, 51);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (316, 200, 207, NULL, 13, 52);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (319, 73, 73, ' ', 13, 11);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (320, 8, 8, '1', 13, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (322, 14, 16, '042', 13, 47);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (323, 4, 7, '0001', 13, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (321, 12, 13, NULL, 13, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (317, 1, 3, NULL, 13, 1);

-- TRAILER LOTE BRADESCO
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (324, 1, 3, NULL, 14, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (325, 4, 7, NULL, 14, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (326, 8, 8, '5', 14, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (327, 9, 17, NULL, 14, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (328, 18, 23, NULL, 14, 53);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (329, 24, 29, NULL, 14, 54);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (330, 30, 46, NULL, 14, 55);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (331, 47, 52, NULL, 14, 136);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (332, 53, 69, NULL, 14, 137);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (333, 70, 75, NULL, 14, 56);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (334, 76, 92, NULL, 14, 57);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (335, 93, 98, NULL, 14, 58);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (336, 99, 115, NULL, 14, 59);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (337, 116, 123, NULL, 14, 138);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (338, 124, 240, NULL, 14, 15);

-- SEGMENTO W CAIXA
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (339, 1, 3, NULL, 15, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (340, 4, 7, NULL, 15, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (341, 8, 8, '3', 15, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (342, 9, 13, NULL, 15, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (343, 14, 14, 'W', 15, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (344, 15, 15, NULL, 15, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (345, 16, 17, NULL, 15, 99);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (346, 18, 23, NULL, 15, 140);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (347, 24, 24, NULL, 15, 7);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (348, 25, 157, NULL, 15, 141);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (349, 158, 240, NULL, 15, 15);

-- SEGMENTO R FEBRABAN
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (350, 1, 3, NULL, 16, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (351, 4, 7, NULL, 16, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (352, 8, 8, '3', 16, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (353, 9, 13, NULL, 16, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (354, 14, 14, 'R', 16, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (355, 15, 15, NULL, 16, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (356, 16, 17, NULL, 16, 30);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (357, 18, 18, NULL, 16, 142);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (358, 19, 26, NULL, 16, 143);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (359, 27, 41, NULL, 16, 144);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (360, 42, 42, NULL, 16, 145);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (361, 43, 50, NULL, 16, 146);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (362, 51, 65, NULL, 16, 147);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (363, 66, 66, NULL, 16, 148);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (364, 67, 74, NULL, 16, 149);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (365, 75, 89, NULL, 16, 150);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (366, 90, 99, NULL, 16, 151);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (367, 100, 139, NULL, 16, 152);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (368, 140, 179, NULL, 16, 153);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (369, 180, 199, NULL, 16, 15);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (370, 200, 207, NULL, 16, 154);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (371, 208, 210, NULL, 16, 155);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (372, 211, 215, NULL, 16, 156);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (373, 216, 216, NULL, 16, 157);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (374, 217, 228, NULL, 16, 158);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (375, 229, 229, NULL, 16, 159);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (376, 230, 230, NULL, 16, 124);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (377, 231, 231, NULL, 16, 160);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (378, 232, 240, NULL, 16, 25);

-- SEGMENTO R CAIXA
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (379, 1, 3, NULL, 17, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (380, 4, 7, NULL, 17, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (381, 8, 8, '3', 17, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (382, 9, 13, NULL, 17, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (383, 14, 14, 'R', 17, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (384, 15, 15, NULL, 17, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (385, 16, 17, NULL, 17, 30);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (386, 18, 18, NULL, 17, 142);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (387, 19, 26, NULL, 17, 143);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (388, 27, 41, NULL, 17, 144);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (389, 42, 42, NULL, 17, 145);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (390, 43, 50, NULL, 17, 146);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (391, 51, 65, NULL, 17, 147);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (392, 66, 66, NULL, 17, 148);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (393, 67, 74, NULL, 17, 149);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (394, 75, 89, NULL, 17, 150);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (395, 90, 99, NULL, 17, 151);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (396, 100, 139, NULL, 17, 152);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (397, 140, 179, NULL, 17, 153);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (398, 180, 229, NULL, 17, 161);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (399, 230, 240, NULL, 17, 15);

-- TRAILER LOTE BANCO DO BRASIL
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (400, 1, 3, NULL, 18, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (401, 4, 7, NULL, 18, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (402, 8, 8, '5', 18, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (403, 9, 17, NULL, 18, 4);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (404, 18, 23, NULL, 18, 53);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (405, 24, 240, NULL, 18, 15);

-- HEADER ARQUIVO ITAU
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (407, 1, 3, NULL, 19, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (408, 4, 7, '0000', 19, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (409, 8, 8, '0', 19, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (410, 9, 17, NULL, 19, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (411, 18, 18, NULL, 19, 5);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (412, 19, 32, NULL, 19, 6);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (413, 33, 52, NULL, 19, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (414, 53, 53, NULL, 19, 163);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (415, 54, 57, NULL, 19, 8);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (416, 58, 58, NULL, 19, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (417, 59, 65, NULL, 19, 163);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (418, 66, 70, NULL, 19, 122);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (419, 71, 71, NULL, 19, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (420, 72, 72, NULL, 19, 124);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (421, 73, 102, NULL, 19, 13);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (422, 103, 132, NULL, 19, 14);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (423, 133, 142, NULL, 19, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (424, 143, 143, NULL, 19, 16);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (425, 144, 151, NULL, 19, 17);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (426, 152, 157, NULL, 19, 18);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (427, 158, 163, NULL, 19, 19);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (428, 164, 166, '040', 19, 20);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (429, 167, 171, NULL, 19, 163);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (430, 172, 225, NULL, 19, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (431, 226, 228, NULL, 19, 163);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (432, 229, 240, NULL, 19, 162);

-- HEADER LOTE ITAU
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (433, 1, 3, NULL, 20, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (434, 4, 7, '0001', 20, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (435, 8, 8, '1', 20, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (436, 9, 9, NULL, 20, 45);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (437, 10, 11, NULL, 20, 46);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (438, 12, 13, NULL, 20, 163);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (439, 14, 16, '030', 20, 47);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (440, 17, 17, NULL, 20, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (441, 18, 18, NULL, 20, 5);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (442, 19, 33, NULL, 20, 6);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (443, 34, 53, NULL, 20, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (444, 54, 54, NULL, 20, 163);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (445, 55, 58, NULL, 20, 8);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (446, 59, 59, NULL, 20, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (447, 60, 66, NULL, 20, 163);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (448, 67, 71, NULL, 20, 122);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (449, 72, 72, NULL, 20, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (450, 73, 73, NULL, 20, 124);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (451, 74, 103, NULL, 20, 13);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (452, 104, 183, NULL, 20, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (453, 184, 191, NULL, 20, 97);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (454, 192, 199, NULL, 20, 51);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (455, 200, 207, NULL, 20, 52);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (456, 208, 240, NULL, 20, 162);

-- SEGMENTO Q ITAU
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (457, 1, 3, NULL, 21, 1);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (458, 4, 7, '0001', 21, 2);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (459, 8, 8, '3', 21, 3);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (460, 9, 13, NULL, 21, 28);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (461, 14, 14, 'Q', 21, 29);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (462, 15, 15, NULL, 21, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (463, 16, 17, NULL, 21, 30);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (464, 18, 18, NULL, 21, 31);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (465, 19, 33, NULL, 21, 32);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (466, 34, 63, NULL, 21, 33);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (467, 64, 73, NULL, 21, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (468, 74, 113, NULL, 21, 34);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (469, 114, 128, NULL, 21, 35);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (470, 129, 133, NULL, 21, 36);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (471, 134, 136, NULL, 21, 37);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (472, 137, 151, NULL, 21, 38);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (473, 152, 153, NULL, 21, 39);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (474, 154, 154, NULL, 21, 92);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (475, 155, 169, NULL, 21, 93);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (476, 170, 199, NULL, 21, 94);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (477, 200, 209, NULL, 21, 162);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (478, 210, 212, NULL, 21, 163);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_LINHA, ID_CNAB_CAMPO) VALUES (479, 213, 240, NULL, 21, 162);

-- SEGMENTO Q SINDICAL
-- SEGMENTO Q SINDICAL
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (480, 3, 1, NULL, 1, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (481, 7, 4, NULL, 2, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (482, 8, 8, NULL, 3, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (483, 13, 9, NULL, 28, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (484, 14, 14, 'Q', 29, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (485, 15, 15, NULL, 4, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (486, 17, 16, NULL, 30, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (487, 18, 18, NULL, 31, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (488, 33, 19, NULL, 32, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (489, 73, 34, NULL, 33, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (490, 113, 74, NULL, 34, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (491, 128, 114, NULL, 35, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (492, 133, 129, NULL, 36, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (493, 136, 134, NULL, 37, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (494, 151, 137, NULL, 38, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (495, 153, 152, NULL, 39, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (496, 164, 154, NULL, 164, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (497, 175, 165, NULL, 165, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (498, 184, 176, NULL, 166, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (499, 195, 185, NULL, 167, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (500, 204, 196, NULL, 168, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (501, 209, 205, NULL, 169, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (502, 210, 210, NULL, 170, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (503, 215, 211, NULL, 171, 22);
INSERT INTO tb_cnab_linha_x_cnab_campo (ID_CNAB_LINHA_X_CNAB_CAMPO, DE, ATE, PADRAO, ID_CNAB_CAMPO, ID_CNAB_LINHA) VALUES (504, 240, 216, NULL, 15, 22);


update tb_cnab_linha_x_cnab_campo set padrao = '0001' where id_cnab_campo = 2 and id_cnab_linha not in (1,2);
--
-- TOC entry 2218 (class 0 OID 0)
-- Dependencies: 190
-- Name: tb_cnab_linha_x_cnab_campo_id_cnab_linha_x_cnab_campo_seq; Type: SEQUENCE SET; Schema: sigah; Owner: postgres
--

--
-- TOC entry 2192 (class 0 OID 36855)
-- Dependencies: 191
-- Data for Name: tb_modelo_arquivo; Type: TABLE DATA; Schema: sigah; Owner: postgres
--

-- REMESSA CAIXA
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (1, 1, 2);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (2, 2, 2);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (3, 3, 2);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (4, 4, 2);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (5, 5, 2);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (6, 6, 2);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (27, 17, 2);

-- RETORNO CAIXA
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (7, 1, 3);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (8, 3, 3);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (9, 7, 3);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (10, 8, 3);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (11, 4, 3);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (12, 2, 3);	
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (25, 15, 3);

-- REMESSA BRADESCO
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (13, 9, 5);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (14, 10, 5);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (15, 13, 5);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (16, 14, 5);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (17, 11, 5);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (18, 5, 5);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (26, 16, 5);

-- RETORNO FEBRABAN
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (19, 9, 6);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (20, 10, 6);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (21, 13, 6);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (22, 4, 6);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (23, 12, 6);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (24, 8, 6);	

-- REMESSA BB
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (28, 9, 8);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (29, 13, 8);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (30, 11, 8);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (31, 5, 8);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (32, 16, 8);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (33, 10, 8);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (34, 18, 8);

-- REMESSA SICOOB
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (35, 9, 10);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (36, 13, 10);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (37, 11, 10);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (38, 5, 10);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (39, 16, 10);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (40, 10, 10);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (41, 14, 10);

-- REMESSA ITAU
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (42, 19, 12);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (43, 20, 12);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (44, 11, 12);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (45, 21, 12);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (46, 16, 12);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (47, 10, 12);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (48, 14, 12);

-- REMESSA SICREDI
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (49, 9, 14);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (50, 13, 14);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (51, 11, 14);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (52, 5, 14);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (53, 16, 14);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (54, 10, 14);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (55, 14, 14);

-- REMESSA BANRISUL
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (56, 9, 16);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (57, 13, 16);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (58, 11, 16);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (59, 5, 16);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (60, 16, 16);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (61, 10, 16);
INSERT INTO tb_modelo_arquivo_x_cnab_linha VALUES (62, 14, 16);
