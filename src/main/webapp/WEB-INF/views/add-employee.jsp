<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SyncWork - Add Employee</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/add-employee.css">
</head>
<body>

	<nav class="navbar">

		<a href="home" class="logo"> Sync<span>Work</span>
		</a>

		<ul class="nav-links">
			<li><a href="home">Dashboard</a></li>
			<li><a href="add-employee" class="active">Add Employee</a></li>
			<li><a href="get-employee">Employees</a></li>
			<li><a href="update-employee-nav">Update</a></li>
			<li><a href="delete-employee-nav">Delete</a></li>
		</ul>

		<div class="nav-status">
			<span class="status-dot"></span> System Online
		</div>

	</nav>

	<main class="page-section">

		<div class="form-container">

			<div class="form-header">

				<h1>
					Add New <span>Employee</span>
				</h1>

				<p>Create a new employee profile and add it to your workforce
					database.</p>

			</div>


			<form action="add-employee" method="post" class="employee-form">

				<div class="form-grid">

					<div class="form-group">
						<label for="employeeName">Employee Name</label> <input type="text"
							id="employeeName" name="employeeName"
							placeholder="Enter employee name" required>
					</div>


					<div class="form-group">
						<label for="department">Department</label> <select id="department"
							name="department" required>

							<option value="" selected disabled>Select department</option>

							<option value="IT">IT</option>
							<option value="HR">HR</option>
							<option value="Testing">Testing</option>
							<option value="Marketing">Marketing</option>
							<option value="Sales">Sales</option>

						</select>
					</div>


					<div class="form-group">
						<label for="salary">Salary</label> <input type="number"
							id="salary" name="salary" placeholder="Enter salary" min="0"
							required>
					</div>


					<div class="form-group">
						<label for="experience">Experience</label> <input type="number"
							id="experience" name="experience"
							placeholder="Years of experience" min="0" required>
					</div>


					<div class="form-group full-width">
						<label for="status">Employee Status</label> <select id="status"
							name="status" required>

							<option value="" selected disabled>Select status</option>

							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
							<option value="On Leave">On Leave</option>

						</select>
					</div>

				</div>


				<div class="form-footer">

					<a href="home" class="cancel-btn"> Cancel </a>

					<button type="submit" class="submit-btn">
						Add Employee <span>→</span>
					</button>

				</div>

			</form>

		</div>

	</main>

</body>
</html>