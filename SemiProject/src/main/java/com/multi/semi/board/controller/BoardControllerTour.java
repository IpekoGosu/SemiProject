package com.multi.semi.board.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.semi.board.model.service.BoardServiceTour;
import com.multi.semi.board.model.vo.AttachFileTour;
import com.multi.semi.board.model.vo.BoardParamTour;
import com.multi.semi.board.model.vo.BoardReplyTour;
import com.multi.semi.board.model.vo.BoardTour;
import com.multi.semi.common.PageInfo;
import com.multi.semi.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class BoardControllerTour {

	@Autowired
	private BoardServiceTour service;
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	@RequestMapping("/boardTour/list")
	public String TourList(Model model, BoardParamTour param) {
		log.debug("@@ board list 요청 param : " + param);
		
		int boardCount = service.getBoardCount(param);
		PageInfo pageInfo = new PageInfo(param.getPage(), 6, boardCount, 9);
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<BoardTour> list = service.getBoardList(param);
		BoardTour firstBoard = service.getBoardFirst();
		
		model.addAttribute("firstBoard", firstBoard);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		
		return "/board/boardTour";
	}
	
	@RequestMapping("/boardTour/view")
	public String view(Model model, @RequestParam("no") int no) {
		BoardTour board = null;
		try {
			board = service.findBoardByBNo(no);
		} catch (Exception e) {}
		if(board == null) {
			return "redirect:error";
		}
		model.addAttribute("board", board);
		
		return "board/postTour";
	}
	
	
	
	@GetMapping("/boardTour/update")
	public String updateView(Model model,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@RequestParam int no
			) {
		BoardTour board = service.findBoardByBNo(no);
		model.addAttribute("board", board);
		return "/board/updateTour";
	}
	
	@PostMapping("/boardTour/update")
	public String update(Model model, HttpSession session,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@ModelAttribute BoardTour board,
			@RequestParam(name="upfiles", required = false) List<MultipartFile> upfiles
			) {
		log.debug("board update 요청, board : " + board +", upfiles : " + upfiles +", " + upfiles.size());
		
		
		BoardTour prevBoard = service.findBoardByBNo(board.getBno());
		board.setMno(loginMember.getMno());
		
		List<AttachFileTour> attachFileList = new ArrayList<AttachFileTour>();
		String rootPath = session.getServletContext().getRealPath("resources");
		String savePath = rootPath + "/upload/boardTour";
		System.out.println("savePath : " + savePath);
		
		for(MultipartFile upfile : upfiles) {
			if(upfile.getSize() == 0) {
				continue;
			}
			String renamedFileName = service.saveFile(upfile, savePath);
			
			if(renamedFileName != null) {
				AttachFileTour file = new AttachFileTour();
				file.setOriginalFilename(upfile.getOriginalFilename());
				file.setRenamedFilename(renamedFileName);
				attachFileList.add(file);
			}
		}
		
		if(attachFileList.size() != 0) {
			// 기존 파일 삭제
			List<AttachFileTour> prevAttachFileList = prevBoard.getAttachFiles();
			for(AttachFileTour file : prevAttachFileList) {
				service.deleteFile(savePath, file);
				service.deleteAttachFile(file);
			}
		}
		board.setAttachFiles(attachFileList);
		
		int result = 0;
		try {
			result = service.saveBoard(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(result > 0) {
			model.addAttribute("msg", "게시글이 수정이 완료 되었습니다.");
			model.addAttribute("location", "/boardTour/view?no=" + board.getBno());
		}else {
			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
			model.addAttribute("location", "/boardTour/list");
		}
		return "common/msg";
	}
	
	
	
	
	// http://localhost/mvc/board/delete?no=162
	@RequestMapping("/boardTour/delete")
	public String deleteBoard(Model model, HttpSession session,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@RequestParam int no) {
		log.debug("게시글 삭제 요청 no : " + no);
		
		String rootPath = session.getServletContext().getRealPath("resources");
		String savePath = rootPath +"/upload/boardTour";
		
		int result = 0;
		try {
			result = service.deleteBoard(no, savePath);
		} catch (Exception e) {}
		
		if(result > 0 ) {
			model.addAttribute("msg", "게시글이 삭제 되었습니다.");
		} else {
			model.addAttribute("msg", "게시글이 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/boardTour/list");
		return "/common/msg";
	}
	
	
	
	
	@PostMapping("/boardTour/reply")
	public String writeReply(Model model,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@ModelAttribute BoardReplyTour reply) {
		log.debug("writeReply : " + reply);
		
		reply.setMno(loginMember.getMno());
		int result = service.saveBoardReply(reply);
		
		if(result > 0 ) {
			model.addAttribute("msg", "리플 등록이 되었습니다.");
		} else {
			model.addAttribute("msg", "리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/boardTour/view?no="+reply.getBno());
		return "/common/msg";
	}
	
	@RequestMapping("boardTour/replyDel")
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
		model.addAttribute("location", "/boardTour/view?no=" + bno);
		return "/common/msg";
	}
	
	
}









