<?php
if (isset($_POST['email'])) {
    require('conecta.php');
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    $query = "SELECT `senha` FROM `usuarios` WHERE email = '$email';";
    $result = mysqli_query($conexao, $query) or die("Não foi possível executar.");

    $usuario = $result->fetch_assoc();

    if (password_verify(@$senha, @$usuario['senha'])) {
        header('location: inicio.php');
    } else {
        echo "<h2>Usuário ou Senha está incorreto!</h2>";
    }
}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
    </head>
    <form action="" method="post">
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container" style="margin: none; padding: none;">
                        <div id="container_logo" style="display: flex; flex-direction: row; justify-content: center; text-align: center; margin-top:10px; border-bottom: solid 0.5px rgba(8, 8, 8, 0.6); padding-bottom: 5px; width: 100%;">
                            <img src="assets/img/logo.png" alt="logo.png" class="logo" style="width: 200px;">
                                <div style="heith: 75px;  width: 1px;  border: solid 0.5px rgba(8, 8, 8, 0.6); border-radius:50px;"></div>
                                <h4 style="display: flex;flex-direction: column;justify-content: center;margin-left: 25px;"> A sua solução de saúde </h4>
                        </div>
                                    <div class="row justify-content-center">
                                        <div class="col-lg-5">
                                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                                
                                                <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                                <div class="card-body">
                                                    <form>
                                                        <div class="form-floating mb-3">
                                                            <input class="form-control" id="inputEmail" type="email" placeholder="name@example.com" name="email"/>
                                                            <label for="inputEmail">Email </label>
                                                        </div>
                                                        <div class="form-floating mb-3">
                                                            <input class="form-control" id="inputPassword" type="password" placeholder="Password" name="senha"/>
                                                            <label for="inputPassword">Password</label>
                                                        </div>
                                                        <div class="form-check mb-3">
                                                            <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                            <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                                                        </div>
                                                        <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                            <a class="small" href="password.html">Forgot Password?</a>
                                                            <input class="btn btn-primary" type="submit" value="Login">
                                                        
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="card-footer text-center py-3">
                                                    <div class="small"><a href="register.php">Need an account? Sign up!</a>
                                                
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
        <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script> -->
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        </form>
    </body>
</html>
