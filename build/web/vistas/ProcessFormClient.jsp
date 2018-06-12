<%--
    Document   : procesarFormStatus
    Created on : 31/05/2018, 01:45:20 PM
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
            inserted.add(request.getParameter("apePat"));
            inserted.add(request.getParameter("apeMat"));
            inserted.add(request.getParameter("name"));
            inserted.add(request.getParameter("rfc"));
            inserted.add(request.getParameter("telefono"));
            inserted.add(request.getParameter("email"));
            inserted.add(request.getParameter("status"));
            InsertarDB.insertarRegistro("clientes_factura", inserted);
        %>

        <h3> TABLA CLIENTES FACTURA </h3>
        <table border="8">
            <tr>
                <td>Apellido_Paterno</td>
                <td>Apellido_Materno</td>
                <td>Nombre</td>
                <td>RFC</td>
                <td>Teléfono</td>
                <td>Email</td>
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
