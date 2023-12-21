//Valor del ticket
const ticket = 2000;

//Descuentos

const estudiante = 0.8;
const trainee = 0.5;
const junior = 0.15;

// captar los datos del form

const formularioDesc = document.getElementById('formulariodesc');
const categoriaDesc= document.getElementById('categoriadesc');
const cantidadtkts = document.getElementById('tkts');
const totalAPagar = document.getElementById('totalapagar');
const btnResumen = document.getElementById('btnresumen');
const btnBorrar = document.getElementById('btnborrar');
const btnComprar = document.getElementById('btncompra');
const nombre = document.getElementById('nombre');
const apellido = document.getElementById('apellido');
const email = document.getElementById('email');


function precio() {
    let total = cantidadtkts.value*ticket;

    //control de espacios vacios

    if (nombre.value == ''){
        totalAPagar.textContent = 'Por favor complete todos los campos del formulario';
        totalAPagar.style.backgroundColor = 'red';
    }
    else if(apellido.value == ''){
        totalAPagar.textContent = 'Por favor complete todos los campos del formulario';
        totalAPagar.style.backgroundColor = 'red';
    }
    else if (email.value == ''){
        totalAPagar.textContent = 'Por favor complete todos los campos del formulario';
        totalAPagar.style.backgroundColor = 'red';
    }
    //aplique de descuentos
    else if (parseInt(cantidadtkts.value) > 0) {
        totalAPagar.style.backgroundColor = '#29BBFF';
        btnComprar.style.visibility = 'visible';
        switch(categoriaDesc.value){
            case 'estudiante':
                total -= total*estudiante;
                totalAPagar.textContent = 'Total a pagar: $' + total;
                break;
            case 'trainee':
                total -= total*trainee;
                totalAPagar.textContent = 'Total a pagar: $' + total;
                break;
            case 'junior':
                total -= total*junior;
                totalAPagar.textContent = 'Total a pagar: $' + total;
                break;
            default:
                totalAPagar.textContent = 'Total a pagar: $' + total;
                break;
        }
    }
    else{
        totalAPagar.textContent = 'La cantidad de tickets no puede ser cero';
        totalAPagar.style.backgroundColor = 'red';}
}

function borrarForm(){
    nombre.value = '';
    apellido.value = '';
    email.value = '';
    cantidadtkts.value = '';
    totalAPagar.textContent = 'Total a pagar: $'
    totalAPagar.style.backgroundColor = '#29BBFF';
    btnComprar.style.visibility = 'hidden';
}

//e.preventdefault es para evitar la funcion por default de los forms de enviar lo del form al backend
btnResumen.addEventListener('click', (e)=>{e.preventDefault()
precio()});

btnBorrar.addEventListener('click', (e)=>{e.preventDefault()
    borrarForm()});

btnComprar.addEventListener('click', (e)=>{e.preventDefault()});