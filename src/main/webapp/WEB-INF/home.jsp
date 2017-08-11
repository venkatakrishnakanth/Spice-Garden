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
<title>Customer Registration Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
*{
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
    box-sizing: border-box;
}
*:before,
*:after{
	box-sizing: border-box;
}
html,
body{
	min-height: 100%;
}
body{
	background-image: url("https://previews.123rf.com/images/somegirl/somegirl1508/somegirl150800011/43320245-Overhead-shot-of-ingredients-for-sushi-on-dark-background-Raw-salmon-steak-rice-cream-cheese-avocado-Stock-Photo.jpg");
/* 	background-image: url("http://volpuri.ru/phh/13/zharenaya_kurica_kartofel_morkov_garnir_bokal_vina_kolbaski_ovoschi_prazdnichnyy_stol_3072x2048.jpg");
 */	background-size:     cover;                      
    background-repeat:   no-repeat;
    background-position: center center; 

}
h1{
	display: table;
	margin: 5% auto 0;
	text-transform: uppercase;
	font-family: 'Anaheim', sans-serif;
	font-size: 4em;
	font-weight: 400;
	text-shadow: 0 1px green, 0 2px red;
	color:white;
}
.container{
	margin: 4% auto;
	width: 210px;
	height: 140px;
	position: relative;
	perspective: 1000px;
}
#carousel{
	width: 100%;
	height: 100%;
	position: absolute;
	transform-style: preserve-3d;
	animation: rotation 20s infinite linear;
}
#carousel:hover{
	animation-play-state: paused;
}
#carousel figure{
	display: block;
	position: absolute;
	width: 90%;
	height: 50%px;
	left: 10px;
	top: 10px;
	background: black;
	overflow: hidden;
	border: solid 5px black;
}
#carousel figure:nth-child(1){transform: rotateY(0deg) translateZ(288px);}
#carousel figure:nth-child(2) { transform: rotateY(40deg) translateZ(288px);}
#carousel figure:nth-child(3) { transform: rotateY(80deg) translateZ(288px);}
#carousel figure:nth-child(4) { transform: rotateY(120deg) translateZ(288px);}
#carousel figure:nth-child(5) { transform: rotateY(160deg) translateZ(288px);}
#carousel figure:nth-child(6) { transform: rotateY(200deg) translateZ(288px);}
#carousel figure:nth-child(7) { transform: rotateY(240deg) translateZ(288px);}
#carousel figure:nth-child(8) { transform: rotateY(280deg) translateZ(288px);}
#carousel figure:nth-child(9) { transform: rotateY(320deg) translateZ(288px);}
#carousel figure:nth-child(10) { transform: rotateY(360deg) translateZ(288px);}

img{
	-webkit-filter: grayscale(0);
	cursor: pointer;
	transition: all .5s ease;
}
img:hover{
	-webkit-filter: grayscale(1);
  transform: scale(1.2,1.2);
}

#c_img {
  
 display: block;
  max-width:230px;
  max-height:140px;
  
  /* width: auto;
  height: auto; */
}

@keyframes rotation{
	from{
		transform: rotateY(0deg);
	}
	to{
		transform: rotateY(360deg);
	}
}
</style>
</head>
<body>

	
	
	
	<h1>The Spice Garden</h1>
  <div class="container">
    	<div id="carousel">
			<figure><img src="http://www.archanaskitchen.com/images/archanaskitchen/1-Author/happytrioexplains-gmail.com/Tandoori_Paneer_Samosa.jpg" id="c_img" alt=""></figure>
			<figure><img src="http://files.hungryforever.com/wp-content/uploads/2016/11/25174124/chettinad-chicken-biryani1.jpg" id="c_img" alt=""></figure>
			<figure><img src="https://clubmahindraindia.files.wordpress.com/2016/08/blog1.png?w=658&h=416" id="c_img" alt=""></figure>			
			<figure><img src="http://www.budgetbytes.com/wp-content/uploads/2016/05/Lime-Shrimp-Dragon-Noodles-stix.jpg" id="c_img" alt=""></figure>
			<figure><img src="http://www.coconutinsider.com/cebu/restaurant/indian_curry_house/images/01indian_cuisine.jpg" id="c_img" alt=""></figure>			
			<figure><img src=https://s-media-cache-ak0.pinimg.com/originals/e2/bb/56/e2bb563600be307e9e496f5129885f92.jpg id="c_img" alt=""></figure>			
			<figure><img src="https://www.pamelafoods.com/wp-content/uploads/2017/01/healthiest-desserts-1425507401.jpg" id="c_img" alt=""></figure>			
			<figure><img src="http://www.zarata.info/wp-content/uploads/2015/09/pizza_resized.jpg" id="c_img" alt=""></figure>			
			<figure><img src="https://i0.wp.com/files.hungryforever.com/wp-content/uploads/2015/12/24174831/27FR_FOOD6_PONGAL_640918g.jpg?w=800&quality=80&strip=all" id="c_img" alt=""></figure>			
						
			
		</div>
	</div>

</body>
</html>