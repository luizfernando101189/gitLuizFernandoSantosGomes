<%-- 
    Document   : date-with-scriptlet
    Created on : 31 de ago de 2020, 15:37:58
    Author     : Luiz
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Java Server Page</h1>
        <h2>Data/hora do servidor com scriiptlet</h2>
        <h3><% Date agora = new Date();
        out.println("agora, no servidor:"+agora);
        %> </h3>
        <h3><a href="index.jsp">voltar</a></h3>
    </body>
</html>
