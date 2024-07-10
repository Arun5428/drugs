<%@page import="java.sql.*"%>
<%
String sno=request.getParameter("sno");
String user=request.getParameter("user");
String need=request.getParameter("need");
String avoid=request.getParameter("avoid");
String drug=request.getParameter("drug");
String sugg=request.getParameter("sugg");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealth","root","root");
PreparedStatement ps=con.prepareStatement("update request set need='"+need+"',avoid='"+avoid+"', drug='"+drug+"',sugg='"+sugg+"' ,status='Solution Given' where sno='"+sno+"'");
System.out.println(ps);
ps.executeUpdate();

   out.println("<script type=\"text/javascript\">"); 			
   out.println("alert(\" Give Solution Successfully \")");
   out.println("</script>");   
   RequestDispatcher rd=request.getRequestDispatcher("dusereq.jsp");
   rd.include(request, response);



%>
