package com.multi.semi.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TourImage {
	private int t_i_no;
	private int t_content_id;
	private String t_image_src;
	private String t_image_th_src;
	private String t_image_url;
	private String t_image_th_url;
	private String t_date;
}