package Servlet;

import beans.Cart;
import beans.DetailProduct;
import beans.Order;
import beans.User;
import com.google.gson.Gson;
import empty.CartDetail;
import empty.CartEmpty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

@WebServlet(urlPatterns = "/payment-cart")
public class Payment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idTemp = Integer.parseInt(request.getParameter("iddis"));
        long priceDis = Long.parseLong(request.getParameter("price_dis"));
        String ghiChu = request.getParameter("ghichu");
        // kiểm tra đã thanh toán thành công hay chưa
        int checkPayment = 0;
        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        User user = (User)session.getAttribute("auth");
       if (user != null && cart.getData().size() > 0) {
            // tổng tiền đã giảm
            long sum = cart.total() - priceDis;
            new CartEmpty().insertCart(user.getId(),ghiChu,idTemp,sum);
            Order order = new CartEmpty().getOrder();
            for (DetailProduct item: cart.getData()) {
                if (item.getGiamGia() == 0)
                    new CartDetail().insertDetailCart(order.getId(),item.getId(),item.getQuantity(),item.getGia());
                else
                    new CartDetail().insertDetailCart(order.getId(),item.getId(),item.getQuantity(),item.getGiaGiam());
            }
            cart.removeAll();
            cart.commit(session);
            checkPayment = 1;
        } else if (user != null && cart.getData().size() <= 0)
            checkPayment = 2;
        Gson json = new Gson();
        String change = json.toJson(checkPayment);
        response.setContentType("text/html");
        response.getWriter().write(change);

    }
}
