<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sky - Edit Account</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/editaccount.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@page import="com.dao.UserDao,com.bean.User"%>

<jsp:include page="navigationbar.jsp"></jsp:include>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
    <li class="breadcrumb-item"><a href="accountdetails.jsp">Account Details</a></li>
    <li class="breadcrumb-item active" aria-current="page">Edit Details</li>
  </ol>
</nav>

<div class="title">
	<h1>Update Details</h1>
</div>

<%
//Retrieve user id
String idpassenger=request.getParameter("idpassenger");
User u=UserDao.getPassengerById(Integer.parseInt(idpassenger));
%>

<div class="container col-lg-4 feature">
	<form action="updateaccount.jsp">
		<table>
			<tr><td><h3>Account details</h3></td></tr>
			<tr><td><input type="hidden" name="idpassenger" value="<%=u.getIdpassenger() %>"/></td></tr>
			<tr><td class="form-group">First Name</td></tr>
			<tr><td><input type='text' class="form-control" name="first_name" class='input-field'placeholder='First Name'  value="<%= u.getFirst_name()%>" required/></td></tr>
			<tr><td class="form-group">Last Name</td></tr>
			<tr><td><input type='text' class="form-control" name="last_name" class='input-field'placeholder='Last Name '  value="<%= u.getLast_name()%>" required/></td></tr>
			<tr><td><input type="hidden" name="email" value="<%=u.getEmail() %>"/></td></tr>
			<tr><td class="form-group">Password</td></tr>
			<tr><td><input type='password' class="form-control" name="password" class='input-field'placeholder='Enter Password'  value="<%= u.getPassword()%>" required/></td></tr>
			<tr><td><input type="hidden" name="status" value="<%=u.getStatus() %>"/></td></tr>
			<tr class="form-group"><td></td></tr>
			<tr><td class="form-group note">In our site we encourage our user to</td></tr>
			<tr><td class="note">change password every three months</td></tr>
			<tr><td><button type='submit'class='submit-btn'>Update</button></td></tr>
		</table>
	</form>
</div>

<!-- footer -->
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
</body>
</html>