<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Flight</title>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Flight Booking Online</title>
        <base href="${pageContext.request.getContextPath()}/resources/app/">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="${pageContext.request.getContextPath()}/webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link href="${pageContext.request.getContextPath()}/resources/app/css/stylesearch.css" rel="stylesheet" type="text/css" />        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

         <body>

        <div id="container">
            <input type="hidden" name="DebugID" value="10">
            <div id="header">
                <div id="banner">
                    <div class="banner">
                        <img alt="banner" src="img/banner3.jpg">
                    </div>
                </div><!--End banner-->
            </div><!--End header-->

            <div class="clear" style="height:10px;">&nbsp;</div>


            <!-- Progress bar -->
            <div id="step_header">
                <ul id="new_progress" style="background-color: #99ccff;">
                    <li class="wasselected">Ngày</li>
                    <li class="isselected">Chuyến bay</li>
                    <li class="unselected">Hành khách</li>
                    <li class="unselected">Dịch vụ</li>
                    <li class="unselected">Thanh toán</li>
                    <li class="unselected">Xác nhận</li>
                    <li class="unselected">Hoàn thành</li>
                </ul>
            </div>


            <form method="post" action="./TravelOptions.aspx?lang=vi&amp;st=pb&amp;sesid=" id="TravelOptions" admicro-data-event="TravelOptions" admicro-data-auto="0" admicro-data-order="false">
                <div class="aspNetHidden">
                    <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTk0ODgyNTI1M2Rkq1Bh4bo5ENjEkdxhNEh6Rk3dW4o=">
                </div>

                <div class="aspNetHidden">

                    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="675BBBB2">
                </div>
                <input type="hidden" id="button" name="button" value="">

                <div id="contentwsb" style="float: left; margin-left: 15px;">
                    <span id="XMLSessionMgr"></span>


                    <input type="hidden" name="SesID" value=""><input type="hidden" name="DebugID" value="10">
                    <input type="hidden" name="SesID" value=""><input type="hidden" name="DebugID" value="10">
                    <input type="hidden" id="PN" name="PN" value="">
                    <input type="hidden" id="RPN" name="RPN" value="">

                    <p class="xyz" style="display:none;"></p><br>

                    <h1>Choice of trip</h1><br>
                    <h2 style=" font-weight: normal; font-size: 12px; "></h2><br>
                    <h3 style=" font-weight: normal; font-size: 13px; ">Prices shown are in VND All the hours are local time at the airport.</h3>

                    <div style="height: 20px"></div>
                    
                    <div id="toDepDiv" style="margin: auto; width: 55%;">
                        <h1 class="bg1" style="height: 50px; width: 650px;">Depart <img src="https://d3dh07ymq581.cloudfront.net/images/flightdep.png" alt="">Ho Chi Minh (SGN) To Ha Noi (HAN)</h1>
                        <div id="travOpsMain">
                            <table class="TrvOptGrid" cellspacing="0" cellpadding="0" align="center" style="font-size: 125%">
                                <tbody><tr>
                                        <td colspan="7"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            <b>11/11/2018 Sun</b>
                                        </td>
                                        <td class="toPrev"><a href="javascript:document.forms['TravelOptions'].PN.value='dp';SubmitForm();"><span>&lt;&lt;</span>Previous </a></td>
                                        <td class="toNext"><a href="javascript:document.forms['TravelOptions'].PN.value='dn';SubmitForm();">Next<span>&gt;&gt;</span></a></td>		
                                    </tr>
                                    <tr>
                                        <td colspan="7">&nbsp;</td>
                                    </tr>
                                    <tr align="top" id="TrvOptGridHdr" style="font-weight: bold; text-align: center">
                                        <td width="110px" class="Hdr">Flight date</td>
                                        <td width="90px" class="Hdr">Start</td>
                                        <td width="96px" class="Hdr">Come</td>
                                        <td width="90px" class="Hdr">Flight</td>
                                        <td width="114px" class="Hdr">Promo</td>
                                        <td width="110px" class="Hdr">Economy</td>
                                        <td width="110px" class="Hdr">Premium</td>
                                    </tr>
                                    <tr>
                                        <td colspan="7"><hr></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7">
                                            <!-- Flights-->
                                            <table cellspacing="0" cellpadding="0" class="FlightsGrid" style="width:100%">

                                                <tbody>
                                                    <tr class="gridFlightEvenchecked" id="gridTravelOptDep1">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody>
                                                                    <tr class="gridFlightEven">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">18:40&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">20:45&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ192</span><br>2h 5m</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-1-M_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,720,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="193,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,892,000 VND">
                                                                            <input type="hidden" id="depTime" value="18:40">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,243,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="1,M_Economy,O" onclick="toORChk('M_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,720,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-1-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="18:40">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="1,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightOdd" id="gridTravelOptDep2">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">18:45&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">20:50&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ156</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-2-M_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,720,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="193,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,892,000 VND">
                                                                            <input type="hidden" id="depTime" value="18:45">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,243,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="2,M_Economy,O" onclick="toORChk('M_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,720,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-2-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="18:45">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="2,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightEven" id="gridTravelOptDep3">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">19:00&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">21:05&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ168</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-3-M_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,720,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="193,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,892,000 VND">
                                                                            <input type="hidden" id="depTime" value="19:00">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,243,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="3,M_Economy,O" onclick="toORChk('M_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,720,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-3-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="19:00">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="3,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightOdd" id="gridTravelOptDep4">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">19:05&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">21:10&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ198</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-4-M_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,720,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="193,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,892,000 VND">
                                                                            <input type="hidden" id="depTime" value="19:05">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,243,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="4,M_Economy,O" onclick="toORChk('M_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,720,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-4-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="19:05">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="4,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightEven" id="gridTravelOptDep5">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">19:35&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">21:40&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ190</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-5-M_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,720,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="193,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,892,000 VND">
                                                                            <input type="hidden" id="depTime" value="19:35">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,243,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="5,M_Economy,O" onclick="toORChk('M_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,720,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-5-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="19:35">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="5,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightOdd" id="gridTravelOptDep6">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">20:00&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">22:05&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ184</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-6-L_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,560,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="177,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,716,000 VND">
                                                                            <input type="hidden" id="depTime" value="20:00">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,067,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="6,L_Economy,O" onclick="toORChk('L_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,560,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-6-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="20:00">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="6,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightEven" id="gridTravelOptDep7">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">20:15&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">22:20&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ162</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-7-L_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,560,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="177,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,716,000 VND">
                                                                            <input type="hidden" id="depTime" value="20:15">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,067,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="7,L_Economy,O" onclick="toORChk('L_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,560,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-7-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="20:15">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="7,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightOdd" id="gridTravelOptDep8">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">21:30&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">23:35&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ170</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-8-L_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,560,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="177,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,716,000 VND">
                                                                            <input type="hidden" id="depTime" value="21:30">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,067,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="8,L_Economy,O" onclick="toORChk('L_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,560,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-8-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="21:30">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="8,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightEven" id="gridTravelOptDep9">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">21:35&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">23:40&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ182</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-9-L_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,560,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="177,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,716,000 VND">
                                                                            <input type="hidden" id="depTime" value="21:35">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,067,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="9,L_Economy,O" onclick="toORChk('L_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,560,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-9-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="21:35">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="9,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightOdd" id="gridTravelOptDep10">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">22:15&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">00:20&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ146</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-10-L_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,560,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="177,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,716,000 VND">
                                                                            <input type="hidden" id="depTime" value="22:15">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,067,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="10,L_Economy,O" onclick="toORChk('L_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,560,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-10-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="22:15">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="10,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightEven" id="gridTravelOptDep11">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">22:50&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">00:55&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ186</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightEven">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-11-L_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,560,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="177,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,716,000 VND">
                                                                            <input type="hidden" id="depTime" value="22:50">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="2,067,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="11,L_Economy,O" onclick="toORChk('L_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,560,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-11-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="22:50">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="11,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                    <tr class="gridFlightOdd" id="gridTravelOptDep12">
                                                        <td colspan="3">
                                                            <table width="330px" cellspacing="0" cellpadding="0">				
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">11/11/2018 Sun</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">22:55&nbsp;SGN<br>Ho Chi Minh</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo">01:00&nbsp;HAN<br>Ha Noi</td>
                                                                        <td width="110px" style="padding:0px 1px" align="center" class="SegInfo"><span class="airlineVJ">VJ188</span><br>2h 5m</td>
                                                                    </tr>


                                                                </tbody></table>
                                                        </td>
                                                        <td colspan="3">
                                                            <table width="330px" class="FaresGrid" cellspacing="0" cellpadding="0">
                                                                <tbody><tr class="gridFlightOdd">
                                                                        <td width="110px" align="center" valign="middle">Hết vé</td>
                                                                        <td width="110px" align="center" id="gridTravelOptDep-12-K_Economy-O" data-familyid="Economy">
                                                                            <input type="hidden" id="fare" value="1,410,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="162,000 VND">
                                                                            <input type="hidden" id="total_fare" value="1,551,000 VND">
                                                                            <input type="hidden" id="depTime" value="22:55">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="1,902,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="12,K_Economy,O" onclick="toORChk('K_Economy', 'O', 'd');SelectTravOpt(this);">
                                                                            1,410,000 VND
                                                                        </td>

                                                                        <td width="110px" align="center" id="gridTravelOptDep-12-V_SBoss-O" data-familyid="SkyBoss">
                                                                            <input type="hidden" id="fare" value="3,400,000 VND">
                                                                            <input type="hidden" id="fare_taxes" value="361,000 VND">
                                                                            <input type="hidden" id="total_fare" value="3,740,000 VND">
                                                                            <input type="hidden" id="depTime" value="22:55">
                                                                            <input type="hidden" id="charges" value="330,000 VND">
                                                                            <input type="hidden" id="total_complete_charges" value="4,091,000 VND">
                                                                            <input type="radio" id="gridTravelOptDep" name="gridTravelOptDep" value="12,V_SBoss,O" onclick="toORChk('V_SBoss', 'O', 'd');SelectTravOpt(this);">
                                                                            3,400,000 VND
                                                                        </td>

                                                                    </tr>    

                                                                </tbody></table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6"><hr></td>
                                                    </tr>


                                                </tbody></table>        
                                        </td>        
                                    </tr>
                                </tbody></table>
                        </div>
                    </div>


                    <p class="author"></p>
                    <div class="clear"></div>
                </div><!--End footer-->
                <div class="clear"></div>
            </form>
            
           <div id="submitairline" class="" style="display: block;">
                        <div class="button">
                            <input type="submit" id="selectnd" value="Next">
                        </div>
                    </div>
            
        </div>
        <footer style="background-color: buttonface">
            <p>Copyright © 2018 Booking flight</p>
        </footer>
    </body>
</html>
