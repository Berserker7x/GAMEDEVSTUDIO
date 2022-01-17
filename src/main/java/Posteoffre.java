import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet("/Posteoffre")
public class Posteoffre extends HttpServlet {
    public Posteoffre() {

    }




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titre = request.getParameter("Titre");
        String desc = request.getParameter("Description");
        String date = request.getParameter("dateexp");
        String imgurl = request.getParameter("imgurl");
        System.out.println("rani khdamaaa ");


        PrintWriter out = response.getWriter();


        String driver = "com.mysql.jdbc.Driver";
        String req="INSERT INTO offre(titre,description,dateexp,image) VALUES (\""+ titre+ "\",\""+ desc + "\",\""+ date + "\",\""+ imgurl +"\" );";
        String con = "jdbc:mysql://localhost:3306/gamedevstudio";
        try {
           // System.out.println(password);
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(con, "root", "");
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(req);


            response.sendRedirect("gamedeveloper.jsp");
        } catch (Exception e) {
            System.out.println(e);

        }
    }
}




