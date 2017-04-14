<%-- 
    Document   : EditPerson
    Created on : 24.Ara.2016, 18:20:16
    Author     : CODER ACJHP
--%>
<%@page import="java.sql.Date"%>
<%@page  import="com.coder.dao.*"%>
<%@page import="com.coder.entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDIT PERSON</title>
</head>
<body>
    <%
        CurdOperationsImpl coi = new CurdOperationsImpl();
        int id = Integer.parseInt(request.getParameter("id"));
        Person person = new Person();
        if(id >= 0) {
            person = coi.getPersonById(id);
            session.setAttribute("id", person.getID());
        }
    %>
<div align="center" class="viewTable">
    <h1 style="color: #660066; font-size: 80px; margin-bottom: 20px;"> Edit Person Form</h1>
    <form action="UpdateServlet" method="post" enctype="multipart/form-data">
        <table border="1px" width="50%" style="font-family: verdana; font-size:20px; margin-top: 0; margin-bottom: 20px; background: linear-gradient(to right, #66ccff,#0066cc);">
            <tr>
                <td colspan="2" style="text-align:center; font-size: 0;"><img src="${pageContext.request.servletPath}?id=<%=person.getID()%>" width="250" height="250" alt="no image"/>
            	<h2><%=person.getNAME() + " " + person.getLASTNAME()%></h2> </td>
            </tr>
            <tr>
                <td>First name: </td>
            <td><input type="text" name="firstname" required="required" placeholder="<%=person.getNAME()%>" size="35" /></td>
            </tr>   
            <tr>
                <td>Last name:</td>
            <td><input type="text" name="lastname" required="required" placeholder="<%=person.getLASTNAME()%>" size="35"/></td>
            </tr>
            <tr>
                <td>Nationality:</td>
            <td><input type="text" name="nationality" required="required" placeholder="<%=person.getNATIONALITY()%>" size="35"/></td>
            </tr>
            <tr>
                <td>Birthdate:</td>
            <td><input type="text" name="birthdate" required="required" placeholder="<%=person.getBIRTHDATE()%>" size="35"/></td>
            </tr>
            <tr>
                <td>Phone Number:</td>
            <td><input type="text" name="phoneNum" required="required" placeholder="<%=person.getPHONENUM()%>" size="35"/></td>
            </tr>
            <tr>
                <td>Address:<br></td>
            <td><input type="text" name="address" required="required" placeholder="<%=person.getADDRESS()%>" size="35"/></td>
            </tr>
            <tr>
                <td>Email:</td>
            <td><input type="email" name="email" required="required" placeholder="<%=person.getEMAIL()%>" size="35"/></td>
            </tr>
            <tr>
                <td>Marriage Status:</td>
            <td><input type="text" name="marriage"  placeholder="<%=person.getMARRIAGESTATUS()%>" size="55"/></td>
            </tr>
            <tr>
                <td>About:</td>
            <td><input class="about" type="text" name="about" placeholder="<%=person.getABOUT()%>" size="35"/></td>
            </tr>
            <tr>
                <td>Change Photo:<br></td>
                <td><input type="file" name="photo" /></td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td><input class="correct" type="submit" value="Submit"  ></input>
                </td><td><input class="wrong" type="reset" value="Clear"   ></input>
                </td><td><button class="view" onClick="location.href = 'ViewPerson.jsp'" >View</button>
                </td><td><button class="logut" onClick="location.href = 'Index.html'" >Logout</button></td>
            </tr>
        </table>
    </form>  
                <p>Posted by: Coder ACJHP</p>
                <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">
                        hexa.octabin@gmail.com</a>.</p>
                <p><%=new java.util.Date()%> </p>       
  </div>
</body>
</html>
