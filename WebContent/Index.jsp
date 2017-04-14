<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
    <title>JSP & SERVLET</title>
    <style>
    .btn3 {
        
    width: 90px;
    height: 30px;  
    font-family: verdana;
    }   
    </style>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div align="center">
    <h1 style="color: #660066; font-size: 70px; ">Welcome to Personal Info Project</h1>
    <h3 style="color: #000000; font-size: 20px; ">This is a test application, made by <br> Servlet & JSP, SQL, Hibernate, HTML, CSS, JS techologies</h3>
</div>
<div align="center">
    <img class="mySlides" src="images/cloud-info.jpg" style="width:40%;" alt="Cloud">
    <img class="mySlides" src="images/personal.png" style="width:40%;"  alt="Person1">
    <img class="mySlides" src="images/personal2.png" style="width:40%;" alt="Person2">
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3500);    
}
</script>
<hr style="color: gray">
<div align="center">    
    <form action="AuthServlet" method="post">
        <fieldset style="width: 30%; color: black; background: linear-gradient(to right, #66ccff,#0066cc);">
            <legend><b>Login :</b></legend>
            <table>
                <tr>
                    <td>User name :</td><td> <input type="text" name="username" value="" placeholder="Coder" required /></td>
                </tr>
                <tr>
                    <td>Password :</td><td> <input type="password" name="password" value="" placeholder="XXXXXXX" required/></td>
                </tr>
                <tr>
                    <td></td>    
                    <td><input class="correct" type="submit" value="Submit" /> <input class="wrong" type="reset" value="Clear" />  <a class ="createUser" href="AddUser.jsp">Sign up</a> </td>
                   
                </tr>
            </table>
        </fieldset>
                <p>Posted by: Coder ACJHP</p>
                <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">hexa.octabin@gmail.com</a></p>
                <p><script>var today = new Date(); document.write(today);</script></p> 
    </form>
</div>
</body>
</html>
