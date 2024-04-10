<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page </title>
<style>
body {
/* Background image for the body */
    background:url(image/dark.jpg);
    background-repeat:no-repeat;
    background-size:cover;
    font-family: Arial, sans-serif;
   
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}
h1{
   text-align:center;
}

 /* Styling for the login form */
form {
    background-color:#A4CAE3;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    width: 300px;
}

input[type="text"], input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #e0e0e0;
    border-radius: 4px;
    font-size: 16px;
    outline: none;
}

input[type="submit"] {
    width: 100%;
    background-color: #213B4D;/*login button background*/
    color: #ffffff;
    padding: 10px;
    border: none;
    border-radius: 50px;
    cursor: pointer;
    font-size: 18px;
    margin-top: 50px;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
    
     <!-- Login form structure -->
     <form action ="login" method ="post">
     <h1>Login Form</h1>
       User Name <input type ="text" name = "username" placeholder="Enter your username"><br><br>
       Password <input type = "password" name ="password" placeholder="Enter your password"><br>
       
       <input type ="submit" name = "submit" value="Login">
     
     </form>

</body>
 
</html>