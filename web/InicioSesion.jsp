<%-- 
    Document   : InicioSesion
    Created on : 30-mar-2016, 12:58:27
    Author     : XndyPxndx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8"></meta>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
        <title>Inicio de Sesion Muebles Tadeco</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"></link>
        <link rel="stylesheet" href="css/bootstrap.min.css"></link>
        <link rel="stylesheet" href="css/font-awesome.min.css"></link>
		<link rel="stylesheet" href="css/form-elements.css"></link>
        <link rel="stylesheet" href="css/style.css"></link>

      

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="ico/favicon.png"></link>
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png"></link>
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png"></link>
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png"></link>
        <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png"></link>

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Muebles Tadeco</strong></h1>
                            <div class="description">
                            	<p>
	                            	Inicio de Sesion para acceder a Configuraciones.
                                    <br>OPCION DISPONIBLE SOLO PARA ADMINISTRADORES</br>

                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Escriba su nombre de Usuario y Contraseña</h3>
                            		
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
                                <form role="form" class="login-form" method="POST" action="InicioSesion">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Nombre de Usuario</label>
                                                        <input type="text" name="form-username" placeholder="Nombre de Usuario..." class="form-username form-control" ></input>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Contraseña</label>
			                        	<input type="password" name="form-password" placeholder="Contraseña..." class="form-password form-control"  ></input>
			                        </div>
			                       <input type="submit" class="btn" value="Ingresar">

			                    </form>
		                    </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>
