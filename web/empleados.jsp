
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="DAO.DAOListadoEmpleado"%>
<%@page import="modelo.empleado"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Empleado</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
        <link href="css/ValiForms.css" rel="stylesheet" type="text/css"/>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
            <h1>Registro de Empleado</h1><br>

            <form action="RegistrarEmpleado" method="post" class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-sm-4">
                        <label for="dni" class="form-label">DNI:</label>
                        <input type="text" id="dni" class="form-control" name="dni" maxlength="8" pattern="\d*" title="Ingrese solo números" required>
                        <div class="invalid-feedback">
                            Por favor ingrese el DNI.
                        </div> 
                    </div>
                    <div class="col-sm-4">
                        <button type="button" id="prueba" class="btn btn-success"><img src="img/dni.png" alt="Profile Icon"></button>
                    </div>
                </div>

                <div class="row">                    
                    <div class="col-sm-4">
                        <label for="nombres" class="form-label">Nombre:</label>
                        <input type="text" name="nombres" id="nombres" class="form-control" placeholder="" required>
                        <div class="invalid-feedback">
                            Por favor ingrese los nombres.
                        </div> 
                    </div>

                    <div class="col-sm-4">
                        <label for="apellidos" class="form-label">Apellidos:</label>
                        <input type="text" name="apellidos" id="apellidos" class="form-control" placeholder="" required="">
                        <div class="invalid-feedback">
                            Por favor ingrese los apellidos.
                        </div> 
                    </div>

                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <label for="telefono" class="form-label">Telefono:</label>
                        <input type="tel" class="form-control" name="telefono" id="telefono" placeholder="" required="">
                        <div class="invalid-feedback">
                            Por favor ingrese telefono.
                        </div> 
                    </div>
                    <div class="col-sm-4">
                        <label for="area_id" class="form-label">Area:</label>
                        <select class="form-select" id="area_id" name="area_id" required="">
                            <option selected disabled value="">Seleccione...</option>
                            <option value="1">Administracion</option>
                            <option value="2">Almacen</option>
                            <option value="2">Vendedores</option>
                        </select>
                        <div class="invalid-feedback">
                            Por favor seleccione.
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <label for="cargo_id" class="form-label">Cargo:</label>
                        <select class="form-select" id="cargo_id" name="cargo_id" required="">
                            <option selected disabled value="">Seleccione...</option>
                            <option value="1">Administrador</option>
                            <option value="2">Almacenero</option>
                            <option value="2">Vendedor</option>
                        </select>
                        <div class="invalid-feedback">
                            Por favor seleccione.
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <label for="fecha_hora">Fecha de Registro:</label>
                        <input type="date" id="fecha_hora" name="fecha_hora" class="form-control" required>
                        <div class="invalid-feedback">
                            Por favor seleccione la Fecha.
                        </div> 
                    </div>

                </div>               
                <br>
                <div class="col-md-8">
                    <button type="submit" class="btn btn-primary" value="Registrar"><img src="img/add.png" alt="Profile Icon">
                        Nuevo Registro
                    </button>
                </div>
            </form>
            <br>
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <div class="card-header text-center">
                        <h3>Listar Empleado</h3>
                    </div>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col"class="text-center">NOMBRES</th>
                                <th scope="col"class="text-center">APELLIDOS</th>
                                <th scope="col"class="text-center">DNI</th>
                                <th scope="col"class="text-center">TELEFONO</th>
                                <th scope="col" class="text-center">AREA</th>
                                <th scope="col"class="text-center">CARGO</th>
                                <th scope="col"class="text-center">FECHA</th>
                                <th scope="col" class="text-center">ACCIONES</th>
                            </tr>
                        </thead>

                        <%
                            DAOListadoEmpleado dao = new DAOListadoEmpleado();
                            ArrayList<empleado> list = dao.ListaEmpleados();
                            Iterator<empleado> iter = list.iterator();
                        %>

                        <%                       
                                while (iter.hasNext()) {
                                empleado emp = iter.next();
                        %>
                        <tbody>

                            <tr>
                                <td class="text-center"><%=emp.getEmpid()%></td>
                                <td class=""><%=emp.getNombres()%></td>
                                <td class=""><%=emp.getApellidos()%></td>
                                <td class="text-center"><%=emp.getDni()%></td>
                                <td class="text-center"><%=emp.getTelf()%></td>
                                <td class="text-center"><%=emp.getAreadescp()%></td>
                                <td class="text-center"><%=emp.getCargodescp()%></td> 
                                <td class="text-center"><%=emp.getFecha()%></td> 
                                <td class="text-center">
                                    <a class="btn btn-warning" href=""><img src="img/modify.png" alt="Profile Icon"></a>
                                    <a class="btn btn-danger" href="javascript:void(0);" onclick="confirmDelete(<%=emp.getEmpid()%>);"><img src="img/delete.png" alt="Profile Icon"></a>
                                </td>
                            </tr>      
                            <%
                                }
                            %>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="js/ValiForms.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="js/dni.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <script type="text/javascript">
                                        function confirmDelete(id) {
                                            Swal.fire({
                                                title: '¿Estás seguro?',
                                                text: "¡No podrás revertir esto!",
                                                icon: 'warning',
                                                showCancelButton: true,
                                                confirmButtonColor: '#3085d6',
                                                cancelButtonColor: '#d33',
                                                confirmButtonText: 'Sí, eliminar',
                                                cancelButtonText: 'Cancelar'
                                            }).then((result) => {
                                                if (result.isConfirmed) {
                                                    window.location.href = "EliminarEmpleadoServlet?id=" + id;
                                                }
                                            });
                                        }
        </script>
    </body>

</html>
