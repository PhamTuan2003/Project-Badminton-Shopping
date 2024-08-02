/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.CategoryDAO;
import Model.Account;
import Model.Brands;
import Model.Cart;
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
public class ShowServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet ShowServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ShowServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
        
        
        // Lấy danh sách tất cả các sản phẩm
        List<RacketSpecs> list = dao.getALL();
        // Lấy mảng cookie từ request, chứa thông tin về giỏ hàng của người dùng
        Cookie[] arr = request.getCookies();
         HttpSession session=request.getSession();
        Account a = (Account) session.getAttribute("account");
        
        // Khởi tạo một chuỗi txt để lưu trữ thông tin giỏ hàng từ cookie
        String txt = "";
         if(arr != null){
             for (Cookie o : arr) {
                 // Kiểm tra xem tên của cookie có phải là "cart" kèm theo ID của người dùng không
                 if(o.getName().equals("cart" + a.getUsername())){
                      // Nếu có, thêm giá trị của cookie này vào chuỗi txt
                     txt += o.getValue();
                 }
             }
         }
        Cart cart = new Cart(txt, list);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("view/cart.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
