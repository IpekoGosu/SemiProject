package com.multi.semi.board.controller;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.semi.board.model.service.BoardServicePrf;
import com.multi.semi.board.model.vo.AttachFilePrf;
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
	
	@RequestMapping("/boardPrf/list")
	public String PrfList(Model model, BoardParamPrf param) {
		log.debug("@@ board list 요청 param : " + param);
		
		int boardCount = service.getBoardCount(param);
		PageInfo pageInfo = new PageInfo(param.getPage(), 6, boardCount, 9);
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<BoardPrf> list = service.getBoardList(param);
		BoardPrf firstBoard = service.getBoardFirst();
		
		model.addAttribute("firstBoard", firstBoard);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		
		return "board/boardPrf";
	}
	
	@RequestMapping("/boardPrf/view")
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
	
	
//	글쓰기 파트 추가바람
	
	
	
	@GetMapping("/boardPrf/update")
	public String updateView(Model model,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@RequestParam int no
			) {
		BoardPrf board = service.findBoardByBNo(no);
		model.addAttribute("board", board);
		return "board/updatePrf";
	}
	
	@PostMapping("/boardPrf/update")
	public String update(Model model, HttpSession session,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@ModelAttribute BoardPrf board,
			@RequestParam(name="upfiles", required = false) List<MultipartFile> upfiles
			) {
		log.debug("board update 요청, board : " + board +", upfiles : " + upfiles +", " + upfiles.size());
		
		
		BoardPrf prevBoard = service.findBoardByBNo(board.getBno());
		board.setMno(loginMember.getMno());
		
		List<AttachFilePrf> attachFileList = new ArrayList<AttachFilePrf>();
		String rootPath = session.getServletContext().getRealPath("resources");
		String savePath = rootPath + "/upload/boardPrf";
		System.out.println("savePath : " + savePath);
		
		for(MultipartFile upfile : upfiles) {
			if(upfile.getSize() == 0) {
				continue;
			}
			String renamedFileName = service.saveFile(upfile, savePath);
			
			if(renamedFileName != null) {
				AttachFilePrf file = new AttachFilePrf();
				file.setOriginalFilename(upfile.getOriginalFilename());
				file.setRenamedFilename(renamedFileName);
				attachFileList.add(file);
			}
		}
		
		if(attachFileList.size() != 0) {
			// 기존 파일 삭제
			List<AttachFilePrf> prevAttachFileList = prevBoard.getAttachFiles();
			for(AttachFilePrf file : prevAttachFileList) {
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
			model.addAttribute("location", "/boardPrf/view?no=" + board.getBno());
		}else {
			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
			model.addAttribute("location", "/boardPrf/list");
		}
		return "common/msg";
	}
	
	
	
	
	// http://localhost/mvc/board/delete?no=162
	@RequestMapping("/boardPrf/delete")
	public String deleteBoard(Model model, HttpSession session,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@RequestParam int no) {
		log.debug("게시글 삭제 요청 no : " + no);
		
		String rootPath = session.getServletContext().getRealPath("resources");
		String savePath = rootPath +"/upload/boardPrf";
		
		int result = 0;
		try {
			result = service.deleteBoard(no, savePath);
		} catch (Exception e) {}
		
		if(result > 0 ) {
			model.addAttribute("msg", "게시글이 삭제 되었습니다.");
		} else {
			model.addAttribute("msg", "게시글이 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/boardPrf/list");
		return "common/msg";
	}
	
	
	
	
	@PostMapping("/boardPrf/reply")
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
		model.addAttribute("location", "/boardPrf/view?no="+reply.getBno());
		return "/common/msg";
	}
	
	@RequestMapping("boardPrf/replyDel")
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
		model.addAttribute("location", "/boardPrf/view?no=" + bno);
		return "common/msg";
	}
	
	
	// 파일 다운로드 하는 코드
	@RequestMapping("boardPrf/fileDown")
	public ResponseEntity<Resource> fileDown(
			@RequestParam("fno") int fno,
			@RequestHeader(name="user-agent") String userAgent
			){
		try {
			AttachFilePrf file = service.findAttachFile(fno);

			Resource resource = resourceLoader.getResource("resources/upload/boardPrf/" + file.getRenamedFilename());
			String downName = null;
			
			// 인터넷 익스플로러 인 경우
			boolean isMSIE = userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1;

			if (isMSIE) { // 익스플로러 처리하는 방법
				downName = URLEncoder.encode(file.getOriginalFilename(), "UTF-8").replaceAll("\\+", "%20");
			} else {    		
				downName = new String(file.getOriginalFilename().getBytes("UTF-8"), "ISO-8859-1"); // 크롬
			}
			
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\"" + downName + "\"")
					.header(HttpHeaders.CONTENT_LENGTH, String.valueOf(resource.contentLength()))
					.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM.toString())
					.body(resource);
		} catch (Exception e) {}
		
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 실패했을 경우
	}
	
	
}









