


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><h1>FCGRNGDEV</h1>
<table border="1">
<tr>
<td> LOCATION_ID</td>
<td>STREET_ADDRESS</td>
<td>POSTAL_CODE </td>
<td>CITY</td>
<td>STATE_PROVINCE</td>
<td>COUNTRY_ID</td>                           LOCATION_ID	STREET_ADDRESS	POSTAL_CODE	CITY	STATE_PROVINCE	COUNTRY_ID
</tr>
<%
 try{
	 Class.forName("oracle.jdbc.driver.OracleDrive"); 
	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","admin");
	 Statement stmt =con.createStatement();  
	 ResultSet rs = stmt.executeQuery("select * from locations"); 
	 while(rs.next()){
		 
	 %> 
	 <tr>
	 <td><%=rs.getString(1) %></td>
	 <td><%=rs.getString("STREET_ADDRESS") %></td>
	 <td><%=rs.getString("POSTAL_CODE") %></td>
	 <td><%=rs.getString("CITY") %></td>
	 <td><%=rs.getString("STATE_PROVINCE") %></td>
	 <td><%=rs.getString("COUNTRY_ID") %></td>
	 </tr> 
	 <%
	 }
	 con.close();
	 } catch (Exception e) {
	 e.printStackTrace();
	 }
 
 
 
 %>
</table>         
</body>
</html>
