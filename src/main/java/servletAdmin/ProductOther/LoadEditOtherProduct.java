package servletAdmin.ProductOther;

import beans.ProductOther;
import com.google.gson.Gson;
import empty.ProductOtherEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoadEditOtherProduct", urlPatterns = "/load-data-edit-product")
public class LoadEditOtherProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idOther = Integer.parseInt(request.getParameter("idother"));
        ProductOther pro = new ProductOtherEmpty().getSingleProductOther(idOther);
        Gson json = new Gson();
        String output = json.toJson(pro);
        response.setContentType("text/html");
        response.getWriter().write(output);
    }
}