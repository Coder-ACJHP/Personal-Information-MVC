<%-- 
    Document   : ErrorPage
    Created on : 25.Ara.2016, 01:05:13
    Author     : CODER ACJHP
--%>

<%@page language="java" isErrorPage="true" import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>    
	<head>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Error page</title>
	</head>
<body>
<div align="center">    
<hr>
    <img src="${pageContext.request.contextPath}/images/404.png" style="width:50%" alt="404 page img" />
<hr>
</div>
<div class="row">
	<div class="col-md-6 col-md-offset-3">
		<div class="alert alert-danger">
			<strong>Warning! </strong> Some thing went wrong : ${exception}.
		</div>
	</div>	
	<div class="col-md-4 col-md-offset-4">
	    <button type="button" class="btn btn-primary btn-block" onclick="history.go(-1); return true">
	    	<span class="glyphicon glyphicon-arrow-left"></span> Back
	    </button>
    </div>
</div>
</body>
</html>
