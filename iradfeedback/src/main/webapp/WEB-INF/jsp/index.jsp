<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Creative - Bootstrap Admin Template</title>

<!-- Bootstrap CSS -->
<!-- <link href="/css/bootstrap.min.css" rel="stylesheet">
 -->
<!-- bootstrap theme -->
<link href="/css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="/css/elegant-icons-style.css" rel="stylesheet" />
<!-- <link href="/css/font-awesome.min.css" rel="stylesheet" /> -->
<!-- full calendar css-->
<!-- <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
 -->
<!-- <link href="assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" /> -->
<!-- easy pie chart-->
<!-- <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
 -->
<!-- owl carousel -->
<!-- <link rel="stylesheet" href="/css/owl.carousel.css" type="text/css">
 -->
<link href="/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<!-- <link rel="stylesheet" href="/css/fullcalendar.css">
 -->
<!-- <link href="/css/widgets.css" rel="stylesheet">
 -->
<link href="/css/style.css" rel="stylesheet">
<link href="/css/style-responsive.css" rel="stylesheet" />
<link href="/css/xcharts.min.css" rel=" stylesheet">
<link href="/css/jquery-ui-1.10.4.min.css" rel="stylesheet">

</head>

<body>
	<!-- container section start -->
	<section id="container" class="">


		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<!-- <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span> -->
			<a href="#" class="logo"> <img
				src="/img/morth_logo_g.jpg" alt="Morth" width="70" height="50" />
				iRAD PROGRAM MANAGER<span class="lite"></span></a>
			<!--logo end-->


			<div class="top-nav notification-row">
				<!-- notificatoin dropdown start-->
				<ul class="nav pull-right top-menu">

					<!-- task notificatoin start -->
					<li id="task_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-task-l"></i> <span class="badge bg-important">6</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-blue"></div>

							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- task notificatoin end -->
					<!-- inbox notificatoin start-->
					<li id="mail_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-envelope-l"></i> <span class="badge bg-important">5</span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 5 new messages</p>
							</li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini.jpg"></span> <span
									class="subject"> <span class="from">Greg Martin</span> <span
										class="time">1 min</span>
								</span> <span class="message"> I really like this admin panel. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini2.jpg"></span> <span
									class="subject"> <span class="from">Bob Mckenzie</span>
										<span class="time">5 mins</span>
								</span> <span class="message"> Hi, What is next project plan? </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini3.jpg"></span> <span
									class="subject"> <span class="from">Phillip Park</span>
										<span class="time">2 hrs</span>
								</span> <span class="message"> I am like to buy this Admin
										Template. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini4.jpg"></span> <span
									class="subject"> <span class="from">Ray Munoz</span> <span
										class="time">1 day</span>
								</span> <span class="message"> Icon fonts are great. </span>
							</a></li>
							<li><a href="#">See all messages</a></li>
						</ul></li>

					<!-- alert notification end-->
					<!-- user login dropdown start-->
					<li class="dropdown"><a href="/login"> <span
							class="profile-ava"> Login/Register</span>
					</a>
					
					</li>
				</ul>
				<!-- notificatoin dropdown end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li class="active"><a class="introduction" > <i
							class="icon_house_alt"></i> <span>Introduction</span>
					</a></li>
					<li><a class="objective"> <i
							class="icon_genius"></i> <span>Objective</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_document_alt"></i> <span>Stake Holders</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li id="morth" class="morth"><a>MORTH</a></li>
							<li id="nic" class="nic"><a>NIC</a></li>
							<li id="nicsi" class="nicsi"><a>NICSI</a></li>
							<li id="iitm" class="iitm"><a>IITM</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_desktop"></i> <span>LightHouse State</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li id="TamilNadu" class="TamilNadu"><a>Tamil Nadu</a></li>
							<li id="Karnataka" class="Karnataka"><a>Karnataka</a></li>
							<li id="Maharashtra" class="Maharashtra"><a>Maharashtra</a></li>
							<li id="MadhyaPradesh" class="MadhyaPradesh"><a>Madhya Pradesh</a></li>
							<li id="Rajasthan" class="Rajasthan"><a>Rajasthan</a></li>
							<li id="UttarPradesh" class="UttarPradesh"><a>Uttar
									Pradesh</a></li>
						</ul></li>


				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!--overview start-->
				<div class="row">
					<div class="col-lg-12">
						<!-- <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3> -->
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
							<li><i class="fa fa-laptop"></i>Dashboard</li>
						</ol>
					</div>
				</div>

				<div class="row">

					<div class="col-lg-9 col-md-12">
						<div class="panel panel-default">
							
							<div class="panel-body">
							<ul>
							<li class="introductionc">
							<div class="panel-heading"><h2>
											<b> Introduction</b>
										</h2></div>
							<p style="text-align: left">India is one of the fastest growing economies, and matching its pace is its extensive road network, growing at an admirable pace. The Highways, although a fragment of the total road network in India, carry over 40% of goods and unfortunately, are witness to 36% of total annual fatalities. These accident injuries/ fatalities are quite taxing to country’s economy bringing the GDP down by 7%. Notwithstanding the various initiatives are being undertaken to bring down the number of accidents/ deaths, the results have not been very encouraging. It is pertinent to state here without the intervention and efforts of all the stakeholders (viz. Transport, Police, Health, Highways, Citizens, etc.), in a coordinated fashion, the goal of improving road safety seems unattainable. As an enabling technology, IT will certainly play a major role to make roads safer in India. As the country progresses, and infrastructure supports a greater number of vehicles at higher speeds, the intervention of IT is one of the major priority of the govt. towards roads safety. The project, Integrated Road Accident Database (iRAD), under the guidance of Ministry of Road Transport and Highways (MoRTH), attempts to work in the direction of enhancing road safety.</p>
							</li>
							</ul>
							<ul>
							
							<li class="objectivec">
							<div class="panel-heading"><h2>
											<b>Objective</b>
										</h2></div>
							<p style="text-align: left">The project shall facilitate a central IRAD registry, which will host all the accident data, updated/ accessed through customized interfaces for the various actors/ stakeholders viz. Police, Health, Transport and Highways etc. It is a  mobile application for the project utilizing the Road Accident Recording format provided by the MoRTH. This  application will facilitate the police personnel attending the road accident to record and cover all relevant information to meet the data needs for further investigations.  The application  for the field data collection will cover a detailed account of Accident time & date, location, police station, victims involved in accident, information on impacting vehicles etc. Broadly, the field application will cover the segments such as - Accident Identification Details, Road environment related details, Vehicles involved in accident, Driver details, and Persons other than drivers involved in accident with necessary audio, video and images. 
