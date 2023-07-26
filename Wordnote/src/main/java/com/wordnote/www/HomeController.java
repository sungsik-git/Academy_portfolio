package com.wordnote.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	    public String wordTestOfWrong(WordVO vo, Model model) {
	        model.addAttribute("randomWord", wordService.getRandomWrongWord(vo));
	        return "wordTestOfWrongPage";
	    }

	    @RequestMapping("/updateClear")
	    @ResponseBody
	    public void updateClear(@RequestParam("wordNum") int wordNum) {
	        WordVO vo = new WordVO();
	        vo.setNum(wordNum);
	        wordService.updateClear(vo);
	    }

	    @RequestMapping("/updateWrong")
	    @ResponseBody
	    public void updateWrong(@RequestParam("wordNum") int wordNum) {
	        WordVO vo = new WordVO();
	        vo.setNum(wordNum);
	        wordService.updateWrong(vo);
	    }

}
