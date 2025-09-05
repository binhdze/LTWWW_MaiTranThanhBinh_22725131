<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <h2>User Registration Form</h2>
    <form method="post" action="register">
        <input type="text" name="firstName" placeholder="First Name" required />
        <input type="text" name="lastName" placeholder="Last Name" required />
        <input type="email" name="email" placeholder="Your Email" required />
        <input type="email" name="emailConfirm" placeholder="Re-enter Email" required />
        <input type="password" name="password" placeholder="New Password" required />

        <label>Birthday</label>
        <select name="month">
            <option>Month</option>
        </select>
        <select name="day">
            <option>Day</option>
        </select>
        <select name="year">
            <option>Year</option>
        </select>

        <div class="gender">
            <label><input type="radio" name="gender" value="Female" /> Female</label>
            <label><input type="radio" name="gender" value="Male" /> Male</label>
        </div>

        <button type="submit" class="btn">Sign Up</button>
    </form>
</div>

</body>
</html>
