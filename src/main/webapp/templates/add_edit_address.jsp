<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="com.mars.exercise.model.Address"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Learn Spring Boot (MVC,JSP,Hibernate)</title>
	<link rel="icon" href="${contextPath}/images/favicon1.ico" type="image/ico">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	

	<style>

		.form-group {
		    margin-bottom: 15px;
		    width: 80% !important;
		}
		
		@media screen and (min-width: 600px) {
			.form-group{
				width:90% !important;
			}
		}
		
		i{
			font-size: 20px !important;
			color: #007bff;
		}
	</style>
	<%
		Address addressObj = (Address)request.getAttribute("ADDRESS_OBJ");
	%>
	
</head>
<body style="text-align: -webkit-center;">
	
	<div style="border:1px solid black;width: max-content;padding:20px;">
	<h2> <span id="textAddEddit">Add</span> Address Details</h2>
	<form:form name="addAddressForm" id="addAddressForm"  action="${contextPath}/mars/addAddress" method="post" modelAttribute="addressForm" >
	
		<div class="form-group"  >
	      <label >Person ID:</label>
	      <input type="text" class="form-control" name="id" id="id"  value="${PERSON_ID}"  required readonly/>
	    </div>
	
		<div class="form-group" style="display:none;" id="id_div">
	      <label >Address ID:</label>
	      <input type="text" class="form-control" name="address_id" id="address_id"   required readonly/>
	    </div>	    	
	    
		<div class="form-group">
	      <label >Street:</label>
	      <input type="text" class="form-control" name="street" id="street" required />
	    </div>
	    
	    <div class="form-group">
	      <label >City:</label>
	      <input type="text" class="form-control" name="city" id="city" required />
	    </div>
	    
	    <div class="form-group">
	      <label >State:</label>
	      <input type="text" class="form-control" name="state" id="state" required />
	    </div>
	    
	    <div class="form-group">
	      <label >Postal Code:</label>
	      <input type="number" class="form-control" name="postalCode" id="postalCode" required  maxlength="6"/>
	    </div>
	    
	    <div class="form-group">
	      <input type="submit"  name="submitBtn" id="submitBtn" value="Submit" />
	    </div>
	</form:form>
	
		<div class="form-group">
			<i class="fa fa-home" >
	    	    <a href="/mars/index" >Go To Home</a>
	     	</i>	     	
	    </div>
	</div>
	    <%if(addressObj != null){ %>
	    <script>
	    		$("#id").val("<%=addressObj.getId()%>");
	    		$("#address_id").val("<%=addressObj.getAddress_id()%>");				
				$("#id_div").css("display", "block");
				$("#street").val("<%=addressObj.getStreet()%>");
				$("#city").val("<%=addressObj.getCity()%>");
				$("#state").val("<%=addressObj.getState()%>");
				$("#postalCode").val("<%=addressObj.getPostalCode()%>");
				$("#submitBtn").val("Edit");
				$("#textAddEddit").html("Edit");
				$("#addAddressForm").attr("action", "${contextPath}/mars/editAddress");
	
	    </script>
	    <%}%>
</body>
</html>