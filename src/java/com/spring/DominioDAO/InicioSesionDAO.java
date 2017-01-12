/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.DominioDAO;

import com.spring.Util.Conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author XndyPxndx
 */
public class InicioSesionDAO {



    public static boolean consulta(String usuario, String contrasena){
         boolean status = false;  
        try {
	           
	            Connection conn= Conexion.getConnection();
	            PreparedStatement prs=conn.prepareStatement("SELECT * FROM cuenta WHERE correoelectronico = ? and constrasena =?;");
	            prs.setString(1, usuario);
                    prs.setString(2, contrasena);
	            ResultSet rs=prs.executeQuery();
	            status = rs.next();  
                   
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
         return status;
    }
    
    
}
