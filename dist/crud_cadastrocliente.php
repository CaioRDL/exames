<?php

require('conecta.php');

$id = $POST['id'];
$paciente = $_POST['paciente'];
$nacionalidade = $_POST['nacionalidade'];
$idade = $_POST['idade'];
$data = $_POST['data'];
$peso = $_POST['peso'];

$query = "INSERT INTO `cadastro_paciente`(`id`, `paciente`, `nacionalidade`, `idade`, `data`, `peso`) VALUES ('$id','$paciente','$nacionalidade','$idade','$data','$peso')";

$result = mysqli_query($conexao,$query);
    if(!$result){
    echo("Perdeu conexão");
    }else{
        header('location: cadastropaciente.php');
    }
?>