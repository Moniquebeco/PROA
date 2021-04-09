<?php   

include('conexao.php');

session_start();

$sec="SELECT * FROM tbl_ponto WHERE id_aluno=$_SESSION[id]";

$resultado=mysqli_query($conn,$sec);

$linha=mysqli_fetch_array($resultado);

if($linha){
    
        $sql="UPDATE tbl_ponto SET ponto = $linha[ponto] + 20 WHERE id_aluno=$_SESSION[id]";

        $resultado=mysqli_query($conn,$sql);

    
}
else{

    $pontos= 20;

    $sql="INSERT INTO tbl_ponto (ponto,id_aluno) VALUES ($pontos,$_SESSION[id])";

    mysqli_query($conn,$sql);
    
}

mysqli_close($conn);

header("location: memoria.html");

?>