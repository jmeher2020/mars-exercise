<%@page import="com.mars.exercise.model.Address"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Add Address Details</title>

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
	</style>
	
</head>
<body>
	<h2> Address List</h2>
	<div class="limiter" style="width:100%" id="tableDiv">
		<div class="container-table100" style="margin-bottom:10px;">
			<div class="wrap-table100">
				<div class="table100">
					 <table class="table">
						  <thead>
						    <tr class="table100-head header" class="rowVehData">     
						      <th>Sl. No.</th>           
						      <th>Add Id</th> 							                               
						      <th>Person Id</th>                                                        
						      <th>Street</th>
						      <th>City</th>
						      <th>State</th>
						      <th>Postal Code</th>
						      <th style="padding: 0;width: 200px;text-align: center">Actions</th>
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
					                    <i title="Edit Address" class="editAddressDet fa fa-pencil" id="<%=addressObj.getAddress_id()%>" style="font-size: 20px;color: #fc9e00;" ></i>&nbsp;&nbsp;
					                    <i title="Delete Address" class="delAddressDet fa fa-trash" id="<%=addressObj.getAddress_id()%>" style="font-size: 20px;color: #fc9e00;"></i>
					                   
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
			</div>
		</div>
		<div class="form-group">
	     	<a href="http://localhost:8081/mars/index" >Go To Home</a>
	    </div>
	</div>

	<script>
	$(document).ready(function(){
	
		$(".editAddressDet").on("click",function(){
			window.location.href = "editAddressForm/"+this.id;
		});


		$(".delAddressDet").on("click",function(){
			if (confirm("Are you sure want to Remove the Address?")){
				window.location.href = "deleteAddressDetails/"+this.id;
			}
		});

	
	
		$('.modal').on('hidden.bs.modal', function () {
			window.location.href = 'fetchAddresssList';
		})
	});
	</script>
</body>
</html>