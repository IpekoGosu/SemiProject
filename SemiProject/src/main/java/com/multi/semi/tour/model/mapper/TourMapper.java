package com.multi.semi.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.semi.tour.model.vo.Tour;
import com.multi.semi.tour.model.vo.TourImage;
import com.multi.semi.tour.model.vo.TourParam;
import com.multi.semi.tour.model.vo.TourPeople;
import com.multi.semi.tour.model.vo.TourWeather;

@Mapper
public interface TourMapper {
	List<Tour> selectTEST(TourParam param);

	List<Tour> selectTourBest4List(TourParam param);
	List<Tour> selectTourReconList(TourParam param);
	List<Tour> selectTourHotList(TourParam param);
	List<Tour> selectTourRandomList(TourParam param);
	List<Tour> selectTourGeoList(TourParam param);
	
	//검색을 위한
	List<Tour> selectTourList(TourParam param);
	List<TourImage> selectTourImageList(TourParam param);
	int selectTourCount(TourParam param);
	
	List<Tour> selectSearchTourList(TourParam param);
	int selectSearchTourCount(TourParam param);
	
	int selectBoardCount(TourParam param);
	
	Tour selectTourByNo(Map<String, Object> param);//상세보기 모두가져오기
	List<TourImage> selectTourByNoImage(Map<String, Object> param);//이미지가져오기
	//int selectTourByNoImageCount(int cid);
	
	List<Tour> selectBookMarkALLTour(Map<String, Object> param);//모든즐겨찾기 가져오기
	
	List<TourPeople>selectTourRealPeople(Map<String, Object> param);
	TourWeather selectTourRealWeather(Map<String, Object> param);
	
	int updateTourViewCount(Map<String, Object> param);
	int insertTourBookMark(Map<String, Object> param);
	int deleteTourBookMark(Map<String, Object> param);
}



