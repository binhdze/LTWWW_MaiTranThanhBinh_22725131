<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<form action="login" method="post">
    <label for="firstname">Name <span class="required">*</span></label><br/>
    <input type="text" id="firstname" name="firstname" placeholder="First" class="small-input" required />
    <input type="text" id="lastname" name="lastname" placeholder="Last" class="small-input" required /><br/>

    <label for="username">Username <span class="required">*</span></label><br/>
    <input type="text" id="username" name="username" required /><br/>

    <label for="email">E-mail <span class="required">*</span></label><br/>
    <input type="email" id="email" name="email" required /><br/>

    <label for="password">Password <span class="required">*</span></label><br/>
    <input type="password" id="password" name="password" required /><br/>

    <label for="facebook">Facebook</label><br/>
    <input type="text" id="facebook" name="facebook" placeholder="Enter your Facebook profile URL" /><br/>

    <label for="bio">Short Bio</label><br/>
    <textarea id="bio" name="bio" class="bio" placeholder="Share a little information about yourself."></textarea><br/>

    <input type="submit" value="Submit" />
</form>

</body>
</html>