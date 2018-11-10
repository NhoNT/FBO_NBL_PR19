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

        </style>
    </head>

    <body >
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12" style="text-align: center">
                    <h1>Login</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-12" >
                    <form action="j_spring_security_check" method="post" class="form-horizontal">

                        <div class="form-group" >
                            <label class="col-xs-4 col-sm-2 control-label">User Name</label>

                            <input class="col-xs-8 col-sm-8" type="text" name="name"/>

                        </div>

                        <div  class="form-group" >
                            <label class="ol-xs-4 col-sm-2 control-label">Password</label>

                            <input class="col-xs-8 col-sm-8" type="password" name="password"/>

                        </div>

                </div>
                <div class="col-xs-12 col-sm-12" >
                    <div class="form-group" style="text-align: center">
                        <input id="a" type="submit" value="Submit" class="btn btn-primary" />
                    </div>

                </div>
                <input hidden name="${_csrf.parameterName}" value="${_csrf.token}"/>

                </form>
                <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
              

                    <div class="alert alert-success" style="margin: auto">
                        <strong>Fail:!</strong>  <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</body>
</html>
