package com.bridgeLabz.controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register extends HttpServlet
{

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  
	{
		String fname        = request.getParameter("fname");
		String lname         = request.getParameter("lname");
		String mobile1        = request.getParameter("mobile");
	    long mobile          = Long.parseLong(mobile1);
		String email         = request.getParameter("email");
		String parents        = request.getParameter("parents");
		String par_mobile1         = request.getParameter("par_mobile");
         long par_mobile        = Long.parseLong(par_mobile1);
		String cur_address        = request.getParameter("cur_address");
		String per_address        = request.getParameter("per_address");
		String pincode        = request.getParameter("pincode");
		int pincode1          = Integer.parseInt(pincode);
		String username         = request.getParameter("username");
		String password        = request.getParameter("password");
		
	    String s="insert into StudentRegister(fName,lName,Mobile,email,parName,parMobile,curAddress,perAddress,pincode,username,password) value('"+fname+"','"+lname+"','"+mobile+"','"+email+"','"+parents+"','"+par_mobile+"','"+cur_address+"','"+per_address+"','"+pincode1+"','"+username+"','"+password+"')";
   	    try 
   	    {
   	        Class.forName("com.mysql.cj.jdbc.Driver");
   	 
   	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","vipin","admin@123");
   	        Statement st = con.createStatement();

   	        st.executeUpdate(s);

             response.sendRedirect("index.jsp");   	        
   	 
   	    } 
   	    catch (Exception e)
   	    {
   	        e.printStackTrace();
   	    }
	 }
}
