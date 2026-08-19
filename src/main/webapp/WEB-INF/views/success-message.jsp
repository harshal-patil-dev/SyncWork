<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SyncWork - Success</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/validation-message.css">
</head>
<body>
    <nav class="navbar">
        <a href="home" class="logo">Sync<span>Work</span></a>
        <ul class="nav-links">
            <li><a href="home">Dashboard</a></li>
            <li><a href="add-employee">Add Employee</a></li>
            <li><a href="get-employee">Employees</a></li>
            <li><a href="update-employee-nav">Update</a></li>
            <li><a href="delete-employee-nav">Delete</a></li>
        </ul>
        <div class="nav-status">
            <span class="status-dot"></span>System Online
        </div>
    </nav>
    <main class="message-section">
        <div class="message-container">
            <div class="message-icon success-icon">✓</div>
            <div class="message-badge success-badge">Operation Successful</div>
            <h1>Action <span>Completed Successfully</span></h1>
            <p>${response.get("success")}</p>
            <div class="redirect-text">Redirecting to Employees...</div>
        </div>
    </main>
    <script>
        setTimeout(function() {
            window.location.href = "get-employee";
        }, 3000);
    </script>
</body>
</html>