<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SyncWork - Employees</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/get-employee.css">
</head>
<body>
	<c:set var="activePage" value="employees" />
	<jsp:include page="common/navbar.jsp" />
	<main class="employee-section">
		<div class="page-header">
			<div>
				<div class="page-badge">Workforce Management</div>
				<h1>
					All <span>Employees</span>
				</h1>
				<p>View and manage all employees registered in your workforce
					database.</p>
			</div>
			<div class="employee-actions">
				<form action="search-employee" method="get" class="search-form">
					<select name="department" required>
						<option value="" selected disabled>Search by Department</option>
						<option value="IT">IT</option>
						<option value="HR">HR</option>
						<option value="Testing">Testing</option>
						<option value="Marketing">Marketing</option>
						<option value="Sales">Sales</option>
					</select>
					<button type="submit" class="search-btn">Search</button>
				</form>
				<a href="add-employee" class="add-btn">+ Add Employee</a>
			</div>
		</div>
		<div class="employee-container">
			<div class="table-wrapper">
				<table class="employee-table">
					<thead>
						<tr>
							<th>ID</th>
							<th>Employee Name</th>
							<th>Department</th>
							<th>Salary</th>
							<th>Experience</th>
							<th>Status</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="e" items="${employees}">
							<tr>
								<td class="employee-id">#${e.employeeId}</td>
								<td class="employee-name">${e.employeeName}</td>
								<td><span class="department">${e.department}</span></td>
								<td>₹${e.salary}</td>
								<td>${e.experience}years</td>
								<td><c:choose>
										<c:when test="${e.status eq 'Active'}">
											<span class="status active">Active</span>
										</c:when>
										<c:when test="${e.status eq 'Inactive'}">
											<span class="status inactive">Inactive</span>
										</c:when>
										<c:otherwise>
											<span class="status leave">${e.status}</span>
										</c:otherwise>
									</c:choose></td>
								<td>
									<div class="action-buttons">
										<a href="find-update-employee?employeeId=${e.employeeId}"
											class="action-btn update-btn">Update</a> <a
											href="delete-employee?employeeId=${e.employeeId}"
											class="action-btn delete-btn">Delete</a>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</main>
</body>
</html>
