import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;


@WebServlet("/Creatoffer")
public class Creatoffer extends HttpServlet {
    public Creatoffer() {

    }




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Creeroffre.jsp");

        requestDispatcher.forward(request, response);

    }
}
