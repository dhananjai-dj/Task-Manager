# Project README

## Project Title: Task Management System

### Overview
This project is a simple Task Management System implemented using JavaServer Pages (JSP), Servlets, and Java Standard Tag Library (JSTL). It provides functionalities such as user authentication, task creation, task deletion, and task viewing.

### Technologies Used
- Java
- JSP (JavaServer Pages)
- Servlets
- JSTL (Java Standard Tag Library)
- MySQL (Database)
- HTML/CSS

### Project Structure

#### 1. **LoginServlet.java**
   - This servlet handles user login. It authenticates the user by checking the username and password against the database.

#### 2. **LogoutServlet.java**
   - This servlet handles user logout. It invalidates the user's session.

#### 3. **SignUpServlet.java**
   - This servlet handles user registration. It inserts new user information into the database.

#### 4. **AddTask.jsp**
   - JSP page for adding a new task. It includes a form to input task details.

#### 5. **Error.jsp**
   - JSP page to display errors in case of deletion issues.

#### 6. **TaskView.jsp**
   - JSP page displaying the user's tasks. It includes a table with task details and options to delete tasks.

#### 7. **ToDoController1.jsp**
   - JSP page handling the insertion of a new task into the database.

#### 8. **ToDoController2.jsp**
   - JSP page handling the deletion of a task from the database.

#### 9. **SignUp.jsp**
   - JSP page for user registration. It includes a form to input user details.

#### 10. **LoginToDo.jsp**
   - JSP page for user login. It includes a form for username and password input.

### Database Configuration
- Database Name: jsp_servlet
- Database Connection URL: jdbc:mysql://localhost/jsp_servlet
- Database Username: root
- Database Password: dhananjai

### Running the Project
1. **Database Setup:**
   - Create a MySQL database named `jsp_servlet`.
   - Configure the database connection parameters in the servlets where necessary.

2. **Deployment:**
   - Deploy the project on a Servlet container such as Apache Tomcat.

3. **Accessing the Application:**
   - Open a web browser and navigate to the application using the appropriate URL (e.g., http://localhost:8080/your-web-app).

### Notes
- Ensure that the MySQL JDBC driver is included in the project dependencies.
- The project assumes a basic understanding of Java web development, JSP, and Servlets.
- For security reasons, it is recommended to use encrypted passwords and implement additional security measures in a production environment.



### Acknowledgments
- This project is based on the principles of Java web development and follows best practices in coding standards.

