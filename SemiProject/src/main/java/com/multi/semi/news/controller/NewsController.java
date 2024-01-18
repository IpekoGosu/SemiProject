package com.multi.semi.news.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.semi.common.PageInfo;
import com.multi.semi.news.model.vo.News;
import com.multi.semi.news.model.vo.NewsParam;

@Controller
public class NewsController {
	
	// 공연검색
	@RequestMapping("/news/perform")
	public String newsPrf(Model model, NewsParam param){
		List<News> nlist = new ArrayList<News>();
		int searchCount = 0;
		System.out.println("PPPPPPPPPPPPPPPPPPPP"+param);
		if(param.getSearchValue() == null) {
			param.setSearchValue("공연");
		}
		String searchType = param.getSearchType();
		nlist = NaverSearchApi.getNewsList(param.getSearchValue(), searchType, param.getPage());
		searchCount = NaverSearchApi.getNewsCount(param.getSearchValue(), param.getSearchType());
		
		PageInfo pageInfo = new PageInfo(param.getPage(), 6, searchCount, 10);
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		param.setSearchType(searchType);
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("nlist", nlist);
		model.addAttribute("searchCount", searchCount);
		model.addAttribute("param", param);
		
		return "/news/newsPerform";
	}
	
	
	
	
}
