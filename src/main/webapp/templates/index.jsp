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

	<style>

		.form-group {
		    margin-bottom: 15px;faviconnew2.ico
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
		<h2> Welcome To Mars Exercise </h2>
		<div class="form-group">
			<i class="fa fa-user" >
	     		<a href="addPersonForm" >Add Person Details</a>
	     	</i>
	    </div>
	    <div class="form-group">
	    	<i class="fa fa-list" >
	    	    <a href="fetchPersonsList" >Fetch Person List</a>
	     	</i>
	    </div>
	</div>
</body>
</html>