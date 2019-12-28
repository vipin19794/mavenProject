<html>
<head>

<meta charset="UTF-8">
<title>Register Page</title>
  <link rel="stylesheet" type="text/css" href="CSS/registration.css">


</head>
<body>

<div class="container">
    <h1 class="heading">Registration Form</h1>
    <div>
        <form class="form" name="myForm" action="stu_register" method="post" onsubmit="return validateForm()">
                    
             <div>
                 <lable>First Name:</h3></lable><br>
                 <input type="text" name="fname" id="fname"></input>
                 <span id="r_fname" class="text-danger font-weight-bold"></span>
             </div><br>    
             <div>   
                 <lable>Last Name:</h3></lable><br>
                 <input type="text" name="lname" id="lname"></input>
             </div><br> 
             <div>   
                 <lable>Mobile Number:</h3></lable><br>
                 <input type="text" name="mobile" id="mobile"></input>
             </div><br> 
             <div>   
                 <lable>Email:</h3></lable><br>
                 <input type="text" name="email" id="email"></input>
             </div><br> 
             <div>   
                 <lable>Parents Name:</h3></lable><br>
                 <input type="text" name="parents" id="parents"></input>
             </div><br> 
             <div>   
                 <lable>Parents Mobile No.:</h3></lable><br>
                 <input type="text" name="par_mobile" id="par_mobile"></input>
             </div><br> 
             <div>   
                 <lable>Current Address:</h3></lable><br>
                 <input type="text" name="cur_address" id="cur_address"></input>
             </div><br> 
             <div>   
                 <lable>Permanent Address:</h3></lable><br>
                 <input type="text" name="per_address" id="per_address"></input>
             </div><br>
             <div>   
                 <lable>Aria Pincode:</h3></lable><br>
                 <input type="text" name="pincode" id="pincode"></input>
             </div><br>
             <div>   
                 <lable>UserName:</h3></lable><br>
                 <input type="text" name="username" id="username"></input>
             </div><br>
             <div>   
                 <lable>Password:</h3></lable><br>
                 <input type="text" name="password" id="password"></input>
             </div><br>
             <div>
                  <input type="submit" class="button" value="submit">
             </div> 
        </form>    
   </div>
</div>

<script type="text/javascript">
            
function validateForm()
{
	  var fname = document.forms["myForm"]["fname"].value;
	  if (fname == "") 
	  {
	    alert("Please fill First Name field");
	    return false;
	  }
	  if (!isNaN(fname)) 
	  {
	    alert("Alphabets only First Name field");
	    return false;
	  }
	  
	  //////////////////////////////////////////////////////
	  var lname = document.forms["myForm"]["lname"].value;
	  if (lname == "") 
	  {
	    alert("Please fill Last Name field");
	    return false;
	  }
	  if (!isNaN(lname)) 
	  {
	    alert("Alphabets only Last Name field");
	    return false;
	  }
	  
	  ////////////////////////////////////////////////////////
	  var mobile = document.forms["myForm"]["mobile"].value;
	  if (mobile == "") 
	  {
	    alert("Please fill Mobile Number field");
	    return false;
	  }
	  if (isNaN(mobile)) 
	  {
	    alert("Number only Mobile Number field");
	    return false;
	  }
	  
	  ///////////////////////////////////////////////////////
	  var email = document.forms["myForm"]["email"].value;
	  var reg = /^(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
	  if (email == "") 
	  {
	    alert("Please fill email field");
	    return false;
	  }
	  if (reg.test(email) == false) 
	  {
	    alert("Enter Valid email");
	    return false;
	  }
	  
	  /////////////////////////////////////////////////////////////
	    var parents = document.forms["myForm"]["parents"].value;
	  if (parents == "") 
	  {
	    alert("Please fill Parents Name field");
	    return false;
	  }
	  if (!isNaN(parents)) 
	  {
	    alert("Alphabets only Parents Name field");
	    return false;
	  }
	  
      /////////////////////////////////////////////////////////////
      
      var par_mobile = document.forms["myForm"]["par_mobile"].value;
	  if (par_mobile == "") 
	  {
	    alert("Please fill Parents Mobile Number field");
	    return false;
	  }
	  if (isNaN(par_mobile)) 
	  {
	    alert("Number only Parents Mobile Number field");
	    return false;
	  }
	  
	  ///////////////////////////////////////////////////////////
	  var cur_address = document.forms["myForm"]["cur_address"].value;
	  if (cur_address == "") 
	  {
	    alert("Please fill Current Address field");
	    return false;
	  }
	  
	  //////////////////////////////////////////////////////////////
	  var per_address = document.forms["myForm"]["per_address"].value;
	  if (per_address == "") 
	  {
	    alert("Please fill Permanent Address field");
	    return false;
	  }
	  
	  ///////////////////////////////////////////////////////////////
	  var pincode = document.forms["myForm"]["pincode"].value;
	  if (pincode == "") 
	  {
	    alert("Please fill Pincode field");
	    return false;
	  }
	  if (isNaN(pincode)) 
	  {
	    alert("Number only Pincode field");
	    return false;
	  }
	  
	  /////////////////////////////////////////////////////////////////
	  var username = document.forms["myForm"]["username"].value;
	  if (username == "") 
	  {
	    alert("Please fill Username field");
	    return false;
	  }
	  
	  /////////////////////////////////////////////////////////////////
	  var password = document.forms["myForm"]["password"].value;
	  if (username == "") 
	  {
	    alert("Please fill Username field");
	    return false;
	  }
	  
}
            
</script>

</body>
</html>