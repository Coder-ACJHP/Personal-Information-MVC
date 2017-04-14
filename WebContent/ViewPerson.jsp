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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VIEW PERSON</title>
</head>
<body>
<div align="center">
    <h1 style="color: purple; font-size: 3em; margin-bottom: 0;">Personal Informations</h1>
    <% CurdOperationsImpl coi = new CurdOperationsImpl(); %>
    <% List<Person> personList = coi.readAll(); %>
    <table border="1px" cellpadding="3px" width="80%" style="font-family: verdana; font-size:15px; margin-top: 10px; margin-bottom: 20px; background: linear-gradient(to right, #66ccff,#0066cc);">
        <tr>
            <th>PHOTO</th><th>NAME</th><th>LASTNAME</th><th>NATIONALITY</th><th>BIRTHDATE</th><th>PHONE NUM.</th><th>ADDRESS</th><th>EMAIL</th><th>MARRIAGE</th><th>ABOUT</th><th>Edit</th><th>Delete</th>
        </tr>
        <%          
            for (Person person : personList) {
        %>
        <tr><td><img src="${pageContext.servletContext.contextPath}/util/retrieveImage?id=<%=person.getID()%>" width="50" height="50" alt="no image"/></td><td> <%=person.getNAME()%></td>
        <td><%=person.getLASTNAME()%> </td><td><%=person.getNATIONALITY()%></td><td><%=person.getBIRTHDATE()%></td><td> <%=person.getPHONENUM()%></td><td> <%=person.getADDRESS()%><td><%=person.getEMAIL()%></td>
        <td><%=person.getMARRIAGESTATUS()%></td><td><%=person.getABOUT()%></td>
        <td> <a href="EditPerson.jsp?id=<%=Integer.toString(person.getID())%>">edit</a> </td>
        <td> <a href="DeleteServlet?id=<%=Integer.toString(person.getID())%>">delete</a></td></tr>
        <% }%>
    </table>
    <br>
    <table>
        <tr>
            <td><button class="addUser" onClick="location.href = 'AddPerson.jsp'" >Add New</button></td>
        <form action="LogoutServlet" method="POST">
            <td><button class="logut" type="submit">Logout</button></td>
        </form>
         </tr>
    </table>
     <p>Posted by: Coder ACJHP</p>
                <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">
                        hexa.octabin@gmail.com</a>.</p>
                <p><%=new java.util.Date()%> </p> 
</div>
</body>
</html>
