<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/index.js"></script>

<%@include file="header.jsp"%>
<%-- <%@include file="footer.jsp" %> --%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<style>
.cen {
	text-align: right;
	margin-left: 250px;
	
	
	
}

.pad {
	/* margin-bottom: 5px; */
	/* margin-top: 5px; */
	/*margin-left: 5px;*/
	margin-bottom: 15px;
}

.button {
	display: inline-block;
	background: #6C3483;
	color: #fff;
	text-transform: uppercase;
	padding: 10px 10px;
	border-radius: 5px;
	box-shadow: 0px 17px 10px -10px rgba(0, 0, 0, 0.4);
	cursor: pointer;
	-webkit-transition: all ease-in-out 300ms;
	transition: all ease-in-out 300ms;
}

.button:hover {
	box-shadow: 0px 37px 20px -20px rgba(0, 0, 0, 0.2);
	-webkit-transform: translate(0px, -10px) scale(1.2);
	transform: translate(0px, -10px) scale(1.2);
}

.check {
	opacity: 0.5;
	color: #996;
}

.itemss {
	margin-top: 100px;
}

body {
	background-image:
		url("https://previews.123rf.com/images/somegirl/somegirl1508/somegirl150800011/43320245-Overhead-shot-of-ingredients-for-sushi-on-dark-background-Raw-salmon-steak-rice-cream-cheese-avocado-Stock-Photo.jpg");
	/* 	background-image: url("http://volpuri.ru/phh/13/zharenaya_kurica_kartofel_morkov_garnir_bokal_vina_kolbaski_ovoschi_prazdnichnyy_stol_3072x2048.jpg");
 */
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
}
</style>
</head>
<body>

	<div class="container">
	<form action="bill" method="POST">
		<div class="pad">
		<div class="row">
			
				<div class="form-group">

					<div class="col-md-4">
						<label class="btn btn-primary">
							 <figure> <img
							src="http://chichilicious.com/wp-content/uploads/Thai-red-curry-recipe.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
							<input type="checkbox" name="Thai" id="item4" value="Thai"
							autocomplete="off">
							<figcaption> Thai(M) </figcaption>
						
							</figure>
						</label>
					</div>

					<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="https://i.ytimg.com/vi/e4IIp1c8Ipk/maxresdefault.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="Parmesan" id="item4" value="parmesan"
							autocomplete="off">
						<figcaption> Parmesan Garlic(M) </figcaption>
					</figure>
					</label>
					</div>

					<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="https://images.food52.com/r2wsCDTJdoAB97kLIziNKxAVlic=/753x502/d815e816-4664-472e-990b-d880be41499f--chicken-biryani-recipe.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="chicken_biriyani" id="item4"
							value="chicken biriyani" autocomplete="off">
						<figcaption> Chicken Biryani </figcaption>
					</figure>
					</label>
				</div>


				</div>
		</div>
		</div>
<div class="pad">
		<div class="row">
			
				<div class="form-group">

					<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://www.ndtv.com/cooks/images/mutton-biryani-new.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="mutton_biriyani" id="item4"
							value="mutton biriyani" autocomplete="off">
						<figcaption> Mutton Biryani </figcaption>
					</figure>
					</label>
				</div>

				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://1.bp.blogspot.com/_0CWdGn9Gu5c/TK9OPCFv_-I/AAAAAAAAF_A/EbPumK4nnEw/s1600/veg+biryani+super.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="veg_biriyani" id="itemss"
							value="veg biriyani" autocomplete="off">
						<figcaption> Veg Biryani </figcaption>
					</figure>
					</label>
				</div>

				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://www.kitchentreasures.in/wp-content/uploads/2015/09/Idly.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="idli" id="item4" value="idli"
							autocomplete="off">
						<figcaption> Idli </figcaption>
					</figure>
					</label>
				</div>

				</div>
		</div>
</div>
<div class="pad">
		<div class="row">
			
				<div class="form-group">

					<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="https://img.grouponcdn.com/deal/fndYqd3FYJpV1ip78C86/tR-1762x1057/v1/c700x420.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="dosa" id="item4" value="dosa"
							autocomplete="off">
						<figcaption> Dosa </figcaption>
					</figure>
					</label>
				</div>



				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://cookdiary.net/wp-content/uploads/images/Vada.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="vada" id="item4" value="vada"
							autocomplete="off">
						<figcaption> Vada </figcaption>
					</figure>
					</label>
				</div>

				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://irisstock.com/admin/products/pt/Ven-pongal-with-coconut-chutney-and-sambar_23451.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="pongal" id="item4" value="pongal"
							autocomplete="off">
						<figcaption> Pongal </figcaption>
					</figure>
					</label>
				</div>

				</div>
				</div>
