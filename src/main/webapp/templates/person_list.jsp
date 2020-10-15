<%@page import="com.mars.exercise.model.Person"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		i{
			font-size: 20px !important;
			color: #007bff;
		}
	</style>
	
</head>
<body style="text-align: -webkit-center;">	
	<div style="border:1px solid black;width: max-content;padding:20px;">
		<h2> Person List</h2>	
			<div class="container"> 
			 <table class="table">
					    <thead class="thead-dark" style="white-space: nowrap">    
						      <th>Sl. No.</th>           
						      <th>ID</th> 							                               
						      <th>First Name</th>                                                        
						      <th>Last Name</th>
						      <th style="width: 200px;text-align:center">Actions</th>
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
					                    <i title="Edit Person" class="editPersonDet fa fa-pencil" id="<%=personObj.getId()%>" style="font-size: 20px;color: #007bff;" ></i>&nbsp;&nbsp;
					                    <i title="Delete Person" class="delPersonDet fa fa-trash" id="<%=personObj.getId()%>" style="font-size: 20px;color: #007bff;"></i>
					                    <i title="Add Address" class="addAddress fa fa-plus-circle" id="<%=personObj.getId()%>" style="font-size: 20px;color: #007bff;" ></i>&nbsp;&nbsp;
					                    <i title="Show Address" class="showAddress fa fa-list" id="<%=personObj.getId()%>" style="font-size: 20px;color: #007bff;" ></i>&nbsp;&nbsp;
					                    
				
					                  </td>
				                  </tr>          
			              		<%ctr++;}%>
			              	<%}else{%>	
			               		<tr>
			               			<td colspan="5" style="text-align: center;font-size: 19px;font-weight: bold;">No Data Found!</td>
			               		</tr> 
				            <%}%>
			              </tbody>
		            </table> 
				</div>

		<div class="form-group">
			<i class="fa fa-home" >
	    	    <a href="/mars/index" >Go To Home</a>
	     	</i>	     	
	    </div>
	</div>

	<script>
	$(document).ready(function(){
	
		$(".editPersonDet").on("click",function(){
			window.location.href = "${contextPath}/mars/editPersonForm/"+this.id;
		});

		$(".delPersonDet").on("click",function(){
			if (confirm("Are you sure want to Remove the Person?")){
				window.location.href = "${contextPath}/mars/deletePersonDetails/"+this.id;
			}
		});

		$(".addAddress").on("click",function(){
			window.location.href = "${contextPath}/mars/addAddressForm/"+this.id;
		});

		$(".showAddress").on("click",function(){
			window.location.href = "${contextPath}/mars/fetchAddresssList/"+this.id;
		});
		
	
		$('.modal').on('hidden.bs.modal', function () {
			window.location.href = '${contextPath}/mars/fetchPersonsList';
		})
	});
	</script>
</body>
</html>