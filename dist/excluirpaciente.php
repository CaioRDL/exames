<?php
include ("conecta.php");

$recid= intval($_GET['id']);


mysqli_query($conecta, "DELETE FROM livros WHERE id=$recid");


header("location:listapaciente.php");


?>