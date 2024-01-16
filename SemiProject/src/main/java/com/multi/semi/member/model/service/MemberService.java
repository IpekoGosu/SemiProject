package com.multi.semi.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.semi.member.model.mapper.MemberMapper;
import com.multi.semi.member.model.vo.Member;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	public Member loginKakao(String kakaoToken) {
		Member member = mapper.selectMemberByKakaoToken(kakaoToken);
		if (member == null) {
			return null;
		} else {
			return member;
		}
	}
	
	
}
