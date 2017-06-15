/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coder.security;

import java.io.IOException;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coder.dao.CurdOperationsImpl;
/**
 *
 * @author CODER ACJHP
 */

public class MyFilter implements Filter {
    
private static final Logger LOGGER = Logger.getLogger(CurdOperationsImpl.class.getName());
@SuppressWarnings("unused")
private ServletContext context;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
        LOGGER.info("Filter is initialized.");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        
        String uri = req.getRequestURI();
        if(uri.toLowerCase().contains("AddUser.jsp") || uri.toLowerCase().contains("Index.jsp")) {
        	LOGGER.info("INFO : Uri contains filtered addreses, continue...");
            chain.doFilter(request, response);
            
        }else {
            HttpSession session = req.getSession(false);
            if(session == null) {
            	LOGGER.info("WARNING : Session is null redirecting to login page!");
                res.sendRedirect("Index.jsp");
                return;
            }
            
            String personName = (String) session.getAttribute("user");
            LOGGER.info("SEESION HOLDING User : " + personName);
            
            if(personName.equals(" ") || personName.length() == 0) {
            	LOGGER.info("WARNING : Session userName is null redirecting to login page!");
                res.sendRedirect("Index.jsp");
                return;
            }
        }        
    }

    @Override
    public void destroy() {
        LOGGER.info("Destroying Filter...");
    }


}
