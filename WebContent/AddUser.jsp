<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <title>REGISTRATON PAGE</title>
</head>
<body>
<div align="center">
    <form action="NewUser" method="post">
        <h1 style="color: purple; font-size: 3em; margin-bottom: 0;">Sign up :</h1>
        <fieldset style="width: 70%; color: black; background: linear-gradient(to right, #66ccff,#0066cc);"> 
            <table cellpadding="3px" style="width:50%; height:50% ; font-family: verdana; font-size:15px;">
                <tr>
                    <td>Name :</td><td> <input style="width: 300px;height: 40px;margin-left: 80px;" type="text" name="name" value="" placeholder="Coder" /></td>
                </tr>
                <tr>
                    <td>Lastname :</td><td> <input style="width: 300px;height: 40px;margin-left: 80px;" type="text" name="lastName" value="" placeholder="ACJHP" required /></td>
                </tr>
                <tr>
                    <td>Nickname :</td><td> <input style="width: 300px;height: 40px;margin-left: 80px;" type="text" name="nickName" value="" placeholder="CoderACJHP" required /></td>
                </tr>
                <tr>
                    <td>Password :</td><td> <input style="width: 300px;height: 40px;margin-left: 80px;" type="password" name="password" value="" placeholder="XXXXXXX" required /></td>
                </tr>
                <tr>
                    <td>Verify Password :</td><td> <input style="width: 300px;height: 40px;margin-left: 80px;" type="password" name="verifyPassword" value="" placeholder="XXXXXXX" required /></td>
                </tr>
                <tr>
                    <td>Email :</td><td> <input style="width: 300px;height: 40px;margin-left: 80px;" type="email" name="email" value="" placeholder="Coder" required /></td>
                </tr>
                <tr>
                    <td></td>    
                    <td><input type="submit" value="Submit" /><input type="button" onclick="goBack()" value="Go Back"/>                
                </tr>
            </table>
             
        </fieldset>
                <p>Posted by: Coder ACJHP</p>
                <p>Contact information: <a href="mailto:hexa.octabin@gmail.com">hexa.octabin@gmail.com</a></p>
                <p><script>var today = new Date(); document.write(today);</script></p> 
    </form>
 </div>
<script>
    function goBack() {
        window.history.back();
    }
</script>
</body>
</html>
