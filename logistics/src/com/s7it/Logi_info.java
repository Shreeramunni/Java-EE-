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


@WebServlet("/Logi_info")
public class Logi_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		request.setAttribute("email",email);
	    String no=request.getParameter("number");
	    request.setAttribute("no", no);
	    String no1=(String)request.getAttribute("no");
		double number=Double.parseDouble(no1);
		String mode=request.getParameter("mode");
		String offer=request.getParameter("offer");
		String source=request.getParameter("source");
		String dest=request.getParameter("dest");
		try{
			String url="jdbc:mysql://127.0.0.1:3306/reachyou";
			String uname="root";
			String pass="root";
			Connection con= null;
			PreparedStatement st= null;
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url,uname,pass);
				String qry="insert into logistic (email,number,mode,offer,source,dest)"+" values(?,?,?,?,?,?)" ;
				st=con.prepareStatement(qry);
				st.setString(1,email);
				st.setDouble(2,number);
				st.setString(3,mode);
				st.setString(4,offer);
				st.setString(5,source);
				st.setString(6,dest);
				st.executeUpdate();
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		RequestDispatcher rd=request.getRequestDispatcher("logi_booked.jsp");
		rd.forward(request, response);
		}
}
