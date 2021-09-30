package com.saicards.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.saicards.dao.RegisterDAO;
import com.saicards.utility.MailThread;

/**
 * Servlet implementation class SendOTP
 */

public class SendOTP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendOTP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("SendOTP");
		JSONObject obj = new JSONObject();
		RegisterDAO rdao = new RegisterDAO();
		String email = rdao.isValid(request.getParameter("email"));
		
		if (email!=null) {
			Random rnd = new Random();
			int num = rnd.nextInt(999999);
			String numStr = Integer.toString(num);
			MailThread mail = new MailThread("OTP",numStr , email);
			mail.run();
			System.out.println(num);
			obj.put("Status", "Success");
			
			
		} else {
			obj.put("Status", "Fail");

		}
		
		PrintWriter out = response.getWriter();
		out.println(obj);
	}

}
