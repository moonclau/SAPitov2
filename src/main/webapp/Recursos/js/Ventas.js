function regreso(){
   window.location.hash="no-back-button";
   window.location.hash="Again-No-back-button";
   window.onhashchange=function(){window.location.hash="no-back-button";};
}

function validaFactura(){
    var total = document.getElementById("totalVentaFactura").value;
    if(total < 0){
        alert("La cantidad debe ser mayor a 0");
        return false;
    }
    return true;
}

function validaRenta(){
    var total = document.getElementById("numeroRegistrarRenta").value;
    if(total < 0){
        alert("La cantidad de huespedes debe ser mayor a 0");
        return false;
    }
    return true;
}

function validaRentaA(){
    var total = document.getElementById("numeroActualizarRenta").value;
    if(total < 0){
        alert("La cantidad de huespedes debe ser mayor a 0");
        return false;
    }
    return true;
}

function validaHuesped(){
    var nombre = document.getElementById("nombreRegistrarHuesped").value.toString();
    var paterno = document.getElementById("paternoRegistrarHuesped").value.toString();
    var materno = document.getElementById("maternoRegistrarHuesped").value.toString();
    var cp = document.getElementById("codigoRegistrarHuesped").value.toString();
    var cuenta = document.getElementById("cuentaRegistrarHuesped").value.toString();
    var numero = /[0-9]/;
    var letras = /[a-zA-Z]/;
    if((numero.test(nombre)) || (numero.test(paterno)) || (numero.test(materno))){
        alert("El nombre y apellidos deben ser solo letras");
        return false;
    }
    if(letras.test(cp) || (cp.length !== 5)){
        alert("El codigo postal es incorrecto");
        return false;
    }
    if((cp.length !== 5) || (cuenta.length !== 16)){
        alert("Cantidad de digitos incorrecta para el codigo postal o la cuenta bancaria");
        return false;
    }
    return true;
}

function validaHuespedA(){
    var nombre = document.getElementById("nombreActualizarHuesped").value.toString();
    var paterno = document.getElementById("paternoActualizarHuesped").value.toString();
    var materno = document.getElementById("maternoActualizarHuesped").value.toString();
    var cp = document.getElementById("codigoActualizararHuesped").value.toString();
    var cuenta = document.getElementById("cuentaActualizarHuesped").value.toString();
    var numero = /[0-9]/;
    var letras = /[a-zA-Z]/;
    if((numero.test(nombre)) || (numero.test(paterno)) || (numero.test(materno))){
        alert("El nombre y apellidos deben ser solo letras");
        return false;
    }
    if(letras.test(cp) || (cp.length !== 5)){
        alert("El codigo postal es incorrecto");
        return false;
    }
    if((cp.length !== 5) || (cuenta.length !== 16)){
        alert("Cantidad de digitos incorrecta para el codigo postal o la cuenta bancaria");
        return false;
    }
    return true;
}