<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	margin-top: 20px;
}

.panel-title {
	display: inline;
	font-weight: bold;
}

.checkbox.pull-right {
	margin: 0;
}

.pl-ziro {
	padding-left: 0px;
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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
	<span style="color: red"><h2>Secured Payment</h2></span> .
	<!-- jumbotron-flat {
  background-color: solid #4DB8FFF;
  height: 100%;
  border: 1px solid #4DB8FF;
  background: white;
  width: 100%;
text-align: center;
overflow: auto;
}

.paymentAmt {
    font-size: 80px; 
}

.centered {
    text-align: center;
}

.title {
 padding-top: 15px;   
}
body {
	
	background-image: url("https://previews.123rf.com/images/somegirl/somegirl1508/somegirl150800011/43320245-Overhead-shot-of-ingredients-for-sushi-on-dark-background-Raw-salmon-steak-rice-cream-cheese-avocado-Stock-Photo.jpg");
/* 	background-image: url("http://volpuri.ru/phh/13/zharenaya_kurica_kartofel_morkov_garnir_bokal_vina_kolbaski_ovoschi_prazdnichnyy_stol_3072x2048.jpg");
 */	background-size:     cover;                      
    background-repeat:   no-repeat;
    background-position: center center;
}



 <span style="color:red"><h2>Secured Payment</h2></span>


<form action="pay" method="post">
            <br>
          	
            </div>
              <span style="color:red">  <label class='control-label'>Email</label></span>
                <input class='form-control' size='4' type='text' name="email">
              </div>
                    
            </div>
            <div class='form-row'>
              <div class='form-group card required'>
                 <span style="color:red">  <label class='control-label'>Card Name</label></span>
                <input autocomplete='off' class='form-control card-number' size='20' type='text' name="krd">
              </div>
            </div>
             <div class='form-row'>
              <div class='form-group card required'>
                <span style="color:red"> <label class='control-label'>Card Number</label></span>
                <input autocomplete='off' class='form-control' size='20' type='text' name="krdnum">
              </div>
            </div>
            <div class='form-row'>
              <div class='form-group cvc required'>
                <span style="color:red"> <label class='control-label'>CVV</label></span>
                <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text' name="kv">
              </div>
              
               <div class='form-row'>
              <div class='form-group cvc required'>
                <span style="color:red"> <label class='control-label'>Amount</label></span>
                <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text' name="amt">
              </div>
              
             
           
            <div class='form-row'>
              <div class='form-group'>
                         <label class='control-label'></label>
                      
               <button class='form-control btn btn-primary' type='submit' name="sub"> Submit</button>
          
               


</form> -->

	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Payment Details</h3>
						<div class="checkbox pull-right">
							<label> <input type="checkbox" /> Remember
							</label>
						</div>
					</div>
					<div class="panel-body">
						<form action="pay" role="form">
							<div class="form-group">
								<label for="cardNumber"> CARD NUMBER</label>
								<div class="input-group">
									<input type="text" class="form-control" id="cardNumber"
										placeholder="Valid Card Number" required autofocus /> <span
										class="input-group-addon"><span
										class="glyphicon glyphicon-lock"></span></span>
								</div>
							</div>
							<!-- Name -->
							<div class="control-group">
								<label class="control-label" for="username">CARD
									HOLDER'S NAME</label>
								<div class="controls">
									<input type="text" class="form-control" id="cardNumber"
										placeholder="" required />
								</div>
							</div>
							<div class="row">
								<div class="col-xs-7 col-md-7">
									<div class="form-group">
										<label for="expityMonth"> EXPIRY DATE</label>
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityMonth"
												placeholder="MM" required />
										</div>
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityYear"
												placeholder="YY" required />
										</div>
									</div>
								</div>
								<div class="col-xs-5 col-md-5 pull-right">
									<div class="form-group">
										<label for="cvCode"> CVV CODE</label> <input type="password"
											class="form-control" id="cvCode" placeholder="CVV" required />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><span
							style="textalign: center"></span> Invoice Total</a></li>
				</ul>
				<br /> <a href="#" class="btn btn-success btn-lg btn-block"
					role="button">Pay</a>
			</div>
		</div>
	</div>


</body>
</html>