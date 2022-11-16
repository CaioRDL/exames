<?php
include ("conecta.php");

$recid= intval($_GET['id']);


$query ="DELETE FROM `cadastro_paciente` WHERE id=$recid";


$result = mysqli_query($conexao,$query);

if(!$result){
    echo("Não foi possivel Excluir esse contato");
}else{
    header('location: listapaciente.php');
}


?>