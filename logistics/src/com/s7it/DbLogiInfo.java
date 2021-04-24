package com.s7it;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class DbLogiInfo {
	public static List<LogiInfo> getLogiInfoList() throws ClassNotFoundException,SQLException{
		ArrayList<LogiInfo> logistic= new ArrayList<>();
		
		String url="jdbc:mysql://127.0.0.1:3306/reachyou";
		String uname="root";
		String pass="root";
		Connection con= null;
		PreparedStatement st= null;
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,uname,pass);
			String qry="select * from logistic";
			st=con.prepareStatement(qry);
			ResultSet result=st.executeQuery();
		
			while(result.next())
			{
				String email=result.getString("email");
				double number=Double.parseDouble(result.getString("number"));
				String mode=result.getString("mode");
				String offer=result.getString("offer");
				String source=result.getString("source");
				String dest=result.getString("dest");
				logistic.add(new LogiInfo(email,number,mode,offer,source,dest));
			}
		
		return logistic;
		
	}
}



