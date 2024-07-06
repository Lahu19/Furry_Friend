package com.bussinessLogic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.services.*;

/**
 * Servlet implementation class loginServelet
 */
@WebServlet("/loginServelet")
public class loginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String uName=request.getParameter("uName");
		System.out.println(uName);
		String pass=request.getParameter("pass");
		System.out.println(pass);
		if(uName.equals("admin") && pass.equals("123")) {
			response.sendRedirect("DashBord.jsp");
		}else {
		try {
			serviceProvider sP=new serviceProvider(com.connnection.JDBCConnnection.getconnection());
			boolean b=sP.checkLogin(uName,pass);
			if(b) {
				response.sendRedirect("index.jsp");
				System.out.println("Successful login");
			}else {
				response.sendRedirect("login.jsp");
			}
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	}

}
