<%@page import="com.mars.exercise.model.Address"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Mars Exercise</title>
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
		List<Address> addressList = (List<Address>)request.getAttribute("ADDRESS_OBJ_LIST");
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
		<h2> Mars Exercise - Address List</h2>	
		<div class="container"> 
			 <table class="table">
					    <thead class="thead-dark" style="white-space: nowrap">
						    <tr>     
						      <th>Sl. No.</th>           
						      <th>Add Id</th> 							                               
						      <th>Person Id</th>                                                        
						      <th>Street</th>
						      <th>City</th>
						      <th>State</th>
						      <th>Postal Code</th>
						      <th style="width: 200px;text-align:center">Actions</th>
						    </tr>
						  </thead>
			              <tbody>	
			              	<%if(!addressList.isEmpty()){ int ctr=1; %>	         
				              	<%for(Address addressObj : addressList){ %>	              
				                  <tr style="border-bottom:1px solid black" class="rowVehData" >
				                  	  <td style="width:50px;"><%=ctr%></td>
				                  	   <td ><%=addressObj.getAddress_id()%></td>
				                  	    <td ><%=addressObj.getId()%></td>
				                  	     <td ><%=addressObj.getStreet()%></td>
				                  	      <td ><%=addressObj.getCity()%></td>
				                  	       <td ><%=addressObj.getState()%></td>
				                  	        <td ><%=addressObj.getPostalCode()%></td>
				        
					                  <td style="text-align: center;padding-left: 0 !important;">
					                    <i title="Edit Address" class="editAddressDet fa fa-pencil" id="<%=addressObj.getAddress_id()%>" style="font-size: 20px;color: #007bff;" ></i>&nbsp;&nbsp;
					                    <i title="Delete Address" class="delAddressDet fa fa-trash" id="<%=addressObj.getAddress_id()%>" style="font-size: 20px;color: #007bff;"></i>
					                   
					                  </td>
				                  </tr>          
			              		<%ctr++;}%>
			              	<%}else{%>	
			               		<tr>
			               			<td colspan="8" style="text-align: center;font-size: 19px;font-weight: bold;">No Data Found!</td>
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
	
		$(".editAddressDet").on("click",function(){
			window.location.href = "${contextPath}/mars/editAddressForm/"+this.id;
		});


		$(".delAddressDet").on("click",function(){
			if (confirm("Are you sure want to Remove the Address?")){
				window.location.href = "${contextPath}/mars/deleteAddressDetails/"+this.id;
			}
		});

	
	
		$('.modal').on('hidden.bs.modal', function () {
			window.location.href = '${contextPath}/mars/fetchAddresssList';
		})
	});
	</script>
</body>
</html>