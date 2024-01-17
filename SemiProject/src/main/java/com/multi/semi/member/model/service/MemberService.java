package com.multi.semi.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.semi.member.model.mapper.MemberMapper;
import com.multi.semi.member.model.vo.Member;

@Service
public class MemberService {
	@Autowired
	private MemberMapper mapper;
	
	
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) {
		int result = 0;
		
		return result;
	}
	
	public Member loginKakao(String kakaoToken) {
		Member member = mapper.selectMemberByKakaoToken(kakaoToken);
		if (member == null) {
			return null;
		} else {
			return member;
		}
	}
	
	
}
