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
                <td></td>
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
                <td></td>
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
                <td></td>
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
                <td></td>
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
                <td></td>
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
                <td></td>
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
                <td></td>
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
                <td></td>
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

        <form action="ProcessFormClient.jsp" method="POST">
            <div>
                <input type="text" name="name" placeholder="Nombre" required />
            </div>
            <div>
                <input type="text" name="apePat" placeholder="Apellido Paterno" required/>
            </div>
            <div>
                <input type="text" name="apeMat" placeholder="Apellido Materno" required/>
            </div>
            <div>
                <input type="text" name="rfc" placeholder="RFC" required/>
            </div>
            <div>
                <input type="text" name="telefono" placeholder="Teléfono" required/>
            </div>
            <div>
                <input type="email" name="email" placeholder="Email" required/>
            </div>
            <div>
                <select name="status" required>
                    <option value=0> Status</option>
                    <%
                        List<Status> listSta = ConsultarDB.getConsulta("status");
                        int i = 1;

                        for (Status sta : listSta) {
                            out.println("<option value=" + sta.getStatus() + ">" + sta.getStatus() + "</option>");
                            i++;
                        }
                    %>
                </select>
            </div>
            <div class="button">
                <button type="submit"> Registrar </button>
        </form>


        <form action="ProcessFormAlmacen.jsp" method="POST">
            <div>
                <select name="ingrediente">
                    <option value=0>Ingrediente</option>
                    <%
                        List<Ingredientes> listIngred = ConsultarDB.getConsulta("ingredientes");
                        for (Ingredientes ingred : listIngred) {
                            out.println("<option value=" + ingred.getIdIngred() + ">" + ingred.getNombreIngred() + "</option>");

                        }
                    %>
                </select>
            </div>
            <div>
                <input type="text" name="cantidad" placeholder="Cantidad" required/>
            </div>
            <div>
                <input type="text" name="fechaCaducidad" placeholder="Fecha de Caducidad" required/>
            </div>
            <div>
                <select name="status" required>
                    <option value=0> Status</option>
                    <%
                        List<Status> listStat = ConsultarDB.getConsulta("status");

                        for (Status sta : listSta) {
                            out.println("<option value=" + sta.getStatus() + ">" + sta.getStatus() + "</option>");
                        }
                    %>
                </select>
            </div>
            <div class="button">
                <button type="submit"> Registrar </button>
        </form>

        <form action="ProcessFormCompras.jsp" method="POST">
            <div>
                <input type="text" name="subtotal" placeholder="Subtotal" required/>
            </div>
            <div>
                <input type="text" name="impuesto" placeholder="Impuesto" required/>
            </div>
            <div>
                <input type="text" name="totalCompra" placeholder="Total de Compra" required/>
            </div>
            <div>
                <input type="text" name="fechaCompra" placeholder="Fecha de Compra" required/>
            </div>
            <div>
                <select name="status" required>
                    <option value=0> Status</option>
                    <%
                        List<Status> listSt = ConsultarDB.getConsulta("status");

                        for (Status sta : listSt) {
                            out.println("<option value=" + sta.getStatus() + ">" + sta.getStatus() + "</option>");
                        }
                    %>
                </select>
            </div>
            <div class="button">
                <button type="submit"> Registrar </button>
        </form>

        <form action="ProcessFormDetCompras.jsp" method="POST">
            <div>
                <select name="idCompra">
                    <option value=0>Id_Compra</option>
                    <%
                        List<Compras> listCom = ConsultarDB.getConsulta("compras");
                        for (Compras c : listCom) {
                            out.println("<option value=" + c.getIdCompra() + ">" + c.getIdCompra() + "</option>");

                        }
                    %>
                </select>
            </div>
            <div>
                <select name="ingrediente">
                    <option value=0>Ingrediente</option>
                    <%
                        List<Ingredientes> listIngredi = ConsultarDB.getConsulta("ingredientes");
                        for (Ingredientes ingredi : listIngred) {
                            out.println("<option value=" + ingredi.getIdIngred() + ">" + ingredi.getNombreIngred() + "</option>");

                        }
                    %>
                </select>
            </div>
            <div>
                <input type="text" name="cantidad" placeholder="Cantidad" required/>
            </div>
            <div>
                <select name="status" required>
                    <option value=0> Status</option>
                    <%
                        List<Status> listS = ConsultarDB.getConsulta("status");

                        for (Status sta : listS) {
                            out.println("<option value=" + sta.getStatus() + ">" + sta.getStatus() + "</option>");
                        }
                    %>
                </select>
            </div>
            <div class="button">
                <button type="submit"> Registrar </button>
        </form>

        <form action="ProcessFormDetVentas.jsp" method="POST">
            <div>
                <select name="idVenta">
                    <option value=0>Id_Venta</option>
                    <%
                        List<Ventas> listVentas = ConsultarDB.getConsulta("ventas");
                        for (Ventas vta : listVentas) {
                            out.println("<option value=" + vta.getIdVta() + ">" + vta.getIdVta() + "</option>");

                        }
                    %>
                </select>
            </div>
            <div>
                <select name="codProduct">
                    <option value=0>Código_Producto</option>
                    <%
                        List<Productos> listProduct = ConsultarDB.getConsulta("productos");
                        for (Productos prod : listProduct) {
                            out.println("<option value=" + prod.getCodProduct() + ">" + prod.getCodProduct() + "</option>");

                        }
                    %>
                </select>
            </div>
            <div>
                <input type="text" name="cantidad" placeholder="Cantidad" required/>
            </div>
            <div>
                <select name="status" required>
                    <option value=0> Status</option>
                    <%
                        List<Status> listStatu = ConsultarDB.getConsulta("status");

                        for (Status sta : listStatu) {
                            out.println("<option value=" + sta.getStatus() + ">" + sta.getStatus() + "</option>");
                        }
                    %>
                </select>
            </div>
            <div class="button">
                <button type="submit"> Registrar </button>
        </form>

        <form action="ProcessFormIngredientes.jsp" method="POST">
            <div>
                <input type="text" name="nombreIngred" placeholder="Nombre del Ingrediente" required/>
            </div>
            <div>
                <input type="text" name="cantidad" placeholder="Cantidad" required/>
            </div>
            <div>
                <select name="idUniMed">
                    <option value=0>Unidad de Medida</option>
                    <%
                        List<UnidadesMedida> listUM = ConsultarDB.getConsulta("unidades_medida");
                        for (UnidadesMedida uniMed : listUM) {
                            out.println("<option value=" + uniMed.getIdUniMed() + ">" + uniMed.getDescripcionUniMed() + "</option>");

                        }
                    %>
                </select>
            </div>
            <div>
                <select name="idProv">
                    <option value=0>Proveedor</option>
                    <%
                        List<Proveedores> listProve = ConsultarDB.getConsulta("proveedores");
                        for (Proveedores p : listProve) {
                            out.println("<option value=" + p.getIdProv() + ">" + p.getNombreProv() + "</option>");

                        }
                    %>
                </select>
            </div>
            <div>
                <input type="text" name="precioCompra" placeholder="Precio de Compra" required/>
            </div>
            <div>
                <select name="status" required>
                    <option value=0> Status</option>
                    <%
                        List<Status> stat = ConsultarDB.getConsulta("status");

                        for (Status sta : stat) {
                            out.println("<option value=" + sta.getStatus() + ">" + sta.getStatus() + "</option>");
                        }
                    %>
                </select>
            </div>
            <div class="button">
                <button type="submit"> Registrar </button>
        </form>

        <form action="ProcessFormInventario.jsp" method="POST">
            <div>
                <input type="text" name="fechaRegistro" placeholder="Fecha de Registro" required/>
            </div>
            <div>
                <select name="codProduct">
                    <option value=0>Código_Producto</option>
                    <%
                        List<Productos> listProductos = ConsultarDB.getConsulta("productos");
                        for (Productos prod : listProductos) {
                            out.println("<option value=" + prod.getCodProduct() + ">" + prod.getCodProduct() + "</option>");

                        }
                    %>
                </select>
            </div>
            <div>
                <input type="text" name="cantidad" placeholder="Cantidad" required/>
            </div>
            <div>
                <input type="text" name="fechaElaboracion" placeholder="Fecha de Elaboración" required/>
            </div>
            <div>
                <input type="text" name="fechaCaducidad" placeholder="Fecha de Caducidad" required/>
            </div>
            <div>
                <select name="status" required>
                    <option value=0> Status</option>
                    <%
                        List<Status> status = ConsultarDB.getConsulta("status");

                        for (Status sta : status) {
                            out.println("<option value=" + sta.getStatus() + ">" + sta.getStatus() + "</option>");
                        }
                    %>
                </select>
            </div>
            <div class="button">
                <button type="submit"> Registrar </button>
        </form>

    </body>
</html>