package com.servlets;

import java.io.IOException; 
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entities.*;
import com.helper.FactoryProvider;


public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
    
	  
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			
			int profileId=Integer.parseInt(request.getParameter("profile_id").trim());
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Profile profile=(Profile)s.get(Profile.class, profileId);
			s.delete(profile);
			
			tx.commit();
			s.close();
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.print("<h1>Profile deleted </h1>"); 
			
			response.sendRedirect("index.jsp");
			
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
