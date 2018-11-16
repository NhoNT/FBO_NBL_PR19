<%-- 
    Document   : book
    Created on : 28/09/2018, 7:14:18 PM
    Author     : MacBook Air
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <style>
            input{

                width: 100%;
            }


            #aa{
                padding-left: 25%;
            }
            #a{
                width: 200px;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12" style="text-align: center">
                    <h1>User</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <mvc:form action="${pageContext.request.getContextPath()}/customer/register" method="post" modelAttribute="customer" class="form-horizontal">
                        <div id="aa"> 


                            <div class="form-group">

                                <div class="col-xs-8 col-sm-8">
                                    <mvc:hidden path="customerId" value= "${customer.customerId}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-4 col-sm-2 control-label">firstname</label>
                                <div class="col-xs-8 col-sm-8">
                                    <mvc:input path="firstname" value= "${customer.firstname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-4 col-sm-2 control-label">lastname</label>
                                <div class="col-xs-8 col-sm-8">
                                    <mvc:input path="lastname" value= "${customer.lastname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-4 col-sm-2 control-label">phone</label>
                                <div class="col-xs-8 col-sm-8">
                                    <mvc:input path="phone" value= "${customer.phone}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-4 col-sm-2 control-label">Email</label>
                                <div class="col-xs-8 col-sm-8">
                                    <mvc:input path="email" value= "${customer.email}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-4 col-sm-2 control-label">username</label>
                                <div class="col-xs-8 col-sm-8">
                                    <mvc:input path="username" value= "${customer.username}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-4 col-sm-2 control-label">password</label>
                                <div class="col-xs-8 col-sm-8">
                                    <mvc:input path="password" value= "${customer.password}"/>
                                </div>
                            </div>

            

                        </div>
                        <div class="form-group" style="text-align: center">
                            <input id="a" type="submit" value="Submit" class="btn btn-primary" />
                        </div>
                    </mvc:form>
                </div>
            </div>
        </div>
    </body>
</html>
