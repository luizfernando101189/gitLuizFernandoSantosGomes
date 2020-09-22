<%-- 
    Document   : pessoa
    Created on : 21 de set de 2020, 22:23:09
    Author     : Luiz
--%>

<%@page import="java.util.Date"%>
<%@page import="br.edu.fatecpg.poo.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Pessoa eu = new Pessoa();
    eu.nome = "Bruno";
    
    eu.pai = new Pessoa();
    eu.pai.nome = "Ademir";
    eu.pai.pai = new Pessoa();
    eu.pai.pai.nome = "Jorge";
    eu.pai.mae = new Pessoa();
    eu.pai.mae.nome = "Givanneide";
    
    eu.mae = new Pessoa();
    eu.mae.nome = "Nilde";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO - Pessoa</title>
    </head>
    <body>
        <h1>Pessoa</h1>
        
        <h2><a href="index.jsp">Voltar</a></h2>
        <p>O pai de <%= eu.nome %> é <%= eu.pai.nome %></p>
        <p>O avô de <%= eu.nome %> é <%= eu.pai.pai.nome %></p>
    </body>
</html>
