<%--
    Document   : index
    Created on : 5/04/2018, 05:22:27 PM
    Author     : Luis
--%>
<%@page import="POJOS.*"%>
<%@ page language="java" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="Controller.*" %>
<!DOCTYPE html>

<html>
    <body>
        <h1>Consulta a base de datos</h1>
        <h3> TABLA VENTAS </h3>
        <table border="1">
            <tr>
                <td>IdVta</td>
                <td>Subtotal</td>
                <td>Impuesto</td>
                <td>Total</td>
                <td>Fecha</td>
                <td>Status</td>
            </tr>
            <%
                List<Ventas> listVta = ConsultarDB.getConsulta("ventas");
                for (int i = 0; i < listVta.size(); i++) {

                    out.println("<tr>");
                    out.println("<td>" + listVta.get(i).getIdVta() + "</td>");
                    out.println("<td>" + listVta.get(i).getSubtotal() + "</td>");
                    out.println("<td>" + listVta.get(i).getImpuesto() + "</td>");
                    out.println("<td>" + listVta.get(i).getTotalVta() + "</td>");
                    out.println("<td>" + listVta.get(i).getFechaVta() + "</td>");
                    out.println("<td>" + listVta.get(i).getStatus() + "</td>");
                    out.println("</tr>");
                }
            %>

        </table>

        <h3> TABLA COMPRAS </h3>
        <table border="3">
            <tr>
                <td>Subtotal</td>
                <td>Impuesto</td>
                <td>Total</td>
                <td>Fecha</td>
                <td>Status</td>
            </tr>
            <%
                List<Compras> listComp = ConsultarDB.getConsulta("compras");
                for (int i = 0; i < listComp.size(); i++) {

                    out.println("<tr>");
                    out.println("<td>" + listComp.get(i).getIdCompra() + "</td>");
                    out.println("<td>" + listComp.get(i).getSubtotal() + "</td>");
                    out.println("<td>" + listComp.get(i).getImpuesto() + "</td>");
                    out.println("<td>" + listComp.get(i).getTotalCompra() + "</td>");
                    out.println("<td>" + listComp.get(i).getFechaCompra() + "</td>");
                    out.println("<td>" + listComp.get(i).getStatus() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>

        <h3> TABLA ALMACÉN </h3>
        <table border="5">
            <tr>
                <td>Id Almacén</td>
                <td>Id Ingrediente </td>
                <td>Cantidad</td>
                <td>Fecha Caducidad</td>
                <td>Status</td>
            </tr>
            <%                List<Almacen> listAlm = ConsultarDB.getConsulta("almacen");
                for (int i = 0; i < listAlm.size(); i++) {

                    out.println("<tr>");
                    out.println("<td>" + listAlm.get(i).getIdAlmacen() + "</td>");
                    out.println("<td>" + listAlm.get(i).getIdIngred() + "</td>");
                    out.println("<td>" + listAlm.get(i).getCantidad() + "</td>");
                    out.println("<td>" + listAlm.get(i).getFechaCaducidad() + "</td>");
                    out.println("<td>" + listAlm.get(i).getStatus() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>

        <h3> TABLA CLIENTES FACTURA </h3>
        <table border="8">
            <tr>
                <td>Id_Cliente</td>
                <td>Nombre(s)</td>
                <td>Apellido_Materno</td>
                <td>Apellido_Paterno</td>
                <td>Domicilio</td>
                <td>RFC</td>
                <td>Teléfono</td>
                <td>Email</td>
                <td>Status</td>
            </tr>
            <%
                List<ClientesFactura> listClient = ConsultarDB.getConsulta("clientes_factura");
                for (int i = 0; i < listClient.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + listClient.get(i).getIdClient() + "</td>");
                    out.println("<td>" + listClient.get(i).getNombre() + "</td>");
                    out.println("<td>" + listClient.get(i).getApeMat() + "</td>");
                    out.println("<td>" + listClient.get(i).getApePat() + "</td>");
                    out.println("<td>" + listClient.get(i).getRFC() + "</td>");
                    out.println("<td>" + listClient.get(i).getTelefono() + "</td>");
                    out.println("<td>" + listClient.get(i).getEmail() + "</td>");
                    out.println("<td>" + listClient.get(i).getStatus() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>


        <h3> TABLA UNIDADES DE MEDIDA </h3>
        <table border="5">
            <tr>
                <td>Id_UniMed</td>
                <td>Descripción</td>
                <td>Status</td>
            </tr>
            <%
                List<UnidadesMedida> listUniMed = ConsultarDB.getConsulta("unidades_medida");
                for (int i = 0; i < listUniMed.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + listUniMed.get(i).getIdUniMed() + "</td>");
                    out.println("<td>" + listUniMed.get(i).getDescripcionUniMed() + "</td>");
                    out.println("<td>" + listUniMed.get(i).getStatus() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>

        <h3> TABLA STATUS</h3>
        <table border="5">
            <tr>
                <td>Id_Status</td>
                <td>Status</td>
                <td>Descripción</td>
            </tr>
            <%
                List<Status> listStatus = ConsultarDB.getConsulta("status");
                for (int i = 0; i < listStatus.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + listStatus.get(i).getIdStatus() + "</td>");
                    out.println("<td>" + listStatus.get(i).getStatus() + "</td>");
                    out.println("<td>" + listStatus.get(i).getDescripcionStatus() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>

        <h3> TABLA PROVEEDORES</h3>
        <table border="5">
            <tr>
                <td>Id_Proveedor</td>
                <td>Nombre</td>
                <td>Domicilio</td>
                <td>Ciudad</td>
                <td>Teléfono</td>
                <td>Código_Postal</td>
                <td>Status</td>
            </tr>
            <%
                List<Proveedores> listProv = ConsultarDB.getConsulta("proveedores");
                for (int i = 0; i < listProv.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + listProv.get(i).getIdProv() + "</td>");
                    out.println("<td>" + listProv.get(i).getNombreProv() + "</td>");
                    out.println("<td>" + listProv.get(i).getDomicilio() + "</td>");
                    out.println("<td>" + listProv.get(i).getCiudad() + "</td>");
                    out.println("<td>" + listProv.get(i).getTelefono() + "</td>");
                    out.println("<td>" + listProv.get(i).getCP() + "</td>");
                    out.println("<td>" + listProv.get(i).getStatus() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>

        <h3> TABLA CATEGORÍAS</h3>
        <table border="5">
            <tr>
                <td>Id_Categoría</td>
                <td>Nombre</td>
                <td>Status</td>
            </tr>

            <%  List<Categorias> listCat = ConsultarDB.getConsulta("categorias");
                for (int i = 0; i < listCat.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + listCat.get(i).getIdCat() + "</td>");
                    out.println("<td>" + listCat.get(i).getNombreCat() + "</td>");
                    out.println("<td>" + listCat.get(i).getStatus() + "</td>");
                    out.println("</tr>");
                }
            %>

        </table>

                <form action="chrome://newtab" method="POST">
                    <div>
                        <label for="name"> Nombre: </label>
                        <input type="text" name="name" required/>
                    </div>
                    <div>
                        <label for="mail"> Email: </label>
                        <input type="email" name="mail" required/>
                    </div>
                    <div>
                        <label for="msg"> Mensaje: </label>
                        <textarea name="msg"> </textarea>
                    </div>
                    <div class="button">
                        <button type="submit"> Registrar </button>
                    </div>    
                </form>
               <!-- <%
                    //InsertarDB.insertarRegistro("unidades_medida");
                    //InsertarDB.insertarRegistro("detalle_vta");
                %> -->
        </body>
</html>