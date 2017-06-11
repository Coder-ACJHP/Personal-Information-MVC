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
import javax.servlet.http.HttpSession;

import com.coder.dao.CurdOperationsImpl;
/**
 *
 * @author CODER ACJHP
 */
@WebServlet(name = "AuthServlet", urlPatterns = {"/AuthServlet"})
public class AuthServlet extends HttpServlet {
    
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private static final Logger LOGGER = Logger.getLogger(CurdOperationsImpl.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        boolean isStaff = false;
        CurdOperationsImpl coi = new CurdOperationsImpl();
        isStaff = coi.checkAuth(username, password);

        if(isStaff == true) {
            HttpSession session = request.getSession();
            session.setAttribute("user", username);
            session.setMaxInactiveInterval(15*60);

            out.println("<h2 style='color:blue;'>Login successfully.</h2>");
            response.sendRedirect("ViewPerson.jsp");
            LOGGER.info("Staff is logged in." + " Details : " +username+":"+password);
        }else {
            request.getRequestDispatcher("Index.jsp").include(request, response);
            out.println("<h2 style='color:red;'>Invalid username or password!</h2>");
          
        }
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
