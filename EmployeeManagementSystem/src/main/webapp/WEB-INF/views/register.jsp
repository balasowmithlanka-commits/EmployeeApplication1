
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f4f8;
        margin: 0;
        padding: 40px;
    }

    .container {
        width: 450px;
        margin: auto;
        background: white;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
        color: #1e3a8a;
    }

    label {
        display: block;
        margin-top: 15px;
        font-weight: bold;
    }

    input {
        width: 100%;
        padding: 10px;
        margin-top: 6px;
        box-sizing: border-box;
        border: 1px solid #cbd5e1;
        border-radius: 6px;
    }

    button {
        width: 100%;
        padding: 12px;
        margin-top: 25px;
        background-color: #2563eb;
        color: white;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 16px;
    }

    button:hover {
        background-color: #1d4ed8;
    }

    .link {
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>

<body>

<div class="container">

    <h2>Employee Registration</h2>

    <form action="${pageContext.request.contextPath}/employees/register"
          method="post">

        <label for="name">Employee Name</label>
        <input type="text" id="name" name="name"
               required maxlength="100">

        <label for="email">Email Address</label>
        <input type="email" id="email" name="email"
               required>

        <label for="department">Department</label>
        <input type="text" id="department" name="department"
               required maxlength="100">

        <label for="salary">Salary</label>
        <input type="number" id="salary" name="salary"
               min="0.01" step="0.01" required>

        <button type="submit">Register Employee</button>

    </form>

    <div class="link">
        <a href="${pageContext.request.contextPath}/employees/list">
            View All Employees
        </a>
    </div>

</div>

</body>
</html>

