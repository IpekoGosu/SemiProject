package com.multi.semi.tour.model.vo;

public class TourPeoplePassing {
	private int R_PNO;
	private String AREA_NM;
	private String AREA_CD;
	private String LIVE_PPLTN_STTS;
	private String AREA_CONGEST_LVL;
	private String AREA_CONGEST_MSG;
	private String AREA_PPLTN_MIN;
	private String AREA_PPLTN_MAX;
	private String ROAD_ADDR;
	private String ADDRESS;
	private String LAT;
	private String LNG;
	private String R_DATETIME;

	public TourPeoplePassing() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TourPeoplePassing(int r_PNO, String aREA_NM, String aREA_CD, String lIVE_PPLTN_STTS, String aREA_CONGEST_LVL,
			String aREA_CONGEST_MSG, String aREA_PPLTN_MIN, String aREA_PPLTN_MAX, String rOAD_ADDR, String aDDRESS,
			String lAT, String lNG, String r_DATETIME) {
		super();
		R_PNO = r_PNO;
		AREA_NM = aREA_NM;
		AREA_CD = aREA_CD;
		LIVE_PPLTN_STTS = lIVE_PPLTN_STTS;
		AREA_CONGEST_LVL = aREA_CONGEST_LVL;
		AREA_CONGEST_MSG = aREA_CONGEST_MSG;
		AREA_PPLTN_MIN = aREA_PPLTN_MIN;
		AREA_PPLTN_MAX = aREA_PPLTN_MAX;
		ROAD_ADDR = rOAD_ADDR;
		ADDRESS = aDDRESS;
		LAT = lAT;
		LNG = lNG;
		R_DATETIME = r_DATETIME;
	}

	@Override
	public String toString() {
		return "TourPeoplePassing [R_PNO=" + R_PNO + ", AREA_NM=" + AREA_NM + ", AREA_CD=" + AREA_CD
				+ ", LIVE_PPLTN_STTS=" + LIVE_PPLTN_STTS + ", AREA_CONGEST_LVL=" + AREA_CONGEST_LVL
				+ ", AREA_CONGEST_MSG=" + AREA_CONGEST_MSG + ", AREA_PPLTN_MIN=" + AREA_PPLTN_MIN + ", AREA_PPLTN_MAX="
				+ AREA_PPLTN_MAX + ", ROAD_ADDR=" + ROAD_ADDR + ", ADDRESS=" + ADDRESS + ", LAT=" + LAT + ", LNG=" + LNG
				+ ", R_DATETIME=" + R_DATETIME + "]";
	}

	public int getR_PNO() {
		return R_PNO;
	}

	public void setR_PNO(int r_PNO) {
		R_PNO = r_PNO;
	}

	public String getAREA_NM() {
		return AREA_NM;
	}

	public void setAREA_NM(String aREA_NM) {
		AREA_NM = aREA_NM;
	}

	public String getAREA_CD() {
		return AREA_CD;
	}

	public void setAREA_CD(String aREA_CD) {
		AREA_CD = aREA_CD;
	}

	public String getLIVE_PPLTN_STTS() {
		return LIVE_PPLTN_STTS;
	}

	public void setLIVE_PPLTN_STTS(String lIVE_PPLTN_STTS) {
		LIVE_PPLTN_STTS = lIVE_PPLTN_STTS;
	}

	public String getAREA_CONGEST_LVL() {
		return AREA_CONGEST_LVL;
	}

	public void setAREA_CONGEST_LVL(String aREA_CONGEST_LVL) {
		AREA_CONGEST_LVL = aREA_CONGEST_LVL;
	}

	public String getAREA_CONGEST_MSG() {
		return AREA_CONGEST_MSG;
	}

	public void setAREA_CONGEST_MSG(String aREA_CONGEST_MSG) {
		AREA_CONGEST_MSG = aREA_CONGEST_MSG;
	}

	public String getAREA_PPLTN_MIN() {
		return AREA_PPLTN_MIN;
	}

	public void setAREA_PPLTN_MIN(String aREA_PPLTN_MIN) {
		AREA_PPLTN_MIN = aREA_PPLTN_MIN;
	}

	public String getAREA_PPLTN_MAX() {
		return AREA_PPLTN_MAX;
	}

	public void setAREA_PPLTN_MAX(String aREA_PPLTN_MAX) {
		AREA_PPLTN_MAX = aREA_PPLTN_MAX;
	}

	public String getROAD_ADDR() {
		return ROAD_ADDR;
	}

	public void setROAD_ADDR(String rOAD_ADDR) {
		ROAD_ADDR = rOAD_ADDR;
	}

	public String getADDRESS() {
		return ADDRESS;
	}

	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}

	public String getLAT() {
		return LAT;
	}

	public void setLAT(String lAT) {
		LAT = lAT;
	}

	public String getLNG() {
		return LNG;
	}

	public void setLNG(String lNG) {
		LNG = lNG;
	}

	public String getR_DATETIME() {
		return R_DATETIME;
	}

	public void setR_DATETIME(String r_DATETIME) {
		R_DATETIME = r_DATETIME;
	}

}
