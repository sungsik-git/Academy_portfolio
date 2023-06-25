package com.cardfit.www.ManagerCommand;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cardfit.www.DAO.ManagerDAO;
import com.cardfit.www.DTO.UserIssuanceDTO;
import com.cardfit.wwwCommand.Command;

public class GetIssuanceOfCompanyCommand implements Command{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String company = String.valueOf(session.getAttribute("company"));
			
		ManagerDAO dao = ManagerDAO.getManagerDAO();
		ArrayList<UserIssuanceDTO> ComapnyIssuancelist = dao.getCompnayIssuance(company, 0);
		request.setAttribute("ComapnyIssuancelist", ComapnyIssuancelist);
	}
}
