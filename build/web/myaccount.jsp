<!DOCTYPE html>
<jsp:useBean id="Usuario" type="br.com.eduardorosa.temspotfy.model.Usuario" scope="session"/>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Tem Spotfy by Tem Aula</title>


        <meta name="Eduardo Rosa">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <img src="img/logo-spotfy.png" class="logo-principal">
                </div>
                <div class="col-md-12">
                    <h3 class="text-center">
                        Sua playlist na web
                    </h3>

                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h4 class="text-center">
                        Bem vindo!!! ${Usuario.nome}
                    </h4>

                </div>
            </div>

            <div class="row" id="conteudo">
                <div class="col-md-2">
                    &nbsp;
                </div>
                    <div class="col-md-8">
                        
                        <ul class="nav ">
				<li class="nav-item ml-md-auto">
					<a class="nav-link active" href="#">Nova PlayList</a>
				</li>
				<li class="nav-item ml-md-auto">
					<a class="nav-link" href="./myPlaylists">Minhas PlayLists</a>
				</li>
				<li class="nav-item ml-md-auto">
					<a class="nav-link" href="#">Upload Musica</a>
				</li>
			</ul>
                        
                        
                    </div>
                    <div class="col-md-2">
                        &nbsp;
                    </div>

                </div>
            </div>

        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>