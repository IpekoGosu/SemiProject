package com.multi.semi.common;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	@RequestMapping(value = "/error.do")
	public String errorPage(Model model, HttpServletResponse res) {
		model.addAttribute("Data", "error code : " + res.getStatus());
		return "/common/error";
	}
}
