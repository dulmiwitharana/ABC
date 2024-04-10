<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Landlord Insert</title>
<style>
    body {
        background:url(image/night.jpg);
        background-size:cover;
        background-repeat: no-repeat;
        font-family: Arial, sans-serif;
        background-color: #D6E6E4;
        margin: 50px;
    }

    h2 {
        color: #333;
        text-align:center;
    }

    form {
        background-color: #DCD3D3;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 500px;
        margin: 0 auto;
    }

    label {
        display: block;
        margin-top: 10px;
        color: #555;
        font-weight: bold;
    }

    input[type="text"], input[type="file"],input[type="password"],input[type="email"] {
        width: 98%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
    }

    input[type="radio"] {
        margin-right: 5px;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-top: 10px;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
       }
</style>
</head>
<body>
         <form action="insert" method="post"> 
      <h2>Landlord Register</h2>
     
      Name<input type = "text" name="name"><br>
      Email<input type ="email" name ="email" required><br>
      Phone<input type="text"  name="phone"><br>
      User Name<input type="text" name="uid" required ><br>
      Password<input type="password" name="psw" required><br>
      <label for="document">Upload your Profile Picture:</label>
      <input type="file" id="document" name="doc"><br><br>
      <input type="submit" value="Create Landlord">
      </form>
   

</body>
</html>