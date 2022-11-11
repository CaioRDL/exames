 <?php

include('conecta.php');

$id = intval($_GET['id']);

if (count($_POST) > 0) {
    $id = $_GET['id'];
    $paciente = $_POST['paciente'];
    $nacionalidade = $_POST['nacionalidade'];
    $idade = $_POST['idade'];
    $data = $_POST['data'];
    $peso = $_POST['peso'];


    $erro = '';
    if (empty($paciente)) {
        $erro = 'Preencha o título.';
    }

    if ($erro) {
        echo "<p style='color: red;'>$erro</p>";
    } else {
        $sql = "UPDATE `cadastro_paciente` SET `paciente`='$paciente',`nacionalidade`='$nacionalidade',`idade`='$idade',`data`='$data',`peso`='$peso', WHERE `id` = '$id' ";
    }

    $dados_atualizados = $conexao->query($sql) or die($conexao->error);

    if ($dados_atualizados) {
        echo "<h1 style='color: aquamarine;'>Atualizado com sucesso!</h1>";
    } else {
        die("ERROR: Não atualizado! $sql");
    }
}

$sql_cadastro_paciente = "SELECT * FROM `cadastro_paciente` WHERE id = '$id'";
$query_cadastro_paciente = $conexao->query($sql_cadastro_paciente) or die($conexao->error);
$cadastro_paciente = $query_cadastro_paciente->fetch_assoc();

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Registro do Paciente</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    
    </head>
    <nav>
        
    </nav>
    <body class="bg-primary">
    <form action="crud_cadastrocliente.php" method="post">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Registro do Paciente</h3></div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                     <div class="form-floating mb-3 mb-md-0">
                                                        <input value="<?php echo @$cadastro_paciente['id']; ?>" class="form-control" id="inputFirstName" type="text" placeholder="Digite o ID do paciente" name="id"/>
                                                        <label for="id">Digite o ID do paciente</label>
                                                    </div>

                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input value="<?php echo @$cadastro_paciente['paciente']; ?>" class="form-control" id="inputnome" type="text" placeholder="Digite o nome do Paciente" name="paciente"/>
                                                        <label for="nome">Digite o nome do Paciente</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input value="<?php echo @$cadastro_paciente['nacionalidade']; ?>" class="form-control" id="inputnacionalidade" type="text" placeholder="Nacionalidade" name="nacionalidade" />
                                                        <label for="nacionalidade">Nacionalidade</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                            <input value="<?php echo @$cadastro_paciente['idade']; ?>" class="form-control" id="inputidade" type="number" placeholder="idade" name="idade"/>
                                                <label >Qual a idade do paciente?</label>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputdata" type="date" placeholder="Data de Entrada" name="data" />
                                                        <label for="data">Data de Entrada</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputpeso" type="text" placeholder="Digite o Peso do Paciente" name="peso"/>
                                                        <label for="peso">Digite o Peso do Paciente</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <!-- <div class="d-grid"><a class="btn btn-primary btn-block" href="crud_cadastrocliente">Create Account</a> -->
                                                <input type="submit" value="Cadastrar">
                                            </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    
        
        </form>
      
    </body>
</html>