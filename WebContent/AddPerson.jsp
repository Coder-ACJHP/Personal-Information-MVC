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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADD PERSON</title>
</head>
<body>
<div align="center" class="viewTable">
    <h1 style="color: #660066; font-size: 80px; margin-bottom: 20px;">Add Person Form</h1>
    <form action="PersonalInfo" method="post" enctype="multipart/form-data">
        <table border="1px" cellpadding="3px" width="50%" style="font-family: verdana; font-size:20px;
               margin-top: 0; margin-bottom: 20px; background: linear-gradient(to right, #66ccff,#0066cc);">
            <tr>
                <td>First name: </td><br>
            <td><input type="text" name="firstname" required="true"  size="35" /></td>
            </tr>   
            <tr>
                <td>Last name:</td><br>
            <td><input type="text" name="lastname" required="true"  size="35"/></td>
            </tr>
            <tr>
                <td>Nationality:</td><br>
            <td><input type="text" name="nationality" required="true"  size="35"/></td>
            </tr>
            <tr>
                <td>Birthdate:</td><br>
            <td><input type="text" name="birthdate" required="true"  size="35"/></td>
            </tr>
            <tr>
                <td>Phone Number:</td><br>
            <td><input type="text" name="phoneNum" required="true"  size="35"/></td>
            </tr>
            <tr>
                <td>Address:<br></td><br>
            <td><input type="text" name="address" required="true" size="35"/></td>
            </tr>
            <tr>
                <td>Email:</td><br>
            <td><input type="email" name="email" required="true" size="35"/></td>
            </tr>
            <tr>
                <td>Marriage Status:</td><br>
            <td><input type="text" name="marriage" required="true" size="35"/></td>
            </tr>
            <tr>
                <td>About:</td><br>
            <td><input class="about" type="text" name="about" required="true" size="55"/></td>
            </tr>
            <tr>
                <td>Personal Photo:<br></td>
                <td><input type="file" name="photo" size="35" /></td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td><input class="correct" type="submit" value="Submit"  ></input>
                </td><td><input class="wrong" type="reset" value="Clear"   ></input>
                </td><td><button class="view" onClick="location.href = 'ViewPerson.jsp'" >View</button>
                </td><td><button class="logut" onClick="location.href='Index.html'" >Logout</button></td>
             </tr>
        </table>
    </form> 
    <p style="">Posted by: Coder ACJHP</p>
    <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">
    hexa.octabin@gmail.com</a>.</p>
    <p><%=new java.util.Date()%> </p> 
</div>
</body>
</html>
