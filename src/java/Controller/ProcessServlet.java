/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.CategoryDAO;
import Model.Account;
import Model.Brands;
import Model.Cart;
import Model.Items;
import Model.RacketSpecs;
import Model.RacketType;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class ProcessServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProcessServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProcessServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDAO dao = new CategoryDAO();
        List<Brands> br = dao.getBrands();
        request.setAttribute("infobrand", br);
        List<RacketType> rt = dao.getRacketTypes();
        request.setAttribute("infotype", rt);

        request.getRequestDispatcher("view/cart.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDAO dao = new CategoryDAO();
        List<RacketSpecs> list = dao.getALL();
        Cookie[] arr = request.getCookies();
        HttpSession session=request.getSession();
        Account a = (Account) session.getAttribute("account");
        // Chuỗi để lưu trữ thông tin giỏ hàng từ cookie
        String txt = "";
        // Kiểm tra xem có cookie không
        if (arr != null) {
            for (Cookie o : arr) {
                // Tìm cookie có tên là "cart" + userID
                if (o.getName().equals("cart" + a.getUsername())) {
                    // Lấy giá trị của cookie và thêm vào chuỗi txt
                    txt += o.getValue();
                    // Xóa cookie bằng cách đặt tuổi thọ là 0 và thêm vào phản hồi
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }
        // Lấy ID của sản phẩm cần xóa từ yêu cầu
        String id = request.getParameter("id");
        // Tách chuỗi txt thành mảng các ID sản phẩm
        String[] ids = txt.split("/");
        String out = "";
        // Xử lý việc xóa sản phẩm từ giỏ hàng và cập nhật lại thông tin giỏ hàng
        for (int i = 0; i < ids.length; i++) {
            String[] s = ids[i].split(":");
            // Nếu ID sản phẩm không trùng với ID được chuyển qua yêu cầu, thêm vào chuỗi out
            if (!s[0].equals(id)) {
                if (out.isEmpty()) {
                    out = ids[i];
                } else {
                    out += "/" + ids[i];
                }
            }
        }
        // Nếu chuỗi out không trống, tạo cookie mới và cập nhật giỏ hàng
        if (!out.isEmpty()) {
            Cookie c = new Cookie("cart" + a.getUsername(), out);
            // Đặt tuổi thọ của cookie là 2 ngày
            c.setMaxAge(2 * 24 * 60 * 60);
            // Thêm cookie vào phản hồi
            response.addCookie(c);
        }
        // Tạo đối tượng Cart mới với thông tin giỏ hàng đã cập nhật
        Cart cart = new Cart(out, list);
        // Đặt thuộc tính "cart" trong yêu cầu để chứa đối tượng Cart
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("view/cart.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
