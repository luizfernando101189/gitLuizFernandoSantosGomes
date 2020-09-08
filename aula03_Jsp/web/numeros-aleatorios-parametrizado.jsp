<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String erro = null;
    int n = 0;
    if(request.getParameter("n") != null){
    try{
        n = Integer.parseInt(request.getParameter("n"));
    }catch(Exception ex){
        n = 0;
        if(request.getParameter("n") != null)
            erro = "Número inválido como parâmetro";
    }}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números aleatórios - JSP</title>
    </head>
    <body>
        <h1>Java Sever Pages</h1>
        <h2>Números aleatórios</h2>
        <div>
            <form >
                Quantidade:
                <input type="number" name="n">
                <input type="submit" value="Gerar">
            </form>
        </div>

                <%
                    if(request.getParameter("n") == null){
                %>
                <div>Digite um número</div>
                <%
                    }else if(erro != null){
                %>
                <div><%= erro %>
                <%}else{
                %>
                <table border="1">
             <tr>
                <th>Seq</th>
                <th>Número</th>
            </tr>
                <%
                    for(int i = 1; i <= 10; i++){
                 %>
            <tr>
                <td><%= i %></td>
                <td><%= ((int) (Math.random() * 100))  %></td>
            </tr>
                <%}}%>
        </table>
        <h3><a href="index.jsp">voltar</a></h3>
    </body>
</html>
