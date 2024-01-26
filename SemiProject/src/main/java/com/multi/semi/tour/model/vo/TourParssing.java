package com.multi.semi.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class TourParssing {
	private int T_CONTENT_ID;
	private int T_CONTENTTYPE_ID;
	private String T_TITEL;
	private String T_CREATE_DATE;
	private String T_MODI_DATE;
	private String T_ADDR;
	private String T_DETAIL_ADDR;
	private String T_IMAGE_MAIN;
	private String T_IMAGE_TH;
	private String T_IMAGE_MAIN_SRC;
	private String T_IMAGE_TH_SRC;
	private String T_MAP_X;
	private String T_MAP_Y;
	private String T_AREACODE;
	private String T_MAINCATE;
	private String T_MIDCATE;
	private String T_SMALLCATE;
	private int T_VIEWS;
	private String T_CITYCODE;
	private String T_TEL;
	private int T_ZIP;
	private String T_SUMMARY;
	private String T_HOMEPAGE_URL;
	private String T_CAPACITY;
	private String T_BABVCARRYINFO;
	private String T_CREDITINFO;
	private String T_PETINFO;
	private String T_KIDSCAFE;
	private String T_EXRATE;
	private String T_EXGUIDE;
	private int T_HERITAGE1;
	private int T_HERITAGE2;
	private int T_HERITAGE3;
	private String T_INFOCENTER;
	private String T_SCALE;
	private String T_PARKING_INFO;
	private String T_PARKING_COST;
	private String T_RESTDATE;
	private String T_USETIME;
	private String T_USESEASON;
	private String T_CUR_COST;
	private String T_USE_COST;
	private Double T_REVIEW_RATE;
	private String T_INFOTITLE;
	private String T_INFOTEXT;
	private String T_CUR_DATE;

	public TourParssing() {
		super();
		// TODO 자동 생성된 생성자 스텁
	}

	public TourParssing(int t_CONTENT_ID, int t_CONTENTTYPE_ID, String t_TITEL, String t_CREATE_DATE, String t_MODI_DATE,
			String t_ADDR, String t_DETAIL_ADDR, String t_IMAGE_MAIN, String t_IMAGE_TH, String t_IMAGE_MAIN_SRC,
			String t_IMAGE_TH_SRC, String t_MAP_X, String t_MAP_Y, String t_AREACODE, String t_MAINCATE,
			String t_MIDCATE, String t_SMALLCATE, int t_VIEWS, String t_CITYCODE, String t_TEL, int t_ZIP,
			String t_SUMMARY, String t_HOMEPAGE_URL, String t_CAPACITY, String t_BABVCARRYINFO, String t_CREDITINFO,
			String t_PETINFO, String t_KIDSCAFE, String t_EXRATE, String t_EXGUIDE, int t_HERITAGE1, int t_HERITAGE2,
			int t_HERITAGE3, String t_INFOCENTER, String t_SCALE, String t_PARKING_INFO, String t_PARKING_COST,
			String t_RESTDATE, String t_USETIME, String t_USESEASON, String t_CUR_COST, String t_USE_COST,
			Double t_REVIEW_RATE, String t_INFOTITLE, String t_INFOTEXT, String t_CUR_DATE) {
		super();
		T_CONTENT_ID = t_CONTENT_ID;
		T_CONTENTTYPE_ID = t_CONTENTTYPE_ID;
		T_TITEL = t_TITEL;
		T_CREATE_DATE = t_CREATE_DATE;
		T_MODI_DATE = t_MODI_DATE;
		T_ADDR = t_ADDR;
		T_DETAIL_ADDR = t_DETAIL_ADDR;
		T_IMAGE_MAIN = t_IMAGE_MAIN;
		T_IMAGE_TH = t_IMAGE_TH;
		T_IMAGE_MAIN_SRC = t_IMAGE_MAIN_SRC;
		T_IMAGE_TH_SRC = t_IMAGE_TH_SRC;
		T_MAP_X = t_MAP_X;
		T_MAP_Y = t_MAP_Y;
		T_AREACODE = t_AREACODE;
		T_MAINCATE = t_MAINCATE;
		T_MIDCATE = t_MIDCATE;
		T_SMALLCATE = t_SMALLCATE;
		T_VIEWS = t_VIEWS;
		T_CITYCODE = t_CITYCODE;
		T_TEL = t_TEL;
		T_ZIP = t_ZIP;
		T_SUMMARY = t_SUMMARY;
		T_HOMEPAGE_URL = t_HOMEPAGE_URL;
		T_CAPACITY = t_CAPACITY;
		T_BABVCARRYINFO = t_BABVCARRYINFO;
		T_CREDITINFO = t_CREDITINFO;
		T_PETINFO = t_PETINFO;
		T_KIDSCAFE = t_KIDSCAFE;
		T_EXRATE = t_EXRATE;
		T_EXGUIDE = t_EXGUIDE;
		T_HERITAGE1 = t_HERITAGE1;
		T_HERITAGE2 = t_HERITAGE2;
		T_HERITAGE3 = t_HERITAGE3;
		T_INFOCENTER = t_INFOCENTER;
		T_SCALE = t_SCALE;
		T_PARKING_INFO = t_PARKING_INFO;
		T_PARKING_COST = t_PARKING_COST;
		T_RESTDATE = t_RESTDATE;
		T_USETIME = t_USETIME;
		T_USESEASON = t_USESEASON;
		T_CUR_COST = t_CUR_COST;
		T_USE_COST = t_USE_COST;
		T_REVIEW_RATE = t_REVIEW_RATE;
		T_INFOTITLE = t_INFOTITLE;
		T_INFOTEXT = t_INFOTEXT;
		T_CUR_DATE = t_CUR_DATE;
	}

	@Override
	public String toString() {
		return "Tour [T_CONTENT_ID=" + T_CONTENT_ID + ", T_CONTENTTYPE_ID=" + T_CONTENTTYPE_ID + ", T_TITEL=" + T_TITEL
				+ ", T_CREATE_DATE=" + T_CREATE_DATE + ", T_MODI_DATE=" + T_MODI_DATE + ", T_ADDR=" + T_ADDR
				+ ", T_DETAIL_ADDR=" + T_DETAIL_ADDR + ", T_IMAGE_MAIN=" + T_IMAGE_MAIN + ", T_IMAGE_TH=" + T_IMAGE_TH
				+ ", T_IMAGE_MAIN_SRC=" + T_IMAGE_MAIN_SRC + ", T_IMAGE_TH_SRC=" + T_IMAGE_TH_SRC + ", T_MAP_X="
				+ T_MAP_X + ", T_MAP_Y=" + T_MAP_Y + ", T_AREACODE=" + T_AREACODE + ", T_MAINCATE=" + T_MAINCATE
				+ ", T_MIDCATE=" + T_MIDCATE + ", T_SMALLCATE=" + T_SMALLCATE + ", T_VIEWS=" + T_VIEWS + ", T_CITYCODE="
				+ T_CITYCODE + ", T_TEL=" + T_TEL + ", T_ZIP=" + T_ZIP + ", T_SUMMARY=" + T_SUMMARY
				+ ", T_HOMEPAGE_URL=" + T_HOMEPAGE_URL + ", T_CAPACITY=" + T_CAPACITY + ", T_BABVCARRYINFO="
				+ T_BABVCARRYINFO + ", T_CREDITINFO=" + T_CREDITINFO + ", T_PETINFO=" + T_PETINFO + ", T_KIDSCAFE="
				+ T_KIDSCAFE + ", T_EXRATE=" + T_EXRATE + ", T_EXGUIDE=" + T_EXGUIDE + ", T_HERITAGE1=" + T_HERITAGE1
				+ ", T_HERITAGE2=" + T_HERITAGE2 + ", T_HERITAGE3=" + T_HERITAGE3 + ", T_INFOCENTER=" + T_INFOCENTER
				+ ", T_SCALE=" + T_SCALE + ", T_PARKING_INFO=" + T_PARKING_INFO + ", T_PARKING_COST=" + T_PARKING_COST
				+ ", T_RESTDATE=" + T_RESTDATE + ", T_USETIME=" + T_USETIME + ", T_USESEASON=" + T_USESEASON
				+ ", T_CUR_COST=" + T_CUR_COST + ", T_USE_COST=" + T_USE_COST + ", T_REVIEW_RATE=" + T_REVIEW_RATE
				+ ", T_INFOTITLE=" + T_INFOTITLE + ", T_INFOTEXT=" + T_INFOTEXT + ", T_CUR_DATE=" + T_CUR_DATE + "]";
	}

	public int getT_CONTENT_ID() {
		return T_CONTENT_ID;
	}

	public void setT_CONTENT_ID(int t_CONTENT_ID) {
		T_CONTENT_ID = t_CONTENT_ID;
	}

	public int getT_CONTENTTYPE_ID() {
		return T_CONTENTTYPE_ID;
	}

	public void setT_CONTENTTYPE_ID(int t_CONTENTTYPE_ID) {
		T_CONTENTTYPE_ID = t_CONTENTTYPE_ID;
	}

	public String getT_TITEL() {
		return T_TITEL;
	}

	public void setT_TITEL(String t_TITEL) {
		T_TITEL = t_TITEL;
	}

	public String getT_CREATE_DATE() {
		return T_CREATE_DATE;
	}

	public void setT_CREATE_DATE(String t_CREATE_DATE) {
		T_CREATE_DATE = t_CREATE_DATE;
	}

	public String getT_MODI_DATE() {
		return T_MODI_DATE;
	}

	public void setT_MODI_DATE(String t_MODI_DATE) {
		T_MODI_DATE = t_MODI_DATE;
	}

	public String getT_ADDR() {
		return T_ADDR;
	}

	public void setT_ADDR(String t_ADDR) {
		T_ADDR = t_ADDR;
	}

	public String getT_DETAIL_ADDR() {
		return T_DETAIL_ADDR;
	}

	public void setT_DETAIL_ADDR(String t_DETAIL_ADDR) {
		T_DETAIL_ADDR = t_DETAIL_ADDR;
	}

	public String getT_IMAGE_MAIN() {
		return T_IMAGE_MAIN;
	}

	public void setT_IMAGE_MAIN(String t_IMAGE_MAIN) {
		T_IMAGE_MAIN = t_IMAGE_MAIN;
	}

	public String getT_IMAGE_TH() {
		return T_IMAGE_TH;
	}

	public void setT_IMAGE_TH(String t_IMAGE_TH) {
		T_IMAGE_TH = t_IMAGE_TH;
	}

	public String getT_IMAGE_MAIN_SRC() {
		return T_IMAGE_MAIN_SRC;
	}

	public void setT_IMAGE_MAIN_SRC(String t_IMAGE_MAIN_SRC) {
		T_IMAGE_MAIN_SRC = t_IMAGE_MAIN_SRC;
	}

	public String getT_IMAGE_TH_SRC() {
		return T_IMAGE_TH_SRC;
	}

	public void setT_IMAGE_TH_SRC(String t_IMAGE_TH_SRC) {
		T_IMAGE_TH_SRC = t_IMAGE_TH_SRC;
	}

	public String getT_MAP_X() {
		return T_MAP_X;
	}

	public void setT_MAP_X(String t_MAP_X) {
		T_MAP_X = t_MAP_X;
	}

	public String getT_MAP_Y() {
		return T_MAP_Y;
	}

	public void setT_MAP_Y(String t_MAP_Y) {
		T_MAP_Y = t_MAP_Y;
	}

	public String getT_AREACODE() {
		return T_AREACODE;
	}

	public void setT_AREACODE(String t_AREACODE) {
		T_AREACODE = t_AREACODE;
	}

	public String getT_MAINCATE() {
		return T_MAINCATE;
	}

	public void setT_MAINCATE(String t_MAINCATE) {
		T_MAINCATE = t_MAINCATE;
	}

	public String getT_MIDCATE() {
		return T_MIDCATE;
	}

	public void setT_MIDCATE(String t_MIDCATE) {
		T_MIDCATE = t_MIDCATE;
	}

	public String getT_SMALLCATE() {
		return T_SMALLCATE;
	}

	public void setT_SMALLCATE(String t_SMALLCATE) {
		T_SMALLCATE = t_SMALLCATE;
	}

	public int getT_VIEWS() {
		return T_VIEWS;
	}

	public void setT_VIEWS(int t_VIEWS) {
		T_VIEWS = t_VIEWS;
	}

	public String getT_CITYCODE() {
		return T_CITYCODE;
	}

	public void setT_CITYCODE(String t_CITYCODE) {
		T_CITYCODE = t_CITYCODE;
	}

	public String getT_TEL() {
		return T_TEL;
	}

	public void setT_TEL(String t_TEL) {
		T_TEL = t_TEL;
	}

	public int getT_ZIP() {
		return T_ZIP;
	}

	public void setT_ZIP(int t_ZIP) {
		T_ZIP = t_ZIP;
	}

	public String getT_SUMMARY() {
		return T_SUMMARY;
	}

	public void setT_SUMMARY(String t_SUMMARY) {
		T_SUMMARY = t_SUMMARY;
	}

	public String getT_HOMEPAGE_URL() {
		return T_HOMEPAGE_URL;
	}

	public void setT_HOMEPAGE_URL(String t_HOMEPAGE_URL) {
		T_HOMEPAGE_URL = t_HOMEPAGE_URL;
	}

	public String getT_CAPACITY() {
		return T_CAPACITY;
	}

	public void setT_CAPACITY(String t_CAPACITY) {
		T_CAPACITY = t_CAPACITY;
	}

	public String getT_BABVCARRYINFO() {
		return T_BABVCARRYINFO;
	}

	public void setT_BABVCARRYINFO(String t_BABVCARRYINFO) {
		T_BABVCARRYINFO = t_BABVCARRYINFO;
	}

	public String getT_CREDITINFO() {
		return T_CREDITINFO;
	}

	public void setT_CREDITINFO(String t_CREDITINFO) {
		T_CREDITINFO = t_CREDITINFO;
	}

	public String getT_PETINFO() {
		return T_PETINFO;
	}

	public void setT_PETINFO(String t_PETINFO) {
		T_PETINFO = t_PETINFO;
	}

	public String getT_KIDSCAFE() {
		return T_KIDSCAFE;
	}

	public void setT_KIDSCAFE(String t_KIDSCAFE) {
		T_KIDSCAFE = t_KIDSCAFE;
	}

	public String getT_EXRATE() {
		return T_EXRATE;
	}

	public void setT_EXRATE(String t_EXRATE) {
		T_EXRATE = t_EXRATE;
	}

	public String getT_EXGUIDE() {
		return T_EXGUIDE;
	}

	public void setT_EXGUIDE(String t_EXGUIDE) {
		T_EXGUIDE = t_EXGUIDE;
	}

	public int getT_HERITAGE1() {
		return T_HERITAGE1;
	}

	public void setT_HERITAGE1(int t_HERITAGE1) {
		T_HERITAGE1 = t_HERITAGE1;
	}

	public int getT_HERITAGE2() {
		return T_HERITAGE2;
	}

	public void setT_HERITAGE2(int t_HERITAGE2) {
		T_HERITAGE2 = t_HERITAGE2;
	}

	public int getT_HERITAGE3() {
		return T_HERITAGE3;
	}

	public void setT_HERITAGE3(int t_HERITAGE3) {
		T_HERITAGE3 = t_HERITAGE3;
	}

	public String getT_INFOCENTER() {
		return T_INFOCENTER;
	}

	public void setT_INFOCENTER(String t_INFOCENTER) {
		T_INFOCENTER = t_INFOCENTER;
	}

	public String getT_SCALE() {
		return T_SCALE;
	}

	public void setT_SCALE(String t_SCALE) {
		T_SCALE = t_SCALE;
	}

	public String getT_PARKING_INFO() {
		return T_PARKING_INFO;
	}

	public void setT_PARKING_INFO(String t_PARKING_INFO) {
		T_PARKING_INFO = t_PARKING_INFO;
	}

	public String getT_PARKING_COST() {
		return T_PARKING_COST;
	}

	public void setT_PARKING_COST(String t_PARKING_COST) {
		T_PARKING_COST = t_PARKING_COST;
	}

	public String getT_RESTDATE() {
		return T_RESTDATE;
	}

	public void setT_RESTDATE(String t_RESTDATE) {
		T_RESTDATE = t_RESTDATE;
	}

	public String getT_USETIME() {
		return T_USETIME;
	}

	public void setT_USETIME(String t_USETIME) {
		T_USETIME = t_USETIME;
	}

	public String getT_USESEASON() {
		return T_USESEASON;
	}

	public void setT_USESEASON(String t_USESEASON) {
		T_USESEASON = t_USESEASON;
	}

	public String getT_CUR_COST() {
		return T_CUR_COST;
	}

	public void setT_CUR_COST(String t_CUR_COST) {
		T_CUR_COST = t_CUR_COST;
	}

	public String getT_USE_COST() {
		return T_USE_COST;
	}

	public void setT_USE_COST(String t_USE_COST) {
		T_USE_COST = t_USE_COST;
	}

	public Double getT_REVIEW_RATE() {
		return T_REVIEW_RATE;
	}

	public void setT_REVIEW_RATE(Double t_REVIEW_RATE) {
		T_REVIEW_RATE = t_REVIEW_RATE;
	}

	public String getT_INFOTITLE() {
		return T_INFOTITLE;
	}

	public void setT_INFOTITLE(String t_INFOTITLE) {
		T_INFOTITLE = t_INFOTITLE;
	}

	public String getT_INFOTEXT() {
		return T_INFOTEXT;
	}

	public void setT_INFOTEXT(String t_INFOTEXT) {
		T_INFOTEXT = t_INFOTEXT;
	}

	public String getT_CUR_DATE() {
		return T_CUR_DATE;
	}

	public void setT_CUR_DATE(String t_CUR_DATE) {
		T_CUR_DATE = t_CUR_DATE;
	}

}
