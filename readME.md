# Login Authentication System

A simple Java web application that demonstrates user registration and login authentication using **JSP, Servlets, JDBC, MySQL, Maven, and Apache Tomcat**.

## Features

- User Registration
- User Login
- Login using either **Username** or **Email**
- Password validation (minimum 8 characters)
- Password visibility toggle (Show/Hide)
- Session-based authentication
- MySQL database integration
- Bootstrap-based responsive UI

---

## Technologies Used

- Java 25
- JSP & Jakarta Servlets
- Apache Tomcat 11
- Maven
- MySQL
- JDBC
- Bootstrap 5

---

## Prerequisites

Before running this project, make sure the following are installed:

- Java JDK 25 (or compatible version)
- Apache Maven
- Apache Tomcat 11
- MySQL Server
- MySQL Workbench (optional but recommended)

---

## Database Setup

Create a MySQL database named:

```sql
login_system
```

Create the required table:

```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);
```

---

## Configure Database Connection

Open:

```
src/main/java/com/login/DBConnection.java
```

Update the following values according to your local MySQL installation:

```java
private static final String URL = "jdbc:mysql://localhost:3306/login_system";
private static final String USERNAME = "your_mysql_username";
private static final String PASSWORD = "your_mysql_password";
```

---

## Building the Project

From the project directory, run:

```bash
mvn clean package
```

This generates a WAR file inside:

```
target/
```

Example:

```
LoginAuthenticationSystem.war
```

---

## Deploying

Deploy the generated WAR file to an Apache Tomcat server.

After deployment, access the application from your browser:

```
http://localhost:8080/LoginAuthenticationSystem/
```

(The context path may vary depending on your Tomcat configuration.)

---

## Project Structure

```
src
├── main
│   ├── java
│   │   └── com
│   │       └── login
│   │           ├── DBConnection.java
│   │           ├── LoginServlet.java
│   │           ├── RegisterServlet.java
│   │           ├── User.java
│   │           └── UserDAO.java
│   │
│   └── webapp
│       ├── index.jsp
│       ├── login.jsp
│       ├── register.jsp
│       ├── home.jsp
│       └── style.css
```

---

## Notes

- This project stores passwords in plain text for demonstration purposes only.
- In a production application, passwords should be securely hashed (e.g. BCrypt).
- A local MySQL server is required for the application to function.

---

## Author

**Vedant Sanghai**