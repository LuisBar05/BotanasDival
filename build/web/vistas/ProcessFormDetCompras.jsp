<%--
    Document   : ProcessFormDetCompras
    Created on : 31/05/2018, 03:45:19 PM
    Author     : Luis
--%>

<%@page import="Controller.InsertarDB"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<String> inserted = new LinkedList<>();
            inserted.add(request.getParameter("idCompra"));
            inserted.add(request.getParameter("ingrediente"));
            inserted.add(request.getParameter("cantidad"));
            inserted.add(request.getParameter("status"));
            InsertarDB.insertarRegistro("detalle_compra", inserted);
        %>

        <h3> TABLA DETALLE_COMPRAS </h3>
        <table border="8">
            <tr>
                <td>Id_Compra</td>
                <td>Ingrediente</td>
                <td>Cantidad</td>
                <td>Status</td>
                <td></td>
            </tr>
            <%
                for (String valor : inserted) {

                    out.println("<td>" + valor + "</td>");
                }
            %>
    </body>
</html>
