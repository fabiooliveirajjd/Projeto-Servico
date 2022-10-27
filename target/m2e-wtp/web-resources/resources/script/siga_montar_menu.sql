
DELETE FROM SIGA.TB_PERFILMENU_ACAO;

DELETE FROM SIGA.TB_PERFIL_MENU;

DELETE FROM SIGA.TB_MENUITEM;

DELETE FROM SIGA.TB_ACAO;

DELETE FROM SIGA.TB_SUBMENU; 


INSERT INTO SIGA.TB_SUBMENU (CD_SUBMENU, DS_ICON, DS_ID, DS_LABEL, DS_SIGLA, NR_SEQUENCIA) VALUES (1, 'icon-contacts',      'cadastros',         'Cadastros',             'CAD', 1);
INSERT INTO SIGA.TB_SUBMENU (CD_SUBMENU, DS_ICON, DS_ID, DS_LABEL, DS_SIGLA, NR_SEQUENCIA) VALUES (2, 'icon-cog-alt',       'infraestrutura',    'Infraestrutura',        'INF', 2);
INSERT INTO SIGA.TB_SUBMENU (CD_SUBMENU, DS_ICON, DS_ID, DS_LABEL, DS_SIGLA, NR_SEQUENCIA) VALUES (3, 'icon-briefcase-1',   'contabil',          'Contábil',              'COT', 3);
INSERT INTO SIGA.TB_SUBMENU (CD_SUBMENU, DS_ICON, DS_ID, DS_LABEL, DS_SIGLA, NR_SEQUENCIA) VALUES (4, 'icon-users-outline', 'crm',               'CRM',                   'CRM', 4);
INSERT INTO SIGA.TB_SUBMENU (CD_SUBMENU, DS_ICON, DS_ID, DS_LABEL, DS_SIGLA, NR_SEQUENCIA) VALUES (5, 'icon-sitemap',       'enquadramentoSind', 'Enquadramento Sindical','ENQ', 5);
INSERT INTO SIGA.TB_SUBMENU (CD_SUBMENU, DS_ICON, DS_ID, DS_LABEL, DS_SIGLA, NR_SEQUENCIA) VALUES (6, 'icon-calculator',    'cobrança',          'Cobrança',              'COB', 6);
INSERT INTO SIGA.TB_SUBMENU (CD_SUBMENU, DS_ICON, DS_ID, DS_LABEL, DS_SIGLA, NR_SEQUENCIA) VALUES (7, 'icon-list-alt',      'relatorios',        'Relatórios',            'REL', 7);
INSERT INTO SIGA.TB_SUBMENU (CD_SUBMENU, DS_ICON, DS_ID, DS_LABEL, DS_SIGLA, NR_SEQUENCIA) VALUES (8, 'icon-calendar-2',    'negociacao',        'Negociação',            'NEG', 8);
INSERT INTO SIGA.TB_SUBMENU (CD_SUBMENU, DS_ICON, DS_ID, DS_LABEL, DS_SIGLA, NR_SEQUENCIA) VALUES (9, 'icon-users',         'relacionamento',    'Relacionamento',        'REC', 9);



--INSERT ACAO--
INSERT INTO SIGA.TB_ACAO (CD_ACAO, DS_ACAO, TP_ACAO) VALUES (1, 'Consultar', 'C');
INSERT INTO SIGA.TB_ACAO (CD_ACAO, DS_ACAO, TP_ACAO) VALUES (2, 'Incluir',   'I');
INSERT INTO SIGA.TB_ACAO (CD_ACAO, DS_ACAO, TP_ACAO) VALUES (3, 'Alterar',   'A');
INSERT INTO SIGA.TB_ACAO (CD_ACAO, DS_ACAO, TP_ACAO) VALUES (4, 'Excluir',   'E');

-------------------------------------------------------------------INSERT MENU-----------------------------------------------------------------

