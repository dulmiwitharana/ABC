<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unsuccess Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

   .notification-table {
    border: 1px solid #ccc;
    background-color:#fff ; /*background - white*/
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
    overflow: hidden;
    width: 300px;
}

   .notification-table td {
    padding: 10px;
    text-align: center;
}

   h1 {
    color: red;
    margin: 0;
}

   label {
    color: #555; 
}
    }
</style>

</head>
<body>
    <table class="notification-table">
        <tr>
            <td>
                <h1>Unsuccess</h1>
            </td>
        </tr>
        <tr>
            <td>
                <label>Re-enter data</label>
            </td>
        </tr>
    </table>
</body>
</html>