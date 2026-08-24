<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SyncWork - Login</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/login-user.css">
</head>
<body>

	<main class="login-section">
		<div class="login-container">
			<div class="login-card">
				<div class="brand">
					<a href="home" class="logo">Sync<span>Work</span></a>
					<div class="brand-badge">Employee Management System</div>
				</div>

				<div class="card-header">
					<div class="page-badge">Secure Login</div>
					<h1>
						Welcome <span>Back</span>
					</h1>
					<p>Sign in to access the SyncWork employee management system.</p>
				</div>

				<form action="login-user" method="post">
					<div class="form-group">
						<label for="username">Username</label> <input type="text"
							id="username" name="username" placeholder="Enter Username"
							required>
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<div class="password-wrapper">
							<input type="password" id="password" name="password"
								placeholder="Enter Password" required>
							<button type="button" class="password-toggle"
								onclick="togglePassword('password', this)"
								aria-label="Show password">
								<span class="eye-icon"></span>
							</button>
						</div>
					</div>
					<button type="submit" class="login-btn">
						Login <span>→</span>
					</button>
				</form>

				<div class="register-link">
					<span>Don't have an account?</span> <a href="register-user">Create
						Account</a>
				</div>
			</div>

			<div class="footer-text">SyncWork · Workforce Management
				Platform</div>
		</div>
	</main>
	<script>
		function togglePassword(inputId, button) {
			const input = document.getElementById(inputId);
			if (input.type === "password") {
				input.type = "text";
				button.classList.add("show");
				button.setAttribute("aria-label", "Hide password");
			} else {
				input.type = "password";
				button.classList.remove("show");
				button.setAttribute("aria-label", "Show password");
			}

		}
	</script>
</body>
</html>
