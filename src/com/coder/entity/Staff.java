/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coder.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Fatality
 */
@Entity
@Table(name="Staff")
public class Staff implements Serializable{
      
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Staff() {
        
    }
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="ID")
    private Long Id;
    
    @Column(name="USERNAME")
    private String UserName;
    
    @Column(name="PASSWORD")
    private String Password;

    @Column(name="EMAIL")
    private String EMAIL;
    
    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public Staff(String UserName, String Password) {
        this.UserName = UserName;
        this.Password = Password;
    }

    
    public Staff(String UserName, String Password, String theEmail) {
        this.EMAIL = theEmail;
        this.UserName = UserName;
        this.Password = Password;
    }

	@Override
	public String toString() {
		return "Staff [Id=" + Id + ", UserName=" + UserName + ", Password=" + Password + ", EMAIL=" + EMAIL + "]";
	}
    
}
