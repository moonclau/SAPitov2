<%-- 
    Document   : Nuevo_prod
    Created on : 1/10/2018, 11:00:46 PM
    Author     : Marii y Erick
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../CSS/estilos.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
        <link href="../Recursos/Bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/Bootstrap/librerias/jquery-3.3.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/Bootstrap/js/bootstrap.js"></script>
        <script src="../JS/validaciones.js"></script>
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
                                    <h3>Nuevo Proveedor</h3>
                            </div></center>                       
                        <br>
                        <br>
                        
                        <div class="container">
                        
                        <form action="" method="post" onsubmit="return agr_prov();">                
                            
                            <div class="row">
                                 <div class="col-xs-2"></div>
                               <div class="col-xs-3">
                          <center><input type="text" name="rfcprov" placeholder="RFC" id="rfc" class="form-control" ></center>
                               <br>
                          <center><input type="text" name="nomprov" placeholder="Razón social" id="social" class="form-control" ></center>
                          <br>
                          <center><input type="text" name="dirprov" placeholder="Dirección" id="dirprov" class="form-control" ></center>
                          <br>
                          <center><input type="number" name="numprov" placeholder="Teléfono" id="numprov" class="form-control"></center>
                          <br>
                           <center><input type="text" name="corprov" placeholder="Correo" id="corprov" class="form-control"></center>
                          <br>
                          <select name="operacion" id="agr_est" class="form-control">
                                        <option>Ciudad/Estado</option>
                                         <option>Edo.Mexico</option>
                                         <option>Yucatan</option>
                                         <option>Sinaloa</option>
                                         <option>Queretaro</option>
                                  </select>
                               </div>
                          <div class="col-xs-3"> 
                              <center><input type="text" name="rfcprov" placeholder="Cuenta contable" id="codprod" class="form-control" ></center>
                               <br>
                          <center><input type="text" name="nomprov" placeholder="Límite de crédito" id="codprod" class="form-control"></center>
                          <br>
                          <center><input type="text" name="dirprov" placeholder="Días de crédito" id="codprod" class="form-control" ></center>
                          <br>
                          <select name="operacion" id="agr_est" class="form-control">
                                        <option>Banco</option>
                                         <option>HSBC</option>
                                         <option>Santander</option>
                                         <option>Bancomer</option>
                                         <option>BanCoopel</option>
                                  </select>
                          <br>
                          <center><input type="number" name="numprov" placeholder="N° Cuenta" id="codprod" class="form-control" ></center>
                          <br>
                          <center><input type="number" name="numprov" placeholder="Clave Cuenta" id="codprod" class="form-control" ></center>                          
                          </div>
                          </div>
                            <!--<div class="row">
                                <div class="col-lg-10">
                            <br>
                            <center><input type="submit" value="Agregar" style="background-color:#3366FF" name="filtro" class="btn btn-primary"></center></div>
                            </div>-->
                            
                            <div class="row">       
                                <br/>
                                	
                                <div class="col-lg-10">      
                                    <center><input type="submit" value="Agregar" class="btn btn-primary" /></center>
                                </div>
                            
                            
                            
                        </form>
                        </div>
                    </div>
                </div>
            </div>            
            
        </div>
         
    </body>
</html>

