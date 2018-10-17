<%-- 
    Document   : Nuevo_producto
    Created on : 2/10/2018, 08:26:13 AM
    Author     : Marii y Erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../CSS/estilos.css" rel="stylesheet">
        <script src="../JS/validaciones.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Recursos/Bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/Bootstrap/librerias/jquery-3.3.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/Bootstrap/js/bootstrap.js"></script>
        
        <title>Compras</title>
        
    </head>
    
    <body>
        
        <header class="sticky-top">
            
           <nav class="navbar navbar-expand-lg navbar-light barra">
                <a href="#" class="navbar-brand text-white">Compras</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#compras_navbar" aria-controls="compras_navbar" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="Compras.jsp" style="color: white">Proveedores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Productos.jsp" style="color: white">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="OrdenCompra.jsp" style="color: white">Orden&nbsp;de&nbsp;compra</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="List_com.jsp" style="color: white">Lista&nbsp;de&nbsp;Compras</a>
                        </li>                        
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item">
                            <a class="nav-link" href="" style="color: white">Salir</a>
                        </li>                                              
                    </ul>
                </div> 
            </nav>          

        </header>
        
        <div id="principal">
            <div class="container-fluid">
                 <div class="row">
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
                <div class="row">
                    <div style="background-color:#F5F5F5;" class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-style-5"> <!-- Seccion izquierda -->
                        <form method="POST" >
                            <center><div id="titulo" class="col-12">
                                <h3>Buscar&nbsp;Producto</h3>
                                </div></center>
                           <br>
                           <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                                    Todos
                            </label>
                           </div>
                           <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Por&nbsp;ID
                            </label>
                           </div><br>
                           <center><input type="number" name="idprod" placeholder="ID" class="form-control" id="codprod" required></center>
                            <div>
                                <br>
                            </div>
                            <center><input type="submit" value="Buscar" style="background-color:#3366FF" name="buscar" class="btn btn-primary"></center>
                            <br>
                        </form>

                        <form method="POST" action="Nuevo_producto.jsp" >
                            <div>
                            <br>
                            </div>
                            <center><div id="titulo" class="col-12">
                                <h3>Producto</h3>
                                </div></center><br>
                            <center><input type="submit" value="Agregar"  name="nuevo" class="btn btn-success"></center>      
                            </form><div><br></div>
                            <form method="POST" action="Edit_producto.jsp" >                                
                            <center><input type="submit" value="Editar"  name="editar" class="btn btn-success"></center>      
                        </form>
                        <br>
                    </div>   
                    
                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-10"><!-- Seccion central --> 
                       <div class="container">
                        <form action="" method="post" onsubmit="return agr_prov();">                
                            
                              <center><div>
                                    
                            </div></center>                       
                        <br>
                        <center> <h3>Nuevo Producto</h3></center>
                           <div class="row">
                              
                                   <br>
                                 <div class="col-xs-2"></div>
                               <div class="col-xs-2">
                                  
                               <center><input type="number" name="idprod" placeholder="ID" class="form-control" id="codprod" required></center>
                               <br>
                          <center><input type="text" name="nomprod" placeholder="Nombre" class="form-control" id="codprod" required></center>
                          <br>
                          <center><input type="number" name="com" placeholder="Precio Compra" class="form-control" id="codprod" required></center>
                          <br>
                          <center><input type="number" name="ven" placeholder="Precio venta" class="form-control" id="codprod" required></center>
                          <br>
                          <center><input type="text" name="corprov" placeholder="Proveedor" class="form-control" id="codprod" required></center>
                          <br>
                               <input type="submit" value="Agregar" style="background-color:#3366FF" name="filtro" class="btn btn-primary">
                               </div>                                 
                            </div>
                        <br>
                        <div </div>
                            
                        </form>
                    </div> 
                           
                    </div>
                </div>
            </div>            
            
        </div>
         
    </body>
</html>
