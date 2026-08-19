# SyncWork - Employee Management System

SyncWork is a web-based Employee Management System built using Java, Spring Boot, JSP, Hibernate, and MySQL. The application provides a simple and professional interface to manage employee records and perform common workforce management operations.

---

## 🚀 Features

- Add new employees
- View all employees
- Search employees by department
- Update employee information
- Delete employee records
- Employee validation
- Employee status management
- Department management
- Salary and experience validation
- Success and error response pages
- Professional and responsive user interface

---

## 🛠️ Technologies Used

- Java
- Spring Boot
- Spring MVC
- JSP
- JSTL
- Hibernate
- Spring Data JPA
- MySQL
- HTML5
- CSS3
- Maven
- Eclipse IDE

---

## 📌 Project Modules

### 🏠 Dashboard
The dashboard provides an overview of the SyncWork Employee Management System and provides quick access to employee management operations.
![Dashboard]<img width="960" height="437" alt="add-employee png" src="https://github.com/user-attachments/assets/a30c5662-eb8d-41f8-8d74-b57a600b74d5" />

### ➕ Add Employee
Allows users to add a new employee with the following information: Employee Name, Department, Salary, Experience, and Employee Status.
![Add Employee](screenshots/add-employee.png)

### 👥 View Employees
Displays all employees stored in the database. The employee table includes ID, Name, Department, Salary, Experience, Status, Update, and Delete options.
![Employees](screenshots/employees.png)

### 🔎 Search Employee
Employees can be filtered by department. Available departments: IT, HR, Testing, Marketing, and Sales.
![Search Employee](screenshots/search-employee.png)

### ✏️ Update Employee
Allows users to update existing employee information.
![Update Employee](screenshots/update-employee.png)

### 🗑️ Delete Employee
The delete operation first finds the employee by ID and displays the employee information before deletion.
![Delete Employee](screenshots/delete-employee.png)

---

## ✅ Validation

### Employee Name
- Minimum 2 characters
- Maximum 50 characters
- Letters and spaces are allowed

### Salary
- Salary must be greater than ₹15,000

### Experience
- Experience cannot be negative
- Maximum experience allowed is 10 years

---

## 🗄️ Database

The application uses MySQL for storing employee information.

### Employee Table
The employee records contain information such as Employee ID, Employee Name, Department, Salary, Experience, and Status.

---

## 🔄 Application Flow

```text
User ➔ JSP ➔ Spring MVC Controller ➔ Service Layer ➔ Repository ➔ Hibernate / JPA ➔ MySQL Database
```

---

## 📂 Project Structure

```text
src
 └── main
     ├── java
     │   └── com.tka
     │       ├── controller
     │       ├── service
     │       ├── repository
     │       └── entity
     ├── resources
     │   └── application.properties
     └── webapp
         └── WEB-INF
             └── views
                 ├── home.jsp
                 ├── add-employee.jsp
                 ├── get-employee.jsp
                 ├── update-employee.jsp
                 ├── update-employee-form.jsp
                 ├── delete-employee.jsp
                 ├── delete-employee-form.jsp
                 ├── success-message.jsp
                 └── error-message.jsp
```

---

## ⚙️ How to Run

### 1. Clone the Repository
```bash
git clone https://github.com/harshal-patil-dev/SyncWork.git
```

### 2. Open the Project
Open the project in Eclipse IDE as a Maven project.

### 3. Configure MySQL
Create a MySQL database and update the database configuration in `application.properties`:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/syncwork_db
spring.datasource.username=root
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

### 4. Run the Application
Run the Spring Boot application using your IDE.

### 5. Open in Browser
```text
http://localhost:8080/employee-managment-system/home
```

---

## 🎯 Future Improvements

- Employee authentication and login
- Role-based access control
- Pagination
- Employee profile page
- Advanced employee search
- Sorting and filtering
- REST API integration
- React frontend
- Employee dashboard statistics

---

## 👨‍💻 Author

**Harshal Patil**  
*Java & Full Stack Development Learner*  

⭐ If you find this project useful, consider giving the repository a star on GitHub. #SyncWork
