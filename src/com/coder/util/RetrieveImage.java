/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coder.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coder.dao.CurdOperationsImpl;

/**
 *
 * @author CODER ACJHP
 */

public class RetrieveImage extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = Logger.getLogger(CurdOperationsImpl.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession();
//        final String driverName = "com.mysql.jdbc.Driver";
//        final String url = "jdbc:mysql://localhost:3306/";
//        final String dbName = "onurdatabase";
//        final String userName = "onur";
//        final String password = "onurdb958";
    	Properties prop = new Properties();
    	prop.load(getServletContext().getResourceAsStream("/properties/connection.properties"));
        byte[] arr = new byte[2048];
        if(prop != null) {
        	 try {
                 Class.forName(prop.getProperty("driverName"));
                 try (Connection conn = DriverManager.getConnection(prop.getProperty("url") + prop.getProperty("dbName"), prop.getProperty("userName"), prop.getProperty("password"))) {
                     PreparedStatement stmt = conn.prepareStatement("select PHOTO from Person where id=?");
                     stmt.setInt(1, Integer.parseInt(request.getParameter("id")));
                     ResultSet rs = stmt.executeQuery();
                     if (rs.next()) {
                         response.getOutputStream().write(rs.getBytes("PHOTO"));
                         arr = rs.getBytes("PHOTO");
                         LOGGER.info("Getting person photo...");
                     }
                     session.setAttribute("image", arr);
                 }
             } catch (IOException | ClassNotFoundException | NumberFormatException | SQLException e) {
                 LOGGER.info(e.getMessage());
             }
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
