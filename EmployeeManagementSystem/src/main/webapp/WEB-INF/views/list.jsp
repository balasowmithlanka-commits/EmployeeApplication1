<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f0f4f8;
        padding: 40px;
    }

    .container {
        max-width: 1000px;
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

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 25px;
    }

    th, td {
        border: 1px solid #e2e8f0;
        padding: 12px;
        text-align: left;
    }

    th {
        background: #2563eb;
        color: white;
    }

    tr:nth-child(even) {
        background: #f8fafc;
    }

    .button {
        display: inline-block;
        padding: 10px 16px;
        background: #2563eb;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        margin-top: 20px;
    }

    .empty {
        text-align: center;
        padding: 20px;
        color: #64748b;
    }

    .success {
        color: #15803d;
        font-weight: bold;
    }
</style>
</head>

<body>

<div class="container">

    <h2>Registered Employees</h2>

    <c:if test="${not empty successMessage}">
        <p class="success">
            <c:out value="${successMessage}"/>
        </p>
    </c:if>

    <c:choose>
        <c:when test="${not empty employees}">

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Department</th>
                        <th>Salary</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="employee" items="${employees}">
                        <tr>
                            <td><c:out value="${employee.id}"/></td>
                            <td><c:out value="${employee.name}"/></td>
                            <td><c:out value="${employee.email}"/></td>
                            <td><c:out value="${employee.department}"/></td>
                            <td><c:out value="${employee.salary}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </c:when>

        <c:otherwise>
            <p class="empty">
                No employees have been registered yet.
            </p>
        </c:otherwise>
    </c:choose>

    <a class="button"
       href="${pageContext.request.contextPath}/employees/register">
        Register New Employee
    </a>

</div>

</body>
</html>

