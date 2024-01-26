package com.multi.semi.tour.model.vo;

public class TourWeatherPassing {
	private int R_WNO;
	private String WEATHER_STTS;
	private String TEMP;
	private String SENSIBLE_TEMP;
	private String MAX_TEMP;
	private String MIN_TEMP;
	private String HUMIDITY;
	private String WIND_DIRCT;
	private String WIND_SPD;
	private String PRECIPITATION;
	private String PRECPT_TYPE;
	private String PCP_MSG;
	private String SUNRISE;
	private String SUNSET;
	private String UV_INDEX_LVL;
	private String UV_INDEX;
	private String UV_MSG;
	private String PM25_INDEX;
	private String PM25;
	private String PM10_INDEX;
	private String PM10;
	private String AIR_IDX;
	private String AIR_IDX_MVL;
	private String AIR_IDX_MAIN;
	private String AIR_MSG;
	private String WEATHER_TIME;
	private String NEWS_LIST;
	private String FCST24HOURS;
	private String R_DATETIME;

	public TourWeatherPassing() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TourWeatherPassing(int r_WNO, String wEATHER_STTS, String tEMP, String sENSIBLE_TEMP, String mAX_TEMP,
			String mIN_TEMP, String hUMIDITY, String wIND_DIRCT, String wIND_SPD, String pRECIPITATION,
			String pRECPT_TYPE, String pCP_MSG, String sUNRISE, String sUNSET, String uV_INDEX_LVL, String uV_INDEX,
			String uV_MSG, String pM25_INDEX, String pM25, String pM10_INDEX, String pM10, String aIR_IDX,
			String aIR_IDX_MVL, String aIR_IDX_MAIN, String aIR_MSG, String wEATHER_TIME, String nEWS_LIST,
			String fCST24HOURS, String r_DATETIME) {
		super();
		R_WNO = r_WNO;
		WEATHER_STTS = wEATHER_STTS;
		TEMP = tEMP;
		SENSIBLE_TEMP = sENSIBLE_TEMP;
		MAX_TEMP = mAX_TEMP;
		MIN_TEMP = mIN_TEMP;
		HUMIDITY = hUMIDITY;
		WIND_DIRCT = wIND_DIRCT;
		WIND_SPD = wIND_SPD;
		PRECIPITATION = pRECIPITATION;
		PRECPT_TYPE = pRECPT_TYPE;
		PCP_MSG = pCP_MSG;
		SUNRISE = sUNRISE;
		SUNSET = sUNSET;
		UV_INDEX_LVL = uV_INDEX_LVL;
		UV_INDEX = uV_INDEX;
		UV_MSG = uV_MSG;
		PM25_INDEX = pM25_INDEX;
		PM25 = pM25;
		PM10_INDEX = pM10_INDEX;
		PM10 = pM10;
		AIR_IDX = aIR_IDX;
		AIR_IDX_MVL = aIR_IDX_MVL;
		AIR_IDX_MAIN = aIR_IDX_MAIN;
		AIR_MSG = aIR_MSG;
		WEATHER_TIME = wEATHER_TIME;
		NEWS_LIST = nEWS_LIST;
		FCST24HOURS = fCST24HOURS;
		R_DATETIME = r_DATETIME;
	}

	@Override
	public String toString() {
		return "TourWeatherPassing [R_WNO=" + R_WNO + ", WEATHER_STTS=" + WEATHER_STTS + ", TEMP=" + TEMP
				+ ", SENSIBLE_TEMP=" + SENSIBLE_TEMP + ", MAX_TEMP=" + MAX_TEMP + ", MIN_TEMP=" + MIN_TEMP
				+ ", HUMIDITY=" + HUMIDITY + ", WIND_DIRCT=" + WIND_DIRCT + ", WIND_SPD=" + WIND_SPD
				+ ", PRECIPITATION=" + PRECIPITATION + ", PRECPT_TYPE=" + PRECPT_TYPE + ", PCP_MSG=" + PCP_MSG
				+ ", SUNRISE=" + SUNRISE + ", SUNSET=" + SUNSET + ", UV_INDEX_LVL=" + UV_INDEX_LVL + ", UV_INDEX="
				+ UV_INDEX + ", UV_MSG=" + UV_MSG + ", PM25_INDEX=" + PM25_INDEX + ", PM25=" + PM25 + ", PM10_INDEX="
				+ PM10_INDEX + ", PM10=" + PM10 + ", AIR_IDX=" + AIR_IDX + ", AIR_IDX_MVL=" + AIR_IDX_MVL
				+ ", AIR_IDX_MAIN=" + AIR_IDX_MAIN + ", AIR_MSG=" + AIR_MSG + ", WEATHER_TIME=" + WEATHER_TIME
				+ ", NEWS_LIST=" + NEWS_LIST + ", FCST24HOURS=" + FCST24HOURS + ", R_DATETIME=" + R_DATETIME + "]";
	}

	public int getR_WNO() {
		return R_WNO;
	}

	public void setR_WNO(int r_WNO) {
		R_WNO = r_WNO;
	}

	public String getWEATHER_STTS() {
		return WEATHER_STTS;
	}

	public void setWEATHER_STTS(String wEATHER_STTS) {
		WEATHER_STTS = wEATHER_STTS;
	}

