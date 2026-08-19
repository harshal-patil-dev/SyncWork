<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SyncWork - Update Employee</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/update-employee.css">
</head>
<body>
    <nav class="navbar">
        <a href="home" class="logo">Sync<span>Work</span></a>
        <ul class="nav-links">
            <li><a href="home">Dashboard</a></li>
            <li><a href="add-employee">Add Employee</a></li>
            <li><a href="get-employee">Employees</a></li>
            <li><a href="update-employee-nav" class="active">Update</a></li>
            <li><a href="delete-employee-nav">Delete</a></li>
        </ul>
        <div class="nav-status"><span class="status-dot"></span>System Online</div>
    </nav>
    <main class="update-section">
        <div class="page-header">
            <div>
                <div class="page-badge">Workforce Management</div>
                <h1>Update <span>Employee</span></h1>
                <p>Find an employee by ID and update their workforce information.</p>
            </div>
        </div>
        <div class="update-container">
            <div class="update-card">
                <div class="card-header">
                    <h2>Find Employee</h2>
                    <p>Enter the employee ID you want to update.</p>
                </div>
                <form action="find-update-employee" method="get">
                    <div class="form-group">
                        <label for="employeeId">Employee ID</label>
                        <input type="text" id="employeeId" name="employeeId" placeholder="Enter Employee ID" required>
                    </div>
                    <button type="submit" class="find-btn">Find Employee</button>
                </form>
            </div>
            <c:if test="${not empty employee}">
                <div class="employee-card">
                    <div class="found-header">
                        <div>
                            <span class="found-badge">Employee Found</span>
                            <h2>Update Employee Details</h2>
                        </div>
                    </div>
                    <form action="update-employee" method="post">
                        <input type="hidden" name="employeeId" value="${employee.employeeId}">
                        <div class="form-grid">
                            <div class="form-group">
                                <label for="employeeName">Employee Name</label>
                                <input type="text" id="employeeName" name="employeeName" value="${employee.employeeName}" required>
                            </div>
                            <div class="form-group">
                                <label for="department">Department</label>
                                <select id="department" name="department" required>
                                    <option value="IT" ${employee.department eq 'IT' ? 'selected' : ''}>IT</option>
                                    <option value="HR" ${employee.department eq 'HR' ? 'selected' : ''}>HR</option>
                                    <option value="Testing" ${employee.department eq 'Testing' ? 'selected' : ''}>Testing</option>
                                    <option value="Marketing" ${employee.department eq 'Marketing' ? 'selected' : ''}>Marketing</option>
                                    <option value="Sales" ${employee.department eq 'Sales' ? 'selected' : ''}>Sales</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="salary">Salary</label>
                                <input type="number" id="salary" name="salary" value="${employee.salary}" min="0" required>
                            </div>
                            <div class="form-group">
                                <label for="experience">Experience</label>
                                <input type="number" id="experience" name="experience" value="${employee.experience}" min="0" required>
                            </div>
                            <div class="form-group full-width">
                                <label for="status">Employee Status</label>
                                <select id="status" name="status" required>
                                    <option value="Active" ${employee.status eq 'Active' ? 'selected' : ''}>Active</option>
                                    <option value="Inactive" ${employee.status eq 'Inactive' ? 'selected' : ''}>Inactive</option>
                                    <option value="On Leave" ${employee.status eq 'On Leave' ? 'selected' : ''}>On Leave</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-footer">
                            <a href="get-employee" class="cancel-btn">Cancel</a>
                            <button type="submit" class="update-btn">Update Employee<span>→</span></button>
                        </div>
                    </form>
                </div>
            </c:if>
        </div>
    </main>
</body>
</html>