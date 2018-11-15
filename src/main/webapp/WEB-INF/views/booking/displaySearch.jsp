<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Display Search</title>
  </head>
  <body>
    <form:form method="GET" modelAttribute="bookingInputForm" action="${pageContext.request.contextPath}/booking/processSearch">
      departureAirportCode: <form:input path="departureAirportCode" /><br>
      arriveAirportCode: <form:input path="arriveAirportCode" /><br>
      departureDate: <form:input path="departureDate" /><br>
      returnDate: <form:input path="returnDate" /><br>
      ClassOfChair: <form:input path="ClassOfChair" /><br>
      AdultNumber: <form:input path="AdultNumber" /><br>
      ChildrenNumber: <form:input path="ChildrenNumber" /><br>
      roundTrip: <form:input path="roundTrip" /><br>
      <input type="submit" />
    </form:form>
  </body>
</html>