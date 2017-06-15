<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
	    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/edit.css">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <title>REGISTRATON PAGE</title>
</head>
<body>
<div align="center" style="background: linear-gradient(to top, #00C9FF, #92FE9D);">
    
    <h1 style="color: purple; font-size: 3em; margin-bottom: 0;">Sign up <small>and add your persons</small></h1>
    <br/>
    
    <div class="row">
    	<div class="col-md-8 col-md-offset-2">
		    <!-- Give some information to user after redirecting from register page -->
			<c:set value="${requestScope.Message}" var="msg" />
			<c:if test="${not empty msg}">
				<div class="alert alert-danger">
				  <strong>Info!</strong> ${msg}.
				</div>
			</c:if>
		</div>
	</div>
	
        <div class="container">
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
				    <form action="NewUser" method="post">
            	<div class="form-group">
					<label class="control-label" for="theFirstname">First name: </label>
					<input type="text" id="theFirstname" name="firstname" maxlength="50" class="form-control" required="required">
				</div>
				<div class="form-group">
					<label class="control-label" for="theLastname">Last name: </label>
					<input type="text" id="theLastname" name="lastname" maxlength="50" class="form-control" required="required">
				</div>
				<div class="form-group">
					<label class="control-label" for="theNickName">Nickname: </label>
					<input type="text" id="theNickName" name="nickName" maxlength="50" class="form-control" required="required">
				</div>
				<div class="form-group">
					<label class="control-label" for="thePassword">Password: </label>
					<input type="password" id="thePassword" name="password" maxlength="10" class="form-control" required="required">
				</div>
				<div class="form-group">
					<label class="control-label" for="verifyPassword">Verify Password: </label>
					<input type="password" id="verifyPassword" name="verifyPassword" maxlength="10" class="form-control" required="required">
				</div>
				<div class="form-group">
					<label class="control-label" for="theEmail">Email @: </label>
					<input type="email" id="theEmail" name="email" class="form-control" required="required">
				</div>
                <div class="btn-group btn-group-justified">
                	<div class="btn-group">
                		<button type="submit" class="btn btn-success">
                			<span class="glyphicon glyphicon-floppy-disk"></span> Submit
                		</button>
                	</div>	
                	<div class="btn-group">
                		<button type="button" class="btn btn-warning" onclick="window.history.go(-1); return false;">
                			<span class="glyphicon glyphicon-arrow-left"></span> Back
                		</button>
                	</div>
                </div><br/>               
             <p class="form-group">By creating an account, you agree to our <a href="#">Terms of Use</a> and our <a href="#">Privacy Policy</a>.</p>
			 <hr>
			 <p>Already have an account? <a href="Index.jsp">Sign in</a></p>
    	</form>
     </div>
   	</div>
  </div>
</div>   
<div class="row">
                <p>Posted by: Coder ACJHP</p>
                <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">hexa.octabin@gmail.com</a></p>
                <p><%=new java.util.Date()%> </p> 
</div>                
 </div>
</body>
</html>
