package com.bridgeLabz.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logout extends HttpServlet
{
    protected  void doPost(HttpServletRequest request, HttpServletResponse response)
    {
    	HttpSession session = request.getSession();
    	
    	try
    	{
    		session.removeAttribute("username");
    		session.invalidate();
    		response.sendRedirect("index.jsp");
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }
}
