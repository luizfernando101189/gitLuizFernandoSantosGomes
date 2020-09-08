<%-- 
    Document   : numeros-aleatorios
    Created on : 31 de ago de 2020, 16:37:50
    Author     : micam
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String erro = null;
    double val;
    double jrs;
    double parce;
    try {
        val = Double.parseDouble(request.getParameter("n1"));
        jrs = Double.parseDouble(request.getParameter("n2"));
        parce = Double.parseDouble(request.getParameter("n3"));

    } catch (Exception ex) {
        val = 0;
        jrs = 0;
        parce = 0;
        if (request.getParameter("n1") != null && request.getParameter("n2") != null
                && request.getParameter("n3") != null) {
            erro = "erro durante a entrada de dados, insira novamente";
        }

    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price- JSP</title>
    </head>
    <body>
        <div class="col-sm-4">
            <h3><a href="home.jsp">Voltar</a></h3>
            <h1>Tabela Price</h2>
                <form>
                    <h3>Valor<br><input type="number" name="n1"></h3>
                    <h3>Porcentagem de juros<br><input type="number" name="n2"></h3>
                    <h3>Quantidade de Prestações<br><input type="number" name="n3"></h3>
                    <div><input type="submit" value="calcular"></h3></div>
                </form>
                <%-- <hr/>linha que vem antes da tabela --%>
                <hr/>
                <%-- esse if exibe um resultado diferente caso usuário entre com uma string --%>
                <%if (request.getParameter("n1") == null || request.getParameter("n2") == null
                            || request.getParameter("n3") == null) {%>
                <%} else if (erro != null) {%>
                <%-- aqui exibe o erro --%>              
                <div><%=erro%></div>
                <%} else {%>
                <%DecimalFormat df = new DecimalFormat("#,##0.00");%>

                <table class="table table-bordered">
                    <tr>
                        <th>Mês</th>
                        <th>Prestação</th>
                        <th>Amortização</th>
                        <th>Juros</th>
                        <th>À pagar</th>
                    </tr>
                    <%
                        jrs = jrs / 100;
                        double amort = 0;
                        double juros = 0;
                        double ptm = 0;
                       
                        double parcela = val * (Math.pow((1 + jrs), parce) * jrs) / (Math.pow((1 + jrs), parce) - 1);
                        for (int i = 0; i <= parce; i++) {%>
                    <%if (i == 0) {%>
                    <th><%=i%></th>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td><%=val%></td>
                    <%}%>
                    <%if (i > 0) {%>
                    <%
                        juros = val * jrs;
                        amort = parcela - juros;
                        val = val - amort;
                    %>
                    <tr>
                        <th><%=i%>ª</th>
                        <td><%=df.format(parcela)%></td>
                        <td><%=df.format(amort)%></td>
                        <td><%=df.format(juros)%></td>
                        <td><%=df.format(val)%></td>
                    </tr>
                    <%ptm = ptm + parcela;%>
                    <%};%>
                    <%};%>
                </table>
                <%}%>
                </body>
                <%@include file="WEB-INF/jspf/rodape.jspf"  %>
        </div>
</html>
