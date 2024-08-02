/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.CategoryDAO;
import Model.Brands;
import Model.RacketSpecs;
import Model.RacketType;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class CategoryServlet extends HttpServlet {

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
            out.println("<title>Servlet CategoryServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CategoryServlet at " + request.getContextPath() + "</h1>");
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

        String id1 = request.getParameter("id");
        String id2 = request.getParameter("id2");
        try {
            if (id1 != null) {
                int ida = Integer.parseInt(id1);
                List<RacketSpecs> rk1 = dao.getProduct(ida);
                request.setAttribute("infobad", rk1);
            } else {
                int idb = Integer.parseInt(id2);
                List<RacketSpecs> rk2 = dao.getProduct2(idb);
                request.setAttribute("infomod", rk2);
            }

        } catch (NumberFormatException e) {
        }

        request.getRequestDispatcher("view/category.jsp").forward(request, response);
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
        String name = request.getParameter("names");
        CategoryDAO cd = new CategoryDAO();
        List<RacketSpecs> list = cd.getRacketSpecsesByName(name);
        if (name != null && list != null) {
            request.setAttribute("infomd", list);
        } else {
            request.setAttribute("nos", "Không tồn tại sản phẩm này");
        }

        doGet(request, response);
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
