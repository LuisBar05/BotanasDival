<%--
    Document   : ProcessFormAlmacen
    Created on : 31/05/2018, 03:03:40 PM
    Author     : Luis
--%>

<%@page import="Controller.InsertarDB"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Refresh" content="4;url=Produccion.jsp">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Almacén Actualizado</title>

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
        <%
            List<String> inserted = new LinkedList<>();
            inserted.add(request.getParameter("ingrediente"));
            inserted.add(request.getParameter("cantidad"));
            inserted.add(request.getParameter("fechaCaducidad"));
            inserted.add(request.getParameter("status"));
            InsertarDB.insertarRegistro("almacen", inserted);
        %>
        <div class="cd-full-width">
            <div class="container-fluid js-tm-page-content" data-page-no="1" data-page-type="gallery">
                <div class="tm-img-gallery-container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="tm-flex">
                                <div class="tm-bg-white-translucent text-xs-center tm-textbox tm-textbox-padding tm-white-box-margin-b">
                                    <h3 class="tm-text-title">Los cambios en el Almacén se han guardado con éxito.<br> Regresando...</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
