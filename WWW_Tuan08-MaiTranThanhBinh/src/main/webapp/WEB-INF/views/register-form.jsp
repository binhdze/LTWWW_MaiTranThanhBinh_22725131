<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            margin-top: 40px;
        }

        .form-container {
            width: 420px;
            padding: 25px 35px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        h2 {
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="date"] {
            width: 100%;
            padding: 8px 10px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .gender-group {
            margin-bottom: 15px;
        }

        .gender-group label {
            font-weight: normal;
            margin-right: 15px;
        }

        .btn-group {
            display: flex;
            justify-content: space-between;
        }

        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }

        .btn-back {
            background-color: #6c757d;
        }

        .btn-register {
            background-color: #007bff;
        }

        .message {
            text-align: center;
            color: green;
            font-weight: bold;
            margin-top: 15px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>REGISTRATION</h1>
    <h2>EMPLOYEE</h2>

    <%--@elvariable id="employee" type="java"--%>
    <form:form action="${pageContext.request.contextPath}/register" method="get" modelAttribute="employee">
        <label>First Name</label>
        <form:input path="firstName" type="text" placeholder="First Name"/>

        <label>Last Name</label>
        <form:input path="lastName" type="text" placeholder="Last Name"/>

        <label>Email</label>
        <form:input type="email" path="email" placeholder="Email"/>

        <label>Date of Birth</label>
        <form:input type="date" path="dob" value="2025-10-15"/>

        <label>Phone number</label>
        <form:input type="text" path="phoneNumber" placeholder="Phone number"/>

        <label>Gender</label>
        <div class="gender-group">
            <input type="radio" name="gender" value="Male" checked> Male
            <input type="radio" name="gender" value="Female"> Female
        </div>

        <label>Address</label>
        <input type="text" name="address" placeholder="Address">

        <div class="btn-group">
            <button type="button" class="btn btn-back" onclick="window.history.back()">Back</button>
            <button type="submit" class="btn btn-register">Register</button>
        </div>
    </form:form>

    <div class="message">${message}</div>
</div>
</body>
</html>
