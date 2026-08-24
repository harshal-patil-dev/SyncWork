package com.tka.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tka.entity.User;
import com.tka.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/syncwork")
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/register-user")
	public String registerUser() {
		return "register-user";
	}

	@PostMapping("/register-user")
	public String registerUser(@ModelAttribute User user, @RequestParam("confirmPassword") String confirmPassword,
			Model model) {

		if (user.getPassword().equals(confirmPassword)) {

			Map<String, Object> response = userService.registerUser(user);
			if (response.containsKey("error")) {
				response.put("redirectUrl", "register-user");
				model.addAttribute("response", response);
				return "error-message";
			} else {
				response.put("redirectUrl", "login-user");
				model.addAttribute("response", response);
				return "success-message";
			}

		} else {
			Map<String, Object> response = new LinkedHashMap<>();
			response.put("error", "Password and Confirm Password do not match!");
			response.put("redirectUrl", "register-user");
			model.addAttribute("response", response);
			return "error-message";
		}

	}

	@GetMapping("/login-user")
	public String loginUser() {
		return "login-user";
	}

	@PostMapping("/login-user")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request, Model model) {

		Map<String, Object> response = userService.loginUser(user);
		if (response.containsKey("success")) {

			request.getSession().setAttribute("user", user.getUsername());
			response.put("redirectUrl", "home");
			model.addAttribute("response", response);
			return "success-message";

		} else {
			response.put("redirectUrl", "login-user");
			model.addAttribute("response", response);
			return "error-message";
		}

	}

	@GetMapping("/logout-user")
	public String logoutUser(HttpSession session, Model model) {

		session.invalidate();
		Map<String, Object> response = new LinkedHashMap<>();
		response.put("success", "Logged out successfully! See you again.");
		response.put("redirectUrl", "login-user");
		model.addAttribute("response", response);
		return "success-message";
	}

}
