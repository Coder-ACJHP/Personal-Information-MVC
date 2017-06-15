package com.coder.hibernateConfig;

import java.util.logging.Level;
import java.util.logging.Logger;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.coder.entity.Person;

public class ConnectionToDatabase {

	private static ConnectionToDatabase instance = null;
	private static SessionFactory sessionFactory = null;
	private static Logger LOGGER = Logger.getLogger(ConnectionToDatabase.class.getName());
	
	public static ConnectionToDatabase getInstance() {
		
		if(instance == null) {
			instance = new ConnectionToDatabase();
			LOGGER.log(Level.FINE, "CONNECTIONTODATABASE INSTANCE CREATED.");
		}
		
		return instance;
	}
	
	public SessionFactory getSessionFactory() {
		if(sessionFactory == null) {
			sessionFactory = new Configuration().
                    configure("com/coder/hibernateConfig/hibernate.cfg.xml").
                    addAnnotatedClass(Person.class).
                    buildSessionFactory();
			LOGGER.log(Level.FINE, "SESSION FACTORY CREATED.");
		}
		return sessionFactory;
	}
	
	public void CloseConnection() {
		LOGGER.log(Level.FINE, "SESSION FACTORY CLOSED.");
		sessionFactory.close();
	}
}
