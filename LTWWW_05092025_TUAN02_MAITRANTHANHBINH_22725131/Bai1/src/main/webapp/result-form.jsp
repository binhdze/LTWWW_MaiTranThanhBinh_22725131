<%@ page import="iut.fit.demo.Student" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết Quả Đăng Ký</title>
</head>
<body>
<h2>Thông Tin Sinh Viên</h2>
<%
    Student student = (Student) request.getAttribute("student");
    if (student != null) {
%>
First Name: <%= student.getFirstName() %><br>
Last Name: <%= student.getLastName() %><br>
Email: <%= student.getEmail() %><br>
Gender: <%= student.getGender() %><br>
Birthday: <%= student.getBirthDate() %><br>
<%
} else {
%>
<p>Không có thông tin sinh viên!</p>
<%
    }
%>
</body>
</html>
