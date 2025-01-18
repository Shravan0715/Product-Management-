CRUD Application using Java Spring Framework

📖 Project Overview

This project is a CRUD (Create, Read, Update, Delete) application built using the Java Spring Framework. It demonstrates the implementation of user registration and login functionalities along with a complete product management system. The application emphasizes modular design, clean code architecture, and scalability.

🛠️ Key Features

1️⃣ User Authentication:

Registration: Secure user registration functionality with input validation.

Login: Role-based authentication implemented using Spring Security.

2️⃣ Product Management:

Add Product: Allows users to create new products with required details.

Fetch Products: Retrieve product information with options for filtering and pagination.

Update Product: Modify existing product details seamlessly.

Delete Product: Remove products with proper authorization checks.

⚙️ Technical Stack

Backend:

Java: Core language for application logic.

Spring Framework: Used for dependency injection and application context.

Spring Boot: Simplified application setup and development.

Spring Security: For authentication and role-based authorization.

Hibernate: ORM for database interaction.

Database:

H2 Database: Lightweight in-memory database for testing.

Tools:

Maven: For project dependency management.

Postman: For API testing.

🔧 Implementation Details

1. Configuration Class:

Set up Spring Beans, DataSource, and JPA configurations programmatically.

2. Controller Class:

Handled RESTful API endpoints for user and product operations.

3. DTO (Data Transfer Object):

Ensured efficient data transfer between client and server.

4. DAO (Data Access Object):

Used Spring Data JPA for database operations.

5. CRUD Operations:

Developed comprehensive APIs for each CRUD functionality.

🚀 How to Run the Project

Clone the Repository:

git clone <repository_url>

Navigate to the Project Directory:

cd <project_directory>

Build the Project:

mvn clean install

Run the Application:

mvn spring-boot:run

Access the Application:

API endpoints can be accessed via Postman or a browser at http://localhost:8080.

🌟 Outcomes

Enhanced understanding of Spring Framework components.

Hands-on experience with developing scalable and modular applications.

Efficient handling of database interactions using Hibernate and JPA.

📂 Folder Structure

project-directory/
|
├── src/main/java/com/example
│   ├── config/        # Configuration classes
│   ├── controller/    # Controller classes
│   ├── dto/           # Data Transfer Objects
│   ├── dao/           # Data Access Objects
│   ├── model/         # Entity classes
│   └── service/       # Business logic
|
├── src/main/resources
│   ├── application.properties  # Application configuration
│   └── data.sql                # Initial test data (if any)
|
├── pom.xml          # Maven dependencies
└── README.md        # Project documentation

🌐 GitHub Repository

The full source code for this project is available here: GitHub Repository

📞 Contact

Feel free to reach out for collaboration or queries:

Email: shravangalagali573@gmail.com

LinkedIn: Shravan S. Galagali

Thank you for exploring the project! 😊
