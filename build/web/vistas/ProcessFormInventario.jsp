<%--
    Document   : ProcessFormInventario
    Created on : 31/05/2018, 04:32:21 PM
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
            inserted.add(request.getParameter("fechaRegistro"));
            inserted.add(request.getParameter("codProduct"));
            inserted.add(request.getParameter("cantidad"));
            inserted.add(request.getParameter("fechaElaboracion"));
            inserted.add(request.getParameter("fechaCaducidad"));
            inserted.add(request.getParameter("status"));
            InsertarDB.insertarRegistro("inventario", inserted);
        %>

        <h3> TABLA INGREDIENTES </h3>
        <table border="8">
            <tr>
                <td>FechaRegistro</td>
                <td>Cod_Producto</td>
                <td>Cantidad</td>
                <td>Fecha_Elaboración</td>
                <td>Fecha_Caducidad</td>
                <td>Status</td>
            </tr>
            <%
                for (String valor : inserted) {

                    out.println("<td>" + valor + "</td>");
                }
            %>
    </body>
</html>
