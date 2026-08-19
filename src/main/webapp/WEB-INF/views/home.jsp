<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SyncWork - Dashboard</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <nav class="navbar">
        <a href="home" class="logo">Sync<span>Work</span></a>
        <ul class="nav-links">
            <li><a href="home" class="active">Dashboard</a></li>
            <li><a href="add-employee">Add Employee</a></li>
            <li><a href="get-employee">Employees</a></li>
            <li><a href="update-employee-nav">Update</a></li>
            <li><a href="delete-employee-nav">Delete</a></li>
        </ul>
        <div class="nav-status">
            <span class="status-dot"></span>System Online
        </div>
    </nav>
    <main class="hero-section">
        <div class="hero-content">
            <div class="badge">
                <span class="badge-dot"></span>Enterprise Workforce Platform
            </div>
            <h1>Manage your workforce<br>with <span>confidence.</span></h1>
            <p>A centralized employee management platform built for secure operations, seamless workforce administration, and reliable database synchronization.</p>
            <div class="hero-actions">
                <a href="get-employee" class="primary-btn">View Employees<span>→</span></a>
                <a href="add-employee" class="secondary-btn">Add Employee</a>
            </div>
        </div>
    </main>
</body>
</html>
