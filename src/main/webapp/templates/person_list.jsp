<%@page import="com.mars.exercise.model.Person"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Add Person Details</title>

	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<%
		List<Person> personList = (List<Person>)request.getAttribute("PERSON_OBJ_LIST");
	%>
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
	
</head>
<body>
	<div class="limiter" style="width:100%" id="tableDiv">
		<div class="container-table100" style="margin-bottom:10px;">
			<div class="wrap-table100">
				<div class="table100">
					 <table class="table">
						  <thead>
						    <tr class="table100-head header" class="rowVehData">     
						      <th>Sl. No.</th>           
						      <th>ID</th> 							                               
						      <th>First Name</th>                                                        
						      <th>Last Name</th>
						      <th style="padding: 0;width: 200px;text-align: center">Actions</th>
						    </tr>
						  </thead>
			              <tbody>	
			              	<%if(!personList.isEmpty()){ int ctr=1; %>	         
				              	<%for(Person personObj : personList){ %>	              
				                  <tr style="border-bottom:1px solid black" class="rowVehData" >
				                  	  <td style="width:50px;"><%=ctr%></td>
				                  	   <td ><%=personObj.getId() %></td>
				                  	    <td "><%=personObj.getFirstName()%></td>
				                  	    <td ><%=personObj.getLastName() %></td>
				        
					                  <td style="text-align: center;padding-left: 0 !important;">
					                    <i title="Edit Person" class="editPersonDet fa fa-pencil" id="<%=personObj.getId()%>" style="font-size: 20px;color: #fc9e00;" ></i>&nbsp;&nbsp;
					                     &nbsp;<i title="Delete Person" class="delPersonDet fa fa-trash" id="<%=personObj.getId()%>" style="font-size: 20px;color: #fc9e00;"></i>
					                    
				
					                  </td>
				                  </tr>          
			              		<%ctr++;}%>
			              	<%}else{%>	
			               		<tr>
			               			<td colspan="11" style="text-align: center;font-size: 19px;font-weight: bold;">No Data Found!</td>
			               		</tr> 
				            <%}%>
			              </tbody>
		            </table> 
				</div>
			</div>
		</div>
		<div class="form-group">
	     	<a href="index" >Go To Home</a>
	    </div>
	</div>

	<script>
	$(document).ready(function(){
	
		$(".editPersonDet").on("click",function(){
			window.location.href = "editPersonForm/"+this.id;
		});

		$(".delPersonDet").on("click",function(){
			window.location.href = "deletePersonDetails/"+this.id;
		});
		
	
		$('.modal').on('hidden.bs.modal', function () {
			window.location.href = 'fetchPersonsList';
		})
	});
	</script>
</body>
</html>