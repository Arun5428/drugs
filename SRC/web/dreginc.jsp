<%@page import="java.sql.*"%>
<%

String dname=request.getParameter("dname");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String spec=request.getParameter("spec");

String contact=request.getParameter("contact");
String location=request.getParameter("location");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smarthealth","root","root");
PreparedStatement ps=con.prepareStatement("insert into dreg(dname,pass,email,spec,contact,location)value('"+dname+"','"+pass+"','"+email+"','"+spec+"','"+contact+"','"+location+"')");
System.out.println(ps);
ps.executeUpdate();

   out.println("<script type=\"text/javascript\">"); 			
   out.println("alert(\" '"+dname+"' Register Successfully \")");
   out.println("</script>");   
   RequestDispatcher rd=request.getRequestDispatcher("doctor.jsp");
   rd.include(request, response);




%>
