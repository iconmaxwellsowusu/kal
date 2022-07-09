<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"  errorPage="error.jsp"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="control.DBConnection"%>
 

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Caldriva</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Mega Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="flat ui, admin Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="codedthemes" />
    <!-- Favicon icon -->
    <link href="assets/images/profile.jpg" rel="icon">
    <!-- Google font-->     <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- Style.css -->
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
             <!-- Alertify CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	<!-- Bootstrap theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
	  <!-- Alertify js -->  
	  <link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
	 <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
</head>

<body>



      <%
  	Connection con=DBConnection.getConnection();
  	Statement st = con.createStatement();
    response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
    String position = (String)session.getAttribute("position");
    String branch = (String)session.getAttribute("branch");
    String union = (String)session.getAttribute("union");
    
        if(!position.equals("Field Staff") && !position.equals("Union Manager") && !position.equals("Branch Manager") && !position.equals("admin")){
              response.sendRedirect("index.jsp");   
        }
       
  	
   %>

<!-- Pre-loader start -->
<div class="theme-loader">
    <div class="loader-track">
        <div class="preloader-wrapper">
            <div class="spinner-layer spinner-blue">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="gap-patch">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
            <div class="spinner-layer spinner-red">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="gap-patch">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
            
            <div class="spinner-layer spinner-yellow">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="gap-patch">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
            
            <div class="spinner-layer spinner-green">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="gap-patch">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Pre-loader end -->
