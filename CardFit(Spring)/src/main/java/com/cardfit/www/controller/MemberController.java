package com.cardfit.www.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cardfit.www.entity.MemberInfoVO;
import com.cardfit.www.memberInfo.MemberServiceImpl;

@Controller
@RequestMapping(value="/member/**")
public class MemberController {

	@Autowired
	private MemberServiceImpl memberService;
	
	@RequestMapping("login")
	public String login(MemberInfoVO vo, HttpServletRequest request) {
		return "member/login";
	}
	
	@RequestMapping(value = "loginOK", method = RequestMethod.POST)
	public String loginOK(MemberInfoVO vo, HttpSession session, HttpServletRequest request) {
	    vo = memberService.getMemberInfo(vo);

	    if (vo != null) {
	        session.setAttribute("id", vo.getId());
	        session.setAttribute("pw", vo.getPw());
	        session.setAttribute("division", vo.getDivision());
	        return "redirect:../";
	    } else {
	        request.setAttribute("result", 1);
	        return "/member/login";
	    }
	}

	
	@RequestMapping("logout")
	public String logout(MemberInfoVO vo, HttpSession session) {
		
		session.removeAttribute("id");
		session.removeAttribute("pw");
		session.removeAttribute("division");
		
		return "redirect:../";
	}
	
	@RequestMapping("mypage")
	public String mypage(MemberInfoVO vo,Model model,HttpSession session) {
		//get memberinfo
		String id = (String) session.getAttribute("id"); 
		String pw = (String) session.getAttribute("pw");
		vo.setId(id);	vo.setPw(pw);
		model.addAttribute("dto",memberService.getMemberInfo(vo));
		
		//발급 카드 상태
		model.addAttribute("issuanceInfo",memberService.getUserIssuance(vo));
		
		//발급 카드 수
		model.addAttribute("issCnt", memberService.countOfIssuanceByMember(vo));
		
		return "member/mypage";
	}
	
	@RequestMapping("memberIssuance")
	public String memberIssuance(MemberInfoVO vo) {
		
		return "/member/myPageMenu/memberIssuance";
	}
	
	@RequestMapping("memberModify")
	public String memberModify(MemberInfoVO vo) {
		return "/member/myPageMenu/memberModify";
	}
	
	@RequestMapping("memberChangePW")
	public String memberChangePW(MemberInfoVO vo) {
		return "/member/myPageMenu/memberChangePW";
	}
	
	@RequestMapping("memberDeleteInfo")
	public String memberDeleteInfo(MemberInfoVO vo) {
		return "/member/myPageMenu/memberDeleteInfo";
	}
	
	@RequestMapping("/helpNotice")
	public String helpNotice(MemberInfoVO vo) {
		return "/member/myPageMenu/helpNotice";
	}
	
	@RequestMapping("/helpQNA")
	public String helpQNA(MemberInfoVO vo) {
		return "/member/myPageMenu/helpQNA";
	}
	
	@RequestMapping("/helpDirect")
	public String helpDirect(MemberInfoVO vo) {
		return "/member/myPageMenu/helpDirect";
	}
	
	@RequestMapping("/searchCardTest")
	public String searchCardTest(MemberInfoVO vo) {
		return "/member/searchCardTest";
	}
	
	@RequestMapping("/emailIdentify")
	public String emailIdentify(MemberInfoVO vo){
		return "/member/emailIdentify";
	}
	

}
