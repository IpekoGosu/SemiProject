package com.multi.semi.member.controller;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.multi.semi.kakao.KakaoService;
import com.multi.semi.member.model.service.MemberService;
import com.multi.semi.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@SessionAttributes("loginMember") // loginMember는 세션데이터로 취급
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private KakaoService kakaoService;
	
	// test!!!!!!!!!!!
	@RequestMapping("/login/test")
	public String logintest() {
		return "/testpages/logintest";
	}
	// test!!!!!!!!!!!
	@RequestMapping("/htest/test")
	public String htesttest() {
		return "/testpages/htest";
	}
	
	@GetMapping("/member/enroll")
	public String enrollPage() { // xxxPage = 단순 html/jsp view로 연결하는 핸들러 메소드 패턴
		log.debug("회원 가입 페이지 요청");
		return "/member/enroll";
	}
	
	@PostMapping("/member/enroll")
	public String enroll(Model model, Member member) {
		log.debug("회원가입 요청 member : " + member.toString());
		int result = 0;
		try {
			result = service.save(member);
		} catch (Exception e) {}
		if (result > 0) {
			model.addAttribute("msg", "회원가입 성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "회원가입에 실패하였습니다. 입력정보를 확인하세요.");
			model.addAttribute("location", "/member/enroll");
		}
		return "common/msg";
	}
	
	
	@RequestMapping("/logout")
	public String logout(SessionStatus status) { // status: 세션의 상태를 확인하는 인자
		log.debug("status : " + status.isComplete()); // isComplete : 세션이 완료 되었는지
		status.setComplete(); // 세션을 종료시키는 메소드
		log.debug("status : " + status.isComplete()); 
		return "redirect:/";
	}
	
	@GetMapping("/member/enroll/kakao")
	public String enrollKakao(Model model, String code) {
		log.info("로그인요청");
		if(code != null) {
			try {
				String loginUrl = "http://localhost/semi/kakaoLogin";
				String token = kakaoService.getToken(code, loginUrl);
				Map<String, Object> map = kakaoService.getUserInfo(token);
				String kakaoToken = (String) map.get("id");
				Member loginMember = service.loginKakao(kakaoToken);

				if(loginMember != null) { // 로그인 성공
					model.addAttribute("loginMember", loginMember); // 세션으로 저장되는 코드
					return "redirect:/";
				}
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
		
		return "member/enroll";
	}
	
	@PostMapping("/login")
	public String login(Model model, String memberId, String memberPwd) {
		log.debug("@@@@@ Login : " + memberId + ", " + memberPwd);
		
		Member loginMember = service.login(memberId, memberPwd);
		
		if(loginMember != null) { // 로그인이 성공한 경우
			model.addAttribute("loginMember", loginMember); // 세션에 저장하는 로직 @SessionAttributes 사용
			return "redirect:/"; // index로 보내는 리다이렉트문
		} else { // 로그인이 실패한 경우
			model.addAttribute("msg", "아이디와 패스워드를 확인해주세요.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
	}
	
	@RequestMapping("/loginpage")
	public String loginPage() {
		return "/member/login";
	}
	
	
	
	
	
}








