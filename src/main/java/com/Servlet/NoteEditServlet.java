package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.PostDAO;
import com.Db.DBConnect;
/**
 * Servlet implementation class NoteEditServlet
 */
public class NoteEditServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		
		try {
			Integer noteid=Integer.parseInt(request.getParameter("note_id"));
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			PostDAO dao=new PostDAO(DBConnect.getConn());
			boolean f=dao.PostUpdate(noteid, title, content);
			if(f) {
				HttpSession session = request.getSession();
				session.setAttribute("updateMsg", "Notes Updated Successfully...");
				response.sendRedirect("showNotes.jsp");
				
				
				
			}
			else {
				System.out.println("not updated");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
