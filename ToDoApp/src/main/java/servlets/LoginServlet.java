package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/jsp_servlet","root","dhananjai");
			PreparedStatement stmt = con.prepareStatement("select * from user where username = ? and password_hash = ? ");
			stmt.setString(1,name );
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				session.setAttribute("userId", rs.getInt(1));
				response.sendRedirect("TaskView.jsp");
				return;
			}
				
			} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("LoginToDo.jsp");
	}

}
