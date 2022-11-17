<?php
include('conecta.php');

$recid= intval($_GET['id_capa']);

mysqli_query($conexao, "DELETE  FROM `capa` WHERE id_capa = $recid");



    header("location:docs.php");
