package com.multi.semi;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.semi.board.model.service.BoardServicePrf;
import com.multi.semi.board.model.vo.BoardParamPrf;
import com.multi.semi.board.model.vo.BoardPrf;
import com.multi.semi.common.PageInfo;
import com.multi.semi.performance.model.service.PerformanceService;
import com.multi.semi.performance.model.vo.Performance;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private PerformanceService service;
	
	@Autowired
	private BoardServicePrf bservicePrf;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(@RequestParam Map<String, Object> param, Model model) {
		
		List<Performance> items = service.todayRank(param);
		model.addAttribute("items", items);
		
		// 관광지 게시판 정보 추가해주는부분
		BoardParamPrf bparamPrf = new BoardParamPrf();
		bparamPrf.setOrderType("time");
		bparamPrf.setLimit(6);
		bparamPrf.setOffset(0);
		List<BoardPrf> listPrf = bservicePrf.getBoardList(bparamPrf);
		model.addAttribute("listPrf", listPrf);
		
		return "index";
	}
	
	
	
}
