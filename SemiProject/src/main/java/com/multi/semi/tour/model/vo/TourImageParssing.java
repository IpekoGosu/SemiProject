package com.multi.semi.tour.model.vo;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class TourImageParssing {

	private int T_I_NO;
	private int T_CONTENT_ID;
	private String T_IMAGE_SRC;
	private String T_IMAGE_TH_SRC;
	private String T_IMAGE_URL;
	private String T_IMAGE_TH_URL;
	private String T_DATE;

	public TourImageParssing() {
		super();
		// TODO 자동 생성된 생성자 스텁
	}

	public TourImageParssing(int t_I_NO, int t_CONTENT_ID, String t_IMAGE_SRC, String t_IMAGE_TH_SRC, String t_IMAGE_URL,
			String t_IMAGE_TH_URL, String t_DATE) {
		super();
		T_I_NO = t_I_NO;
		T_CONTENT_ID = t_CONTENT_ID;
		T_IMAGE_SRC = t_IMAGE_SRC;
		T_IMAGE_TH_SRC = t_IMAGE_TH_SRC;
		T_IMAGE_URL = t_IMAGE_URL;
		T_IMAGE_TH_URL = t_IMAGE_TH_URL;
		T_DATE = t_DATE;
	}

	@Override
	public String toString() {
		return "ImageBase [T_I_NO=" + T_I_NO + ", T_CONTENT_ID=" + T_CONTENT_ID + ", T_IMAGE_SRC=" + T_IMAGE_SRC
				+ ", T_IMAGE_TH_SRC=" + T_IMAGE_TH_SRC + ", T_IMAGE_URL=" + T_IMAGE_URL + ", T_IMAGE_TH_URL="
				+ T_IMAGE_TH_URL + ", T_DATE=" + T_DATE + "]";
	}

	public int getT_I_NO() {
		return T_I_NO;
	}

	public void setT_I_NO(int t_I_NO) {
		T_I_NO = t_I_NO;
	}

	public int getT_CONTENT_ID() {
		return T_CONTENT_ID;
	}

	public void setT_CONTENT_ID(int t_CONTENT_ID) {
		T_CONTENT_ID = t_CONTENT_ID;
	}

	public String getT_IMAGE_SRC() {
		return T_IMAGE_SRC;
	}

	public void setT_IMAGE_SRC(String t_IMAGE_SRC) {
		T_IMAGE_SRC = t_IMAGE_SRC;
	}

	public String getT_IMAGE_TH_SRC() {
		return T_IMAGE_TH_SRC;
	}

	public void setT_IMAGE_TH_SRC(String t_IMAGE_TH_SRC) {
		T_IMAGE_TH_SRC = t_IMAGE_TH_SRC;
	}

	public String getT_IMAGE_URL() {
		return T_IMAGE_URL;
	}

	public void setT_IMAGE_URL(String t_IMAGE_URL) {
		T_IMAGE_URL = t_IMAGE_URL;
	}

	public String getT_IMAGE_TH_URL() {
		return T_IMAGE_TH_URL;
	}

	public void setT_IMAGE_TH_URL(String t_IMAGE_TH_URL) {
		T_IMAGE_TH_URL = t_IMAGE_TH_URL;
	}

	public String getT_DATE() {
		return T_DATE;
	}

	public void setT_DATE(String t_DATE) {
		T_DATE = t_DATE;
	}

}