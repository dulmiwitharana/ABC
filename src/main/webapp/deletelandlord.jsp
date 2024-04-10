<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete landlord page</title>
<style>

body {
    background:url(image/night.jpg);
    background-repeat:no-repeat;
    background-size:cover;
    font-family: Arial, sans-serif;
    background-color: #D6E6E4;
    padding: 40px;
    
}

/* Styling for the card that contains landlord details */
.landlord-card {
    background-color: #D6E6E4;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    margin: 20px auto;
}

/* Styling for the main heading */
h1 {
    text-align: center;
    color: #4a90e2;
    margin-bottom: 30px;
}

 /* Styling for information text */
.info {
    font-size: 16px;
    margin-bottom: 50px;
}


/* Styling for text, file, and email input fields */
input[type="text"], input[type="file"] ,input[type="email"]{
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input[type="submit"] {
    background-color: #4a90e2;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px 20px;
    cursor: pointer;
    display: block;
    margin: 20px auto;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #357ab8;
}

.upload {
    width: 100px;
    margin: 20px auto;
    display: block;
    text-align: center;
}

.upload img {
    border-radius: 50%;
    border: 6px solid #eaeaea;
}

</style>
</head>
<body>
    <% 
     String id = request.getParameter("id");
     String name = request.getParameter("name");
     String phone = request.getParameter("phone");
     String email = request.getParameter("email");
     String userName = request.getParameter("usern");
     String password = request.getParameter("pass");
     String photo = request.getParameter("pic");
    %>

    <!-- Container to display landlord details and delete option -->
    <div class="landlord-card">
        <h1>Landlord Account Delete</h1>
        <!-- Form to delete landlord details -->
        <form action="delete" method="post">
            <input type="text" name="lanid" value="<%= id %>" placeholder="Landlord ID" readonly>
            <input type="text" name="name" value="<%= name %>" placeholder="Name" readonly>
            <input type="text" name="phone" value="<%= phone %>" placeholder="Phone" readonly>
            <input type="email" name="email" value="<%= email %>" placeholder="Email" readonly>
            <input type="text" name="usern" value="<%= userName %>" placeholder="User Name" readonly>
            <input type="text" name="pass" value="<%= password %>" placeholder="Password" readonly>

            <div class="upload">
                <img src="image/noprofil.jpg" width=100 height=100 alt="">
                <div class="round">
                    
                    
                </div>
            </div>

            <input type="submit" name="submit" value="Delete My Data">
        </form>
    </div>

</body>
</html>
