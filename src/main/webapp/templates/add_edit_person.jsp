<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="com.mars.exercise.model.Person"%>
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
		Person personObj = (Person)request.getAttribute("PERSON_OBJ");
	%>
	
</head>
<body style="text-align: -webkit-center;">
	
	<div style="border:1px solid black;width: max-content;padding:20px;">
	<h2> <span id="textAddEddit">Add</span> Person Details</h2>
	<form:form name="addpersonForm" id="addpersonForm"  action="${contextPath}/mars/addPerson" method="post" modelAttribute="personForm" >
	
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
			<i class="fa fa-home" >
	    	    <a href="/mars/index" >Go To Home</a>
	     	</i>	     	
	    </div>
	 </div>
	    <%if(personObj != null){ %>
	    <script>
		    
				$("#id").val("<%=personObj.getId()%>");
				$("#id_div").css("display", "block");
				$("#firstName").val("<%=personObj.getFirstName()%>");
				$("#lastName").val("<%=personObj.getLastName()%>");
				$("#submitBtn").val("Edit");
				$("#textAddEddit").html("Edit");
				$("#addpersonForm").attr("action", "${contextPath}/mars/editPerson");
	
	    </script>
	    <%}%>
</body>
</html>