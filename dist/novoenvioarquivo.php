<?php

include("conecta.php");

if(isset($_FILES['arquivo'])){
    $arquivo=$_FILES['arquivo'];
    if($arquivo['error'])
        die ("falha ao enviar o arquivo");
    if($arquivo['size']>6000000)
        die ("arquivo muito grande!!! Max:2Mb");
    $pasta="arquivos/";
    $nomedoarquivo=$arquivo['name'];
    $novoNomedoArquivo= uniqid();
    $extensao = strtolower(pathinfo($nomedoarquivo, PATHINFO_EXTENSION));

    if($extensao != "jpg" && $extensao != "png")
        die("Tipo de arquivo não aceito");

    $path=$pasta.$novoNomedoArquivo.".".$extensao;

    $deu_certo=move_uploaded_file($arquivo['tmp_name'],$path);
    if($deu_certo){
        mysqli_query($conexao,"INSERT INTO capa(nome,path)  VALUES('$nomedoarquivo','$path')");
        echo"<p>arquivo enviado com sucesso</p>";
    }else{
        echo "<p>falha ao enviar o arquivo</p>";
    }
}
    ?>

    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>upload de arquivos</title>
    </head>
    <body>
        <form method="POST" enctype="multipart/form-data" action="novoenvioarquivo.php">
        <p><label for="">Selecione um arquivo</label>
        <input name="arquivo" type="file"></p>
        <button name="upload" type="submit"value="escolha">Enviar arquivo</button>
    </form>
        
    </body>
    </html>
