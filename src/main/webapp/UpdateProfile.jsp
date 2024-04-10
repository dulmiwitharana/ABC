<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

</head>
<body>

<style>
    body {
    background:url(image/land.jpg);
    background-repeat:no-repeat;
    background-size:cover;
    position: relative; 
    font-family: 'Arial', sans-serif;
    
    display: flex;
    justify-content: center;
    align-items: center;
    height: 35vh;
    margin: 230px;
}

form {
    top:60px;
    background-color:#D6E6E4;;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    width:68%;
    max-width: 350px;
}

input[type="text"], input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
}

input[type="submit"] {
    background-color: #00B4FF;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #0088cc;
}


.upload{
  width: 100px;
  position:absolute;
  bottom:120%;
  left:-8px;;
}

.upload img{
  
  border-radius: 50%;
  border: 6px solid #eaeaea;
  position :;
}

.upload .round{
  position: absolute;
  bottom: 0;
  right: 0;
  background: #00B4FF;
  width: 32px;
  height: 32px;
  line-height: 33px;
  text-align: center;
  border-radius: 50%;
  overflow: hidden;
}

.upload .round input[type = "file"]{
  position: absolute;
  transform: scale(2);
  opacity: 0;
}

/*input[type=file]::-webkit-file-upload-button{
    cursor: pointer;
}*/

</style>


  <% 
     
     String id = request.getParameter("id");
     String name = request.getParameter("name");
     String phone = request.getParameter("phone");
     String email = request.getParameter("email");
     String userName = request.getParameter("usern");
     String password = request.getParameter("pass");
     String photo = request.getParameter("pic");
  %>
 
    
    
  
   <form action ="update" method ="post">
      <h1>Update My Profile</h1>
      Landlord ID <input type ="text" name ="lanid" value = "<%= id%>" readonly><br>
      Name <input type ="text" name ="name" value = "<%=name %>"><br>
      Phone <input type ="text" name ="phone" value = "<%= phone%>"><br>
      Email <input type ="text" name ="email" value = "<%=email%>"><br>
      User Name <input type ="text" name ="usern" value = "<%=userName%>"><br>
      Password <input type ="text" name ="pass" value = "<%=password%>"><br>
      <div class="upload">
      <img src="image/noprofil.jpg" width = 100 height = 100 alt="">
      <div class="round">
        <input type="file" name="pic" value="<%=photo %>" >
        <i class = "fa fa-camera" style = "color: #fff;"></i>
      </div>
      </div>
      
      <input type = "submit" name = "submit" value = "Update My Data"><br>
   </form>

</body>
</html>