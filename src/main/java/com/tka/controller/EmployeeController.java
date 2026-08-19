package com.tka.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tka.entity.Employee;
import com.tka.service.employeeService;

@Controller
@RequestMapping("/employee-managment-system")
public class EmployeeController {

	@Autowired
	private employeeService employeeService;

	@GetMapping("/home")
	public String homePage() {
		return "home";

	}

	@GetMapping("/add-employee")
	public String getAddEmployee() {
		return "add-employee";

	}

	@PostMapping("/add-employee")
	public String postAddEmployee(@ModelAttribute Employee employee, Model model) {
		Map<String, Object> response = employeeService.addEmployee(employee);

		model.addAttribute("response", response);

		if (response.containsKey("success")) {
			return "success-message";
		} else if (response.containsKey("error")) {
			return "error-message";
		} else {
			return "home";
		}

	}

	@GetMapping("/get-employee")
	public String getEmployee(Model model) {
		List<Employee> employees = employeeService.getEmployee();

		if (employees != null && !employees.isEmpty()) {
			model.addAttribute("employees", employees);
			return "get-employee";

		} else {
			Map<String, Object> response = new LinkedHashMap<>();
			response.put("error", "Employee Not Found!");
			model.addAttribute("response", response);
			return "error-message";
		}

	}

	@GetMapping("/update-employee-nav")
	public String updateEmployee() {
		return "update-employee";

	}

	@PostMapping("update-employee")
	public String updateEmployee(@ModelAttribute Employee employee, Model model) {
		Map<String, Object> response = employeeService.updateEmployee(employee);
		model.addAttribute("response", response);

		if (response.containsKey("success")) {
			return "success-message";
		} else {
			return "error-message";
		}

	}

	@GetMapping("/delete-employee-nav")
	public String deleteEmployee() {
		return "delete-employee";

	}

	@GetMapping("/delete-employee")
	public String deleteEmployee(@RequestParam int employeeId, Model model) {

		Employee employee = employeeService.findEmployee(employeeId);
		if (employee != null) {
			model.addAttribute("employee", employee);
			return "delete-employee-form";

		} else {

			Map<String, Object> response = new LinkedHashMap<>();
			String error = "No employee found with the specified ID. Please verify and try again!";
			response.put("error", error);
			model.addAttribute("response", response);
			return "error-message";
		}
	}

	@GetMapping("/confirm-delete-employee")
	public String confirmDeleteEmployee(@RequestParam int employeeId, Model model) {

		Map<String, Object> response = employeeService.deleteEmployee(employeeId);
		model.addAttribute("response", response);

		if (response.containsKey("success")) {
			return "success-message";
		} else {
			return "error-message";
		}
	}

	@GetMapping("/find-update-employee")
	public String findUpdateEmployees(@RequestParam("employeeId") int employeeId, Model model) {
		Map<String, Object> response = new LinkedHashMap<>();
		Employee employee = employeeService.findEmployee(employeeId);

		if (employee != null) {
			model.addAttribute("employee", employee);
			return "update-employee-form";

		} else {

			String error = "No employee found with the specified ID. Please verify and try again!";
			response.put("error", error);
			model.addAttribute("response", response);
			return "error-message";
		}
	}

	@PostMapping("/find-delete-employee")
	public String findDeletEmployees(@RequestParam("employeeId") int employeeId, Model model) {
		Map<String, Object> response = new LinkedHashMap<>();
		Employee employee = employeeService.findEmployee(employeeId);

		if (employee != null) {
			model.addAttribute("employee", employee);
			return "delete-employee-form";

		} else {

			String error = "No employee found with the specified ID. Please verify and try again!";
			response.put("error", error);
			model.addAttribute("response", response);
			return "error-message";
		}
	}

	@GetMapping("search-employee")
	public String searchEmployee(@RequestParam("department") String department, Model model) {

		List<Employee> filterEmployees = employeeService.searchEmployee(department);
		model.addAttribute("employees", filterEmployees);
		return "get-employee";

	}

}
