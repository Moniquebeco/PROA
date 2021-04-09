//mascara telefone
const tel = document.getElementById('tel') // Seletor do campo de telefone

tel.addEventListener('keypress', (e) => mascaraTelefone(e.target.value)) // Dispara quando digitado no campo
tel.addEventListener('change', (e) => mascaraTelefone(e.target.value)) // Dispara quando autocompletado o campo

const mascaraTelefone = (valor) => {
    valor = valor.replace(/\D/g, "")
    valor = valor.replace(/^(\d{2})(\d)/g, "($1) $2")
    valor = valor.replace(/(\d)(\d{4})$/, "$1-$2")
    tel.value = valor // Insere o(s) valor(es) no campo
}

//mascara CPF
function mascara(i){
   
    var v = i.value;
    
    if(isNaN(v[v.length-1])){ // impede entrar outro caractere que não seja número
       i.value = v.substring(0, v.length-1);
       return;
    }
    
    i.setAttribute("maxlength", "14");
    if (v.length == 3 || v.length == 7) i.value += ".";
    if (v.length == 11) i.value += "-";
 
 }


//password senha
 var password = document.getElementById("password")
 , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
 if(password.value != confirm_password.value) {
   confirm_password.setCustomValidity("Senhas diferentes!");
 } else {
   confirm_password.setCustomValidity('');
 }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

//ocultar senha
document.querySelector('#btn1').addEventListener('click', ()=>{
  let senha=document.getElementById('senha');
  document.getElementById('btn1').style.display='none';
  document.getElementById('btn2').style.display='inline';
  if (senha.type=='password'){
      senha.type='text';
  }
});

document.querySelector('#btn2').addEventListener('click', ()=>{
  let senha=document.getElementById('senha');
  if (senha.type=='text') {
      senha.type='password';
      document.getElementById('btn1').style.display='inline';
      document.getElementById('btn2').style.display='none';
  }
});



//cep
$(document).ready(function () { 
  var $campo = $("#cep");
  $campo.mask('00000-000', {reverse: true});
});


