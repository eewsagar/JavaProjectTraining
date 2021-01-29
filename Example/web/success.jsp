<%-- 
    Document   : success
    Created on : Jan 28, 2021, 11:50:13 PM
    Author     : Sagar Varma
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="servlet.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style> 
    /*css*/
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>User registered successfully !!!</h1>
        
        <table style="border: 1px solid black; border-collapse: collapse;"> 
    <tr style="border: 1px solid black; border-collapse: collapse;">
    <th>SrNo</th>
    <th>ID</th>
    <th>First Name</th>
    <th>LAst Name</th>
    <th>Gender</th>
    <th>Mobile</th>
    <th>Email Id</th>
    <th>Status</th>
    
    </tr>
	<%
	int srno=1;
	Connection con = DbConnection.getConnection();
	PreparedStatement ps = con.prepareStatement("select * from user");
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
		String id = rs.getString("id");
		String email = rs.getString("email");
		%>
             
		<tr>
		<td><%=srno++  %></td>
		<td>100<%=rs.getString("id") %></td>
		<td><%=rs.getString("fname") %></td> 
                <!--database attribute name--> 
		<td><%=rs.getString("lname") %></td>
		<td><%=rs.getString("gender") %></td>
		<td><%=rs.getString("mobile") %></td>
		<td><%=rs.getString("email") %></td>
		<td><%=rs.getString("status") %></td>
		<%
	}
	%>
	</tr>
      </table> 
        
        <h2><a href="registration.jsp"> New Registration ?</a></h2>
    </body>
</html>
