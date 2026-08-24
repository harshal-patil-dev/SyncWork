<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SyncWork - Request Failed</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/validation-message.css">
</head>
<body>
    <c:set var="activePage" value="${activePage}"/>
    <jsp:include page="common/navbar.jsp"/>

    <main class="message-section">
        <div class="message-container">
            <div class="message-icon error-icon">!</div>
            <div class="message-badge error-badge">Request Failed</div>

            <h1>Something <span>Went Wrong</span></h1>
            <p>${response.get("error")}</p>

            <div class="redirect-text">
                Redirecting...
            </div>
        </div>
    </main>

    <script>
        setTimeout(function() {
        	window.location.href = "/syncwork/${response.get('redirectUrl')}";
        }, 3000);
    </script>
</body>
</html>
