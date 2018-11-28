<%-- 
    Document   : Factura
    Created on : 12/10/2018, 1:44:05 AM
    Author     : asus
--%>
<%@page import="com.sap.ventas.clases.Cliente"%>
<%@page import="com.sap.ventas.clases.Proveedor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.LinkedList"%>
<%@page import="com.sap.ventas.servlets.ConsultasGenerales"%>
<%@page import="com.sap.ventas.clases.OrdenVenta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList lista = (ArrayList) request.getSession().getAttribute("factura");
%>
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
                    <form action="" method="post">
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
                    		<a href="AgregarFactura.jsp">Agregar Factura</a>
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<a href="ModificarFactura.jsp">Modificar Factura</a>
                        </td>
                        
                    </tr>
                    <tr>
                    	<td>
                    		<a href="ImprimirFactura.jsp">Imprimir Factura</a>
                        </td>
                    </tr>
                </table>
              </div>
            </div>            
        </div>
       
        <!--Columna Central-->
        <div class="col-xs-8 col-md-8 central table-responsive jumbotron">
        <h1 class="text-uppercase text-center">Modificar Factura</h1>
        <br>
        <form method="POST" autocomplete="off" action="../ActualizarModificacionFactura"  id="formFactura" name="formFactura">
            <div class="row">
                <div class="col-xs-2 col-md-2">
                    <label for="idModificarFactura">Id Factura:</label>
                    <input type="text" class="form-control col-12" name="idModificarFactura" id="idModificarFactura" value="<%= lista.get(0) %>" required="required" readonly="readonly">
                </div>
                <div class="col-xs-4 col-md-4">
                    <label for="clavefactura">Clave de Factura:</label>
                    <input type="text" class="form-control col-12" name="claveFactura" id="claveFactura" value="<%= lista.get(1) %>" required="required">
                </div>
                <div class="col-xs-4 col-md-4">
                </div>
                <div class="col-xs-4 col-md-4">
                    <label for="fechaFactura">Fecha:</label>
                    <input type="date" class="form-control col-12" name="fechaFactura" id="fechaFactura" value="<%= lista.get(2) %>" required="required">
                </div>
                <div class="col-xs-4 col-md-4">
                          <label for="nombreclienteFactura">Seleccione cliente:</label>
                          <Select  class="form-control" id="nombreclienteFactura" name="nombreclienteFactura" value="<%= lista.get(4) %>" required="required">
                              <option value="">Seleccione...</option>
                            <%
                                LinkedList<Cliente> l =ConsultasGenerales.opcionesCliente();
                                for (int i=0;i<l.size();i++)
                                {
                                    if(lista.get(0).equals(l.get(i).getId())){
                                        out.println("<option selected='selected' value='"+l.get(i).getNombre()+""+" "+""+l.get(i).getApe_pat()+""+" "+""+l.get(i).getApe_mat()+"'>"+l.get(i).getNombre()+""+" "+""+l.get(i).getApe_pat()+""+" "+""+l.get(i).getApe_mat()+"</option>");
                                    }else{
                                        out.println("<option value='"+l.get(i).getNombre()+""+" "+""+l.get(i).getApe_pat()+""+" "+""+l.get(i).getApe_mat()+"'>"+l.get(i).getNombre()+""+" "+""+l.get(i).getApe_pat()+""+" "+""+l.get(i).getApe_mat()+"</option>");   
                                    } 
                                                                   
                                }
                            %> 
                          </select>
                </div>
                <div class="col-xs-4 col-md-4">
                          <label for="proveedor">Seleccione al Proveedor:</label>
                          <Select  class="form-control" id="nombreproveedorFactura" name="nombreproveedorFactura" value="<%= lista.get(5) %>" required="required">
                              <option value="">Seleccione...</option>
                               <%
                                    LinkedList<Proveedor> a =ConsultasGenerales.opcionesProveedor();
                                    for (int i=0;i<a.size();i++)
                                    {   
                                       if(lista.get(0).equals(a.get(i).getId())){
                                        out.println("<option selected='selected' value='"+a.get(i).getNombre()+"'>"+a.get(i).getNombre()+"</option>");  
                                    }else{
                                            
                                      out.println("<option value='"+a.get(i).getNombre()+"'>"+a.get(i).getNombre()+"</option>");    
                                    } 
                                                                         
                                    }
                                %>
                           </select>
                </div>
                <div class="col-xs-4 col-md-4">
                          <label for="proveedor">RFC Proveedor:</label>
                          <Select  class="form-control" id="idproveedorFactura" name="idproveedorFactura" value="<%= lista.get(8) %>" required="required">
                              <option value="">Seleccione...</option>
                               <%
                                    LinkedList<Proveedor> p =ConsultasGenerales.opcionesProveedor();
                                    for (int i=0;i<p.size();i++)
                                    {   
                                        if(lista.get(0).equals(a.get(i).getId())){
                                        out.println("<option selected='selected' value='"+p.get(i).getId()+"'>"+p.get(i).getRfc()+"</option>"); 
                                    }else{
                                            
                                         out.println("<option value='"+p.get(i).getId()+"'>"+p.get(i).getRfc()+"</option>");
                                    } 
                                                                           
                                    }
                                %>
                           </select>
                </div>
            </div>
            <div class="row">
                   <div class="col-xs-4 col-md-4">
                    <label for="tipoFcatura">Tipo:</label>
                    <Select  class="form-control" type="number" name="tipoFactura" id="tipoFactura" value="<%= lista.get(3) %>" required="required">
                              <option value="">Seleccione...</option>
                              <option value="0">Cliente</option>
                              <option value="1">Proveedor</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                     <label for="totalFcatura">Total:</label>
                     <input type="number" class="form-control col-12" name="totalFactura" id="totalFactura" value="<%= lista.get(6) %>" required="required">
                </div>
                <div class="col-xs-4 col-md-4">
                    <label for="idordenventaFactura">Clave orden de venta:</label>
                    <Select  class="form-control" id="idordenventaFactura" name="idordenventaFactura" value="<%= lista.get(7) %>" required="required">
                              <option value="">Seleccione...</option>
                            <%
                                LinkedList<OrdenVenta> h =ConsultasGenerales.opcionesOrdenVenta();
                                for (int i=0;i<h.size();i++)
                                {  
                                    if(lista.get(0).equals(h.get(i).getIdordenventa())){
                                        out.println("<option selected='selected' value='"+h.get(i).getIdordenventa()+"'>"+h.get(i).getClave_ordenventa()+"</option>");
                                    }else{
                                       out.println("<option value='"+h.get(i).getIdordenventa()+"'>"+h.get(i).getClave_ordenventa()+"</option>");   
                                         
                                    }                             
                                }
                            %> 
                        </select>
                </div>
            </div>
                <br>
                <br>
                <center>
                <div>
                <input type="submit" value="Agregar factura" class="btn btn-primary"/>    
                </div>
                </center>
               
                
        </form>
        </div>
<!--columna de la derecha-->
        <div class="col-xs-3 col-md-3 derecha table-responsive">
        </div>
    </div>
</div>
</body>
</html>
   

    
    
    
    
    
    
