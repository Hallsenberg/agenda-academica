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
            <form id="loginform" class="form-vertical" action="index.html">
				 <div class="control-group normal_text"> <h3><img src="img/logo.png" alt="Logo" /></h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-info-sign"> </i></span><input type="text" placeholder="Matrícula" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" placeholder="Senha" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="cadastro.jsp" class="flip-link btn btn-info">Criar uma conta</a></span>
                    <span class="pull-right"><a type="submit" href="index.html" class="btn btn-success" />Login</a></span>
                </div>
            </form>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/matrix.login.js"></script>
    </body>

</html>
