<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
    if(session.getAttribute("username") == null)
    {
    	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
    	rd.forward(request, response);
    }	
%>
<html>
    
    <head>
        <title>Profile Page</title>
    </head>
    
    <body>
    <div>
       <form action="stu_logout" method="post">
          <input type="submit" value="logout">
       </form>
    </div>
    
    <table border="1">
         
    <tr>
        <th>ID:</th>
        <th>First Name:</th>
        <th>Last Name:</th>
        <th>Mobile:</th>
        <th>Email:</th>
        <th>Parents Name:</th>
        <th>Parents Mobile:</th>
        <th>Current Address:</th>
        <th>Permanent Address:</th>
        <th>pin code:</th>
        <th>user name:</th>
        <th>password:</th>
        <th></th>
    </tr>
    
    <%
        
        String value = request.getParameter("username");
        String s="select * from StudentRegister where username='"+value+"'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","vipin","admin@123");
        
        Statement st = con.createStatement();
        
        ResultSet re;
        
        re=st.executeQuery(s);
        
        while(re.next())
        { %>    
            
            <tr>
                <td><%= re.getString(1)%></td>
                <td><%= re.getString(2)%></td>
                <td><%= re.getString(3)%></td>
                <td><%= re.getString(4)%></td>
                <td><%= re.getString(5)%></td>
                <td><%= re.getString(6)%></td>
                <td><%= re.getString(7)%></td>
                <td><%= re.getString(8)%></td>
                <td><%= re.getString(9)%></td>
                <td><%= re.getString(10)%></td>
                <td><%= re.getString(11)%></td>
                <td><%= re.getString(12)%></td>
 
            </tr>
        <%}%>
        
        </table>
              
    </body>
    
    
    
</html>
