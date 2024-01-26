package com.multi.semi.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TourPeople {
	private int    r_pno;
	private String area_nm;
	private String area_cd;
	private String live_ppltn_stts;
	private String area_congest_lvl;
	private String area_congest_msg;
	private String area_ppltn_min;
	private String area_ppltn_max;
	private String road_addr;
	private String address;
	private String lat;
	private String lng;
	private String r_datetime;
}
