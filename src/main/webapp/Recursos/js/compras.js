function compras(){
var op1 = document.getElementById('ptionsRadios1').checked;
var op2 = document.getElementById('ptionsRadios2').checked;
var op3 = document.getElementById('ptionsRadios2').checked;

if(!op1 && !opt3 && !op3){
  alert(' seleccionado una opcion');
  return false;
}
    
}


function agr_prov(){
    
    var rfc = document.getElementById('rfc').value;
   
  if(rfc===""){
   alert("Campo rfc vacio");
    return false;
  }
  
    
      var razon;
    razon=document.getElementById("social").value;
    if (razon==="") {
        alert("campo razon  vacio");
        return false;
    
    }
    
    var tel = document.getElementById('numprov').value;
    if (tel.length>10) {
        alert('La longitud del telefono no puede ser mayor a 10 caracteres');
        return false;
    }
    
     var dir = document.getElementById('dirprov').value;
    if (dir==="") {
        alert('Campo direccion vacio');
        return false;
    }
    
    //campo telefono
    var tel=document.getElementById('numprov').value;
    
     if (tel==="") {
     alert('El campo telefono se encuentra vacio');  
     return false;
    
    }
    
     //campo correo
    var correo;
    correo=document.getElementById('corprov').value;
     if (correo==="") {
     alert('el campo correo vacio');  
     return false;
    }
    
     //campo estado
    var estado=document.getElementById('agr_est').value;
    if(estado==="Ciudad/Estado"){
        alert('Debes elegir un estado');
         return false;
    }
    
    //campo cuenta contable
 var cuenta=document.getElementById('cuenta_conta').value;
   
     if (cuenta==="") {
     alert('El campo cuenta contable se encuentra vacio');  
       return false;
    }
    
    //campo limite de credito
 var limcred=document.getElementById('lim_credito').value;
   
     if (limcred==="") {
     alert('El campo limite de creditp se encuentra vacio');  
       return false;
    }
    
     //campo dias de credito
 var daycred=document.getElementById('dias_credito').value;
    
     if (daycred==="") {
     alert('El campo dias de credito se encuentra vacio');  
       return false;
    }
    //Campo banco
    var banco=document.getElementById('banco').value;
   
     if (banco==="Banco") {
     alert('El campo banco vacio'); 
       return false;
     
    }
    //campo numero de cuenta
 var clave=document.getElementById('num_cuenta').value;
    
     if (clave==='') {
     alert('El campo numero de cuenta se encuentra vacio');  
     return false
    }
     //campo clave
 var clave=document.getElementById('clv_cuenta').value;
    
     if (clave==='') {
     alert('El campo clave cuenta se encuentra vacio');  
     return false
    }
    else{
        alert('Proveddor agregado con exito');
        return false;
    }
    
    
}

function elim_prov(){
  var clave=document.getElementById('elimprov').value;
    
     if (clave==='') {
     alert('El campo clave  se encuentra vacio');  
     return false
    }  
     else{
        alert('Proceso llevado correctamente');
        return false;
    }
    
}

