<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SyncWork - Validation Failed</title>
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
            <div class="message-icon error-icon">!</div>
            <div class="message-badge error-badge">Validation Failed</div>
            <h1><span>Request Failed</span></h1>
            <p>${response.get("error")}</p>
            <div class="redirect-text">Redirecting to Dashboard...</div>
        </div>
    </main>
    <script>
        setTimeout(function() {
            window.location.href = "home";
        }, 5000);
    </script>
</body>
</html>