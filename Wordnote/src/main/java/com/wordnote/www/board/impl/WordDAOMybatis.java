package com.wordnote.www.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wordnote.www.word.WordVO;

@Repository
public class WordDAOMybatis{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertWord(WordVO vo) {
		System.out.println("===> Mybatis로 insertWord() 기능 처리");
		mybatis.insert("WordDAO.insertWord", vo);
	}
	
	public List<WordVO> getWordList(WordVO vo) {
		System.out.println("===> Mybatis로 getWordList() 기능처리");
		return mybatis.selectList("WordDAO.getWordList");
	}
	
	public List<WordVO> getWordListOfAll50(WordVO vo){
		System.out.println("===> Mybatis로 모든 단어중 50개 단어 get");
		return mybatis.selectList("WordDAO.getWordListOfAll50");
	}
	
	public WordVO getRandomWordVO(WordVO vo) {
		System.out.println("===> Mybatis get random word");
		return mybatis.selectOne("WordDAO.getRandomWord");
	}
	
	public WordVO getRandomWrongWord(WordVO vo) {
		System.out.println("===> Mybatis get Random Wrong Word");
		return mybatis.selectOne("WordDAO.getRandomWrongWord");
	}
	
	public void updateClear(WordVO vo) {
		System.out.println("===> update word clear = 1");
		mybatis.update("WordDAO.updateClear");
	}
	
	public void updateWrong(WordVO vo) {
		System.out.println("===> update word clear = 0");
		mybatis.update("WordDAO.updateWrong");
	}
}