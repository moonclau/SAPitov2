<%-- 
    Document   : InventarioGeneral
    Created on : 9/10/2018, 06:52:48 PM
    Author     : claudia
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="com.sap.inventario.clases.Inventario"%>
<%@page import="com.sap.inventario.clases.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario General</title>
<!-- Bootstrap -->
<link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
</head>
<body><header class="sticky-top">
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
                        <a href="#InventarioMerma.jsp" class="nav-link dropdown-toggle text-white" id="merma" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Merma</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="inventario">
                            <a class="nav-link text-white" href="InventarioMerma.jsp">Merma</a>
                            <a class="nav-link text-white" href="InventarioMermaAgregar.jsp">Agregar&nbsp;Merma</a>
                            <a class="nav-link text-white" href="InventarioMermaModificar.jsp">Modificar&nbsp;Merma</a>                                  
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#InventarioProducto.jsp" class="nav-link dropdown-toggle text-white" id="producto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Producto</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="inventario">
                            <a class="nav-link text-white" href="InventarioProducto.jsp">Producto</a>
                            <a class="nav-link text-white" href="InventarioProductoAgregar.jsp">Agregar&nbsp;Producto</a>
                            <a class="nav-link text-white" href="InventarioProductoModificar.jsp">Modificar&nbsp;Producto</a>                                  
                        </div>
                    </li>           
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>      
    <br/><br/>
    <!--FIN DE BARRA-->
    
  <div class="row">
      <!--Panel 1-->
        <div class="col-sm-3 ">
        <div class="card" text-center>
            <div class="card-body">
              <h4>Consulta</h4>
              
                 <div class="col-xs-offset-1 col-md-offset-1 central">
                  <form>
                  <h5>Buscar ID</h5>
                  </form>
                </div>
                    <div class="col-xs-10 col-md-10 central">
                    <form action="" method="post">
                    <input name="clave" type="text" placeholder="ID"/> 
                    <input type="submit" value="Consultar"/>
                    <h4>Reporte</h4>
                    <div class="col-xs-offset-0 col-md-offset-0 central">
                    <input type="submit" value="Generar"/>
                    </div>  
                </form>
              </div>

            </div>
        </div>
      </div>
      <!--PAnel 2-->
      <div class="col-sm-8">
        <div class="card">
            <div class="card-body">
      <div class="col-xs-offset-6 col-md-offset-6 central">
              <div class="container">
                <h4>Productos</h4>
              </div>
            </div>
            <div class="col-xs-offset-1 col-md-offset-1 central">
        <div class="container">
        <div id="tabla">
    <table class="table-striped table table-bordered table-hover">
      <tr>
        <th>
          clave productp
        </th>
      
        <th>
          Nombre
        </th>
      
        <th>
          Tipo
        </th>
      
        <th>
          Proveedor
        </th>
      
        <th>
          Cantidad
        </th>
        <th>
          Unidad
        </th>
        <th>
          Costo Unitario
        </th>
        <th>
          Costo de venta
        </th>
        <th>
          IVA
        </th>
        <th>
          Fecha
        </th>
      </tr>
<%
                    LinkedList<Inventario> lista =Consultas.consultasinventariogenerales();
                    for (int i=0;i<lista.size();i++)
                    {
                       out.println("<tr>");
                       out.println("<td>"+lista.get(i).getClave()+"</td>");
                       out.println("<td>"+lista.get(i).getNombre()+"</td>");
                       out.println("<td>"+lista.get(i).getTipo()+"</td>");                                                                                           
                       out.println("<td>"+lista.get(i).getProveedor()+"</td>");                                                                  
                       out.println("<td>"+lista.get(i).getCantidad()+"</td>");                                                               
                       out.println("<td>"+lista.get(i).getUnidad()+"</td>");      
                       out.println("<td>"+lista.get(i).getCostounitario()+"</td>");                                                                 
                       out.println("<td>"+lista.get(i).getCostoventa()+"</td>");      
                       out.println("<td>"+lista.get(i).getIva()+"</td>");                                                                                                                                  
                       out.println("<td>"+lista.get(i).getFecha()+"</td>");    
                       out.println("</tr>");
                    }
               %>
    </table>
        </div>
        </div>
            </div>
            </div>
        </div>
      </div>
      <!--din panel 2-->
  </div>
    
      
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jQuery.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>
    
