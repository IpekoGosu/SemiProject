package com.multi.semi.news.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.semi.news.model.vo.News;

@Controller
public class NewsController {
	
	@GetMapping("/news/search")
	public String searchN(Model model, @RequestParam(required = false) String query) {
		if(query == null) {
			query = "API";
		}
		List<News> nlist = NaverSearchApi.getNewsList(query);
		model.addAttribute("nlist", nlist);
		
		
		return "/testpages/testnews";
	}
}
