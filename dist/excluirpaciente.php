<?php
require('conecta.php');

$recid = $_GET['id'];

$query = "DELETE  FROM `cadastro_cliente` WHERE id=$recid";


header("location:listapaciente.php");


?>