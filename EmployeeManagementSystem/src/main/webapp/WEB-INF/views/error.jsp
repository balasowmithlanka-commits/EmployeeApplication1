<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Error</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f0f4f8;
        text-align: center;
        padding: 80px 20px;
    }

    .container {
        background: white;
        max-width: 500px;
        margin: auto;
        padding: 35px;
        border-radius: 12px;
    }

    h2 {
        color: #dc2626;
    }

    a {
        display: inline-block;
        margin-top: 20px;
        color: #2563eb;
    }
</style>
</head>

<body>

<div class="container">

    <h2>Something Went Wrong</h2>

    <p>Sorry, your request could not be completed.</p>

    <a href="${pageContext.request.contextPath}/employees/register">
        Return to Employee Registration
    </a>

</div>

</body>
</html>

