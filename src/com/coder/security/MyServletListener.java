package com.coder.security;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import com.coder.dao.CurdOperationsImpl;
import com.coder.hibernateConfig.ConnectionToDatabase;

/**
 * Servlet implementation class MyServletListener
 */
@WebServlet("/MyServletListener")
public class MyServletListener extends HttpServlet implements ServletContextListener {
	private static final long serialVersionUID = 1L; 
    private final Logger LOGGER = Logger.getLogger(getClass().getName());
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServletListener() {
        super();
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
    	 LOGGER.log(Level.INFO, "Servlet context destroyed!");
    	 ConnectionToDatabase.getInstance().CloseConnection();
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event)  { 
    	LOGGER.log(Level.INFO, "Servlet Context Listener Initialized.");
     	CurdOperationsImpl.setSESSION_FACTORY(ConnectionToDatabase.getInstance().getSessionFactory()); 
     	LOGGER.log(Level.FINEST, "Hibernate SESSION_FACTORY initialized successfully.");
    }

}
