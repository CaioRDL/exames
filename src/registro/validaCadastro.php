<?php

    require('../configs/conecta.php');
    $nome = $_POST['nome'];

    $usuario = $_POST['usuario'];
    
    $senha = $_POST['senha'];

    $hash = password_hash($senha, PASSWORD_DEFAULT);

    $query = "INSERT INTO usuarios (nome, usuario, senha) VALUES ('$nome','$usuario','$hash')";

    $result = mysqli_query($conexao, $query);

    /* echo $query; */

    echo "<br>";
     
    header('location:cadastro.php');


?>