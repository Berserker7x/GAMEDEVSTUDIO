import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

@WebServlet("/Posteoffre")
@MultipartConfig(maxFileSize = 16177215)
public class Posteoffre extends HttpServlet {
    public Posteoffre() {

    }




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titre = request.getParameter("Titre");
        String desc = request.getParameter("Description");
        String date = request.getParameter("dateexp");

        System.out.println("rani khdamaaa ");
        InputStream stream=null;
        Part prt=request.getPart("imaja");
        if(prt!=null){
            stream=prt.getInputStream();
        }


        PrintWriter out = response.getWriter();


        String driver = "com.mysql.jdbc.Driver";


        String req="INSERT INTO `offre`(`titre`,`description`,`dateexp`,`image`) VALUES (?,?,?,?)";
        String con = "jdbc:mysql://localhost:3306/gamedevstudio";

        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(con, "root", "");
            PreparedStatement stmt = conn.prepareStatement(req);
            stmt.setString(1, titre);
            System.out.println("INSERTION ...");

            stmt.setString(2,desc);
            stmt.setString(3,date);
            if(stream!=null){
                stmt.setBlob(4,stream);
            }



            Class.forName(driver);

            stmt.executeUpdate();



            response.sendRedirect("gamedeveloper.jsp");
        } catch (Exception e) {
            System.out.println(e);

        }
    }
}




