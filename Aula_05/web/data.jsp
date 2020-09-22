<%-- 
    Document   : data
    Created on : 21 de set de 2020, 16:06:04
    Author     : Luiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.Data"%>;
<%
    Data hoje = new Data();
    hoje.setDia(21);
    hoje.setMes(9);
    hoje.setAno(2020);
    Data nasc = new Data();
    nasc.setDia(3);
    nasc.setMes(6);
    nasc.setAno(2001);
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO - Data</title>
    </head>
    <body>
        <h1>Data</h1>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h3>Hoje:<%= hoje.getDia()+"/"+hoje.getMes()+"/"+hoje.getAno() %></h3>
        <h3>Nascimentos:<%= hoje.getDia()+"/"+hoje.getMes()+"/"+hoje.getAno() %></h3>
    </body>
</html>
