<!DOCTYPE html>
<html lang="pt_BR">

<head>
        <title>Atendimento Acadêmico</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/matrix-login.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="img/favicon.png">

    </head>
    <body>
        <div id="loginbox">
          <div class="control-group normal_text"> <h3><img src="img/logo.png" alt="Logo" /></h3></div>
          <form action="#" method="post" class="form-vertical">
            <div class="control-group">
              <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_ly"><i class="icon-user"></i></span><input type="text" class="span11" placeholder="Insira seu nome" required/>
                </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lg"><i class="icon-envelope"></i></span><input type="email" class="span11" placeholder="E-mail" required/>
                </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_ls"><i class="icon-info-sign"></i></span><input type="text" class="span11" placeholder="Número de matrícula" required/>
                </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lr"><i class="icon-lock"></i></span><input type="password" class="span11" placeholder="Digite sua senha" required/>
                </div>
              </div>
            </div>
            <div class="form-actions" >
              <button type="reset" class="btn btn-primary">Limpar campos</button>
              <a href="login.jsp"><button class="btn btn-danger">Cancelar</button></a>
              <button type="submit" class="btn btn-success">Cadastrar</button>
            </div>
          </form>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/matrix.login.js"></script>
    </body>

</html>
