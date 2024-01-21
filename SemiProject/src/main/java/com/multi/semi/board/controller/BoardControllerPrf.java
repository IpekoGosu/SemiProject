package com.multi.semi.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.semi.board.model.service.BoardServicePrf;
import com.multi.semi.board.model.vo.BoardParamPrf;
import com.multi.semi.board.model.vo.BoardPrf;
import com.multi.semi.common.PageInfo;

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
	
	
	
	
	
}









