package com.siwa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwa.dao.AssignDAO;
import com.siwa.dao.AssignDAOImplementation;
import com.siwa.model.Assign;



@WebServlet("/AssignController")
public class AssignController extends HttpServlet {
	
	private AssignDAO dao;
	private static final long serialVersionUID = 1L;
	public static final String LIST_ASSIGN = "/listAssign.jsp";
	public static final String INSERT_OR_EDIT = "/assign.jsp";
 
    public AssignController() {
    	dao = new AssignDAOImplementation();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("delete")) {
			forward = LIST_ASSIGN;
			int assignID = Integer.parseInt(request.getParameter("assignID"));
			dao.deleteAssign(assignID);
			request.setAttribute("assigns", dao.getAllAssign());
		} else if (action.equalsIgnoreCase("edit")) {
			forward = INSERT_OR_EDIT;
			int assignID = Integer.parseInt(request.getParameter("assignID"));
			Assign assign = dao.getAssignById(assignID);
			request.setAttribute("assign", assign);
		} else if (action.equalsIgnoreCase("insert")) {
			forward = INSERT_OR_EDIT;
		} else {
			forward = LIST_ASSIGN;
			request.setAttribute("assigns", dao.getAllAssign());
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Assign assign = new Assign();
		
		String personID = request.getParameter("personID");
		assign.setPersonID(Integer.parseInt(personID));
		
		String projectID = request.getParameter("projectID");
		assign.setProjectID(Integer.parseInt(projectID));
		
		String assignID = request.getParameter("assignID");
		if(assignID == null || assignID.isEmpty())
			dao.addAssign(assign);
		else{
			assign.setAssignID(Integer.parseInt(assignID));
			dao.updateAssign(assign);
		}
		
		RequestDispatcher view = request.getRequestDispatcher(LIST_ASSIGN);
		request.setAttribute("assigns", dao.getAllAssign());
		view.forward(request, response);
	}

}
