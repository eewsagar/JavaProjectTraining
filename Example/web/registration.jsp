<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Registration Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.ui.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.tabs.setup.js"></script>
<script language = "Javascript">
                    
    function validation()
    {

       

         if(document.getElementById("fname").value == ""){
         alert("Enter Correct FirstName");
         document.addnewuser.fname.focus();
         return false;
         }
        ///////password 

        if(document.getElementById("lname").value == ""){
         alert("Enter LastName");
         document.addnewuser.lname.focus();
         return false; 

         }
        if(document.getElementById("gender").value == "0"){
            document.addnewuser.gender.focus();
           alert("Please select gender");
           return false; 
        }
         
        
         if(document.getElementById("contactNo").value == ""){
             alert("Enter ContactNumber");
             document.addnewuser.contactNo.focus();
             return false; 

             }
         if(document.getElementById("email").value == ""){
             alert("Enter Email");
             document.addnewuser.email.focus();
             return false; 

             }
         
         if(document.getElementById("password").value == ""){
         alert("Enter Password");
         document.addnewuser.password.focus();
         return false; 

         }
       
         return true;

    }      
</script>
<body>
<%
if(request.getParameter("success")!=null){
	   out.println("<script>alert('Successfully registred...');</script>"); 
	}

if(request.getParameter("Exist")!=null){
   out.println("<script>alert('Email already exists...'); document.uRegister.email.focus();</script>"); 
}
%>
<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      
      
      
      <br class="clear" />
    </div>
    
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo" style="width: 100%">
     Logo Here
     <hr>
    </div>
    
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topnav">
 <ul>
        <li class="last"><a href="index.jsp">Home </a></li>
        <li><a href="#">User</a></li>
        </li>
        
      </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="featured_slide">
    <div id="featured_wrap">
      <div id="featured_content">
          <hr>
       Slider here
       <hr>
      </div>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
    <div id="hpage" align="center">
      
      
       <form action="Registration" name="addnewuser" method="post" onsubmit="return validation()"> 
	        <table cellpadding="5" cellspacing="5" border="0" width="350" >
				<tr>
					<td colspan="3" class="ttlbgcolor"><div style="margin:5px">New Registration !</div> </td>
				</tr>
				<tr>
					
					<td><strong>First Name</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="fname" id="fname" /></td>
				</tr>
				<tr>
					
					<td><strong>Last Name</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="lname" id="lname"/></td>
				</tr>
				<tr>
					
					<td><strong>Gender</strong></td>
					<td><strong>:</strong></td>
					<td><select name="gender" id="gender">
					<option name="0" value="0">-- Select --</option>
					<option name="male" value="Male">Male</option>
					<option name="female" value="FeMale">FeMale</option>
					</select></td>
				</tr>
				<tr>
					
					<td><strong>Contact No.</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="contactNo" id="contactNo" /></td>
				</tr>
				<tr>
					
					<td><strong>Email</strong></td>
					<td><strong>:</strong></td>
                                        <td><input type="email" name="email" id="email" /></td>
				</tr>
				
				<tr>
					<td><strong>Password</strong></td>
					<td><strong>:</strong></td>
					<td><input type="password" name="password" id="password"/></td>
				</tr>
				<tr>
					<td colspan="3" align="center"><div style="margin-right:20px">&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Register" name="submit" /></div></td>
				</tr>
			</table>
			</form>
        
      
      <br class="clear" />
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="footer">
    <div id="newsletter">
      
    </div>
    <div class="footbox">
      
    </div>
    <div class="footbox">
      
    </div>
    <div class="footbox">
      
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; - All Rights Reserved - </p>
    
    <br class="clear" />
  </div>
</div>
</body>
</html>