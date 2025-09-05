<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Detailed Registration Form</title>
    <link rel="stylesheet" href="Form.css" />
</head>
<body>

<form action="registration-form" method="GET">

    <label for="fname">First name</label>
    <input type="text" id="fname" name="txtFName" maxlength="30" pattern="[a-zA-Z\s]+" required />
    <span class="small-note">(max 30 characters a-z and A-Z)</span><br>

    <label for="lname">Last name</label>
    <input type="text" id="lname" name="txtLName" maxlength="30" pattern="[a-zA-Z\s]+" required />
    <span class="small-note">(max 30 characters a-z and A-Z)</span><br>

    <label>Date of birth</label>
    <select name="day" required>
        <option value="">Day</option>
        <script>
            for(let i=1; i<=31; i++) document.write('<option value="'+i+'">'+i+'</option>');
        </script>
    </select>
    <select name="month" required>
        <option value="">Month</option>
        <script>
            const months=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
            months.forEach((m,i)=>document.write('<option value="'+(i+1)+'">'+m+'</option>'));
        </script>
    </select>
    <select name="year" required>
        <option value="">Year</option>
        <script>
            let year = new Date().getFullYear();
            for(let y=year; y>=1900; y--) {
                document.write('<option value="'+y+'">'+y+'</option>');
            }
        </script>
    </select><br>

    <label for="email">Email</label>
    <input type="email" id="email" name="txtEmail" required /><br>

    <label for="mobile">Mobile number</label>
    <input type="text" id="mobile" name="mobile" maxlength="10" pattern="\d{10}" />
    <span class="small-note">(10 digit number)</span><br>

    <label>Gender</label>
    <input type="radio" id="male" name="gender" value="Male" required /><label for="male" style="width:auto;">Male</label>
    <input type="radio" id="female" name="gender" value="Female" /><label for="female" style="width:auto;">Female</label><br>

    <label for="address">Address</label>
    <textarea id="address" name="address"></textarea><br>

    <label for="city">City</label>
    <input type="text" id="city" name="city" maxlength="30" pattern="[a-zA-Z\s]+" />
    <span class="small-note">(max 30 characters)</span><br>

    <label for="pin">Pin code</label>
    <input type="text" id="pin" name="pin" maxlength="6" pattern="\d{6}" />
    <span class="small-note">(6 digit number)</span><br>

    <label for="state">State</label>
    <input type="text" id="state" name="state" maxlength="30" pattern="[a-zA-Z\s]+" />
    <span class="small-note">(max 30 characters)</span><br>

    <label for="country">Country</label>
    <input type="text" id="country" name="country" value="India" readonly /><br>

    <label>Hobbies</label>
    <input type="checkbox" name="hobbies" value="Drawing" />Drawing
    <input type="checkbox" name="hobbies" value="Singing" />Singing
    <input type="checkbox" name="hobbies" value="Dancing" />Dancing
    <input type="checkbox" name="hobbies" value="Sketching" />Sketching
    Others <input type="text" name="hobbyOther" style="width:120px;" /><br>

    <label>Qualification</label>
    <table>
        <tr>
            <th>Sl.No.</th>
            <th>Examination</th>
            <th>Board</th>
            <th>Percentage</th>
            <th>Year of Passing</th>
        </tr>
        <tr>
            <td>1</td>
            <td>Class X</td>
            <td><input type="text" name="board1" maxlength="10" /></td>
            <td><input type="text" name="percentage1" pattern="^\d+(\.\d{1,2})?$" maxlength="5" /></td>
            <td><input type="text" name="year1" maxlength="4" /></td>
        </tr>
        <tr>
            <td>2</td>
            <td>Class XII</td>
            <td><input type="text" name="board2" maxlength="10" /></td>
            <td><input type="text" name="percentage2" pattern="^\d+(\.\d{1,2})?$" maxlength="5" /></td>
            <td><input type="text" name="year2" maxlength="4" /></td>
        </tr>
        <tr>
            <td>3</td>
            <td>Graduation</td>
            <td><input type="text" name="board3" maxlength="10" /></td>
            <td><input type="text" name="percentage3" pattern="^\d+(\.\d{1,2})?$" maxlength="5" /></td>
            <td><input type="text" name="year3" maxlength="4" /></td>
        </tr>
        <tr>
            <td>4</td>
            <td>Masters</td>
            <td><input type="text" name="board4" maxlength="10" /></td>
            <td><input type="text" name="percentage4" pattern="^\d+(\.\d{1,2})?$" maxlength="5" /></td>
            <td><input type="text" name="year4" maxlength="4" /></td>
        </tr>
    </table>
    <label>Course applies for</label>
    <div class="course-options">

        <label><input type="radio" name="course" value="BCA" required /> BCA</label>
        <label><input type="radio" name="course" value="B.Com" /> B.Com</label>
        <label><input type="radio" name="course" value="B.Sc" /> B.Sc</label>
        <label><input type="radio" name="course" value="BA" /> BA</label>
    </div>

    <div class="btn-group">
        <input type="submit" value="Submit" />
        <input type="reset" value="Reset" />
    </div>

</form>

</body>
</html>
