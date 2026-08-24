package com.tka.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.entity.User;
import com.tka.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public Map<String, Object> registerUser(User user) {

		Map<String, Object> response = new LinkedHashMap<>();

		// UserName Validation
		for (int i = 0; i < user.getUsername().length(); i++) {

			char character = user.getUsername().charAt(i);
			if (!Character.isLetterOrDigit(character) && character != '-' && character != '_' && character != ' '
					&& character != '@' && character != '.') {

				response.put("error",
						"Username can only contain letters, numbers, spaces, hyphens (-), underscores (_), '@' and dots (.)!");
				return response;
			}
		}

		// Email Validation
		if (!user.getEmail().endsWith("@gmail.com")) {

			response.put("error", "Please enter a valid email address that ends with '@gmail.com'!");
			return response;

		}

		if (user.getEmail().startsWith(".") || user.getEmail().startsWith(",") || user.getEmail().startsWith("-")
				|| user.getEmail().startsWith("_") || user.getEmail().startsWith("@")) {

			response.put("error",
					"Email address cannot start with a dot (.), comma (,), hyphen (-), underscore (_), or @ symbol and special any character!");
			return response;
		}

		for (int i = 0; i < user.getEmail().length(); i++) {

			char character = user.getEmail().charAt(i);
			if (!(user.getEmail().charAt(i) == '-') && !(user.getEmail().charAt(i) == '_')
					&& !(user.getEmail().charAt(i) == '@') && !(user.getEmail().charAt(i) == '.')
					&& !Character.isLetter(character) && !Character.isDigit(character)) {

				response.put("error",
						"Email can only contain letters, numbers, hyphens (-), underscores (_), and the '@' symbol and . also!");
				return response;

			}
		}

		// Password Validation
		for (int i = 0; i < user.getPassword().length(); i++) {

			char character = user.getPassword().charAt(i);
			if (!(user.getPassword().charAt(i) == '-') && !(user.getPassword().charAt(i) == '_')
					&& !(user.getPassword().charAt(i) == '@') && !Character.isLetter(character)
					&& !Character.isDigit(character)) {

				response.put("error",
						"Password can only contain letters, numbers, hyphens (-), underscores (_), and the '@' symbol!");
				return response;

			}
		}

		userRepository.save(user);
		response.put("success", "User registered successfully!");
		return response;

	}

	public Map<String, Object> loginUser(User user) {

		Map<String, Object> response = new LinkedHashMap<>();
		List<User> users = userRepository.findAll();
		for (User u : users) {
			if (u.getUsername().equals(user.getUsername()) && u.getPassword().equals(user.getPassword())) {

				response.put("success", "Logged in successfully! Welcome back to SyncWork!");
				return response;

			}

		}

		response.put("error", "Invalid username or password. Please try again!");
		return response;
	}

}
