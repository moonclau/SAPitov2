<%-- 
    Document   : Productos
    Created on : 2/10/2018, 08:17:18 AM
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

                        <form method="POST" action="Nuevo_producto.jsp"  >
                            <div>
                            <br>
                            </div>
                            <center><div id="titulo" class="col-12">
                                <h3>Producto</h3>
                                </div></center><br>
                            <center><input type="submit" value="Agregar"  name="nuevo" class="btn btn-success"></center>                             
                             </form> 
                        <br>
                        <form method="POST" action="Edit_producto.jsp"  >
                            <center><input type="submit" value="Editar"  name="edit" class="btn btn-success"></center>
                        </form>                       
                        <br>
                    </div>   
                    
                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"><!-- Seccion central --> 
                        
                            <center><div>
                                    <h3>Productos</h3>
                            </div></center>
                         <div class="table-responsive"><table class="table table-bordered">
                                    <thead>
                                        <tr class="active">
                                            <th scope="col">ID</th>
                                            <th scope="col">Nombre</th>
                                            <th scope="col">Compra</th>
                                            <th scope="col">Venta</th>
                                            <th scope="col">Cantidad</th>
                                            <th scope="col">Proovedor</th>
                                        </tr>
                                    </thead>                                    
                                    <tbody>                                       
                                        <tr id="modalInter">
                                        <td scope="col">0001</td>
                                            <td scope="col">Reloj</td>
                                            <td scope="col">$100.00</td>
                                            <td scope="col">$280.00</td>
                                            <td scope="col">3</td>
                                            <td scope="col">José</td>
                                        </tr>  
                                        <tr id="modalInter">
                                        <td scope="col">0002</td>
                                            <td scope="col">Coche</td>
                                            <td scope="col">$10000.00</td>
                                            <td scope="col">$15000.00</td>
                                            <td scope="col">2</td>
                                            <td scope="col">Luis</td>
                                        </tr>  
                                    </tbody>
                                </table></div>
                        <br>
                        
                           <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                  
                              <div class="container">
                        <form action="" method="post" onsubmit="return agr_prov();">                
                            
                             <h5>Solo mostrar:</h5>
                            <div class="checkbox">
                            <label>
                                <input type="checkbox" name="optionsRadios" id="optionsRadios1" value="option1">
                                    ID
                            </label>
                           </div>
                           <div class="checkbox">
                            <label>
                                <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Nombre
                            </label>
                           </div>
                           <div class="checkbox">
                            <label>
                                <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Precio Compra 
                            </label>
                           </div>
                           <div class="checkbox">
                            <label>
                                <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                   Precio Venta
                            </label>
                           </div>
                           <div class="checkbox">
                            <label>
                                <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                   Cantidad
                            </label>
                           </div>
                          <div class="checkbox">
                            <label>
                                <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                   Proveedor
                            </label>
                           </div><br> 

                                    <div><input type="submit" value="Filtrar" style="background-color:#3366FF" name="filtro" class="btn btn-primary"></div>
                            </div>
                            
                            
                        </form>
                    </div> 
                               
                               
                    </div>
                </div>
            </div>            
            
        </div>
         
    </body>
</html>
