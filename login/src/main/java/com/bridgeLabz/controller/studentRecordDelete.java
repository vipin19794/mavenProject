package com.bridgeLabz.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class studentRecordDelete extends HttpServlet
{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
{
	doPost(req, resp);
}
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  
	{
		String i = request.getParameter("id");
		int id = Integer.parseInt(i);
		System.out.println(i);
		
	    String s="delete from StudentRegister where id='"+id+"'";
   	    try 
   	    {
   	        Class.forName("com.mysql.cj.jdbc.Driver");
   	 
   	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","vipin","admin@123");
   	        Statement st = con.createStatement();
   	        st.executeUpdate(s);
   	        
   	        response.sendRedirect("studentRecord.jsp");
   	 
   	    } 
   	    catch (Exception e)
   	    {
   	        e.printStackTrace();
   	    }
	 }
}
