package com.coder.dao;

import java.util.List;

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
public interface CurdOperations {
    
    public void save(Person person);
    
    public void remove(int id);
    
    public void update(Person person);
    
    public List<Person> readAll();
    
    public Person getPersonById(int id);
    
    public void addNewUser(String name, String password, String email);
    
    public boolean checkAuth(String Name, String Password);
}