function editar_prov(){
    var rfcedit = document.getElementById('rfc_edi').value;
    if (rfcedit.length>13 || rfcedit==="") {
        alert('La longitud del RFC no puede ser mayor a 13 caracteres');
       return false;
    }
    
    
      var razonedit;
    razonedit=document.getElementById("razoned").value;
    if (razonedit==="") {
        alert("campo razon  vacio");
        return false;
    
    }
    
   
    
     var diredit = document.getElementById('diredit').value;
    if (diredit==="") {
        alert('Campo direccion vacio');
        return false;
    }
    
    //campo telefono
   var teledit = document.getElementById('teledit').value;
    
     if (teledit==="") {
     alert('El campo telefono se encuentra vacio');  
     return false;
    
    }
     
    if (teledit.length>10) {
        alert('La longitud del telefono no puede ser mayor a 10 caracteres');
        return false;
    }
    
     //campo correo
    var correoedit;
    correoedit=document.getElementById('correoedit').value;
     if (correoedit==="") {
     alert('el campo correo vacio');  
     return false;
    }
    
     //campo estado
    var estedit=document.getElementById('estadoedit').value;
    if(estedit==="Ciudad/Estado"){
        alert('Debes elegir un estado');
          return false;
       
    }
    
    //campo cuenta contable
 var contedit=document.getElementById('cuentaconedit').value;
   
     if (cuenta==="") {
     alert('El campo cuenta contable se encuentra vacio');  
       return false;
     
    }
    
    //campo limite de credito
 var limedit=document.getElementById('limcrededit').value;
   
     if (limcred==="") {
     alert('El campo limite de creditp se encuentra vacio'); 
       return false;
     
    }
    
     //campo dias de credito
 var diasedit=document.getElementById('diascrededit').value;
    
     if (diasedit==="") {
     alert('El campo dias de credito se encuentra vacio');  
       return false;
     
    }
    //Campo banco
    var bancoedit=document.getElementById('bancoedit').value;
   
     if (bancoedit==="Banco") {
     alert('El campo banco vacio');  
       return false;
     
    }
    //campo numero de cuenta
 var numcuedit=document.getElementById('numcuentaedit').value;
    
     if (numcuedit==="") {
     alert('El campo numero de cuenta se encuentra vacio');  
     return false
    }
     //campo clave
 var clavecuedit=document.getElementById('clvcuentaedit').value;
    
     if (clavecuedit==='') {
     alert('El campo clave cuenta se encuentra vacio');  
     return false
    }
   
 else{
     alert('Proveedor mofificado corecctamente');
     return false;
 }
    
}

function generar_Ord(){
    
    
    var folio=document.getElementById("fol_ord").value;    
    if(folio.length>6 ||folio.length!==6){
        alert('El folio debe contener 6 digitos');
        
        return false;
    }else{
        alert('llevando a cabo el proceso');
        //document.getElementById(id).value="";        
        return true;
    }
    
    var fech_ord=document.getElementById("fech_ord").value;
    if ( fech_ord== null || fech_ord==0 ){
        alert('No se ha indicado la fecha inicial');
        return false;
    } 
    
     var hoy= new Date();
    if (fech_ord>hoy){
        alert('la fecha inicial no puede mayor a la actual');
        document.getElementById('fechaini').value="";
        return false;
    }
    
    
    var fec_ent=document.getElementById("fec_ent").value;
    if ( fec_ent== null || fec_ent==0 ){
        alert('No se ha indicado la fecha final');
        return false;
    } 
    
   
    var fechaent=new Date(document.getElementById('fec_ent').value);    
    var hoy= new Date();
    if (fechaini>fechaent){
        alert('la fecha inicial no puede ser mayor a la fecha de entrega');
        document.getElementById('fechaini').value="";
        return false;
    }
   //campo clave
 var comp=document.getElementById('comp').value;
    
     if (comp==='') {
     alert('El campo comprador se encuentra vacio');  
     return false
    } 
    
    //campo producto
 var proda=document.getElementById('proda').value;
    
     if (proda==='') {
     alert('El campo producto se encuentra vacio');  
     return false
    } 
    
    //campo cantidad
 var cantagr=document.getElementById('cantagr').value;
    
     if (cantagr==='') {
     alert('El campo cantidad se encuentra vacio');  
     return false
    } 
    
    //Campo proveedor
    var provprod=document.getElementById('provprod').value;
   
     if (provprod==="Proveedor") {
     alert('El campo proveedor vacio');  
     
    }
     else{
        alert('Proceso llevado correctamente');
        return false;
    }
   
    }
    
    function editar_Ord(){
    
    var foledit=document.getElementById("fol_ord").value;    
    if(foledit.length>6 ||foledit.length!==6){
        alert('El folio debe contener 6 digitos');
        
        return false;
    }
    
    var fechedit=document.getElementById("fech_orden").value;
    if ( fechedit== null || fechedit==0 ){
        alert('No se ha indicado la fecha inicial');
        return false;
    } 
    
     var hoy= new Date();
    if (fechedit>hoy){
        alert('la fecha inicial no puede mayor a la actual');
        document.getElementById('fechaini').value="";
        return false;
    }
    
    
    var fecentedit=document.getElementById("fecentedit").value;
    if ( fecentedit== null || fecentedit==0 ){
        alert('No se ha indicado la fecha final');
        return false;
    } 
    
   
    var fechaent=new Date(document.getElementById('fec_entrega').value);    
    var hoy= new Date();
    if (fechaini>fechaent){
        alert('la fecha inicial no puede ser mayor a la fecha de entrega');
        document.getElementById('fechaini').value="";
        return false;
    }
   //campo comprador
 var compedit=document.getElementById('compedit').value;
    
     if (compedit==='') {
     alert('El campo comprador se encuentra vacio');  
     return false
    } 
    
    //campo producto
 var prodedit=document.getElementById('prodedit').value;
    
     if (prodedit==='') {
     alert('El campo producto se encuentra vacio');  
     return false
    } 
    
    //campo cantidad
 var cantedit=document.getElementById('cantedit').value;
    
     if (cantedit==='') {
     alert('El campo cantidad se encuentra vacio');  
     return false
    } 
    
    //Campo proveedor
    var provedita=document.getElementById('provedita').value;
   
     if (provedita==="Proveedor") {
     alert('El campo proveedor vacio');  
     
    }else{
      alert('Orden editada correctamente');    
      return false;
    }
    
   
}

