<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="com.mars.exercise.model.Address"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Add Edit Address Details</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="js/bootstrap.min.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	

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
	</style>
	<%
		Address addressObj = (Address)request.getAttribute("ADDRESS_OBJ");
	%>
	
</head>
<body>
	<h2> Add Edit Address</h2>
	<form:form name="addAddressForm" id="addAddressForm"  action="addAddress" method="post" modelAttribute="addressForm" >
	
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
	     	<a href="http://localhost:8081/mars/index" >Go To Home</a>
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
				$("#addAddressForm").attr("action", "/mars/editAddress");
	
	    </script>
	    <%}%>
</body>
</html>