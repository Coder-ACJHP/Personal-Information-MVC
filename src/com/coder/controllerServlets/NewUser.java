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
@WebServlet(name = "NewUser", urlPatterns = {"/NewUser"})
public class NewUser extends HttpServlet {
    
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final  CurdOperationsImpl operationFactory = new CurdOperationsImpl();
	private static final Logger LOGGER = Logger.getLogger(CurdOperationsImpl.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");

            String name = request.getParameter("name");
            String lastName = request.getParameter("lastName");
            String nickName = request.getParameter("nickName");
            String password = request.getParameter("password");
            String password2 = request.getParameter("verifyPassword");
            String email = request.getParameter("email");

			
            if(password.equals(password2)) {
			    	
            	operationFactory.addNewUser(nickName, password, email);

			    clear(name, lastName, nickName, password, password2, email);
			    response.sendRedirect("Index.jsp");
			    out.write("<h2 style='color: green'>New user added successfully.</h2>");
			        
			    LOGGER.info("New user added successfully.");
			   
			}else {
				
			    request.getRequestDispatcher("AddUser.html").include(request, response);
			    out.print("<h2 style='color: red'>Passwords are must be same!</h2>");
			    LOGGER.info("Inputted passwords are not same!");
			}  
        
    }

    public static void clear(String name, String lastName, String nickName, String password, String password2, String email) {
        name = "";
        lastName = "";
        nickName = "";
        password = "";
        password2= "";
        email = "";
    }
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
