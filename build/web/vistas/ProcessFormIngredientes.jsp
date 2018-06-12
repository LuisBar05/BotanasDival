<%--
    Document   : ProcessFormIngredientes
    Created on : 31/05/2018, 04:20:17 PM
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
            inserted.add(request.getParameter("nombreIngred"));
            inserted.add(request.getParameter("cantidad"));
            inserted.add(request.getParameter("idUniMed"));
            inserted.add(request.getParameter("idProv"));
            inserted.add(request.getParameter("precioCompra"));
            inserted.add(request.getParameter("status"));
            InsertarDB.insertarRegistro("ingredientes", inserted);
        %>

        <h3> TABLA INGREDIENTES </h3>
        <table border="8">
            <tr>
                <td>Ingrediente</td>
                <td>Cantidad</td>
                <td>UnidadMedida</td>
                <td>Proveedor</td>
                <td>PrecioCompra</td>
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
