# Compilador-Acervo-Patrimonial
Linguagem de exibição de acervo patrimonial.

## Trabalho de conclusão da disciplina compiladores
Este trabalho foi realizado como requisito de avaliação dos alunos do curso de Engenharia de Computação do Instituto Federal Fluminense, campus Bom Jesus do Itabapoana.
O projeto foi realizado com base nas visitas aos patrimônios históricos do município e com base em entrevistas realizadas entre professores e especialistas nas áreas.

### Objetivo do compilador
Catalogar de forma simples o acervo de imagens de patrimônios, exibindo os dados de forma dsimples e coesa.

Autores:
- Halisson José Soares da Rocha
- Yan Nascimento Balbi
- Fabrício Barros Gonçalves (Professor da disciplina de Compiladores - Coautor)
## Dependências
- [ANTLR4](https://www.antlr.org/download.html)

## Como compilar o projeto

Utilizando a IDE Netbeans, construa o projeto através de 'build and run'. Será gerado o arquivo executável `target/aula_antlr_sintatico-1.0-SNAPSHOT-jar-with-dependencies.jar`.

## Para rodar o projeto

Neste repositório, está disponível o arquivo executável `target/aula_antlr_sintatico-1.0-SNAPSHOT-jar-with-dependencies.jar`, que também pode ser gerado seguindo as instruções da seção anterior.

Para rodar o projeto, estando na raiz do projeto (`aula_anltlr_sintatico-lexico`), execute como apresentado a seguir, considerndo que o arquivo.txt está na raiz do projeto:
```
java -jar target\aula_antlr_sintatico-1.0-SNAPSHOT-jar-with-dependencies.jar arquivo.txt
```
##EXEMPLO DE EXECUÇÃO
Considerando uma pasta imagem_pagina criada dentro da pasta do usuário do computador, com o arquivo da imagem de nome vila_rica.

##Conteúdo do arquivo.txt

patrimonio {
	titulo = "Vila Rica -  Ouro Preto"
	tipo_objeto = ESTRUTURA
	unidade = SEM_UNIDADE
	identificacao = 000002
	autor = "Autor desconhecido"
	nome_imagem = "vila_rica"
	material = ("concreto","madeira","vidro","metal polido")
	data = ( 14,03,1625)
}
