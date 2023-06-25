package com.cardfit.www.ManagerCommand;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cardfit.www.DAO.ManagerDAO;
import com.cardfit.wwwCommand.Command;

public class DeleteIssuanceOKCommand implements Command{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ManagerDAO dao = ManagerDAO.getManagerDAO();
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
		int result = dao.deleteIssuanceInfo(num);
		if(result == 1) request.setAttribute("result", result);
		else System.out.println("발급신청 삭제 실패");
	}
	
}
