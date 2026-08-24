<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SyncWork - Dashboard</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/home.css">
</head>
<body>
	<c:set var="activePage" value="home" />
	<jsp:include page="common/navbar.jsp" />
	<main class="hero-section">
		<div class="hero-content">
			<div class="badge">
				<span class="badge-dot"></span>Enterprise Workforce Platform
			</div>
			<h1>
				Manage your workforce<br>with <span>confidence.</span>
			</h1>
			<p>A centralized employee management platform built for secure
				operations, seamless workforce administration, and reliable database
				synchronization.</p>
			<div class="hero-actions">
				<a href="get-employee" class="primary-btn">View Employees<span>→</span></a>
				<a href="add-employee" class="secondary-btn">Add Employee</a>
			</div>
		</div>
	</main>
</body>
</html>
