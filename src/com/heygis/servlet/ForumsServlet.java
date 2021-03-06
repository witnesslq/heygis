package com.heygis.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heygis.beans.ForumsThreadPage;
import com.heygis.service.ForumsService;

/**
 * Servlet implementation class ForumsServlet
 */
public class ForumsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ForumsServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int page = Integer.parseInt(request.getParameter("page"));
		int fid = Integer.parseInt(request.getParameter("fid"));
		ForumsService fs = new ForumsService();
		ForumsThreadPage threadPage = fs.getThreadPage(fid, page);
		if(threadPage.getFid() < 4){
			request.setAttribute("threadPage", threadPage);
			RequestDispatcher dis = request.getRequestDispatcher("/forums/forums.jsp");
			dis.forward(request, response);
		}else{
			request.setAttribute("message", "访问版块不存在");
			RequestDispatcher dis =  request.getRequestDispatcher("/result.jsp");
			dis.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
