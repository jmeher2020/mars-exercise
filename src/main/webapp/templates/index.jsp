<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	
</head>
<body>
	<h2> Mars Exercise Application</h2>
	<div class="form-group">
     	<a href="addPersonForm" >Add Person Details</a>
    </div>
    <div class="form-group">
     	<a href="fetchPersonsList" >Fetch Person List</a>
    </div>

</body>
</html>