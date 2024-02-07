<%--
  Created by IntelliJ IDEA.
  User: Eng.Blaise
  Date: 07/02/2024
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admission Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 15px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Admission Form</h2>
    <form id="admissionForm">
        <label for="firstName">First Name</label>
        <input type="text" id="firstName" name="firstName" required>

        <label for="lastName">Last Name</label>
        <input type="text" id="lastName" name="lastName" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="telephone">Telephone</label>
        <input type="tel" id="telephone" name="telephone" required>

        <label for="faculty">Faculty</label>
        <input type="text" id="faculty" name="faculty" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Request Admission">
    </form>
</div>

<script>
    document.getElementById("admissionForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission

        // Get form data
        const formData = new FormData(this);
        let formObject = {};
        formData.forEach(function(value, key){
            formObject[key] = value;
        });

        // Redirect to preview page with form data
        window.location.href = "preview.html?" + new URLSearchParams(formObject);
    });
</script>

</body>
</html>