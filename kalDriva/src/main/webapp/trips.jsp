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
	<link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
	  <!-- Alertify js -->  
	 <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
</head>

<body>


 <%
	
	Connection con=DBConnection.getConnection();
	Statement st = con.createStatement();
    String union = (String)session.getAttribute("name");
    String branch = (String)session.getAttribute("branch");
    String pass = (String)session.getAttribute("pass");
  	try{
	 

	String b=null;
	String p=null;
	String u=null;
        response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
	ResultSet resultSet = st.executeQuery("select * from login where unions='"+union+"' and branch='"+branch+"' and password='"+pass+"'");
	
	while(resultSet.next()){
		b=resultSet.getString("branch");
		u=resultSet.getString("unions");
		p=resultSet.getString("password");
	}
        if( !branch.equals("admin") && !branch.equals("Union")){
              response.sendRedirect("index.jsp");   
        }
  	}catch(Exception e){
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
					     String dash = branch;
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
													        <h5 class="modal-title" id="exampleModalLongTitle">Update Trip</h5>
													        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
													          <span aria-hidden="true">&times;</span>
													        </button>
													      </div>
													      <div class="modal-body">
														  <form action="">
                                                        <div class="form-group row  container justify-content-center">
						                                   <!-- Employee Details  -->
						                                        
																
																 <div class="form-group floating-label col-md-4 mb-3">
																<label for="" class="mt-1">Select Vehicle</label>
																	<input name="vehicle1" id="vehicle1" class="form-control">
																		 
																</div>
																
																
																
																 <div class="form-group floating-label col-md-4 mb-3">
																<label for="" class="mt-1">Select Status</label>
																	<input name="status1" id="status1" class="form-control">
																	
																</div>
						
																<div class="col-md-4 mb-3">
						                                                <label>Trip Description</label>
						                                                    <input class="form-control" name="description1" id="description1">
						                                            </div>
						                                            
						                                     
						                                            
						                                             <div class="col-md-4 mb-3">
						                                                <label>AVERAGE TRIP TIME (MINUTES)</label>
						                                                    <input class="form-control" name="average1" id="average1">
						                                            </div>
						                                            
						                                          <div class="col-md-4 mb-3">
						                                                <label>OVERSPEEDING TIME LIMIT (MINUTES)</label>
						                                                    <input class="form-control" name="over1" id="over1">
						                                            </div>
						                                            
						                                            </div>
                                                       
                                                       
                                                       </form>
                                                      
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-light-secondary"
                                                                data-dismiss="modal">
                                                                
                                                                <span >Close</span>
                                                            </button>
                                                            <button class="btn waves-effect waves-light btn-grd-success" onclick="edit()" data-dismiss="modal">
                                                                <span >Update Trip</span>
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
                                        <div class="col-sm-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Trips Data</h5>
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
                                                   
                                                      <form action="">
                                                        <div class="form-group row  container justify-content-center">
                                   <!-- Employee Details  -->
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
             
										
										<div class="col-md-4 mb-3">
										<label >Select Vehicle</label>
											<select name="vehicle" id="vehicle" class="selectpicker form-control" data-live-search="true">
											<%
											    String sql="Select * from vehile";
												
												ResultSet rst = st.executeQuery(sql);
												while(rst.next()){
											%>
												<option ><%=rst.getString("carNumber") %></option>
											<%} %>	
											</select> 
										</div>
										
										
									

										<div class="col-md-4 mb-3">
                                                <label>From/To</label>
                                                
                                                
                                                    <textarea class="form-control" name="description" id="description"></textarea>
                                                        
                                                
                                            </div>
                                            
                                     
                                            
                                             <div class="col-md-4 mb-3">
                                                <label>AVERAGE TRIP TIME (MINUTES)</label>
                                                    <input class="form-control" name="average" id="average">
                                            </div>
                                            
                                          <div class="col-md-4 mb-3">
                                                <label>OVERSPEEDING TIME LIMIT (MINUTES)</label>
                                                    <input class="form-control" name="over" id="over">
                                            </div>
                                            
                                            <div class="col-md-4 mb-3">
                                                <label>Select Time</label>
                                                    <input class="form-control" name="time" id="time" type="datetime-local">
                                            </div>
                                            
                                            </div>
                                                       
                                                       
                                                       </form>
                                         <div align="right">
                                           <button class="btn waves-effect waves-light btn-grd-success" onclick="addTrip()">Add trip</button>        
                                           </div>         
                                                 
                                            <br>
                                            <div class="table-responsive">     
                                           <table id="tbl-student" class="table table-borderless" >
										  <thead class="bg-info">
										    <tr>
		                                        <th></th>
		                                        <th></th>
		                                        <th class="col-1"></th>
		                                        <th class="col-2"></th>
		                                        <th class="col-6"></th>
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
									                
									                $('#tbl-student').dataTable().fnDestroy();
									                $.ajax({
									                    
									                    url: "calData.jsp",
									                    type : "GET",
									                    dataType : "JSON",
									                    data:{"option":'getTrip'},
									                    
									                    success:function(data)
									                    {
									                        
									                       $('#tbl-student').dataTable({
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
									                                        "Vehicle",
									                                        "mData": "vehicle",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Trip Info",
									                                        "mData": "trip",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#booking" style="cursor:pointer;" onclick="passengers('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Status",
									                                        "mData": "status",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	var stat = mData;
									                                        	if(stat.includes('Started')||stat.includes('STARTED')){
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')"><label class="label label-inverse-primary">'+mData+'</label></a>';
									                                        	}else if(stat.includes('Ended') ||stat.includes('ENDED')){
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')"><label class="label label-inverse-success">'+mData+'</label></a>';
									                                        	}else if(stat.includes('Incomplete')){
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')"><label class="label label-inverse-secondary">'+mData+'</label></a>';
									                                        	}else if(stat.includes('Booking') ||stat.includes('BOOKING')){
									                                        		return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')"><label class="label label-inverse-warning">'+mData+'</label></a>';
									                                        	}else{
									                                        		return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')"><label class="label label-inverse-danger">'+mData+'</label></a>';
									                                        	}
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "AVERAGE TRIP TIME",
									                                        "mData": "ATT",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "OVERSPEEDING TIME LIMIT",
									                                        "mData": "speedL",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-toggle="modal" data-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Start",
									                                        "mData": "letter",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a style="cursor:pointer; color:black" onclick="canc('+ids+')"><i class="fa-solid fa-circle-play"></i></a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "End",
									                                        "mData": "letter",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a style="cursor:pointer; color:green" onclick="end('+ids+')"><i class="fa-solid fa-check"></i></a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Cancelled",
									                                        "mData": "letter",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a style="cursor:pointer; color:red" onclick="cancel('+ids+')"><i class="fa-solid fa-xmark"></i></a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Incomplete",
									                                        "mData": "letter",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a style="cursor:pointer; color:blue" onclick="incomplet('+ids+')"><i class="fa-solid fa-retweet"></i></a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Delete",
									                                        "mData": "letter",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a style="cursor:pointer; color:red" onclick="del('+ids+')"><i class="fa-regular fa-trash-can"></i> </a>';
									                                        }
									                                   },
									                                  
									                                   ]
									                       });
									                      
									                    }  
									                  
									                });
									                
									            }
												
												
												//////////////////////////////////        passengers in trip ////////////////////////////////////////
												
												function passengers(id)
									            {
									                
									                $('#tbl-student1').dataTable().fnDestroy();
									                $.ajax({
									                    
									                    url: "calData.jsp",
									                    type : "GET",
									                    dataType : "JSON",
									                    data:{"option":'showpass',"myid" :id},
									                    
									                    success:function(data)
									                    {
									                        
									                    	$('#tbl-student1').dataTable({
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
										                                        	return mData;
										                                        }
										                                   },
										                                   {
										                                        "sTitle":
										                                        "Passenger",
										                                        "mData": "passengerName",
										                                        "render" : function(mData,type,row,meta)
										                                        {
										                                        	var ids =row["id"];
										                                        	return mData;
										                                        }
										                                   },
										                                   
										                                   {
										                                        "sTitle":
										                                        "Passenger Phone",
										                                        "mData": "passengerPhone",
										                                        "render" : function(mData,type,row,meta)
										                                        {
										                                        	var ids =row["id"];
										                                        	return mData;
										                                        }
										                                   },
										                                   {
										                                        "sTitle":
										                                        "Emergency Phone",
										                                        "mData": "emergencyPhone",
										                                        "render" : function(mData,type,row,meta)
										                                        {
										                                        	var ids =row["id"];
										                                        	return mData;
										                                        }
										                                   },
										                                 
										                                   {
										                                        "sTitle":
										                                        "Trip",
										                                        "mData": "trip",
										                                        "render" : function(mData,type,row,meta)
										                                        {
										                                        	var ids =row["id"];
										                                        	return mData;
										                                        }
										                                   },
										                                   
										                                   {
										                                        "sTitle":
										                                        "Destination",
										                                        "mData": "destination",
										                                        "render" : function(mData,type,row,meta)
										                                        {
										                                        	var ids =row["id"];
										                                        	return mData;
										                                        }
										                                   },
										                                   
										                                   {
										                                        "sTitle":
										                                        "Seat Number",
										                                        "mData": "seatNumber",
										                                        "render" : function(mData,type,row,meta)
										                                        {
										                                        	var ids =row["id"];
										                                        	return mData;
										                                        }
										                                   },
										                                  
										                                  
										                                   ]
										                       });
									                      
									                    }  
									                  
									                });
									                
									            }
												
												
												
												//////////////////////////////////     passengers in trip ////////////////////////////////////////
												
												function update(ids){
													sessionStorage.setItem("id",ids);
													
													$.ajax({
										        		  
										        		  type:"POST",
										        		  url:"calData.jsp",
										        		  data:{"myid" :ids,"option":'showTrip'},
										        		  
										        		  success:function(msg){
										        			  var obj = JSON.parse(msg);
										        			
										        			  $("#vehicle1").val(obj[0].vehicle);
										        			  $("#status1").val(obj[0].status);
										        			  $("#description1").val(obj[0].trip);
										        			  $("#average1").val(obj[0].ATT);
										        			  $("#over1").val(obj[0].speedL);
										        		
										        			  
										        		  },
										        		  error(err){
										        			  alertify.error('Error');
										        		  }
										        		  
										        		  
										        	  })
												}
												
												
												 function addTrip(){
										        	  
												       
										        	  $.ajax({
										        		  
										        		  type:"POST",
										        		  url:"calData.jsp",
										        		  data:{"vehicle":$("#vehicle").val() ,"time":$("#time").val(),"description":$("#description").val(),"average":$("#average").val(),"over":$("#over").val(),"option":'addTrip'},
										        		 
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
												 
												 function edit(){
										        	  
												      var id = sessionStorage.getItem("id");
												      
										        	  $.ajax({
										        		  
										        		  type:"POST",
										        		  url:"calData.jsp",
										        		  data:{"myid" :id,"vehicle":$("#vehicle1").val() ,"status":$("#status1").val(),"description":$("#description1").val(),"average":$("#average1").val(),"over":$("#over1").val(),
										        		  "option":'editTrip'},
										        		 
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
											        		  data:{"myid" :id,"option":'deleteT'},
											        		 
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
								            	 
								            	 ///////////////////////////////////          trip Statuses /////////////////////////////
								            	 
								            	 function end(id){
													 var doit = confirm("are you sure trip is ended");
								            	      if(doit){
								            	    
								            	    	  ended(id);  
								            	    	  
								            	      }else
								            	    	  alertify.error(' Canceled ');
												 }
												 
								            	 function ended(id){   	
													
											        	  $.ajax({
											        		  type:"GET",
											        		  url:"calData.jsp",
											        		  data:{"myid" :id,"option":'end'},
											        		 
											        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
											        		  success:function(msg){
											        			  var obj = JSON.parse(msg);
											        			  var time = obj[0].munites;
											        			  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
											        			  getall();
											        			  
											        		  },
											        		  error(err){
											        			  alertify.error(' trip could not be ended ');
											        		  }
											        		  
											        		  
											        	  })
											        	  
											          }
								            	 
								            	 function cancel(id){
													 var doit = confirm("Do you want to cancel this trip");
								            	      if(doit){
								            	    
								            	    	  canceled(id);  
								            	    	  
								            	      }else
								            	    	  alertify.error(' Canceled ');
												 }
												 
								            	 function canceled(id){   	
												 
											        	  $.ajax({
											        		  type:"GET",
											        		  url:"calData.jsp",
											        		  data:{"myid" :id,"option":'can'},
											        		 
											        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
											        		  success:function(msg){
											        			  
											        			  //var obj = JSON.parse(msg);
											        			  var notification = alertify.notify('Trip cancelled successfully', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
											        			  getall();
											        		  },
											        		  error(err){
											        			  alertify.error(' trip was not cancelled ');
											        		  }
											        		  
											        		  
											        	  })
											        	  
											          }
								            	 
												 
								            	 function incomplet(id){   	
								            		 sessionStorage.setItem("id",id);
														$("#danger").modal("show");
											        	   $.ajax({
											        		  type:"GET",
											        		  url:"calData.jsp1",
											        		  data:{"myid" :id,"option":'inc'},
											        		 
											        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
											        		  success:function(msg){
											        			  
											        			  //var obj = JSON.parse(msg);
											        			//  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
											        			//  getall();
											        		  },
											        		  error(err){
											        			 // alertify.error(' file not seen ');
											        		  }
											        		  
											        		  
											        	  }) 
											        	  
											          }
								            	 
								            	 
								            	 function incomplete(id){   	
								            		var is = sessionStorage.getItem("id",id);
														$("#danger").modal("show");
											        	   $.ajax({
											        		  type:"GET",
											        		  url:"calData.jsp",
											        		  data:{"myid" :is,"option":'incomplete',"reason":$("#reason").val()},
											        		 
											        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
											        		  success:function(msg){
											        			  
											        			  //var obj = JSON.parse(msg);
											        			  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
											        			 getall();
											        		  },
											        		  error(err){
											        			  alertify.error(' an error occured ');
											        		  }
											        		  
											        		  
											        	  }) 
											        	  
											          }
								            	 ///////////////////////////////////////////// trip satatuses ///////////////////////////
								            	 
								            	 function bring(val){
								            		 $.ajax({
										        		  type:"GET",
										        		  url:"calData.jsp",
										        		  data:{"search" :val,"option":'searchID'},
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  
										        			  var obj = JSON.parse(msg);
										        			
										        			  
										        			  
										        			  
										        			  if(obj.length == 0){
										        				  
										        				  $('#passenger').val('');
										        				  $('#phone').val('');
										        				  $('#ephone').val('');
										        				  
										        				  
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
								         
								         
								        //////////////////\\\\\\\\\\\\\\\\   On Select of drop down \\\\\\\\\\///////////
								            			// $("#department").on('change', function(){
								            				// var val = $(this).val();
								            				
								            				// bring(val);
								            				 
								            				//});
								            			 
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
								            			 
								            			 
								            			 
								               //////////////////\\\\\\\\\\\\\\\\   On Select of drop down \\\\\\\\\\///////////
		
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
								               
								            	 function canc(id){
													 var doit = confirm("Do you want to cancel this trip");
								            	      if(doit){
								            	    
								            	    	  can(id);  
								            	    	  
								            	      }else
								            	    	  alertify.error(' Canceled ');
												 }
												 
								            	 function can(id){   	
												 
											        	  $.ajax({
											        		  type:"GET",
											        		  url:"calData.jsp",
											        		  data:{"myid" :id,"option":'starTrip'},
											        		 
											        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
											        		  success:function(msg){
											        			  
											        			  //var obj = JSON.parse(msg);
											        			  var notification = alertify.notify('Trip Started successfully', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
											        			  getall();
											        		  },
											        		  error(err){
											        			  alertify.error(' trip was not Started ');
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
