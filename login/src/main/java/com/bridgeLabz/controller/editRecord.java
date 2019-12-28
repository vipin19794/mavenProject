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

@WebServlet("/edit")
public class editRecord extends HttpServlet
{

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  
	{
		String id1        = request.getParameter("sid");
		int id            = Integer.parseInt(id1);
		
		
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
		String pincode1       = request.getParameter("pincode");
		int pincode          = Integer.parseInt(pincode1);
		String username         = request.getParameter("username");
		String password        = request.getParameter("password");
		
	    String s="UPDATE StudentRegister SET fName='"+fname+"',lName='"+lname+"',Mobile='"+mobile+"',email='"+email+"',parName='"+parents+"',parMobile='"+par_mobile+"',curAddress='"+cur_address+"',perAddress='"+per_address+"',pincode='"+pincode+"',username='"+username+"',password='"+password+"' WHERE id='"+id+"'";
   	    try 
   	    {
   	        Class.forName("com.mysql.cj.jdbc.Driver");
   	 
   	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","vipin","admin@123");
   	        Statement st = con.createStatement();

   	        st.executeUpdate(s);

             response.sendRedirect("editRecord.jsp");   	        
   	 
   	    } 
   	    catch (Exception e)
   	    {
   	        e.printStackTrace();
   	    }
	 }
}
