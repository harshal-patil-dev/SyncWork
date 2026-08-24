<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SyncWork - Delete Employee</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/delete-employee.css">
</head>
<body>
	<c:set var="activePage" value="delete" />
	<jsp:include page="common/navbar.jsp" />
	<main class="delete-section">
		<div class="page-header">
			<div>
				<div class="page-badge">Workforce Management</div>
				<h1>
					Delete <span>Employee</span>
				</h1>
				<p>Find an employee by ID and remove their record from your
					workforce database.</p>
			</div>
		</div>
		<div class="delete-container">
			<div class="delete-card">
				<div class="card-header">
					<h2>Find Employee</h2>
					<p>Enter the employee ID you want to delete.</p>
				</div>
				<form action="find-delete-employee" method="post">
					<div class="form-group">
						<label for="employeeId">Employee ID</label> <input type="number"
							id="employeeId" name="employeeId" placeholder="Enter Employee ID"
							min="1" required>
					</div>
					<button type="submit" class="find-btn">Find Employee</button>
				</form>
			</div>
		</div>
	</main>
</body>
</html>
