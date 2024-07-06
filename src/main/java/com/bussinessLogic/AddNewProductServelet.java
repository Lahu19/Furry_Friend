package com.bussinessLogic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.services.serviceProvider;

/**
 * Servlet implementation class AddNewProductServelet
 */
@WebServlet("/AddNewProductServelet")
public class AddNewProductServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewProductServelet() {
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
		String pName=request.getParameter("pName");
		System.out.println(pName);
		String category=request.getParameter("category");
		System.out.println(category);
		String pMRP=request.getParameter("pMRP");
		System.out.println(pMRP);
		String pQuantity=request.getParameter("pQuantity");
		System.out.println(pQuantity);
		String pimg1=request.getParameter("pimg1");
		System.out.println(pimg1);
		String pimg2=request.getParameter("pimg2");
		System.out.println(pimg2);
		String pFood=request.getParameter("pFood");
		System.out.println(pFood);
		String psub=request.getParameter("psub");
		System.out.println(psub);
		String pDate=request.getParameter("pDate");
		System.out.println(pDate);
		
		try {
			serviceProvider sP=new serviceProvider(com.connnection.JDBCConnnection.getconnection());
			boolean b=sP.addNewProduct(pName,category,pMRP, pQuantity, pimg1, pimg2, pFood, psub, pDate);
			if(b) {
				System.out.println("Successful insertion ");
				response.sendRedirect("productList.jsp");
			}else {
				response.sendRedirect("AddNewProduct.jsp");
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}
	}

}
