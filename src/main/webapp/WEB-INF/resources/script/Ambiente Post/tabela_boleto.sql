--#### UPS ####--

set schema 'siga';

CREATE SEQUENCE s_tabela_boleto;
CREATE SEQUENCE s_coluna_tabela_boleto;
CREATE SEQUENCE s_linha_tabela_boleto;

CREATE TABLE tb_boleto
(
   cd_registro_cobranca_parcela integer,
   cd_entidade integer NOT NULL,
   cd_banco varchar, 
   nr_valor_documento varchar, 
   dt_vencimento varchar, 
   nm_sacado varchar, 
   ds_logradouro_sacado varchar, 
   nr_sacado varchar, 
   ds_complemento_sacado varchar, 
   nm_bairro_sacado varchar, 
   nm_cidade_sacado varchar, 
   nm_uf_sacado varchar, 
   nr_cep_sacado varchar, 
   ds_cpf_cnpj_sacado varchar, 
   ds_logradouro_corresp_sacado varchar, 
   nr_corresp_sacado varchar, 
   ds_complemento_corresp_sacado varchar, 
   nm_bairro_corresp_sacado varchar, 
   nm_cidade_corresp_sacado varchar, 
   nm_uf_corresp_sacado varchar, 
   nr_cep_corresp_sacado varchar, 
   nm_cedente varchar, 
   ds_logradouro_cedente varchar, 
   nr_cedente varchar, 
   ds_complemento_cedente varchar, 
   nm_bairro_cedente varchar, 
   nm_cidade_cedente varchar, 
   nm_uf_cedente varchar, 
   nr_cep_cedente varchar, 
   nr_agencia_cedente varchar, 
   nr_conta_cedente varchar, 
   nr_cpf_cnpj_cedente varchar, 
   nr_ano_exercicio varchar, 
   ds_codigo_atividade varchar, 
   ds_especie_moeda varchar, 
   ds_especie_documento varchar, 
   nr_carteira varchar, 
   ds_local_pagamento varchar, 
   nr_documento varchar, 
   vlr_capital_social_empresa varchar, 
   vlr_capital_social_estabelecimento varchar, 
   ds_titulo_contribuicao varchar, 
   tp_entidade varchar, 
   vlr_juros_mora_dia_taxa varchar, 
   vlr_abatimento varchar, 
   ds_codigo_cedente varchar, 
   ds_codigo_sindical_cedente varchar, 
   nr_codigo_barras varchar, 
   ds_nome_arquivo varchar, 
   ds_mensagem_contribuinte	 varchar, 
   id_parcela varchar, 
   st_sindical boolean DEFAULT false,
   st_patronal boolean DEFAULT false,
   st_ativo boolean DEFAULT true,
   dt_criacao timestamp without time zone DEFAULT now(),
   dt_alteracao timestamp without time zone,
   PRIMARY KEY (cd_registro_cobranca_parcela),
   FOREIGN KEY (cd_registro_cobranca_parcela) REFERENCES tb_registro_cobranca_parcela (cd_registro_cobranca_parcela) ON UPDATE NO ACTION ON DELETE CASCADE,
   FOREIGN KEY (cd_entidade) REFERENCES tb_entidade (cd_entidade) ON UPDATE NO ACTION ON DELETE CASCADE
) 
WITH (
  OIDS = FALSE
)
;

CREATE INDEX ON siga.tb_boleto (cd_registro_cobranca_parcela ASC NULLS LAST);

CREATE TABLE tb_tabela_boleto
(
   cd_tabela_boleto bigint DEFAULT nextval('siga.s_tabela_boleto'), 
   vlr_fixo_unico varchar, 
   vlr_minimo varchar, 
   vlr_maximo varchar,
   cd_registro_cobranca_parcela integer,  
   PRIMARY KEY (cd_tabela_boleto),
   FOREIGN KEY (cd_registro_cobranca_parcela) REFERENCES tb_boleto (cd_registro_cobranca_parcela) ON UPDATE NO ACTION ON DELETE CASCADE
) 
WITH (
  OIDS = FALSE
)
;

CREATE TABLE tb_coluna_tabela_boleto
(
   cd_coluna_tabela_boleto bigint DEFAULT nextval('siga.s_coluna_tabela_boleto'),  
   ds_titulo_coluna varchar, 
   cd_tabela_boleto bigint,  
   PRIMARY KEY (cd_coluna_tabela_boleto),
   FOREIGN KEY (cd_tabela_boleto) REFERENCES tb_tabela_boleto (cd_tabela_boleto) ON UPDATE NO ACTION ON DELETE CASCADE
) 
WITH (
  OIDS = FALSE
)
;

CREATE TABLE tb_linha_tabela_boleto
(
   cd_linha_tabela_boleto bigint DEFAULT nextval('siga.s_linha_tabela_boleto'),  
   ds_linha varchar, 
   vl_ordem integer, 
   cd_coluna_tabela_boleto bigint,
   PRIMARY KEY (cd_linha_tabela_boleto),
   FOREIGN KEY (cd_coluna_tabela_boleto) REFERENCES tb_coluna_tabela_boleto (cd_coluna_tabela_boleto) ON UPDATE NO ACTION ON DELETE CASCADE
) 
WITH (
  OIDS = FALSE
)
;

--#### DOWNS ####--

set schema 'siga';

DROP TABLE IF EXISTS tb_linha_tabela_boleto;
DROP TABLE IF EXISTS tb_coluna_tabela_boleto;
DROP TABLE IF EXISTS tb_tabela_boleto;
DROP TABLE IF EXISTS tb_boleto;

DROP SEQUENCE IF EXISTS s_boleto;
DROP SEQUENCE IF EXISTS s_tabela_boleto;
DROP SEQUENCE IF EXISTS s_coluna_tabela_boleto;
DROP SEQUENCE IF EXISTS s_linha_tabela_boleto;

