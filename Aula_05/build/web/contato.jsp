<%-- 
    Document   : contato
    Created on : 21 de set de 2020, 22:42:51
    Author     : Luiz
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Contato> ContactList = (ArrayList) application.getAttribute("ContactList");
    if (ContactList == null) {
        ContactList = new ArrayList<>();
        ContactList.add(new Contato("admin", "admin@domain.com", "1234"));
        ContactList.add(new Contato("Fulano", "fulano@domain.com", "1234"));
        ContactList.add(new Contato("Beltrano", "beltrano@domain.com", "1234"));
        ContactList.add(new Contato("Cicrano", "cicrano@domain.com", "1234"));
        application.setAttribute("ContactList", ContactList);
    }
    if (request.getParameter("add") != null) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        ContactList.add(new Contato(name, email, tel));
        response.sendRedirect(request.getRequestURI());
    }
    if (request.getParameter("remove") != null) {
        int i = Integer.parseInt(request.getParameter("i"));
        ContactList.remove(i);
        response.sendRedirect(request.getRequestURI());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO - Contatos</title>
    </head>
    <body>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h1>POO</h1>
        <h2>Contatos</h2>
        <form>
            Name: <input type="text" name="name" />
            Email: <input type="text" name="email" />
            Telefone: <input type="text" name="tel" />
            <input type="submit" value="Adicionar" name="add" />
        </form>
        <hr/>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Comandos</th>
            </tr>
            <%for (int i = 0; i < ContactList.size(); i++) {%>
            <tr>
                <td><%= i%></td>
                <% Contato u = ContactList.get(i);%>
                <td><%= u.getName()%></td>
                <td><%= u.getEmail()%></td>
                <td><%= u.getTel()%></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%= i%>"/>
                        <input type="submit" name="remove" value="Remover"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
