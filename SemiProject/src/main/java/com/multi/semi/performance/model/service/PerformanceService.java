package com.multi.semi.performance.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.semi.common.PageInfo;
import com.multi.semi.performance.model.mapper.PerformanceMapper;
import com.multi.semi.performance.model.vo.Performance;
import com.multi.semi.performance.model.vo.PrfBoard;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PerformanceService {

	@Autowired
	private PerformanceMapper mapper;
	
	public List<Performance> selectPerformanceAll(){
		return mapper.selectPerformanceAll();
		
	}
	
	public List<Performance> performanceAll(Map<String, Object> param) {
		log.info("performanceGenre - param>> " + param.toString());
		return mapper.performanceAll(param);
	}
	
	public List<Performance> performanceGenre(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		log.info("performanceGenre - param>> " + param.toString());
		return mapper.performanceGenre(param);
	}

	public int countGenre(Map<String, Object> param) {
		return mapper.countGenre(param);
	}
	
	public List<Performance> performanceRegion(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		log.info("performanceRegion - param>> " + param.toString());
		return mapper.performanceRegion(param);
	}

	public int countRegion(Map<String, Object> param) {
		return mapper.countRegion(param);
	}
	
	public List<Performance> musicSearch(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		log.info("conSearch - param>> " + param.toString());
		return mapper.musicSearch(param);
	}

	public int countMusic(Map<String, Object> param) {
		return mapper.countMusic(param);
	}
	
	public List<Performance> performanceAward(Map<String, Object> param) {
		log.info("performanceAward - param>> " + param.toString());
		return mapper.performanceAward(param);
	}
	
	public Performance showDetailById(Map<String, Object> param) {
		return mapper.showDetailById(param);
	}
	
	public List<Performance> concSearch(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		log.info("conSearch - param>> " + param.toString());
		return mapper.concSearch(param);
	}

	public int countSearch(Map<String, Object> param) {
		return mapper.countSearch(param);
	}

	public List<Performance> todayRank(Map<String, Object> param) {
		log.info("todayRank - param>> " + param.toString());
		return mapper.todayRank(param);
	}
	
	public List<Performance> genreRecommendations(Map<String, Object> param) {
		return mapper.genreRecommendations(param);
	}
	
	public List<Performance> regionRecommendations(Map<String, Object> param) {
		return mapper.regionRecommendations(param);
	}
	
	public List<Performance> todayRandom(Map<String, Object> param) {
		return mapper.todayRandom(param);
	}
	
	public List<PrfBoard> bestReviews(Map<String, Object> param) {
		return mapper.bestReviews(param);
	}
	
}
