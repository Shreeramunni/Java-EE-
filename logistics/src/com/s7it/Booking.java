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

/**
 * Servlet implementation class Booking
 */
@WebServlet("/Booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String seat_num=request.getParameter("seat_num");
	   
		try{
			String url="jdbc:mysql://127.0.0.1:3306/ticket_reservation";
			String uname="root";
			String pass="root";
			Connection con= null;
			PreparedStatement st= null;
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url,uname,pass);
				String qry="update seats set Availability='no' where Name=?" ;
				st=con.prepareStatement(qry);
				st.setString(1,seat_num);
				st.executeUpdate();
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		RequestDispatcher rd=request.getRequestDispatcher("ticket.jsp");
		rd.forward(request, response);
		}
	}


