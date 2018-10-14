<%-- 
    Document   : Clientes
    Created on : 12/10/2018, 1:44:05 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sap Ventas</title>
<!--Enlace a estilos personalizados de COntabilidad-->
<link href="../Recursos/css/contabilidad.css" rel="stylesheet" type="text/css"/>
<!--Validacion de campos-->
<script src="../Recursos/js/Contabilidad.js" type="text/javascript"></script>
<script src="../Recursos/js/Ventas.js" type="text/javascript"></script>
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
            <a href="Contabilidad.jsp" class="navbar-brand text-white">Ventas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conta_navbar" aria-controls="conta_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="conta_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Clientes</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Clientes.jsp">&nbsp;Cliente</a>
                            <a class="nav-link text-white" href="ModificarCliente.jsp">&nbsp;Modificar cliente</a>
                                                             
                        </div>
                    </li>                                 
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Atencion</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Pedido.jsp">&nbsp;Pedido</a>
                            <a class="nav-link text-white" href="Orden de Venta.jsp">&nbsp;Orden de Venta</a>
                                                             
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Salida Ventas</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Factura.jsp">&nbsp;Factura</a>
                        </div>
                    </li> 
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Otro</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Devolucion.jsp">&nbsp;Devolucion</a>
                        </div>
                    </li> 
                     
                              
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>
    
    <section class="container">
    <h1 class="text-uppercase text-center">Cliente</h1>
        <div class="row">
        <div class="col-6">
            <form method="POST" autocomplete="off" action="../Clientes" onsubmit="return validarClientes();" id="formClientes" name="formClientes" >
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Clave del Cliente:</label>
                    <input type="text" placeholder="Ingresar clave" class="form-control col-5" name="claveClientes" id="claveClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Nombre:</label>
                    <input type="text" placeholder="Ingresar nombre" class="form-control col-5" name="nombreClientes" id="nombreClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Apellido Paterno:</label>
                    <input type="text" placeholder="Apellido paterno" class="form-control col-5" name="apClientes" id="apClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Apellido Materno:</label>
                    <input type="text" placeholder="Apellido materno" class="form-control col-5" name="amClientes" id="amClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Direccion:</label>
                    <input type="text" placeholder="Escribe aqui" class="form-control col-5" name="direccionClientes" id="direccionClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">CP:</label>
                    <input type="text" placeholder="Escribe aqui" class="form-control col-5"name="cpClientes" id="cpClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Municipio:</label>
                    <input type="text" placeholder="Escribe aqui" class="form-control col-5" name="municipioClientes" id="municipioClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Estado:</label>
                    <input type="text" placeholder="Escribe aqui" class="form-control col-5" name="estadoClientes" id="estadoClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Pais:</label>
                    <input type="text" placeholder="Escribe aqui" class="form-control col-5" name="paisClientes" id="paisClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">RFC:</label>
                    <input type="text" placeholder="Escribe aqui" class="form-control col-5" name="rfcClientes" id="rfcClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Cuenta Contable:</label>
                    <input type="text" placeholder="Escribe aqui" class="form-control col-5" name="cuentacontableClientes" id="cuentacontableClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Cuenta Bancaria:</label>
                    <input type="text" placeholder="Escribe aqui" class="form-control col-5" name="cuentabancariaClientes" id="cuentabancariaClientes" required="required">
                </div>
                <div class="form-group row">
                    <label for="" class="col-2 col-form-label">Razon Social:</label>
                    <input type="text" placeholder="Escribe aqui" class="form-control col-5"name="razonsocialClientes" id="razonsocialClientes" required="required">
                </div>
                
            <div class="form-group mx-2">
                <button class="btn btn-success" type="submit">Registrar</button>
            </div>
            </form>
            </div>
        </div>
    </section>
    
    
    
    
    </body>
</html>
