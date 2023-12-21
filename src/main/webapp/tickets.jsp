<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Tickets</title>
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
            </div>
        </div>
    </nav>

    <!--Tarjetas de descuento-->
    <div id="tarjetas" class="d-flex pt-5 justify-content-center gap-5">
        <div class="card border-primary">
            <div class="card-body text-center">
                <h2>Estudiante</h2>
                <div>80% de descuento</div>
                <div class="text-secondary pt-2">*presentar documentacion</div>
            </div>
        </div>
        <div class="card border-success">
            <div class="card-body text-center">
                <h2>Trainee</h2>
                <div>50% de descuento</div>
                <div class="text-secondary pt-2">*presentar documentacion</div>
            </div>
        </div>
        <div class="card border-warning">
            <div class="card-body text-center">
                <h2>Junior</h2>
                <div>15% de descuento</div>
                <div class="text-secondary pt-2">*presentar documentacion</div>
            </div>
        </div>
    </div>

    <!--Formulario de venta-->
    <p class="text-center text-secondary pt-5">VENTA</p>
    <h1 class="text-center">VALOR DEL TICKET $2000</h1>
    <div class="d-flex justify-content-center">
        <form action="/action_page.php" style="width: 50%;" id="formulariodesc">
            <div class="row align-items-end gap-3">
                <div class=" col mb-3 mt-3">
                    <input type="nombre" class="form-control" id="nombre" placeholder="Nombre" name="nombre">
                </div>
                <div class=" col mb-3">
                    <input type="apellido" class="form-control" id="apellido" placeholder="Apellido" name="apellido">
                </div>
            </div>
            <div class="mb-3">
                <input type="email" class="form-control" id="email" placeholder="Email" name="email">
            </div>
            <div class="row gap-3">
                <div class="col mb-3">
                    <input type="cantidad" class="form-control" id="tkts" placeholder="Cantidad" name="tkts">
                </div>
                <select class="col form-select mb-3" aria-label="Default select example" id="categoriadesc">
                    <option selected>Sin Descuento</option>
                    <option value="estudiante">Estudiante</option>
                    <option value="trainee">Trainee</option>
                    <option value="junior">Junior</option>
                </select>
            </div>
            <div id="totalapagar" class="totalcontainer border border-primary rounded p-3">
                <div>Total a pagar: $</div>
            </div>
            <div class="d-flex justify-content-evenly m-3">
                <button id="btnborrar" class="btn btn-primary" style="width: 250px;">Borrar</button>
                <button id="btnresumen" class="btn btn-primary" style="width: 250px;">Resumen</button>
            </div>
            <div class="d-flex justify-content-center">
                <button id="btncompra" class="btn btn-lg btn-success" style="visibility: hidden;">Comprar</button>
            </div>
        </form>
    </div>

    <!--Footer-->

    <footer class="footer" style="position: fixed; bottom: 0; width: 100%;">
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

    <script src="./scripts.js"></script>
</body>
</html>