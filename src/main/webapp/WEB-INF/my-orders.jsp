<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Previous Orders</title>
</head>
<body>

Previous orders are<br>
<hr>



      <table style="width: 30%">
      
      
     	 <c:forEach items="${prevOrders}" var="current">
      		<tr>
      
        		<%-- <td><c:out value="${current.username}" /></td> --%>
        		<td><c:out value="${current.date}" /></td>
        		<td><c:out value="${current.item}" /></td>
          	
        	 </tr>
      	</c:forEach>
    
      <br>
      </table>
      <hr>
      
      
      <form action="home_page" method="post">
      	<input type="submit" value="<< Back to HOME" name="PAY">
      </form>
    

</body>
</html>