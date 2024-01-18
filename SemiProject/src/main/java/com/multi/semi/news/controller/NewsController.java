package com.multi.semi.news.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.semi.news.model.vo.News;
import com.multi.semi.news.model.vo.NewsParam;

@Controller
public class NewsController {
	
	// 공연검색
	@RequestMapping("/news/perform")
	public String newsPrf(Model model, NewsParam param){
		List<News> nlist = new ArrayList<News>();
		int searchCount = 0;
		if(param.getSearchValue() == null) {
			nlist = NaverSearchApi.getNewsList("공연", param.getSearchType());
			searchCount = NaverSearchApi.getNewsCount("공연", param.getSearchType());
		} else {
			nlist = NaverSearchApi.getNewsList(param.getSearchValue(), param.getSearchType());
			searchCount = NaverSearchApi.getNewsCount(param.getSearchValue(), param.getSearchType());
		}
		model.addAttribute("nlist", nlist);
		model.addAttribute("searchCount", searchCount);
		
		return "/news/newsPerform";
	}
	
	
	
	
}