function buscarOrd(){
    
   var buscar=document.getElementById('buscarord').value;
   
     if (buscar==="Proveedor") {
     alert('El campo proveedor vacio');  
     return false;
    }  0
}




function agrProd(){
    //campo id
 var idprod=document.getElementById('ID').value;
    
     if (idprod==="") {
     alert('El campo ID se encuentra vacio');  
    return false
    }
    
     //campo nombre
 var nomprod=document.getElementById('nom').value;
    
     if (nomprod==="") {
     alert('El campo nombre se encuentra vacio');  
     return false
    }
    
    //campo precio
 var precprod=document.getElementById('preciocom').value;
    
     if (precprod==="") {
     alert('El campo precio se encuentra vacio');  
     return false
    }
    
    //campo precio venta
 var ventprod=document.getElementById('precioventa').value;
    
     if (ventprod==="") {
     alert('El campo precio venta se encuentra vacio');  
     return false
    }
    
     //campo proveedor
 var prov=document.getElementById('prov').value;
    
     if (prov==="") {
     alert('El campo proveedor se encuentra vacio');  
     return false
    }
    else{}
    
    alert('Producto agregado correctamente');  
     return false
    
}

function editProd(){
    
     //campo nombre
 var nomedit=document.getElementById('nom_prod').value;
    
     if (nomedit==="") {
     alert('El campo nombre se encuentra vacio');  
     return false;
    }
    
    //campo precio
 var precedit=document.getElementById('precio_com').value;
    
     if (precedit==="") {
     alert('El campo precio se encuentra vacio');  
     return false;
    }
    
    //campo precio venta
 var ventaedit=document.getElementById('precio_ven').value;
    
     if (ventaedit==="") {
     alert('El campo precio venta se encuentra vacio');  
     return false;
    }
    
     //campo proveedor
 var provedit=document.getElementById('prov').value;
    
     if (provedit==="") {
     alert('El campo proveedor se encuentra vacio');  
     return false;
    }
    
    else{
      alert('Producto modificado correctamente');  
     return false;  
    }
    
}

function nuevaCompra(){
  var clave=document.getElementById('folioComp').value;
    
     if (clave==='') {
     alert('El campo clave  se encuentra vacio');  
     return false
    } 
    
    var fecentedit=document.getElementById("fechacomp").value;
    if ( fecentedit== null || fecentedit==0 ){
        alert('No se ha indicado la fecha inicial');
        return false;
    } 
    
   
    var fechaent=new Date(document.getElementById('fechacomp').value);    
    var hoy= new Date();
    if (fechaini>fechaent){
        alert('la fecha inicial no puede ser mayor a la fecha de entrega');
        document.getElementById('fechaini').value="";
        return false;
    }
    
    var pago=document.getElementById('totalp').value;
    
     if (pago==='') {
     alert('El campo pago vacio');  
     return false;
    } 
    
    else{
        alert('Proceso llevado correctamente');
        return false;
    }
    
}


function listCompra(){
   
   if(!document.getElementById('op1').checked && !document.getElementById('op2').checked && !document.getElementById('op3').checked && !document.getElementById('op4').checked){
alert('Debes seleccionar una opcion');
return false;
}
}

function Bucarprov(){
   
   if(!document.getElementById('opc1').checked && !document.getElementById('opc2').checked && !document.getElementById('opc3').checked && !document.getElementById('opc4').checked){
alert('Debes seleccionar una opcion');
return false;
}
    
}
    
    //nuevo
    

    
    

