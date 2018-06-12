<%--
    Document   : ProcessFormCompras
    Created on : 31/05/2018, 03:33:28 PM
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
            inserted.add(request.getParameter("subtotal"));
            inserted.add(request.getParameter("impuesto"));
            inserted.add(request.getParameter("totalCompra"));
            inserted.add(request.getParameter("fechaCompra"));
            inserted.add(request.getParameter("status"));
            InsertarDB.insertarRegistro("compras", inserted);
        %>

        <h3> TABLA COMPRAS </h3>
        <table border="8">
            <tr>
                <td>Subtotal</td>
                <td>Impuesto</td>
                <td>Total_Compra</td>
                <td>Fecha_Compra</td>
                <td>Status</td>
                <td></td>
            </tr>
            <%
                for (String valor : inserted) {

                    out.println("<td>" + valor + "</td>");
                }
            %>
        </table>
    </body>
</html>
