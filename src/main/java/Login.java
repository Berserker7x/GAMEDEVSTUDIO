import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminConnexion
 */
@WebServlet("/login")

public class Login extends HttpServlet {

    public Login() {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String mdp = request.getParameter("password");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        String driver = "com.mysql.jdbc.Driver";

        try {
            // étape 1: charger la classe de driver
            Class.forName(driver);

            // étape 2: créer l'objet de connexion
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedevstudio", "root", "");

            // étape 3: créer l'objet statement
            Statement stmt = conn.createStatement();
            ResultSet res = stmt.executeQuery("SELECT  email, mdp ,rectouconcept FROM user");

            // étape 4: exécuter la requête

            while(res.next()) {

                System.out.println("La connexion a était bien établit!!");
                String email1 = res.getString(1);
                String truePassword = res.getString(2);
                String pge=res.getString(3);
                System.out.println(email1+truePassword+pge);
                //System.out.println("Admin_Username : " + res.getString(1) + " && Admin_Password : " + res.getString(2));
                if (email1.equals(email1) && mdp.equals(truePassword)) {

                    if(pge.equals(" recruteur")){
                     //   System.out.println(email1+truePassword+pge);
                        response.sendRedirect("dashboard.jsp");

                    }
                    else{
                        response.sendRedirect("dddd.jsp");
                    }

                }
                else {
                    session.setAttribute("errorMsg", "Vous avez saisie des données érronées");
                    response.sendRedirect("index.jsp");
                }





            }

            // étape 5: fermez l'objet de connexion
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        // étape 4: exécuter la requête

    }

}

