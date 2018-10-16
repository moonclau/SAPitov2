<%-- 
    Document   : Compras
    Created on : 25/09/2018, 07:40:03 PM
    Author     : Marifer y Erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
         integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
        <link href="../CSS/estilos.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../JS/validaciones.js"></script>

        <link href="../Recursos/Bootstrap/css/bootstrap.css" rel="stylesheet">
        <script src="../Recursos/Bootstrap/librerias/jquery-3.3.1.min.js"></script>
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

                        <form method="POST" action="Nuevo_prod.jsp"  >
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
                                <h3>Proveedores</h3>
                            </div></center>
                        <div class="table-responsive"><table class="table table-bordered">
                                <thead>
                                    <tr class="active">
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
                                    <tr id="modalInter">
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
                                    <tr id="modalInter">
                                        <th scope="row">2</th>
                                        <td>Ronal mexicana</td>
                                        <td>FGDHSDJH78634CRLR</td>       
                                        <td>col. margaritas</td>
                                        <td>7223456712</td>
                                        <td>Ronalmexicana@hotmail.com</td>
                                        <td>10.11</td>
                                        <td>$50,000</td>
                                        <td>30</td>
                                    </tr>
                                    <tr id="modalInter">
                                        <th scope="row">3</th>
                                        <td>Norkcon tools </td>
                                        <td>FGDHSDJH78634CRLR</td>
                                        <td>col. margaritas</td>
                                        <td>7223456712</td>
                                        <td>norkcontools@gmail.com</td>
                                        <td>10.11</td>
                                        <td>$50,000</td>
                                        <td>20</td>
                                    </tr>
                                </tbody>
                            </table></div>
                        <br>

                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <h5>Solo mostrar:</h5>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="optionsRadios" id="optionsRadios1" value="option1">
                                    RFC
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Razón Social
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Dirección 
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Correo
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Teléfono
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Crédito
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Cuenta contable
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Días Crédito
                                </label>
                            </div> 

                            <center><input type="submit" value="Filtrar" style="background-color:#3366FF" name="filtro" class="btn btn-primary" onsubmit="return compras();"></center>
                        </div>
                    </div>
                </div>
            </div>            

        </div>

    </body>
</html>
