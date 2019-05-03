<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Calculadora de IMC</title>
  <link rel="icon" href="img/heartbeat.png" type="image/gif" sizes="16x16">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="css/index.css">
</head>

<body>
  <div class="card-ci">
    <div id="card-principal" class="card" style="width: 18rem;">
      <div class="card-body">
        <h5 class="card-title">Calcule seu IMC</h5>
        <h6 class="card-subtitle mb-2 text-muted">
          Developed by <a href="https://github.com/arthur-es" target="">@arthurc.es</a>
        </h6>
        <div id="notificacao-imc-ci">
          <!--Entra aqui dinamicamente-->
          <%@ page import ="java.util.*" %>
          <%@ page import ="book.*" %>

          <% 
                     String inputPesoStr = request.getParameter("inputPeso");
                     String inputAlturaStr = request.getParameter("inputAltura");
                     float inputPeso = 1;
                     float inputAltura = 1;
                     if (inputPesoStr != null && inputAlturaStr != null) {
                      inputPeso = Float.parseFloat(inputPesoStr);
                      inputAltura = Float.parseFloat(inputAlturaStr);
                     }
                    float imc =  inputPeso / (inputAltura*inputAltura);
                    double imcTruncado = Math.round(imc * 100) / 100d;
                    
          %>

          <% 
              if(inputPeso == 1){
          %>
          <p></p>
          <%
           } else {
          %>

          <p style="color: lightgreen; text-align: center;">Seu IMC eh <%= imcTruncado %></p>
          <%
          }
          %>

        </div>
        <form id="form-ci">
          <div class="form-group">
            <label for="inputPeso">Peso</label>
            <input type="text" class="form-control" id="inputPeso" placeholder="66" name="inputPeso">
          </div>
          <div class="form-group">
            <label for="inputAltura">Altura</label>
            <input type="text" class="form-control" id="inputAltura" placeholder="1.77" name="inputAltura">
          </div>
          <button type="submit" class="btn btn-primary">Calcular</button>
        </form>
      </div>
    </div>
  </div>
</body>

</html>