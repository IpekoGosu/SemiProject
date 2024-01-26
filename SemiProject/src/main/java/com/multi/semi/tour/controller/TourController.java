package com.multi.semi.tour.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.semi.board.model.service.BoardServiceTour;
import com.multi.semi.board.model.vo.BoardParamTour;
import com.multi.semi.board.model.vo.BoardTour;
import com.multi.semi.common.PageInfo;
import com.multi.semi.kakao.MapInfo;
import com.multi.semi.member.model.vo.Member;
import com.multi.semi.tour.model.service.TourService;
import com.multi.semi.tour.model.vo.Tour;
import com.multi.semi.tour.model.vo.TourParam;
import com.multi.semi.tour.model.vo.TourPeople;
import com.multi.semi.tour.model.vo.TourWeather;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TourController {

	@Autowired
	private TourService service;

	@Autowired
	private BoardServiceTour bserviceTour;

	@Autowired
	private ResourceLoader resourceLoader;

	public static String[] ARR_WORD = { "강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문",
			"동작구", "마포구", "서대문", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포", "용산구", "은평구", "종로구", "중구 ", "중랑구", };

	@RequestMapping("/tour/best")
	public String TourBest(Model model, TourParam param) {
		log.debug("@@ /Tour/Test " + param);

		// int boardCount = service.getBoardCount(param);
		// PageInfo pageInfo = new PageInfo(param.getPage(), 6, boardCount, 9);
		// param.setLimit(pageInfo.getListLimit());
		// param.setOffset(pageInfo.getStartList() - 1);
		List<Tour> list = service.getTourBest4List(param);
		List<Tour> list1 = service.getTourReconList(param);
		List<Tour> list2 = service.getTourHotList(param);
		List<Tour> list3 = service.getTourRandomList(param);
		List<Tour> list4 = service.getTourGeoList(param);

		// model.addAttribute("firstBoard", firstBoard);
		// model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		model.addAttribute("param", param);

		return "/tour/tourBest";
	}

	@RequestMapping("/tour/search")
	public String TourSearch(Model model, TourParam param) {
		log.debug("@@ /tour/search " + param);
		if (param.getareaCodeValue() == null || param.getareaCodeValue().equals("0")) {
			param.setareaCodeValue(null);
		}
		int TourCount = service.getTourCount(param);
		PageInfo pageInfo = new PageInfo(param.getPage(), 6, TourCount, 6);
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<Tour> list = service.getTourList(param);

		if (param.getSearchValue() == null) {
			param.setSearchValue("서울");
		}

		if (param.getareaCodeValue() == null) {
			param.setareaCodeValue("0");
		}

		// BoardTour firstBoard = service.getBoardFirst();
		// model.addAttribute("firstBoard", firstBoard);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("searchValue", param.getSearchValue());
		model.addAttribute("areaCodeValue", param.getareaCodeValue());

		return "/tour/tourSearch";
	}

	@RequestMapping("/tour/searchdetail")
	public String TourSearchDetail(Model model, TourParam param) {
		log.debug("@@ /tour/searchdetail " + param);

		if (param.getareaCodeValue() == null || param.getareaCodeValue().equals("0")) {
			param.setareaCodeValue(null);
		}
		if (param.getSearchType() == null) {
			param.setSearchType("modis");// 없다면 최신순정렬
		}

		int TourCount = service.getSearchTourCount(param);
		PageInfo pageInfo = new PageInfo(param.getPage(), 10, TourCount, 9);
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<Tour> list = service.getSearchTourList(param);

		if (param.getSearchValue() == null) {
			param.setSearchValue("서울");
		}

		if (param.getareaCodeValue() == null) {
			param.setareaCodeValue("0");
		}

		// BoardTour firstBoard = service.getBoardFirst();
		// model.addAttribute("firstBoard", firstBoard);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("searchValue", param.getSearchValue());
		model.addAttribute("areaCodeValue", param.getareaCodeValue());
		model.addAttribute("searchType", param.getSearchType());

		return "/tour/tourSearchDetail";
	}

	@RequestMapping(value = "/tour/tourdetail", method = RequestMethod.GET)
	public String view(Model model, @RequestParam Map<String, Object> param, HttpSession session,
			BoardParamTour bparamTour, @SessionAttribute(required = false) Member loginMember)
//	public String view(Model model,
//			HttpSession session, 
//			BoardParamTour bparamPrf, 
//			@SessionAttribute(required = false) Member loginMember
//	 		@RequestParam("no") int no) 
	{
		log.debug("@@ /tour/tourdetail ");
		
		Tour tour = null;
		System.out.println(param.toString());
			
		try {
			tour = service.findTourBycid(param);
		} catch (Exception e) {
		}
		if (tour == null) {
			return "redirect:error";
		}
		model.addAttribute("tour", tour);
		service.getUpdateTourViewCount(param);//조회수증가
			

		bparamTour.setSearchType("t_title");
		bparamTour.setSearchValue(tour.getT_title());
		int boardCount = bserviceTour.getBoardCount(bparamTour);
		PageInfo pageInfo = new PageInfo(bparamTour.getPage(), 6, boardCount, 5);
		bparamTour.setLimit(pageInfo.getListLimit());
		bparamTour.setOffset(pageInfo.getStartList() - 1);
		List<BoardTour> list = bserviceTour.getBoardList(bparamTour);
		model.addAttribute("boardCount", boardCount);
		model.addAttribute("bparamTour", bparamTour);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("list", list);
		log.info("=========boardparamTour: " + bparamTour.toString());
		model.addAttribute("loginMember", loginMember);

		List<MapInfo> mapList = new ArrayList<>();
		mapList.add(new MapInfo(tour.getT_title(), tour.getT_addr(), Double.parseDouble(tour.getT_map_y()),
				Double.parseDouble(tour.getT_map_x())));
		
		double x = 0.0;
		double y = 0.0;
		for (MapInfo map : mapList) {
			x += map.getX();
			y += map.getY();
		}

		x = x / mapList.size();
		y = y / mapList.size();

		//model.addAttribute("list",list);
		model.addAttribute("mapList", mapList);
		model.addAttribute("x", x);
		model.addAttribute("y", y);

		return "/tour/tourDetail";
	}

	@RequestMapping("/tour/realtime")
	public String TourRealTime(Model model, @RequestParam Map<String, Object> param) {
		log.debug("@@ /tour/realtime " + param);

		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:00:00");
		String formatedNow = formatter.format(now);
		
		TourWeather tourWeather = null;
		param.put("cur_date", formatedNow);
		log.debug("@@ /tour/realtime " + param);
		tourWeather = service.getTourRealWeather(param);
		List<TourPeople> tourPeople = new ArrayList<>();
		tourPeople = service.getTourRealPeople(param);
		
        Calendar cal = Calendar.getInstance();
        int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
        String korDayOfWeek="";
        switch (dayOfWeek) {
			case 1:korDayOfWeek = "일";break;
			case 2:korDayOfWeek = "월";break;
			case 3:korDayOfWeek = "화";break;
			case 4:korDayOfWeek = "수";break;
			case 5:korDayOfWeek = "목";break;
			case 6:korDayOfWeek = "금";break;
			case 7:korDayOfWeek = "토";break;
		}
		model.addAttribute("tourWeather", tourWeather);
		model.addAttribute("tourPeople", tourPeople);
		model.addAttribute("korDayOfWeek", korDayOfWeek);
		
		List<MapInfo> mapList = new ArrayList<>();
		mapList.add(new MapInfo("카카오","제주시 어쩌구",33.450705,126.570677));
		mapList.add(new MapInfo("생태연못","제주시 어쩌구",33.450936,126.569477));
		mapList.add(new MapInfo("텃밭","제주시 어쩌구",33.450879,126.569940));
		mapList.add(new MapInfo("근린공원","제주시 어쩌구",33.451393,126.570738));
		
		model.addAttribute("mapList",mapList);
		
		return "/tour/tourReal";
	}



}
