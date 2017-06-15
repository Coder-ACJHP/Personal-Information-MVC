<%-- 
    Document   : EditPerson
    Created on : 24.Ara.2016, 18:20:16
    Author     : CODER ACJHP
--%>
<%@page import="java.sql.Date"%>
<%@page  import="com.coder.dao.*"%>
<%@page import="com.coder.entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.commons.codec.binary.Base64" %>
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
    <title>EDIT PERSON</title>
</head>
<body>
    <%
/*	Here fetching person from db who wanted to edit him/her informations (by ID) */
        CurdOperationsImpl coi = new CurdOperationsImpl();
        int id = Integer.parseInt(request.getParameter("id"));
        Person person = new Person();
        if(id >= 0) {
            person = coi.getPersonById(id);
            session.setAttribute("id", id);
        
        }
    %>
    
<div align="center" style="background: linear-gradient(to top, #00C9FF, #92FE9D);">
    <h1 style="color: purple; font-size: 3em; margin-bottom: 0;">Edit Person Form</h1>
    <h4>Please edit the informations below</h4>
    
    	<div class="container">
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
    				<form action="UpdateServlet" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<img src="data:image/jpeg;base64,<%=person.getPHOTO()%>" class="img-thumbnail" 
																alt="Profile picture" width="250" height="250"> 
								<h2><%=person.getNAME() + " " + person.getLASTNAME()%></h2>
								<hr>
						</div>
						<div class="form-group">
							<label class="control-label" for="firstname">First name: </label>
							<input type="text" id="firstname" name="firstname" maxlength="50" class="form-control" value="<%=person.getNAME()%>">
						</div>
						<div class="form-group">
							<label class="control-label" for="lastname">Last name: </label>
							<input type="text" id="lastname" name="lastname" maxlength="50" class="form-control" value="<%=person.getLASTNAME() %>">
						</div>
						<div class="form-group">
							<label class="control-label" for="nationality">Nationality: </label>
							<input id="nationality" name="nationality" type="text" maxlength="50" class="form-control" value="<%=person.getNATIONALITY()%>">
						</div>
						<div class="form-group">
							<label class="control-label" for="birthdate">Birthdate: </label>
							<input name="birthdate" id="birthdate" type="text" maxlength="50" class="form-control" value="<%=person.getBIRTHDATE()%>">
						</div>
						<div class="form-group">
							<label class="control-label" for="phoneNum">Phone Number: </label>
							<input name="phoneNum" type="text" id="phoneNum" maxlength="50" class="form-control" value="<%=person.getPHONENUM()%>">
						</div>
						<div class="form-group">
							<label class="control-label" for="email">Email: </label>
							<input name="email" type="email" id="email" maxlength="50" class="form-control" value="<%=person.getEMAIL()%>">
						</div>
						<div class="form-group">
							<label class="control-label" for="address">Address: </label>
							<input name="address" type="text" id="address" maxlength="50" class="form-control" value="<%=person.getADDRESS()%>">
						</div>
						<div class="form-group">
							<label class="control-label" for="marriage">Marriage Status: </label>
							<input name="marriage" type="text" id="marriage" maxlength="50" class="form-control" value="<%=person.getMARRIAGESTATUS()%>">
						</div>
						<div class="form-group">
							<label class="control-label" for="about">About</label>
							<input name="about" type="text" id="about" class="form-control"  maxlength="300" value="<%=person.getABOUT()%>">
						</div>
						<div class="form-group">
							<label class="control-label" for="photo">Profile Picture :</label>
							<input type="file" name="photo" id="photo" class="form-control" placeholder=".jpg - .png - .gif">
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
							     </div>
					        </div>
					     </div> 
					</form>
				</div>
			</div>
		</div>
	</div><br/>
    <div class="row">
                <p>Posted by: Coder ACJHP</p>
                <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">
                        hexa.octabin@gmail.com</a>.</p>
                <p><%=new java.util.Date()%> </p>  
   </div>                  
  </div>
</body>
</html>