--INSERT CADASTRO-----
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(1, '#{manterEntidadeController.carregarConsultarEntidade}', null, null, 'manterEntidade', 'Entidade', 'Entidade',1, 1);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(2, '#{manterEmpresaController.carregarConsultarEmpresa}', null, null, 'manterEmpresa', 'Empresa', 'Empresa',1, 2);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(3, '#{manterPessoaFisicaController.carregarConsultarPessoaFisica}', null, null, 'manterPessoa', 'Pessoa Física', 'Pessoa Física',1, 3);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(4, '#{manterCnoController.carregarConsultarCno}', null, null, 'manterCno', 'CNO', 'CNO',1, 4);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(5, '#{manterCnaeController.carregarConsultarCnae}', null, null, 'manterCnae', 'CNAE', 'CNAE',1, 5);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(6, '#{manterPendenciaCadastralController.carregarConsultarPendenciaCadastral}', null, null, 'manterPendenciaCad', 'Pendência Cadastral', 'Pendência Cadastral',1, 6);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(7,'#{manterGrupoEconomicoController.carregarConsultarGrupoEconomico}', null, null, 'manterGrupoEco', 'Grupo Econômico', 'Grupo Econômico',1, 7);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(8, '#{manterGrupoEmpresarialController.carregarConsultarGrupoEmpresarial}', null, null, 'manterGrupoEmp', 'Grupo Empresarial', 'Grupo Empresarial',1, 8);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(9, '#{manterRegiaoController.carregarConsultarRegiao}', null, null, 'manterRegiao', 'Região', 'Região',1, 9);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(10, '#{manterLotacaoController.carregarConsultarLotacao}', null, null, 'manterLotacao', 'Lotação', 'Lotação',1, 10);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(11, '#{manterInformativosController.carregarConsultarInformativos}', null, null, 'manterInformativos','Informativos', 'Informativos',1, 11);

--INSERT INFRAESTRUTURA--
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(21,'#{manterUsuarioController.carregarConsultarUsuario}', null, null, 'manterUsuario', 'Usuário', 'Usuário',2, 1);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(22,'#{manterPerfilController.carregarConsultarPerfil}', null, null, 'manterPerfil', 'Perfil', 'Perfil',2, 2);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(23,'#{importarCnaeController.carregarIncluirCnae}', null, null, 'importarCnae', 'Importar CNAE ', 'Importar CNAE',2, 3);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(24,'#{importarCepController.carregarIncluirCep}', null, null, 'importarCep', 'Importar CEP ', 'Importar CEP',2, 4);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(25,'#{manterLogRegistroController.carregarConsultarLogRegistro}', null, null, 'manterLog', 'Log', 'Log de Transações',2, 5);

--INSERT CONTABIL--


--INSERT CRM--

--INSERT ENQUADRAMENTO SINDICAL--
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(56, '#{manterVinculoPotencialContribuinteController.carregarConsultarPotencialContribuiente}', null, null, 'manterVinculoPotenciaisCon','Potenciais Contribuintes', 'Potenciais Contribuintes',5, 1);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(57, '#{manterAtualizarEstabelecimentosController.carregarConsultarAtualizarEstabelecimentos}', null, null, 'manterAtualizarEst','Atualização Cadastral', 'Atualização Cadastral',5, 2);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(58, '#{vincularEnquadramentoSindicalController.carregarVincularEnquadramentoSindical}', null, null, 'vincularEnqSind', 'Enquadramento Sindical', 'Enquadramento Sindical',5, 3);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(59, '#{vincularReenquadramentoSindicalController.carregarVincularReenquadramentoSindical}', null, null, 'vincularReenqEmp', 'Reenquadramento', 'Reenquadramento',5, 4);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(60, '#{vincularConflitoEnquadramentoSindicalController.carregarVincularConflitoEnquadramentoSindical}', null, null, 'vincularConEnqSind', 'Conflito de Representação', 'Conflito de Representação',5, 5);


