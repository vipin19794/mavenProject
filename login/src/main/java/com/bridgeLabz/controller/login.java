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
import javax.servlet.http.HttpSession;


public class login extends HttpServlet
{

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  
	{
		System.out.println("serblet");
		String user        = request.getParameter("username");
		String pass         = request.getParameter("password");
		
	    String s="select *from StudentRegister where username='"+user+"' and password='"+pass+"'";
   	    try 
   	    {
   	        Class.forName("com.mysql.cj.jdbc.Driver");
   	 
   	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","vipin","admin@123");
   	        Statement st = con.createStatement();
   	        ResultSet rs;
   	        rs = st.executeQuery(s);

   	     if(rs.next())
         {
   	    	HttpSession session=request.getSession(); 
   	    	session.setAttribute("username", user);
   	    	request.setAttribute("username", user);
            request.getRequestDispatcher("studentProfile.jsp").forward(request, response);

         }    
         else
         {    
        	 response.sendRedirect("index.jsp");
         }  	        
   	 
   	    } 
   	    catch (Exception e)
   	    {
   	        e.printStackTrace();
   	    }
	 }
}
