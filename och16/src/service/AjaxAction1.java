package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Board;
import dao.BoardDao;

public class AjaxAction1 implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
	        request.setCharacterEncoding("utf-8"); 
			response.setContentType("text/html;charset=utf-8");
	        // 본인 필요 DB Text가져 옴 (DAO 연결)
	    	int num = Integer.parseInt(request.getParameter("num"));
	    	BoardDao bd = BoardDao.getInstance();
			Board board = bd.select(num);
			System.out.println("board.getWriter()->"+board.getWriter());
			request.setAttribute("writer", board.getWriter());

		} catch(Exception e) { 
			System.out.println(e.getMessage()); 
			}
		//request.setAttribute("retStr", "retStr");
       return "ajax1";
	}

}
