package com.coder.entity;


import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Fatality
 */
@Entity
@Table(name="Person")
public class Person implements Serializable {
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Person(){
        
    }
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="ID")
    private int ID;
    
    @Column(name="NAME")
    private String NAME;
    
    @Column(name="LASTNAME")
    private String LASTNAME;
    
    @Column(name="NATIONALITY")
    private String NATIONALITY;
    
    @Column(name="BIRTHDATE")
    private String BIRTHDATE;
    
    @Column(name="PHONENUM")
    private String PHONENUM;
    
    @Column(name="ADDRESS")
    private String ADDRESS;
    
    @Column(name="EMAIL")
    private String EMAIL;
    
    @Column(name="MARRIAGESTATUS")
    private String MARRIAGESTATUS;
    
    @Column(name="ABOUT")
    private String ABOUT;
    
    @Column(name="PHOTO", nullable = true, columnDefinition = "mediumblob")
    private byte[] PHOTO;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public String getLASTNAME() {
        return LASTNAME;
    }

    public void setLASTNAME(String LASTNAME) {
        this.LASTNAME = LASTNAME;
    }

    public String getNATIONALITY() {
        return NATIONALITY;
    }

    public void setNATIONALITY(String NATIONALITY) {
        this.NATIONALITY = NATIONALITY;
    }

    public String getBIRTHDATE() {
        return BIRTHDATE;
    }

    public void setBIRTHDATE(String BIRTHDATE) {
        this.BIRTHDATE = BIRTHDATE;
    }

    public String getPHONENUM() {
        return PHONENUM;
    }

    public void setPHONENUM(String PHONENUM) {
        this.PHONENUM = PHONENUM;
    }

    public String getADDRESS() {
        return ADDRESS;
    }

    public void setADDRESS(String ADDRESS) {
        this.ADDRESS = ADDRESS;
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL;
    }

    public String getMARRIAGESTATUS() {
        return MARRIAGESTATUS;
    }

    public void setMARRIAGESTATUS(String MARRIAGESTATUS) {
        this.MARRIAGESTATUS = MARRIAGESTATUS;
    }

    public String getABOUT() {
        return ABOUT;
    }

    public void setABOUT(String ABOUT) {
        this.ABOUT = ABOUT;
    }

    public byte[] getPHOTO() {
        return PHOTO;
    }

    public void setPHOTO(byte[] PHOTO) {
        this.PHOTO = PHOTO;
    }

    public Person(int ID, String NAME, String LASTNAME, String NATIONALITY, String BIRTHDATE, String PHONENUM, String ADDRESS, String EMAIL, String MARRIAGESTATUS, String ABOUT, byte[] PHOTO) {
        this.ID = ID;
        this.NAME = NAME;
        this.LASTNAME = LASTNAME;
        this.NATIONALITY = NATIONALITY;
        this.BIRTHDATE = BIRTHDATE;
        this.PHONENUM = PHONENUM;
        this.ADDRESS = ADDRESS;
        this.EMAIL = EMAIL;
        this.MARRIAGESTATUS = MARRIAGESTATUS;
        this.ABOUT = ABOUT;
        this.PHOTO = PHOTO;
    }

    public Person(String NAME, String LASTNAME, String NATIONALITY, String BIRTHDATE, String PHONENUM, String ADDRESS, String EMAIL, String MARRIAGESTATUS, String ABOUT, byte[] PHOTO) {
        this.NAME = NAME;
        this.LASTNAME = LASTNAME;
        this.NATIONALITY = NATIONALITY;
        this.BIRTHDATE = BIRTHDATE;
        this.PHONENUM = PHONENUM;
        this.ADDRESS = ADDRESS;
        this.EMAIL = EMAIL;
        this.MARRIAGESTATUS = MARRIAGESTATUS;
        this.ABOUT = ABOUT;
        this.PHOTO = PHOTO;
    }

    @Override
    public String toString() {
        return "Person{" + "ID=" + ID + ", NAME=" + NAME + ", LASTNAME=" + LASTNAME + ", NATIONALITY=" + NATIONALITY + ", BIRTHDATE=" + BIRTHDATE + ", PHONENUM=" + PHONENUM + ", ADDRESS=" + ADDRESS + ", EMAIL=" + EMAIL + ", MARRIAGESTATUS=" + MARRIAGESTATUS + ", ABOUT=" + ABOUT + ", PHOTO=" + PHOTO + '}';
    }
    
    
}

