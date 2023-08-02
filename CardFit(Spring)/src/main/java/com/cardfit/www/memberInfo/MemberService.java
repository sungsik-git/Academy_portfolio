package com.cardfit.www.memberInfo;

import java.util.List;

import com.cardfit.www.entity.MemberInfoVO;
import com.cardfit.www.entity.UserIssuanceVO;

public interface MemberService {
	
	public MemberInfoVO getMemberInfo(MemberInfoVO vo);
	
	public List<UserIssuanceVO> getUserIssuance(MemberInfoVO vo);
	
	public int countOfIssuanceByMember(MemberInfoVO vo);
}
