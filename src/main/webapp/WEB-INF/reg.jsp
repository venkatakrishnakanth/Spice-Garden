<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration Page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body{
	background-image: url("https://previews.123rf.com/images/somegirl/somegirl1508/somegirl150800011/43320245-Overhead-shot-of-ingredients-for-sushi-on-dark-background-Raw-salmon-steak-rice-cream-cheese-avocado-Stock-Photo.jpg");
/* 	background-image: url("http://volpuri.ru/phh/13/zharenaya_kurica_kartofel_morkov_garnir_bokal_vina_kolbaski_ovoschi_prazdnichnyy_stol_3072x2048.jpg");
 */	background-size:     cover;                      
    background-repeat:   repeat;
    background-position: center center; 

}

/* #c{
color:red;
}
h1{

color:red;
} */ 

/*
/* Created by Filipe Pina
 * Specific styles of signin, register, component
 */
/*
 * General styles
 */

body, html{
     height: 100%;
 	
 	font-family: 'Oxygen', sans-serif;
}

.main{
 	margin-top: 70px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}

hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
}

.main-login{
 	background-color: #fff;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}

.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 330px;
    padding: 40px 40px;

}

.login-button{
	margin-top: 5px;
}

.login-register{
	font-size: 11px;
	text-align: center;
}


  </style>
</head>
<body>
	<%-- User Details:
	<form:form action="user_reg" method="POST" modelAttribute="user">
		First Name: <form:input path="firstName"/>
		<form:errors path="firstName" cssStyle="color:red"></form:errors><br>
		Last Name: <form:input path="lastName"/>
		<form:errors path="lastName" cssStyle="color:red"></form:errors><br>
		Email: <form:input path="email"/>
		<form:errors path="email" cssStyle="color:red"></form:errors><br>
		Phone Number: <form:input path="phoneNumber"/>
		<form:errors path="phoneNumber" cssStyle="color:red"></form:errors><br>
		User Name: <form:input path="username"/>
		<form:errors path="username" cssStyle="color:red"></form:errors><br>
		Password: <form:password path="password"/>
		<form:errors path="password" cssStyle="color:red"></form:errors><br>
		Submit: <form:button>Submit</form:button>
	</form:form>
 --%>
 
 
<%-- <form:form action="user_reg" method="POST" modelAttribute="user">
<fieldset>

<!-- Form Name -->
<h1>Registration Form</h1>
<!-- Text input-->



 <td><label class="col-md-4 control-label" for="1">First Name</label><br></td>

<div class="form-group">
<div id="c">
    
  <div class="col-md-4">
	<form:input path="firstName" id="1" name="1" class="form-control input-md" required="required"/>  <span class="help-block"></span>  
  </div>
</div>
</div>

<br>

<!-- Text input-->

 <label class="col-md-4 control-label" for="2">Last Name</label><br>


<div class="form-group">
<div id="c">
  
  <div class="col-md-4">
<form:input path="lastName" id="2" name="2" class="form-control input-md" required="required"/>  <span class="help-block"></span>  
  </div>
  </div>
</div></td>
</tr>
<br>

<!-- Text input-->
<div class="form-group">
<div id="c">
  <label class="col-md-4 control-label" for="3">Email</label>  
  <div class="col-md-4">
  <form:input path="email" id="3" name="3" class="form-control input-md" required="required"/>
  <span class="help-block"></span>  
  </div>
  </div>
</div>
<br>


<div class="form-group">
<div id="c">
  <label class="col-md-4 control-label" for="4">Phone Number</label>  
  <div class="col-md-4">
<form:input path="phoneNumber" id="4" name="4" class="form-control input-md" required="required"/>  <span class="help-block"></span>  
  </div>
</div>
</div>
<br>

<div class="form-group">
<div id="c">
  <label class="col-md-4 control-label" for="5">Username: </label>
  <div class="col-md-4">
	<form:input path="username" id="5" name="5" class="form-control input-md" required="required"/>    <span class="help-block"></span>
  </div>
</div>
</div>
<br>

<!-- Password input-->
<div class="form-group">
<div id="c">
  <label class="col-md-4 control-label" for="6">Password</label>
  <div class="col-md-4">
	<form:password path="password" id="6" name="6" class="form-control input-md" required="required"/>    <span class="help-block"></span>
  </div>
</div>
</div>
<br>
<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="7"></label>
  <div class="col-md-1">
	Submit: <form:button>Submit</form:button>    
  </div>
  </div>

</fieldset>
</form:form> --%>


<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Registration Page</title>
	</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<span style=color:red;><h1 class="title">The Spice Garden</h1></span>
	               		<span style=color:green;> <h4><b>dear user please register here</b></h4></span>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form:form action="user-reg" modelAttribute="user" class="form-horizontal" method="post" >
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">First  Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input path="firstName"  class="form-control" name="name" id="name"  placeholder="Enter your First Name"/>
									<form:errors path="firstName" cssStyle="color:red"></form:errors>
									
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Last Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input path="lastName" class="form-control" placeholder="Enter your Last Name" />
									<form:errors path="lastName" cssStyle="color:red"></form:errors>
									
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<form:input path="email" class="form-control" name="username" id="username"  placeholder="Enter your Email"/>
									<form:errors path="email" cssStyle="color:red"></form:errors>
									
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<form:password path="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
									<form:errors path="password" cssStyle="color:red"></form:errors>
				
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Phone Number</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<form:input path="phoneNumber"  class="form-control" placeholder="Enter your Phone Number" />
									<form:errors path="phoneNumber" cssStyle="color:red"></form:errors>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">User Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input path="username" class="form-control" name="confirm" id="confirm"  placeholder="Enter your desired User Name"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Register</button>
						</div>
						
					</form:form>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
	</body>
</html>
 
</body>
</html>
