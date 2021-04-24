package com.s7it;

public class LogiInfo {

	double number;
	String email,mode,offer,source,dest; 
	
	public LogiInfo(String email,double number,String mode,String offer,String source,String dest)
	{
		this.email=email;
		this.number=number;
		this.mode=mode;
		this.offer=offer;
		this.source=source;
		this.dest=dest;
	}

	public String getemail() {
		return email;
	}

	public double getno() {
		return number;
	}


	public String getsource() {
		return source;
	}

	public String getdest() {
		return dest;
	}

	public String getmode() {
		return mode;
	}

	
	public String getoffer() {
		return offer;
	}
	
}


