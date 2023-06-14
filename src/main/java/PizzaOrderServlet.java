import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/PizzaOrderForm.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String crustType = request.getParameter("crustType");
        String sauceType = request.getParameter("sauceType");
        String sizeType = request.getParameter("sizeType");
        String[] toppings = request.getParameterValues("toppings");
        String deliveryAddress = request.getParameter("deliveryAddress");


        System.out.println("Crust Type: " + crustType);
        System.out.println("Sauce Type: " + sauceType);
        System.out.println("Size Type: " + sizeType);
        System.out.println("toppings: " + toppings);
        if (toppings != null) {
            for (String topping : toppings) {
                System.out.println("* " + topping);
            }
            System.out.println("Delivery Address: " + deliveryAddress);

            // Forward the request to a confirmation JSP page

            request.getRequestDispatcher("/PizzaOrderConfirmation.jsp").forward(request, response);
        }
    }
}