</div>

<div class="pad">
				<div class="row">
			
				<div class="form-group">

					<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://www.ndtv.com/cooks/images/Radha%20Ballavi%20%28Stuffed%20Puri%29.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="puri" id="item4" value="puri"
							autocomplete="off">
						<figcaption> Puri </figcaption>
					</figure>
					</label>
				</div>

				<div class="col-md-4">
					<label class="btn btn-primary">  <img
							src="http://www.givoli.com/images/recipes640/AlooChappathi.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="chapathi" id="item4" value="chapathi"
							autocomplete="off">
						<figcaption> Chapathi </figcaption>
					
					</label>
				</div>

				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="https://static.menutabapp.com/img/original/2014/09/04/079c05f4dbb3f3e28d3c4e05f16acc06.jpeg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="upma" id="item4" value="upma"
							autocomplete="off">
						<figcaption> Upma</figcaption>
					</figure>
					</label>
				</div>

				</div>
				</div>
</div>
<div class="pad">
				<div class="row">
			
				<div class="form-group">

					<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcRLMire8jje5lP3TOqTQdvyqS8Cwrv4VSQ_yIjAPRfmC2Yqu6" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="veg_noodles" id="item4"
							value="veg noodles" autocomplete="off">
						<figcaption>Veggie Noodles </figcaption>
					</figure>
					</label>
				</div>

				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://www.garnishandglaze.com/wp-content/uploads/2014/11/Thai-Peanut-Noodles-5.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="chicken_noodles" id="item4"
							value="chicken noodles" autocomplete="off">
						<figcaption>Chicken Noodles </figcaption>
					</figure>
					</label>
				</div>

				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://www.funnyordie.com/thumbnails/5c1bf0686b/fullsize" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="coke" id="item4" value="coke"
							autocomplete="off">
						<figcaption>Coca Cola </figcaption>
					</figure>
					</label>
				</div>


				</div>
				</div>

</div>
<div class="pad">
				<div class="row">
			
				<div class="form-group">

					<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://onlineneptun.az/wp-content/uploads/2016/04/053263.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="pepsi" id="item4" value="pepsi"
							autocomplete="off">
						<figcaption>Pepsi </figcaption>
					</figure>
					</label>
				</div>

				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://lekafood.com/image/catalog/COOL%20DRINKS/Sprite.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="sprite" id="item4" value="sprite"
							autocomplete="off">
						<figcaption>Sprite </figcaption>
					</figure>
					</label>
				</div>


				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="https://www.americansoda.co.uk/media/catalog/product/cache/1/image/448x448/91eb5f3d97a70d4a3762da495c732fb0/m/o/mountaindeweu_500_1.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="mountain_dew" id="item4"
							value="mountain_dew" autocomplete="off">
						<figcaption>Moutain Dew </figcaption>
					</figure>
					</label>
				</div>
				</div>
				</div>


</div>

<div class="pad">
				<div class="row">
			
				<div class="form-group">

					<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://www.athenaspizzaamherst.com/wp-content/uploads/2013/05/front-1-1008x500.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="pizza" id="item4" value="pizza"
							autocomplete="off">
						<figcaption>Pizza </figcaption>
					</figure>
					</label>
					</div>


				<div class="col-md-4">
					<label class="btn btn-primary"> <figure> <img
							src="http://cdn.potatopro.com/cdn/farfuture/hU5XuQNKIBXiWjVsMhK1PJKO_MyXmc_YVv8OcPHYJyg/mtime:1470929551/sites/default/files/pictures/french-fries-1200.jpg" alt="imgs"
							style="width: 180px; height: 128px;"
							class="img-thumbnail img-check">
						<input type="checkbox" name="fries" id="item4" value="fries"
							autocomplete="off">
						<figcaption>French Fries </figcaption>
					</figure>
					</label>
				</div>
				
				
				
				
				</div>
				
				
				</div>
				
				
				</div>
				<div class ="cen">
					<button class="button" type="submit" value="PAYMENT" name="PAY">CONFIRM
						ORDER</button>
				</div>

				

	</form>
	</div>
	

</body>
</html>