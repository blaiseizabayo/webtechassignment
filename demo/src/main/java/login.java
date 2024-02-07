import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/izabayo")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Hardcoded username and password for demonstration purposes
    private static final String VALID_USERNAME = "admin";
    private static final String VALID_PASSWORD = "admin123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if username and password match the hardcoded values
        if (VALID_USERNAME.equals(username) && VALID_PASSWORD.equals(password)) {
            // Login successful
            try {
                response.sendRedirect("welcome.jsp");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            // Login failed, redirect back to login page with an error message
            response.sendRedirect("login.jsp?error=1");
        }
    }

}

