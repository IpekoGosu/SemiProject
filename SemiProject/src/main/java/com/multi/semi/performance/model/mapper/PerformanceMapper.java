package com.multi.semi.performance.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.semi.performance.model.vo.Performance;
import com.multi.semi.performance.model.vo.PrfBoard;


@Mapper
public interface PerformanceMapper {
	List<Performance> selectPerformanceAll();
	
	List<Performance> performanceAll(Map<String, Object> param);
	
	List<Performance> performanceGenre(Map<String, Object> param);

	int countGenre(Map<String, Object> param);
	
	List<Performance> performanceRegion(Map<String, Object> param);

	int countRegion(Map<String, Object> param);
	
	List<Performance> musicSearch(Map<String, Object> param);

	int countMusic(Map<String, Object> param);
	
	List<Performance> performanceAward(Map<String, Object> param);
	
	Performance showDetailById(Map<String, Object> param);
	
	List<Performance> concSearch(Map<String, Object> param);

	int countSearch(Map<String, Object> param);
	
	List<Performance> todayRank(Map<String, Object> param);
	
	List<Performance> genreRecommendations(Map<String, Object> param);
	
	List<Performance> regionRecommendations(Map<String, Object> param);
	
	List<Performance> todayRandom(Map<String, Object> param);
	
	List<PrfBoard> bestReviews(Map<String, Object> param);
}
