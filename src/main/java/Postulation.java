import java.io.IOException;

import java.sql.*;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Postulation")
public class Postulation extends HttpServlet {

        public Postulation() {

        }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            String username  = (String) session.getAttribute("userid");
            String idoffre = request.getParameter("idoffre");
            String nomrecru = request.getParameter("recruteur");
            String Titre = request.getParameter("Titre");
        System.out.println(":rani Khedama");
            String driver = "com.mysql.jdbc.Driver";
            Connection conn = null;
            try {
                Class.forName(driver);
                System.out.println("ZABIIIII");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedevstudio", "root", "");
                Statement stmt = conn.createStatement();
                stmt.executeUpdate("INSERT INTO `postulations`(`nom_offre`,`postuler_par`,`id_offre`,`nom_recruteur`) VALUES (\""+Titre+"\",\""+username+"\",\""+idoffre+"\",\""+nomrecru+"\")");
                response.sendRedirect("listeoffre.jsp");
            } catch (Exception e) {
                System.out.println(e);
            }
    }
}