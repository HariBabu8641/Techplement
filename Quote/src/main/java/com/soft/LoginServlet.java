package com.soft;
import javax.servlet.http.HttpServlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.UserDao;
import com.dao.UserDaoImpl;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet
{
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		       String username = request.getParameter("username");
		        String password = request.getParameter("password");
		      
					UserDao userDao=(UserDao) new UserDaoImpl();
						if (userDao.isValidUser(username,password))
						{	     
							HttpSession session = request.getSession();
						    session.setAttribute("username", username);
						    response.sendRedirect("Welcome.jsp");
						} 
						else
						{
						    response.sendRedirect("login.jsp?error=1");	
						    System.out.println("There was an error");					
}
}
}

