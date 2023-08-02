package com.cardfit.www.memberInfo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cardfit.www.entity.MemberInfoVO;
import com.cardfit.www.entity.UserIssuanceVO;

@Repository
public class MemberInfoDAO {
	
	@Autowired
	private SqlSessionTemplate Mybatis;
	
	public MemberInfoVO getMemberInfo(MemberInfoVO vo) {
		System.out.println("dao : "+vo.getId());
		return Mybatis.selectOne("MemberDAO.getMemberInfo", vo);
	}
	
	public List<UserIssuanceVO> getUserIssuance(MemberInfoVO vo){
		return Mybatis.selectList("MemberDAO.getUserIssuance", vo);
	}
	
	public int countOfIssuanceByMember(MemberInfoVO vo) {
		return Mybatis.selectOne("MemberDAO.countOfIssuanceByMember",vo);
	}
}
