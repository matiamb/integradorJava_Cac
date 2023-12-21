<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Trabajo Practico Integrador</title>
</head>
<body>
    <!--Barra de navegacion-->
    <nav class="navbar">
        <div class="container-fluid">
            <a class="navbar-brand d-flex" href="./index.jsp">
                <img src="./images/codoacodo.png" alt="Logo" width="50" height="35" class="d-inline-block">
                <div class="text-light ">Conf Bs As</div>
            </a>
            <div class="d-flex justify-content-end gap-3">
                <a class="nav-link text-light" href="#">La Conferencia</a>
                <a class="nav-link text-secondary" href="#">Los Oradores</a>
                <a class="nav-link text-secondary" href="#">El Lugar y la fecha</a>
                <a class="nav-link text-secondary" href="#">Conviertete en orador</a>
                <a class="nav-link text-success" href="tickets.jsp">Comprar tickets</a>
            </div>
        </div>
    </nav>

    <!--Contenedor 2 Presentacion-->

    <div class="card" >
        <img class="fondo1 card-img-top" src="./images/ba3.jpg" alt="Card image">
        <div class="texto1 card-img-overlay d-flex flex-column align-items-end justify-content-center">
          <h2 class="card-title">Conf Bs As</h2>
          <p class="card-text text-end text-wrap" style="width: 28rem;">Bs As llega por pimera vez a Argentina. Un evento para compartir con
            nuestra comunidad el conocimiento y experiencia de los expertos que estan creando el futuro de internet.
            Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer
            nivel que tenemos para ti. Te esperamos!
          </p>
          <div class="d-flex gap-3">
            <a href="#" class="btn btn-light">Quiero ser orador</a>
            <a href="tickets.jsp" class="btn btn-success">Comprar tickets</a>
            </div>
        </div>
    </div>

    <!--Contenedor 3 Oradores-->

    <div class="text-center pt-2">Conoce a los<br><h2>ORADORES</h2></div>    
    <div class="container-fluid d-flex justify-content-center gap-5 p-2">
        
        <!--Tarjeta 1-->
        <div class="card" style="width:300px">
            <img class="card-img-top" src="./images/steve.jpg" alt="Card image">
            <div class="card-body">
                <div class="d-flex gap-1">
                    <div class="highlight bg-warning fw-bold ps-1 pe-1">JavaScript</div>
                    <div class="highlight bg-primary text-light fw-bold ps-1 pe-1">React</div>
                </div>
                <h4 class="card-title">Steve Jobs</h4>
                <p class="textoCard card-text">Steven Paul Jobs âfue un empresario, diseÃ±ador industrial, magnate empresarial, 
                    propietario de medios e inversor estadounidense. Fue cofundador y presidente ejecutivo de Apple
                    â y mÃ¡ximo accionista individual de The Walt Disney Company.â</p>
            </div>
        </div>
        <!--Tarjeta 2-->
        <div class="card" style="width:300px">
            <img class="card-img-top" src="./images/bill.jpg" alt="Card image">
            <div class="card-body">
                <div class="d-flex gap-1">
                    <div class="highlight bg-warning fw-bold ps-1 pe-1">JavaScript</div>
                    <div class="highlight bg-primary text-light fw-bold ps-1 pe-1">React</div>
                </div>
              <h4 class="card-title">Bill Gates</h4>
              <p class="textoCard card-text">William Henry Gates III, mÃ¡s conocido como Bill Gates, es un magnate empresarial,
                 desarrollador de software, inversor, autor y filÃ¡ntropo estadounidense. 
                 Es cofundador de Microsoft, junto con su difunto amigo de la infancia Paul Allen.</p>
            </div>
        </div>
        <!--Tarjeta 3-->
        <div class="card" style="width:300px">
            <img class="card-img-top" src="./images/ada.jpeg" alt="Card image">
            <div class="card-body">
                <div class="d-flex gap-1">
                    <div class="highlight bg-secondary text-light fw-bold ps-1 pe-1">Negocios</div>
                    <div class="highlight bg-danger text-light fw-bold ps-1 pe-1">Startups</div>
                </div>
              <h4 class="card-title">Ada Lovelace</h4>
              <p class="textoCard card-text">Augusta Ada King, condesa de Lovelace, registrada al nacer como Augusta Ada Byron
                 y conocida habitualmente como Ada Lovelace, fue una matemÃ¡tica y escritora britÃ¡nica, 
                 cÃ©lebre sobre todo por su trabajo acerca de la computadora mecÃ¡nica de uso general de Charles Babbage, 
                 la denominada mÃ¡quina analÃ­tica.</p>
            </div>
        </div>
    </div>

    <!--Contenedor 4-->

    <div class="container-fluid d-flex p-2">
        <div class="col">
            <img class="img-fluid" src="./images/hawaii.jpg" alt="imagen ilustrativa">
        </div>
        <div class="texto4 col text-light p-3">
            <h2>Bs As - Octubre</h2>
            <p>Buenos Aires es la gran capital cosmopolita de Argentina. Su centro es la Plaza de Mayo, 
                rodeada de imponentes edificios del siglo XIX, incluida la Casa Rosada, el icÃ³nico palacio presidencial 
                que tiene varios balcones. Entre otras atracciones importantes, se incluyen el Teatro ColÃ³n, 
                un lujoso teatro de Ã³pera de 1908 con cerca de 2,500 asientos, y el moderno museo MALBA, que exhibe arte latinoamericano
            </p>
            <a href="#" class="btn btn-primary">Conoce mas</a>
        </div>
    </div>

    <!--Contenedor 5 Formulario-->

    <form class="container-fluid" style="width: 600px;" action="SvOrador" method="POST">
        <div class="row d-flex justify-content-center text-center">Conviertete en un<h2>ORADOR</h2></div>
        <p class="text-center">Anotate como orador para dar una charla ingnite. CuÃ©ntanos de que queres hablar!</p>
        <div class="row p-3">
            <div class="col">
            <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre" name="nombre">
            </div>
            <div class="col">
            <input type="text" class="form-control" placeholder="Apellido" aria-label="Apellido" name="apellido">
            </div>
        </div>
        <div class="row pb-3 ms-3 me-3">
            <input type="text" class="form-control" placeholder="Mail" aria-label="Mail" name="mail">
        </div>
        <div class="row form-floating ms-3 me-3">
            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px" name="tema"></textarea>
            <label for="floatingTextarea2">Sobre que queres hablar?</label>
        </div>
        <p class="row ms-3 text-secondary">Recuerda incluir un titulo para tu charla</p>
        <div class="d-grid">
            <button href="#" class="btn btn-success mb-3 ms-3 me-3" type="submit">Enviar</button>
        </div>
    </form>

    <!--Footer-->

    <footer class="footer">
        <div class="p-3">
            <div class="d-flex gap-5">
                <a class="nav-link text-light" href="#">Preguntas Frecuentes</a>
                <a class="nav-link text-light" href="#">Contactanos</a>
                <a class="nav-link text-light" href="#">Prensa</a>
                <a class="nav-link text-light" href="#">Conferencias</a>
                <a class="nav-link text-light" href="#">Terminos y condiciones</a>
                <a class="nav-link text-light" href="#">Privacidad</a>
                <a class="nav-link text-light" href="#">Estudiantes</a>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>