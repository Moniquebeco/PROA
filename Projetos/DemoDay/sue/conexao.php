<?php 

$server = "localhost";
$user = "root";
$password = "root";
$database = "sue";

// criar conexão                  nessa ordem

$conn = mysqli_connect($server, $user, $password, $database);


// teste de conexão

if(!$conn){
    die("conexão falhou: ".mysqli_connect_error());
}
else{
    mysqli_query( $conn, "SET NAMES 'utf8'" );
    mysqli_query( $conn, 'SET character_set_connection=utf8' );
    mysqli_query( $conn, 'SET character_set_client=utf8' );
    mysqli_query( $conn, 'SET character_set_results=utf8' );
}
// mysqli_close($conn); para parar a conexão

?>