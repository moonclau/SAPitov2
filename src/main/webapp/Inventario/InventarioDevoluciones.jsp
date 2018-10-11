<%-- 
    Document   : InventarioDevoluciones
    Created on : 7/10/2018, 06:18:26 PM
    Author     : claudia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inventario Devoluciones</title>
<!-- Bootstrap -->
<link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
    </head>
    <body>
        <header class="sticky-top">
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a href=" " class="navbar-brand text-white">Inventario</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#inv_navbar" aria-controls="inv_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="int_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href="InventarioGeneral.jsp" class="nav-link text-white">Inventario&nbsp;General</a>
                    </li>                   
                    <li class="nav-item">
                        <a href="InventarioEntradas.jsp" class="nav-link text-white">Inventario&nbsp;Entradas</a>
                    </li>    
                    <li class="nav-item">
                        <a href="InventarioSalida.jsp" class="nav-link text-white">Inventario&nbsp;Salidas</a>
                    </li> 
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="merma" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Merma</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="inventario">
                            <a class="nav-link text-white" href="InventarioMerma.jsp">Merma</a>
                            <a class="nav-link text-white" href="InventarioMermaAgregar.jsp">Agregar&nbsp;Merma</a>
                            <a class="nav-link text-white" href="InventarioMermaModificar.jsp">Modificar&nbsp;Merma</a>                                  
                        </div>
                    </li>
                    <li class="nav-item">
                            <a class="nav-link text-white" href="InventarioDevoluciones.jsp">Devoluciones</a>
                    </li>                            
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>      
    <br/><br/>
    <div class="row">
    <!--Panel-->
    <div class="col-sm-3 ">
        <div class="card" text-center>
            <div class="card-body">
                <label class="card-text">Buscar id de devolucion</label><br>
                <input type="text" id="bid" name="bid" class="form-control form-control-sm" />
                <input id="boid" type="submit" value="Buscar" class="btn btn-success"/><br><br>
                <label class="card-text">Buscar id de producto</label><br>
                <input type="text" id="bip" name="bip" class="form-control form-control-sm" />
                <input id="boip" type="submit" value="Buscar" class="btn btn-success"/><br><br>
                <label class="card-text">Buscar id de compra</label><br>
                <input type="text" id="bic" name="bic" class="form-control form-control-sm" />
                <input id="boic" type="submit" value="Buscar" class="btn btn-success"/><br><br>
                <p class="card-text">Reporte</p>
                <input id="bor" type="submit" value="Generar" class="btn btn-success"/>
            </div>
        </div>
    </div>
    <!--/.Panel-->
    <!--Panel-->
   <div class="col-sm-8">
        <div class="card">
            <div class="card-body">
                <h3 class="card-title">Devoluciones</h3>
                <!--TABLA MERMA NORMAL  -->
                <div class="col-xs-12 col-md-12 central table-responsive">              
                        <table class="tablas table">
                            <tr>                                
                                <th>ID Devolucion</th>
                                <th>ID compra</th>
                                <th>ID producto</th>
                                <th>Nombre</th>
                                <th>Cantidad devuelta</th>
                                <th>Fecha devolucion</th>
                                <th>Motivo</th>
                            </tr>
                            <tr>                                
                                <td>01</td>
                                <td>01</td>
                                <td>15</td>
                                <td>Ropa</td>
                                <td>Puma</td>                   
                                <td>04/10/2018</td>
                                <td>El usuario no le gusto la talla que encargo</td>
                            </tr>
                            <tr>
                                <td>02</td>
                                <td>40</td>                   
                                <td>1</td>
                                <td>Martillo</td>
                                <td>150</td>
                                <td>04/10/2018</td>
                                <td>El martillo tenia roto el empaque</td>
                            </tr>
                        </table>               
            </div>
                <!--FIN TABLA MN-->
            </div>
        </div>
    </div>
    <!--/.Panel-->
</div>
    
    </body>
</html>
