package com.cardfit.www.MemberCommand;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cardfit.wwwCommand.Command;

public class LogoutCommand implements Command{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		session.removeAttribute("pw");
		session.removeAttribute("sessionCheck");
		if(session.getAttribute("counsellerName")!=null) {
			session.removeAttribute("counsellerName");
		}
		if(session.getAttribute("company")!=null) {
			session.removeAttribute("company");
		}
		if(session.getAttribute("division")!=null) {
			session.removeAttribute("division");
		}
			
	}
}
