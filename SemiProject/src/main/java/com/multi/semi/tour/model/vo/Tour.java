package com.multi.semi.tour.model.vo;

import java.util.List;

import com.multi.semi.board.model.vo.BoardTour;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Tour {
	private int	   t_content_id;
	private int    t_contenttype_id;
	private String t_title;
	private String t_create_date;
	private String t_modi_date;
	private String t_addr;
	private String t_detail_addr;
	private String t_image_main;
	private String t_image_th;
	private String t_image_main_src;
	private String t_image_th_src;
	private String t_map_x;
	private String t_map_y;
	private String t_areacode;
	private String t_maincate;
	private String t_midcate;
	private String t_smallcate;
	private int    t_views;
	private String t_citycode;
	private String t_tel;
	private int    t_zip;
	private String t_summary;
	private String t_homepage_url;
	private String t_capacity;
	private String t_babvcarryinfo;
	private String t_creditinfo;
	private String t_petinfo;
	private String t_kidscafe;
	private String t_exrate;
	private String t_exguide;
	private int    t_heritage1;
	private int    t_heritage2;
	private int    t_heritage3;
	private String t_infocenter;
	private String t_scale;
	private String t_parking_info;
	private String t_parking_cost;
	private String t_restdate;
	private String t_usetime;
	private String t_useseason;
	private String t_cur_cost;
	private String t_use_cost;
	private Double t_review_rate;
	private String t_infotitle;
	private String t_infotext;
	private String t_cur_date;
	private List<TourImage> t_image_list;
	private List<BoardTour> t_review_list;
	private int t_review_count;
}
