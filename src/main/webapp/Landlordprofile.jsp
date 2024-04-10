<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
	

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Landlord Profile Page</title>
<style>

body {
    background:url(image/ghouse.jpg);
    background-repeat:no-repeat;
    background-size:cover;
    font-family: Arial, sans-serif;
    background-color: #D6E6E4;
    padding: 50px;
    color: #333;  
}

.landlord-card {
    background-color: #E6F9E9;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 350px;
    margin: 5px auto;  /* Centering the card */
}

h1 {
    text-align: center;
    color: #4a90e2;  
    margin-bottom: 30px;  /* Space below the title */
}

.info {
    font-size: 16px;
    margin-bottom: 8px;
}

.label {
    font-weight: bold;
    color: #555;  /label color/
}

a {
    text-decoration: none;  
}

input[type="button"] {
    background-color: #4a90e2;  
    color: #fff;  
    border: none;
    border-radius: 4px;
    padding: 10px 20px;
    cursor: pointer;
    display: block;
    margin: 20px auto;  /* Centering the button */
   
}

input[type="button"]:hover {
    background-color: #357ab8;  
}
.upload{
  width: 100px;
  position:fixed;
  top:60px;
  left:50px;
}

.upload img{
  
  border-radius: 50%;
  border: 6px solid #eaeaea;
  
}





</style>
</head>
<body>
	<c:forEach var="lan" items="${LanDetails}">
	
	<c:set var="id" value="${lan.id}"/>
	<c:set var="name" value="${lan.name}"/>
	<c:set var="email" value="${lan.email}"/>
	<c:set var="phone" value="${lan.phone}"/>
	<c:set var="username" value="${lan.userName}"/>
	<c:set var="password" value="${lan.password}"/>
	<c:set var="photo" value="${lan.photo}"/>
	
	
    <div class="upload">
      <img src="image/noprofil.jpg" width = 100 height = 100 alt="">
      
	</div>
	<div class="info">${lan.photo}</div>
	
	
	
	
		<div class="landlord-card">
		

			<h1>Landlord Profile</h1>
			<div class="info label">Landlord ID:</div>
			<div class="info">${lan.id}</div>
			<br>

			<div class="info label">Name:</div>
			<div class="info">${lan.name}</div>
			<br>

			<div class="info label">Phone:</div>
			<div class="info">${lan.phone}</div>
			<br>

			<div class="info label">Email:</div>
			<div class="info">${lan.email}</div>
			<br>

			<div class="info label">Username:</div>
			<div class="info">${lan.userName}</div>
			<br>

			<div class="info label">Password:</div>
			<div class="info">${lan.password}</div>
			<br>
			
			
		</div>
		

	</c:forEach>
	
	<c:url value ="UpdateProfile.jsp" var = "lanupdate">
	    <c:param name="id" value="${id}"/>
	    <c:param name="name" value="${name}"/>
	    <c:param name="phone" value="${phone}"/>
	    <c:param name="email" value="${email}"/>
	    <c:param name="usern" value="${username}"/>
	    <c:param name="pass" value="${password}"/>
	    <c:param name="profile" value="${photo}"/>
	    
	</c:url>
	<a href ="${lanupdate}"> 
	<input type="button" name= "Update" value="Update My Details">
	</a>
	
	
	<c:url value= "deletelandlord.jsp" var = "landelete">
	<c:param name="id" value ="${id}"></c:param>
	<c:param name="name" value ="${name}"></c:param>
	<c:param name="phone" value ="${phone}"></c:param>
	<c:param name="email" value ="${email}"></c:param>
	<c:param name="usern" value ="${username}"></c:param>
	<c:param name="pass" value ="${password}"></c:param>
	<c:param name="profile" value ="${photo}"></c:param>
	</c:url>
	
	<a href ="${landelete}">
	<input type="button" name= "delete" value="Delete My Account">
	</a>
	
</body>
</html>