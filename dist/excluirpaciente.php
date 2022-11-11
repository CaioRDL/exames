<?php
require('conecta.php');

$recid = $_GET['id'];

$query = "DELETE  FROM `cadastro_cliente` WHERE id=$recid";

$result = mysqli_query($conexao,$query);

header("location:listapaciente.php");


?>