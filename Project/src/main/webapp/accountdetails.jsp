<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sky - Account Details</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/accountdetails.css" rel="stylesheet" type="text/css">
</head>
<body>

<!-- To database connection -->
<%@page import="com.dao.UserDao"%>
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<!-- Include navigation bar -->
<jsp:include page="navigationbar.jsp"></jsp:include>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">Account Details</li>
  </ol>
</nav>

<div class="title">
	<h1>Account Details</h1>
</div>

<%
	//to retrieve current active user's record
	u=UserDao.getRecordByActive();
%>

<!-- Display user information -->
<div class="container feature1">
	<div class="row">
  		<div class="col-3">
  			<!-- navigation tab on the left side -->
    		<div class="list-group" role="tablist">
      			<a class="list-group-item list-group-item-action active" data-bs-toggle="list" href="#list-name">Name</a>
      			<a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-email">My Email</a>
      			<a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-password">My Password</a>
      			<a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-account">Account Settings</a>
    		</div>
 		</div>
 		
 		<!-- contents on the right side -->
  		<div class="col-7 feature2">
    		<div class="tab-content">
    			<!-- content of name tab -->
      			<div class="tab-pane fade show active" id="list-name">
      				First Name
      				<fieldset disabled>
      					<input class="col-3" type="text" placeholder="<%= u.getFirst_name()%>">
      					<a href="editaccount.jsp?idpassenger=<%= u.getIdpassenger()%>">
      						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  								<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  								<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
							</svg>
						</a>
      				</fieldset>
      		
      				<div class="spaceBar"></div>
      				
      				Last Name
      				<fieldset disabled>
      					<input class="col-3" type="text" placeholder="<%= u.getLast_name()%>">
      					<a href="editaccount.jsp?idpassenger=<%= u.getIdpassenger()%>">
      						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  								<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  								<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
							</svg>
						</a>
      				</fieldset>
      			</div>
      			
      			<!-- content of email tab -->
      			<div class="tab-pane fade" id="list-email">Email Address
      				<p>This is the binded email id for your account,<br>
      				notification (if allowed to receive the notification) will be send to the email address as follow</p>
      				<fieldset disabled>
      					<input class="col-6" type="text" placeholder="<%= u.getEmail()%>">
      				</fieldset>
      			</div>
      			
      			<!-- content of password tab -->
      			<div class="tab-pane fade" id="list-password">Current Password
      				<p>For security practice, we encourage users to change password for every three months</p>
      				<fieldset disabled>
      					<input class="col-6" type="password" placeholder="********">
      					<a href="editaccount.jsp?idpassenger=<%= u.getIdpassenger()%>">
      						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  								<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  								<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
							</svg>
						</a>
      				</fieldset>
      			</div>
      			
      			<!-- content of account setting tab -->
      			<div class="tab-pane fade" id="list-account">Remove Account
      				<p>Good day, <b><%= u.getFirst_name()%> <%= u.getLast_name()%></b>,<br>
      				We are sad to hear your leaving.<br>
      				We will always strive for the best and accept any complains towards our website and work to improve it.</p>
      				<p>Upon press button below you will proceed to delete all the information on this account. All the related information
      				such as booking ticket and booked schedule will be remove alongside with the account information binded. Warning! This action cannot be undone.
      				
      				<div class="col-3">
						<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#promptedelete">
						Remove My Account
						</button>
						<div class="modal fade" id="promptedelete" tabindex="-1">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Alert</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<p>Account will get removed and deleted. Please double-confirm before you proceed with delete action. Your account along with all the contents will be erase and loss after you continue current action. This process cannot be undone.</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Exit</button>
										<button type="button" class="btn btn-danger" onclick="location.href='delete'">Yes, I understand the consequences, and I am sure!</button>
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

<br></br>

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