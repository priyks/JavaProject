package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


import com.entities.Note;
import com.helper.FactoryProvider;
import java.util.List;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub  
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String title=request.getParameter("search");
		Session s=FactoryProvider.getFactory().openSession();
		Query q=s.createQuery("from Note"); // search according title HQL query required 
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		List<Note> list=q.list();
		for(Note note: list){
			out.println("<p align='center' style=\"border:3px; border-style:solid; border-color:#FF0090; padding: 1em;\" ><h2><b>");
			out.println(note.getTitle()+"<br>");
			out.println(note.getContent()+"<br>");
			out.println(note.getAddedDate()+"<br>");
			out.println("</b></h1></p>");
			
		}
	}

}
