package in.aj.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class MyServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		String name = req.getParameter("uname");
		String pass = req.getParameter("pass");
		String email = req.getParameter("email");
		String gender = req.getParameter("Gender");
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/User","root","Riyajain@2002");
			PreparedStatement ps = con.prepareStatement("INSERT INTO info (uname,password,email,gender) values (?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, pass);
			ps.setString(3, email);
			ps.setString(4, gender);
			int n = ps.executeUpdate();
			if(n>0)
			{
				resp.setContentType("text/html");
				out.println("<h3 style = 'color: green;'>User Registered Sucessfully<h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
			}
			else
			{
				resp.setContentType("text/html");
				out.println("<h3 style = 'color: red;'>User is not Registered Sucessfully<h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
				
			}

		}
		catch(Exception e)
		{
			e.printStackTrace();
			resp.setContentType("text/html");
			out.println("<h3 style = 'color: red;'>Exception Occured :"+e.getMessage()+"<h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
			rd.include(req, resp);
			
		}
	}

}
