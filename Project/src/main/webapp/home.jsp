<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sky - Homepage</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/home.css" rel="stylesheet" type="text/css">
</head>
<body>

<!-- Include navigation bar -->
<jsp:include page="navigationbar.jsp"></jsp:include>

<div class="container-fluid homebg position-relative">
	<img src="resources/images/sky4test.png" class="position-absolute" id="cloud">
	<img src="resources/images/airplane.png" class="position-absolute" id="plane">
	<img src="resources/images/lower-cloud.png" class="position-absolute" id="sky">		
	<h2 class="text" id="p-name">Sky</h2>
</div>

<!-- landing page -->
<div class="container-fluid welcome">
	<img src="resources/images/airplanecrt.png" class="airplanecrt">
	<!-- Title -->
	<div class="title text-center">
		<h1>Sky</h1> <h2>- Flight Ticket Booking System -</h2>
	</div>

	<!-- Body Content -->
	<div class="container border border-3 border-primary bdrs">
		<div class="content row">
			<div class="col-4 pdbot">
				<img src="resources/images/schedule.png" class="wcimg1">
			</div>
			<div class="col-8 pdbot">
				<h2>View Schedule</h2>
				<p>Check flight schedules available on our platform!</p>
				<a class="btn btn-outline-primary" href="viewschedule.jsp" role="button">View Schedule</a>
			</div>
			<div class="col-4 pdbot">
				<img src="resources/images/ticket.png" class="wcimg1">
			</div>
			<div class="col-8 pdbot">
				<h2>View Destination</h2>
				<p>View attractions and information about our destinations! <br/>Tourist friendly and local attractions!</p>
				<a class="btn btn-outline-primary" href="viewdestination.jsp" role="button">Learn more</a>
			</div>
			<div class="col-4 pdbot">
				<img src="resources/images/user.png" class="wcimg1">
			</div>
			<div class="col-8 pdbot">
				<h2>Get Started Now</h2>
				<p>Join our services by registering an account! <br/>Existing user may login to book flight tickets and check tickets!</p>
				<%if(request.getSession(false)==null) { %>
				<a class="btn btn-outline-primary" href="login.jsp" role="button">Register an account</a>
				<% } else { %>
				<a class="btn btn-outline-primary" href="accountdetails.jsp" role="button">View account details</a>
				<% } %>
			</div>
		</div>
	</div>
</div>

<footer class="page-footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-sm-12">
				<h5 class="text-uppercase font-weight-bold">Project members</h5>			
						<p>  Alvin Yeoh Yi Wei - SWE1904865
						<br/>Ng Yoo Wee        - SWE1904867
						<br/>Teo Yin Yin       - SWE1904136</p>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 qt-pos">
				<h5 class="text-uppercase font-weight-bold">Company Info</h5>
				<p>Sky
				<br/>sky@xmu.edu.my
				<br/>+60123456789</p>
			</div>
		</div>
	</div>
		<div class="footer-copyright text-center">(c) 2021 Sky - XMUM</div>
</footer>	

<script src="BSS/js/bootstrap.min.js"></script>
<script src="javascript/home.js"></script>
</body>
</html>