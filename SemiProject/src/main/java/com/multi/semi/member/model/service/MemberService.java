package com.multi.semi.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.semi.member.model.mapper.MemberMapper;
import com.multi.semi.member.model.vo.Member;
import com.multi.semi.member.model.vo.Ticket;

@Service
public class MemberService {
	@Autowired
	private MemberMapper mapper;
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	public Member login(String id, String pwd) {
		Member member = mapper.selectMemberById(id);
		if(member == null) {
			return null;
		}
		// BCryptPasswordEncoder 사용법
		System.out.println(member.getPassword()); // 정상적인 회원가입 된 경우 DB에는 암호화(hash)된 PWD가 저장되어 있음
		System.out.println(pwEncoder.encode(pwd)); // 사용자의 입력값을 hash로 바꿔주는 코드
		System.out.println(pwEncoder.matches(pwd, member.getPassword())); // hash 변환 및 비교까지 해주는 코드
		
		if (pwEncoder.matches(pwd, member.getPassword())) {
			return member;
		} else {
			return null;
		}
	}
	
	
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) {
		int result = 0;
		
		if (member.getMno() == 0) { // 신규회원가입
			String encodePwd = pwEncoder.encode(member.getPassword());
			member.setPassword(encodePwd);
			result = mapper.insertMember(member);
		} else { // update
			result = mapper.updateMember(member);
		}
		return result;
	}
	
	public boolean validate(String id) { // 회원 존재여부
		return mapper.selectMemberById(id) != null;
	}
	
	public Member findByNo(int mno) { // mno로 찾기
		return mapper.selectMember(mno);
	}
	
	public Member findById(String id) { // id로 찾기
		return mapper.selectMemberById(id);
	}
	
	public List<Member> findAll(){ // 전체조회
		return mapper.selectAll();
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int updatePwd(int mno, String password) {
		Map<String, String> map = new HashMap<>(); // 비밀번호, mno 필수
		map.put("mno", "" + mno); // string형식 맞춰주기
		map.put("password", pwEncoder.encode(password)); // 암호화해서 저장
		return mapper.updatePwd(map);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int delete(int mno) {
		return mapper.deleteMember(mno);
	}
	
	public Member loginKakao(String kakaoToken) { // 카카오로그인
		Member member = mapper.selectMemberByKakaoToken(kakaoToken);
		if (member == null) {
			return null;
		} else {
			return member;
		}
	}
	
	
	public List<Ticket> findTicket(int mno) {
		List<Ticket> tickets = mapper.selectTicketBymno(mno);
		return tickets;
	}
	public Ticket findTicketByRno(int reserveno) {
		return mapper.selectTicketByReserveno(reserveno);
	}
	@Transactional(rollbackFor = Exception.class)
	public int saveTicket(Ticket ticket) {
		System.out.println(ticket.toString());
		return mapper.insertTicket(ticket);
	}
	@Transactional(rollbackFor = Exception.class)
	public int deleteTic(int reserveno) {
		return mapper.deleteTicket(reserveno);
	}
	
	
}
