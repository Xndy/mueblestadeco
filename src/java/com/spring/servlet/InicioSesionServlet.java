/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.servlet;

import com.spring.DominioDAO.InicioSesionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author XndyPxndx
 */
@WebServlet(name = "InicioSesion", urlPatterns = {"/InicioSesion"})
public class InicioSesionServlet extends HttpServlet {


        
        
      private static final long serialVersionUID = 1L;  
  
    public void doPost(HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {    
  
        response.setContentType("text/html");    
        PrintWriter out = response.getWriter();    
          
        String usu = request.getParameter("form-username");    
        String pass = request.getParameter("form-password");
          
        HttpSession session = request.getSession(false);  
        if(session!=null)  
        session.setAttribute("name", usu);  
  
        if(InicioSesionDAO.consulta(usu, pass)){    
            RequestDispatcher rd=request.getRequestDispatcher("index.html");    
            rd.forward(request,response);    
        }    
        else{    
            out.print("<p style=\"color:red\">Nombre de Usuario o Contraseña Incorrectos</p>");    
            RequestDispatcher rd=request.getRequestDispatcher("InicioSesion.jsp");    
            rd.include(request,response);    
        }    
  
        out.close();    
    }    
    }


