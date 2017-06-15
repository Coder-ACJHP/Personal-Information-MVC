<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
	    <title>JSP &amp; SERVLET</title>  
	    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
	    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/login-form.css">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta charset="UTF-8">
</head>
<body>
<div align="center" style="background: linear-gradient(to top, #00C9FF, #92FE9D);">
    <h1 style="color: #660066; font-size: 70px; ">Personal Info Project</h1>
    <h3 style="color: #000000; font-size: 20px; ">This is a test application, made by <br> Servlet &amp; JSP, SQL, Hibernate, HTML, CSS, JS techologies</h3>
<hr style="color: gray">
	
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
    <div class = "container">
	<div class="wrapper">
	<div class="col-md-6 col-md-offset-3">
    	<form action="AuthServlet" method="post">
		    <h3 class="form-signin-heading">Welcome Back! Please Sign In or <a href="AddUser.jsp">SignUp</a></h3>
			  <hr class="colorgraph"><br>
			  
			  <input type="text" class="form-control" name="username" placeholder="Username" required="required" />
			  <input type="password" class="form-control" name="password" placeholder="Password" required="required"/>     		  
			 
			  <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">
			  		<span class="glyphicon glyphicon-log-in"></span>  Login
			  </button>  			
		</form>	
	</div>			
	</div>
</div><br>    
	<div class="row">
				<p>Posted by: Coder ACJHP</p>
                <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">hexa.octabin@gmail.com</a></p>
                <p><%=new java.util.Date()%></p> 
	</div> 
</div>
</body>
</html>