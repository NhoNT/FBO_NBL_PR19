<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--        <link href="../newcss.css" rel="stylesheet">-->
        <style><%@include file="./newcss.css"%></style>

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
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <br>

        <div class="container-fluid bg-3 text-center" >    

            <div class="row">
                <div class="tab-content  col-xs-12 col-sm-6" style="background-color: #99ccff; padding: 10px; padding-bottom: 33px " >
                    <h3>Search Ticket</h3>
                    <div role="tabpanel" class="tab-pane active" id="flights">
                        <div class="row">
                            <div class="col-xxs-12 col-xs-6 mt">
                                <div class="input-field">
                                    <label for="date-end">FROM: </label>
                                    <select class="form-control" id="sel1">
                                        <option>Da Nang</option>
                                        <option>Ha Noi</option>
                                        <option>Ho Chi Minh</option>
                                        <option>Nha Trang</option>
                                        <option>Da Lat</option>
                                        <option>Ca Mau</option>
                                        <option>Can Tho</option>
                                        <option>Phu Quoc</option>
                                        <option>Quy Nhon</option>
                                        <option>Hue</option>
                                        <option>Thanh Hoa</option>
                                        <option>Buon Me Thuot</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-xxs-12 col-xs-6 mt">
                                <div class="input-field">
                                    <label for="date-end">TO: </label>
                                    <select class="form-control" id="sel1">
                                        <option>Da Nang</option>
                                        <option>Ha Noi</option>
                                        <option>Ho Chi Minh</option>
                                        <option>Nha Trang</option>
                                        <option>Da Lat</option>
                                        <option>Ca Mau</option>
                                        <option>Can Tho</option>
                                        <option>Phu Quoc</option>
                                        <option>Quy Nhon</option>
                                        <option>Hue</option>
                                        <option>Thanh Hoa</option>
                                        <option>Buon Me Thuot</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-xxs-12 col-xs-6 mt alternate">
                                <div class="input-field">
                                    <label for="date-start">Days To Go:</label>
                                    <input type="date" class="form-control" id="date-start" placeholder="mm/dd/yyyy">
                                </div>
                            </div>
                            <div class="col-xxs-12 col-xs-6 mt alternate">
                                <div class="input-field">
                                    <label for="date-end">Day On:</label>
                                    <input type="date" class="form-control" id="date-end" placeholder="mm/dd/yyyy">
                                </div>
                            </div>


                            <div class="col-xxs-12 col-xs-6 mt alternate">
                                <div class="input-field">
                                    <label for="date-end">Adult:</label>
                                    <input type="number" class="form-control" id="date-end" placeholder="1">
                                </div>
                            </div>
                            <div class="col-xxs-12 col-xs-6 mt alternate">
                                <div class="input-field">
                                    <label for="date-end">Children:</label>
                                    <input type="number" class="form-control" id="date-end" placeholder="0">
                                </div>
                            </div>
                            <div class="col-xxs-12 col-xs-6 mt alternate">
                                <div class="input-field">
                                    <label for="date-end">Class of chair </label>
                                    <select class="form-control" id="sel1">
                                        <option>Economy</option>
                                        <option>Business</option>
                                        <option>First Class</option>
                                        <option>Premium Economy</option>
                                    </select>
                                </div>
                            </div>
                            <input style="margin-top: 25px;" type="submit" class="btn btn-primary" value="Search Flight">

                        </div>
                    </div>

                </div>
                <div class="col-xs12 col-sm-6" style="padding: 0">

                    <div id="custom-bootstrap-carousel" class="carousel slide " data-ride="carousel" data-interval="5000">
                        <ol class="carousel-indicators">
                            <li data-target="#custom-bootstrap-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#custom-bootstrap-carousel" data-slide-to="1"></li>

                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                        
                         <img  src="http://localhost:8084/fbo/img/8.jpg" alt=""/>  
                              
                                <div class="carousel-caption">The is a new first slide</div>
                            </div>
                            <div class="item">
                                
                                <img  src="http://localhost:8084/fbo/img/8.jpg" alt=""/>  
                                <div class="carousel-caption">The is the second slide</div>
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
                                    Flights
                                    <a href="http://www.agoda.vn" target="_blank" class="icon-hover icon-text icon-text--rev icon-text--s1 section-title__link">View all flights

                                    </a>
                                </h2>

                                <div class="grid row">
                                    <div class="clearfix js-agoda-hotels js-eq-height-wrapper">
                                        <a target="_blank" href="http://www.agoda.com/vi-vn/partners/xml2012_landing.aspx?siteid=1604047&amp;currency=VND&amp;asq=HYIrr9YPF%2bxSQOAH8tE9UiTywPa7Psm9wmypt8eSKbrNuJqYJoXEZCcBCWEFQzZaqBSvmg5GxcKhjC1IF%2b7jKOxHVL3LpV5wkXI%2bUbjDyoFnSxROs%2fHFDYx1Zn9%2f21Xwgtxxh0HZ6X%2bM6gl%2bKCNja6vkIMphREIgoqgKN5rvVJo%3d&amp;tag=hh" class="card card-agoda ">
                                            <figure class="card__container js-eq-height-item" style="">
                                                <div class="card__img-container reponsive-ratio reponsive-ratio--8_5">
                                                    <img src="http://cuocsongmienbac.com/wp-content/uploads/2018/09/iStock_83360441_MEDIUM.jpg" alt="HaNoi" class="reponsive-ratio__media">
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
                                        <a target="_blank" href="http://www.agoda.com/vi-vn/partners/xml2012_landing.aspx?siteid=1604047&amp;currency=VND&amp;asq=HYIrr9YPF%2bxSQOAH8tE9UiTywPa7Psm9wmypt8eSKbrNuJqYJoXEZCcBCWEFQzZaqBSvmg5GxcKhjC1IF%2b7jKIG7PsP2npAOyXYNB3jjC2i4y5wVkIU24oFMuhlhP1ZCEsZWOppyeBdlJwf4LvjZ1Cy93L5UJw7FCvVs5ghIrGU%3d&amp;tag=hh" class="card card-agoda ">
                                            <figure class="card__container js-eq-height-item" style="">
                                                <div class="card__img-container reponsive-ratio reponsive-ratio--8_5">
                                                    <img src="http://hoanggh.com/wp-content/uploads/2017/07/thac-7-tang-GSV-Travel.jpg" alt="DaLat" class="reponsive-ratio__media">
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


                                        <a target="_blank" href="http://www.agoda.com/vi-vn/partners/xml2012_landing.aspx?siteid=1604047&amp;currency=VND&amp;asq=HYIrr9YPF%2bxSQOAH8tE9UiTywPa7Psm9wmypt8eSKbrNuJqYJoXEZCcBCWEFQzZaqBSvmg5GxcKhjC1IF%2b7jKNxwkkU%2fkaPpGTPlZmWHmglnSxROs%2fHFDYx1Zn9%2f21Xwgtxxh0HZ6X%2bM6gl%2bKCNja6vkIMphREIgoqgKN5rvVJo%3d&amp;tag=hh" class="card card-agoda ">
                                            <figure class="card__container js-eq-height-item" style="">
                                                <div class="card__img-container reponsive-ratio reponsive-ratio--8_5">
                                                    <img src="http://danangtours.com.vn/en/wp-content/uploads/2016/04/da-nang-tours.jpg" alt="DaNang" class="reponsive-ratio__media">
                                                    <p class="card__sash">
                                                      Sale <span class="card__sash-emphasis">20%</span> 

                                                    </p>
                                                </div>
                                                <figcaption class="card__profile">
                                                    <div class="card__header">
                                                        <p class="card__pre-title">DaNang</p>
                                                        <h3 class="card__title">Sale Flights Da Nang</h3>
                                                        </p>

                                                        <strong class="card__price"><span class="currency">1.276.877 VNĐ</span></strong>

                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </a>


                                        <a target="_blank" href="http://www.agoda.com/vi-vn/partners/xml2012_landing.aspx?siteid=1604047&amp;currency=VND&amp;asq=HYIrr9YPF%2bxSQOAH8tE9UiTywPa7Psm9wmypt8eSKbrNuJqYJoXEZCcBCWEFQzZaqBSvmg5GxcKhjC1IF%2b7jKOPpOWph24Ni04hwj5gGWf5nSxROs%2fHFDYx1Zn9%2f21Xwgtxxh0HZ6X%2bM6gl%2bKCNja6vkIMphREIgoqgKN5rvVJo%3d&amp;tag=hh" class="card card-agoda ">
                                            <figure class="card__container js-eq-height-item" style="">
                                                <div class="card__img-container reponsive-ratio reponsive-ratio--8_5">
                                                    <img src="https://tintaynguyen.com/wp-content/uploads/2015/05/ve-may-bay-di-buon-ma-thuot-1024x680.jpg" alt="Buon Me Thuot" class="reponsive-ratio__media">
                                                    <p class="card__sash">
                                                       Sale <span class="card__sash-emphasis">10%</span> 

                                                    </p>
                                                </div>
                                                <figcaption class="card__profile">
                                                    <div class="card__header">
                                                        <p class="card__pre-title">Buon Me Thuot</p>
                                                        <h3 class="card__title">Sale Flights Buon Me Thuot</h3>
                                                       
                                                        </p>

                                                        <strong class="card__price"><span class="currency">1.180.846 VNĐ</span></strong>

                                                </figcaption>
                                            </figure>
                                        </a>

                                    </div>
                                </div>
                                <small class="section__legal">
                                    Giá áp dụng cho một chuyến/ngày. Giá phụ thuộc vào từng khung thời gian bay.
                                </small>
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



