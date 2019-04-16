/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 $(document).ready(function() {
                $('#buscar').click(function(event) {
                        var clavebuscar = $('#clave').val();        
                        // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                        $.post('../BuscarPorIDProducto', {
                                clavep : clavebuscar
                        }, function(responseText) {                            
                                $('#tabla').html(responseText);
                        });
                });
        });
        $(document).ready(function() {
                $('#buscarentrada').click(function(event) {
                        var clavebuscar = $('#clave').val();        
                        // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                        $.post('../Pentrada', {
                                clavep : clavebuscar
                        }, function(responseText) {                            
                                $('#tablas').html(responseText);
                        });
                });
        });

function ValidaClave() {
    var especial = /[|°!"#$%&/()=?¡¿'+*{}[]^\.:,;<>_]/;
    var clave = document.getElementById("clave").value.toString();
    if (clave === null || clave.length === 0||clave) {
        alert("Ingrese una clave");

    }    
}

function ValidaNombre(){
    
    var numero = /[0-9]/;
    var especial = /[|°!"#$%&/()=?¡¿'+*{}[]^\.:,;<>_]/;
    var nom = document.getElementById("nombre").value.toString();
    if (nom===null||nom.length===0) {
        alert("Ingrese un nombre");
    }
    if (numero.test(nom)||especial.test(nom)) {
        alert("Ingrese un nombre válido");
    }
}

function ValidaIva(){
    var numero = /[0-9]/;
    var especial = /[|°!"#$%&/()=?¡¿'+*{}[]^\.:,;<>_]/;
    var iva = document.getElementById("iva").value.toString();
    if (numero.test(iva)||especial.test(iva)||iva%1===0) {
        alert("El iva no es válido");
        return false;
        
    }

}

function Va(){
    
}

