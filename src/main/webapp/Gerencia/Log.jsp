<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% ArrayList lista = (ArrayList) request.getSession().getAttribute("lista"); %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
        <script src="../Gerencia/validaciones/validacion.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js" integrity="sha256-CfcERD4Ov4+lKbWbYqXD6aFM9M51gN4GUEtDhkWABMo=" crossorigin="anonymous"></script>
    </head>
    <body>
        <header class="sticky-top">
            <!--barra de navegacion creada con bootstrap-->
            <nav class="navbar navbar-expand-lg navbar-dark barra bg-primary" >
                <a class="navbar-brand text-white" href="../Gerencia/InicioGerencia.jsp"><h2>Informaci&oacute;n Gerencial</h2></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto">                    
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white" id="conf" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Configuracion</a>
                            <div class="dropdown-menu bg-primary" aria-labelledby="conf" >
                                <form  onsubmit="return validawebservice('nombre', 'ip', 'puerto');" action="" name="ws" method="post" autocomplete="off">
                                    <br>
                                    <label class="text-white">Nombre&nbsp;del&nbsp;servicio
                                        <input type="" name="nombre" id="nombre"  class="form-control">
                                    </label>
                                    <br>
                                    <label class="text-white">Ip&nbsp;del&nbsp;servicio
                                        <input type="" name="ip" id="ip" class="form-control">
                                    </label>
                                    <br>
                                    <label class="text-white">Puerto&nbsp;del&nbsp;servicio
                                        <input type="" name="puerto" id="puerto"  class="form-control">
                                    </label>
                                    <br>
                                    <input type="submit" class="btn btn-danger text-white" value="Guardar">
                                </form>                                 
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white" id="historial" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Historial</a>
                            <div class="dropdown-menu bg-primary" aria-labelledby="historial">
                                <form onsubmit="return validalog(fecha, area, horaInicio, horaFin);" action="../Consultalog" name="historial" method="post" autocomplete="off">
                                    <label class="text-white">Fecha
                                        <input type="date" name="fecha" id="fecha" max="3000-12-31"  min="1000-01-01" class="form-control">
                                    </label>
                                    <br>
                                    <p class="text-white">Area</p> 
                                    <select name="area" id="area">
                                        <option value="gerencia">Gerencia</option> 
                                        <option value="rh">Recursos Humanos</option> 
                                        <option value="contabilidad">Contabilidad</option>
                                        <option value="inventarios">Inventarios</option> 
                                        <option value="compras">Compras</option> 
                                        <option value="ventas">Ventas</option> 
                                    </select>
                                    <br>
                                    <br>
                                    <label class="text-white">Intervalo&nbsp;de&nbsp;tiempo</label>
                                    <div id="hora">
                                        <label class="text-white">De: <input id="horaInicio" for="example-time-input" type="time" name="horaInicio"  class="form-control"></label>
                                        <br>
                                        <label class="text-white">A:   <input id="horaFin" for="example-time-input" type="time" name="horaFin"  class="form-control"></label>  
                                    </div>
                                    <br>
                                    <input type="submit" class="btn btn-danger text-white" value="Generar">
                                </form>                                   
                            </div>
                        </li>
                    </ul>   
                </div>
            </nav>
        </header>
        <div id="principal">
            <div class="container-fluid" style="background-color: #EDEDED;"><!-- Seccion central (Visualizar tarea) -->
                <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <table class="table-striped" style="margin: 0 auto;width:100%;height:100%;">
                        <tr>
                            <td align="center">DESCRIPCI&Oacute;N</td>
                            <td align="center">ID&nbsp;DEL&nbsp;EMPLEADO</td>
                            <td align="center">&Aacute;REA</td>
                            <td align="center">FECHA</td>
                            <td align="center">HORA</td>
                        </tr>
                        <tr>
                        <%
                            for(int i = 0 ; i < lista.size() ; i++){
                                if(i%5==0 && i!=0){out.print("</tr><tr>");}
                                out.print("<td align='center'>"+lista.get(i)+"</td>");
                            }
                            request.getSession().removeAttribute("lista");
                        %>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>