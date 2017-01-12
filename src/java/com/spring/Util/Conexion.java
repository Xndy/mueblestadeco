/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Util;

/**
 *
 * @author XndyPxndx
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Conexion {
	
	 public static Connection getConnection(){
	        Connection cn=null;
	        
	        try {
	            Class.forName("org.postgresql.Driver");
	        } catch (ClassNotFoundException e) {
	                System.out.println("Driver no encontrado");
	                System.out.println(e.getMessage());
	        }
	        try {
	            cn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/MueblesTadeco"
	                    ,"postgres","andy123A");
	        } catch (SQLException e) {
	            System.out.println("Error de conexion !!");
	            System.out.println(e.getMessage());
	            
	        }
	        
	        return cn;
	        
	    }
         
        
}

