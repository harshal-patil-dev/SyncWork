<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SyncWork - Delete Employee</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/delete-employee-form.css">
</head>
<body>
    <nav class="navbar">
        <a href="home" class="logo">Sync<span>Work</span></a>
        <ul class="nav-links">
            <li><a href="home">Dashboard</a></li>
            <li><a href="add-employee">Add Employee</a></li>
            <li><a href="get-employee" class="active">Employees</a></li>
            <li><a href="update-employee-nav">Update</a></li>
            <li><a href="delete-employee-nav">Delete</a></li>
        </ul>
        <div class="nav-status"><span class="status-dot"></span>System Online</div>
    </nav>
    <main class="delete-section">
        <div class="page-header">
            <div>
                <div class="page-badge">Workforce Management</div>
                <h1>Delete <span>Employee</span></h1>
                <p>Review the employee information before permanently removing the record.</p>
            </div>
        </div>
        <div class="delete-container">
            <div class="delete-card">
                <div class="card-header">
                    <div>
                        <span class="delete-badge">Employee Found</span>
                        <h2>Employee Information</h2>
                        <p>Please verify the details before deleting this employee.</p>
                    </div>
                </div>
                <div class="employee-id-box"><span>Employee ID</span><strong>#${employee.employeeId}</strong></div>
                <div class="employee-details">
                    <div class="detail-item"><span>Employee Name</span><strong>${employee.employeeName}</strong></div>
                    <div class="detail-item"><span>Department</span><strong>${employee.department}</strong></div>
                    <div class="detail-item"><span>Salary</span><strong>₹${employee.salary}</strong></div>
                    <div class="detail-item"><span>Experience</span><strong>${employee.experience} years</strong></div>
                    <div class="detail-item full-width"><span>Status</span><strong>${employee.status}</strong></div>
                </div>
                <div class="form-footer">
                    <a href="get-employee" class="cancel-btn">Cancel</a>
                    <a href="confirm-delete-employee?employeeId=${employee.employeeId}" class="delete-btn">Delete Employee<span>→</span></a>
                </div>
            </div>
        </div>
    </main>
</body>
</html>
