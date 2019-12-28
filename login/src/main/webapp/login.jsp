<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Login Page</title>
  <link rel="stylesheet" type="text/css" href="CSS/login.css">


</head>
<body>

<div class="container">
    <h1 class="heading">Login Form</h1>
    <div>
        <form class="form" action="stu_login" method="post">
                    
             <div>
                 <lable>UserName:</h3></lable><br>
                 <input type="text" name="username" id="username"></input>
             </div><br>    
             <div>   
                 <lable>password:</h3></lable><br>
                 <input type="password" name="password" id="password"></input>
             </div><br>   
             <div>
                  <input type="submit" class="button" value="submit">
             </div> 
        </form>    
   </div>
</div>

</body>
</html>