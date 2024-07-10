<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String user,pass;
user=request.getParameter("user");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smarthealth","root","root");
PreparedStatement ps1=con.prepareStatement("select * from ureg where user='"+user+"'and pass='"+pass+"' ");
System.out.println(ps1);
ResultSet rs=ps1.executeQuery();
if(rs.next()){
    session.setAttribute("user", user);
     
out.println("<script>"
                            +"alert('WELCOME "+user+"')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/uhome.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/user.jsp");
                    rd.include(request, response);
}
%>

