<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passenger</title>
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link href="${pageContext.request.contextPath}/resources/app/css/normalize.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/app/css/passenger-info.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/webjars/jquery/3.2.1/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/webjars/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
  </head>
  <body>
    <form:form method="GET" modelAttribute="bookingInputForm" action="${pageContext.request.contextPath}/booking/processPassengerForm"  class="form_class1">
      <c:forEach items="${bookingInputForm.ticketList}" var="ticket" varStatus="status">
        <fieldset>
          <c:if test="${ticket.personId == 1}">
            <legend>Passenger ${status.index} (adult)</legend>
          </c:if>
          <c:if test="${ticket.personId == 2}">
            <legend>Passenger ${status.index} (children)</legend>
          </c:if>
          <div>
            <label >First name:</label> <form:input type="text" path="ticketList[${status.index}].firstName" value="${ticket.firstName}" maxlength="30"/><br>
          </div>
          <div>
            <label >Last name:</label> <form:input type="text" path="ticketList[${status.index}].lastName" value="${ticket.lastName}" maxlength="30"/><br>
          </div>
          <div>
            <label >Email:</label> <form:input type="text" path="ticketList[${status.index}].email" maxlength="30"/><br>
          </div>
          <div>
            <label>Sex:</label> <form:radiobutton path="ticketList[${status.index}].sex" value="0"/><label class="left">Male</label><br> <label>&nbsp;</label>
            <form:radiobutton path="ticketList[${status.index}].sex" value="1"/><label class="left">Female</label><br>
          </div>
          <div>
            <label> Birthday</label> <form:input type="date" path="ticketList[${status.index}].birthday"/><br>
          </div>
        </fieldset>
        <br/>
      </c:forEach>
      <input type="submit" name="button_submit" id="button_submit" value="Submit"/><br> <br>
    </form:form>
  </body>
</html>
