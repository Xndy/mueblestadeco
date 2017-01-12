<%-- 
    Document   : contactocorrecto
    Created on : 10-abr-2016, 22:26:03
    Author     : XndyPxndx
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="utf-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <meta name="description" content="">
         <meta name="author" content="">

    <title>Contactenos - Muebles Tadeco</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/clean-blog.min.css" rel="stylesheet">
      <link href="css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
  
    <style>
        .img-entrada{
            align-content: center;
  width:80%;
  max-height: 500px !important;
}
        </style>
    
     <script type="text/javascript">
window.onload = function () {
document.sentMessage.subject.focus();
document.sentMessage.addEventListener('submit', validarFormulario);
}
 
function validarFormulario(evObject) {
evObject.preventDefault();
var todoCorrecto = true;
var formulario = document.sentMessage;
for (var i=0; i<formulario.length; i++) {
                if(formulario[i].type =='text'  ) {
                               if (formulario[i].value == null || formulario[i].value.length == 0 || /^\s*$/.test(formulario[i].value)){
                               alert ( ' Por favor Llene los Campos Solicitados');
                               todoCorrecto=false;
                               }
                }
                }
if (todoCorrecto ==true) {formulario.submit();}
}
 
</script>
        
       
    </head>
    <body>
        
   <div class="brand"><font face="harrington" color="black">Muebles Tadeco<br>Desde 1980</div></font>
    <div class="address-bar"><br>
        <font face="times" color="#9ED053"><i><b>
            RETAPIZAMOS, RELAQUEAMOS Y ACEPTAMOS PEDIDOS SOBRE CATÁLOGO
        </b></i></font></div>

    <!-- Navigation -->
 <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
           <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">Muebles Tadeco</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
           <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.html">Inicio</a>
                    </li>
                     <li>
                        <a href="Producto - copia.html">Productos</a>
                      </li> 
                     <li>
                        <a href="servicios.html">Servicios</a>
                      </li> 
                    <li>
                        <a href="quienesSomos.html">¿Quienes Somos?</a>
                    </li>                   
                    <li>
                        <a href="contacto.jsp">Contactenos</a>
                    </li>
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <div class="container">
   <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Contactenos
                        <strong>Muebles Tadeco</strong>
                    </h2>
                    <hr>
                </div>
                
                 <div class="col-md-6" >
                       <div class = "img-entrada">
                                <img class="img-responsive img-border" src="img/entrada.jpg" alt="">
                            </div>
                 </div>
                <div class="col-md-6">
                    <p>Telefonos:
                        <strong>093098668 / 042-389753</strong>
                    </p>
                    <p>Correo Electronico:
                        <strong>mueblestadeco@gmail.com</strong>
                    </p>
                    <p>Dirección:
                        <strong>Urdesa Central - 
                            <br>Av. Victor Emilio Estrada 821 e Higueras</strong>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    
      <div class="row">
            <div class="box">
                <div class="col-lg-12">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
       
                <p>¿Deseas contactarte conmigo? Llena el siguiente formulario y te responderemos lo mas pronto posible</p>
                
                <form name="sentMessage" novalidate form method="POST" action="EmailServlet" >
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Nombres</label>
                            <input type="text" class="form-control" placeholder="Nombres*" name="subject" required data-validation-required-message="Porfavor escriba su nombre">
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Correo Electronico</label>
                            <input type="email" class="form-control" placeholder="Correo Electronico*" name="to" required data-validation-required-message="Porfavor escriba su correo">
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Número Telefónico </label>
                            <input type="text" class="form-control" placeholder="Número Telefónico*" name="phone" required data-validation-required-message="Please enter your phone number.">
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Mensaje</label>
                            <textarea type="text" rows="5" class="form-control" placeholder="Mensaje*" name="body" required data-validation-required-message="Please enter a message."></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <br>
                    <div id="success"></div>
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <label style="color:green">Mensaje Enviado Correctamente </label><br><br>
                            <input type="submit" class="btn btn-default" value="Enviar">
                        </div>    
                    </div>
                </form>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
        
   </div> 
      </div>
         <hr>
         
         
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="http://www.twitter.com">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.facebook.com">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="inicioSesion.html">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-sign-in fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">Copyright &copy; Your Website 2016</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
     <script src="js/jquery-1.7.2.min.js"></script>
        
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

        
        
        
        
        
        
    </body>
</html>
