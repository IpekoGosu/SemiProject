package com.multi.semi.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.multi.semi.board.model.service.BoardServicePrf;
import com.multi.semi.board.model.service.BoardServiceTour;
import com.multi.semi.board.model.vo.BoardParamPrf;
import com.multi.semi.board.model.vo.BoardParamTour;
import com.multi.semi.board.model.vo.BoardPrf;
import com.multi.semi.board.model.vo.BoardTour;
import com.multi.semi.common.PageInfo;
import com.multi.semi.kakao.KakaoService;
import com.multi.semi.member.model.service.MemberService;
import com.multi.semi.member.model.vo.Member;
import com.multi.semi.member.model.vo.Ticket;
import com.multi.semi.performance.model.service.PerformanceService;
import com.multi.semi.performance.model.vo.Performance;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@SessionAttributes("loginMember") // loginMember는 세션데이터로 취급
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private KakaoService kakaoService;
	
	@Autowired
	private BoardServicePrf bPrfservice;
	@Autowired
	private BoardServiceTour bTourservice;
	
	@Autowired
	private PerformanceService prfservice;
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
	
	// 일반회원가입
	@GetMapping("/member/enroll")
	public String enrollPage() { // xxxPage = 단순 html/jsp view로 연결하는 핸들러 메소드 패턴
		log.debug("회원 가입 페이지 요청");
		return "/member/enroll";
	}
	@PostMapping("/member/enroll")
	public String enroll(Model model, Member member) {
		String seoul = "서울특별시 ";
		member.setAddress(seoul + member.getAddress());
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
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(SessionStatus status) { // status: 세션의 상태를 확인하는 인자
		log.debug("status : " + status.isComplete()); // isComplete : 세션이 완료 되었는지
		status.setComplete(); // 세션을 종료시키는 메소드
		log.debug("status : " + status.isComplete()); 
		return "redirect:/";
	}
	
	// 카카오회원가입
	@GetMapping("/member/enroll/kakao")
	public String enrollKakao(Model model, String code) {
		log.info("카카오회원가입요청");
		if(code != null) {
			try {
				String enrollUrl = "http://localhost/semi/member/enroll/kakao";
				System.out.println("code : " + code);
				String token = kakaoService.getToken(code, enrollUrl);
				Map<String, Object> map = kakaoService.getUserInfo(token);
				System.out.println("map : " + map);
				model.addAttribute("kakaoMap", map);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "member/enroll";
	}
	
	// 카카오로그인
	@GetMapping("/kakaoLogin")
	public String kakaoLogin(Model model, String code) {
		log.info("로그인 요청");
		if(code != null) {
			try {
				String loginUrl = "http://localhost/semi/kakaoLogin";
				String token = kakaoService.getToken(code, loginUrl);
				Map<String, Object> map = kakaoService.getUserInfo(token);
				String kakaoToken = (String) map.get("id");
				Member loginMember = service.loginKakao(kakaoToken);

				if(loginMember != null) { // 로그인 성공
					model.addAttribute("loginMember", loginMember); // 세션으로 저장되는 코드, 이유: @SessionAttributes
					return "redirect:/";
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("msg", "로그인에 실패하였습니다.");
		model.addAttribute("location","/");
		return "common/msg";
	}
	
	// 일반로그인
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
	
	
	@PostMapping("/member/update")
	public String updatePwd(Model model,
			String prevPassword, String newPassword, 
			@SessionAttribute(required = true) Member loginMember) {
		Member tryMember = service.login(loginMember.getId(), prevPassword);
		if (tryMember == null) {
			model.addAttribute("msg", "기존 비밀번호가 다릅니다!");
			model.addAttribute("location", "/");
		} else {
			int result = 0;
			try {
				result = service.updatePwd(loginMember.getMno(), newPassword);
			} catch (Exception e) {}
			if (result > 0) {
				model.addAttribute("msg", "비밀번호 변경 성공");
			} else {
				model.addAttribute("msg", "변경 실패! 오류가 발생했습니다");
			}
		}
		model.addAttribute("script", "self.close()");
		return "common/msg";
	}
	
	
	
	
	
	// AJAX로 ID 중복검사하는 핸들러
	@RequestMapping("/member/idCheck")
	public ResponseEntity<Map<String, Object>> idCheck(String id){
		log.debug("아이디 중복 확인 : " + id);
		
		boolean validate = service.validate(id);
		Map<String, Object> map = new HashMap<>();
		map.put("validate", validate);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	
	@RequestMapping("/member/my")
	public String myPage(Model model, 
			@SessionAttribute(name="loginMember") Member loginMember,
			@RequestParam Map<String, Object> param
			) {
		model.addAttribute("loginMember", loginMember);
		
		// 공연글 작성한거 리스트
		BoardParamPrf paramPrf = new BoardParamPrf();
		paramPrf.setSearchType("writer");
		paramPrf.setSearchValue(loginMember.getName());
		paramPrf.setOrderType("time");
		int boardCountPrf = bPrfservice.getBoardCount(paramPrf);
		PageInfo pageInfoPrf = new PageInfo(paramPrf.getPage(), 3, boardCountPrf, 5);
		paramPrf.setLimit(pageInfoPrf.getListLimit());
		paramPrf.setOffset(pageInfoPrf.getStartList());
		List<BoardPrf> listPrf = bPrfservice.getBoardList(paramPrf);
		model.addAttribute("listPrf", listPrf);
		
		// 관광글 작성한거 리스트
		BoardParamTour paramTour = new BoardParamTour();
		paramTour.setSearchType("writer");
		paramTour.setSearchValue(loginMember.getName());
		paramTour.setOrderType("time");
		int boardCountTour = bTourservice.getBoardCount(paramTour);
		PageInfo pageInfoTour = new PageInfo(paramTour.getPage(), 3, boardCountTour, 5);
		paramTour.setLimit(pageInfoTour.getListLimit());
		paramTour.setOffset(pageInfoTour.getStartList());
		List<BoardTour> listTour = bTourservice.getBoardList(paramTour);
		model.addAttribute("listTour", listTour);
		
		// 공연 예매 리스트
		List<Ticket> tList = service.findTicket(loginMember.getMno());
		model.addAttribute("tList", tList);
		List<Performance> pList = new ArrayList<Performance>();
		for (Ticket ticket : tList) {
			param.put("pid", ticket.getPid());
			pList.add(prfservice.showDetailById(param));
			param.clear();
		}
		model.addAttribute("pList", pList);
		
		
		return "member/myPage";
	}
	
	
	// ticket
	@GetMapping("/ticketing/ticket")
	public String startTicket(Model model, 
			@SessionAttribute Member loginMember, 
			@RequestParam Map<String, Object> pid
			) {
		Performance prfItem = prfservice.showDetailById(pid);
		model.addAttribute("prfItem", prfItem);
		model.addAttribute("loginMember", loginMember);
		return "ticketing/ticket1";
	}
	
	@PostMapping("/ticketing/ticket")
	public String makeTicket(Model model, Ticket ticket,
			@RequestParam Map<String, Object> pid
			) {
		
		int result = 0;
		try {
			result = service.saveTicket(ticket);
		} catch (Exception e) {
		}
		if (result > 0) {
			System.out.println("예매 성공!@@@@@@@@@@@");
		} else {
			System.out.println("@@@@@@@@@@@ 예매 실패");
			return "common/error";
		}
		Performance prfItem = prfservice.showDetailById(pid);
		int total = 0;
		int count = ticket.getSeatCount();
		switch(ticket.getSeatType()) {
		case "VIP석": total = 170000 * count; break;
		case "R석": total = 140000 * count; break;
		case "S석": total = 110000 * count; break;
		case "A석": total = 80000 * count; break;
		default: System.out.println("오류발생");
		}
		System.out.println(total + "@@@@@@@@@@@@@@@@@@");
		model.addAttribute("total", total);
		model.addAttribute("ticket", ticket);
		model.addAttribute("prfItem", prfItem);
		return "ticketing/ticket2";
	}
	
	@RequestMapping("/ticketing/last")
	public String lastTicket(Model model, int reserveno,
			@RequestParam Map<String, Object> pid
			) {
		Ticket ticket = service.findTicketByRno(reserveno);
		model.addAttribute("ticket", ticket);
		Performance prfItem = prfservice.showDetailById(pid);
		model.addAttribute("prfItem", prfItem);
		int total = 0;
		int count = ticket.getSeatCount();
		switch(ticket.getSeatType()) {
		case "VIP석": total = 170000 * count; break;
		case "R석": total = 140000 * count; break;
		case "S석": total = 110000 * count; break;
		case "A석": total = 80000 * count; break;
		default: System.out.println("오류발생");
		}
		
		model.addAttribute("total", total);
		return "ticketing/ticket3";
	}
	
	@RequestMapping("/ticketing/delete")
		public String deleteTicket(Model model, @RequestParam int reserveno,
				@SessionAttribute Member loginMember
				) {
		int result = 0;
		result = service.deleteTic(reserveno);
		if (result > 0) {
			model.addAttribute("msg", "예매취소 성공");
		} else {
			model.addAttribute("msg", "취소실패. 문제가 발생했습니다.");
		}
		model.addAttribute("location", "/member/my");
		return "common/msg";
	}
	
}








