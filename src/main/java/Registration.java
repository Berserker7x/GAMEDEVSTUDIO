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

/**
 * Servlet implementation class AdminConnexion
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {

    public Registration() {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name1 = request.getParameter("nom");
        String secondname = request.getParameter("prenom");
        String usernamee = request.getParameter("username");
        String emaile = request.getParameter("email");
        String password = request.getParameter("mdp");
        String rectouconcepte = request.getParameter("rectouconcept");
        String fctconcepteure = request.getParameter("fctconcepteur");

        PrintWriter out = response.getWriter();

        String driver = "com.mysql.jdbc.Driver";
        String req = "INSERT INTO `user`(`nom`,`prenom`,`username`,`email`,`mdp`,`rectouconcept`,`fctconcepteur`) VALUES (\""+ name1 + "\",\""+ secondname + "\",\""+ usernamee + "\",\""+ emaile +"\",\"" + password +"\" ,\" "+rectouconcepte+ "\" ,\"" +fctconcepteure+ "\")";
        String con = "jdbc:mysql://localhost:3306/gamedevstudio";
        try {
            System.out.println(password);
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
