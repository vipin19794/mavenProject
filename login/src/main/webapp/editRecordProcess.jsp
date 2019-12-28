<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String id = request.getParameter("id");
   int v = Integer.parseInt(id);
   
   try
   {
       String s = "select *from StudentRegister where id='"+v+"'";
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","vipin","admin@123");
       
       Statement st = con.createStatement();
       ResultSet rs;
       
       rs=st.executeQuery(s);
       while(rs.next())
       {%>
       
         <form action="edit" method="post">
                    
             <div>
                 <input type="text" name="sid" value="<%= rs.getString(1)%>"></input>
             </div><br>    
             <div>       
             <div>
                 <input type="text" name="fname" value="<%= rs.getString(2)%>"></input>
             </div><br>    
             <div>   
                 <input type="text" name="lname" value="<%= rs.getString(3)%>"></input>
             </div><br> 
             <div>   
                 <input type="text" name="mobile" value="<%= rs.getString(4)%>"></input>
             </div><br> 
             <div>   
                 <input type="text" name="email" value="<%= rs.getString(5)%>"></input>
             </div><br> 
             <div>   
                 <input type="text" name="parents" value="<%= rs.getString(6)%>"></input>
             </div><br> 
             <div>   
                 <input type="text" name="par_mobile" value="<%= rs.getString(7)%>"></input>
             </div><br> 
             <div>   
                 <input type="text" name="cur_address" value="<%= rs.getString(8)%>"></input>
             </div><br> 
             <div>   
                 <input type="text" name="per_address" value="<%= rs.getString(9)%>"></input>
             </div><br>
             <div>   
                 <input type="text" name="pincode" value="<%= rs.getString(10)%>"></input>
             </div><br>
             <div>   
                 <input type="text" name="username" value="<%= rs.getString(11)%>"></input>
             </div><br>
             <div>   
                 <input type="text" name="password" value="<%= rs.getString(12)%>"></input>
             </div><br>
             <div>
                  <input type="submit" class="button" value="Update">
             </div> 
             
        </form>    
    	   
      <%}
       
       
   }catch(Exception e){out.println(e);}
%>
</body>
</html>