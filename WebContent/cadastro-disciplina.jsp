<!DOCTYPE html>
<html lang="pt_BR">

<head>
        <title>Agenda Acadêmica</title><meta charset="UTF-8" />
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
          <form name="frm" method="post" action="disciplinaControlador?action=cadastro-disciplina">
            <div class="control-group">
              <div class="controls">
              	<input type=hidden name="iddisciplina" value="${disciplina.iddisciplina}">
                <div class="main_input_box">
                    <span class="add-on bg_ly"><i class="icon-user"></i></span><input type="text" class="span11" placeholder="Nome do professor" name="professor" value="${disciplina.professor}" required/>
                </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lg"><i class="icon-envelope"></i></span><input type="email" class="span11" placeholder="E-mail do professor (opcional)" name="emailprof" value="${disciplina.emailprof}"/>
                </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_ls"><i class="icon-info-sign"></i></span><input type="text" class="span11" placeholder="Disciplina" name="disciplina" value="${disciplina.disciplina}" required/>
                </div>
              </div>
            </div>
            <div class="form-actions" >
              <span><a href="login.jsp" class="flip-link btn btn-danger" id="to-login">Cancelar</a></span>
              <button type="reset" class="btn btn-primary">Limpar campos</button>
              <button type="submit" class="btn btn-success">Cadastrar</button>
            </div>
          </form>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/matrix.login.js"></script>
    </body>

</html>
