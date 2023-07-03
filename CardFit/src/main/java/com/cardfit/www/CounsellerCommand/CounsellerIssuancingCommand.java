package com.cardfit.www.CounsellerCommand;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cardfit.www.DAO.ManagerDAO;
import com.cardfit.www.DTO.UserIssuanceDTO;
import com.cardfit.wwwCommand.Command;

public class CounsellerIssuancingCommand implements Command{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String counsellerName = String.valueOf(session.getAttribute("counsellerName"));
		
		ManagerDAO dao = ManagerDAO.getManagerDAO();
		ArrayList<UserIssuanceDTO> list = dao.counsellerIssuancingCommand(counsellerName, 1);
		
		request.setAttribute("list", list);
		
	}
	
}
