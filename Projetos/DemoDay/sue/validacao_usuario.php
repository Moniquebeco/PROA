<?php 

if(!empty($_POST['email']) && !empty($_POST['senha'])){

    // usuário preencheu todas as informações
    $email = $_POST['email'];
    $senha = $_POST['senha'];
}
else{
    echo("<script>
            alert('usuário ou senha incorretos!');
            window.location.href='login.html';
        </script>");
}

$sql="SELECT * FROM tbl_aluno WHERE email='$email' AND senha='$senha'";

include('conexao.php');

$resultado=mysqli_query($conn,$sql);

$linha=mysqli_fetch_array($resultado);

mysqli_close($conn);

if(!$linha){
    // econtrou o usuario
    echo ("<script> 
        alert('usuario não cadastrado!');
        window.location.href='login.html';
        </script>");
}
else{

        session_start();

        $_SESSION['id']=$linha['id_aluno'];

        echo("<script> 
        window.location.href='home.html';
        </script>");
}


?>