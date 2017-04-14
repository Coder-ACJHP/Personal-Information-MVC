/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coder.controllerServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coder.dao.CurdOperationsImpl;

/**
 *
 * @author CODER ACJHP
 */
@WebServlet(name = "DeleteServlet", urlPatterns = {"/DeleteServlet"})
public class DeleteServlet extends HttpServlet {

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private static final Logger LOGGER = Logger.getLogger(CurdOperationsImpl.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        LOGGER.info("Fletching person id who wonted to be delete... ");
        String PersonId = request.getParameter("id");
        if(PersonId != null) {
            
            int id = Integer.parseInt(PersonId);
            CurdOperationsImpl coi = new CurdOperationsImpl();
            coi.remove(id);
            LOGGER.info("Servlet says : Person has been deleted successfully.");
            out.println("<h2 style='color: green'>Person Deleted Sucessfully.</h2>");
            response.sendRedirect("viewPerson.jsp");
        }else {
            
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
