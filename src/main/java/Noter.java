import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/Noter")
public class Noter extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("userid");
        int notege;


        String nomrecru = request.getParameter("recruteur");
        String Titre = request.getParameter("Titre");

        int note= Integer.parseInt(request.getParameter("Note"));

        String driver = "com.mysql.jdbc.Driver";
        Connection conn = null;
        try {
            Class.forName(driver);

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedevstudio", "root", "");
            Statement stmt = conn.createStatement();
            stmt.executeUpdate("update postulations set note="+note+",noteroupas=1 where nom_offre='"+Titre+"' and postuler_par='"+username+"' and nom_recruteur='"+nomrecru+"'");
            try{
                Class.forName(driver);
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedevstudio", "root", "");
                Statement stmt1 = conn.createStatement();
                stmt1.executeUpdate("update note set notetot = notetot+"+note+" where username='"+username+"'  ");
                try{
                    Class.forName(driver);
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedevstudio", "root", "");
                    Statement stmt2 = conn.createStatement();

                    ResultSet res=stmt2.executeQuery("SELECT * FROM `note` WHERE `username`='"+username+"';");
                    System.out.println("2222222222222222222222222222222222222");
                    if(res.next()){
                        int a=res.getInt(3);
                        int b=res.getInt(4);
                        float t=(b/a);
                        try{
                            Class.forName(driver);
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedevstudio", "root", "");
                            Statement stmt3 = conn.createStatement();

                            stmt3.executeUpdate("update user set nbracc = "+t+" where username='"+username+"';");
                            System.out.println("11111111111111111111111111111111111111111111");
                        } catch (Exception e) {
                            System.out.println(e);

                        }
                    }

                } catch (Exception e) {
                    System.out.println(e);
                }

            } catch (Exception e) {
                System.out.println(e);
            }
            response.sendRedirect("Note.jsp");

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
