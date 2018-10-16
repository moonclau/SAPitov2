<%-- 
    Document   : Mod_orden
    Created on : 15-oct-2018, 11:04:17
    Author     : Erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="../CSS/estilos.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="../JS/validaciones.js"></script>
        
        <link href="../Recursos/bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/bootstrap/librerias/jquery-3.3.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/bootstrap/js/bootstrap.js"></script>
        
        <title>Compras</title>
    </head>
    
    
    
    <body>
        
        
        <header class="sticky-top">
            
            <nav class="navbar navbar-expand-lg navbar-light barra">
                <div>
                    <a class="navbar-brand" style="color: white" >Compras</a> 
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
                </div>
            </nav>           

        </header>
        <!-- fin header -->
        
        
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
                   </div>
                </div>
            
        <!--fin seccion izquierda -->
        <!--inicio seccion central -->
        
        
        
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><!-- Seccion central --> 
                                                
                            <center><div>
                                    <h3>Editar Orden compra</h3>
                            </div></center>                       
                        <br>
                        <br>
                        
                       <div class="container">
                           <!-- Buscar-->
                           <form action="" method="post" onsubmit="return editar_prov();">  
                           <div class="row">
                               <div class="col-xs-2"></div>
                               <div class="col-xs-2">
                                   <center><input type="number" name="rfcprov" placeholder="Clave" class="form-control" id="codprod" required="Complete el campo"> </center>
                           </div>
                            
                           <div class="col-xs-1">
                               
                        
                        <input type="submit" value="Buscar"  name="buscar" class="btn btn-success"></center>
                         
                               </div>
                            </div></form>
                           <!-- fin Buscar-->
                           
                           
                          <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"><!-- Seccion central --> 
                                                
                            <center><div>
                                    <h3>Generar Orden compra</h3>
                            </div></center>                       
                        <br>
                        <br>
                        
                        <div class="container">
                        
                        <form action="../Generar_ordenCompra" method="post" onsubmit="return requisicionCompra();">                
                            
                            <div class="row">
                                 <div class="col-xs-6">
                               <div class="col-xs-5">
                          <center><input type="number" name="folio_ord" placeholder="folio" id="fol_ord" class="form-control" required="complete el campo"></center>
                               <br>
                          <center><input type="date" name="fecha" placeholder="fecha" id="fech_ord" class="form-control" required="complete el campo"></center>
                          <br>
                          <center><input type="date" name="fec_ent" placeholder="fecha de entrega" id="fec_ent" class="form-control" required="complete el campo"></center>
                          <br>
                          <center><input type="text" name="comp" placeholder="comprador" id="comprador" class="form-control" required="complete el campo"></center>
                          <br>
                          
                          <input type="submit" value="Aceptar" style="background-color:#3366FF" name="filtro" class="btn btn-primary">
                           <input type="submit" value="Nuevo" style="background-color:#3366FF" name="filtro" class="btn btn-primary">
                          
                          </div>
                               </div></div>
                          
                            
                        </form>
                            <br>
                            <br>
                            <form action="" method="post" onsubmit="return requisicionCompra();">                
                            
                            <div class="row">
                               <div class="col-xs-3"> 
                              <center><input type="text" name="rfcprov" placeholder="Producto" id="nomprod" class="form-control" required="complete el campo"></center>
                               <br>
                          <center><input type="text" name="nomprov" placeholder="cantidad" id="cant" class="form-control" required="complete el campo"></center>
                          
                         
                          <br>
                          <select name="operacion" id="provagr" class="form-control">
                                        <option>Proveedor</option>
                                         <option>#FGEGJ212</option>
                                         <option>#FGEGJ212</option>
                                         <option>#FGEGJ212</option>
                                         
                                  </select>
                          <br>
                                
                              <center><input type="submit" value="Agregar"   style="background-color:#3366FF" name="nuevo" class="btn btn-success"></center>  
                               </div>
                          
                            
                            </div>
                            
                        </form>
                        
                        
                    </div>
                
                     
                       </div>
                           
                           
                           
                           
                          </div>  
            
    </body>
    
    
</html>
