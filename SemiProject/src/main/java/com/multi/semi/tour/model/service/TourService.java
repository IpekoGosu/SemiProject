package com.multi.semi.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.semi.board.model.vo.AttachFileTour;
import com.multi.semi.board.model.vo.BoardParamTour;
import com.multi.semi.board.model.vo.BoardReplyTour;
import com.multi.semi.board.model.vo.BoardTour;
import com.multi.semi.tour.model.mapper.TourMapper;
import com.multi.semi.tour.model.vo.Tour;
import com.multi.semi.tour.model.vo.TourImage;
import com.multi.semi.tour.model.vo.TourParam;
import com.multi.semi.tour.model.vo.TourPeople;
import com.multi.semi.tour.model.vo.TourWeather;

@Service
public class TourService {
	@Autowired
	private TourMapper mapper;
	
	public int getTourCount(TourParam param) {
		return mapper.selectTourCount(param);
	}
	
	public List<Tour> getTourList(TourParam param) {
		return mapper.selectTourList(param);
	}
	
	public int getSearchTourCount(TourParam param) {
		return mapper.selectSearchTourCount(param);
	}
	
	public List<Tour> getSearchTourList(TourParam param) {
		return mapper.selectSearchTourList(param);
	}
	
	public List<Tour> getTourBest4List(TourParam param) {
		return mapper.selectTourBest4List(param);
	}
	
	public List<Tour> getTourReconList(TourParam param) {
		return mapper.selectTourReconList(param);
	}
	
	public List<Tour> getTourHotList(TourParam param) {
		return mapper.selectTourHotList(param);
	}
	
	public List<Tour> getTourRandomList(TourParam param) {
		return mapper.selectTourRandomList(param);
	}
	
	public List<Tour> getTourGeoList(TourParam param) {
		return mapper.selectTourGeoList(param);
	}
	
	
	public int getUpdateTourViewCount(Map<String, Object> param) {
		return mapper.updateTourViewCount(param);
	}


	
	@Transactional(rollbackFor = Exception.class)
	public Tour findTourBycid (Map<String, Object> param) {
		Tour tour = mapper.selectTourByNo(param);
		List<TourImage> rList = mapper.selectTourByNoImage(param);
		tour.setT_image_list(rList);//이미지 리스트 가져오기
		
		return tour;
	}
	
	public List<TourPeople> getTourRealPeople(Map<String, Object> param) {
		return mapper.selectTourRealPeople(param);
	}
	
	public TourWeather getTourRealWeather(Map<String, Object> param) {
		return mapper.selectTourRealWeather(param);
	}
}






