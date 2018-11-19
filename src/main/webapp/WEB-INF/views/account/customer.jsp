<%-- 
    Document   : admin
    Created on : 05/10/2018, 6:49:48 PM
    Author     : MacBook Air
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <base href="${pageContext.request.getContextPath()}/resources/app/">
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
            .row.content {height: 450px}

            /* Set gray background color and 100% height */
            .sidenav {
                padding-top: 20px;
                background-color: #f1f1f1;
                height: 100%;
            }

            /* Set black background color, white text and some padding */
            footer {
                background-color: #555;
                color: white;
                padding: 15px;
            }
            p{
                font-size: 23px;
            }

            /* On small screens, set height to 'auto' for sidenav and grid */
            @media screen and (max-width: 767px) {
                .sidenav {
                    height: auto;
                    padding: 15px;
                }
                .row.content {height:auto;} 
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">Customer</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="col-sm-10 text-left"> 
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12" style="text-align: center">
                        <h3>User</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12" >
                        <div class="table-responsive">
                            <img width="90px" height="100px"  src="img/8.jpg" alt=""/>  
                            <div style="text-align: left">
                            <button  class="btn btn-primary" 
                                    onclick="location.href = '${pageContext.request.getContextPath()}/customer/edit/img/${customer.customerId}'" >Edit Photo</button>
                            </div>
                            
                            
                            <div style="text-align: right">
                            <button  class="btn btn-primary" 
                                    onclick="location.href = '${pageContext.request.getContextPath()}/customer/edit/${customer.customerId}'" >Edit Customer</button>
                            </div>
                            <table class="table table-bordered">
                                <tr>
                                    <th>customerId</th>
                                    <th>email</th>
                                    <th>firstname</th>
                                    <th>lastname</th>
                                    <th>phone</th>
                                    <th>password</th>
                                </tr>
                                <tr>
                                    <td>${customer.customerId}</td>
                                    <td>${customer.email}</td>
                                    <td>${customer.firstname}</td>
                                    <td>${customer.lastname}</td>
                                    <td>${customer.phone}</td>
                                    <td>${customer.password}</td>

                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>


</body>
</html>
