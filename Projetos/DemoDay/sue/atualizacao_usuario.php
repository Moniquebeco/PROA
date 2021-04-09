<?php


$nome=$_POST['nome'];
$cpf=$_POST['cpf'];
$email=$_POST['email'];                 //atribuir as variaveis para com os names do form
$senha=$_POST['senha'];
$tel=$_POST['tel'];
$nasc=$_POST['nasc'];
$cep=$_POST['cep'];
$estado=$_POST['estados_brasil'];
$ncasa=$_POST['ncasa'];
$comp=$_POST['comp'];

// conectando ao banco
include('conexao.php');

$sql="INSERT INTO tbl_aluno(nome, cpf, email, senha, tel, nasc, cep, estados_brasil, ncasa, comp) VALUES ('$nome', '$cpf', '$email', '$senha', '$tel', '$nasc', '$cep', '$estado', '$ncasa', '$comp')";

$resultado=mysqli_query($conn,$sql) or die('falha na atualização do registro');

//fechar a conexao
mysqli_close($conn);

header('location: login.html');
?>