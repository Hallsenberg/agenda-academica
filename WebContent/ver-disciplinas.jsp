<!DOCTYPE html>
<html lang="pt_BR">
<head>
<title>Agenda Acadêmica</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="img/favicon.png">
</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Atendimento Acadêmico</a></h1>
</div>
<!--close-Header-part-->

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Perfil</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i>Meu perfil</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i>Eventos</a></li>
        <li class="divider"></li>
        <li><a href="login.jsp"><i class="icon-share-alt"></i>Sair</a></li>
      </ul>
    </li>
    <!-- 
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Mensagens</span> <span class="label label-important">0</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i>Nova mensagem</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i>Caixa de Entrada</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i>Enviados</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i>Lixeira</a></li>
      </ul>
    </li>
    -->
    <li class=""><a title="" href="login.jsp"><i class="icon icon-share-alt"></i> <span class="text">Sair</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>Início</a>
  <ul>
    <li class="active"><a href="index.html"><i class="icon icon-home"></i> <span>Início</span></a></li>
    <li class="submenu"><a href="#"><i class="icon icon-folder-open"></i><span>Disciplina</span></a>
      <ul>
        <li><a href="cadastro-disciplina.jsp">Cadastrar disciplina</a></li>
        <li><a href="ver-disciplinas.jsp">Ver disciplinas</a></li>
      </ul>
    </li>
    <li class="submenu"><a href="#"><i class="icon-check"></i><span>Eventos</span></a>
      <ul>
        <li><a href="#">Cadastrar evento</a></li>
        <li><a href="#">Ver eventos</a></li>
      </ul>
    </li>
    <li class="submenu"><a href="#"><i class="icon icon-book"></i><span>Notas</span></a>
      <ul>
        <li><a href="#">Cadastrar nota</a></li>
        <li><a href="#">Ver notas</a></li>
      </ul>
    </li>
    <li><a href="calendario.jsp"><i class="icon icon-calendar"></i>Calendário</a></li>
  </div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Voltar para página inicial" class="tip-bottom"><i class="icon-home"></i>Início</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_ls"> <a href="index.html"> <i class="icon-home"></i>Início</a> </li>
        <li class="bg_dy"> <a href="ver-disciplinas.jsp"> <i class="icon-folder-open"></i>Disciplina</a></li>
        <li class="bg_lg"> <a href="#"> <i class="icon-check"></i>Eventos</a></li>
        <li class="bg_lv"> <a href="#"> <i class="icon-book"></i>Notas</a></li>
        <li class="bg_lo"> <a href="#"> <i class="icon-calendar"></i>Calendário</a> </li>
      </ul>
    </div>		
<!--End-Action boxes-->

<!--main-container-part-->
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
</div>

<!--end-Footer-part-->

<script src="js/excanvas.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.ui.custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.flot.min.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/matrix.js"></script>
<script src="js/matrix.dashboard.js"></script>
<script src="js/jquery.gritter.min.js"></script>
<script src="js/matrix.interface.js"></script>
<script src="js/matrix.chat.js"></script>
<script src="js/jquery.validate.js"></script>
<script src="js/matrix.form_validation.js"></script>
<script src="js/jquery.wizard.js"></script>
<script src="js/jquery.uniform.js"></script>
<script src="js/select2.min.js"></script>
<script src="js/matrix.popover.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/matrix.tables.js"></script>

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {

          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();
          }
          // else, send page to designated URL
          else {
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>
