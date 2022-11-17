<?php
include('conecta.php');

$recid= intval($_GET['id_capa']);



$query = "DELETE FROM `capa` WHERE id_capa = $recid";


$result = mysqli_query($conexao,$query);

if(!$result){
    echo("Erro ao excluir");
}else{
    header("location:docs.php");
}

?>