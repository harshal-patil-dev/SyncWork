package com.tka.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Aspect
@Component
public class LoginCheckAspect {

	private final HttpServletRequest request;
	private final HttpServletResponse response;

	public LoginCheckAspect(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
	}

	@Before("execution(* com.tka.controller.EmployeeController.*(..))")
	public void checkLogin() throws Exception {

		if (request.getSession(false) == null || request.getSession(false).getAttribute("user") == null) {
			response.sendRedirect("/syncwork/login-user");
		}
	}
}