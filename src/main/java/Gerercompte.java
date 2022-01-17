import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


@WebServlet("/Gerercompte")
public class Gerercompte extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      //  String nvname1 = request.getParameter("nom");
      //  String nvsecondname = request.getParameter("prenom");
        String nvusernamee = request.getParameter("username");
        String nvemaile = request.getParameter("email");
        String nvpassword = request.getParameter("mdp");



        PrintWriter out = response.getWriter();

        String driver = "com.mysql.jdbc.Driver";
        HttpSession session=request.getSession();

          String userid = (String) session.getAttribute("userid");
       // teeeeest
       // String userid="yazer";
        //khdama
        String req = "UPDATE `user` SET  username=\""+nvusernamee+"\",`email`=\""+nvemaile+"\",`mdp`=\""+nvpassword+"\"  WHERE `username`=\""+userid+"\";";
        String con = "jdbc:mysql://localhost:3306/gamedevstudio";

        try {
           // System.out.println(password);
            Class.forName(driver);

            Connection conn = DriverManager.getConnection(con, "root", "");
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(req);

            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            System.out.println(e);

        }
    }
}
