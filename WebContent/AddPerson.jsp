<%-- 
    Document   : addPerson
    Created on : 24.Ara.2016, 17:04:44
    Author     : CODER ACJHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ADD PERSON</title>
</head>
<body>
<div align="center" style="background: linear-gradient(to top, #00C9FF, #92FE9D);">
	<div class="row">
    <h1 style="color: purple; font-size: 3em; margin-bottom: 0;">Add Person Form</h1>
    <h4>Please fill in the form below</h4>
    
    <form action="PersonalInfo" method="post" enctype="multipart/form-data">
        <div class="col-md-6 col-md-offset-3">
        	<div class="row form-group">
	        	<div class="input-group">
				  <span class="input-group-addon primary">Firstname :</span>
				  <input type="text" name="firstname" class="form-control" placeholder="Coder" 
				  								aria-describedby="basic-addon1" required="required">
				</div>
			</div>
			<div class="row form-group">
	            <div class="input-group">
				  <span class="input-group-addon success" id="basic-addon1">Lastname :</span>
				  <input type="text" name="lastname" class="form-control" placeholder="ACJHP" 
				  								aria-describedby="basic-addon1" required="required">
				</div>
			</div> 
			<div class="row form-group"> 
	            <div class="input-group">
				  <span class="input-group-addon info" id="basic-addon1">Nationality :</span>
				  <input type="text" name="nationality" class="form-control" placeholder="IRQ" 
				  								aria-describedby="basic-addon1" required="required">
				</div>
			</div>
			<div class="row form-group">
	             <div class="input-group">
				  <span class="input-group-addon danger" id="basic-addon1">Birthdate :</span>
				  <input type="text" name="birthdate" class="form-control" placeholder="25-03-1988" 
				  									aria-describedby="basic-addon1" required="required">
				</div>
			</div>
			<div class="row form-group">
				 <div class="input-group">
				  <span class="input-group-addon info" id="basic-addon1">Marriage :</span>
				  <input type="text" name="marriage" class="form-control" placeholder="Single" 
				  									aria-describedby="basic-addon1" required="required">
				</div>
			</div>
			<div class="row form-group">
	             <div class="input-group">
				  <span class="input-group-addon success" id="basic-addon1">Email @ :</span>
				  <input type="email" name="email" class="form-control" placeholder="hexa.octabin@gmail.com" 
				  											aria-describedby="basic-addon1" required="required">
				</div>
			</div>
			<div class="row form-group">
	           	 <div class="input-group">
				  <span class="input-group-addon warning" id="basic-addon1">Phone number :</span>
				  <input type="text" name="phoneNum" class="form-control" placeholder="0534 125 0488" 
				  											aria-describedby="basic-addon1" required="required">
				</div>
			</div>
			<div class="row form-group">
	            <div class="input-group">
				  <span class="input-group-addon primary" id="basic-addon1">Address :</span>
				  <input type="text" name="address" class="form-control" 
				  		aria-describedby="basic-addon1" required="required">
				</div>
			</div>
			<div class="row form-group">
	             <div class="input-group">
				  <span class="input-group-addon danger" id="basic-addon1">About you :</span>
				  <input type="text" name="about" class="form-control" placeholder="I'm a web developer" 
				  											aria-describedby="basic-addon1" required="required">
				</div>
			</div>
			<div class="row form-group">
	             <div class="input-group">
				  <span class="input-group-addon warning">Profile Picture :</span>
				  <input type="file" name="photo" class="form-control" placeholder=".jpg - .png - .gif">
				</div>
			</div>
        </div>
        <div class="row">
    	<div class="col-md-6 col-md-offset-3">
		   	<div class="btn-group btn-group-justified">
		        <div class="btn-group">    
		            <button class="btn btn-success" type="submit">
		            	<span class="glyphicon glyphicon-ok"></span> Submit
		            </button>
		        </div> 
		        <div class="btn-group">    
		            <button class="btn btn-danger" type="reset">
		            	<span class="glyphicon glyphicon-trash"></span> Clear
		            </button>
		        </div>
		    	<div class="btn-group">
		            <button type="button" class="btn btn-primary" onclick="location.href = 'ViewPerson.jsp'">
		            	<span class="glyphicon glyphicon-eye-open"></span> View all persons
		            </button>
		        </div>
		        <div class="btn-group">
		            <button type="button" class="btn btn-warning" onclick="location.href='Index.jsp'">
		            	<span class="glyphicon glyphicon-log-out"></span> Logout
		            </button>
		        </div>   
		     </div>
        </div>
     </div> 
    </form> 
    </div><br/>
    <div class="row">
	    <p style="">Posted by: Coder ACJHP</p>
	    <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">
	    hexa.octabin@gmail.com</a>.</p>
	    <p><%=new java.util.Date()%> </p> 
	</div>    
</div>
</body>
</html>
