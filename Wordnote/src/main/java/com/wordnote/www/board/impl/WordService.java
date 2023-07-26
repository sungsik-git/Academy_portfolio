package com.wordnote.www.board.impl;

import java.util.List;

import com.wordnote.www.word.WordVO;

public interface WordService {

	// CRUD 기능의 메소드 구현
	// 글 등록	
	void insertWord(WordVO vo);

	List<WordVO> getWordList(WordVO vo);
	
	List<WordVO> getWordListOfAll50(WordVO vo);
	
	WordVO getRandomWord(WordVO vo);
	
	WordVO getRandomWrongWord(WordVO vo);
	
	void updateClear(WordVO vo);
	
	void updateWrong(WordVO vo);
}