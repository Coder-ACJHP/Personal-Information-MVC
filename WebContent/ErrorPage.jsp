<%-- 
    Document   : ErrorPage
    Created on : 25.Ara.2016, 01:05:13
    Author     : CODER ACJHP
--%>

<%@page isErrorPage="true" import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>    
<head>
    <link rel="stylesheet" href="css/styles.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<pre>


</pre>
<div class="hrDiv" align="center">    
<hr>
    <img src="images/404.png" style="width:50%" alt="404 page img" />
<hr>
</div>
<div class="hrDiv2" align="center">
    <h4>Message : <%= exception %></h4><br>
    <input class="back" type="button" value="Back" onClick="history.go(-1); return true"/>
    <p>
        
    </p>
</div>
</body>
</html>
