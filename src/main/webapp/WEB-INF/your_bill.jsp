<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bill</title>
<style>
body{
	background-image: url("https://previews.123rf.com/images/somegirl/somegirl1508/somegirl150800011/43320245-Overhead-shot-of-ingredients-for-sushi-on-dark-background-Raw-salmon-steak-rice-cream-cheese-avocado-Stock-Photo.jpg");
/* 	background-image: url("http://volpuri.ru/phh/13/zharenaya_kurica_kartofel_morkov_garnir_bokal_vina_kolbaski_ovoschi_prazdnichnyy_stol_3072x2048.jpg");
 */	background-size:     cover;                      
    background-repeat:   no-repeat;
    background-position: center center; 

}

.button {
  
  display: inline-block;
  background: #4285f4;
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
.cen{

text-align:right;

}

</style>
</head>
<body><span style="color:red"><strong>

<!-- LIST OF ITEMS IN THE CART:</strong></span><br>
<hr> -->

<%-- <span style="color:red"><strong>
      
      <c:forEach items="${list}" var="current">
        
         <c:out value="${current.item}" />------<c:out value="${current.price}" />  <br>
        
      </c:forEach> </strong></span>
      
   <span style="color:red"><strong>   Total Bill---${bill}  </strong></span> <br>
       --%>
      
      <form action="payment" method="post">
      
      <div class="container">
<div class="row">
	 <br>
            <div class="col-md-16">
                <div class="col-md-4 col-sm-6 col-xs-12 col-md-push-8 col-sm-push-8">
                    <!--REVIEW ORDER-->
                    <div class="panel panel-primary">
                        <div class="panel-heading text-center">
                            <h4>Review Order</h4>
                        </div>
                        <div class="panel-body">
                                <div class="col-md-12">
                                    <strong>Subtotal:<br></strong>
                                    <div class="pull-right"><span>$ ${bill}.00</span><span></span></div>
                                </div>
                                <div class="col-md-12">
                                    <strong>GST Tax</strong>
                                    <div class="pull-right"><span>$.5.00</span></div>
                                </div>
                                
                                <div class="col-md-12">
                                    <strong>Special Customer Discount</strong>
                                    <div class="pull-right"><span>$.5.00</span></div>
                                </div>
                                
                                <div class="col-md-12">
                                    <strong>Order Total</strong>
                                    <div class="pull-right"><span>  Total Bill---$.${bill}.00<br></span></div>
                                    <hr>
                                </div><br>
                                <div class="cen">
                                <button class="button" type="submit" value="PAYMENT" name="PAY">PAY NOW</button>
                                </div>
                                <!-- 
                                <button type="button" class="btn btn-primary btn-lg btn-block">Checkout</button> -->
                                
                        </div>
                        
                    </div>
                    <!--REVIEW ORDER END-->
                </div>
                 <div class="col-md-8 col-sm-6 col-xs-12 col-md-pull-4 col-sm-pull-8">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-primary" align="left">
                        <div class="panel-heading text-center"><h4>Current Cart</h4></div>
                        <div class="panel-body">
                           <table class="table borderless">
    						<thead>
                                <tr>
        							<td><strong>Your Cart: # item</strong></td>
        							<td></td>
        							<td></td>
        							<td> <c:out value="${current.item}" /></td>
        							<td></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<c:forEach items="${list}" var="current">
    							<tr>
    								<td class="col-md-3">
    								    <div class="media">
    								         <a class="thumbnail pull-left" href="http://www.helenprinting.com/uploadfile/products/201102150707.jpg"> <img class="media-object" 
    								         src="http://www.helenprinting.com/uploadfile/products/201102150707.jpg" style="width: 72px; height: 72px;"> </a> 
    								         <div class="media-body">
    								             <h5 class="media-heading"> <c:out value="${current.item}" /></h5>
    								             <h5 class="media-heading"> <c:out value="${current.price}" /> $</h5>
    								         </div>
    								    </div>
    								</td>
    								<td class="text-center"></td>
    								<td class="text-center"></td>
    								<td class="text-right"></td>
    								<td class="text-right"><button type="button" class="btn btn-danger">Remove</button></td>
    							</tr>
    							</c:forEach>
                                
    						</tbody>
    					</table> 
                        </div>
                    </div>
                    <!--SHIPPING METHOD END-->
                </div>
                </div>
                

    
      	
      </form>
      
      
               

</body>
</html>