package com.coder.dao;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.coder.entity.Person;
import com.coder.entity.Staff;

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

    private static SessionFactory SESSION_FACTORY;
    private static final Logger LOGGER = Logger.getLogger(CurdOperationsImpl.class.getName());

    public SessionFactory getSESSION_FACTORY() {
		return CurdOperationsImpl.SESSION_FACTORY;
	}


	public static void setSESSION_FACTORY(SessionFactory theFactory) {
		CurdOperationsImpl.SESSION_FACTORY = theFactory;
	}


	@Override
    public void save(Person person) {
        Session session = getSESSION_FACTORY().getCurrentSession();
        session.beginTransaction();
        session.persist(person);
        session.getTransaction().commit();
        LOGGER.info("Person saved to database." + " Details : " + person);
        session.close();
    }

    @Override
    public void remove(int id) {
        Session session = getSESSION_FACTORY().getCurrentSession();
        session.beginTransaction();
        Person person = session.load(Person.class, id);

        if (person != null) {
            session.delete(person);
        }
        LOGGER.info("Person is deleted successfully." + "Details : " + id);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(Person person) {
        Session session = getSESSION_FACTORY().getCurrentSession();
        session.beginTransaction();
        session.update(person);
        session.getTransaction().commit();
        session.close();
        LOGGER.info("Person updated successfully." + " Details : " + person);
    }

	@Override
    public List<Person> readAll() {
        Session session = getSESSION_FACTORY().getCurrentSession();
        session.beginTransaction();
        List<Person> personalList = session.createQuery("from Person",Person.class).list();
        session.close();
        return personalList;
    }

    @Override
    public Person getPersonById(int id) {
        Session session = getSESSION_FACTORY().getCurrentSession();
        session.beginTransaction();
        Person person = session.load(Person.class, id);
        LOGGER.info("Getting the Person." + "Details : " + person.getID());
        session.close();
        return person;
    }

    @Override
    public boolean checkAuth(String UserName, String Password) {
        boolean isStaff = false;
        Session session = getSESSION_FACTORY().getCurrentSession();
        session.beginTransaction();
        Query<Staff> query = session.createQuery("from Staff where USERNAME=:userName and PASSWORD=:password",Staff.class);
        query.setParameter("userName", UserName);
        query.setParameter("password", Password);
        
       List<Staff> staffList = query.getResultList();
       
       if(!staffList.isEmpty() && staffList.size() > 0) {

           isStaff = true;
       }else {
    	   isStaff = false;
    	   LOGGER.log(Level.WARNING,"BAD CREDENTIALS : " + UserName +": ******");
       }
       
       session.close();
       return isStaff;
    }

    @Override
    public void addNewUser(String name, String password, String email) {
        
        Session session = getSESSION_FACTORY().getCurrentSession();
        session.beginTransaction();
        Staff staff = new Staff(name, password, email);
        session.saveOrUpdate(staff);
        session.getTransaction().commit();
        session.close();
    }
}