--INSERT COBRANÇA--
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(70, '#{manterCobrancaController.carregarConsultarCobranca}', null, null, 'manterCobran', 'Tipo de Cobrança', 'Tipo de Cobrança',6, 1);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(71, '#{manterTipoBaseCalculoController.carregarConsultarTipoBaseCalculo}', null, null, 'manterTipoBaseCalculo', 'Tipo Base de Cálculo', 'Tipo Base de Cálculo',6, 2);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(72, '#{manterInformacaoBancariaController.carregarConsultarInformacaoBancaria}', null, null, 'manterInformacaoBancaria', 'Informações Bancárias', 'Informações Bancárias',6, 3);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(73, '#{manterTabelaCalculoController.carregarConsultarTabelaCalculo}', null, null, 'manterTabelaCalculo', 'Tabela de Cálculo', 'Tabela de Cálculo',6, 4);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(74, '#{manterBaseCalculoController.carregarConsultarBaseCalculo}', null, null, 'manterBaseCalc', 'Base de Cálculo', 'Base de Cálculo',6, 5);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(75, '#{manterCobrancaSemTabelaController.carregarConsultarCobrancaSemTabela}', null, null, 'manterCobrancaSemTab', 'Cobrança Sem Tabela', 'Cobrança Sem Tabela',6, 6);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(76,'#{gerarArquivoRemessaController.carregarGerarBoleto}', null, null, 'gerarArquivoRemessa', 'Gerar Arquivo Remessa', 'Gerar Arquivo Remessa',6, 7);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(77, '#{gerarBoletoController.carregarGerarBoleto}', null, null, 'gerarBoleto', 'Gerar Boletos', 'Gerar Boletos',6, 8);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(78, '#{manterCargaArquivoRetornoController.carregarArquivoRetorno}', null, null, 'arquivoRetorno', 'Arquivo Retorno', 'Arquivo Retorno',6, 9);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(79, '#{manterContaCorrenteController.carregarConsultarContaCorrente}', null, null, 'contaCorrente', 'Conta Corrente', 'Conta Corrente',6, 10);


--INSERT RELATORIOS--
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM,DS_COMMAND,DS_CONTAINERSTYLECLASS,DS_ICON,DS_ID,DS_TITLE,DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) values 
(88,'#{relatorioRelacaoEntidadesController.carregarRelatarioRelacaoEntidades}',null,null,'relatorioRelacaoEntidadesController','Relação de Entidades','Relação de Entidades', 7, 1);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM,DS_COMMAND,DS_CONTAINERSTYLECLASS,DS_ICON,DS_ID,DS_TITLE,DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) values 
(89,'#{relatorioEmpresaEntidadesController.carregarRelatarioEmpresaEntidades}',null,null,'relatorioEmpresaEntidadesController','Empresas por Entidade','Empresas por Entidade', 7, 2);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM,DS_COMMAND,DS_CONTAINERSTYLECLASS,DS_ICON,DS_ID,DS_TITLE,DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) values 
(90,'#{relatorioResumidoBoletosEmitidosController.carregarRelatarioResumidoBoletosEmitidos}',null,null,'relatorioResumidoBoletosEmitidosController','Boletos Emitidos - Sintético','Boletos Emitidos - Sintético', 7, 3);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM,DS_COMMAND,DS_CONTAINERSTYLECLASS,DS_ICON,DS_ID,DS_TITLE,DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) values 
(91,'#{relatorioDetalhadoBoletosEmitidosController.carregarRelatarioDetalhadoBoletosEmitidos}',null,null,'relatorioDetalhadoBoletosEmitidosController','Boletos Emitidos - Analítico','Boletos Emitidos - Analítico', 7, 4);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM,DS_COMMAND,DS_CONTAINERSTYLECLASS,DS_ICON,DS_ID,DS_TITLE,DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) values 
(92,'#{relatorioFinanceiroResumidoController.carregarRelatorioFinanceiroResumido}',null,null,'relatorioFinanceiroResumidoController','Financeiro - Sintético','Financeiro - Sintético', 7, 5);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM,DS_COMMAND,DS_CONTAINERSTYLECLASS,DS_ICON,DS_ID,DS_TITLE,DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) values 
(93,'#{relatorioFinanceiroDetalhadoController.carregarRelatotioFinanceiroDetalhado}',null,null,'relatorioFinanceiroDetalhadoController','Financeiro - Analítico','Financeiro - Analítico', 7, 6);
INSERT into SIGA.TB_MENUITEM (CD_MENUITEM,DS_COMMAND,DS_CONTAINERSTYLECLASS,DS_ICON,DS_ID,DS_TITLE,DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) values 
(94,'#{relatorioPendenciaCadastralController.carregarRelatorioPendenciaCadastral}',null,null,'relatorioPendenciaCadastralController','Pendência Cadastral','Pendência Cadastral', 7, 7);
INSERT into SIGA.TB_MENUITEM (CD_MENUITEM,DS_COMMAND,DS_CONTAINERSTYLECLASS,DS_ICON,DS_ID,DS_TITLE,DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) values 
(95,'#{relatorioBaseCalculoController.carregarRelatarioBaseCalculo}',null,null,'relatorioBaseCalculoController','Base de Cálculo','Base de Cálculo', 7, 8);
INSERT into SIGA.TB_MENUITEM (CD_MENUITEM,DS_COMMAND,DS_CONTAINERSTYLECLASS,DS_ICON,DS_ID,DS_TITLE,DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) values 
(96,'#{relatorioInadimplenciaController.carregarRelatarioInadimplencia}',null,null,'relatorioInadimplenciaController','Inadimplência','Inadimplência', 7, 9);

