<!DOCTYPE html>
<jsp:useBean id="Usuario" type="br.com.eduardorosa.temspotfy.model.Usuario" scope="session"/>
<%@taglib uri ="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
                        Minhas Playlists
                    </h4>

                </div>
            </div>

            <div class="row" id="menu">
                <div class="col-md-2">
                    &nbsp;
                </div>
                    <div class="col-md-8">
                        
                        <ul class="nav ">
				<li class="nav-itemr">
					<a class="nav-link active" href="#">Nova PlayList</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./myPlaylists">Minhas PlayLists</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Upload Musica</a>
				</li>
			</ul>  
                    </div>
                
                    <div class="col-md-2">
                        &nbsp;
                    </div>

                </div>
            <c:forEach var="playlist" items="${Usuario.playlists}">
            <!--Várias iterações-->
                <div class="row">
                    <div class="col-md-2">&nbsp;</div>
                    
                    <div class="col-md-8">
                        <strong>${playlist.titulo}</strong>
                        <ul>
                        <c:forEach var = "musica" items= "${playlist.musicas}">
                            <li>${musica.titulo}(${musica.artista})</li>
                        </c:forEach>
                        </ul>
                    </div>
                    <div class="col-md-2">&nbsp;</div>
                    
                </div>
            </c:forEach>
          </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>