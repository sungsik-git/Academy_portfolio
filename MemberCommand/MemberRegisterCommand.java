package com.cardfit.www.MemberCommand;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cardfit.www.DAO.MemberInfoDAO;
import com.cardfit.www.DTO.MemberInfoDTO;
import com.cardfit.wwwCommand.Command;

public class MemberRegisterCommand implements Command{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberInfoDTO dto = new MemberInfoDTO();
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		dto.setName(request.getParameter("name"));
		dto.setRegNum(request.getParameter("regNumF")+request.getParameter("regNumB"));
		dto.setPhone(request.getParameter("phone"));
		dto.setAddress(request.getParameter("postcode")+"/"
			+request.getParameter("roadAddress")+"/"
			+request.getParameter("dibunAddress") + "/"
			+request.getParameter("detailAddress") + "/"
			+request.getParameter("extraAddress"));
		dto.setEmail(request.getParameter("email"));
		
		MemberInfoDAO dao = MemberInfoDAO.getMemberDAO();
		if(dao.memberRegisterDAO(dto) >= 1) {
			System.out.println("회원가입 성공");
		}else {
			System.out.println("회원가입 실패");
		}
		;
	}
}
