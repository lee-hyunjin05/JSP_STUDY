package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDao;

public class DeleteProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. Parameter -> num ,passwd,  pageNum
		// 2. BoardDao bd 생성
		// 3. int result = bd.delete(num, passwd);
		// 4. request -> num , pageNum , result 저장
		try {
			int num = Integer.parseInt(request.getParameter("num"));
			String passwd = request.getParameter("passwd");
			String pageNum = request.getParameter("pageNum");
			BoardDao bd = BoardDao.getInstance();
			int result = bd.delete(num, passwd);
			request.setAttribute("result", result);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("num", num);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return "deletePro.jsp";
	}

}
