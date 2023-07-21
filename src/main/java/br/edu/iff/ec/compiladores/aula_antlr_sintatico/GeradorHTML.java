/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.edu.iff.ec.compiladores.aula_antlr_sintatico;

import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yanba
 */
public class GeradorHTML extends AulaAntlrBaseVisitor<Void>{

    @Override
    public Void visitEstrutura(AulaAntlrParser.EstruturaContext ctx) {
        try {
            StringBuilder saida = new StringBuilder();
            
            saida.append("<!DOCTYPE html>\n" +
                "<html>\n" +
                "<head>\n" +
                "<style> \n" +
                ".box {\n" +
                "  display: flex;\n" +
                "  align-items: flex-start;\n" +
                "  #height: 200px;\n" +
                "  background-color: #ccc;\n" +
                "}\n" +
                ".box>*:first-child {\n" +
                "    align-self: stretch;\n" +
                "}\n" +
                ".box .selected {\n" +
                "    align-self: center;\n" +
                "    #background-color:#999;\n" +
                "    width:400px;\n" +
                "    margin:15px;\n" +
                "}\n" +
                ".center {\n" +
                "  margin: auto;\n" +
                "  width: 800px;\n" +
                "  #border: 3px solid #73AD21;\n" +
                "  padding: 10px;\n" +
                "}\n" +
                "h1 {\n" +
                "  text-align: center;\n" +
                "}\n" +
                "</style>\n" +
                "</head>\n" +
                "<body>\n" +
                "<div style=\"background-color:#ccc\">");

            saida.append("<h1 style=\"padding-top: 18px;\">" + ctx.titulo_estrutura().getText().replace("titulo=\"","").replace("\"", "") + "</h1>\n" +
                "  <div class=\"box center\">\n" +
                "    <div class=\"selected\"><img src=\"./imagem_pagina/" + ctx.nome_imagem_estrutura().getText().replace("nome_imagem=", "").replace("\"", "")+".jpg\" alt=\"Girl in a jacket\" width=\"400px\"></div>\n" +
                "    <div class=\"selected\">\n" +
                "      <p><b>Tipo de Objeto: </b>" + ctx.tipo_objeto_estrutura().getText().replace("tipo_objeto", "").replace("=","")+"</p>\n" +
                "      <p><b>Unidade: </b>" + ctx.unidade_estrutura().getText().replace("unidade", "").replace("=", "")+"</p>\n" +
                "      <p><b>Identificação: </b>" + ctx.identificacao_estrutura().getText().replace("identificacao=", "")+"</p>\n" +
                "      <p><b>Autor: </b>" + ctx.autor_estrutura().getText().replace("autor","").replace("\"","").replace("=","").replace("\"", "").replace(",",", ")+"</p>\n" +
                "      <p><b>Material: </b>" + ctx.material_estrutura().getText().replace("material","").replace("=","").replace("(","").replace(")", "").replace("\"","").replace(",",", ")+"</p>"+
                "      <p><b>Data: </b>" + ctx.data_estrutura().getText().replace(",", "/").replace("data","").replace("=", "").replace("\"", "").replace("(","").replace(")","")+"</p>"+
                "      <p><b>Descricao: </b>" + ctx.descricao_estrutura().getText().replace("descricao","").replace("=", "").replace("\"", "")+"</p>"
                );
            saida.append("  </div>\n" +
                "\n" +
                "</div>\n" +
                "</div>\n" +
                "</body>\n" +
                "</html>");

            
            
            FileWriter writer = new FileWriter(ctx.nome_imagem_estrutura().getText().replace("nome_imagem=", "").replace("\"", "")+".html");
            writer.write(saida.toString());
            writer.close();
            
            
            return super.visitEstrutura(ctx); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
        } catch (IOException ex) {
            Logger.getLogger(GeradorHTML.class.getName()).log(Level.SEVERE, null, ex);
        }
        return super.visitEstrutura(ctx); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
}
