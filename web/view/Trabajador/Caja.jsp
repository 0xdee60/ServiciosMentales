

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <meta name="Description" content="Enter your description here"/>

        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">

        <title>.: CAJA :.</title>
        <link rel="shortcut icon" href="../assets/imgs/icono_title.png">
    </head>
    <body>

        <!--NAVBAR Superior-->
        <nav class="sb-topnav navbar navbar-expand navbar-primary bg-primary">
            <a class="navbar-brand" style="color: white;" href="http://localhost:8080/Servicios_Mentales/view/Trabajador/Home.jsp">
                <img src="../assets/imgs/frm_home.png" alt="logo" style=" align-items: center;" height="70px" width="55px">
                <i><strong>Servicios Mentales</strong></i>
            </a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i
                    class="fas fa-bars"></i></button>
            <div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <div class="input-group-append">
                        <a style="color: white;" class="nav-link" href="http://localhost:8080/Servicios_Mentales/view/Trabajador/Login.jsp">
                            <img style="filter: invert(120);" src="../assets/imgs/loguot.png" alt="logo"
                                 style=" align-items: center;" height="25px" width="25px">
                            <strong>Salir</strong></a>
                    </div>
                </div>
            </div>
        </nav>

        <!-- Navbar Izquierda -->       
        <div class="body row">
            <div class="col-sm-2" style="background-color: rgb(19, 94, 124);">
                
                <nav class="navbar-expand navbar-primary flex-column" aria-label="#" >                    
                    <div class="col-sm-12" style="text-align: center;">
                        <br>
                        <label style="color: white"> Bienvenido </label>
                        <input type="text" value="${trabajador.getUsuario()}" class="form-control" disabled>
                        <br>
                    </div>
                    <div class="nav-item btn" >
                        <a class="nav-link active" href="http://localhost:8080/Servicios_Mentales/view/Trabajador/Home.jsp" style="color: white;">
                            <img src="../assets/imgs/icono_home.png" alt="logo" style=" align-items: center;" height="50px" width="50px">
                            Inicio
                        </a>
                    </div>
                    <br>
                    <div class="nav-item btn ">
                        <a class="nav-link active" href="http://localhost:8080/Servicios_Mentales/view/Trabajador/Caja.jsp" style="color: white;">
                            <img src="../assets/imgs/icono_caja.png" alt="logo" style=" align-items: center;" height="50px" width="50px">
                            Caja
                        </a>
                    </div>
                    <br>       
                </nav>
            </div>
            <div class="col-sm-10">

                <!--Contenido-->                    
                <div style="text-align: center; align-items: center;">
                    <br>
                    <img src="../assets/imgs/frm_caja.png" alt="LogoCaja" width="13%">
                    <br>
                    <h3 style="color:rgb(29, 140, 184);"><strong>CAJA</strong></h3>
                    <br>
                </div>
                <div class="container" style="align-items: center; align-content: center;">
                    <div style="text-align: left; align-items: center;">                                
                        <label>Fecha de cita: </label>
                        &nbsp;
                        &nbsp;
                        <input type="date" style="width:20%;text-align: center; align-items: center; " id="search">
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <button type="submit" style="color:black; background-color: rgb(70, 206, 17);" class="btn btn-success"><strong>Buscar</strong></button>
                        <br>
                        <br>
                    </div>                            
                </div>

                <table id="table_pago_cajero" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>

                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>DNI</th>
                            <th>Fecha</th>
                            <th>Hora</th>
                            <th>Motivo</th>
                            <th>Estado</th>
                         
                             <th>Acci�n</th>

                        </tr>
                    </thead>
                    <tbody>

                    </tbody>

                </table>


            </div>
        </div>
    </div>

    <div class="card bg-primary" >
        <table class="container">
            <tbody>
                <tr>
                    <td>
                        <div class="card-body" style="color: white;">
                            <h5 class="card-title ">Correos</h5>
                            <p class="card-text ">
                            <ul>
                                <li>serviciosmentales@outlook.com</li>
                                <li>serviciosmentales@gmail.com</li>
                            </ul>
                            </p>
                        </div>
                    </td>
                    <td>
                        <div class="card-body" style="color: white;">
                            <h5 class="card-title ">Tel�fonos</h5>
                            <p class="card-text ">
                            <ul>
                                <li>985 245 689</li>
                                <li>976 987 423</li>
                            </ul>                                        
                            </p>
                        </div>
                    </td>
                    <td>
                        <div class="card-body" style="color: white;">
                            <h5 class="card-title ">Servicios</h5>
                            <p class="card-text ">
                            <ul>
                                <li>Consulta psiqui�trica</li>
                                <li>Certificado m�dico</li>
                            </ul>
                            </p>
                        </div>
                    </td>
                </tr> 
                <tr> 
                    <td></td>                                                  
                    <td>
                        <div class="row card-text">
                            <div class="col-sm-12">
                                <i style="color: white; text-align: center;">Copyright � Servicios Mentales 2020</i>
                            </div>
                        </div>
                    </td>
                </tr>                           
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>

    <script src=" https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>

    <script src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>

    <script src="../assets/scripts/Trabajador.js" type="text/javascript"></script>


</body>
</html>