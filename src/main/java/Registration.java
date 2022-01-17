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

/**
 * Servlet implementation class AdminConnexion
 */
@WebServlet("/Registration")
@MultipartConfig(maxFileSize = 16177215)
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
        String Desc = request.getParameter("descr");
        InputStream stream=null;
         Part prt=request.getPart("avatar");
         if(prt!=null){
             stream=prt.getInputStream();
         }


        PrintWriter out = response.getWriter();

        String driver = "com.mysql.jdbc.Driver";
        String req = "INSERT INTO `user`(`nom`,`prenom`,`username`,`email`,`mdp`,`rectouconcept`,`fctconcepteur`,`Descriptionprofile`,`image`) VALUES (?,?,?,?,?,?,?,?,?)";

        String con = "jdbc:mysql://localhost:3306/gamedevstudio";
        try {
            System.out.println(password);
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(con, "root", "");
            PreparedStatement stmt = conn.prepareStatement(req);
            stmt.setString(1,name1);
            stmt.setString(2,secondname);
            stmt.setString(3,usernamee);
            stmt.setString(4,emaile);
            stmt.setString(5,password);
            stmt.setString(6,rectouconcepte);
            stmt.setString(7,fctconcepteure);
            stmt.setString(8,Desc);
            if(stream!=null){
                stmt.setBlob(9,stream);
            }
            int exe=stmt.executeUpdate();
            if(exe>0){
                System.out.println("image inserer");

            }else{

            }



            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            System.out.println(e);

        }
    }
}
