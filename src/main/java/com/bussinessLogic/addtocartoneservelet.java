package com.bussinessLogic;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.allcatEntity;
import com.services.serviceProvider;

/**
 * Servlet implementation class addtocartoneservelet
 */
@WebServlet("/addtocartoneservelet")
public class addtocartoneservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addtocartoneservelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String name=request.getParameter("name");
		System.out.println(name);
		try {
			System.out.println("before checksell");
			serviceProvider sP=new serviceProvider(com.connnection.JDBCConnnection.getconnection());
			List<allcatEntity> li = sP.checkSell(name);
			System.out.println("after checksell");
			boolean b=li.isEmpty();
			if(b!=true) {
				System.out.println("inside the  checksell"+name);
			response.sendRedirect("addtocart.jsp?id="+name);
			}else {
				response.sendRedirect("recordnotFound.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
