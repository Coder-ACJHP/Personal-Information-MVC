/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coder.controllerServlets;

import com.coder.dao.CurdOperationsImpl;
import com.coder.entity.Person;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.IOUtils;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author CODER ACJHP
 */
@MultipartConfig(maxFileSize=16177215)
@WebServlet(name = "PersonalInfo", urlPatterns = {"/PersonalInfo"})
public class PersonalInfo extends HttpServlet {
    
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final  CurdOperationsImpl operationsFactory = new CurdOperationsImpl();
	private static final Logger LOGGER = Logger.getLogger(CurdOperationsImpl.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        InputStream inputStream;
        String Name = request.getParameter("firstname");
        String Lastname = request.getParameter("lastname");
        String Nationality = request.getParameter("nationality");
        String Birthdate = request.getParameter("birthdate");
        String PhoneNum = request.getParameter("phoneNum");
        String Address = request.getParameter("address");
        String Email = request.getParameter("email");
        String Marriage = request.getParameter("marriage");
        String About = request.getParameter("about");
        Part filePart = request.getPart("photo");
        
        LOGGER.info("Getting personal informations from : AddPerson.jsp");
        
        String message = "";
        String base64encoded="";
        byte[] photo = new byte[0];
        
        if (filePart != null) {
            message = "File " + filePart.getName() + " Size :" + filePart.getSize() + " is uploaded.";
            LOGGER.info("Details : " + message);
            inputStream = filePart.getInputStream();
            photo = IOUtils.toByteArray(inputStream);
            byte[] encode = Base64.encodeBase64(photo);
        	base64encoded = new String(encode);
        }

       
        Person person = new Person(Name, Lastname, Nationality, Birthdate, PhoneNum, Address, Email, Marriage, About, base64encoded);
        operationsFactory.save(person);
        
        out.println("<h2 style='color: cyan'>Person Saved Sucessfully.</h2>");
        LOGGER.info("Person saved to database." + " Details : " + person);
        request.setAttribute("Message", message);
        request.getRequestDispatcher("ViewPerson.jsp").forward(request, response);
    }



    @Override
    public String getServletInfo() {
        return "Short description";
    }


}
