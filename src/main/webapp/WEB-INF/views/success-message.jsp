<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SyncWork - Success</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/validation-message.css">
</head>
<body>
	<c:set var="activePage" value="${activePage}" />
	<jsp:include page="common/navbar.jsp" />

	<main class="message-section">
		<div class="message-container">
			<div class="message-icon success-icon">✓</div>
			<div class="message-badge success-badge">Operation Successful</div>

			<h1>
				Action <span>Completed Successfully</span>
			</h1>
			<p>${response.get("success")}</p>

			<div class="redirect-text">Redirecting...</div>
		</div>
	</main>
	<script>
		setTimeout(function() {
			// 1. pageContext se context root nikalega (jaise agar tomcat context hai)
			var contextPath = "${pageContext.request.contextPath}";

			// 2. Controller se dynamic page name nikalega (jaise 'home' ya 'login-user')
			var targetPage = "${response.redirectUrl}";

			// 3. Kyunki controllers par @RequestMapping("/syncwork") hai, url me /syncwork lagana hoga
			window.location.href = contextPath + "/syncwork/" + targetPage;
		}, 3000);
	</script>


</body>
</html>
