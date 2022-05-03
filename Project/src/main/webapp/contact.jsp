<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sky - Contact</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/contact.css" rel="stylesheet" type="text/css">
</head>
<body>

<!-- Include navigation bar -->
<jsp:include page="navigationbar.jsp"></jsp:include>

<div class="container features feature1" id="contact1">
    <div class="row">
        <div class="col-lg-5 col-md-5 col-sm-12">
            <h2>Contact Us</h2>
            
            <!-- Error message text -->
            <div id="error_message"></div>
            
            <!-- Contact form -->
            <form action="" method="post" id="myform" onsubmit = "return validate();">
            <div class="form-group">
            <label for="InputName">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" tabindex="1" required autofocus>
            </div>
            <div class="form-group">
            <label for="phone">Enter a phone number:</label>
            <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" pattern="[0-9]{11}" tabindex="2" required>
            <small class="form-text text-muted">Format: 60123456789</small>
            </div>
            <div class="form-group">
            <label for="InputEmail1">Email address</label>
            <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter your email" tabindex="3" required>
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
            <label for="InputMessage">Message</label>
            <textarea class="form-control" rows="5" id="message" name="message" placeholder="Enter your message" maxlength="300" tabindex="4"></textarea>
            <small id="msgHelp" class="form-text text-muted">Maximum 300 characters.</small>
            </div>
            <button name="submit" type="submit" data-submit="Sent" class="btn btn-primary btn-lg btn-block">Submit</button>
            </form>
        </div>
        
        <!-- Display map -->
        <div class="col-lg-4 col-md-4 col-sm-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.9440874000534!2d101.7047863147566!3d2.832425
            0979368104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cdc77dffa92899%3A0x25b5e828613a7db9!2sXiamen%20Univ
            ersity%20Malaysia!5e0!3m2!1sen!2smy!4v1621939784978!5m2!1sen!2smy" class="map"></iframe>
        </div>
    </div>
</div>

<footer class="page-footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-sm-12">
				<h5 class="text-uppercase font-weight-bold">Project members</h5>			
						<p>  Alvin Yeoh Yi Wei SWE1904865
						<br/>Ng Yoo Wee        SWE1904867
						<br/>Teo Yin Yin       SWE1904136</p>
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
<script src="javascript/contact.js"></script>
</body>
</html>