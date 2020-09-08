<%-- 
    Document   : Idade
    Created on : 31 de ago de 2020, 15:59:53
    Author     : micam
--%>


<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha idade - JSP</title>
    </head>
    <body>
        <h3><a hred="home.jsp">Voltar</a></h3>
        <h1>Java Server Pages</h1>
        <h2>Minha idade</h2>
        <%
            int anoAtual= Calendar.getInstance().get(Calendar.YEAR);
            int anoDoMeuNascimento = 1997;
            int idade = anoAtual - anoDoMeuNascimento;
        %>
        <h3>Meu nome: <u>MILENA CAMARGO REIS</u></h3>
        <h3>Minha idade: <u> <%= idade %> anos</u></h3>
    </body>
</html>
