/*grammar AulaAntlr;

UNIDADE: 'MIR'|'MT'|'MCM'|'MAP'|'MHAERJ'|'COV'|'CCA'|'CEC'|'SEM_UNIDADE';
TIPO_OBJETO: 'PINTURA' | 'ESTRUTURA'|'ESCULTURA' | 'GRAVURA' | 'FOTOGRAFIA' | 'ARTEFATOS_ARQUEOLOGICOS' | 'ESCULTURA_EM_RELEVO' | 'INSTALACAO' | 'ARTE_TEXTIL' | 'MOBILIARIO' | 'DOCUMENTO'  | 'ARTEFATO_ETNOGRAFICO' | 'MOEDA' | 'MEDALHA' | 'INSTRUMENTO_MUSICAL' | 'GEMA' | 'JOIA' | 'EQUIPAMENTO_CIENTIFICO' | 'ARQUITETURA_EM_MINIATURA' | 'VEICULO';
PATRIMONIO: 'patrimonio';
//'titulo'|'tipo_objeto'|'unidade'|'identificacao'|'autor'|'imagem'|;

ESPACO_EM_BRANCO: (' ' | '\t' | '\r' | '\n')->skip;
IDENTIFICACAO: '0'..'9' '0'..'9' '0'..'9' '0'..'9' '0'..'9' '0'..'9';
NUM: '0'..'9' '0'..'9';
ANO: '0'..'9' '0'..'9' '0'..'9' '0'..'9';

CADEIA:  '"'('a'..'z'|'A'..'Z'| ' ') ' '? ('a'..'z'|'A'..'Z'|' ')* ' '?'"';
CADEIA_IMAGEM: 'a'..'z'|'A'..'Z'|'0..9'|'-'|'_'|'/' | '.';
VARIAVEL: ('a'..'z'|'A'..'Z') ('a'..'z'|'A'..'Z'|'0'..'9')*;

ATRIBUIR: '=';
ABRE_PAR: '(';
FECHA_PAR: ')';
ABRE_CHAVE: '{';
FECHA_CHAVE: '}';
VIRGULA: ',';
PONTO_VIRG: ';';

titulo_estrutura: 'titulo' ATRIBUIR CADEIA;

tipo_objeto_estrutura: 'tipo_objeto' ATRIBUIR TIPO_OBJETO;

unidade_estrutura: 'unidade' ATRIBUIR UNIDADE;

identificacao_estrutura: 'identificacao' ATRIBUIR IDENTIFICACAO;

autor_estrutura:'autor' ATRIBUIR (CADEIA VIRGULA)+;

data_estrutura: ABRE_PAR VIRGULA NUM VIRGULA NUM VIRGULA ANO FECHA_PAR;

imagem_estrutura: 'imagem' ATRIBUIR CADEIA_IMAGEM;

material_estrutura: 'material' ATRIBUIR (CADEIA VIRGULA)+;

estrutura:  PATRIMONIO ABRE_CHAVE tipo_objeto_estrutura FECHA_CHAVE EOF;*/

grammar AulaAntlr;

TITULO: 'titulo';
TIPO_OBJETO: 'tipo_objeto';
UNIDADE: 'unidade';
IDENT: 'identificacao';
AUTOR: 'autor';
IMAGEM:'imagem';
MATERIAL:'material';
PATRIMONIO: 'patrimonio';
NOME_IMAGEM: 'nome_imagem';

UNIDADE_ACERVO: 'MIR'|'MT'|'MCM'|'MAP'|'MHAERJ'|'COV'|'CCA'|'CEC'|'SEM_UNIDADE';
OBJETO: 'PINTURA' | 'ESCULTURA' | 'ESTRUTURA' | 'GRAVURA' | 'FOTOGRAFIA' | 'ARTEFATOS_ARQUEOLOGICOS' | 'ESCULTURA_EM_RELEVO' | 'INSTALACAO' | 'ARTE_TEXTIL' | 'MOBILIARIO' | 'DOCUMENTO'  | 'ARTEFATO_ETNOGRAFICO' | 'MOEDA' | 'MEDALHA' | 'INSTRUMENTO_MUSICAL' | 'GEMA' | 'JOIA' | 'EQUIPAMENTO_CIENTIFICO' | 'ARQUITETURA_EM_MINIATURA' | 'VEICULO';

//'titulo'|'tipo_objeto'|'unidade'|'identificacao'|'autor'|'imagem'|;


ESPACO_EM_BRANCO: (' ' | '\t' | '\r' | '\n')->skip;
IDENTIFICACAO: '0'..'9' '0'..'9' '0'..'9' '0'..'9' '0'..'9' '0'..'9';
NUM: '0'..'9' '0'..'9';
ANO: '0'..'9' '0'..'9' '0'..'9' '0'..'9';

CADEIA:  '"'(' '?('a'..'z'|'A'..'Z'|'0..9'|'-'|'_'|'/'|'.'|' '|'á'|'é'|'í'|'ó'|'ú'|'ç'))*'"';
CADEIA_IMAGEM: 'a'..'z'|'A'..'Z'|'0..9'|'-'|'_'|'/'|'.'|' ';
VARIAVEL: ('a'..'z'|'A'..'Z') ('a'..'z'|'A'..'Z'|'0'..'9')*;

ATRIBUIR: '=';
ABRE_PAR: '(';
FECHA_PAR: ')';
ABRE_CHAVE: '{';
FECHA_CHAVE: '}';
VIRGULA: ',';
PONTO_VIRG: ';';


titulo_estrutura: TITULO ATRIBUIR CADEIA;

tipo_objeto_estrutura: TIPO_OBJETO ATRIBUIR OBJETO;

unidade_estrutura: UNIDADE ATRIBUIR UNIDADE_ACERVO;

identificacao_estrutura: IDENT ATRIBUIR IDENTIFICACAO;

autor_estrutura:AUTOR ATRIBUIR (CADEIA VIRGULA)*? CADEIA;

data_estrutura: ABRE_PAR NUM VIRGULA NUM VIRGULA ANO FECHA_PAR;

imagem_estrutura: IMAGEM ATRIBUIR CADEIA_IMAGEM;

nome_imagem_estrutura: NOME_IMAGEM ATRIBUIR CADEIA;

material_estrutura: MATERIAL ATRIBUIR ABRE_PAR (materiais+=CADEIA VIRGULA)*? CADEIA FECHA_PAR;

estrutura:  PATRIMONIO ABRE_CHAVE titulo_estrutura tipo_objeto_estrutura unidade_estrutura identificacao_estrutura autor_estrutura  nome_imagem_estrutura material_estrutura data_estrutura FECHA_CHAVE EOF;