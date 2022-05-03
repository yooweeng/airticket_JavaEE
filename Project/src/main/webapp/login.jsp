<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/login.css" rel="stylesheet" type="text/css">
</head>
<body>

<jsp:include page="navigationbar.jsp"></jsp:include>

<div class="form-box">
                <div class='button-box'>
                    <div id='btn'></div>
                    <button type='button'onclick='login()'class='toggle-btn'>Log In</button>
                    <button type='button'onclick='register()'class='toggle-btn'>Register</button>
                </div>
                <div id="error_message"></div>
                <form action="validateUser" id='login' class='input-group-login' method="post">
                    <input type='text' name="email" class='input-field'placeholder='Email Id' required >
                    <input type='password' name="password" class='input-field'placeholder='Enter Password' required>
                    <input type='checkbox'class='check-box' required><span>I'm not a bot</span>
                    <button type='submit'class='submit-btn'>Log in</button>
                </form>
                <form action="createUser" id='register' class='input-group-register' method="post"  onsubmit = "return validate();">
                    <input type='text' id="first_name" name="first_name" class='input-field'placeholder='First Name' required>
                    <input type='text' id="last_name" name="last_name" class='input-field'placeholder='Last Name ' required>
                    <input type='email' id="email" name="email" class='input-field'placeholder='Email Id' required>
                    <input type='password' id="password1" class='input-field'placeholder='Enter Password' required>
                    <input type='password' id="password2" name="password" class='input-field'placeholder='Confirm Password'  required>
                    <input type='checkbox'class='check-box' required><span>I agree to the terms and                                                   conditions</span>
                    <button type='submit'class='submit-btn'>Register</button>
                </form>
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

<script src="javascript/login.js"></script>
<script src="BSS/js/bootstrap.min.js"></script>
</body>
</html>