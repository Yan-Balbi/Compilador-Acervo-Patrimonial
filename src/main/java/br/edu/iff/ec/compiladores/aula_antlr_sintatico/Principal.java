/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package br.edu.iff.ec.compiladores.aula_antlr_sintatico;

import java.io.IOException;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.Token;

/**
 *
 * @author yanba
 */
public class Principal {

//    public static void main(String args[]) throws IOException {
//        CharStream cs = CharStreams.fromFileName(args[0]);
//        AulaAntlrLexer lexer = new AulaAntlrLexer(cs);
//        CommonTokenStream tokens = new CommonTokenStream(lexer);
//        AulaAntlrParser parser = new AulaAntlrParser(tokens);
//        AulaAntlrParser.EstruturaContext arvore = parser.estrutura();
//        
//        Token t = null;
//        while((t = lexer.nextToken()).getType() != Token.EOF){
//            System.out.println("<"+AulaAntlrLexer.VOCABULARY.getDisplayName(t.getType())+","+t.getText()+">");
//        }
//        
//        //CommonTokenStream tokens = new CommonTokenStream(lexer); NTIRAR
//        
//        GeradorHTML g = new GeradorHTML();
//        g.visitEstrutura(arvore);
//    }
    
    public static void main(String args[]) throws IOException {
        CharStream cs = CharStreams.fromFileName(args[0]);
        AulaAntlrLexer lexer = new AulaAntlrLexer(cs);
        CommonTokenStream tokens = new CommonTokenStream(lexer);      
        AulaAntlrParser parser = new AulaAntlrParser(tokens);
        AulaAntlrParser.EstruturaContext arvore = parser.estrutura();
        Token t = null;
        while((t = lexer.nextToken()).getType() != Token.EOF){
            System.out.println("<"+AulaAntlrLexer.VOCABULARY.getDisplayName(t.getType())+","+t.getText()+">");
        }
        

        GeradorHTML g = new GeradorHTML();
        g.visitEstrutura(arvore);
    }
}