	public String getTEMP() {
		return TEMP;
	}

	public void setTEMP(String tEMP) {
		TEMP = tEMP;
	}

	public String getSENSIBLE_TEMP() {
		return SENSIBLE_TEMP;
	}

	public void setSENSIBLE_TEMP(String sENSIBLE_TEMP) {
		SENSIBLE_TEMP = sENSIBLE_TEMP;
	}

	public String getMAX_TEMP() {
		return MAX_TEMP;
	}

	public void setMAX_TEMP(String mAX_TEMP) {
		MAX_TEMP = mAX_TEMP;
	}

	public String getMIN_TEMP() {
		return MIN_TEMP;
	}

	public void setMIN_TEMP(String mIN_TEMP) {
		MIN_TEMP = mIN_TEMP;
	}

	public String getHUMIDITY() {
		return HUMIDITY;
	}

	public void setHUMIDITY(String hUMIDITY) {
		HUMIDITY = hUMIDITY;
	}

	public String getWIND_DIRCT() {
		return WIND_DIRCT;
	}

	public void setWIND_DIRCT(String wIND_DIRCT) {
		WIND_DIRCT = wIND_DIRCT;
	}

	public String getWIND_SPD() {
		return WIND_SPD;
	}

	public void setWIND_SPD(String wIND_SPD) {
		WIND_SPD = wIND_SPD;
	}

	public String getPRECIPITATION() {
		return PRECIPITATION;
	}

	public void setPRECIPITATION(String pRECIPITATION) {
		PRECIPITATION = pRECIPITATION;
	}

	public String getPRECPT_TYPE() {
		return PRECPT_TYPE;
	}

	public void setPRECPT_TYPE(String pRECPT_TYPE) {
		PRECPT_TYPE = pRECPT_TYPE;
	}

	public String getPCP_MSG() {
		return PCP_MSG;
	}

	public void setPCP_MSG(String pCP_MSG) {
		PCP_MSG = pCP_MSG;
	}

	public String getSUNRISE() {
		return SUNRISE;
	}

	public void setSUNRISE(String sUNRISE) {
		SUNRISE = sUNRISE;
	}

	public String getSUNSET() {
		return SUNSET;
	}

	public void setSUNSET(String sUNSET) {
		SUNSET = sUNSET;
	}

	public String getUV_INDEX_LVL() {
		return UV_INDEX_LVL;
	}

	public void setUV_INDEX_LVL(String uV_INDEX_LVL) {
		UV_INDEX_LVL = uV_INDEX_LVL;
	}

	public String getUV_INDEX() {
		return UV_INDEX;
	}

	public void setUV_INDEX(String uV_INDEX) {
		UV_INDEX = uV_INDEX;
	}

	public String getUV_MSG() {
		return UV_MSG;
	}

	public void setUV_MSG(String uV_MSG) {
		UV_MSG = uV_MSG;
	}

	public String getPM25_INDEX() {
		return PM25_INDEX;
	}

	public void setPM25_INDEX(String pM25_INDEX) {
		PM25_INDEX = pM25_INDEX;
	}

	public String getPM25() {
		return PM25;
	}

	public void setPM25(String pM25) {
		PM25 = pM25;
	}

	public String getPM10_INDEX() {
		return PM10_INDEX;
	}

	public void setPM10_INDEX(String pM10_INDEX) {
		PM10_INDEX = pM10_INDEX;
	}

	public String getPM10() {
		return PM10;
	}

	public void setPM10(String pM10) {
		PM10 = pM10;
	}

	public String getAIR_IDX() {
		return AIR_IDX;
	}

	public void setAIR_IDX(String aIR_IDX) {
		AIR_IDX = aIR_IDX;
	}

	public String getAIR_IDX_MVL() {
		return AIR_IDX_MVL;
	}

	public void setAIR_IDX_MVL(String aIR_IDX_MVL) {
		AIR_IDX_MVL = aIR_IDX_MVL;
	}

	public String getAIR_IDX_MAIN() {
		return AIR_IDX_MAIN;
	}

	public void setAIR_IDX_MAIN(String aIR_IDX_MAIN) {
		AIR_IDX_MAIN = aIR_IDX_MAIN;
	}

	public String getAIR_MSG() {
		return AIR_MSG;
	}

	public void setAIR_MSG(String aIR_MSG) {
		AIR_MSG = aIR_MSG;
	}

	public String getWEATHER_TIME() {
		return WEATHER_TIME;
	}

	public void setWEATHER_TIME(String wEATHER_TIME) {
		WEATHER_TIME = wEATHER_TIME;
	}

	public String getNEWS_LIST() {
		return NEWS_LIST;
	}

	public void setNEWS_LIST(String nEWS_LIST) {
		NEWS_LIST = nEWS_LIST;
	}

	public String getFCST24HOURS() {
		return FCST24HOURS;
	}

	public void setFCST24HOURS(String fCST24HOURS) {
		FCST24HOURS = fCST24HOURS;
	}

	public String getR_DATETIME() {
		return R_DATETIME;
	}

	public void setR_DATETIME(String r_DATETIME) {
		R_DATETIME = r_DATETIME;
	}

}
