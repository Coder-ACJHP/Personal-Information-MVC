/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coder.controllerServlets;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;
import org.apache.tomcat.util.codec.binary.Base64;

import com.coder.dao.CurdOperationsImpl;
import com.coder.entity.Person;

/**
 *
 * @author CODER ACJHP
 */
@MultipartConfig(maxFileSize=16177215)
@WebServlet(name = "UpdateServlet", urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends HttpServlet {

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final CurdOperationsImpl opreationsFactory = new CurdOperationsImpl();
	private static final Logger LOGGER = Logger.getLogger(CurdOperationsImpl.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        InputStream inputStream;
        final StringBuilder sb = new StringBuilder();
        
        HttpSession session = request.getSession();
        int PersonId =(int)session.getAttribute("id");
        
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
         
         byte[] photo = new byte[0];
         String base64encoded = "";
         
         if(filePart != null) {
        	 sb.append("File " + filePart.getName() + " size :" + filePart.getSize() + " is uploaded.\n");
            LOGGER.info("Details : " + sb.toString());
            inputStream = filePart.getInputStream();  
            photo = IOUtils.toByteArray(inputStream);
            byte[] encode = Base64.encodeBase64(photo);
        	base64encoded = new String(encode);
         }else {
        	 Person temPerson = opreationsFactory.getPersonById(PersonId);
        	 if(temPerson != null)
        		 base64encoded = new String(temPerson.getPHOTO());
        	 sb.append("Person profile picture not changed!");
         }
         
         
         Person person = new Person(PersonId, Name, Lastname, Nationality, Birthdate, 
        		 				PhoneNum, Address, Email, Marriage, About, base64encoded);
         opreationsFactory.update(person);
         
         LOGGER.info("Person Updated Sucessfully." + " Details : " + person);
         sb.append("Person : "+person.getNAME()+" details updated sucessfully.");
         request.setAttribute("Message", sb.toString());
         request.getRequestDispatcher("ViewPerson.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
