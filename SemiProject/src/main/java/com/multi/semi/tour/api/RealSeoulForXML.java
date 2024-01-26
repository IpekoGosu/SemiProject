package com.multi.semi.tour.api;


import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import com.multi.semi.tour.model.vo.TourPeople;
import com.multi.semi.tour.model.vo.TourPeoplePassing;
import com.multi.semi.tour.model.vo.TourWeatherPassing;

public class RealSeoulForXML {

	public static String[] KEY_WORD = { "강남 MICE 관광특구", "동대문 관광특구", "명동 관광특구", "이태원 관광특구", "잠실 관광특구", "종로·청계 관광특구",
			"홍대 관광특구", "경복궁", "광화문·덕수궁", "보신각", "서울 암사동 유적", "창덕궁·종묘", "가산디지털단지역", "강남역", "건대입구역", "고덕역", "고속터미널역",
			"교대역", "구로디지털단지역", "구로역", "군자역", "남구로역", "대림역", "동대문역", "뚝섬역", "미아사거리역", "발산역", "북한산우이역", "사당역", "삼각지역",
			"서울대입구역", "서울식물원·마곡나루역", "서울역", "선릉역", "성신여대입구역", "수유역", "신논현역·논현역", "신도림역", "신림역", "신촌·이대역", "양재역", "역삼역",
			"연신내역", "오목교역·목동운동장", "왕십리역", "용산역", "이태원역", "장지역", "장한평역", "천호역", "총신대입구(이수)역", "충정로역", "합정역", "혜화역",
			"홍대입구역(2호선)", "회기역", "4·19 카페거리", "가락시장", "가로수길", "광장(전통)시장", "김포공항", "낙산공원·이화마을", "노량진", "덕수궁길·정동길",
			"방배역 먹자골목", "북촌한옥마을", "서촌", "성수카페거리", "수유리 먹자골목", "쌍문동 맛집거리", "압구정로데오거리", "여의도", "연남동", "영등포 타임스퀘어", "외대앞",
			"용리단길", "이태원 앤틱가구거리", "인사동·익선동", "창동 신경제 중심지", "청담동 명품거리", "청량리 제기동 일대 전통시장", "해방촌·경리단길", "DDP(동대문디자인플라자)",
			"DMC(디지털미디어시티)", "강서한강공원", "고척돔", "광나루한강공원", "광화문광장", "국립중앙박물관·용산가족공원", "난지한강공원", "남산공원", "노들섬", "뚝섬한강공원",
			"망원한강공원", "반포한강공원", "북서울꿈의숲", "불광천", "서리풀공원·몽마르뜨공원", "서울광장", "서울대공원", "서울숲공원", "아차산", "양화한강공원", "어린이대공원",
			"여의도한강공원", "월드컵공원", "응봉산", "이촌한강공원", "잠실종합운동장", "잠실한강공원", "잠원한강공원", "청계산", "청와대" };
	
	public static String[] CODE_KEY = { "POI001", "POI002", "POI003", "POI004", "POI005", "POI006", "POI007", "POI008",
			"POI009", "POI010", "POI011", "POI012", "POI013", "POI014", "POI015", "POI016", "POI017", "POI018",
			"POI019", "POI020", "POI021", "POI022", "POI023", "POI024", "POI025", "POI026", "POI027", "POI028",
			"POI029", "POI030", "POI031", "POI032", "POI033", "POI034", "POI035", "POI036", "POI037", "POI038",
			"POI039", "POI040", "POI041", "POI042", "POI043", "POI044", "POI045", "POI046", "POI047", "POI048",
			"POI049", "POI050", "POI051", "POI052", "POI053", "POI054", "POI055", "POI056", "POI057", "POI058",
			"POI059", "POI060", "POI061", "POI062", "POI063", "POI064", "POI065", "POI066", "POI067", "POI068",
			"POI069", "POI070", "POI071", "POI072", "POI073", "POI074", "POI075", "POI076", "POI077", "POI078",
			"POI079", "POI080", "POI081", "POI082", "POI083", "POI084", "POI085", "POI086", "POI087", "POI088",
			"POI089", "POI090", "POI091", "POI092", "POI093", "POI094", "POI095", "POI096", "POI097", "POI098",
			"POI099", "POI100", "POI101", "POI102", "POI103", "POI104", "POI105", "POI106", "POI107", "POI108",
			"POI109", "POI110", "POI111", "POI112", "POI113" };

	
	public static final String KEY = "694b7356567a6f733131334f53534162";
	public static final String XML_URL = "http://openapi.seoul.go.kr:8088/";
	
	private static String getElementValue(Element element) {
	    return element != null ? element.getTextContent() : ""; // or handle it as per your requirements
	}
	// http://openapi.seoul.go.kr:8088/694b7356567a6f733131334f53534162/xml/citydata/1/1/광화문·덕수궁
	
	// http://openapi.seoul.go.kr:8088/694b7356567a6f733131334f53534162/xml/citydata/1/5/광화문·덕수궁
	public static void main(String[] args) {
		
//		for (int i = 0; i < KEY_WORD.length; i++) {
//			parse(KEY_WORD[i], conn);
//		}
		System.out.println("START");
		//RealCityDataparseFirst();
		RealCityDataparseService();
	}

