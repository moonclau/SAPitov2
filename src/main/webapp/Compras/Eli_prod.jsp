<%-- 
    Document   : Eli_prod
    Created on : 1/10/2018, 11:23:10 PM
    Author     : Marii y Erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../Recursos/css/Compras.css" rel="stylesheet" type="text/css"/>
        <script src="../Recursos/js/compras.js"> </script>

        <link href="../CSS/compras.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../JS/compras.js"></script>
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
                        <form class="form-inline my-2 my-lg-0" action="../CerrarSesion">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>                                           
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
                                <h3>Buscar&nbsp;Proveedor</h3>
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
                                    Por&nbsp;Clave
                            </label>
                           </div><br>
                           <center><input type="text" name="rfcprov" placeholder="Clave" class="form-control" id="codprod" required></center>
                            <div>
                                <br>
                            </div>
                            <center><input type="submit" value="Buscar" style="background-color:#3366FF" name="buscar" class="btn btn-primary"></center>
                            <br>
                        </form>

                        <form method="POST" action="Nuevo_prod.jsp" >
                            <div>
                            <br>
                            </div>
                            <center><div id="titulo" class="col-12">
                                <h3>Proveedor</h3>
                                </div></center><br>
                            <center><input type="submit" value="Agregar"  name="nuevo" class="btn btn-success"></center>      
                            </form><div><br></div>
                            <form method="POST" action="Eli_prod.jsp" >                                
                            <center><input type="submit" value="Eliminar"  name="eliminar" class="btn btn-success"></center>                              
                        </form>
                            <br>
                        <form method="POST" action="Edit_prod.jsp" >                                
                            <center><input type="submit" value="Editar"  name="editar" class="btn btn-success"></center>      
                        </form>
                        <br>
                    </div>   
                    
                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"><!-- Seccion central --> 
                        
                            <center><div>
                                    <h3>Eliminar Proveedor</h3>
                            </div></center>                       
                        <br>
                        <form action="" method="post" onsubmit="return elim_prov();"> 
                           <div class="row">
                               <div class="col-xs-6"></div>
                               <div class="col-xs-4">
                       <center><input type="text" name="rfcprov" placeholder="Clave" class="form-control" id="elimprov" > 
                           </div> 
                           <div class="col-xs-4">
                        <input type="submit" value="Buscar"  name="filtro" class="btn btn-success"></center>
                               </div>
                               
                                
                            </div>
                        </form>
                               <div><br><br></div>
                        
                        <center><div class="table-responsive " ><table class="table table-bordered">
                                    <thead>
    <tr >
        <th scope="col"><center>Clave</center></th>
      <th scope="col"><center>Razon social</center></th>
      <th scope="col"><center>RFC</center></th>      
       <th scope="col"><center>Direccion</center></th>
       <th scope="col"><center>Telefono</center></th>
       <th scope="col"><center>Correo</center></th>
       <th scope="col"><center>Cuenta contable</center></th>
       <th scope="col"><center>Credito</center></th>
       <th scope="col"><center>Días Crédito</center></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Dogger tools</td>
     <td>FGDHSDJH78634CR0LR</td>    
     <td>col. margaritas </td>
     <td>7223456712</td>
     <td>doggertools@gmsil.com</td>
     <td>10.11</td>
     <td>$50,000</td>
     <td>12</td>
    </tr>  
  </tbody>
                                </table></div></center>                      
                              
                        <br>
                        <form action="../Elim_prov" method="post" onsubmit="return editar_prov();"> 
                        
                            <center><input type="submit" value="Eliminar" style="background-color:#3366FF" name="buscar" class="btn btn-primary"></center>
                        </form>
                    </div>
                </div>
            </div>            
            
        </div>
         
    </body>
</html>

