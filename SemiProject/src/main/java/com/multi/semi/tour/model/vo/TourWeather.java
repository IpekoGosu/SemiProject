package com.multi.semi.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TourWeather {
	private int    r_wno;
	private String weather_stts;
	private String temp;
	private String sensible_temp;
	private String max_temp;
	private String min_temp;
	private String humidity;
	private String wind_dirct;
	private String wind_spd;
	private String precipitation;
	private String precpt_type;
	private String pcp_msg;
	private String sunrise;
	private String sunset;
	private String uv_index_lvl;
	private String uv_index;
	private String uv_msg;
	private String pm25_index;
	private String pm25;
	private String pm10_index;
	private String pm10;
	private String air_idx;
	private String air_idx_mvl;
	private String air_idx_main;
	private String air_msg;
	private String weather_time;
	private String news_list;
	private String fcst24hours;
	private String r_datetime;
}
