<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Flight Booking Online</title>
    <base href="${pageContext.request.contextPath}/resources/app/">
    <link href="${pageContext.request.contextPath}/resources/app/css/newcss.css" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/webjars/jquery/3.2.1/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/webjars/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
    <style>
      /* Remove the navbar's default margin-bottom and rounded borders */ 
      .navbar {
        margin-bottom: 0;
        border-radius: 0;
      }

      /* Add a gray background color and some padding to the footer */
      footer {
        background-color: #f2f2f2;
        padding: 25px;
      }
    </style>

    <script>

      $(document).ready(function () {
        $("#l1").click(function () {
          $("#arr").hide();

        });
        $("#l2").click(function () {
          $("#arr").show();

        });
      })
              ;

    </script>
  </head>
  <body style="width: 80%; margin: auto">

    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
          </button>
          <a class="navbar-brand" href="#">Home</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="#">About</a></li>
            <li><a href="#">Gallery</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="${pageContext.request.contextPath}/customer/register"><span class="glyphicon glyphicon-log-in"></span>Register</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <br>

    <div class="container-fluid bg-3 text-center" >    

      <div class="row">
        <div class="tab-content  col-xs-12 col-sm-6" style="background-color: #99ccff;  padding-bottom:8px;padding-right:  10px;; padding-left: 10px; " >
          <h3>SEARCH FLIGHTS</h3>

          <div class="header">
            <a id="l1" class="btn btn-primary" >One way</a>
            <a id="l2" class="btn btn-primary">Round trip</a>
          </div>


          <div role="tabpanel" class="tab-pane active" id="flights">
            <div class="row">
              <form:form method="GET" modelAttribute="bookingInputForm" action="${pageContext.request.contextPath}/booking/processSearch1">
                <div class="col-xxs-12 col-xs-6 mt">
                  <div class="input-field">
                    <label for="date-end">FROM: </label>
                    <form:select path="departureAirportCode" class="form-control" id="sel1">
                      <c:forEach var="airport" items="${airports}">
                        <option value="${airport.airportCode}">${airport.location}</option>
                      </c:forEach>
                    </form:select>
                  </div>
                </div>
                <div class="col-xxs-12 col-xs-6 mt">
                  <div class="input-field">
                    <label for="date-end">TO: </label>
                    <form:select  path="arriveAirportCode"  class="form-control" id="sel1">
                      <c:forEach var="airport" items="${airports}">
                        <option value="${airport.airportCode}">${airport.location}</option>
                      </c:forEach>
                    </form:select>
                  </div>
                </div>
                <div class="col-xxs-12 col-xs-6 mt alternate">
                  <div class="input-field">
                    <label for="date-start">Departure:</label>
                    <form:input  path="departureDate" type="date" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
                  </div>
                </div>
                <div class="col-xxs-12 col-xs-6 mt alternate">
                  <div class="input-field" id="arr" hidden>
                    <label for="date-end">Arrive:</label>
                    <form:input  path="returnDate" type="date" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
                  </div>
                </div>


                <div class="col-xxs-12 col-xs-6 mt alternate">
                  <div class="input-field">
                    <label>Adult:</label>
                    <form:select  path="adultNumber" class="form-control">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                    </form:select>
                  </div>
                </div>
                <div class="col-xxs-12 col-xs-6 mt alternate">
                  <div class="input-field">
                    <label>Children:</label>
                    <form:select  path="childrenNumber" class="form-control">
                      <option value="0">0</option>
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                    </form:select>
                  </div>
                </div>
                <div class="col-xxs-12 col-xs-6 mt alternate">
                  <div class="input-field">
                    <label for="date-end">Class of chair </label>
                    <form:select  path="classOfChair" class="form-control" id="sel1">
                      <option value="2">Economy</option>
                      <option value="1">Business</option>
                    </form:select>
                  </div>
                </div>
                <input style="margin-top: 25px;" type="submit" class="btn btn-primary" value="Search Flight"/>
              </form:form>
            </div>
          </div>

        </div>
        <div class="col-xs12 col-sm-6" style="padding: 0">

          <div id="custom-bootstrap-carousel" class="carousel slide " data-ride="carousel" data-interval="5000">
            <ol class="carousel-indicators">
              <li data-target="#custom-bootstrap-carousel" data-slide-to="0" class="active"></li>
              <li data-target="#custom-bootstrap-carousel" data-slide-to="1"></li>
              <li data-target="#custom-bootstrap-carousel" data-slide-to="2"></li>

            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="item active">

                <img  src="img/8.jpg" alt=""/>  

                <div class="carousel-caption"></div>
              </div>
              <div class="item">

                <img  src="img/banner1.jpg" alt=""/>  
                <div class="carousel-caption"></div>
              </div>

              <div class="item">

                <img  src="img/banner2.jpg" alt=""/>  
                <div class="carousel-caption"></div>
              </div>


            </div><a class="left carousel-control" href="#custom-bootstrap-carousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="right carousel-control"
                                                                                                                                                                                                        href="#custom-bootstrap-carousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><span class="sr-only">Next</span></a>
          </div>
        </div>
      </div>

    </div><br>

    <div class="container-fluid bg-3 text-center">    
      <div class="row">
        <div class=" " style="padding-top: 13px; ">
          <div class="col-md-12x">
            <div class="section section--bg section--p2-t20">
              <div class="gutter js-agoda-datalayer js-boxever" data-city-list="Sydney,Penang,Phuket,Hồng Kông,Tp. Hồ Chí Minh" data-api-url="https://deals.agoda.com/api/JSON/" data-siteid="1604047" data-apikey="2955788c-fea1-4997-ac7b-83c587bdc1f1" data-length-of-stay="3" data-currency="VND" data-culture="vi-vn" data-language="vi-VN" data-min-daily-rate="50" data-max-daily-rate="500" data-min-rating="3" data-max-rating="5" data-min-discount="15" data-min-review="5" data-decimal="0" data-region="searchesHotelOffers">

                <h2 class="section-title clearfix" style="margin-bottom: 8px;">
                  Hot Deals On Flights
                  <a href="" target="_blank" class="icon-hover icon-text icon-text--rev icon-text--s1 section-title__link">View all flights

                  </a>
                </h2>

                <div class="grid row">
                  <div class="clearfix js-agoda-hotels js-eq-height-wrapper">
                    <a target="_blank" href="" class="card card-agoda ">
                      <figure class="card__container js-eq-height-item" style="">
                        <div class="card__img-container reponsive-ratio reponsive-ratio--8_5">
                          <img src="img/hanoi.jpg" alt="HaNoi" class="reponsive-ratio__media">
                          <p class="card__sash">
                            Sale <span class="card__sash-emphasis">10%</span> 

                          </p>
                        </div>
                        <figcaption class="card__profile">
                          <div class="card__header">
                            <p class="card__pre-title">Ha Noi</p>
                            <h3 class="card__title">Sale Flights Ha Noi</h3>

                            </p>

                            <strong class="card__price"><span class="currency">1.467.902 VNĐ</span></strong>

                          </div>
                        </figcaption>
                      </figure>
                    </a>
                    <a target="_blank" href="" class="card card-agoda ">
                      <figure class="card__container js-eq-height-item" style="">
                        <div class="card__img-container reponsive-ratio reponsive-ratio--8_5">
                          <img src="img/dalat.jpg" alt="DaLat" class="reponsive-ratio__media">
                          <p class="card__sash">
                            Sale <span class="card__sash-emphasis">15%</span> 

                          </p>
                        </div>
                        <figcaption class="card__profile">
                          <div class="card__header">
                            <p class="card__pre-title">Da Lat</p>
                            <h3 class="card__title">Sale Flights Da Lat </h3>
                            </p>

                            <strong class="card__price"><span class="currency">576.157 VNĐ</span></strong>
                          </div>

                        </figcaption>
                      </figure>
                    </a>


                    <a target="_blank" href="" class="card card-agoda ">
                      <figure class="card__container js-eq-height-item" style="">
                        <div class="card__img-container reponsive-ratio reponsive-ratio--8_5">
                          <img src="img/danang.jpg" alt="DaNang" class="reponsive-ratio__media">
                          <p class="card__sash">
                            Sale <span class="card__sash-emphasis">20%</span> 

                          </p>
                        </div>
                        <figcaption class="card__profile">
                          <div class="card__header">
                            <p class="card__pre-title">Da Nang</p>
                            <h3 class="card__title">Sale Flights Da Nang</h3>
                            </p>

                            <strong class="card__price"><span class="currency">1.276.877 VNĐ</span></strong>

                          </div>
                        </figcaption>
                      </figure>
                    </a>


                    <a target="_blank" href="" class="card card-agoda ">
                      <figure class="card__container js-eq-height-item" style="">
                        <div class="card__img-container reponsive-ratio reponsive-ratio--8_5">
                          <img src="img/saigon.jpg" alt="Sai Gon" class="reponsive-ratio__media">
                          <p class="card__sash">
                            Sale <span class="card__sash-emphasis">10%</span> 

                          </p>
                        </div>
                        <figcaption class="card__profile">
                          <div class="card__header">
                            <p class="card__pre-title">Sai Gon</p>
                            <h3 class="card__title">Sale Flights Sai Gon</h3>

                            </p>

                            <strong class="card__price"><span class="currency">1.180.846 VNĐ</span></strong>

                        </figcaption>
                      </figure>
                    </a>

                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>    </div><br><br>
    </div>
    <footer class="container-fluid text-center" style="background-color: buttonface">
      <p>Copyright © 2018 Booking flight</p>
    </footer>

  </body>
</html>