<div id="pcoded" class="pcoded">
    <div class="pcoded-overlay-box"></div>
    <div class="pcoded-container navbar-wrapper">
        <nav class="navbar header-navbar pcoded-header">
            <div class="navbar-wrapper">
                <div class="navbar-logo">
                    <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                        <i class="ti-menu"></i>
                    </a>
                    <div class="mobile-search waves-effect waves-light">
                        <div class="header-search">
                            <div class="main-search morphsearch-search">
                                <div class="input-group">
                                    <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                    <input type="text" class="form-control" placeholder="Enter Keyword">
                                    <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                  
                </div>
            
                <div class="navbar-container container-fluid">
                    <ul class="nav-left">
                        <li>
                            <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                        </li>
                        <li class="header-search">
                            <div class="main-search morphsearch-search">
                                <div class="input-group">
                                    <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                    <input type="text" class="form-control">
                                    <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#!" onclick="javascript:toggleFullScreen()" class="waves-effect waves-light">
                                <i class="ti-fullscreen"></i>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav-right">
                        <li class="header-notification">
                            <a href="#!" class="waves-effect waves-light">
                                <i class="ti-bell"></i>
                                <span class="badge bg-c-red"></span>
                            </a>
                            <ul class="show-notification">
                                <li>
                                    <h6>Notifications</h6>
                                    <label class="label label-danger">New</label>
                                </li>
                             
                           
                            </ul>
                        </li>
                        
                         <%
					     String dash = position;
					     String dashPage="";
					     String admin = "adminDashboard.jsp";
					     String union1 = "unionDashboard.jsp";
					     String branch1 = "BranchDashboard.jsp";
					     
					       if(dash.equals("admin")){
					       	dashPage = admin;
					       }else if(dash.equals("Union")){
					       	dashPage = union1;
					       	
					       }else{
					       	dashPage = branch1;
					       }
					     
					     %> 
                        
                        <li class="user-profile header-notification">
                            <a href="#!" class="waves-effect waves-light">
                                <img src="assets/images/use.jpg" class="img-radius" alt="User-Profile-Image">
                                <span>BN - TECNOLOGY</span>
                                <i class="ti-angle-down"></i>
                            </a>
                            <ul class="show-notification profile-notification">
                                
                                <li class="waves-effect waves-light">
                                    <a href="#">
                                        <i class="fa-solid fa-chart-pie"></i> Generate Report
                                    </a>
                                </li>
                                <li class="waves-effect waves-light">
                                    <a href="logOut">
                                        <i class="fa-solid fa-right-from-bracket"></i> Logout
                                    </a>
                                </li>
                               
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                               <nav class="pcoded-navbar">
                      <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                      <div class="pcoded-inner-navbar main-menu">
                          <div class="">
                              <div class="main-menu-header">
                                  <img class="img-80 img-radius" src="assets/images/profile.jpg" alt="User-Profile-Image">
                                  <div class="user-details">
                                      <span id="more-details">C A L D R I V A<i class="fa fa-caret-down"></i></span>
                                  </div>
                              </div>
        
                              <div class="main-menu-content">
                                 <ul>
                                      <li class="more-details">
                                           <a href="#">
                                              <i class="fa-solid fa-chart-pie"></i> Generate Report
                                           </a>
                                          
                                      </li>
                                      <li class="more-details">
                                           <a href="logOut">
		                                        <i class="fa-solid fa-right-from-bracket"></i> Logout
		                                    </a>
                                          
                                      </li>
                                  </ul>
                              </div>
                          </div>
                          <div class="p-15 p-b-0">
                              
                          </div>
                          
                          
                          
                          
                          <div class="pcoded-navigation-label" data-i18n="nav.category.navigation"></div>
                          <ul class="pcoded-item pcoded-left-item">
                              <li class="active">
                                  <a href="<%out.println(dashPage); %>" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.dash.main">Dashboard</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                               <li class="pcoded-hasmenu">
                                  <a href="javascript:void(0)" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-control-shuffle"></i></span>
                                      <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Branches</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                                  <ul class="pcoded-submenu">
                                      <li class=" ">
                                          <a href="station.jsp" class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Add Branch</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                  </ul>
                              </li>
                          </ul>
                          <div class="pcoded-navigation-label" data-i18n="nav.category.forms"></div>
                          <ul class="pcoded-item pcoded-left-item">
                                 <li class="pcoded-hasmenu">
                                  <a href="javascript:void(0)" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="fa-solid fa-car"></i></span>
                                      <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Vehicles</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                                  <ul class="pcoded-submenu">
                                      <li class=" ">
                                          <a href="vehicles.jsp" class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Add Vehicles</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                  </ul>
                              </li>
                                  <li class="pcoded-hasmenu">
                                  <a href="javascript:void(0)" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="fa-solid fa-users"></i></span>
                                      <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Drivers</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                                  <ul class="pcoded-submenu">
                                      <li class=" ">
                                          <a href="drivers.jsp" class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Add Drivers</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                  </ul>
                              </li>
        
                          </ul>
        
                          <div class="pcoded-navigation-label" data-i18n="nav.category.forms"></div>
                          <ul class="pcoded-item pcoded-left-item">
                                 <li class="pcoded-hasmenu">
                                  <a href="javascript:void(0)" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-map"></i></span>
                                      <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Trips</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                                  <ul class="pcoded-submenu">
                                      <li class=" ">
                                          <a href="trips.jsp" class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Add Trips</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                  </ul>
                                   <ul class="pcoded-submenu">
                                      <li class=" ">
                                          <a href="onBoard.jsp" class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">See passengers in a trip</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                  </ul>
                                  
                              </li>
                               <li class="pcoded-hasmenu">
                                  <a href="javascript:void(0)" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-user"></i></span>
                                      <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Passengers</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                                  <ul class="pcoded-submenu">
                                      <li class=" ">
                                          <a href="passengers.jsp" class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Add Passengers</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                  </ul>
                              </li>
                                <li class="pcoded-hasmenu">
                                  <a href="javascript:void(0)" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-pencil-alt"></i></span>
                                      <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Bookings</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                                  <ul class="pcoded-submenu">
                                      <li class=" ">
                                          <a href="booking.jsp" class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Add Booking</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                  </ul>
                              </li>
                          </ul>
        
                          <div class="pcoded-navigation-label" data-i18n="nav.category.other"></div>
                          <ul class="pcoded-item pcoded-left-item">
                              <li class="pcoded-hasmenu">
                                  <a href="javascript:void(0)" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="fa-solid fa-biohazard"></i></span>
                                      <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Unions</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                                  <ul class="pcoded-submenu">
                                      <li class=" ">
                                          <a href="union.jsp" class="waves-effect waves-dark">
                                              <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                              <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Add Union</span>
                                              <span class="pcoded-mcaret"></span>
                                          </a>
                                      </li>
                                  </ul>
                              </li>

                          </ul>
                      </div>
                  </nav>
                                                                 	<!-- Modal -->
													<div class="modal fade " id="xlarge1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
													  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
													    <div class="modal-content">
													      <div class="modal-header">
													        <h5 class="modal-title" id="exampleModalLongTitle">Update Booking</h5>
													        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
													          <span aria-hidden="true">&times;</span>
													        </button>
													      </div>
													      <div class="modal-body">
														<form action="">
                                                        <div class="form-group row  container justify-content-center">
							                                   <!-- Employee Details  -->
							                                        
																	
																
																   <div class="col-md-4 mb-3">
							                                                <label>Passeger's Name</label>
							                                                    <input class="form-control" name="passenger1" id="passenger1">
							                                            </div>
							                                            
							                                            <div class="col-md-4 mb-3">
							                                                <label>Passenger's Phone</label>
							                                                    <input class="form-control" name="phone1" id="phone1" type="number">
							                                            </div>
							                                            
							                                     
							                                            
							                                             <div class="col-md-4 mb-3">
							                                                <label>Emergency Phone</label>
							                                                    <input class="form-control" name="ephone1" id="ephone1" type="tel">
							                                            </div>
							                                            
							                                        <div class="form-group floating-label col-md-4 mb-3">
																	<label for="" class="mt-1">Trip</label>
																		<input name="trip1" id="trip1" class="form-control">
																		
																	</div>
																	
							                                            
							                                          <div class="col-md-4 mb-3">
							                                                <label>Destination</label>
							                                                    <input class="form-control" name="destination1" id="destination1">
							                                            </div>
							                                            
							                                            <div class="col-md-4 mb-3">
							                                                <label>Seat Number</label>
							                                                    <input class="form-control" name="seat1" id="seat1">
							                                            </div>
							                                            
							                                             <div class="col-md-4 mb-3">
							                                                <label>Identity card</label>
							                                                    <input class="form-control" name="cards" id="cards">
							                                            </div>
							                                            
							                                            </div>
                                                       
                                                       
                                                       </form>
                                                      
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-light-secondary"
                                                                data-dismiss="modal">
                                                               
                                                                <span >Close</span>
                                                            </button>
                                                            <button type="button" class="btn btn-primary"
                                                                data-bs-dismiss="modal" onclick="edit()" data-dismiss="modal">
                                                                
                                                                <span >Update Booking</span>
                                                            </button>
													        
													      </div>
													      </div>
													     
													      
													    </div>
													  </div>
													</div>
                <div class="pcoded-content">	
                  
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="page-body">
                                    <div class="row">
                                    
                                    
                            <div class="col-xl-4 col-md-12">
                              <div class="card ">
                                  <div class="card-header">
                                      <h5>Select a Trips</h5>
                                      <div class="card-header-right">
                                          <ul class="list-unstyled card-option">
                                              <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                              <li><i class="fa fa-window-maximize full-card"></i></li>
                                              <li><i class="fa fa-minus minimize-card"></i></li>
                                              <li><i class="fa fa-refresh reload-card"></i></li>
                                              <li><i class="fa fa-trash close-card"></i></li>
                                          </ul>
                                      </div>
                                  </div>
        
                              <div class="card-block">
                                 <form id="bookForm">
                                    <div class="form-group row  container justify-content-center">
                                   <!-- Employee Details  -->
                                        
                                        <div class="col-md-12 mb-3">
										<label for="" class="mt-1">Select Trip</label>
											<select name="trip" id="tripVal" class="selectpicker form-control" data-live-search="true">
											 <option >click to select</option>
											<%
											    String sql="Select * from trip where status ='Booking' and branch='"+branch+"' or unions='"+union+"'";
												ResultSet rst = st.executeQuery(sql);
												while(rst.next()){
											%>
											   
												<option ><%=rst.getString("trip") %></option>
											<%} %>	
											</select> 
										</div>
										</div>
										</form>
                                                        
                                                       <button class="btn waves-effect waves-light btn-grd-danger" onclick="seat()">Proceed >>>>></button>
                                                      
                                                    </div>
                                                </div>
                                            </div>
                                    
                                    
                            <div class="col-xl-8 col-md-12">
                              <div class="card ">
                                  <div class="card-header">
                                      <h5>Select a Trips</h5>
                                      <div class="card-header-right">
                                          <ul class="list-unstyled card-option">
                                              <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                              <li><i class="fa fa-window-maximize full-card"></i></li>
                                              <li><i class="fa fa-minus minimize-card"></i></li>
                                              <li><i class="fa fa-refresh reload-card"></i></li>
                                              <li><i class="fa fa-trash close-card"></i></li>
                                          </ul>
                                      </div>
                                  </div>
        
                              <div class="card-block">
                                 <form id="bookForm">
                                    <div class="form-group row  container justify-content-center">
                                   <!-- Employee Details  -->
                                
                                                        <div class="form-group row  container justify-content-center">
                                   <!-- Employee Details  -->
                                       
                                         <div class="col-md-4 mb-3">
                                            <label>Passenger's Phone</label>
                                            <input class="form-control" name="phone" id="phone" type="number" readonly>
                                        </div>
                                        
									
									   <div class="col-md-4 mb-3">
                                                <label>Passeger's Name</label>
                                                    <input class="form-control" name="passenger" id="passenger" readonly>
                                            </div>
                                            
                                             <div class="col-md-4 mb-3">
                                                <label>Emergency Phone</label>
                                                    <input class="form-control" name="ephone" id="ephone" type="tel" readonly>
                                            </div>
                                            
                                             <div class="col-md-4 mb-3">
                                            <label>ID Type</label>
                                            <div class="input-group mb-3">
                                                   <select name="trip" id="tripVal" class="selectpicker form-control" data-live-search="true">
											 <option >click to select</option>
											 <%
											
											    String query="Select * from idtype";
												 rst = st.executeQuery(query);
												while(rst.next()){
											%>
											   
												<option ><%=rst.getString(2) %></option>
											<%} %>	 
											</select>
                                                    <button class="btn btn-dark" type="button"
                                                       onclick="openSeat()" title="open this field"><i class="fa-solid fa-fa-plus"></i></button>
                                                </div>
                                            </div>
                                            
                                       <div class="form-group floating-label col-md-4 mb-3">
										<label for="" class="mt-1">ID Number</label>
											<input class="form-control" name="idNumber" id="idNumber" readonly>
										</div>
                                            
                                          <div class="col-md-4 mb-3">
                                                <label>Destination</label>
                                                    <input class="form-control" name="destination" id="destination" readonly>
                                            </div>
                                           
                                            <div class="col-md-4 mb-3">
                                            <label>Seat Number</label>
                                            <div class="input-group mb-3">
                                                    <input class="form-control" name="seat" id="seat" readonly>
                                                    <button class="btn btn-dark" type="button"
                                                       onclick="openSeat()" title="open this field"><i class="fa-solid fa-lock-open"></i></button>
                                                </div>
                                            </div>
                                            </div>
										</div>
										</form>
                                                        
                                                       <button class="btn waves-effect waves-light btn-grd-success" onclick="add()">Add a booking</button>
                                                      
                                                    </div>
                                                </div>
                                            </div>
                                    
                                    
                                    
                                    
                                    
                                    
                                        <div class="col-sm-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Booking</h5>
                                                    <span></span>
                                                    <div class="card-header-right">
                                                        <ul class="list-unstyled card-option">
                                                            <li><i class="fa fa-chevron-left"></i></li>
                                                            <li><i class="fa fa-window-maximize full-card"></i></li>
                                                            <li><i class="fa fa-minus minimize-card"></i></li>
                                                            <li><i class="fa fa-refresh reload-card"></i></li>
                                                            <li><i class="fa fa-times close-card"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="card-block">
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
                                         <div align="right">
                                                   
                                           </div>         
                                                 
                                            <br>
                                            <div class="table-responsive">     
                                           <table id="table2" class="table table-borderless" >
										  <thead class="bg-info">
										   <tr>
		                                        <th></th>
		                                        <th></th>
		                                        <th></th>
		                                        <th></th>
		                                        <th></th>
		                                        <th></th>
		                                        <th></th>
		                                        <th></th>
		                                        <th></th>
		                                    </tr>
										  </thead>
										  
										</table>
										</div>   
                                        </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

        <script src="component/jquery/jquery.js" type="text/javascript"></script>
        <script src="component/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="component/jquery.validate.min.js" type="text/javascript"></script>
        <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>  
         <script type="text/javascript">
												getall();
												
												function getall()
									            {
									                
									                $('#table2').dataTable().fnDestroy();
									                $.ajax({
									                    
									                    url: "calData.jsp",
									                    type : "GET",
									                    dataType : "JSON",
									                    data:{"option":'getBook'},
									                    
									                    success:function(data)
									                    {
									                        
									                       $('#table2').dataTable({
									                           "aaData":data,
									                           "scrollX": false,
									                           
									                           
									                           "aoColumns":
									                                   [
									                              
									                                	   {"sTitle": "#","mData": "number"},
									                                    
									                                   
									                                   {
									                                        "sTitle":
									                                        "Date",
									                                        "mData": "date",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Passenger",
									                                        "mData": "passengerName",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Passenger Phone",
									                                        "mData": "passengerPhone",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Emergency Phone",
									                                        "mData": "emergencyPhone",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                 
									                                   {
									                                        "sTitle":
									                                        "Trip",
									                                        "mData": "trip",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Destination",
									                                        "mData": "destination",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Seat Number",
									                                        "mData": "seatNumber",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Action",
									                                        "mData": "letter",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a style="cursor:pointer; color:red" onclick="del('+ids+')"><i class="fa-regular fa-trash-can"></i></a>';
									                                        }
									                                   },
									                                  
									                                   ]
									                       });
									                      
									                    }  
									                  
									                });
									                
									            }
												
												function update(ids){
													sessionStorage.setItem("id",ids);
													$.ajax({
										        		  
										        		  type:"POST",
										        		  url:"calData.jsp",
										        		  data:{"myid" :ids,"option":'showBook'},
										        		  
										        		  success:function(msg){
										        			  var obj = JSON.parse(msg);
										        			
										        			  $("#passenger1").val(obj[0].passengerName);
										        			  $("#phone1").val(obj[0].passengerPhone);
										        			  $("#ephone1").val(obj[0].emergencyPhone);
										        			  $("#trip1").val(obj[0].trip);
										        			  $("#destination1").val(obj[0].destination);
										        			  $("#seat1").val(obj[0].seatNumber);
										        			  $("#cards").val(obj[0].cad);
										        			  
										        		  },
										        		  error(err){
										        			  alertify.error('Error');
										        		  }
										        		  
										        		  
										        	  })
												}
												
												
												function logOut(){
											
													
													$.ajax({
										        		  
										        		  type:"POST",
										        		  url:"logOut",
										        		  data:{"myid" :ids},
										        		  
										        		  success:function(msg){
										        			  var obj = JSON.parse(msg);
										        			
										        			
										        			  
										        		  },
										        		  error(err){
										        			  alertify.error('Error');
										        		  }
										        		  
										        		  
										        	  })
												}
												
												
												 function add(){
										        	  
												       
										        	  $.ajax({
										        		  
										        		  type:"POST",
										        		  url:"calData.jsp",
										        		  data:{"idNumber":$("#idNumber").val(),"passenger":$("#passenger").val() ,"phone":$("#phone").val(),"ephone":$("#ephone").val(),"trip":$("#tripVal").val(),"destination":$("#destination").val(),"seat":$("#seat").val(),"option":'addBook'},
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  var obj = JSON.parse(msg);
										        			  var pPhone = obj[0].phone;
										        			 
										        			  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
										        			  getall();
										        			  $("#seat").attr('readonly','true');
										        			  $('#bookForm')[0].reset();
										        			  
										        			  testClear();
										        			  
										        		  },
										        		  error(err){
										        			  alertify.error('Error');
										        		  }
										        		  
										        		  
										        	  })
										        	  
										          }
												 
												 function testClear(){
														var f=document.getElementById("bookForm");
														
														
														function delay(delayInms) {
															  return new Promise(resolve => {
															    setTimeout(() => {
															      resolve(2);
															    }, delayInms);
															  });
															}

															async function sample() {
																f.submit();
															  let delayres = await delay(3000);
															  f.reset();
															}
															sample();
													}
												 
												 function edit(){
										        	  
												      var id = sessionStorage.getItem("id");
												      
										        	  $.ajax({
										        		  
										        		  type:"POST",
										        		  url:"calData.jsp",
										        		  data:{"myid" :id,"passenger":$("#passenger1").val() ,"phone":$("#phone1").val(),"ephone":$("#ephone1").val(),"trip":$("#trip1").val(),"destination":$("#destination1").val(),"seat":$("#seat1").val(),"card":$("#cards").val(),"option":'editBook'},
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  var obj = JSON.parse(msg);
										        			  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
										        			  getall();
										        		  },
										        		  error(err){
										        			  alertify.error('Error');
										        		  }
										        		  
										        		  
										        	  })
										        	  
										          }
												 
												 function del(id){
													 var doit = confirm("Do you want to delete data");
								            	      if(doit){
								            	    
								            	    	  gone(id);  
								            	    	  
								            	      }else
								            	    	  alertify.error(' Canceled ');
												 }
												 
								            	 function gone(id){   	
												 
													
											        	  $.ajax({
											        		  type:"GET",
											        		  url:"calData.jsp",
											        		  data:{"myid" :id,"option":'deletepass'},
											        		 
											        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
											        		  success:function(msg){
											        			  
											        			  //var obj = JSON.parse(msg);
											        			  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
											        			  getall();
											        		  },
											        		  error(err){
											        			  alertify.error(' file not seen ');
											        		  }
											        		  
											        		  
											        	  })
											        	  
											          }
												
								            	 
								            	 function bring(val){
								            		 $.ajax({
										        		  type:"GET",
										        		  url:"calData.jsp",
										        		  data:{"search" :val,"option":'searchID'},
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  
										        			  var obj = JSON.parse(msg);
										        			
										        			  
										        			  
										        			  
										        			  if(obj.length == 0){
										        				  
										        				  $('#passenger').removeAttr('readonly');
										        				  $('#phone').removeAttr('readonly');
										        				  $('#ephone').removeAttr('readonly');
										        				  
										        				  
										        			  }else{
										        				   var notification = alertify.notify('ID Exists', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
										        				  $("#passenger").val(obj[0].passengerName).attr('readonly','true');
											        			  $("#phone").val(obj[0].passengerPhone).attr('readonly','true');
											        			  $("#ephone").val(obj[0].emergencyPhone).attr('readonly','true');
										        			  }
										        		  },
										        		  error(err){
										        			  alertify.error(' an error occured');
										        		  }
										        		  
										        		  
										        	  })
								            	 }
								            	 
								            	 function bring1(val){
								            		 $.ajax({
										        		  type:"GET",
										        		  url:"calData.jsp",
										        		  data:{"fon" :val,"option":'searchPhone'},
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  var obj = JSON.parse(msg);
										        			  if(obj.length == 0){
										        				  
										        				  $('#passenger').val('').removeAttr('readonly');
										        				  $('#idNumber').val('').removeAttr('readonly');
										        				  $('#ephone').val('').removeAttr('readonly');
										        				  
										        				  
										        			  }else{
										        				   var notification = alertify.notify('ID Exists', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
										        				  $("#passenger").val(obj[0].passengerName).attr('readonly','true');
											        			  $("#idNumber").val(obj[0].passengerPhone).attr('readonly','true');
											        			  $("#ephone").val(obj[0].emergencyPhone).attr('readonly','true');
										        			  }
										        		  },
										        		  error(err){
										        			  alertify.error(' an error occured');
										        		  }
										        		  
										        		  
										        	  })
								            	 }
								            	 
								            	 function seat(val){
								            		 $.ajax({
										        		  type:"GET",
										        		  url:"calData.jsp",
										        		  data:{"seat":$("#tripVal").val(),"option":'seat'},
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  
										        			  var obj = JSON.parse(msg);
										        			
										        				   var notification = alertify.notify('ID Exists', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
										        				  $("#seat").val(obj[0].seatForU);
										        				  $('#passenger').removeAttr('readonly');
										        				  $('#idNumber').removeAttr('readonly');
										        				  $('#ephone').removeAttr('readonly');
										        				  $('#phone').removeAttr('readonly');
										        				  $('#destination').removeAttr('readonly');
										        				  
										        			  
										        		  },
										        		  error(err){
										        			  alertify.error(' an error occured');
										        		  }
										        		  
										        		  
										        	  })
								            	 }
								         
								         
								        //////////////////\\\\\\\\\\\\\\\\   On Select of drop down \\\\\\\\\\///////////
								            			
								            			 
								        //////////////////\\\\\\\\\\\\\\\\   On Typing \\\\\\\\\\///////////	 
								            			 
								            			 var typingTimer;                //timer identifier
								            			 var doneTypingInterval = 500;  //time in ms, 5 second for example

								            			 //on keyup, start the countdown
								            			 $('#idNumber').keyup(function(){
								            			     clearTimeout(typingTimer);
								            			     if ($('#idNumber').val) {
								            			         typingTimer = setTimeout(function(){
								            			             //do stuff here e.g ajax call etc....
								            			              var v = $("#idNumber").val();
								            			              bring(v);
								            			              //$("#out").html(v);
								            			         }, doneTypingInterval);
								            			     }
								            			 });
								            			 
								            		function openSeat(){
								            			
								            			$("#seat").removeAttr('readonly')
								            		}	 
								            		

							            			 //on keyup, start the countdown
							            			 $('#phone').keyup(function(){
							            			     clearTimeout(typingTimer);
							            			     if ($('#phone').val) {
							            			         typingTimer = setTimeout(function(){
							            			             //do stuff here e.g ajax call etc....
							            			              var v1 = $("#phone").val();
							            			              bring1(v1);
							            			              //$("#out").html(v);
							            			         }, doneTypingInterval);
							            			     }
							            			 });
							            			 
							            			 
								               //////////////////\\\\\\\\\\\\\\\\   On Select of drop down \\\\\\\\\\///////////
								               
								                function message(number){
								            		 $.ajax({
										        		  type:"POST",
										        		  url:"hellio",
										        		  data:{"phone" :number},
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  
										        		  },
										        		  error(err){
										        			  alertify.error(' an error occured');
										        		  }
										        		  
										        		  
										        	  })
								            	 }
								               
												</script>
                
                                        
                
                <div id="styleSelector">
                
                </div>
            </div>
        </div>
    </div>
</div>



<!-- Warning Section Ends -->
<!-- Required Jquery -->
 <script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>     <script type="text/javascript" src="assets/js/bootstrap/js/bootstrap.min.js "></script>
<!-- waves js -->
<script src="assets/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
<!-- modernizr js -->
    <script type="text/javascript" src="assets/js/SmoothScroll.js"></script>     <script src="assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
<script src="assets/js/pcoded.min.js"></script>
<script src="assets/js/vertical-layout.min.js "></script>
<script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- Custom js -->
<script type="text/javascript" src="assets/js/script.js"></script>


</body>

</html>
