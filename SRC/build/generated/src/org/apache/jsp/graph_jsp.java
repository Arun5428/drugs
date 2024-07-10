package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

public final class graph_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");

Gson gsonObj = new Gson();
Map<Object,Object> map = null;
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealth", "root", "root");
PreparedStatement p=con.prepareStatement("select reaction,count(*)total from search1 group by reaction ");
ResultSet r=p.executeQuery();
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
while(r.next()){
     String filename=r.getString("reaction");
    int rank=r. getInt("total");
    map = new HashMap<Object,Object>(); map.put("label", filename); map.put("y", rank); list.add(map);
}
String dataPoints = gsonObj.toJson(list);

      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("window.onload = function() { \n");
      out.write(" \n");
      out.write("var chart = new CanvasJS.Chart(\"chartContainer\", {\n");
      out.write("\tanimationEnabled: true,\n");
      out.write("\texportEnabled: true,\n");
      out.write("\ttitle: {\n");
      out.write("\t\ttext: \"Graph based on Recommendation \"\n");
      out.write("\t},\n");
      out.write("\taxisY:{\n");
      out.write("\t\tincludeZero: true\n");
      out.write("\t},\n");
      out.write("\tdata: [{\n");
      out.write("\t\ttype: \"column\", //change type to bar, line, area, pie, etc\n");
      out.write("\t\t//indexLabel: \"{y}\", //Shows y value on all Data Points\n");
      out.write("\t\tindexLabelFontColor: \"#5A5757\",\n");
      out.write("\t\tindexLabelPlacement: \"outside\",\n");
      out.write("\t\tdataPoints: ");
out.print(dataPoints);
      out.write("\n");
      out.write("\t}]\n");
      out.write("});\n");
      out.write("chart.render();\n");
      out.write(" \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"chartContainer\" style=\"height: 370px; width: 100%;\"></div>\n");
      out.write("<script src=\"https://canvasjs.com/assets/script/canvasjs.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>      \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
