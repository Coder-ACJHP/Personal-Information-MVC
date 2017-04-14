package com.coder.test;

import java.io.IOException;
import java.util.Properties;

public class TestPropertiesFile {

	public static void main(String[] args) throws IOException {
		
		Properties prop = new Properties();
    	prop.load(TestPropertiesFile.class.getResourceAsStream("/properties/connection.properties"));
    	System.out.println("PROPERTIES TEST : " + prop.getProperty("url"));
	}
}
