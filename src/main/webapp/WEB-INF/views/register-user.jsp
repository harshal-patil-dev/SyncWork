<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SyncWork - Register</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/register-user.css">
</head>
<body>
	<main class="register-section">
		<div class="register-container">
			<div class="register-card">
				<div class="brand">
					<a href="home" class="logo">Sync<span>Work</span></a>
					<div class="brand-badge">Employee Management System</div>
				</div>

				<div class="card-header">
					<div class="page-badge">Account Registration</div>
					<h1>
						Create Your <span>Account</span>
					</h1>
					<p>Register your account to access the SyncWork employee
						management system.</p>
				</div>

				<form action="register-user" method="post">
					<div class="form-grid">
						<div class="form-group">
							<label for="username">Username</label> <input type="text"
								id="username" name="username" placeholder="Enter Username"
								minlength="3" maxlength="30" required>
						</div>

						<div class="form-group">
							<label for="email">Email</label> <input type="email" id="email"
								name="email" placeholder="Enter Email" minlength="11"
								maxlength="40" required pattern="[a-zA-Z0-9._%+-]+@gmail\.com$"
								title="only @gmail.com allowed!">
						</div>
						<div class="form-group">
							<label for="password">Password</label>
							<div class="password-wrapper">
								<input type="password" id="password" name="password"
									placeholder="Enter Password" minlength="8" maxlength="30"
									required>
								<button type="button" class="password-toggle"
									onclick="togglePassword('password', this)"
									aria-label="Show password">
									<span class="eye-icon"></span>
								</button>
							</div>
						</div>
						<div class="form-group">
							<label for="confirmPassword">Confirm Password</label>
							<div class="password-wrapper">
								<input type="password" id="confirmPassword"
									name="confirmPassword" placeholder="Confirm Password"
									minlength="8" maxlength="30" required>
								<button type="button" class="password-toggle"
									onclick="togglePassword('confirmPassword', this)"
									aria-label="Show password">
									<span class="eye-icon"></span>
								</button>
							</div>
						</div>
					</div>

					<button type="submit" class="register-btn">
						Create Account <span>→</span>
					</button>
				</form>

				<div class="login-link">
					<span>Already have an account?</span> <a href="login-user">Login</a>
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
