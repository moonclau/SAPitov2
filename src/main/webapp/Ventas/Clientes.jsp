<%-- 
    Document   : Clientes
    Created on : 12/10/2018, 1:44:05 AM
    Author     : asus
--%>

<%@page import="com.sap.ventas.servlets.ConsultasGenerales"%>
<%@page import="com.sap.ventas.clases.Cliente"%>
<%@page import="java.util.LinkedList"%>
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
            <a href="Ventas.jsp" class="navbar-brand text-white">Ventas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conta_navbar" aria-controls="conta_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="conta_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Clientes</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Clientes.jsp">&nbsp;Cliente</a>
                        </div>
                    </li>                                 
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Atencion</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Orden de Venta.jsp">&nbsp;Orden de Venta</a>
                                                             
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Salida de Ventas</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Factura.jsp">&nbsp;Factura</a>
                        </div>
                    </li> 
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Entrada de Ventas</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Devolucion.jsp">&nbsp;Devolucion</a>
                        </div>
                    </li> 
                     
                              
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../CerrarSesion">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>
    
    <br>
    <br>
    
<!--Contenedor principal de la pagina-->
<div class="container-fluid">
    <!--HAciendo una fila para dividir el contenedor en columnas-->
    <div class="row">
        <!--Columna de la izquierda-->
        <div class="col-xs-3 col-md-3 izquierda">            
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="container">
                    <form action="../BuscarClave" method="post">
                        <div class="row">                        
                            <div class="col-xs-2">
                                <input id="clave" name="clave" class="form-control" type="text" placeholder="ingresa clave a buscar"/>
                            </div>
                        </div>
                        <div class="row">                        
                            <div class="col-xs-2">
                              <input type="submit" value="buscar"/>       
                            </div>
                        </div>                    
                    </form>
                </div>
                <hr/>
                <table class="tabla">
                    <tr>
                    	<td>
                    		<a href="AgregarCliente.jsp">Agregar Cliente</a>
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<a href="ModificarCliente.jsp">Modificar Cliente</a>
                        </td>
                    </tr>
                </table>
              </div>
            </div>            
        </div>
        <!--Columna Central-->
         <div class="col-xs-9 col-md-9 central table-responsive">   
            <h1 class="titulo">Clientes Registrados</h1>
            <div class="scroll-y">
                <table class="tablas table">
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>      
                        <th>Apellido Paterno</th>                            
                        <th>Apellido Materno</th>
                        <th>Direccion</th>
                        <th>C.P</th>      
                        <th>Municipio</th>                            
                        <th>Estado</th>
                        <th>Pais</th>
                        <th>RFC</th>      
                        <th>Cuenta Bancaria</th>                            
                        <th>Razon Social</th>
                    </tr>
                    <%
                        LinkedList<Cliente> lista =ConsultasGenerales.mostrarCliente();
                        for (int i=0;i<lista.size();i++)
                        {
                           out.println("<tr>");
                           out.println("<td>"+lista.get(i).getId()+"</td>");
                           out.println("<td>"+lista.get(i).getNombre()+"</td>");
                           out.println("<td>"+lista.get(i).getApe_pat()+"</td>");                           
                           out.println("<td>"+lista.get(i).getApe_mat()+"</td>");
                           out.println("<td>"+lista.get(i).getDireccion()+"</td>");
                           out.println("<td>"+lista.get(i).getCodpos()+"</td>");
                           out.println("<td>"+lista.get(i).getMunicipio()+"</td>");                           
                           out.println("<td>"+lista.get(i).getEdo()+"</td>");   
                           out.println("<td>"+lista.get(i).getPais()+"</td>");
                           out.println("<td>"+lista.get(i).getRfc()+"</td>");
                           out.println("<td>"+lista.get(i).getCuentabanco()+"</td>");                           
                           out.println("<td>"+lista.get(i).getRazon()+"</td>");   
                           out.println("</tr>");
                        }
                    %>
                   

                </table>               
            </div>
        </div>
        <!--columna de la derecha-->
        <div class="col-xs-3 col-md-3 derecha table-responsive">
        </div>
    </div>
</div>
</body>
</html>

        
