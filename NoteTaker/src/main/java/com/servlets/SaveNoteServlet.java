package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entities.Note;
import com.helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		try {
			//title,content fetch
			
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Note note=new Note(title, content, new Date());
			
			//System.out.println(note.getId()+" : "+ note.getTitle());
			//hibernate:save();
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			s.save(note);
			tx.commit();
			s.close();
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.print("<div style='text-align: center;'> <img src='img/homework.png'  alt='girs are not hot' width='400' height='400' > </div>");
			out.print("<h1 style='text-align:center;'>Note is added Successfully</h1>");
			out.print("<h3 style='text-align:center;'><a href='all_notes.jsp'>View All notes</h3>");
			out.print("<h3 style='text-align:center;'><a href='add_note.jsp'>Add more notes</h3>");
			
		}catch(Exception e) {
			
			System.out.println(e);
		}
		
	}

}
