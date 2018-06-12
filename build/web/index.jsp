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

    <title>DIVAL - Inicio</title>

    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.min.css">                
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      
    <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/hero-slider-style.css">                              
    <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   
    <!-- Templatemo style -->
    <link rel="shortcut icon" href="favicon.ico">


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
                        
                        <a class="navbar-brand text-xs-center" href="index.jsp"><img src="img/DIVALlogo.png" height="100" alt="Garapiñados, Botanas y Frituras: Dival" title="Garapiñados, Botanas y Frituras 'DIVAL'">Bienvenido(a): Admin</a>

                        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item active selected">
                                    <a class="nav-link" href="#0" data-no="1">Inicio<span class="sr-only">(current)</span></a>
                                </li>                                
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="2">Secciones</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="3">Personal</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="4">Ayuda</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="5">Acerca De</a>
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
                        <div class="container-fluid js-tm-page-content" data-page-no="2" data-page-type="gallery">
                            <div class="tm-img-gallery-container">   
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <div class="tm-flex">
                                                    <div class="tm-bg-white-translucent text-xs-center tm-textbox tm-textbox-padding tm-white-box-margin-b">
                                                        <h3 class="tm-text-title"><i class="fa fa-heart"></i>  Accesos Directos</h3>
                                                        <p class="tm-text">Atajos a herramientas y utilidades que consideramos podrían servir en cualquier momento.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>            
                                <div class="tm-img-gallery gallery-one">  
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/notes-shortcut.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Notas <span>Rápidas</span></h2>
                                                <p class="tm-figure-description">Bloc de Notas y Recordatorios en <b>Google Keep</b></p>
                                                <a href="https://keep.google.com" target="_blank">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/calc-shortcut.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Calculadora</span></h2>
                                                <p class="tm-figure-description">Para no hacer más cuentas al aire</p>
                                                <a href="https://www.google.es/search?q=calculadora" target="_blank">ir</a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/fb-shortcut.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Administrar Página <span>de Facebook</span></h2>
                                                <p class="tm-figure-description">Mensajes recibidos, notificaciones y publicaciones</p>
                                                <a href="https://www.facebook.com/DIVALBotanas/" target="_blank">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/insta-shortcut.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Administrar Cuenta <span>de Instagram</span></h2>
                                                <p class="tm-figure-description">Publicidad, fotografías y anuncios [PRÓXIMAMENTE]</p>
                                                <a href="#" target="_blank">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>                                                                          
                                </div>                                 
                            </div>
                        </div>                                                    
                    </div>
                </li>
                
                <!-- Pestaña 2, Secciones -->
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
                                            <img src="img/tm-img-05-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Administración</span></h2>
                                                <p class="tm-figure-description">Toda la información importante con relación al negocio.</p>
                                                <a href="img/tm-img-05.jpg">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-06-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Producción</span></h2>
                                                <p class="tm-figure-description">Gestión del Almacén, Inventario, Ingredientes, entre otros... </p>
                                                <a href="vistas/Produccion.jsp">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-07-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Contabilidad</span></h2>
                                                <p class="tm-figure-description">Compras, Ventas, Información de Clientes y Facturas, Proveedores, etc.</p>
                                                <a href="img/tm-img-07.jpg">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-08-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Organización</span></h2>
                                                <p class="tm-figure-description">Categorías, Presentaciones, Recetas, todo en el orden que lo pondrá más fácil para los clientes.</p>
                                                <a href="img/tm-img-08.jpg">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-09-tn.jpg" alt="Image" class="img-fluid tm-img">
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

                <!-- Pestaña 3, Personal -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="4" data-page-type="gallery">                        
                            <div class="tm-img-gallery-container tm-img-gallery-container-3">
                                <div class="tm-img-gallery gallery-three">
                                        <div class="row">
                                                <div class="col-xs-12">
                                                    <div class="tm-flex">
                                                        <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-padding tm-white-box-margin-b">
                                                            <p class="tm-text"><i class="fa fa-info-circle"></i>  [ En este apartado hay opciones relacionadas con los usuarios y con lo que puedan (o no) interactuar en las secciones de este sistema. ] </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-11-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Cuenta de <span>Administrador</span></h2>
                                                <p class="tm-figure-description">Información, Detalles y Contraseña de la cuenta maestra</p>
                                                <a href="img/tm-img-11.jpg">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-12-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Responsable(s) de <span>Producción</span></h2>
                                                <p class="tm-figure-description">La gente especializada en poner el sazón que tanto nos gusta</p>
                                                <a href="img/tm-img-12.jpg">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-13-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Responsable(s) de <span>Contabilidad</span></h2>
                                                <p class="tm-figure-description">Los ingresos obtenidos y mejor aprovechados en manos de gente de confianza</p>
                                                <a href="img/tm-img-13.jpg">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-14-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Vendedores y <span>Distribuidores</span></h2>
                                                <p class="tm-figure-description">Los que contribuyen a hacernos llegar a más personas</p>
                                                <a href="img/tm-img-14.jpg">ir</a>
                                            </figcaption>           
                                        </figure>
                                    </div>                                                                                               
                                </div>                                 
                            </div> <!-- .tm-img-gallery-container -->
                        </div>         
                    </div>  
                </li>

                <!-- Pestaña 4, Ayuda -->
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

                <!-- Pestaña 5, Acerca De -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content tm-page-pad" data-page-no="6">
                            <div class="tm-contact-page">                          
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="tm-flex tm-contact-container">                                
                                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                                <h2 class="tm-text-title text-xs-center">Un poco más sobre este proyecto</h2>
                                                <p class="tm-text">El desarrollo de este Sistema ha sido el resultado del seguimiento de tres experiencias educativas sumamente importantes para el desarrollo de competencias que busca formar el programa de estudios del que son participantes los autores.</p>
                                                <h3 class="tm-contact-info text-xs-center"><b>Ingeniería de Software</b></h3><br>                                                
                                                <h3 class="tm-contact-info text-xs-center"><b>Tópicos Avanzados de Informática</b></h3><br>
                                                <h3 class="tm-contact-info text-xs-center"><b>Diseño de Aplicaciones Web</b></h3><br>
                                                <br><p class="tm-text">Con este se pretende facilitar el diario operar del negocio de Garapiñados, Botanas y Frituras "DIVAL", e incrementar su productividad al automatizar las tareas repetitivas de intercambio de información mediante la actualización constante de los datos almacenados, además de ponerlos a su disposición para sus posteriores consultas.</p>

                                            </div>

                                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                                <h2 class="tm-contact-info text-xs-center"><b>Facultad de Ingeniería Eléctrica y Electrónica</b></h2>
                                                <div id="UVLogo">
                                                    <img src="img/UVLogo.png" alt="Logo UV" class="img-fluid tm-img">
                                                </div><br>
                                                <h3 class="tm-contact-info text-xs-center">Programa Educativo de <b>Ingeniería Informática</b><br><br>Región Veracruz / Boca del Río</h3><br><br>  
                                                <br><h3 class="tm-contact-info text-xs-center">Última Actualización: <b>31/Mayo/2018</b></h3><br><br>
                                                <p class="tm-text text-xs-right">Agradecemos ampliamente a los propietarios de este establecimiento por darnos la oportunidad de realizar el presente proyecto, para beneficio de nuestro programa de estudios, como para su administración y desempeño laboral. Quedamos a su entera disposición:</p>
                                            </div>

                                        </div>

                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="tm-flex">
                                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                                                <h2 class="tm-text-title text-xs-left">Balbina Renata Rodríguez Leyton</h2>
                                                <a class="tm-text" href="https://www.facebook.com/Balby.Reny" target="_blank">Balbina Renata R. Leyton en Facebook</a><br>
                                                <a class="tm-text" href="mailto:Renata21-1997@live.com.mx" target="_blank">Renata21-1997@live.com.mx</a><br>
                                                <a class="tm-text" href="mailto:zS15001353@estudiantes.uv.mx" target="_blank">zS15001353@estudiantes.uv.mx</a>

                                            </div>
                                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                                                <h2 class="tm-text-title text-xs-left">Luis Adolfo Bárcenas Barradas</h2>
                                                <a class="tm-text" href="https://www.facebook.com/luis.guerrerobarradas" target="_blank">Luis Guerrero Barradas en Facebook</a><br>
                                                <a class="tm-text" href="mailto:becho_0528@hotmail.com" target="_blank">becho_0528@hotmail.com</a><br>
                                                <a class="tm-text" href="mailto:zS15001373@estudiantes.uv.mx" target="_blank">zS15001373@estudiantes.uv.mx</a>

                                            </div>
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

                <a class="tm-footer-text" href="vistas/login.jsp" target="_parent">Cerrar Sesión</a>

            </footer>

            
                    
        </div> <!-- .cd-hero -->
        

        <!-- Preloader al inicio, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
        <div id="loader-wrapper">
            
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

        </div>
        
        <!-- cargar JScripts -->
        <script src="js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) --> 
        <script src="js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
        <script src="js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
        
        <script>

            function adjustHeightOfPage(pageNo) {

                var offset = 80;
                var pageContentHeight = 0;

                var pageType = $('div[data-page-no="' + pageNo + '"]').data("page-type");

                if( pageType != undefined && pageType == "gallery") {
                    pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .tm-img-gallery-container").height();
                }
                else {
                    pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height();
                }

                if($(window).width() >= 992) { offset = 120; }
                else if($(window).width() < 480) { offset = 40; }
               
                // Get the page height
                var totalPageHeight = 15 + $('.cd-slider-nav').height()
                                        + pageContentHeight + offset
                                        + $('.tm-footer').height();

                // Adjust layout based on page height and window height
                if(totalPageHeight > $(window).height()) 
                {
                    $('.cd-hero-slider').addClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
                }
                else 
                {
                    $('.cd-hero-slider').removeClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
                }
            }

            /*
                Everything is loaded including images.
            */
            $(window).load(function(){

                adjustHeightOfPage(1); // Adjust page height


                /* Collapse menu after click 
                -----------------------------------------*/
                $('#tmNavbar a').click(function(){
                    $('#tmNavbar').collapse('hide');

                    adjustHeightOfPage($(this).data("no")); // Adjust page height       
                });

                /* Browser resized 
                -----------------------------------------*/
                $( window ).resize(function() {
                    var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");
                    
                    // wait 3 seconds
                    setTimeout(function() {
                        adjustHeightOfPage( currentPageNo );
                    }, 1000);
                    
                });
        
                // Remover preloader (https://ihatetomatoes.net/create-custom-preloading-screen/)
                $('body').addClass('loaded');      
            });

            
        </script>        
    </body>
</html>