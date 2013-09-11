
package Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.TriangleAreaCalculator;

/**
 *
 * @author mgrinker
 */
@WebServlet(name = "TriangleController2", urlPatterns = {"/TriangleController2"})
public class TriangleController2 extends HttpServlet {
    private static final String RESULT_PAGE = "index2.jsp";
    private static final String SIDE1 = "side1";
    private static final String SIDE2 = "side2";
    private static final String TITLE = "The length of the third side is: ";
    private static final String UNITS = " units";
    private static final String CALC_TYPE = "triangle";

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String side1 = request.getParameter(SIDE1);
        String side2 = request.getParameter(SIDE2);
        String sAnswer = "";
        
        TriangleAreaCalculator tac = new TriangleAreaCalculator();
        
        sAnswer = tac.getMissingTriangleSide(side1.trim(), side2.trim());
        
        request.setAttribute("calcType", CALC_TYPE);
        request.setAttribute("title", TITLE);
        request.setAttribute("answer", sAnswer + UNITS);
        
        RequestDispatcher view =
                request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
