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
public class CartServlet extends HttpServlet {

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
            out.println("<title>Servlet BuyServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BuyServlet at " + request.getContextPath() + "</h1>");
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

        List<RacketSpecs> list = dao.getALL();
        Cookie[] arr = request.getCookies();
        HttpSession session=request.getSession();
        Account a = (Account) session.getAttribute("account");
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart" + a.getUsername())) {
                    txt += o.getValue();
                }
            }
        }

        Cart cart = new Cart(txt, list);
        List<Items> listItemses = cart.getItems();
        int n;
        if (listItemses != null) {
            n = listItemses.size();
        } else {
            n = 0;
            request.setAttribute("size", n);

        }
//        HttpSession session = request.getSession();
        request.setAttribute("size", n);
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
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("account");
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart" + a.getUsername())) {
                    txt += o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }

        String num = request.getParameter("num");
        String id = request.getParameter("ids");
        if (txt.isEmpty()) {
            txt = id + ":" + num;
        } else {
            txt = txt + "/" + id + ":" + num;
        }
        Cookie c = new Cookie("cart" + a.getUsername(), txt);
        c.setMaxAge(2 * 24 * 60 * 60);
        response.addCookie(c);
//        request.getRequestDispatcher("view/cart.jsp").forward(request, response);
        response.sendRedirect("show");
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
