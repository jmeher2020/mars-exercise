<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="com.mars.exercise.model.Person"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Add Person Details</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="js/bootstrap.min.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	

	<style>

		.form-group {
		    margin-bottom: 15px;
		    width: 70% !important;
		}
		
		@media screen and (min-width: 600px) {
			.form-group{
				width:90% !important;
			}
		}
	</style>
	<%
		Person personObj = (Person)request.getAttribute("PERSON_OBJ");
	%>
	
</head>
<body>
	<form:form name="addpersonForm" id="addpersonForm"  action="addperson" method="post" modelAttribute="personForm" >
	
		<div class="form-group" style="display:none;" id="id_div">
	      <label >ID:</label>
	      <input type="text" class="form-control" name="id" id="id"   required readonly/>
	    </div>
	    
		<div class="form-group">
	      <label >First Name:</label>
	      <input type="text" class="form-control" name="firstName" id="firstName" required />
	    </div>
	    <div class="form-group">
	      <label >Last Name:</label>
	      <input type="text" class="form-control" name="lastName" id="lastName" required />
	    </div>
	    <div class="form-group">
	      <input type="submit"  name="submitBtn" id="submitBtn" value="Submit" required />
	    </div>
	</form:form>
	
	<div class="form-group">
	     	<a href="index" >Go To Home</a>
	    </div>
	    <%if(personObj != null){ %>
	    <script>
		    
				$("#id").val("<%=personObj.getId()%>");
				$("#id_div").css("display", "block");
				$("#firstName").val("<%=personObj.getFirstName()%>");
				$("#lastName").val("<%=personObj.getLastName()%>");
				$("#submitBtn").val("Edit");
				$("#addpersonForm").attr("action", "editperson");
	
	    </script>
	    <%}%>
</body>
</html>