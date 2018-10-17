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
        <script src="../JS/validaciones.js"></script>

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



                        <form method="POST" action="Nuevo_orden.jsp"  >
                            <div>
                                <br>
                            </div>
                            <center><div id="titulo" class="col-12">
                                    <h3>Orden de compra</h3>
                                </div></center><br>
                            <center><input type="submit" value="Agregar"  name="nuevo" class="btn btn-success"></center>      
                        </form><div><br></div>
                        <form method="POST" action="Eli_orden.jsp" >                                
                            <center><input type="submit" value="Eliminar"  name="eliminar" class="btn btn-success"></center>      
                        </form><div><br></div>
                        <form method="POST" action="Edit_orden.jsp" >                                
                            <center><input type="submit" value="Editar"  name="editar" class="btn btn-success"></center>      
                        </form>
                        <br>
                    </div>   
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>







                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"><!-- Seccion central --> 

                        <center><div>
                                <h3>Editar Orden compra</h3>
                            </div></center>                       
                        <br>
                        <br>

                        <div class="container">

                            <from action="" method="post" onsubmit="return editar_Ord();"><!--Cambiar action-->
                                <div class="row">
                                    <div class="col-xs-2"></div>
                                    <div class="col-xs-3">
                                        <center><input type="number" name="folio_ord" placeholder="folio" id="fol_ord" class="form-control" required="complete el campo"></center>
                                        <br>
                                        <center><input type="date" name="fecha" placeholder="fecha" id="fech_orden" class="form-control" required="complete el campo"></center>
                                        <br>
                                        <center><input type="date" name="fec_ent" placeholder="fecha de entrega" id="fec_entrega" class="form-control" required="complete el campo"></center>
                                        <br>
                                        <center><input type="text" name="comp" placeholder="comprador" id="codprod" class="form-control" required="complete el campo"></center>
                                        <br>

                                        <input type="submit" value="Aceptar" style="background-color:#3366FF" name="filtro" class="btn btn-primary">
                                        <input type="submit" value="Nuevo" style="background-color:#3366FF" name="filtro" class="btn btn-primary">


                                    </div>
                                    <div class="col-xs-3"> 
                                        <center><input type="text" name="rfcprov" placeholder="Producto" id="codprod" class="form-control" required="complete el campo"></center>
                                        <br>
                                        <center><input type="text" name="nomprov" placeholder="cantidad" id="codprod" class="form-control" required="complete el campo"></center>


                                        <br>
                                        <select name="operacion" id="agr_est" class="form-control">
                                            <option>Proveedor</option>
                                            <option>#FGEGJ212</option>
                                            <option>#FGEGJ212</option>
                                            <option>#FGEGJ212</option>

                                        </select>
                                        <br>
                                        <center><input type="submit" value="Cambiar" style="background-color:#3366FF" name="filtro" class="btn btn-primary"></center></div>                    
                                </div>

                                <br>
                                <br>
                                <div class="table-responsive"><table class="table table-bordered">
                                        <thead>
                                            <tr class="active">
                                                <th scope="col">ID</th>
                                                <th scope="col">Producto</th>
                                                <th scope="col">Cantidad</th>
                                                <th scope="col">Precio unit</th>
                                                <th scope="col">Total</th>

                                            </tr>
                                        </thead>                                    
                                        <tbody>                                       
                                            <tr id="modalInter">
                                                <td scope="col">0001</td>
                                                <td scope="col">Reloj</td>
                                                <td scope="col">100</td>
                                                <td scope="col">$280.00</td>
                                                <td scope="col">$14567.00</td>

                                            </tr>  
                                            <tr id="modalInter">
                                                <td scope="col">0002</td>
                                                <td scope="col">Coche</td>
                                                <td scope="col">100</td>
                                                <td scope="col">$15000.00</td>
                                                <td scope="col">$300000.00</td>

                                            </tr>  
                                        </tbody>
                                    </table></div>    







                            </from>  </div>

                    </div>
                </div>
            </div>            

        </div>

    </body>
</html>
