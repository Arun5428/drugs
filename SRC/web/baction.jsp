<%@page import="java.sql.*"%>
<%

String user=request.getParameter("user");
String height=request.getParameter("height");
String weight=request.getParameter("weight");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smarthealth","root","root");
PreparedStatement ps=con.prepareStatement("insert into bmi(user,height,weight)value('"+user+"','"+height+"','"+weight+"')");
System.out.println(ps);
ps.executeUpdate();

   out.println("<script type=\"text/javascript\">"); 			
   out.println("alert(\" '"+user+"' BMI Details Upload Successfully \")");
   out.println("</script>");   
   RequestDispatcher rd=request.getRequestDispatcher("bmi.jsp");
   rd.include(request, response);

%>
