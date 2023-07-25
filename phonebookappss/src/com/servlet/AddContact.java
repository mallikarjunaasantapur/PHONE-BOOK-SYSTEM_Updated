package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Contact;
import com.dao.ContactDAO;
import com.conn.DbConnect;

@WebServlet("/addContact")
public class AddContact extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int userId=Integer.parseInt(req.getParameter("userid"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phno=req.getParameter("phno");
		String about=req.getParameter("about");
		
		Contact c=new Contact(name,email,phno,about,userId);
		ContactDAO dao=new ContactDAO(DbConnect.getConn());
		
		HttpSession session=req.getSession();
		boolean f=dao.saveContact(c);
		if(f)
		{
			session.setAttribute("succMsg", "Your Contact Saved Successfully..");
			resp.sendRedirect("addContact.jsp");
		}
		else {
			session.setAttribute("failedMsg", "Something went wrong on server..");
			resp.sendRedirect("addContact.jsp");
		}
		
	}
	
}
