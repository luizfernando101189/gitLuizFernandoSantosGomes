<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números aleatórios - JSP</title>
    </head>
    <body>
        <h1>Java Server Pages</h1>
        <h2>Números aleatórios</h2>
        <%
            for(int i=1; i<=10; i++){%>
            <div><%=((int)(Math.random() *100)) %></div>
           
            <%}%>
      <h3><a href="index.jsp">voltar</a></h3>  
    </body>
</html>
