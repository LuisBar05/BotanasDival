<%--
    Document   : admin's index
    Created on : 24/05/2018, 01:21:33 PM
    Author     : Renata (@BalbyReny)
--%>
<%@ page import="POJOS.*"%>
<%@ page language="java" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="Controller.*" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>DIVAL - Producción</title>

        <!-- load stylesheets -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
        <!-- Google web font "Open Sans" -->
        <link rel="stylesheet" href="../font-awesome-4.5.0/css/font-awesome.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <!-- Bootstrap style -->
        <link rel="stylesheet" href="../css/hero-slider-style.css">
        <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
        <link rel="stylesheet" href="../css/templatemo-style.css">
        <!-- Templatemo style -->
        <link rel="shortcut icon" href="../favicon.ico">


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->

    </head>

    <body>

        <!-- Contenido -->
        <div class="cd-hero">

            <!-- Navegación -->
            <div class="cd-slider-nav">
                <nav class="navbar">
                    <div class="tm-navbar-bg">

                        <a class="navbar-brand text-xs-center" href="../index.jsp"><img src="../img/DIVALlogo.png" height="100" alt="Garapiñados, Botanas y Frituras: Dival" title="Garapiñados, Botanas y Frituras 'DIVAL'">Bienvenido(a): Admin</a>

                        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item active selected">
                                    <a class="nav-link" href="#0" data-no="1">Producción<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="2">Almacén</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="3">Ingredientes</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="4">Inventario</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="5">Ayuda</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </nav>
            </div>

            <ul class="cd-hero-slider">

                <!-- Pestaña 1, Inicio -->
                <li class="selected">
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="1" data-page-type="gallery">
                            <div class="tm-img-gallery-container">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="tm-flex">
                                            <div class="tm-bg-white-translucent text-xs-center tm-textbox tm-textbox-padding tm-white-box-margin-b">
                                                <h3 class="tm-text-title">Estás aquí: <strong>Secciones</strong> <i class="fa fa-chevron-right"></i> <strong>Producción</strong></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="tm-3-col-container">
                                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 tm-3-col-textbox">
                                            <div class="text-xs-left tm-textbox tm-textbox-padding tm-bg-white-translucent tm-3-col-textbox-inner">
                                                <i class="fa fa-4x fa-archive tm-home-fa"></i>
                                                <h2 class="tm-text-title">Almacén</h2>
                                                <p class="tm-text">El almacén está destinado a guardar los Ingredientes que de forma recurrente se compran, y siguen en espera de ser utilizados para realizar los productos.<br>(En otras palabras, la <strong>Alacena</strong>).</p>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 tm-3-col-textbox">
                                            <div class="text-xs-left tm-textbox tm-textbox-padding tm-bg-white-translucent tm-3-col-textbox-inner">
                                                <i class="fa fa-4x fa-barcode tm-home-fa"></i>
                                                <h2 class="tm-text-title">Ingredientes</h2>
                                                <p class="tm-text">Registro de los Ingredientes utilizados para preparar cada una de las recetas que se ofrecen aquí. Incluye información adicional sobre el lugar donde se adquieren o el precio de compra de cada uno.</p>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 tm-3-col-textbox">
                                            <div class="text-xs-left tm-textbox tm-textbox-padding tm-bg-white-translucent tm-3-col-textbox-inner">
                                                <i class="fa fa-4x fa-shopping-basket tm-home-fa"></i>
                                                <h2 class="tm-text-title">Inventario</h2>
                                                <p class="tm-text">Productos terminados, listos y en espera de venderse al cliente.<br>(<strong>Estantería, Stock</strong>).<br>Este es un lugar temporal, no es posible mantener los productos aquí, por más de 3 meses.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </li>

                <!-- Pestaña 2, Secciones -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content tm-page-pad" data-page-no="2">
                            <div class="tm-contact-page">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="tm-flex tm-contact-container">
                                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                                <p class="tm-text">Para añadir ingredientes nuevos al almacén, complete los datos correspondientes al apartado "Agregar nuevo registro".</p>

                                                <button class="collapsible tm-submit-btn">Agregar nuevo registro</button>
                                                <!-- form (nuevo registro) -->
                                                <div class="content tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding"  style="display: none;">
                                                    <form action="ProcessFormAlmacen.jsp" method="post" class="tm-contact-form">

                                                        <div class="form-group">
                                                            <select name="ingrediente" class="form-control" required>
                                                                <option value="">Ingrediente</option>
                                                                <%
                                                                    List<Ingredientes> ingredientes = ConsultarDB.getConsulta("ingredientes");

                                                                    for (Ingredientes ingred : ingredientes) {
                                                                        out.println("<option value=" + ingred.getIdIngred() + ">" + ingred.getNombreIngred() + " (Cant: " + ingred.getCantidad() + ")</option>");
                                                                    }
                                                                %>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <input type="number" id="cantidad" name="cantidad" class="form-control" placeholder="Cantidad:"  required/>
                                                        </div>

                                                        <div class="form-group">
                                                            <input type="date" id="fechaCaducidad" name="fechaCaducidad" class="form-control" placeholder="Fecha de Caducidad:"  required/>
                                                        </div>

                                                        <div class="form-group">
                                                            <select name="status" class="form-control" required>
                                                                <option value="">Status:</option>
                                                                <%
                                                                    List<Status> status = ConsultarDB.getConsulta("status");

                                                                    for (Status sta : status) {
                                                                        out.println("<option value=" + sta.getStatus() + ">" + sta.getDescripcionStatus() + "</option>");
                                                                    }
                                                                %>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <textarea id="observaciones" name="observaciones" class="form-control" rows="3" placeholder="Observaciones:"></textarea>
                                                        </div>

                                                        <button type="submit" class="pull-xs-right tm-submit-btn">Guardar</button>

                                                    </form>
                                                </div>

                                                <p><br></p>
                                                <p class="tm-text">Para editar los datos de un registro existente, seleccione uno de la y a continuación de click en el boton "Editar registro" para modificarlo.</p>
                                                <button class="collapsible tm-submit-btn">Editar registro</button>
                                                <!-- form (editar registro) -->
                                                <div class="content tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding" style="display: none;">
                                                    <form action="ProcessUpdateFormAlmacen.jsp" method="post" class="tm-contact-form">
                                                        <div class="form-group">
                                                            <select name="idAlmacen" class="form-control" required>
                                                                <option value="">No. Registro</option>
                                                                <%
                                                                    List<Almacen> listAlm = ConsultarDB.getConsulta("almacen");
                                                                    for (Almacen alm : listAlm) {
                                                                        out.println("<option value=" + alm.getIdAlmacen() + ">" + alm.getIdAlmacen() + "</option>");
                                                                    }
                                                                %>
                                                            </select>
                                                        </div>

                                                        <button type="submit" class="collapsible tm-submit-btn">Obtener valores</button>
                                                        <div class="content tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding" style="display: none;">

                                                            <div class="form-group">
                                                                <select name="ingrediente" class="form-control" required>
                                                                    <option value="">Ingrediente</option>
                                                                    <%
                                                                        List<Ingredientes> ingredientes2 = ConsultarDB.getConsulta("ingredientes");

                                                                        for (Ingredientes ingred : ingredientes2) {
                                                                            out.println("<option value=" + ingred.getIdIngred() + ">" + ingred.getNombreIngred() + " (Cant: " + ingred.getCantidad() + ")</option>");
                                                                        }
                                                                    %>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <input type="number" id="camtidad" name="cantidad" class="form-control" placeholder="Cantidad" required/>
                                                            </div>

                                                            <div class="form-group">
                                                                <input type="date" id="fechaCaducidad" name="fechaCaducidad" class="form-control" placeholder="Fecha de Caducidad:"  required/>
                                                            </div>

                                                            <div class="form-group">
                                                                <select name="status" class="form-control" required>
                                                                    <option value="">Status:</option>
                                                                    <%
                                                                        List<Status> stat = ConsultarDB.getConsulta("status");

                                                                        for (Status sta : stat) {
                                                                            out.println("<option value=" + sta.getStatus() + ">" + sta.getDescripcionStatus() + "</option>");
                                                                        }
                                                                    %>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <textarea id="observaciones" name="observaciones" class="form-control" rows="3" placeholder="Observaciones:" ></textarea>
                                                            </div>

                                                            <button type="submit" class="pull-xs-right tm-submit-btn">Guardar cambios</button>
                                                        </div>
                                                    </form>
                                                </div>

                                                <script>
                                                    var coll = document.getElementsByClassName("collapsible");
                                                    var i;

                                                    for (i = 0; i < coll.length; i++) {
                                                        coll[i].addEventListener("click", function() {
                                                            this.classList.toggle("active");
                                                            var content = this.nextElementSibling;
                                                            if (content.style.display === "block") {
                                                                content.style.display = "none";
                                                            } else {
                                                                content.style.display = "block";
                                                            }
                                                        });
                                                    }
                                                </script>
                                            </div>

                                            <div class="tm-bg-white-translucent text-xs-center tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                                <h2 class="tm-contact-info">Registros en el Almacén:</h2>
                                                <div>
                                                    <table border="3" class="pull-xs-right text-xs-center">
                                                        <tr style="background-color:#FFD221">
                                                            <th> No. Registro </th>
                                                            <th> Ingrediente </th>
                                                            <th> Cantidad </th>
                                                            <th> Fecha de Caducidad </th>
                                                            <th> Status </th>
                                                        </tr>
                                                        <%  //List<Almacen> listAlm = ConsultarDB.getConsulta("almacen");
                                                            //List<Ingredientes> listIngred = ConsultarDB.getConsulta("ingredientes");

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
                                                </div>
                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div> <!-- .cd-full-width -->
                </li>

                <!-- Pestaña 3, Personal -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="3" data-page-type="gallery">
                            <div class="tm-img-gallery-container tm-img-gallery-container-2">
                                <div class="tm-img-gallery gallery-two">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="tm-flex">
                                                <div class="tm-bg-white-translucent text-xs-right tm-textbox tm-white-box-margin-b">
                                                    <p class="tm-text"><i class="fa fa-lightbulb-o"></i>      [ Navega por las siguientes secciones para conocer las opciones que contiene cada una de ellas... ]</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-05-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Administración</span></h2>
                                                <p class="tm-figure-description">Toda la información importante con relación al negocio.</p>
                                                <a href="img/tm-img-05.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-06-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Producción</span></h2>
                                                <p class="tm-figure-description">Gestión del Almacén, Inventario, Ingredientes, entre otros... </p>
                                                <a href="img/tm-img-06.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-07-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Contabilidad</span></h2>
                                                <p class="tm-figure-description">Compras, Ventas, Información de Clientes y Facturas, Proveedores, etc.</p>
                                                <a href="img/tm-img-07.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-08-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Organización</span></h2>
                                                <p class="tm-figure-description">Categorías, Presentaciones, Recetas, todo en el orden que lo pondrá más fácil para los clientes.</p>
                                                <a href="img/tm-img-08.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-09-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Distribución</span></h2>
                                                <p class="tm-figure-description">Seguimiento y registro de las ventas realizadas fuera del local, con ayuda de los vendedores. [PRÓXIMAMENTE]</p>
                                                <a href="img/tm-img-09.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Pestaña 4, Ayuda -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="4" data-page-type="gallery">
                            <div class="tm-img-gallery-container tm-img-gallery-container-2">
                                <div class="tm-img-gallery gallery-two">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="tm-flex">
                                                <div class="tm-bg-white-translucent text-xs-right tm-textbox tm-white-box-margin-b">
                                                    <p class="tm-text"><i class="fa fa-lightbulb-o"></i>      [ Navega por las siguientes secciones para conocer las opciones que contiene cada una de ellas... ]</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-05-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Administración</span></h2>
                                                <p class="tm-figure-description">Toda la información importante con relación al negocio.</p>
                                                <a href="img/tm-img-05.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-06-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Producción</span></h2>
                                                <p class="tm-figure-description">Gestión del Almacén, Inventario, Ingredientes, entre otros... </p>
                                                <a href="img/tm-img-06.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-07-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Contabilidad</span></h2>
                                                <p class="tm-figure-description">Compras, Ventas, Información de Clientes y Facturas, Proveedores, etc.</p>
                                                <a href="img/tm-img-07.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-08-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Organización</span></h2>
                                                <p class="tm-figure-description">Categorías, Presentaciones, Recetas, todo en el orden que lo pondrá más fácil para los clientes.</p>
                                                <a href="img/tm-img-08.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="../img/tm-img-09-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Distribución</span></h2>
                                                <p class="tm-figure-description">Seguimiento y registro de las ventas realizadas fuera del local, con ayuda de los vendedores. [PRÓXIMAMENTE]</p>
                                                <a href="img/tm-img-09.jpg">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Pestaña 5, Acerca De -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content tm-page-width" data-page-no="5">
                            <div class="row"><div class="col-xs-12"><div class="tm-flex"><p></p></div></div></div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="tm-flex">
                                        <div class="tm-bg-white-translucent text-xs-center tm-textbox tm-white-box-margin-b">
                                            <p class="tm-text"><i class="fa fa-paperclip"></i>  Una vez que el uso de este sistema te sea familiar, no necesitarás más ayuda. Sin embargo, esto siempre estará aquí como punto de partida para seguir explorando. No olvides en caso de tener alguna duda en específico, consultar el <b>Manual De Usuario</b> que fue proporcionado para conocer y utilizar todas las funcionalidades del sistema.<br> </p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="tm-flex">
                                        <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                                            <h2 class="tm-text-title">¿Te enredaste entre tanta página?</h2>
                                            <p class="tm-text">La barra de navegación ubicada en la parte superior de todas las páginas te indica exactamente en donde estás. Puedes dirigirte a otro sitio seleccionando el botón correspondiente a lo que quieres hacer.</p>
                                        </div>
                                        <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                                            <h2 class="tm-text-title">No pierdas de vista el Logo</h2>
                                            <p class="tm-text">El Logotipo ubicado en la parte izquierda de la barra de navegación te ayudará a regresar a la página de inicio. Si de repente no recuerdas dónde quedaba cierta sección o no quieres pasar por todas las páginas que ya visitaste para regresar a la principal, con un click bastará para volver a empezar.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div> <!-- .cd-full-width -->
                </li>
            </ul> <!-- .cd-hero-slider -->

            <!-- Pie de Páginas -->
            <footer class="tm-footer">
                <p class="tm-copyright-text">Copyright &copy; 2018 - Garapiñados, Botanas y Frituras "DIVAL"<br>
                    Facebook: <a href="https://www.facebook.com/DIVALBotanas/" class="tm-footer-link" target="_parent">@DIVALBotanas</a></p>

                <a class="tm-footer-text" href="about:blank" target="_parent">Cerrar Sesión</a>

            </footer>



        </div> <!-- .cd-hero -->


        <!-- Preloader al inicio, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
        <div id="loader-wrapper">

            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

        </div>

        <!-- cargar JScripts -->
        <script src="../js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) -->
        <script src="../js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
        <script src="../js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->

        <script>

                                                    function adjustHeightOfPage(pageNo) {

                                                        var offset = 80;
                                                        var pageContentHeight = 0;

                                                        var pageType = $('div[data-page-no="' + pageNo + '"]').data("page-type");

                                                        if (pageType != undefined && pageType == "gallery") {
                                                            pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .tm-img-gallery-container").height();
                                                        } else {
                                                            pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height();
                                                        }

                                                        if ($(window).width() >= 992) {
                                                            offset = 120;
                                                        } else if ($(window).width() < 480) {
                                                            offset = 40;
                                                        }

                                                        // Get the page height
                                                        var totalPageHeight = 15 + $('.cd-slider-nav').height()
                                                                + pageContentHeight + offset
                                                                + $('.tm-footer').height();

                                                        // Adjust layout based on page height and window height
                                                        if (totalPageHeight > $(window).height())
                                                        {
                                                            $('.cd-hero-slider').addClass('small-screen');
                                                            $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
                                                        } else
                                                        {
                                                            $('.cd-hero-slider').removeClass('small-screen');
                                                            $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
                                                        }
                                                    }

                                                    /*
                                                     Everything is loaded including images.
                                                     */
                                                    $(window).load(function() {

                                                        adjustHeightOfPage(1); // Adjust page height


                                                        /* Collapse menu after click
                                                         -----------------------------------------*/
                                                        $('#tmNavbar a').click(function() {
                                                            $('#tmNavbar').collapse('hide');

                                                            adjustHeightOfPage($(this).data("no")); // Adjust page height
                                                        });

                                                        /* Browser resized
                                                         -----------------------------------------*/
                                                        $(window).resize(function() {
                                                            var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");

                                                            // wait 3 seconds
                                                            setTimeout(function() {
                                                                adjustHeightOfPage(currentPageNo);
                                                            }, 1000);

                                                        });

                                                        // Remover preloader (https://ihatetomatoes.net/create-custom-preloading-screen/)
                                                        $('body').addClass('loaded');
                                                    });


        </script>
    </body>
</html>