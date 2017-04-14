package com.coder.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.coder.entity.Person;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Fatality
 */

public class CurdOperationsImpl implements CurdOperations {

    private final String Host = "jdbc:mysql://localhost/onurdatabase";
    private final String user = "onur";
    private final String psw = "onurdb958";
    private static SessionFactory SESSION_FACTORY;
    private static final Logger LOGGER = Logger.getLogger(CurdOperationsImpl.class.getName());

    @SuppressWarnings("deprecation")
	public SessionFactory setSessionFactory() {
        SESSION_FACTORY = new Configuration().
                            configure("com/coder/hibernateConfig/hibernate.cfg.xml").
                            addAnnotatedClass(Person.class).
                            buildSessionFactory();
        return SESSION_FACTORY;
    }

    @Override
    public void save(Person person) {
        Session session = setSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.persist(person);
        session.getTransaction().commit();
        LOGGER.info("Person saved to database." + " Details : " + person);
    }

    @Override
    public void remove(int id) {
        Session session = setSessionFactory().getCurrentSession();
        session.beginTransaction();
        Person person = (Person) session.load(Person.class, id);

        if (person != null) {
            session.delete(person);
        }
        LOGGER.info("Person is deleted successfully." + "Details : " + id);
        session.getTransaction().commit();
    }

    @Override
    public void update(Person person) {
        Session session = setSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.update(person);
        session.getTransaction().commit();
        LOGGER.info("Person updated successfully." + " Details : " + person);
    }

    @SuppressWarnings("unchecked")
	@Override
    public List<Person> readAll() {
        Session session = setSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Person> personalList = session.createQuery("from Person").list();
        personalList.forEach((person) -> {
            LOGGER.info("PersonList : " + person);
        });
        return personalList;
    }

    @Override
    public Person getPersonById(int id) {
        Session session = setSessionFactory().getCurrentSession();
        session.beginTransaction();
        Person person = (Person) session.load(Person.class, id);
        LOGGER.info("Getting the Person." + "Details : " + person.getID());
        return person;
    }

    @Override
    public boolean checkAuth(String UserName, String Password) {
        boolean isStaff = false;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(Host,user,psw);
            String sql = "SELECT * FROM `staff` WHERE `USERNAME`=? AND `PASSWORD`=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, UserName);
            ps.setString(2, Password);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                isStaff = rs.getString("USERNAME").equals(UserName) && rs.getString("PASSWORD").equals(Password);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            LOGGER.info("Getting the Person." + "Details : " + ex.getMessage());
        }
        return isStaff;
    }

    @Override
    public boolean addNewUser(String name, String password, String email) {
        boolean isNewUser = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(Host,user,psw);
            String sql = "INSERT INTO `staff`(`USERNAME`, `PASSWORD`, `EMAIL`) VALUES (?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);
            ps.setString(3, email);
            int result =  ps.executeUpdate();
            if(result > 0) {
                isNewUser = true;
            }

        } catch (ClassNotFoundException | SQLException ex) {
            LOGGER.info("Adding the new User." + "Details : " + ex.getMessage());
        }
        return isNewUser;
    }
}
