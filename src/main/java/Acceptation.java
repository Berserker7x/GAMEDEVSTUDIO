import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

@WebServlet(name = "Acceptation", value = "/Acceptation")
public class Acceptation extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


            String username = request.getParameter("userid");

            String nomrecru = request.getParameter("recruteur");
            String Titre = request.getParameter("Titre");

            String Message = "Vous etes accepté";

            String driver = "com.mysql.jdbc.Driver";
            Connection conn = null;
            try {
                Class.forName(driver);

                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedevstudio", "root", "");
                Statement stmt = conn.createStatement();
                stmt.executeUpdate("update postulations set status = 1 ,message='"+Message+"' where nom_offre='"+Titre+"' and postuler_par='"+username+"' and nom_recruteur='"+nomrecru+"'");
                response.sendRedirect("postulation.jsp");
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }

