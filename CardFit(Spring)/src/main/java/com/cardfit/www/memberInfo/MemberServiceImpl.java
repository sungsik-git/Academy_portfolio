package com.cardfit.www.memberInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cardfit.www.entity.MemberInfoVO;
import com.cardfit.www.entity.UserIssuanceVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberInfoDAO dao;

	@Override
	public MemberInfoVO getMemberInfo(MemberInfoVO vo) {
		return dao.getMemberInfo(vo);
	}

	@Override
	public List<UserIssuanceVO> getUserIssuance(MemberInfoVO vo) {
		return dao.getUserIssuance(vo);
	}

	@Override
	public int countOfIssuanceByMember(MemberInfoVO vo) {
		return dao.countOfIssuanceByMember(vo);
	}
	
}
