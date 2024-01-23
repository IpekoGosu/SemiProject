package com.multi.semi;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.semi.performance.model.service.PerformanceService;
import com.multi.semi.performance.model.vo.Performance;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private PerformanceService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(@RequestParam Map<String, Object> param, Model model) {
		
		List<Performance> items = service.performanceAll(param);
		model.addAttribute("items", items);
		
		return "index";
	}
	
	
	
}
