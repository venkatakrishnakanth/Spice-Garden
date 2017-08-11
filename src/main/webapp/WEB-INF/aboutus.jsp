<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
  <%@include file="footer.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" rel="stylesheet" media="all">
	
<style>
*{
  color: #b8b8b8 !important;
}
/* HEADER */

.slide-text {
        padding: 10px 30px;
    }
    .slide-text h1 {
        font-size: 20px;
        line-height: 25px;
        margin-bottom: 5px;
    }
    .slide-text > p {
        font-size: 12px;
        line-height: 18px;
        margin-bottom: 10px;
    }
    
    .slide_style_left {
    text-align: left !important;
}
.slide_style_right {
    text-align: right !important;
}
.slide_style_center {
    text-align: center !important;
}
    
 
#nav-right{
  float:right;
}
.nav>li>a:focus, .nav>li>a:hover {
    text-decoration: none;
    background-color: #fff;
    color: #7079c6 !important;
}
.nav-pills>li.active>a{
    color: #7178c6 !important;
    font-weight: bold;
    background-color: #fff;
}
.nav-pills>li.active>a:hover{
  background-color: #fff;
}
.navbar-nav>li>a {
    padding-top: 20px;
}
.navbar-toggle {
  border: 2px solid #7178c6;
}
.icon-bar {
  color: #7178c6;
  border-color: #7178c6;
  background-color: #7178c6;
}
#nav-right button{
      font-size: 10px;
      margin-top: 15px;
      margin-bottom: 15px;
      margin-left: 10px;
      background-color: #fff;
      border-radius: 4px;
      border: 1px solid;
      padding: 5px 9px;
}
#nav-right{
  margin-right: 15px;
}
#navtop{
  font-size: 10px !important;
}
.fa {
    padding-right: 10px;
    font-size: 14px;
    color: #9a9a9a !important;
}
#logo a img{
    margin-top: -25px;
    margin-bottom: 30px;
}
#main-navigation{
    font-size: 12px !important;
    font-weight: bold;
}
#main-navigation .nav>li>a{
  padding-left:0;
  padding-right:0;
}
#main-navigation .container{
  max-width: 720px;
}

/* MEDIA QUERIES FOR TOP NAV*/
@media screen and (max-width:768px){
  #nav-left{
    text-align: center;
  }
  #nav-left:after{
    display: block;
    content: "";
    clear: both;
  }
  #nav-left li{
    float:left;
    width: 31%;
    padding:1%;
  }
  #nav-right{
    display: block;
    content: "";
    clear: both;
  }
  #nav-right{
    text-align: center;
    width:100%;
  }
  #nav-right li {
    float: left;
    width:23%;
    padding: 1%;
  }
  #logo a img {
    margin-top: 0;
    margin-bottom: 0;
}
#main-navigation ul li{
  border-top: 1px solid #7178c6;
  width: 100%;
}
}
/* MEDIA QUERIES FOR TOP NAV END*/
/* HEADER END*/


/* SLIDER */
#Container_Carousel .rows .col-xs-12{
  margin:0;
  padding:0;
}

#Container_Carousel{
  margin:0;
  padding:0;
  width:100%;
  max-height: 850px;
}

.item img{
  width:100%;
  max-height: 850px;
}

.carousel,.item,.active{
  height:100%;
}

.carousel-inner{
  height:100%;
}

.carousel-control.left, .carousel-control.right {
    background-image:none;
}
.glyphicon-circle-arrow-left {
  position: absolute;
  top: 50%;
  font-size: 50px;
  opacity: 0.5;
  left: 50px;
}
.glyphicon-circle-arrow-right {
  position: absolute;
  top: 50%;
  font-size: 50px;
  opacity: 0.5;
  right: 50px;
}
/* SLIDER END*/

</style>
</head>
<body>  
      <!--header navbar LOGO -->
      
      <div class ="text-center" color="black"> <h1>Spice Garden</h1></div>
        <!-- <div class="text-left" id="logo">
              <a href="#" ><img src="http://img9.dreamies.de/img/75/b/4yqi85cu34x.gif" alt="logo" /></a>
        </div>
         -->
      <!-- TOOGLE MAIN NAVIGATION -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navigation" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>

      <!--  MAIN NAVIGATION -->
       
<!--header navbar END -->

<!-- SLIDER START-->
<div id="Container_Carousel">
					<div class="rows">

						   <div class="col-lg-12  col-md-12 col-sm-12 col-xs-12" >

								  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
										  <!-- Indicators -->
										  <ol class="carousel-indicators">
											<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
											<li data-target="#carousel-example-generic" data-slide-to="1"></li>
											<li data-target="#carousel-example-generic" data-slide-to="2"></li>
										  </ol>

										  <!-- Wrapper for slides -->
										  <div class="carousel-inner">
											<div class="item active">
											  <img src="https://wallpaperscraft.com/image/restaurant_table_interior_modern_style_39288_1920x1080.jpg" alt="First Slide">
											  				<div class="container">
											                        <div class="row">
											                            <!-- Slide Text Layer -->
											                            <div class="slide-text slide_style_left">
											                                <h1 data-animation="animated zoomInRight">The Spicy Gardens</h1>
											                                <p data-animation="animated fadeInLeft">Now reaching you at Florida and four other locations</p>
											                                
											                            </div>
											                        </div>
											                    </div>
											</div>

											<div class="item">
											 <img src="https://xiakd1402.files.wordpress.com/2015/01/stock-footage-happy-chef-making-ok-sign-to-camera-in-commercial-kitchen.jpg" alt="Second Slide">
											</div>

												<div class="item">
											 <img src="http://www.molevol.org/wp-content/uploads/2015/07/Buffet.jpg" alt="Third Slide">
											</div>

										  </div>

										  <!-- Controls -->
										  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
											<span class="glyphicon glyphicon-circle-arrow-left"></span>
										  </a>
										  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
											<span class="glyphicon glyphicon-circle-arrow-right"></span>
										  </a>
								</div>

						   </div>
					</div>
		</div>
    <div class="clear"></div>

<!-- SLIDER END-->
<script src="https://use.fontawesome.com/f12e4a6b3c.js"></script>

	
	
</body>
</html>