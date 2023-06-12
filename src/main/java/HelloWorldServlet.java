import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Hello ,World", urlPatterns = "/hello")

public class HelloWorldServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse response)throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        String firstname = req.getParameter("firstname");
        System.out.println(firstname);
        if (firstname == null) {
            out.println("<h1>Hello, World!</h1>");
        } else {
            out.println("<h1>Hello, " + firstname + "!</h1>");
        }


    }

    }

