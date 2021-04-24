package com.s7it;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Logi_register")
public class Logi_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u_name=request.getParameter("uid");
	    String pwd=request.getParameter("pid");
		try{
			String url="jdbc:mysql://127.0.0.1:3306/reachyou";
			String uname="root";
			String pass="root";
			Connection con= null;
			PreparedStatement st= null;
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url,uname,pass);
				String qry="insert into account (user,pass)"+" values(?,?)" ;
				st=con.prepareStatement(qry);
				st.setString(1,u_name);
				st.setString(2,pwd);
				st.executeUpdate();
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		RequestDispatcher rd=request.getRequestDispatcher("logi_homepage.jsp");
		rd.forward(request, response);
		}
}
