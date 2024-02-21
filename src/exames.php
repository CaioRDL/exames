<?php

if(isset($_FILES['arquivo'])){
    $srquivo=$_FILES['arquivo'];
    if(@$arquivo['error'])
        die("Falha ao enviar o arquivo");
    if(@$arquivo['size']>600000)
       die("arquivo muito grande!!! Max: 2Mb");
    $pasta= "arquivo/";
    $nomedoarquivo=@$arquivo['name'];
    $novonomedoarquivo= uniqid();
    $extensao= strtolower(pathinfo($nomedoarquivo, PATHINFO_EXTENSION));

    if($extensao != "pdf" && $extensao != "png")
        die("Tipo de arquivo não aceito");
    $deu_certo= move_uploaded_file($arquivo['tmp_name'], $pasta, $novonomedoarquivo. ".".$extensao);    
    if($deu_certo)    
    echo "<p> Arquivo enviado com sucesso!! Para acessa-lo, <a target=\"_blank\"href=\"arquivos/$novonomedoarquivo.$extensao\">Clique Aqui>/a></p>";
        else
        echo "<p> Falha ao enviar o arquivo </p>"; 
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>upload de arquivos</title>
</head>
<body>
    <form method="POST" enctype="multipart/form-data">
        <!-- O atributo enctype serve para definir o tipo de codificação com que os dados serão enviados. Atualmente existe a codificação application/x-www-form-urlencoded (default) e a codificação multipart/form-data.  -->
        <p><label for="">Selecione um Arquivo</label>
            <input name="arquivo" type="file">
        </p>
        <button name="upload" type="submit">Enviar o Arquivo</button>
    </form>
</body>
</html>