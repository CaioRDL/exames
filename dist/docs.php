<?php

include("conecta.php");

if (isset($_FILES['arquivo'])) {
    $arquivo = $_FILES['arquivo'];
    if ($arquivo['error'])
        die("falha ao enviar o arquivo");
    if ($arquivo['size'] > 6000000)
        die("arquivo muito grande!!! Max:2Mb");
    $pasta = "./arquivos";
    $nomedoarquivo = $arquivo['name'];
    $novoNomedoArquivo = uniqid();
    $extensao = strtolower(pathinfo($nomedoarquivo, PATHINFO_EXTENSION));

    if ($extensao != "pdf" && $extensao != "pdf")
        die("Tipo de arquivo não aceito");

    $path = $pasta . $novoNomedoArquivo . "." . $extensao;

    $deu_certo = move_uploaded_file($arquivo['tmp_name'], $path);
    if ($deu_certo) {
        mysqli_query($conexao, "INSERT INTO capa(nome,path)  VALUES('$nomedoarquivo','$path')");
        echo "<p>arquivo enviado com sucesso</p>";
    } else {
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
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/47e9777af5.js" crossorigin="anonymous"></script>

</head>

<body>

    <p><label for="">Selecione um arquivo</label>
        <input name="arquivo" type="file">
    </p>
    <button name="upload" type="submit" value="escolha">Enviar arquivo</button>

    <center>
        <table border="1">
            <thead>
                <th>ID</th>
                <th>PATH</th>
                <th>Data de Envio</th>
                <th>Nome Arquivo</th>

                <th colspan="2">Ação</th>
            </thead>

            <?php
            include('conecta.php');
            $dados = mysqli_query($conexao, "SELECT * FROM `capa`");
            while ($item = mysqli_fetch_assoc($dados)) {
            ?>
                <tr>
                    <td><?= $item['id_capa'] ?></td>
                    <td><?= $item['path'] ?></td>
                    <td><?= $item['data_envio'] ?></td>
                    <td><?= $item['nome'] ?></td>
                    <td onclick="verifica('<?= $item["id"]; ?>')"><a href="#"><i class="fa fa-trash"></a></td>
                </tr>
            <?php } ?>
        </table>
        <script>
            function verifica(recid) {
                if (confirm("Tem certeza que deseja Excluir permanentemente este Paciente?")) {
                    window.location = "excluirpaciente.php?id=" + recid
                }

            }
        </script>
    </center>

    </form>

</body>

</html>