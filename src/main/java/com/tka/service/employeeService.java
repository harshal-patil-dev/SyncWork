package com.tka.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.entity.Employee;
import com.tka.repository.EmployeeRepository;

@Service
public class employeeService {

	@Autowired
	private EmployeeRepository employeeRepository;

	public Map<String, Object> addEmployee(Employee employee) {

		Map<String, Object> response = new LinkedHashMap<>();
		if (employee.getEmployeeName().isEmpty()) {

			String error = "Employee name must not be empty!";
			response.put("error", error);
			return response;

		}

		if (employee.getEmployeeName().length() < 2 || employee.getEmployeeName().length() > 50) {

			String error = "Invalid name length! Name must contain at least 2 and no more than 50 characters!";
			response.put("error", error);
			return response;

		}

		for (int i = 0; i < employee.getEmployeeName().length(); i++) {

			char character = employee.getEmployeeName().charAt(i);
			if (!Character.isLetter(character) && !(employee.getEmployeeName().charAt(i) == ' ')) {

				String error = "Employee name cannot contain numbers or special characters! Please use letters and spaces only!";
				response.put("error", error);
				return response;

			}

		}

		if (employee.getSalary() < 15000) {

			String error = "Salary must be greater than 15000!";
			response.put("error", error);
			return response;

		}

		if (employee.getExperience() < 0 || employee.getExperience() > 10) {

			String error = "Invalid experience value. Years of experience cannot be negative or exceed 10 years!";
			response.put("error", error);
			return response;

		}

		employeeRepository.save(employee);
		String success = "Employee added successfully!";
		response.put("success", success);
		return response;

	}

	public List<Employee> getEmployee() {

		List<Employee> employees = employeeRepository.findAll();
		return employees;

	}

	public Map<String, Object> deleteEmployee(int employeeId) {

		Map<String, Object> response = new LinkedHashMap<>();
		employeeRepository.deleteById(employeeId);
		String success = "Employee record has been deleted successfully!";
		response.put("success", success);
		return response;

	}

	public Employee findEmployee(int employeeId) {

		Employee employee = employeeRepository.findById(employeeId).orElse(null);
		return employee;
	}

	public Map<String, Object> updateEmployee(Employee employee) {

		Map<String, Object> response = new LinkedHashMap<>();
		if (employee.getEmployeeName().isEmpty()) {

			String error = "Employee name must not be empty!";
			response.put("error", error);
			return response;

		}

		if (employee.getEmployeeName().length() < 2 || employee.getEmployeeName().length() > 50) {

			String error = "Invalid name length! Name must contain at least 2 and no more than 50 characters!";
			response.put("error", error);
			return response;

		}

		for (int i = 0; i < employee.getEmployeeName().length(); i++) {

			char character = employee.getEmployeeName().charAt(i);
			if (!Character.isLetter(character) && !(employee.getEmployeeName().charAt(i) == ' ')) {

				String error = "Employee name cannot contain numbers and spaces! Please use letters only!";
				response.put("error", error);
				return response;

			}

		}

		if (employee.getSalary() < 15000) {

			String error = "Salary must be greater than 15000!";
			response.put("error", error);
			return response;

		}

		if (employee.getExperience() < 0 || employee.getExperience() > 10) {

			String error = "Invalid experience value. Years of experience cannot be negative or exceed 10 years!";
			response.put("error", error);
			return response;

		}

		employeeRepository.save(employee);
		String success = "Employee updated successfully!";
		response.put("success", success);
		return response;

	}

	public List<Employee> searchEmployee(String department) {

		List<Employee> allEmployees = getEmployee();
		List<Employee> filterEmployees = allEmployees.stream()
				.filter(emp -> emp.getDepartment().equalsIgnoreCase(department)).collect(Collectors.toList());
		return filterEmployees;
	}

}
