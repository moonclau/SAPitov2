<%-- 
    Document   : Edit_prod
    Created on : 11/10/2018, 10:06:46 PM
    Author     : Marii y Erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
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
                    
                   
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12"><!-- Seccion central --> 
                                             
                            <center><div>
                                    <h3>Editar Proveedor</h3>
                            </div></center>                       
                            <br><br>
                            
                             <form action="" method="post" onsubmit="return editar_prov();">  
                           <div class="row">
                               <div class="col-xs-4"></div>
                               <div class="col-xs-3">
                       <center><input type="text" name="clave_prov" placeholder="Clave" class="form-control" id="clave_prov" required="Complete el campo"> 
                           </div>
                            
                           <div class="col-xs-1">
                        
                        <input type="submit" value="Buscar"  name="buscar" class="btn btn-success"></center>
                         
                               </div>
                            </div></form>
                            
                            
                        <br>
                        <form action="../Modificar_proveedor" method="post" onsubmit="return editar_prov();">  
                              <div class="row">
                                 <div class="col-xs-3"></div>
                               <div class="col-xs-3">
                          <center><input type="text" name="rfc_prov" placeholder="RFC" id="rfc_prov" class="form-control" ></center>
                               <br>
                          <center><input type="text" name="razo_prov" placeholder="Razón social" id="razo_prov" class="form-control" ></center>
                          <br>
                          <center><input type="text" name="dir_prov" placeholder="Dirección" id="dir_prov" class="form-control" ></center>
                          <br>
                          <center><input type="number" name="tel_prov" placeholder="Teléfono" id="tel_prov" class="form-control" ></center>
                          <br>
                           <center><input type="text" name="correo_prov" placeholder="Correo" id="correo_prov" class="form-control"></center>
                          <br>
                          <select name="agr_est" id="agr_est" class="form-control">
                                        <option>Ciudad/Estado</option>
                                         <option>Edo.Mexico</option>
                                         <option>Yucatan</option>
                                         <option>Sinaloa</option>
                                         <option>Queretaro</option>
                                  </select>
                               </div>
                          <div class="col-xs-3"> 
                              <center><input type="text" name="cuent_cont" placeholder="Cuenta contable" id="cuent_cont" class="form-control"></center>
                               <br>
                          <center><input type="text" name="lim_cred" placeholder="Límite de crédito" id="lim_cred" class="form-control" ></center>
                          <br>
                          <center><input type="text" name="dias_cred" placeholder="Días de crédito" id="dias_cred" class="form-control" ></center>
                          <br>
                          <select name="agr_bnco" id="agr_bnco" class="form-control">
                                        <option>Banco</option>
                                         <option>HSBC</option>
                                         <option>Santander</option>
                                         <option>Bancomer</option>
                                         <option>BanCoopel</option>
                                  </select>
                          <br>
                          <center><input type="number" name="num_cuenta" placeholder="N° Cuenta" id="num_cuenta" class="form-control" ></center>
                          <br>
                          <center><input type="number" name="clave_cuenta" placeholder="Clave Cuenta" id="clave_cuenta" class="form-control" ></center>                          
                          </div>
                          </div>
                            <div class="row">
                                <div class="col-lg-12">
                            <br>
                            <center><input type="submit" value="Editar" style="background-color:#3366FF" name="filtro" class="btn btn-primary"></center></div>
                            </div>
                                     </form>
                    </div>
                   
                </div>
            </div>            
            
        </div>
         
    </body>
</html>