--INSERT NEGOCIAÇÃO--
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(103, '#{manterProrrogacaoVencimentoController.carregarConsultarProrrogacaoVencimento}', null, null, 'manterProrrogacaoVencimento', 'Prorrogação de Vencimento', 'Prorrogação de Vencimento',8, 1);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(104, '#{manterParcelamentoDividaController.carregarConsultarParcelamentoDivida}', null, null, 'manterParcelamentoDivida', 'Parcelamento de Dívida', 'Parcelamento de Dívida',8, 2);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(105, '#{manterAntecipacaoDescontoController.carregarConsultarAntecipacaoDesconto}', null, null, 'manterAntecipacaoDesconto', 'Antecipação de Vencimentos', 'Antecipação de Vencimentos',8, 3);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(106, '#{manterBaixaManualController.carregarConsultarBaixaManual}', null, null, 'manterBaixaManual', 'Baixa Manual', 'Baixa Manual',8, 4);

--INSERT RELACIONAMENTO--
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(117, '#{manterProdutoServicoController.carregarConsultarProdutoServico}', null, null, 'manterProdutoServico', 'Produtos e Serviços', 'Produtos e Serviços',9, 1);
INSERT INTO SIGA.TB_MENUITEM (CD_MENUITEM, DS_COMMAND, DS_CONTAINERSTYLECLASS, DS_ICON, DS_ID, DS_TITLE, DS_VALUE, CD_SUBMENU, NR_SEQUENCIA) VALUES 
(118, '#{manterAtendimentoController.carregarConsultarAtendimento}', null, null, 'manterAtendimento', 'Atendimento', 'Atendimento',9, 2);

--INSERT PERFIL_MENU--
INSERT INTO SIGA.TB_PERFIL_MENU (CD_PERFILMENU,CD_MENUITEM,CD_PERFIL,CD_SUBMENU) values (1,21,1,2);
INSERT INTO SIGA.TB_PERFIL_MENU (CD_PERFILMENU,CD_MENUITEM,CD_PERFIL,CD_SUBMENU) values (2,22,1,2);



--INSERT PERFIL_MENU_ACAO--
INSERT INTO SIGA.TB_PERFILMENU_ACAO (CD_PERFILMENUACAO,CD_ACAO,CD_PERFILMENU) values (1,1,1);
INSERT INTO SIGA.TB_PERFILMENU_ACAO (CD_PERFILMENUACAO,CD_ACAO,CD_PERFILMENU) values (2,2,1);
INSERT INTO SIGA.TB_PERFILMENU_ACAO (CD_PERFILMENUACAO,CD_ACAO,CD_PERFILMENU) values (3,3,1);
INSERT INTO SIGA.TB_PERFILMENU_ACAO (CD_PERFILMENUACAO,CD_ACAO,CD_PERFILMENU) values (4,4,1);
INSERT INTO SIGA.TB_PERFILMENU_ACAO (CD_PERFILMENUACAO,CD_ACAO,CD_PERFILMENU) values (5,1,2);
INSERT INTO SIGA.TB_PERFILMENU_ACAO (CD_PERFILMENUACAO,CD_ACAO,CD_PERFILMENU) values (6,2,2);
INSERT INTO SIGA.TB_PERFILMENU_ACAO (CD_PERFILMENUACAO,CD_ACAO,CD_PERFILMENU) values (7,3,2);
INSERT INTO SIGA.TB_PERFILMENU_ACAO (CD_PERFILMENUACAO,CD_ACAO,CD_PERFILMENU) values (8,4,2);