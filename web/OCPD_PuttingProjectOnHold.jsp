<%-- 
    Document   : OCPD_ViewProjectDetailsOnHold
    Created on : 07 19, 16, 5:48:56 PM
    Author     : RoAnn
--%>

<%@page import="Entity.Testimonial"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Entity.Files"%>
<%@page import="Entity.Schedule"%>
<%@page import="Entity.PWorks"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entity.Project"%>
<%@page import="Entity.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%Project p = (Project) session.getAttribute("project");%>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Mosaddek">
        <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <link rel="shortcut icon" href="img/favicon.png">

        <title>View Project</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-reset.css" rel="stylesheet">
        <!--external css-->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" >

        <!--right slidebar-->
        <link href="css/slidebars.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
        <link href = 'calendar/fullcalendar.css' rel='stylesheet'>
        <link href = 'calendar/scheduler.css' rel='stylesheet'>
        <script src ='calendar/moment.min.js'></script>
        <script src ='calendar/jquery.min.js'></script>
        <script src ='calendar/fullcalendar.js'></script>
        <script src ='calendar/scheduler.js'></script>
        <style>
            .DocumentList2
            {
                overflow-x:scroll;
                overflow-y:hidden;
                height:105%;
                white-space: nowrap;
                position: relative;
            }

            .row2 {
                width: 500%;
            }

            .DocumentItem2
            {
                border:1px solid #d9d9d9;
                margin-right: 10px;
                padding:0;
                height:200px;
                width: 200px;
            }
        </style>
        <style>
            .editablelegend {color:#00ffaa;}
            .uneditablelegend {color:#ff6666;}
        </style>
        <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
    </head>
    <body>

        <section id="container" class="">
            <!--header start-->
            <header class="header green-bg">
                <div class="sidebar-toggle-box">
                    <div data-original-title="Toggle Navigation" data-placement="right" class="fa fa-bars tooltips"></div>
                </div>
                <!--logo start-->
                <a href="index.html" class="logo" >COGITO<span></span></a>
                <!--logo end-->
                <div class="nav notify-row" id="top_menu">
                    <!--  notification start -->
                    <ul class="nav top-menu">
                        <!-- settings start -->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-tasks"></i>
                                <span class="badge bg-success"><!--NUMBER OF TASKS--></span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have __ pending tasks</p>
                                </li>
                                <!--REFER TO RIGHT SIDEBAR FOR SAMPLE CODE OF TASK + PROGRESS BAR
      
                          ADD THE CODE BELOW IF AT LEAST ONE(?) TASK IS LISTED
                          
                          <li class="external">
          <a href="#">See All Tasks</a>
      </li>
                          
                                -->
                            </ul>
                        </li>
                        <!-- settings end -->
                        <!-- inbox dropdown start-->
                        <li id="header_inbox_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-important"><!--NUMBER OF MESSAGES UNREAD--></span>
                            </a>
                            <ul class="dropdown-menu extended inbox">
                                <div class="notify-arrow notify-arrow-red"></div>
                                <li>
                                    <p class="red">You have __ new messages</p>
                                </li>
                            </ul>
                        </li>
                        <li id="header_notification_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                                <i class="fa fa-bell-o"></i>
                                <span class="badge bg-warning"><!--NUMBER OF NOTIFICATIONS--></span>
                            </a>
                            <ul class="dropdown-menu extended notification">
                                <div class="notify-arrow notify-arrow-yellow"></div>
                                <li>
                                    <p class="yellow">You have XX notifications</p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="top-nav ">
                    <ul class="nav pull-right top-menu">
                        <li>
                            <input type="text" class="form-control search" placeholder="">
                        </li>
                        <!-- user login dropdown start-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <img alt="" src="img/avatar1_small.jpg">
                                <span class="username">Hello <b><u><%//out.print(e.getFirstName());%></u></b>!</span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                                <li><a href="#"><i class="fa fa-bell-o"></i> Notification</a></li>
                                <li><a href="Logout"><i class="fa fa-key"></i> Log Out</a></li>
                            </ul>
                        </li>

                        <!-- user login dropdown end -->
                        <li class="sb-toggle-right">
                            <i class="fa  fa-align-right"></i>
                        </li>
                    </ul>
                </div>
            </header>
            <!--header end-->
            <!--sidebar start-->
            <aside>
                <div id="sidebar"  class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">
                        <li>
                            <a href="OCPD_Home">
                                <i class="fa fa-dashboard"></i>
                                <span>Home</span>
                            </a>
                        </li>


                        <li>
                            <a href="OCPD_ViewPlanningDocument">
                                <i class="fa fa-book"></i>
                                <span>CLUP and CDP</span>
                            </a>
                        </li>

                        <!--multi level menu start-->
                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class="fa fa-tasks"></i>
                                <span>Project Proposals</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="OCPD_ViewProjectList">&nbsp; &nbsp; &nbsp; &nbsp; View Project Proposals</a></li>
                                <li class="sub-menu">
                                    <a  href="">&nbsp; &nbsp; &nbsp; &nbsp; Monitor Projects</a>
                                    <ul class="sub">
                                        <li><a  href="OCPD_Timeline.jsp">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; View Timeline</a></li>
                                        <li class="sub-menu">
                                            <a  href="OCPD_ViewProjectStatus">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; View Project Status</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <!--multi level menu end-->
                        <li>
                            <a href="OCPD_NotificationActivity">
                                <i class="fa fa-book"></i>
                                <span>Notification and Activity</span>
                            </a>
                        </li>

                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->


            <section id="main-content">
                <section class="wrapper site-min-height">
                    <!-- page start-->
                    <section class="panel">

                        <header class="panel-heading">
                            View Project

                            <span class="pull-right">
                                <button class="btn btn-danger btn-sm" type="button" onclick="history.go(-1)"><i class="fa fa-times"></i> Cancel</button>
                                <button type="button" id="submitModal" class="btn btn-success btn-sm" data-toggle="modal"><i class="fa fa-check"></i> Finish</button>
                            </span>

                        </header>
                    </section>

                    <div class="row">

                        <div class="col-md-12">
                            <section class="panel">
                                <div class="bio-graph-heading project-heading">
                                    <strong><%=p.getName()%> </strong>
                                </div><p>
                                <div class="panel-body bio-graph-info">
                                    <!--<h1>New Dashboard BS3 </h1>-->
                                    <div class="row">
                                        <span class="pull-right" style="margin-right: 3%">
                                            <button class="btn btn-success" data-toggle="modal" value="Project Details" type="button" id="detailsB"><i class="fa fa-plus"></i> Add Comment</button>                                        </span>
                                        <div class="col-lg-5" >
                                            <section class="panel">
                                                <div class="panel-body">


                                                    <!------------------------------------------------------DETAILS------------------------------------------>
                                                    <div>
                                                        <p><span class="bold">Project ID: </span></p>
                                                        <p><%=p.getId()%></p>
                                                    </div><br>

                                                    <div>
                                                        <p><span class="bold">Brief description: </span></p>
                                                        <p><%=p.getDescription()%></p>
                                                    </div><br>

                                                    <div>
                                                        <p><span class="bold">Category </span>:</p>
                                                        <p><%=p.getType()%>&nbsp;-&nbsp;<%=p.getCategory()%></p>
                                                    </div><br>
                                                    <div>
                                                        <p><span class="bold">Date Submitted</span> :</p>
                                                        <p><%=p.getDatesubmitted()%></p>
                                                    </div><br>
                                                    <%if (p.getBudget() != 0) {%>

                                                    <%}%>

                                                    <br>  

                                                    <p><span class="bold">Project Progress:</span> :</p>
                                                    <div class="progress progress-striped active ">
                                                        <div style="width: 10;" class="progress-bar progress-bar-success"></div>
                                                    </div>
                                                    <small>Current Status: <%out.print(p.getStatus());%></small>



                                                </div>
                                            </section>
                                        </div>

                                        <!------------------------------------------------------LOCATION------------------------------------------>

                                        <div class="col-lg-6">
                                            <section class="panel">
                                                <div class="panel-body">                            
                                                    <div><p><span class="bold">Location: </span> :</p></div>
                                                    <div class="panel-body bio-graph-info">
                                                        <center>
                                                            <div id="map" style="height: 500px; width: 575px; margin: 0; padding: 0;"></div>
                                                        </center>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>

                            </section>
                            <div class="row">

                                <!------------------------------------------------------MATERIALS------------------------------------------>

                                <section class="panel">

                                    <div class="col-lg-12">

                                        <div class="bio-graph-heading project-heading">
                                            <strong>Program Works</strong>
                                        </div>

                                        <section class="panel">
                                            <span class="pull-right" style="margin-right: 3%">
                                                <br>
                                                <button class="btn btn-success" data-toggle="modal" type="button" value="Materials" id="materialsB"><i class="fa fa-plus"></i> Add Comment</button>
                                                <br>
                                            </span>
                                            <br>
                                            <div class="panel-body">
                                                <table class="table" style="width:100%; text-align: center">

                                                    <tr>
                                                        <th colspan="6">NAME</th>
                                                    </tr>
                                                    <tr>
                                                        <th><center>Name</center></th>
                                                    <th><center>Quantity</center></th>
                                                    <th><center>Unit</center></th>
                                                    <th><center>Unit Price</center></th>
                                                    <th><center>Total</center></th>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>


                                                </table>
                                                <br> 
                                                <table class="table" style="width:100%; text-align: center">    
                                                    <tr>
                                                        <td colspan="4">Total cost: </td>
                                                    </tr>

                                                    <tr>
                                                        <td colspan="4">Indirect Cost 17% of Total Cost: </td>
                                                    </tr>

                                                    <tr>
                                                        <td colspan="4">Tax 5% of Total Cost + Indirect Cost: </td>
                                                    </tr>

                                                    <tr>
                                                        <td colspan="4">Estimated cost: </td>
                                                    </tr>

                                                </table>
                                            </div>
                                        </section>
                                    </div>
                                </section>                                                 
                            </div>

                            <!-------------------------------------------------MAIN TESTIMONIAL UPLOADS------------------------------------------>
                            <section class="panel">
                                <div class="bio-graph-heading project-heading">
                                    <strong>Project Main Testimonial</strong>
                                </div>
                                <div class="panel-body bio-graph-info" style="height: 250px;">
                                    <span class="pull-right" style="margin-right: 3%">
                                        <button class="btn btn-success" data-toggle="modal" type="button" value="MainTest" id="mainTestB"><i class="fa fa-plus"></i> Add Comment</button>                                        
                                        <br>
                                        <br>
                                    </span>
                                    <div class="DocumentList2">
                                        <div class="row2">
                                        </div>
                                    </div>

                                </div>
                            </section>                        

                            <!---------------------------------------------------REFERENCED TESTIMONIAL UPLOADS------------------------------------------>
                            <section class="panel">
                                <div class="bio-graph-heading project-heading">
                                    <strong>Project Referenced Testimonial Files</strong>
                                </div>
                                <div class="panel-body bio-graph-info" style="height: 250px;">
                                    <div class="DocumentList2">
                                        <span class="pull-right" style="margin-right: 3%">
                                            <button class="btn btn-success" data-toggle="modal" type="button" value="ProjectRef" id="projectRefB"><i class="fa fa-plus"></i> Add Comment</button>
                                            <br>
                                            <br>
                                        </span>

                                                                                <div class="row2">
                                            <div class="col-lg-3 DocumentItem2">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </section>

                            <!------------------------------------------------------GS UPLOADS------------------------------------------>
                            <section class="panel">
                                <div class="bio-graph-heading project-heading">
                                    <strong>Project Files</strong>
                                </div>
                                <div class="panel-body bio-graph-info" style="height: 250px;">
                                    <div class="DocumentList2">
                                        <span class="pull-right" style="margin-right: 3%">
                                            <button class="btn btn-success" data-toggle="modal" type="button" value="Files" id="filesB"><i class="fa fa-plus"></i> Add Comment</button>
                                            <br>
                                            <br>
                                        </span>

                                      <div class="row2">
                                        </div>
                                    </div>
                                </div>
                            </section>


                        </div>

                    </div>

                    <!-- page end-->
                </section>

            </section>

            <div id="testModal" class="modal fade " data-keyboard="false" data-backdrop="static">
                <div class="modal-dialog">

                    <div class="modal-content" style="">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span> <span class="sr-only">close</span></button>
                            <h4 id="" class="modal-title">Testimonial Details</h4>
                        </div>
                        <div id="modalBody" class="modal-body" style="overflow-y: auto;">
                            <div id="fDisplay"></div>
                            <fieldset title="Description" id="abcd" class="step" id="default-step-0">
                                <header id="testTitle" class="panel-heading"></header>
                                <header id="testDate" class="panel-heading"></header>
                                <header id="testLoc" class="panel-heading"></header>
                                <header id="testDesc" class="panel-heading"></header>
                            </fieldset>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" id="closeModalB" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <div id="projectFiles" class="modal fade " data-keyboard="false" data-backdrop="static">
                <div class="modal-dialog">

                    <div class="modal-content" style="">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span> <span class="sr-only">close</span></button>
                            <h4 id="" class="modal-title">Project File</h4>
                        </div>
                        <div id="modalBody" class="modal-body" style="overflow-y: auto;">
                            <div id="pfDisplay"></div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" id="closeModalB" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <form id="putProjectOnHold" action="OCPD_PutOnHold" class="form-horizontal">
            <input type="hidden" name="projectid" value="<%=p.getId()%>">
            <div class="modal fade full-width-modal-right" id="addComments" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content-wrap">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                                <h4 class="modal-title" id="comHead">Title</h4>
                            </div>
                            <div class="modal-body">
                                <label class="panel-heading">Comments:</label>
                                <textarea rows="10" style="background: white; border:0px;" class="wysihtml5 form-control" id="detailsTA" name="detailsTA"><%//=p.getAnnotations().getDescription()%></textarea>
                                <textarea rows="10" style="background: white; border:0px;" class="wysihtml5 form-control" id="materialsTA" name="materialsTA"><%//=p.getAnnotations().getMaterials()%></textarea>
                                <textarea rows="10" style="background: white; border:0px;" class="wysihtml5 form-control" id="mainTestTA" name="mainTestTA"><%//=p.getAnnotations().getSchedule()%></textarea>
                                <textarea rows="10" style="background: white; border:0px;" class="wysihtml5 form-control" id="projectRefTA" name="projectRefTA"><%//=p.getAnnotations().getUpload()%></textarea>
                                <textarea rows="10" style="background: white; border:0px;" class="wysihtml5 form-control" id="filesTA" name="filesTA"><%//=p.getAnnotations().getUpload()%></textarea>

                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-success" data-dismiss="modal" type="button">Finish</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal fade " id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" >
                    <div class="modal-content" style="width: 50%;">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Create new account</h4>
                        </div>

                        <div class="modal-body form-group">
                            <div class="col-md-12">
                                <div class="col-md-2">
                                    <label class="control-label">Date: </label>
                                </div>
                                <div class="col-md-10">
                                    <input type="date" class="form-control" name="date">
                                    <br>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-2">
                                    <label class="control-label">Time: </label>
                                </div>
                                <div class="col-md-10">
                                    <input type="time" class="form-control" name="time">
                                    <br>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-2">
                                    <label class="control-label">Agenda </label>
                                </div>
                                <div class="col-md-10">
                                    <button type="button" class="btn btn-success btn-xs pull-right" onclick="addRow()"><i class="fa fa-plus"></i> Add Agenda</button> 
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div id="agendaDiv">
                                    <br>
                                    <table class="table table-bordered table-striped table-condensed"  id="agendaTable">
                                    </table>

                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-2">
                                    <label class="control-label">Remarks </label>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <textarea type="text" name="addtcomments"  class="form-control" rows="3" placeholder=""></textarea>
                                </div>
                            </div>


                        </div>
                        <div class="modal-footer">
                            <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                            <button class="btn btn-success" type="submit">Submit</button>
                        </div>
                    </div>
                </div>
            </div>               




        </form>

        <!-- js placed at the end of the document so the pages load faster -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/slidebars.min.js"></script>
        <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
        <script src="js/respond.min.js" ></script>
        <script src="js/bootstrap.js"></script>
        <!--common script for all pages-->
        <script src="js/common-scripts.js"></script>
        <script src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyAI6e73iIoB6fgzlEmgdJBFYO3DX0OhMLw&callback=initMap"async defer ></script>
        <script>
            var map;
            var markers = <%=session.getAttribute("location")%>;
            function initMap() {
                map = new google.maps.Map(document.getElementById('map'), {
                    center: {lat: 14.45, lng: 120.98},
                    zoom: 14
                });

                markers.forEach(function (coor) {
                    var geocoder = new google.maps.Geocoder;
                    var latLng = new google.maps.LatLng(coor.longs, coor.lats);
                    var marker = new google.maps.Marker({
                        position: latLng,
                        map: map
                    });

                    var infowindow = new google.maps.InfoWindow;

                    marker.addListener('click', function () {
                        geocodeLatLng(geocoder, map, infowindow, latLng);
                    });
                });

            }
            function geocodeLatLng(geocoder, map, infowindow, latLng) {
                var latlng = latLng;
                geocoder.geocode({'location': latlng}, function (results, status) {
                    if (status === google.maps.GeocoderStatus.OK) {
                        if (results[0]) {
                            var marker = new google.maps.Marker({
                                position: latlng,
                                map: map
                            });
                            infowindow.setContent(results[0].formatted_address);
                            infowindow.open(map, marker);
                        } else {
                            window.alert('No results found');
                        }
                    } else {
                        window.alert('Geocoder failed due to: ' + status);
                    }
                });
            }

            $('#detailsB').click(function () {
                $('#comHead').text("Project Details");
                $('#detailsTA').show();
                $('#materialsTA').hide();
                $('#mainTestTA').hide();
                $('#projectRefTA').hide();
                $('#filesTA').hide();
                $('#addComments').modal();
            });

            $('#materialsB').click(function () {
                $('#comHead').text("Materials");
                $('#detailsTA').hide();
                $('#materialsTA').show();
                $('#mainTestTA').hide();
                $('#projectRefTA').hide();
                $('#filesTA').hide();
                $('#addComments').modal();
            });

            $('#mainTestB').click(function () {
                $('#comHead').text("Schedule");
                $('#detailsTA').hide();
                $('#materialsTA').hide();
                $('#mainTestTA').show();
                $('#projectRefTA').hide();
                $('#filesTA').hide();
                $('#addComments').modal();
            });
            $('#projectRefB').click(function () {
                $('#comHead').text("Citizen Testimonial");
                $('#detailsTA').hide();
                $('#materialsTA').hide();
                $('#mainTestTA').hide();
                $('#projectRefTA').show();
                $('#filesTA').hide();
                $('#addComments').modal();
            });
            $('#filesB').click(function () {
                $('#comHead').text("Citizen Testimonial");
                $('#detailsTA').hide();
                $('#materialsTA').hide();
                $('#mainTestTA').hide();
                $('#projectRefTA').hide();
                $('#filesTA').show();
                $('#addComments').modal();
            });
            $('#submitModal').click(function () {
                $('#myModal3').modal();
            });

            function add_agenda() {
                var d = document.getElementById("agendaDiv");

                d.innerHTML += "<p><span><input type='text' name='meetingAgenda' style='width: 75%;'><button onclick='delete_agenda(this)'>Delete</button></span>";
            }
            function delete_agenda(e) {
                e.remove();
            }
            function addRow() {
                //debugger;
                var tableID = "agendaTable";
                var table = document.getElementById(tableID);
                var rowCount = table.rows.length;


                var row = table.insertRow(-1);
                var cell1 = row.insertCell(-1);
                var cell2 = row.insertCell(-1);
                var element1 = document.createElement('input');
                element1.type = "text";
                element1.name = "meetingagenda";
                element1.style.width = "100%";
                element1.style.height = "100%";
                element1.style.border = "1px";
                element1.style.marginBottom = "5px";
                var del = document.createElement('input');
                del.type = "button";
                del.id = "delCost"
                del.value = "Delete";
                del.className = "btn btn-danger btn-xs";
                del.addEventListener('click', function () {
                    delBtn(this);
                });
                cell1.appendChild(element1);
                cell2.appendChild(del);

            }

            function delBtn(btn) {
                var row = btn.parentNode.parentNode;
                row.parentNode.removeChild(row);
            }
        </script>


    </body>

</html>



