package com.wordnote.www.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wordnote.www.word.WordVO;

@Service("wordService")
public class WordServiceImpl implements WordService{
	
	@Autowired
	private WordDAOMybatis dao;

	@Override
	public void insertWord(WordVO vo) {
		dao.insertWord(vo);
	}


	@Override
	public List<WordVO> getWordList(WordVO vo) {
		return dao.getWordList(vo);
	}


	@Override
	public List<WordVO> getWordListOfAll50(WordVO vo) {
		return dao.getWordListOfAll50(vo);
	}


	@Override
	public WordVO getRandomWord(WordVO vo) {
		return dao.getRandomWordVO(vo);
	}


	@Override
	public WordVO getRandomWrongWord(WordVO vo) {
		return dao.getRandomWrongWord(vo);
	}


	@Override
	public void updateClear(WordVO vo) {
		dao.updateClear(vo);
	}


	@Override
	public void updateWrong(WordVO vo) {
		dao.updateWrong(vo);
	}
	

}