<%-- 
    Document   : Oradores
    Created on : 21 dic. 2023, 00:44:20
    Author     : matiambrosi
--%>
<%@page import="java.util.List"%>
<%@page import="logica.Orador"%>
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
    <!-- Tabla de Oradores -->
    <div class="container mt-3">
        <h2>Oradores confirmados</h2>         
        <table class="table table-dark table-striped">
          <thead>
            <tr>
              <th>Nombre</th>
              <th>Apellido</th>
              <th>Tema</th>
            </tr>
          </thead>
            <%
                List<Orador> listaoradores = (List) request.getSession().getAttribute("listaoradores");
                for (Orador ora : listaoradores){
            %>
          <tbody>
            <tr>
              <td><%=ora.getNombre()%></td>
              <td><%=ora.getApellido()%></td>
              <td><%=ora.getTema()%></td>
            </tr>
            <% } %>
          </tbody>
        </table>
      </div>
    
    <!-- Footer -->
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>