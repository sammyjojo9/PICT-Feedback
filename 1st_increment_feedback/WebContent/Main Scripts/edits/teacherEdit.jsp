<%@page import="java.sql.*"%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<% 
String oid=request.getParameter("oid");
String name=request.getParameter("name");
String dept=request.getParameter("dept");
String db_name = (String)session.getAttribute("curdb");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db_name,"Deva", "dev123456");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update teachers set name='"+name+"',dept='"+dept+"' where id="+oid+"");
response.sendRedirect("http://localhost:8080/1st_increment_feedback/Main%20Scripts/Teachers.jsp");
}
catch(Exception e){
	response.sendRedirect("http://localhost:8080/1st_increment_feedback/Main%20Scripts/Teachers.jsp?error=1");

System.out.println(e);
}
      
%>
