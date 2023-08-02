package com.cardfit.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cardfit.www.entity.CardInfoVO;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index() {
		System.out.println("홈페이지로 이동");
		return "index";
	}
	
	@RequestMapping("/totalRanking")
	public String totalRanking(CardInfoVO vo) {
		return "/home/ranking/totalRanking"; 
	}
	
	@RequestMapping("/rewordRanking")
	public String rewordRanking(CardInfoVO vo) {
		return "/home/ranking/rewordRanking";
	}
	
	@RequestMapping("/feeRanking")
	public String feeRanking(CardInfoVO vo) {
		return "/home/ranking/feeRanking";
	}
	
	@RequestMapping("/companyRanking")
	public String companyRanking(CardInfoVO vo) {
		return "/home/ranking/companyRnaking";
	}
}