	public static Connection openConnection() {
		Connection conn = null;
		try {
//			driverClass =com.mysql.cj.jdbc.Driver
			String url = "jdbc:mysql://localhost:3306/semiproject";
			String user = "user";
			String password = "1234";

			conn = DriverManager.getConnection(url, user, password);
			// 자동커밋 false설정
			conn.setAutoCommit(false);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	static class GEO{

		String X;
		String Y;
		public GEO(String x, String y) {
			super();
			X = x;
			Y = y;
		}

	}
	public static String[] rawData = {
    		"POI001/37.526795/127.027016",
    		"POI011/37.560226/127.129803",
    		"POI014/37.497833/127.207430",
    		"POI017/37.506082/127.004641",
    		"POI020/37.503427/126.882305",
    		"POI021/37.557061/127.079667",
    		"POI027/37.558632/126.837741",
    		"POI031/37.481387/126.952435",
    		"POI032/37.566119/126.827748",
    		"POI035/37.592641/127.016560",
    		"POI037/37.504506/127.024998",
    		"POI038/37.508810/126.891369",
    		"POI041/37.485428/127.038982",
    		"POI043/37.618958/126.920842",
    		"POI047/37.534560/126.994492",
    		"POI048/37.478608/127.126178",
    		"POI054/37.582220/127.001846",
    		"POI058/37.493456/127.109932",
    		"POI061/37.566181/126.801280",
    		"POI062/37.577965/127.007220",
    		"POI070/37.653898/127.037838",
    		"POI080/37.526183/127.045191",
    		"POI085/37.588234/126.814826",
    		"POI086/37.498362/126.866665",
    		"POI087/37.549075/127.120242",
    		"POI089/37.521001/126.979622",
    		"POI090/37.566012/126.876867",
    		"POI092/37.517637/126.959932",
    		"POI093/37.529382/127.069673",
    		"POI094/37.555296/126.895042",
    		"POI096/37.621428/127.040895",
    		"POI098/37.495172/127.003808",
    		"POI100/37.427503/127.017179",
    		"POI102/37.571667/127.104277",
    		"POI103/37.541166/126.898431",
    		"POI105/37.528558/126.932714",
    		"POI106/37.563952/126.893318",
    		"POI108/37.521946/126.956740",
    		"POI109/37.515880/127.073054",
    		"POI111/37.519428/127.008951",
    		"POI112/37.414426/127.040768",
    		"POI113/37.586495/126.975335"
    };
	
	public static List<TourPeople> RealCityDataparseService() {
		Connection sql_conn = openConnection();
		
		List<TourPeople> list = new ArrayList<>();
		
		Map<String,GEO> Map_GEO_LIST = new HashMap<>();
		
        for (String data : rawData) {
            String[] parts = data.split("/");
            String poi = parts[0];
            String latitude = parts[1];
            String longitude = parts[2];

            // Create GEO object and put it in the map
            GEO geo = new GEO(latitude, longitude);
            Map_GEO_LIST.put(poi, geo);
        }
		
		for (int i = 0; i < CODE_KEY.length; i++) {
			StringBuffer urlBuffer = new StringBuffer();
			urlBuffer.append(XML_URL);
			urlBuffer.append("" + KEY); // 첫 번째만 물음표로 설정
			urlBuffer.append("/xml/citydata/1/5/" + CODE_KEY[i]); // 첫 번째만 물음표로 설정
			//강남%20MICE%20관광특구
			//System.out.println(urlBuffer);

			try {
				URL url = new URL(urlBuffer.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Accept", "application/xml");
				int code = conn.getResponseCode(); // 실제 호출하는 부
				//System.out.println("ResponseCode : " + code);

				if (code < 200 || code > 300) {
					//System.out.println("페이지가 잘못되었습니다.");
					return null;
				}

				// 3. 페이지 Parsing(해석)
				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				DocumentBuilder db = dbf.newDocumentBuilder();

				Document doc = db.parse(conn.getInputStream()); // xml 부를 파싱하여 객체화

				doc.getDocumentElement().normalize();

				try {
					// KEY값으로 사용하기 위해 자체가공
					// 매 시간에서 2분에 데이터를 가져온후 그 시각을저장한다.
					Date now = new Date();
					SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:00:00");
					String formatedNow = formatter.format(now);// 현재시간 포맷

					NodeList ROAD_ADDR_List = doc.getElementsByTagName("ROAD_ADDR");// 도로명주소
					NodeList ADDRESS_List = doc.getElementsByTagName("ADDRESS");// 지번주소
					NodeList LAT_List = doc.getElementsByTagName("LAT");// 위도
					NodeList LNG_List = doc.getElementsByTagName("LNG");// 경도

					Element ROAD_ADDR_Element = (Element) ROAD_ADDR_List.item(0);
					Element ADDRESS_Element = (Element) ADDRESS_List.item(0);
					Element LAT_Element = (Element) LAT_List.item(0);
					Element LNG_Element = (Element) LNG_List.item(0);

					String ROAD_ADDR_Value = getElementValue(ROAD_ADDR_Element);// 도로명주소
					String ADDRESS_Value = getElementValue(ADDRESS_Element);// 지번주소
					String LAT_Value = getElementValue(LAT_Element);// 위도
					String LNG_Value = getElementValue(LNG_Element);// 경도
					
					
		            if (Map_GEO_LIST.get(CODE_KEY[i]) != null) {
		            	LAT_Value = Map_GEO_LIST.get(CODE_KEY[i]).X;
		            	LNG_Value = Map_GEO_LIST.get(CODE_KEY[i]).Y;
		            }
					
					
					// Find the AREA_NM tag
					NodeList areaNodeList = doc.getElementsByTagName("AREA_NM");
					NodeList areaCDNodeList = doc.getElementsByTagName("AREA_CD");
					NodeList LIVE_PPLTN_STTS_NodeList = doc.getElementsByTagName("LIVE_PPLTN_STTS");
					NodeList AREA_CONGEST_LVL_NodeList = doc.getElementsByTagName("AREA_CONGEST_LVL");
					NodeList AREA_CONGEST_MGS_NodeList = doc.getElementsByTagName("AREA_CONGEST_MSG");
					NodeList AREA_PPLTN_MIN_NodeList = doc.getElementsByTagName("AREA_PPLTN_MIN");
					NodeList AREA_PPLTN_MAX_NodeList = doc.getElementsByTagName("AREA_PPLTN_MAX");

					Element areaElement = (Element) areaNodeList.item(0);
					Element areaCDElement = (Element) areaCDNodeList.item(0);
					Element LiveElement = (Element) LIVE_PPLTN_STTS_NodeList.item(0);
					Element AREA_CONGEST_LVL_NodeList_Element = (Element) AREA_CONGEST_LVL_NodeList.item(0);
					Element AREA_CONGEST_MGS_Element = (Element) AREA_CONGEST_MGS_NodeList.item(0);
					Element AREA_PPLTN_MIN_Element = (Element) AREA_PPLTN_MIN_NodeList.item(0);
					Element AREA_PPLTN_MAX_Element = (Element) AREA_PPLTN_MAX_NodeList.item(0);

					String areaValue = areaElement.getTextContent();
					String areaCDValue = areaCDElement.getTextContent();
					String LiveValue = LiveElement.getTextContent();
					String AREA_CONGEST_LVL_Value = AREA_CONGEST_LVL_NodeList_Element.getTextContent();
					String AREA_CONGEST_MGS_Value = AREA_CONGEST_MGS_Element.getTextContent();
					String AREA_PPLTN_MIN_Value = AREA_PPLTN_MIN_Element.getTextContent();
					String AREA_PPLTN_MAX_areaCDValue = AREA_PPLTN_MAX_Element.getTextContent();

					TourPeoplePassing people = new TourPeoplePassing(0, areaValue, areaCDValue, LiveValue,
							AREA_CONGEST_LVL_Value, AREA_CONGEST_MGS_Value, AREA_PPLTN_MIN_Value,
							AREA_PPLTN_MAX_areaCDValue, ROAD_ADDR_Value, ADDRESS_Value, LAT_Value, LNG_Value, "");
					People_update(sql_conn, people);
					//System.out.println(people.toString());
					// 서울의 날씨 데이터는 종로구 기준으로 날씨데이터를 뽑아올것이다.
					// 종로구의 keyword code는 23이다 keyword 코드가 23일때 아래 코드를 실행한후
					// 데이터를 입력해준다.
					if (i == 5) {
						NodeList WEATHER_WEATHER_STTS_List = doc.getElementsByTagName("WEATHER_STTS");// 날씨 현황
						NodeList WEATHER_TEMP_List = doc.getElementsByTagName("TEMP");// 온도
						NodeList WEATHER_SENSIBLE_TEMP_List = doc.getElementsByTagName("SENSIBLE_TEMP");// 체감온도
						NodeList WEATHER_MAX_TEMP_List = doc.getElementsByTagName("MAX_TEMP");// 일 최고온도
						NodeList WEATHER_MIN_TEMP_List = doc.getElementsByTagName("MIN_TEMP");// 일최저온도
						NodeList WEATHER_HUMIDITY_List = doc.getElementsByTagName("HUMIDITY");// 습도
						NodeList WEATHER_WIND_DIRCT_List = doc.getElementsByTagName("WIND_DIRCT");// 풍향
						NodeList WEATHER_WIND_SPD_List = doc.getElementsByTagName("WIND_SPD");// 풍속
						NodeList WEATHER_PRECIPITATION_List = doc.getElementsByTagName("PRECIPITATION");// 강수량
						NodeList WEATHER_PRECPT_TYPE_List = doc.getElementsByTagName("PRECPT_TYPE");// 강수형태
						NodeList WEATHER_PCP_MSG_List = doc.getElementsByTagName("PCP_MSG");// 강수관련메세지
						NodeList WEATHER_SUNRISE_List = doc.getElementsByTagName("SUNRISE");// 일출시간
						NodeList WEATHER_SUNSET_List = doc.getElementsByTagName("SUNSET");// 일몰시각
						NodeList WEATHER_UV_INDEX_LVL_List = doc.getElementsByTagName("UV_INDEX_LVL");// 자외선지수단계
						NodeList WEATHER_UV_INDEX_List = doc.getElementsByTagName("UV_INDEX");// 자외선지수
						NodeList WEATHER_UV_MSG_List = doc.getElementsByTagName("UV_MSG");// 자외선메세지
						NodeList WEATHER_PM25_INDEX_List = doc.getElementsByTagName("PM25_INDEX");// 초미세먼지지표
						NodeList WEATHER_PM25_List = doc.getElementsByTagName("PM25");// 초미세먼지농도
						NodeList WEATHER_PM10_INDEX_List = doc.getElementsByTagName("PM10_INDEX");// 미세먼지지표
						NodeList WEATHER_PM10_List = doc.getElementsByTagName("PM10");// 미세먼지농도
						NodeList WEATHER_AIR_IDX_List = doc.getElementsByTagName("AIR_IDX");// 통합대기환경등급
						NodeList WEATHER_AIR_IDX_MVL_List = doc.getElementsByTagName("AIR_IDX_MVL");// 통합대기환경지수
						NodeList WEATHER_AIR_IDX_MAIN_List = doc.getElementsByTagName("AIR_IDX_MAIN");// 통합대기환경지수결정물질
						NodeList WEATHER_AIR_MSG_List = doc.getElementsByTagName("AIR_MSG");// 통합대기환경등급별메세지
						NodeList WEATHER_WEATHER_TIME_List = doc.getElementsByTagName("WEATHER_TIME");// 날씨데이터업데이트시간
						NodeList WEATHER_NEWS_LIST_List = doc.getElementsByTagName("NEWS_LIST");// 기상관련특보
						NodeList WEATHER_FCST24HOURS_List = doc.getElementsByTagName("FCST24HOURS");// 24시간 예보

						Element WEATHER_WEATHER_STTS_Element = (Element) WEATHER_WEATHER_STTS_List.item(0);
						Element WEATHER_TEMP_Element = (Element) WEATHER_TEMP_List.item(0);
						Element WEATHER_SENSIBLE_TEMP_Element = (Element) WEATHER_SENSIBLE_TEMP_List.item(0);
						Element WEATHER_MAX_TEMP_Element = (Element) WEATHER_MAX_TEMP_List.item(0);
						Element WEATHER_MIN_TEMP_Element = (Element) WEATHER_MIN_TEMP_List.item(0);
						Element WEATHER_HUMIDITY_Element = (Element) WEATHER_HUMIDITY_List.item(0);
						Element WEATHER_WIND_DIRCT_Element = (Element) WEATHER_WIND_DIRCT_List.item(0);
						Element WEATHER_WIND_SPD_Element = (Element) WEATHER_WIND_SPD_List.item(0);
						Element WEATHER_PRECIPITATION_Element = (Element) WEATHER_PRECIPITATION_List.item(0);
						Element WEATHER_PRECPT_TYPE_Element = (Element) WEATHER_PRECPT_TYPE_List.item(0);
						Element WEATHER_PCP_MSG_Element = (Element) WEATHER_PCP_MSG_List.item(0);
						Element WEATHER_SUNRISE_Element = (Element) WEATHER_SUNRISE_List.item(0);
						Element WEATHER_SUNSET_Element = (Element) WEATHER_SUNSET_List.item(0);
						Element WEATHER_UV_INDEX_LVL_Element = (Element) WEATHER_UV_INDEX_LVL_List.item(0);
						Element WEATHER_UV_INDEX_Element = (Element) WEATHER_UV_INDEX_List.item(0);
						Element WEATHER_UV_MSG_Element = (Element) WEATHER_UV_MSG_List.item(0);
						Element WEATHER_PM25_INDEX_Element = (Element) WEATHER_PM25_INDEX_List.item(0);
						Element WEATHER_PM25_Element = (Element) WEATHER_PM25_List.item(0);
						Element WEATHER_PM10_INDEX_Element = (Element) WEATHER_PM10_INDEX_List.item(0);
						Element WEATHER_PM10_Element = (Element) WEATHER_PM10_List.item(0);
						Element WEATHER_AIR_IDX_Element = (Element) WEATHER_AIR_IDX_List.item(0);
						Element WEATHER_AIR_IDX_MVL_Element = (Element) WEATHER_AIR_IDX_MVL_List.item(0);
						Element WEATHER_AIR_IDX_MAIN_Element = (Element) WEATHER_AIR_IDX_MAIN_List.item(0);
						Element WEATHER_AIR_MSG_Element = (Element) WEATHER_AIR_MSG_List.item(0);
						Element WEATHER_WEATHER_TIME_Element = (Element) WEATHER_WEATHER_TIME_List.item(0);
						Element WEATHER_NEWS_LIST_Element = (Element) WEATHER_NEWS_LIST_List.item(0);
						Element WEATHER_FCST24HOURS_Element = (Element) WEATHER_FCST24HOURS_List.item(0);

						String WEATHER_WEATHER_STTS_SValue = WEATHER_WEATHER_STTS_Element.getTextContent();
						String WEATHER_TEMP_SValue = WEATHER_TEMP_Element.getTextContent();
						String WEATHER_SENSIBLE_TEMP_SValue = WEATHER_SENSIBLE_TEMP_Element.getTextContent();
						String WEATHER_MAX_TEMP_SValue = WEATHER_MAX_TEMP_Element.getTextContent();
						String WEATHER_MIN_TEMP_SValue = WEATHER_MIN_TEMP_Element.getTextContent();
						String WEATHER_HUMIDITY_SValue = WEATHER_HUMIDITY_Element.getTextContent();
						String WEATHER_WIND_DIRCT_SValue = WEATHER_WIND_DIRCT_Element.getTextContent();
						String WEATHER_WIND_SPD_SValue = WEATHER_WIND_SPD_Element.getTextContent();
						String WEATHER_PRECIPITATION_SValue = WEATHER_PRECIPITATION_Element.getTextContent();
						String WEATHER_PRECPT_TYPE_SValue = WEATHER_PRECPT_TYPE_Element.getTextContent();
						String WEATHER_PCP_MSG_SValue = WEATHER_PCP_MSG_Element.getTextContent();
						String WEATHER_SUNRISE_SValue = WEATHER_SUNRISE_Element.getTextContent();
						String WEATHER_SUNSET_SValue = WEATHER_SUNSET_Element.getTextContent();
						String WEATHER_UV_INDEX_LVL_SValue = WEATHER_UV_INDEX_LVL_Element.getTextContent();
						String WEATHER_UV_INDEX_SValue = WEATHER_UV_INDEX_Element.getTextContent();
						String WEATHER_UV_MSG_SValue = WEATHER_UV_MSG_Element.getTextContent();
						String WEATHER_PM25_INDEX_SValue = WEATHER_PM25_INDEX_Element.getTextContent();
						String WEATHER_PM25_SValue = WEATHER_PM25_Element.getTextContent();
						String WEATHER_PM10_INDEX_SValue = WEATHER_PM10_INDEX_Element.getTextContent();
						String WEATHER_PM10_SValue = WEATHER_PM10_Element.getTextContent();
						String WEATHER_AIR_IDX_SValue = WEATHER_AIR_IDX_Element.getTextContent();
						String WEATHER_AIR_IDX_MVL_SValue = WEATHER_AIR_IDX_MVL_Element.getTextContent();
						String WEATHER_AIR_IDX_MAIN_SValue = WEATHER_AIR_IDX_MAIN_Element.getTextContent();
						String WEATHER_AIR_MSG_SValue = WEATHER_AIR_MSG_Element.getTextContent();
						String WEATHER_WEATHER_TIME_SValue = WEATHER_WEATHER_TIME_Element.getTextContent();
						String WEATHER_NEWS_LIST_SValue = WEATHER_NEWS_LIST_Element.getTextContent();
						String WEATHER_FCST24HOURS_SValue = WEATHER_FCST24HOURS_Element.getTextContent();

						TourWeatherPassing weather = new TourWeatherPassing(0, WEATHER_WEATHER_STTS_SValue,
								WEATHER_TEMP_SValue, WEATHER_SENSIBLE_TEMP_SValue, WEATHER_MAX_TEMP_SValue,
								WEATHER_MIN_TEMP_SValue, WEATHER_HUMIDITY_SValue, WEATHER_WIND_DIRCT_SValue,
								WEATHER_WIND_SPD_SValue, WEATHER_PRECIPITATION_SValue, WEATHER_PRECPT_TYPE_SValue,
								WEATHER_PCP_MSG_SValue, WEATHER_SUNRISE_SValue, WEATHER_SUNSET_SValue,
								WEATHER_UV_INDEX_LVL_SValue, WEATHER_UV_INDEX_SValue, WEATHER_UV_MSG_SValue,
								WEATHER_PM25_INDEX_SValue, WEATHER_PM25_SValue, WEATHER_PM10_INDEX_SValue,
								WEATHER_PM10_SValue, WEATHER_AIR_IDX_SValue, WEATHER_AIR_IDX_MVL_SValue,
								WEATHER_AIR_IDX_MAIN_SValue, WEATHER_AIR_MSG_SValue, WEATHER_WEATHER_TIME_SValue,
								WEATHER_NEWS_LIST_SValue, WEATHER_FCST24HOURS_SValue, "");
						Weather_update(sql_conn, weather);// 종로구 데이터만 인설트
					}
							
				} catch (Exception e) {
					e.printStackTrace();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//log.debug("RealCityDataparse END");
		System.out.println("RealCityDataparse END");
		return list;
	}
	
	public static List<TourPeople> RealCityDataparseFirst() {
		Connection sql_conn = openConnection();
		
		List<TourPeople> list = new ArrayList<>();
		
		Map<String,GEO> Map_GEO_LIST = new HashMap<>();
		
        for (String data : rawData) {
            String[] parts = data.split("/");
            String poi = parts[0];
            String latitude = parts[1];
            String longitude = parts[2];

            // Create GEO object and put it in the map
            GEO geo = new GEO(latitude, longitude);
            Map_GEO_LIST.put(poi, geo);
        }
		
		for (int i = 0; i < CODE_KEY.length; i++) {
			StringBuffer urlBuffer = new StringBuffer();
			urlBuffer.append(XML_URL);
			urlBuffer.append("" + KEY); // 첫 번째만 물음표로 설정
			urlBuffer.append("/xml/citydata/1/5/" + CODE_KEY[i]); // 첫 번째만 물음표로 설정
			//강남%20MICE%20관광특구
			//System.out.println(urlBuffer);

			try {
				URL url = new URL(urlBuffer.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Accept", "application/xml");
				int code = conn.getResponseCode(); // 실제 호출하는 부
				//System.out.println("ResponseCode : " + code);

				if (code < 200 || code > 300) {
					//System.out.println("페이지가 잘못되었습니다.");
					return null;
				}

				// 3. 페이지 Parsing(해석)
				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				DocumentBuilder db = dbf.newDocumentBuilder();

				Document doc = db.parse(conn.getInputStream()); // xml 부를 파싱하여 객체화

				doc.getDocumentElement().normalize();

				try {
					// KEY값으로 사용하기 위해 자체가공
					// 매 시간에서 2분에 데이터를 가져온후 그 시각을저장한다.
					Date now = new Date();
					SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:00:00");
					String formatedNow = formatter.format(now);// 현재시간 포맷

					NodeList ROAD_ADDR_List = doc.getElementsByTagName("ROAD_ADDR");// 도로명주소
					NodeList ADDRESS_List = doc.getElementsByTagName("ADDRESS");// 지번주소
					NodeList LAT_List = doc.getElementsByTagName("LAT");// 위도
					NodeList LNG_List = doc.getElementsByTagName("LNG");// 경도

					Element ROAD_ADDR_Element = (Element) ROAD_ADDR_List.item(0);
					Element ADDRESS_Element = (Element) ADDRESS_List.item(0);
					Element LAT_Element = (Element) LAT_List.item(0);
					Element LNG_Element = (Element) LNG_List.item(0);

					String ROAD_ADDR_Value = getElementValue(ROAD_ADDR_Element);// 도로명주소
					String ADDRESS_Value = getElementValue(ADDRESS_Element);// 지번주소
					String LAT_Value = getElementValue(LAT_Element);// 위도
					String LNG_Value = getElementValue(LNG_Element);// 경도
					
					
		            if (Map_GEO_LIST.get(CODE_KEY[i]) != null) {
		            	LAT_Value = Map_GEO_LIST.get(CODE_KEY[i]).X;
		            	LNG_Value = Map_GEO_LIST.get(CODE_KEY[i]).Y;
		            }
					
					
					// Find the AREA_NM tag
					NodeList areaNodeList = doc.getElementsByTagName("AREA_NM");
					NodeList areaCDNodeList = doc.getElementsByTagName("AREA_CD");
					NodeList LIVE_PPLTN_STTS_NodeList = doc.getElementsByTagName("LIVE_PPLTN_STTS");
					NodeList AREA_CONGEST_LVL_NodeList = doc.getElementsByTagName("AREA_CONGEST_LVL");
					NodeList AREA_CONGEST_MGS_NodeList = doc.getElementsByTagName("AREA_CONGEST_MSG");
					NodeList AREA_PPLTN_MIN_NodeList = doc.getElementsByTagName("AREA_PPLTN_MIN");
					NodeList AREA_PPLTN_MAX_NodeList = doc.getElementsByTagName("AREA_PPLTN_MAX");

					Element areaElement = (Element) areaNodeList.item(0);
					Element areaCDElement = (Element) areaCDNodeList.item(0);
					Element LiveElement = (Element) LIVE_PPLTN_STTS_NodeList.item(0);
					Element AREA_CONGEST_LVL_NodeList_Element = (Element) AREA_CONGEST_LVL_NodeList.item(0);
					Element AREA_CONGEST_MGS_Element = (Element) AREA_CONGEST_MGS_NodeList.item(0);
					Element AREA_PPLTN_MIN_Element = (Element) AREA_PPLTN_MIN_NodeList.item(0);
					Element AREA_PPLTN_MAX_Element = (Element) AREA_PPLTN_MAX_NodeList.item(0);

					String areaValue = areaElement.getTextContent();
					String areaCDValue = areaCDElement.getTextContent();
					String LiveValue = LiveElement.getTextContent();
					String AREA_CONGEST_LVL_Value = AREA_CONGEST_LVL_NodeList_Element.getTextContent();
					String AREA_CONGEST_MGS_Value = AREA_CONGEST_MGS_Element.getTextContent();
					String AREA_PPLTN_MIN_Value = AREA_PPLTN_MIN_Element.getTextContent();
					String AREA_PPLTN_MAX_areaCDValue = AREA_PPLTN_MAX_Element.getTextContent();

					TourPeoplePassing people = new TourPeoplePassing(0, areaValue, areaCDValue, LiveValue,
							AREA_CONGEST_LVL_Value, AREA_CONGEST_MGS_Value, AREA_PPLTN_MIN_Value,
							AREA_PPLTN_MAX_areaCDValue, ROAD_ADDR_Value, ADDRESS_Value, LAT_Value, LNG_Value, "");
					People_insert(sql_conn, people);
					//System.out.println(people.toString());
					// 서울의 날씨 데이터는 종로구 기준으로 날씨데이터를 뽑아올것이다.
					// 종로구의 keyword code는 23이다 keyword 코드가 23일때 아래 코드를 실행한후
					// 데이터를 입력해준다.
					if (i == 5) {
						NodeList WEATHER_WEATHER_STTS_List = doc.getElementsByTagName("WEATHER_STTS");// 날씨 현황
						NodeList WEATHER_TEMP_List = doc.getElementsByTagName("TEMP");// 온도
						NodeList WEATHER_SENSIBLE_TEMP_List = doc.getElementsByTagName("SENSIBLE_TEMP");// 체감온도
						NodeList WEATHER_MAX_TEMP_List = doc.getElementsByTagName("MAX_TEMP");// 일 최고온도
						NodeList WEATHER_MIN_TEMP_List = doc.getElementsByTagName("MIN_TEMP");// 일최저온도
						NodeList WEATHER_HUMIDITY_List = doc.getElementsByTagName("HUMIDITY");// 습도
						NodeList WEATHER_WIND_DIRCT_List = doc.getElementsByTagName("WIND_DIRCT");// 풍향
						NodeList WEATHER_WIND_SPD_List = doc.getElementsByTagName("WIND_SPD");// 풍속
						NodeList WEATHER_PRECIPITATION_List = doc.getElementsByTagName("PRECIPITATION");// 강수량
						NodeList WEATHER_PRECPT_TYPE_List = doc.getElementsByTagName("PRECPT_TYPE");// 강수형태
						NodeList WEATHER_PCP_MSG_List = doc.getElementsByTagName("PCP_MSG");// 강수관련메세지
						NodeList WEATHER_SUNRISE_List = doc.getElementsByTagName("SUNRISE");// 일출시간
						NodeList WEATHER_SUNSET_List = doc.getElementsByTagName("SUNSET");// 일몰시각
						NodeList WEATHER_UV_INDEX_LVL_List = doc.getElementsByTagName("UV_INDEX_LVL");// 자외선지수단계
						NodeList WEATHER_UV_INDEX_List = doc.getElementsByTagName("UV_INDEX");// 자외선지수
						NodeList WEATHER_UV_MSG_List = doc.getElementsByTagName("UV_MSG");// 자외선메세지
						NodeList WEATHER_PM25_INDEX_List = doc.getElementsByTagName("PM25_INDEX");// 초미세먼지지표
						NodeList WEATHER_PM25_List = doc.getElementsByTagName("PM25");// 초미세먼지농도
						NodeList WEATHER_PM10_INDEX_List = doc.getElementsByTagName("PM10_INDEX");// 미세먼지지표
						NodeList WEATHER_PM10_List = doc.getElementsByTagName("PM10");// 미세먼지농도
						NodeList WEATHER_AIR_IDX_List = doc.getElementsByTagName("AIR_IDX");// 통합대기환경등급
						NodeList WEATHER_AIR_IDX_MVL_List = doc.getElementsByTagName("AIR_IDX_MVL");// 통합대기환경지수
						NodeList WEATHER_AIR_IDX_MAIN_List = doc.getElementsByTagName("AIR_IDX_MAIN");// 통합대기환경지수결정물질
						NodeList WEATHER_AIR_MSG_List = doc.getElementsByTagName("AIR_MSG");// 통합대기환경등급별메세지
						NodeList WEATHER_WEATHER_TIME_List = doc.getElementsByTagName("WEATHER_TIME");// 날씨데이터업데이트시간
						NodeList WEATHER_NEWS_LIST_List = doc.getElementsByTagName("NEWS_LIST");// 기상관련특보
						NodeList WEATHER_FCST24HOURS_List = doc.getElementsByTagName("FCST24HOURS");// 24시간 예보

						Element WEATHER_WEATHER_STTS_Element = (Element) WEATHER_WEATHER_STTS_List.item(0);
						Element WEATHER_TEMP_Element = (Element) WEATHER_TEMP_List.item(0);
						Element WEATHER_SENSIBLE_TEMP_Element = (Element) WEATHER_SENSIBLE_TEMP_List.item(0);
						Element WEATHER_MAX_TEMP_Element = (Element) WEATHER_MAX_TEMP_List.item(0);
						Element WEATHER_MIN_TEMP_Element = (Element) WEATHER_MIN_TEMP_List.item(0);
						Element WEATHER_HUMIDITY_Element = (Element) WEATHER_HUMIDITY_List.item(0);
						Element WEATHER_WIND_DIRCT_Element = (Element) WEATHER_WIND_DIRCT_List.item(0);
						Element WEATHER_WIND_SPD_Element = (Element) WEATHER_WIND_SPD_List.item(0);
						Element WEATHER_PRECIPITATION_Element = (Element) WEATHER_PRECIPITATION_List.item(0);
						Element WEATHER_PRECPT_TYPE_Element = (Element) WEATHER_PRECPT_TYPE_List.item(0);
						Element WEATHER_PCP_MSG_Element = (Element) WEATHER_PCP_MSG_List.item(0);
						Element WEATHER_SUNRISE_Element = (Element) WEATHER_SUNRISE_List.item(0);
						Element WEATHER_SUNSET_Element = (Element) WEATHER_SUNSET_List.item(0);
						Element WEATHER_UV_INDEX_LVL_Element = (Element) WEATHER_UV_INDEX_LVL_List.item(0);
						Element WEATHER_UV_INDEX_Element = (Element) WEATHER_UV_INDEX_List.item(0);
						Element WEATHER_UV_MSG_Element = (Element) WEATHER_UV_MSG_List.item(0);
						Element WEATHER_PM25_INDEX_Element = (Element) WEATHER_PM25_INDEX_List.item(0);
						Element WEATHER_PM25_Element = (Element) WEATHER_PM25_List.item(0);
						Element WEATHER_PM10_INDEX_Element = (Element) WEATHER_PM10_INDEX_List.item(0);
						Element WEATHER_PM10_Element = (Element) WEATHER_PM10_List.item(0);
						Element WEATHER_AIR_IDX_Element = (Element) WEATHER_AIR_IDX_List.item(0);
						Element WEATHER_AIR_IDX_MVL_Element = (Element) WEATHER_AIR_IDX_MVL_List.item(0);
						Element WEATHER_AIR_IDX_MAIN_Element = (Element) WEATHER_AIR_IDX_MAIN_List.item(0);
						Element WEATHER_AIR_MSG_Element = (Element) WEATHER_AIR_MSG_List.item(0);
						Element WEATHER_WEATHER_TIME_Element = (Element) WEATHER_WEATHER_TIME_List.item(0);
						Element WEATHER_NEWS_LIST_Element = (Element) WEATHER_NEWS_LIST_List.item(0);
						Element WEATHER_FCST24HOURS_Element = (Element) WEATHER_FCST24HOURS_List.item(0);

						String WEATHER_WEATHER_STTS_SValue = WEATHER_WEATHER_STTS_Element.getTextContent();
						String WEATHER_TEMP_SValue = WEATHER_TEMP_Element.getTextContent();
						String WEATHER_SENSIBLE_TEMP_SValue = WEATHER_SENSIBLE_TEMP_Element.getTextContent();
						String WEATHER_MAX_TEMP_SValue = WEATHER_MAX_TEMP_Element.getTextContent();
						String WEATHER_MIN_TEMP_SValue = WEATHER_MIN_TEMP_Element.getTextContent();
						String WEATHER_HUMIDITY_SValue = WEATHER_HUMIDITY_Element.getTextContent();
						String WEATHER_WIND_DIRCT_SValue = WEATHER_WIND_DIRCT_Element.getTextContent();
						String WEATHER_WIND_SPD_SValue = WEATHER_WIND_SPD_Element.getTextContent();
						String WEATHER_PRECIPITATION_SValue = WEATHER_PRECIPITATION_Element.getTextContent();
						String WEATHER_PRECPT_TYPE_SValue = WEATHER_PRECPT_TYPE_Element.getTextContent();
						String WEATHER_PCP_MSG_SValue = WEATHER_PCP_MSG_Element.getTextContent();
						String WEATHER_SUNRISE_SValue = WEATHER_SUNRISE_Element.getTextContent();
						String WEATHER_SUNSET_SValue = WEATHER_SUNSET_Element.getTextContent();
						String WEATHER_UV_INDEX_LVL_SValue = WEATHER_UV_INDEX_LVL_Element.getTextContent();
						String WEATHER_UV_INDEX_SValue = WEATHER_UV_INDEX_Element.getTextContent();
						String WEATHER_UV_MSG_SValue = WEATHER_UV_MSG_Element.getTextContent();
						String WEATHER_PM25_INDEX_SValue = WEATHER_PM25_INDEX_Element.getTextContent();
						String WEATHER_PM25_SValue = WEATHER_PM25_Element.getTextContent();
						String WEATHER_PM10_INDEX_SValue = WEATHER_PM10_INDEX_Element.getTextContent();
						String WEATHER_PM10_SValue = WEATHER_PM10_Element.getTextContent();
						String WEATHER_AIR_IDX_SValue = WEATHER_AIR_IDX_Element.getTextContent();
						String WEATHER_AIR_IDX_MVL_SValue = WEATHER_AIR_IDX_MVL_Element.getTextContent();
						String WEATHER_AIR_IDX_MAIN_SValue = WEATHER_AIR_IDX_MAIN_Element.getTextContent();
						String WEATHER_AIR_MSG_SValue = WEATHER_AIR_MSG_Element.getTextContent();
						String WEATHER_WEATHER_TIME_SValue = WEATHER_WEATHER_TIME_Element.getTextContent();
						String WEATHER_NEWS_LIST_SValue = WEATHER_NEWS_LIST_Element.getTextContent();
						String WEATHER_FCST24HOURS_SValue = WEATHER_FCST24HOURS_Element.getTextContent();

						TourWeatherPassing weather = new TourWeatherPassing(0, WEATHER_WEATHER_STTS_SValue,
								WEATHER_TEMP_SValue, WEATHER_SENSIBLE_TEMP_SValue, WEATHER_MAX_TEMP_SValue,
								WEATHER_MIN_TEMP_SValue, WEATHER_HUMIDITY_SValue, WEATHER_WIND_DIRCT_SValue,
								WEATHER_WIND_SPD_SValue, WEATHER_PRECIPITATION_SValue, WEATHER_PRECPT_TYPE_SValue,
								WEATHER_PCP_MSG_SValue, WEATHER_SUNRISE_SValue, WEATHER_SUNSET_SValue,
								WEATHER_UV_INDEX_LVL_SValue, WEATHER_UV_INDEX_SValue, WEATHER_UV_MSG_SValue,
								WEATHER_PM25_INDEX_SValue, WEATHER_PM25_SValue, WEATHER_PM10_INDEX_SValue,
								WEATHER_PM10_SValue, WEATHER_AIR_IDX_SValue, WEATHER_AIR_IDX_MVL_SValue,
								WEATHER_AIR_IDX_MAIN_SValue, WEATHER_AIR_MSG_SValue, WEATHER_WEATHER_TIME_SValue,
								WEATHER_NEWS_LIST_SValue, WEATHER_FCST24HOURS_SValue, "");
						Weather_insert(sql_conn, weather);// 종로구 데이터만 인설트
					}

					// System.out.println("WEATHER_STTS_Value: " + WEATHER_WEATHER_STTS_SValue);
					// System.out.println("TEMP_Value: " + WEATHER_TEMP_SValue);
					// System.out.println("SENSIBLE_TEMP_Value: " + WEATHER_SENSIBLE_TEMP_SValue);
					// System.out.println("MAX_TEMP_Value: " + WEATHER_MAX_TEMP_SValue);
					// System.out.println("MIN_TEMP_Value: " + WEATHER_MIN_TEMP_SValue);
					// System.out.println("HUMIDITY_Value: " + WEATHER_HUMIDITY_SValue);
					// System.out.println("WIND_DIRCT_Value: " + WEATHER_WIND_DIRCT_SValue);
					// System.out.println("WIND_SPD_Value: " + WEATHER_WIND_SPD_SValue);
					// System.out.println("PRECIPITATION_Value: " + WEATHER_PRECIPITATION_SValue);
					// System.out.println("PRECPT_TYPE_Value: " + WEATHER_PRECPT_TYPE_SValue);
					// System.out.println("PCP_MSG_Value: " + WEATHER_PCP_MSG_SValue);
					// System.out.println("SUNRISE_Value: " + WEATHER_SUNRISE_SValue);
					// System.out.println("SUNSET_Value: " + WEATHER_SUNSET_SValue);
					// System.out.println("UV_INDEX_LVL_Value: " + WEATHER_UV_INDEX_LVL_SValue);
					// System.out.println("UV_INDEX_Value: " + WEATHER_UV_INDEX_SValue);
					// System.out.println("UV_MSG_Value: " + WEATHER_UV_MSG_SValue);
					// System.out.println("PM25_INDEX_Value: " + WEATHER_PM25_INDEX_SValue);
					// System.out.println("PM25_Value: " + WEATHER_PM25_SValue);
					// System.out.println("PM10_INDEX_Value: " + WEATHER_PM10_INDEX_SValue);
					// System.out.println("PM10_Value: " + WEATHER_PM10_SValue);
					// System.out.println("AIR_IDX_Value: " + WEATHER_AIR_IDX_SValue);
					// System.out.println("AIR_IDX_MVL_Value: " + WEATHER_AIR_IDX_MVL_SValue);
					// System.out.println("AIR_IDX_MAIN_Value: " + WEATHER_AIR_IDX_MAIN_SValue);
					// System.out.println("AIR_MSG_Value: " + WEATHER_AIR_MSG_SValue);
					// System.out.println("WEATHER_TIME_Value: " + WEATHER_WEATHER_TIME_SValue);
					// System.out.println("NEWS_LIST_Value: " + WEATHER_NEWS_LIST_SValue);
					// System.out.println("FCST24HOURS_Value: " + WEATHER_FCST24HOURS_SValue);

				} catch (Exception e) {
					e.printStackTrace();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//log.debug("RealCityDataparse END");
		System.out.println("RealCityDataparse END");
		return list;
	}

	private static String getStrData(Element eElement, String tagName) {
		try {
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return "-";
		}
	}

	private static int getIntData(Element eElement, String tagName) {
		try {
			return Integer.parseInt(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}

	private static long getLongData(Element eElement, String tagName) {
		try {
			return Long.parseLong(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}

	private static double getDoubleData(Element eElement, String tagName) {
		try {
			return Double.parseDouble(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0.0;
		}
	}

	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	private static Date getDateData(Element eElement, String tagName) {
		try {
			String str = eElement.getElementsByTagName(tagName).item(0).getTextContent();
			return sdf.parse(str);
		} catch (Exception e) {
			return null;
		}
	}

	public static int People_insert(Connection conn, TourPeoplePassing peopleinsert) {
		try {

			String sql = "INSERT INTO real_people" + "  ("
					+ "R_PNO,  AREA_NM,  AREA_CD,  LIVE_PPLTN_STTS,  AREA_CONGEST_LVL,"
					+ "AREA_CONGEST_MSG,  AREA_PPLTN_MIN,  AREA_PPLTN_MAX,  ROAD_ADDR,  ADDRESS,"
					+ " LAT,  LNG,  R_DATETIME  )  " + "VALUES  " + "(  " + "0 , ?,  ?,  ?,  ?," + "?,  ?,  ?,  ?,  ?,"
					+ "?,  ?,  ?" + ");";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;

			// pstmt.setString(cnt++, peopleinsert.getR_PNO());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getAREA_NM());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getAREA_CD());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getLIVE_PPLTN_STTS());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getAREA_CONGEST_LVL());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getAREA_CONGEST_MSG());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getAREA_PPLTN_MIN());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getAREA_PPLTN_MAX());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getROAD_ADDR());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getADDRESS());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getLAT());// T_TITLE
			pstmt.setString(cnt++, peopleinsert.getLNG());// T_TITLE
			// pstmt.setString(cnt++, peopleinsert.getR_DATETIME());// T_TITLE

			Date now = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:00:00");
			String formatedNow = formatter.format(now);

			pstmt.setString(cnt++, formatedNow);// T_CUR_DATE

			int result = pstmt.executeUpdate();
			pstmt.close();
			conn.commit();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public static int Weather_insert(Connection conn, TourWeatherPassing weatherinsert) {
		try {

			String sql = "INSERT INTO real_weather  " + "("
					+ "  R_WNO,  WEATHER_STTS,  TEMP,  SENSIBLE_TEMP,  MAX_TEMP,"
					+ "  MIN_TEMP,  HUMIDITY,  WIND_DIRCT,  WIND_SPD,  PRECIPITATION,"
					+ "  PRECPT_TYPE,  PCP_MSG,  SUNRISE,  SUNSET,  UV_INDEX_LVL,"
					+ "  UV_INDEX,  UV_MSG,  PM25_INDEX,  PM25,  PM10_INDEX,"
					+ "  PM10,  AIR_IDX,  AIR_IDX_MVL,  AIR_IDX_MAIN,  AIR_MSG,"
					+ "  WEATHER_TIME,  NEWS_LIST,  FCST24HOURS,  R_DATETIME  " + ")  " + "VALUES  " + " ("
					+ "  0,  ?,  ?,  ?,  ?," + "  ?,  ?,  ?,  ?,  ?," + "  ?,  ?,  ?,  ?,  ?," + "  ?,  ?,  ?,  ?,  ?,"
					+ "  ?,  ?,  ?,  ?,  ?," + "  ?,  ?,  ?,  ?" + ");";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			// pstmt.setInt(cnt++, weatherinsert.getR_WNO());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getWEATHER_STTS());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getTEMP());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getSENSIBLE_TEMP());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getMAX_TEMP());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getMIN_TEMP());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getHUMIDITY());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getWIND_DIRCT());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getWIND_SPD());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getPRECIPITATION());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getPRECPT_TYPE());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getPCP_MSG());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getSUNRISE());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getSUNSET());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getUV_INDEX_LVL());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getUV_INDEX());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getUV_MSG());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getPM25_INDEX());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getPM25());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getPM10_INDEX());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getPM10());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getAIR_IDX());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getAIR_IDX_MVL());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getAIR_IDX_MAIN());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getAIR_MSG());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getWEATHER_TIME());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getNEWS_LIST());// T_TITLE
			pstmt.setString(cnt++, weatherinsert.getFCST24HOURS());// T_TITLE
			// pstmt.setString(cnt++, weatherinsert.getR_DATETIME());// T_TITLE

			Date now = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:00:00");
			String formatedNow = formatter.format(now);

			pstmt.setString(cnt++, formatedNow);// T_CUR_DATE

			int result = pstmt.executeUpdate();
			pstmt.close();
			conn.commit();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public static int People_update(Connection conn, TourPeoplePassing peopleUpdate) {
	    try {
	        String sql = "UPDATE real_people SET "
	                + "AREA_NM = ?, "
	                + "AREA_CD = ?, "
	                + "LIVE_PPLTN_STTS = ?, "
	                + "AREA_CONGEST_LVL = ?, "
	                + "AREA_CONGEST_MSG = ?, "
	                + "AREA_PPLTN_MIN = ?, "
	                + "AREA_PPLTN_MAX = ?, "
	                + "ROAD_ADDR = ?, "
	                + "ADDRESS = ?, "
	                + "LAT = ?, "
	                + "LNG = ?, "
	                + "R_DATETIME = ? "
	                + "WHERE AREA_CD = ?";

	        PreparedStatement pstmt = conn.prepareStatement(sql);

	        int cnt = 1;

	        pstmt.setString(cnt++, peopleUpdate.getAREA_NM());// AREA_NM
	        pstmt.setString(cnt++, peopleUpdate.getAREA_CD());// AREA_CD
	        pstmt.setString(cnt++, peopleUpdate.getLIVE_PPLTN_STTS());// LIVE_PPLTN_STTS
	        pstmt.setString(cnt++, peopleUpdate.getAREA_CONGEST_LVL());// AREA_CONGEST_LVL
	        pstmt.setString(cnt++, peopleUpdate.getAREA_CONGEST_MSG());// AREA_CONGEST_MSG
	        pstmt.setString(cnt++, peopleUpdate.getAREA_PPLTN_MIN());// AREA_PPLTN_MIN
	        pstmt.setString(cnt++, peopleUpdate.getAREA_PPLTN_MAX());// AREA_PPLTN_MAX
	        pstmt.setString(cnt++, peopleUpdate.getROAD_ADDR());// ROAD_ADDR
	        pstmt.setString(cnt++, peopleUpdate.getADDRESS());// ADDRESS
	        pstmt.setString(cnt++, peopleUpdate.getLAT());// LAT
	        pstmt.setString(cnt++, peopleUpdate.getLNG());// LNG
	        Date now = new Date();
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:00:00");
	        String formatedNow = formatter.format(now);
	        pstmt.setString(cnt++, formatedNow);// R_DATETIME
	        pstmt.setString(cnt++, peopleUpdate.getAREA_CD());// R_PNO

	        int result = pstmt.executeUpdate();
	        pstmt.close();
	        conn.commit();
	        return result;
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return -1;
	}
	
	public static int Weather_update(Connection conn, TourWeatherPassing weatherUpdate) {
	    try {
	        String sql = "UPDATE real_weather SET "
	                + "WEATHER_STTS = ?, "
	                + "TEMP = ?, "
	                + "SENSIBLE_TEMP = ?, "
	                + "MAX_TEMP = ?, "
	                + "MIN_TEMP = ?, "
	                + "HUMIDITY = ?, "
	                + "WIND_DIRCT = ?, "
	                + "WIND_SPD = ?, "
	                + "PRECIPITATION = ?, "
	                + "PRECPT_TYPE = ?, "
	                + "PCP_MSG = ?, "
	                + "SUNRISE = ?, "
	                + "SUNSET = ?, "
	                + "UV_INDEX_LVL = ?, "
	                + "UV_INDEX = ?, "
	                + "UV_MSG = ?, "
	                + "PM25_INDEX = ?, "
	                + "PM25 = ?, "
	                + "PM10_INDEX = ?, "
	                + "PM10 = ?, "
	                + "AIR_IDX = ?, "
	                + "AIR_IDX_MVL = ?, "
	                + "AIR_IDX_MAIN = ?, "
	                + "AIR_MSG = ?, "
	                + "WEATHER_TIME = ?, "
	                + "NEWS_LIST = ?, "
	                + "FCST24HOURS = ?, "
	                + "R_DATETIME = ? "
	                + "WHERE R_WNO = 1";

	        PreparedStatement pstmt = conn.prepareStatement(sql);

	        int cnt = 1;

	        pstmt.setString(cnt++, weatherUpdate.getWEATHER_STTS());
	        pstmt.setString(cnt++, weatherUpdate.getTEMP());
	        pstmt.setString(cnt++, weatherUpdate.getSENSIBLE_TEMP());
	        pstmt.setString(cnt++, weatherUpdate.getMAX_TEMP());
	        pstmt.setString(cnt++, weatherUpdate.getMIN_TEMP());
	        pstmt.setString(cnt++, weatherUpdate.getHUMIDITY());
	        pstmt.setString(cnt++, weatherUpdate.getWIND_DIRCT());
	        pstmt.setString(cnt++, weatherUpdate.getWIND_SPD());
	        pstmt.setString(cnt++, weatherUpdate.getPRECIPITATION());
	        pstmt.setString(cnt++, weatherUpdate.getPRECPT_TYPE());
	        pstmt.setString(cnt++, weatherUpdate.getPCP_MSG());
	        pstmt.setString(cnt++, weatherUpdate.getSUNRISE());
	        pstmt.setString(cnt++, weatherUpdate.getSUNSET());
	        pstmt.setString(cnt++, weatherUpdate.getUV_INDEX_LVL());
	        pstmt.setString(cnt++, weatherUpdate.getUV_INDEX());
	        pstmt.setString(cnt++, weatherUpdate.getUV_MSG());
	        pstmt.setString(cnt++, weatherUpdate.getPM25_INDEX());
	        pstmt.setString(cnt++, weatherUpdate.getPM25());
	        pstmt.setString(cnt++, weatherUpdate.getPM10_INDEX());
	        pstmt.setString(cnt++, weatherUpdate.getPM10());
	        pstmt.setString(cnt++, weatherUpdate.getAIR_IDX());
	        pstmt.setString(cnt++, weatherUpdate.getAIR_IDX_MVL());
	        pstmt.setString(cnt++, weatherUpdate.getAIR_IDX_MAIN());
	        pstmt.setString(cnt++, weatherUpdate.getAIR_MSG());
	        pstmt.setString(cnt++, weatherUpdate.getWEATHER_TIME());
	        pstmt.setString(cnt++, weatherUpdate.getNEWS_LIST());
	        pstmt.setString(cnt++, weatherUpdate.getFCST24HOURS());

	        // Set the R_WNO for the WHERE clause
	        //pstmt.setInt(cnt++, weatherUpdate.getR_WNO());

	        int result = pstmt.executeUpdate();
	        pstmt.close();
	        conn.commit();
	        return result;
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return -1;
	}
	
}
