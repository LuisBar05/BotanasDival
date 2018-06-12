<%--
    Document   : ProcessUpdateFormAlmacen
    Created on : 12/06/2018, 02:04:02 PM
    Author     : Luis
--%>

<%@page import="Controller.ActualizarDB"%>
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
            List<String> changedRow = new LinkedList<>();
            changedRow.add(request.getParameter("idAlmacen"));
            changedRow.add(request.getParameter("ingrediente"));
            changedRow.add(request.getParameter("cantidad"));
            changedRow.add(request.getParameter("fechaCaducidad"));
            changedRow.add(request.getParameter("status"));
            ActualizarDB.actualizarRegistro("almacen", changedRow);
        %>

        <h3> TABLA ALMACEN </h3>
        <table border="8">
            <tr>
                <td>Id_Almacen</td>
                <td>Id_Ingredientes</td>
                <td>Cantidad</td>
                <td>Fecha_Caducidad</td>
                <td>Status</td>
                <td></td>
            </tr>
            <%
                for (String valor : changedRow) {

                    out.println("<td>" + valor + "</td>");
                }
            %>
        </table>
    </body>
</html>
