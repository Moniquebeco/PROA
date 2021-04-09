<?php   

include('conexao.php');

$sec="SELECT tbl_aluno.id_aluno, tbl_ponto.id_aluno FROM tbl_ponto INNER JOIN tbl_aluno on tbl_aluno.id_aluno=tbl_ponto.id_aluno";

$sec2="SELECT ponto FROM tbl_ponto WHERE id_aluno=$sec";

$resultado=mysqli_query($conn,$sec,$sec2);

$linha=mysqli_fetch_array($resultado);

$pontos=$linha['ponto'];
$pontos=$pontos + 20;


if ($linha) {
    
    $sql="UPDATE tbl_ponto SET ponto = $pontos  WHERE id_aluno=$linha";

}
else{

    $sql="INSERT INTO tbl_ponto(ponto,id_aluno) VALUES ('$btn','$linha')";

}


$resultado=mysqli_query($conn,$sql);

mysqli_close($conn);

header("location: desafios.html");

?>