The application will have necessary provisions in consonance with the login credential, to view the summary at Station, District, State and national level. The project also aims to create necessary APIs for the applications of the stakeholder’s viz. Police, Transport, health, ambulance etc. 
The present initiative shall also explore the feasibility to integrate Ambulatory services, particularly the 108 ambulances, Insurance companies, Courts, Blood Banks, Medical Records etc. subsequently. 
The application will also have credential relevant dash boards with charts and reports. The dashboards will have the summary results of the data collected from the field application. 
Necessary provision will be made for IITM to access the database to carry out detailed and in depth analysis of the data collected. The results of these analyses will be made available by IITM through a customized IRAD web portal to be developed by NICSI. The macro results of these analyses will also be made available on the IRAD application over the handheld devices to be procured by MoRTH for the individual police station. Necessary Training of Trainers (ToT) will be conducted by IITM in coordination 
</p>
							</li>
							
							</ul>
							
							
								<ul>
									<li class="morthc">
									<div class="panel-heading"><h2>
											<b> About MORTH</b>
										</h2></div>
										 <p style="text-align: left">An apex organisation under the Central Government, is entrusted with the task of formulating and administering, 
										in consultation with other Central Ministries/Departments, State Governments/UT Administrations, organisations and individuals,
										 policies for Road Transport, National Highways and Transport Research with a view to increasing the mobility and efficiency of
										  the road transport system in the country. The Ministry has two wings: Roads wing and Transport wing.
                                         Road Wing
                                         Deals with development and maintenance of National Highway in the country
                                         Main Responsibilities:
                                         1.Planning, development and maintenance of National Highways in the country.
                                         2.Extends technical and financial support to State Governments for the development of state roads and the roads of inter-state connectivity and economic importance
                                         3.Evolves standard specifications for roads and bridges in the country.
                                         4.Serves as a repository of technical knowledge on roads and bridges.</p>
									</li>

								</ul>
								<ul>
									<li class="nicc">
									<div class="panel-heading"><h2>
											<b> About NIC</b>
										</h2></div>
										 
										<p style="text-align: left">National Informatics Centre (NIC) was established in 1976, and has rich experience in providing ICT and eGovernance
										 support to the Government for the last 4 decades and bridge the digital divide. It has emerged as a promoter of digital
										 opportunities for sustainable development. NIC spearheaded âInformatics-Led-Developmentâ by implementing ICT applications in
										   social and public administration and facilitates electronic delivery of services to the government (G2G), business (G2B), 
										   citizen (G2C) and government employee (G2E). NIC, through its ICT Network, âNICNETâ, has institutional linkages with all the 
										   Ministries /Departments of the Central Government, 37 State Governments/ Union Territories, and about 720+  District Administrations of India. 
                                           NIC has been closely associated with the Government in different aspects of Governance  besides establishing a 
                                           Nationwide State-of-the-Art ICT Infrastructure, it has also built a large number of digital solutions to support the government
                                           at various levels, making the last-mile delivery of government services to the citizens a reality.</p>
								</ul>
								<ul>
									<li class="nicsic">
									<div class="panel-heading"><h2>
											<b> About NICSI</b>
										</h2></div>
										
										<p style="text-align: left">National Informatics Centre Services Inc. (NICSI) was established in 1995 as a section-8 (erstwhile section-25) 
								             company under National Informatics Centre, Ministry of Electronics & Information Technology,
								             Government of India for providing and procuring IT solutions for multiple e-governance projects undertaken by NIC,
								             MeitY, Governments and Government Organizations (like Public Sector Undertakings).

                                             With a turnover of more than Rs. 1240 crores (FY-2018-19), NICSI is a leading IT company with a government facing focus
                                             and more than 23 years of experience in assisting government organizations by providing state of art and cost effective
                                             solutions for all their growing ICT needs.
                                             These solutions are delivered through purchase of products and services from high quality vendors, empanelled with NICSI/GeM.
                                             NICSIâs procurement processes are fully compliant with GFR rules of Government of India.</p>
								</ul>
								<ul>
								  <li class="iitmc">
								  <div class="panel-heading"><h2>
											<b> About IIT MADRAS</b>
										</h2></div>
									
									<p style="text-align: left">The Institute strongly believes that talent and good ideas can come from anywhere and has a remarkably diverse community,drawing students from across all Indian states and from various countries. Intensely curious and driven to explore, the student 
									 community of IIT Madras value rigorous analytical thinking, ingenuity, hands-on problem solving, and big new ideas.
                                     The departments and centres of the Institute are responsible for the academic activities which include Teaching, Research and Industrial Consultancy.
                                     The courses of study are organized as semester programs and each semester provides for a minimum of seventy instructional days. The medium of instruction is English. Students are evaluated on a continuous basis throughout the semester. Evaluation is done by the faculty, a consequence of the autonomous status granted to the Institute.
                                     Research work is evaluated on the basis of the review thesis by peer examiners both from within the country and abroad.
									</p>
								  </li>
								</ul>
								
								
								
								
								<ul>
								  <li class="TamilNaduc">
								  <div class="panel-heading"><h2>
											<b>  Tamil Nadu</b>
										</h2></div>
									
									<pre>

									</pre>
								  </li>
								</ul>
								
								<ul>
								  <li class="Karnatakac">
								  <div class="panel-heading"><h2>
											<b> Karnataka </b>
										</h2></div>
									
									<pre>

									</pre>
								  </li>
								</ul>
								
								<ul>
								  <li class="Maharashtrac">
								  <div class="panel-heading"><h2>
											<b> Maharashtra </b>
										</h2></div>
									
									<pre>

									</pre>
								  </li>
								</ul>
								
								<ul>
								  <li class="MadhyaPradeshc">
								  <div class="panel-heading"><h2>
											<b> Madhya Pradesh</b>
										</h2></div>
									 
									<pre>

									</pre>
								  </li>
								</ul>
								
								<ul>
								  <li class="Rajasthanc">
								  <div class="panel-heading"><h2>
											<b> Rajasthan </b>
										</h2></div>
									
									<pre>

									</pre>
								  </li>
								</ul>
								
								<ul>
								  <li class="UttarPradeshc">
								  <div class="panel-heading"><h2>
											<b> Uttar Pradesh</b>
										</h2></div>
									
									<pre>

									</pre>
								  </li>
								</ul>
								
								
							</div>

						</div>

					</div>

					<div class="col-md-3">
						<div class="bulletin-board">
							<div class="content">
								<h3 class="header1" align="center">BULLETIN BOARD</h3>
								<marquee class="moving-body" behavior="scroll" direction="up"
									scrollamount="2"
									onmouseover="this.setAttribute('scrollamount',0,0); this.stop()"
									onmouseout="this.setAttribute('scrollamount',2,0); this.start()">

									<script>
										for (var i = 0; i <= 7; i++) {
											document
													.write('<p class="m-par">Moving element :'
															+ i + '</p>')
										}
									</script>
								</marquee>
							</div>
						</div>
					</div>
				</div>




				<div class="widget-foot" style="float: right;">
					<!-- Footer goes here --><div><p style="float: left">Design,Developed and Implemented by NIC & NICSI</p></div>
					<img src="/img/nic_logo.png" alt="Morth" width="100" height="50" />
				</div>

				<!-- project team & activity end -->

			</section>

		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->

	<!-- javascripts -->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui-1.10.4.min.js"></script>
	<script src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!-- charts scripts -->
	<script src="assets/jquery-knob/js/jquery.knob.js"></script>
	<script src="js/jquery.sparkline.js" type="text/javascript"></script>
	<script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="js/owl.carousel.js"></script>
	<!-- jQuery full calendar -->
	<
	<script src="js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<!--script for this page only-->
	<script src="js/calendar-custom.js"></script>
	<script src="js/jquery.rateit.min.js"></script>
	<!-- custom select -->
	<script src="js/jquery.customSelect.min.js"></script>
	<script src="assets/chart-master/Chart.js"></script>

	<!--custome script for all page-->
	<script src="js/scripts.js"></script>
	<!-- custom script for this page-->
	<!-- <script src="js/sparkline-chart.js"></script>
	<script src="js/easy-pie-chart.js"></script>
	<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="js/xcharts.min.js"></script>
	<script src="js/jquery.autosize.min.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/gdp-data.js"></script>
	<script src="js/morris.min.js"></script>
	<script src="js/sparklines.js"></script>
	<script src="js/charts.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script> -->
	<script src="js/hide-show.js"></script>
	<!-- <script>
		//knob
		$(function() {
			$(".knob").knob({
				'draw' : function() {
					$(this.i).val(this.cv + '%')
				}
			})
		});

		//carousel
		$(document).ready(function() {
			$("#owl-slider").owlCarousel({
				navigation : true,
				slideSpeed : 300,
				paginationSpeed : 400,
				singleItem : true

			});
		});

		//custom select box

		$(function() {
			$('select.styled').customSelect();
		});

		<!-- /* ---------- Map ---------- */
		$(function() {
			$('#map').vectorMap({
				map : 'world_mill_en',
				series : {
					regions : [ {
						values : gdpData,
						scale : [ '#000', '#000' ],
						normalizeFunction : 'polynomial'
					} ]
				},
				backgroundColor : '#eef3f7',
				onLabelShow : function(e, el, code) {
					el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
				}
			});
		});
	</script>
 -->

</body>
</html>