<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sky - About Us</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/about.css" rel="stylesheet" type="text/css">
</head>
<body>

<!-- Include navigation bar -->
<jsp:include page="navigationbar.jsp"></jsp:include>

<div class="aboutUs aboutBg">
	<div class="container feature1">
		<div id="carouselIndicators" class="carousel carousel-dark slide" data-bs-ride="carousel">
  			<div class="carousel-indicators">
  			<!-- initialize first slides as active -->
    			<button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="0" class="active"></button>
    			<button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="1"></button>
    			<button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="2"></button>
 			</div>
 			<div class="carousel-inner">
 			 	<!-- initialize first slides as active -->
   				<div class="carousel-item active">
   					<div class="row">
   						<div class="col">
   							<img src="resources/images/alvin.png" class="img-thumbnail">
   						</div>
   						<div class="col">
   						<br/><h1>Alvin Yeoh Yi Wei</h1>
   						<h2>SWE1904865</h2>
   						</div> 
   					</div>
    			</div>
    			<div class="carousel-item">
					<div class="row">
   						<div class="col">
   							<img src="resources/images/yin.png" class="img-thumbnail">
   						</div>
   						<div class="col">
   						<br/><h1>Teo Yin Yin</h1>
   						<h2>SWE1904136</h2>
   						</div> 
   					</div>
    			</div>
    			<div class="carousel-item">
					<div class="row">
   						<div class="col">
   							<img src="resources/images/yoowee.jpg" class="img-thumbnail">
   						</div>
   						<div class="col">
   						<br/><h1>Ng Yoo Wee</h1>
   						<h2>SWE1904867</h2>
   						</div> 
   					</div>
    			</div>
  			</div>
  				<button class="carousel-control-prev" type="button" data-bs-target="#carouselIndicators" data-bs-slide="prev">
    				<span class="carousel-control-prev-icon"></span>
   					<span class="visually-hidden">Previous</span>
  				</button>
  				<button class="carousel-control-next" type="button" data-bs-target="#carouselIndicators" data-bs-slide="next">
    				<span class="carousel-control-next-icon"></span>
    				<span class="visually-hidden">Next</span>
  				</button>
		</div>
	</div>
</div>

<div class="container-fluid skyBg">
<h3 style="text-align:center;">Timeline</h3>
<div class="timeline">
	<div class="timelinebox left">
    <div class="content">
      <h2>2021</h2>
      <p>Skytrax Covid-19 Airline Awards
      Currently has been served over 20 million guests! </p>
    </div>
  </div>
  <div class="timelinebox right">
    <div class="content">
      <h2>2020</h2>
      <p>Rated as 5 stars global airline 2020 by apex official airline rating.
      <br/>World Travel Awards World's Leading High-Class Airline Year 2020</p>
    </div>
  </div>
  <div class="timelinebox left">
    <div class="content">
      <h2>2019</h2>
      <p>Rated as 5 stars airline by Skytrax.
      Winner of "Skytrax World Airline Awards 2019" </p>
    </div>
  </div>
  <div class="timelinebox right">
    <div class="content">
      <h2>2018</h2>
      <p>Reached the first 10 million Guests milestone at October. </p>
    </div>
  </div>
  <div class="timelinebox left">
    <div class="content">
      <h2>2017</h2>
      <p>Awarded Skytrax World's Best New Airline Year 2017 </p>
    </div>
  </div>
  <div class="timelinebox right">
    <div class="content">
      <h2>2016</h2>
      <p>Reached service to more than 3 million guests within 18 months 
      Ranked Number 1 as "New Airline Company of the Year" by &lt;The Times&gt; </p>
    </div>
  </div>
  <div class="timelinebox left">
    <div class="content">
      <h2>2015</h2>
      <p>Founded in 30 June. </p>
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
</body>
</html>