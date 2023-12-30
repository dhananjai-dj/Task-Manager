package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String mobileNumber = request.getParameter("mobileNumber");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String sql = "INSERT INTO user (first_name, last_name, email, mobile_number, address, username, password_hash) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/jsp_servlet","root","dhananjai");
				PreparedStatement stmt = con.prepareStatement(sql);
				stmt.setString(1, firstName);
				stmt.setString(2, lastName);
				stmt.setString(3, email);
				stmt.setString(4, mobileNumber);
				stmt.setString(5, address);
				stmt.setString(6, userName);
				stmt.setString(7, password);
				stmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("LoginToDo.jsp");
	}

}
