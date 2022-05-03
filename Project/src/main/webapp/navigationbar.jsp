<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- navigation bar -->
<div id="home">
<nav id="navi" class="navbar navbar-expand-lg fixed-top">
	<a class="navbar-brand" href="home.jsp">
	<img src="resources/images/logo2.png" alt="" width="50" height="40">
	Sky</a>
	<button class="navbar-toggler navbar-light" type="button" data-bs-toggle="collapse" data-bs-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" href="home.jsp">Home</a>
			</li>
			<li>
				<a class="nav-link" href="about.jsp">About</a>
			</li>
			<li class="nav-item dropdown">
        			<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Schedule</a>
          		<ul class="dropdown-menu">
            		<li><a class="dropdown-item" href="viewschedule.jsp">View Schedule</a></li>
            		<li><a class="dropdown-item" href="viewdestination.jsp">View Destination</a></li>
          		</ul>
        	</li>
			<li class="nav-item">
				<a class="nav-link" href="contact.jsp">Contact</a>
			</li>
			
				<% 
				if(request.getSession(false) == null) {
				%>
			<li class="nav-item">
				<a class="nav-link" href="login.jsp">login</a>
			</li>
				<% }else {%>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">User</a>
          		<ul class="dropdown-menu">
            		<li><a class="dropdown-item" href="viewbooking.jsp">View Booking</a></li>
            		<li><a class="dropdown-item" href="accountdetails.jsp">Account Details</a></li>
            		<li><a class="dropdown-item" href="logout.jsp">logout</a></li>
            	</ul>
            </li>
				<% } %>
		</ul>
	</div>
</nav>
</div>


</body>
</html>