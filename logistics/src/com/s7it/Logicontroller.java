package com.s7it;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List; 
import java.util.ArrayList; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Logicontroller")
public class Logicontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			List<LogiInfo> logistic=(ArrayList<LogiInfo>)DbLogiInfo.getLogiInfoList();
			request.setAttribute("logistic", logistic);
			
			
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		RequestDispatcher rd=request.getRequestDispatcher("logi_details.jsp");
		rd.forward(request, response);
		}
	

}



