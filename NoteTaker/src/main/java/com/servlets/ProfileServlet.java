package com.servlets;

import java.io.IOException; 
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entities.Profile;
import com.helper.FactoryProvider;

public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		
			//title,content fetch
			
			String name=request.getParameter("name");
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			
			Profile p=new Profile(name, password, email);
			
			//System.out.println(note.getId()+" : "+ note.getTitle());
			//hibernate:save();
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			s.save(p);
			tx.commit();
			s.close();
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			
			
			
			out.print("<br><div style='text-align: center;'> <img src='img/check.png'  alt='girs are not hot' width='350' height='350' > </div>");
			out.print("<br><h1 style='text-align:center;'>Registerd Successfully</h1>");
			out.print("<h1 style='text-align:center;'><a href='home.jsp'>Let's Start to Write Notes</h1>");
			out.println(request.getServerName()+"<br>");
			out.println(request.getServerPort()+"<br>");
			out.print(request.getServletContext().getServerInfo()+"<br>");
		
		
	}

}
