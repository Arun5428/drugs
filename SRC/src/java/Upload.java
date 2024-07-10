
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/Upload"})
public class Upload extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       ServletContext sc=request.getSession().getServletContext();
        MultipartRequest m=new MultipartRequest(request,sc.getRealPath("dataset"));
            File file=m.getFile("file");
                System.out.println(file);
            String fname=file.getName();
             System.out.println(fname);

            String csvFile =sc.getRealPath("dataset")+"\\"+fname;
            au.com.bytecode.opencsv.CSVReader reader = null;
         
                try
            {
                 Class.forName("com.mysql.jdbc.Driver");
             
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealth","root","root");
                    System.out.println(con);
                PreparedStatement paa= con.prepareStatement("truncate table datas");
                 System.out.println(paa);
                paa.executeUpdate();
            System.out.println(paa);
                reader = new au.com.bytecode.opencsv.CSVReader(new FileReader(csvFile));
                System.out.println(reader);
                String[] line;
                int i=0;
                while ((line = reader.readNext()) != null)
                {
                    i++;
                    if(i!=1)
                    {
                     String query="insert into datas(reaction,medicalproduct,drugindication,type,route,genericname,brandname,drugdosage,sex,sideeff,dosage)values('"+line[0]+"','"+line[1]+"','"+line[2]+"','"+line[3]+"','"+line[4]+"','"+line[5]+"','"+line[6]+"','"+line[7]+"','"+line[8]+"','"+line[9]+"','"+line[10]+"') ";
                        System.out.println(query);
                        PreparedStatement ps=con.prepareStatement(query);
                        System.out.println(ps);
                        ps.executeUpdate();
                         System.out.println(ps);
                    }
                }
                out.println("<script type=\"text/javascript\">"); 			
		out.println("alert(\"Succesfully Updated for sql\")");
		out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("upload.jsp");
		rd.include(request,response);
            } catch (IOException | SQLException e) 
            {
                System.out.println(e);
            } 
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
