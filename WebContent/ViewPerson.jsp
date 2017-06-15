<%-- 
    Document   : viewPerson
    Created on : 24.Ara.2016, 17:04:11
    Author     : CODER ACJHP
--%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.awt.Image"%>
<%@page  import="com.coder.dao.*"%>
<%@page import="com.coder.entity.*" %>
<%@page import="java.util.List" %>
<%@page errorPage="ErrorPage.jsp" %>
<%@page import="org.apache.commons.codec.binary.Base64" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <title>VIEW PERSON</title>
</head>
<body>
<div align="center" style="background: linear-gradient(to top, #00C9FF, #92FE9D);">
	<div class="container">
    <h1 style="color: purple; font-size: 3em; margin-bottom: 0;">Personal Informations</h1>
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
	
	<table class="table table-hover">
		<thead>
	      <tr>
	         <th>PHOTO</th>
	         <th>NAME</th>
	         <th>LASTNAME</th>
	         <th>NATIONALITY</th>
	         <th>BIRTHDATE</th>
	         <th>PHONE</th>
	         <th>ADDRESS</th>
	         <th>EMAIL</th>
	         <th>MARRIAGE</th>
	         <th>ABOUT</th>
	         <th>Edit</th>
	         <th>Delete</th>
	      </tr>
	    </thead>
        <%    
        	CurdOperationsImpl coi = new CurdOperationsImpl();
    		List<Person> personList = coi.readAll();
            for (Person person : personList) {
            	
        %>
        <tbody>
        <tr>
        	<td><img src="data:image/jpeg;base64,<%=person.getPHOTO()%>" width="50" height="50" alt="no image"/></td>
        	<td> <%=person.getNAME()%></td>
	        <td><%=person.getLASTNAME()%> </td>
	        <td><%=person.getNATIONALITY()%></td>
	        <td><%=person.getBIRTHDATE()%></td>
	        <td> <%=person.getPHONENUM()%></td>
	        <td> <%=person.getADDRESS()%></td>
	        <td><%=person.getEMAIL()%></td>
	        <td><%=person.getMARRIAGESTATUS()%></td>
	        <td><%=person.getABOUT()%></td>
	        <td> <a href="EditPerson.jsp?id=<%=Integer.toString(person.getID())%>"><i class="glyphicon glyphicon-edit"></i></a></td>
	        <td> <a href="DeleteServlet?id=<%=Integer.toString(person.getID())%>"><i class="glyphicon glyphicon-trash"></i></a></td>
	    </tr>
        </tbody>
        <% }%>
        
    </table>
    <br>
    <div class="row">
    	<div class="col-md-6 col-md-offset-3">
	        <form action="LogoutServlet" method="POST">
		    	<div class="btn-group btn-group-justified">
		    	<div class="btn-group">
		            <button type="button" class="btn btn-info" onclick="location.href = 'AddPerson.jsp'" >
		            	<span class="glyphicon glyphicon-plus"></span> Add New
		            </button>
		        </div>
		        <div class="btn-group">    
		            <button class="btn btn-danger" type="submit">
		            	<span class="glyphicon glyphicon-log-out"></span> Logout
		            </button>
		        </div>    
		         </div>
	        </form>
        </div>
     </div> 
     <br/>
     <div class="row">  
	     <p>Posted by: Coder ACJHP</p>
	                <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">
	                        hexa.octabin@gmail.com</a>.</p>
	                <p><%=new java.util.Date()%> </p> 
     </div>           
     </div>           
</div>
</body>
</html>