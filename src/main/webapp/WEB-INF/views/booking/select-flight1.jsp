<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Select Flight</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.getContextPath()}/webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="${pageContext.request.getContextPath()}/webjars/jquery/3.2.1/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.getContextPath()}/webjars/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12" style="text-align: center">
          <c:if test="${selectFlightOutputForm!=null}">
            <h3>${selectFlightOutputForm.departAirport} - ${selectFlightOutputForm.arriveAirport}</h3>
          </c:if>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-12">
          <div class="table-responsive">
            <table class="table table-bordered">
              <tr>
                <th>FlightId</th>
                <th>Depart <br/>(dd/MM HH:mm)</th>
                <th>Arrive <br/>(dd/MM HH:mm)</th>
                <th>Flight</th>
                <th>Price</th>
              </tr>
              <c:if test="${selectFlightOutputForm!=null}">
                <c:if test="${selectFlightOutputForm.flightSuggesteds!=null && fn:length(selectFlightOutputForm.flightSuggesteds) > 0}">
                  <c:forEach items="${selectFlightOutputForm.flightSuggesteds}" var="flightSuggested">
                    <tr>
                      <td>${flightSuggested.flightId}</td>
                      <td>${flightSuggested.arrive}</td>
                      <td>${flightSuggested.depart}</td>
                      <td>${flightSuggested.flightDetail}</td>
                      <td>${flightSuggested.economyPrice}</td>
                    </tr>
                  </c:forEach>
                </c:if>
                <c:if test="${selectFlightOutputForm.flightSuggesteds==null || fn:length(selectFlightOutputForm.flightSuggesteds) == 0}">
                  <tr>
                    <td colspan="5" style="text-align: center">Not Found!</td>
                  </tr>
                </c:if>
              </c:if>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
