function validarClientes(){
    var nombre = document.getElementById("nombreClientes").value.toString();
    var paterno = document.getElementById("apClientes").value.toString();
    var materno = document.getElementById("amClientes").value.toString();
    var direccion = document.getElementById("direccionClientes").value.toString();
    var municipio = document.getElementById("municipioClientes").value.toString();
    var estado = document.getElementById("estadoClientes").value.toString();
    var pais = document.getElementById("paisClientes").value.toString();
    var razonsocial = document.getElementById("razonsocialClientes").value.toString();
    var numero = /[0-9]/;
    if(numero.test(nombre) || numero.test(paterno) || numero.test(materno)|| numero.test(municipio)|| numero.test(estado)|| numero.test(pais)|| numero.test(razonsocial)){
        alert("No se aceptan numeros");
        return false;
    }
}




