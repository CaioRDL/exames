<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/47e9777af5.js" crossorigin="anonymous"></script>
</head>

<body>
    <h1 class="lista__livros">Lista de Paciente Cadastrados</h1>
    <table border="1">
        <thead>
            <th>ID</th>
            <th>paciente</th>
            <th>nacionalidade</th>
            <th>idade</th>
            <th>data</th>
            <th>peso</th>
            <th colspan="2">Ação</th>
        </thead>
        <?php
        require('conecta.php');
        $dados = mysqli_query($conexao, "SELECT * FROM `cadastro_paciente`");
        while ($item = mysqli_fetch_assoc($dados)) {
        ?>
            <tr>
                <td><?= $item['id'] ?></td>
                <td><?= $item['paciente'] ?></td>
                <td><?= $item['nacionalidade'] ?></td>
                <td><?= $item['idade'] ?></td>
                <td><?= $item['data'] ?></td>
                <td><?= $item['peso'] ?></td>
                <td><a href="editarpaciente.php?id=<?php echo $item['id']; ?>" target="_blank"><i class="fa fa-pencil"></a></td>
                <td onclick="verifica('<?= $item["id"];?>')"><a href="#"><i class="fa fa-trash"></a></td>
            </tr>
        <?php } ?>
    </table>
    <script>
        function verifica(recid) {
            if (confirm("Deseja seguir com a exclusão permanente deste item?")) {
                window.location = "excluirpaciente.php?id=" + recid
            }
        }
        
    </script>

</body>

</html>