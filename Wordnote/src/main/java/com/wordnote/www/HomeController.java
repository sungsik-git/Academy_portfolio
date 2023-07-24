package com.wordnote.www;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wordnote.www.board.impl.WordService;
import com.wordnote.www.word.WordVO;


@Controller
public class HomeController {
	
	@Autowired
	private WordService wordService;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/insertWordPage")
	public String insertWordPage(WordVO vo, Model model) {
		model.addAttribute("list", wordService.getWordList(vo));
		return "insertWordPage";
	}
	
	@RequestMapping("/insertWord")
	public String insertWord(WordVO vo) {
		wordService.insertWord(vo);
		return "redirect:insertWordPage";
	}
	
	@RequestMapping("/wordTestPage")
	public String wordTestPage(WordVO vo) {
		return "wordTestPage";
	}
	
	@RequestMapping("/wordTestOfAll")
	public String wordTestOfAll(WordVO vo, Model model){
		model.addAttribute("randomWord", wordService.getRandomWord(vo));
		return "wordTestOfAllPage";
	}
	
	@RequestMapping("/wordTestOfWrong")
	public String wordTestOfWrong(WordVO vo) {
		return "wordTestOfWrongPage";
	}
	
	@RequestMapping("/checkAanswer")
	public int checkAanswer(HttpServletRequest request) {
		int result =0;
		
		String answer = request.getParameter("answer");
		System.out.println(answer);
		String questionWord = request.getParameter("questionWord");
		System.out.println(questionWord);
		
		return result; 
	}
}
