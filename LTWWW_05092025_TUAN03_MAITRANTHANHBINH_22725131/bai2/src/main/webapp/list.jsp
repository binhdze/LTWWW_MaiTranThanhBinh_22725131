<%@ page import="java.util.List" %>
<%@ page import="iut.fit.demo.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
<h2>Registered Users</h2>
<table border="1">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
    </tr>
    <%
        List<User> users = (List<User>) request.getAttribute("users");
        for (User u : users) {
    %>
    <tr>
        <td><%= u.getFirstName() %></td>
        <td><%= u.getLastName() %></td>
        <td><%= u.getEmail() %></td>
    </tr>
    <% } %>
</table>
<a href="register.jsp">← Back to Registration</a>
</body>
</html>
