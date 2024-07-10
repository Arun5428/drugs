<%@page import="java.sql.*"%>
<%

String user=request.getParameter("user");
String dname=request.getParameter("dname");
String symp=request.getParameter("symp");
String dise=request.getParameter("dise");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smarthealth","root","root");
PreparedStatement ps=con.prepareStatement("Insert into request(user,dname,symp,dise)values('"+user+"','"+dname+"','"+symp+"','"+dise+"')");
System.out.println(ps);
ps.executeUpdate();

   out.println("<script type=\"text/javascript\">"); 			
   out.println("alert(\" Make a Request Successfully \")");
   out.println("</script>");   
   RequestDispatcher rd=request.getRequestDispatcher("req.jsp");
   rd.include(request, response);



%>
