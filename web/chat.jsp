<%@ page import="com.cv.controller.ChatServer" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lista de clientes</title>

        <%@include file="css-plantilla.jsp"%> 
        <%@include file="css-datatable.jsp"%>
        <link href="dist/css/Stilodetabla.css" rel="stylesheet" type="text/css"/>
        <link href="dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="dist/css/ColordeEstado.css" rel="stylesheet" type="text/css"/>
        <style>
            body {
                background-color: #f8f9fa;
            }
            #log {
                height: 400px;
                overflow-y: auto;
                background-color: #ffffff;
                border: 1px solid #dee2e6;
                border-radius: 0.25rem;
                padding: 1rem;
                margin-bottom: 1rem;
            }
            .input-group-append .btn {
                height: 100%;
            }
            .message {
                padding: 0.5rem;
                margin-bottom: 0.5rem;
                border-radius: 0.25rem;
            }
            .message.mine {
                background-color: #d1ecf1;
                text-align: right;
            }
            .message.theirs {
                background-color: #f8d7da;
                text-align: left;
            }
            h3{
                color: #45a049;
            }
        </style>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script>
            var ws;
            function connect() {
                ws = new WebSocket("ws://localhost:8080/chat");
                //websocket = new WebSocket("ws://localhost:8080/chat");
                ws.onmessage = function (event) {
                    var log = document.getElementById("log");
                    var message = document.createElement("div");
                    message.classList.add("message", "theirs");
                    message.textContent = event.data;
                    log.appendChild(message);
                    log.scrollTop = log.scrollHeight; // Scroll down to the newest message
                };
            }

            function send() {
                var messageInput = document.getElementById("message");
                var message = messageInput.value;
                if (message.trim() !== "") {
                    ws.send(message);
                    var log = document.getElementById("log");
                    var myMessage = document.createElement("div");
                    myMessage.classList.add("message", "mine");
                    myMessage.textContent = message;
                    log.appendChild(myMessage);
                    log.scrollTop = log.scrollHeight; // Scroll down to the newest message
                    messageInput.value = ''; // Clear the input
                }
            }

            window.onload = connect;

        </script>
    </head>
    <body>
        <!-- Navbar -->
        <%@include file="Frmmenu.jsp" %>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">MENSAJES</h3>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <h1 class="my-4 text-center">Chat en Tiempo Real</h1>
                                    <div id="log" class="border rounded p-3 my-3" style="height: 300px; overflow-y: scroll;"></div>
                                    <div class="input-group mb-3">
                                        <input type="text" id="message" class="form-control" placeholder="Escribe tu mensaje">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button" onclick="send()" style="width: 120px;">Enviar</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <%@include file="js-plantilla.jsp"%> 
        <%@include file="js-datatable.jsp"%> 
        <script src="assets/jqueryy.js" type="text/javascript"></script>
        <script src="assets/bootstrapp.min.js" type="text/javascript"></script>
        <script src="Validacionysweetalert/Cliente.js" type="text/javascript"></script>

    </body>
</html>
