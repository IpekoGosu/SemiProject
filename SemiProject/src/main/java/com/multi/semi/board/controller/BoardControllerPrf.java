package com.multi.semi.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.semi.board.model.service.BoardServicePrf;
import com.multi.semi.board.model.vo.BoardParamPrf;
import com.multi.semi.board.model.vo.BoardPrf;
import com.multi.semi.board.model.vo.BoardReplyPrf;
import com.multi.semi.common.PageInfo;
import com.multi.semi.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class BoardControllerPrf {

	@Autowired
	private BoardServicePrf service;
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	@RequestMapping("/boardprf/list")
	public String prfList(Model model, BoardParamPrf param) {
		log.debug("@@ board list 요청 param : " + param);
		
		int boardCount = service.getBoardCount(param);
		PageInfo pageInfo = new PageInfo(param.getPage(), 6, boardCount, 9);
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<BoardPrf> list = service.getBoardList(param);
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		
		return "/board/boardPrf";
	}
	
	@RequestMapping("/boardprf/view")
	public String view(Model model, @RequestParam("no") int no) {
		BoardPrf board = null;
		try {
			board = service.findBoardByBNo(no);
		} catch (Exception e) {}
		if(board == null) {
			return "redirect:error";
		}
		model.addAttribute("board", board);
		
		return "board/postPrf";
	}
	
	
	
	
	
	
	
	
	@PostMapping("/boardprf/reply")
	public String writeReply(Model model,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@ModelAttribute BoardReplyPrf reply) {
		log.debug("writeReply : " + reply);
		
		reply.setMno(loginMember.getMno());
		int result = service.saveBoardReply(reply);
		
		if(result > 0 ) {
			model.addAttribute("msg", "리플 등록이 되었습니다.");
		} else {
			model.addAttribute("msg", "리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/boardprf/view?no="+reply.getBno());
		return "/common/msg";
	}
	
	@RequestMapping("boardprf/replyDel")
	public String deleteReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int rno, int bno
			){
		log.info("리플 삭제 요청");
		int result = service.deleteBoardReply(rno, bno);
		
		if(result > 0) {
			model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/boardprf/view?no=" + bno);
		return "/common/msg";
	}
	
	
}









