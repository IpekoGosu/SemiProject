package com.multi.semi.performance.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.semi.board.model.service.BoardServicePrf;
import com.multi.semi.board.model.vo.BoardParamPrf;
import com.multi.semi.board.model.vo.BoardParamTour;
import com.multi.semi.board.model.vo.BoardPrf;
import com.multi.semi.board.model.vo.BoardTour;
import com.multi.semi.common.PageInfo;
import com.multi.semi.member.model.vo.Member;
import com.multi.semi.performance.model.service.PerformanceService;
import com.multi.semi.performance.model.vo.Performance;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j 
public class PerformanceController {
	@Autowired
	private PerformanceService service;
	
	@Autowired
	private BoardServicePrf bservicePrf;
	
	@GetMapping(value = "/show-inform")
	public String showInformPage(Model model, @RequestParam Map<String, Object> param, HttpSession session) {
		int page1 = 1;
		int page2 = 1;
		try {
			page1 = Integer.parseInt((String) param.get("page1"));
		} catch (Exception e) {}
		try {
			page2 = Integer.parseInt((String) param.get("page2"));
		} catch (Exception e) {}
		
		List<String> genreList = Arrays.asList("클래식", "대중음악", "뮤지컬", "연극", "서커스/마술", "국악", "무용");
		List<String> regionList = Arrays.asList("종로구", "마포구", "중구", "강남구", "성동구", "서초구", "송파구");
		
		
		Map<String, Object> param1 = new HashMap<String, Object>();
		param1.put("page", param.get("page1"));
		param1.put("genre", param.get("genre"));
		int resultCount1 = service.countSearch(param1);
		PageInfo pageInfo1 = new PageInfo(page1, 5, resultCount1, 8);
		List<Performance> list1 = service.concSearch(pageInfo1, param1);
		
		
		
		Map<String, Object> param2 = new HashMap<String, Object>();
		param2.put("page", param.get("page2"));
		param2.put("region", param.get("region"));
		int resultCount2 = service.countSearch(param2);
		PageInfo pageInfo2 = new PageInfo(page2, 5, resultCount2, 8);
		List<Performance> list2 = service.concSearch(pageInfo2, param2);
		
		// 공연 게시판 정보 추가해주는부분
		BoardParamPrf bparamPrf = new BoardParamPrf();
		bparamPrf.setOrderType("time");
		bparamPrf.setLimit(6);
		bparamPrf.setOffset(0);
		List<BoardPrf> listPrf = bservicePrf.getBoardList(bparamPrf);
		model.addAttribute("listPrf", listPrf);
		
		
		model.addAttribute("items", list1);
		model.addAttribute("items2", list2);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo1", pageInfo1);
		model.addAttribute("pageInfo2", pageInfo2);
		model.addAttribute("genreList", genreList);
		model.addAttribute("regionList", regionList);
		
		return "/performance/show-inform";
	}
	
	@RequestMapping(value = "/show-recommendations", method = RequestMethod.GET)
	public String performanceRecommend(@RequestParam Map<String, Object> param, Model model) {
		log.info("추천페이지>> " + param.toString());
		List<Performance> items = service.performanceAll(param);
		for (Performance obj : items) {
			log.info("item>> " + obj);
		}
		model.addAttribute("items", items);
		
		return "/performance/show-recommendations";
	}
	
	@GetMapping(value = "/show-search-1")
	public String showSearch1Page(Model model, @RequestParam Map<String, Object> param, HttpSession session) {
		int page = 1;
		try {
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int resultCount = service.countSearch(param);
		PageInfo pageInfo = new PageInfo(page, 5, resultCount, 8);
		List<Performance> list = service.concSearch(pageInfo, param);
		
		int numOfResult = service.countSearch(param);
		
		model.addAttribute("items", list);
		model.addAttribute("numOfResult", numOfResult);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/performance/show-search-1";
	}
	
	@RequestMapping(value = "/show-award", method = RequestMethod.GET)
	public String showAward(@RequestParam Map<String, Object> param, Model model) {
		log.info("추천페이지>> " + param.toString());
		List<Performance> items = service.performanceAward(param);
		for (Performance obj : items) {
			log.info("item>> " + obj);
		}
		model.addAttribute("items", items);
		
		return "/performance/show-award";
	}
	
	@RequestMapping(value = "/show-detail", method = RequestMethod.GET)
	public String showDetailPage(Model model,
			@RequestParam Map<String, Object> param, HttpSession session, 
			BoardParamPrf bparamPrf, 
			@SessionAttribute(required = false) Member loginMember
			) {

		
		Performance item = service.showDetailById(param);
		param.put("contentID", param.get("pid"));
		log.info("@@@@@@@ showDetailPage param>> " + param.toString());

		model.addAttribute("item", item);
		
		
		bparamPrf.setSearchType("pname");
		bparamPrf.setSearchValue(item.getPname());
		int boardCount = bservicePrf.getBoardCount(bparamPrf);
		PageInfo pageInfo = new PageInfo(bparamPrf.getPage(), 6, boardCount, 5);
		bparamPrf.setLimit(pageInfo.getListLimit());
		bparamPrf.setOffset(pageInfo.getStartList() - 1);
		List<BoardPrf> list = bservicePrf.getBoardList(bparamPrf);
		model.addAttribute("boardCount", boardCount);
		model.addAttribute("bparamPrf", bparamPrf);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		log.info("=========boardparamprf: " + bparamPrf.toString());
		model.addAttribute("loginMember", loginMember);
		
		return "/performance/show-detail";
	}
	
}










