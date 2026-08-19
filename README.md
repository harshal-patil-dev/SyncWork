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

<img width="958" height="437" alt="dashboard png" src="https://github.com/user-attachments/assets/68c787f1-fc3c-432d-92d3-5e7b81d09fe1" />

### ➕ Add Employee
Allows users to add a new employee with the following information: Employee Name, Department, Salary, Experience, and Employee Status.

<img width="960" height="437" alt="add-employee png" src="https://github.com/user-attachments/assets/434e04ba-d57e-4b90-a124-614c18ee91a1" />

### 👥 View Employees
Displays all employees stored in the database. The employee table includes ID, Name, Department, Salary, Experience, Status, Update, and Delete options.

<img width="960" height="438" alt="employees png" src="https://github.com/user-attachments/assets/5534619b-4cdb-4b3e-88b1-038a2e9df8f4" />

### 🔎 Search Employee
Employees can be filtered by department. Available departments: IT, HR, Testing, Marketing, and Sales.
<img width="959" height="437" alt="search-employee png" src="https://github.com/user-attachments/assets/e99ff004-c537-490a-bb08-bfa248f59825" />

### ✏️ Update Employee
Allows users to update existing employee information.

<img width="960" height="437" alt="update-employee png" src="https://github.com/user-attachments/assets/3981e0ca-0003-4459-b803-8f1efda60239" />

### 🗑️ Delete Employee
The delete operation first finds the employee by ID and displays the employee information before deletion.

<img width="958" height="437" alt="delete-employee png" src="https://github.com/user-attachments/assets/6cda11a7-273f-4fd5-8ff7-7b9a3e579a9e" />

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
spring.datasource.url=jdbc:mysql://localhost:3306/employee_database?createDatabaseIfNotExist=true&allowPublicKeyRetrieval=true&useSSL=false
spring.datasource.username=root
spring.datasource.password=your_password
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
server.port=8080

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
