<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String dname,pass;
dname=request.getParameter("user");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smarthealth","root","root");
PreparedStatement ps1=con.prepareStatement("select * from dreg where dname='"+dname+"'and pass='"+pass+"' ");
System.out.println(ps1);
ResultSet rs=ps1.executeQuery();
if(rs.next()){
    session.setAttribute("dname", dname);
     
out.println("<script>"
                            +"alert('WELCOME "+dname+"')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/dhome.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/doctor.jsp");
                    rd.include(request, response);
}
%>

