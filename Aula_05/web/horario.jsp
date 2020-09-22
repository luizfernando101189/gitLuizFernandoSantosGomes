<%-- 
    Document   : horario
    Created on : 21 de set de 2020, 16:12:23
    Author     : Luiz
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.fatecpg.poo.Horario"%>
<%@page import="java.util.Date"%>
<%  
    Date horas = new Date();
    Horario agora = new Horario();
    agora.setHora(horas.getHours());
    agora.setMinutos(horas.getMinutes());
    agora.setSegundo(horas.getSeconds());
    Horario inter = new Horario();
    inter.setHora(16);
    inter.setMinutos(40);
    inter.setSegundo(0);
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO - Horário</title>
    </head>
    <body>
        <h1>Horário</h1>
        
        <h2><a href="index.jsp">Voltar</a></h2>
        <h3>Agora: <%= agora.getHora()+":"+agora.getMinutos()+":"+agora.getSegundo() %></h3>
        <h3>Intervalo: <%= inter.getHora()+":"+inter.getMinutos()+":"+inter.getSegundo() %></h3>
    </body>
</html>
