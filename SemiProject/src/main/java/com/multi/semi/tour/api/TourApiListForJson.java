package com.multi.semi.tour.api;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.multi.semi.tour.model.vo.Tour;
import com.multi.semi.tour.model.vo.TourImage;
import com.multi.semi.tour.model.vo.TourImageParssing;
import com.multi.semi.tour.model.vo.TourParssing;

public class TourApiListForJson {
	public static final String KEY = "be34f20d99e875855b6997ecb0c02f27";
	public static final String ENCODING_KEY = "Br52Zw1H5mGo4QX0wQ1d2hl33NRHWoqMe%2BAryuoGunUR8XVZk0A55Rh0tal7jc3AzF53BZ1Rwxnx79azj%2FNnZg%3D%3D";
	public static final String ENCODING_KEY2 = "XeUTBkZ1wGYpw0LBYCbUYacaxu73I9uZsLHbn9DdmxOTCvObrFOhi3ZjtB6I24QBXMGA79E7zK6B0MuW8w9uzg%3D%3D";
	public static final String ENCODING_KEY3 = "z%2BuP%2FRKhfop3G7FVK%2B0up3ruKeEIoalsmGH2oHKf2vYuuKdpSmMwucxsQEHECKmF1HzRwpUDj2FdOUhVoEVScg%3D%3D";
	public static final String DECODING_KEY = "Br52Zw1H5mGo4QX0wQ1d2hl33NRHWoqMe+AryuoGunUR8XVZk0A55Rh0tal7jc3AzF53BZ1Rwxnx79azj/NnZg==";
	public static final String WEEKLY_BOXOFFICE_JSON_URL = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json";
	// 지역기반검색
	public static final String AreaBaseList_JSON_URL = "https://apis.data.go.kr/B551011/KorService1/areaBasedList1";
	public static final String detailCommonList_JSON_URL = "https://apis.data.go.kr/B551011/KorService1/detailCommon1";
	public static final String detailImage1List_JSON_URL = "http://apis.data.go.kr/B551011/KorService1/detailImage1";
	public static final String detailIntro1List_JSON_URL = "https://apis.data.go.kr/B551011/KorService1/detailIntro1";

	public static final String img_path = "./resource/tour/img/";
	// 인증키
	// 서울 지역코드 1
	public static final String local_Code = "1";// 서울 지역 코드
	public static final String tour_keyword = "12";// 관광지 12
	public static final String cur_keyword = "14";// 문화시설 14
	
	public static void main(String[] args) {
		//DB연결용 커넥트
		Connection conn = openConnection();

		//투어 데이터 파싱
		//parse(tour_keyword,0,conn);
		//문화행사 데이터 파싱
		//parse(cur_keyword,0,conn);
		//투어 이미지 데이터 파싱
		//parse_image_list(tour_keyword, 0, conn);
		//문화행사 이미지 데이터 파싱
		//parse_image_list(cur_keyword, 0, conn);
	}

	public static List<Tour> parse(String code, int count, Connection sql_conn) {
		List<Tour> list = new ArrayList<>();
		try {
			StringBuilder urlBuilder = new StringBuilder(AreaBaseList_JSON_URL);
			urlBuilder.append("?" + "serviceKey=" + ENCODING_KEY);
			urlBuilder.append("&" + "numOfRows=" + "1000");
			urlBuilder.append("&" + "pageNo=" + count);
			urlBuilder.append("&" + "MobileOS=" + "ETC");
			urlBuilder.append("&" + "MobileApp=" + "MySeoul");
			urlBuilder.append("&" + "_type=" + "json");
			urlBuilder.append("&" + "listYN=" + "Y");
			urlBuilder.append("&" + "arrange=" + "A");// 제목순정렬
			urlBuilder.append("&" + "contentTypeId=" + code);// 관광지
			urlBuilder.append("&" + "areaCode=" + local_Code);
			System.out.println(urlBuilder.toString());

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");

			int code1 = conn.getResponseCode(); // 실제 page를 요청하는 코드부
			System.out.println("ResponseCode : " + code1);
			if (code1 < 200 || code1 >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return list;
			}

			InputStreamReader isr = new InputStreamReader(conn.getInputStream(), "UTF-8");
			BufferedReader br = new BufferedReader(isr);

			JSONParser jsonParser = new JSONParser();

			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			JSONObject childObj = (JSONObject) rootObj.get("response");
			JSONObject childObj1 = (JSONObject) childObj.get("body");
			JSONObject childObj2 = (JSONObject) childObj1.get("items");
			JSONArray array = (JSONArray) childObj2.get("item");

			for (int i = 0; i < array.size(); i++) {
				System.out.println("데이터를 담는중" + i);
				if (i < 605)
					continue;
				// if(i!=598)continue;
				// 78넣어야됨
				// 605까지 넣었다.
				JSONObject obj = (JSONObject) array.get(i);
				String contentid = getStrData(obj, "contentid");// 최초한번 컨텐츠 아이디 가져오기
				// 공통정보조회 START
				StringBuilder urlBuilder2 = new StringBuilder(detailCommonList_JSON_URL);
				urlBuilder2.append("?" + "serviceKey=" + ENCODING_KEY3);
				urlBuilder2.append("&" + "MobileOS=" + "ETC");
				urlBuilder2.append("&" + "MobileApp=" + "MySeoul");
				urlBuilder2.append("&" + "_type=" + "json");
				urlBuilder2.append("&" + "contentId=" + contentid);
				urlBuilder2.append("&" + "contentTypeId=" + code);
				urlBuilder2.append("&" + "defaultYN=" + "Y");
				urlBuilder2.append("&" + "firstImageYN=" + "Y");
				urlBuilder2.append("&" + "areacodeYN=" + "Y");
				urlBuilder2.append("&" + "catcodeYN=" + "Y");
				urlBuilder2.append("&" + "addrinfoYN=" + "Y");
				urlBuilder2.append("&" + "mapinfoYN=" + "Y");
				urlBuilder2.append("&" + "overviewYN=" + "Y");
				urlBuilder2.append("&" + "numOfRows=" + "10");
				urlBuilder2.append("&" + "pageNo=" + "1");
				System.out.println(urlBuilder2.toString());

				URL url2 = new URL(urlBuilder2.toString());
				//
				HttpURLConnection conn2 = (HttpURLConnection) url2.openConnection();
				conn2.setRequestMethod("GET");
				conn2.setRequestProperty("Content-type", "application/json");

				int code2 = conn2.getResponseCode(); // 실제 page를 요청하는 코드부
				// System.out.println("ResponseCode : " + code2);
				if (code2 < 200 || code2 >= 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return list;
				}

				InputStreamReader isr2 = new InputStreamReader(conn2.getInputStream(), "UTF-8");
				BufferedReader br2 = new BufferedReader(isr2);

				JSONParser jsonParser2 = new JSONParser();
				JSONObject rootObj_2 = (JSONObject) jsonParser2.parse(br2);

				// System.out.println(br2.readLine());

				JSONObject childObj_2 = (JSONObject) rootObj_2.get("response");
				JSONObject childObj1_2 = (JSONObject) childObj_2.get("body");
				JSONObject childObj2_2 = (JSONObject) childObj1_2.get("items");
				JSONArray array_2 = (JSONArray) childObj2_2.get("item");
				// System.out.println(array_2.toJSONString());
				// String contentid;
				JSONObject obj2 = (JSONObject) array_2.get(0);

				// 소개API파싱 START
				StringBuilder urlBuilder3 = new StringBuilder(detailIntro1List_JSON_URL);
				urlBuilder3.append("?" + "serviceKey=" + ENCODING_KEY3);
				urlBuilder3.append("&" + "MobileOS=" + "ETC");
				urlBuilder3.append("&" + "MobileApp=" + "MySeoul");
				urlBuilder3.append("&" + "_type=" + "json");
				urlBuilder3.append("&" + "contentId=" + contentid);
				urlBuilder3.append("&" + "contentTypeId=" + code);
				urlBuilder3.append("&" + "numOfRows=" + "10");
				urlBuilder3.append("&" + "pageNo=" + "1");
				System.out.println(urlBuilder3.toString());

				URL url3 = new URL(urlBuilder3.toString());
				//
				HttpURLConnection conn3 = (HttpURLConnection) url3.openConnection();
				conn3.setRequestMethod("GET");
				conn3.setRequestProperty("Content-type", "application/json");

				int code3 = conn3.getResponseCode(); // 실제 page를 요청하는 코드부
				// System.out.println("ResponseCode : " + code3);
				if (code3 < 200 || code3 >= 300) {
					// System.out.println("페이지가 잘못되었습니다.");
					return list;
				}

				InputStreamReader isr3 = new InputStreamReader(conn3.getInputStream(), "UTF-8");
				BufferedReader br3 = new BufferedReader(isr3);

				// System.out.println(br3.readLine());

				JSONParser jsonParser3 = new JSONParser();
				JSONObject rootObj_3 = (JSONObject) jsonParser3.parse(br3);
				JSONObject childObj_3 = (JSONObject) rootObj_3.get("response");
				JSONObject childObj1_3 = (JSONObject) childObj_3.get("body");
				JSONObject childObj2_3 = (JSONObject) childObj1_3.get("items");
				JSONArray array_3 = (JSONArray) childObj2_3.get("item");
				// System.out.println(array_3.toJSONString());

				JSONObject obj3 = (JSONObject) array_3.get(0);
				// 소개API파싱 END

				int T_CONTENT_ID = Integer.parseInt(contentid);
				int T_CONTENTTYPE_ID = Integer.parseInt(code);
				String T_TITEL = getStrData(obj2, "title");
				String T_CREATE_DATE = getStrDateData(obj2, "createdtime");
				String T_MODI_DATE = getStrDateData(obj2, "modifiedtime");
				String T_ADDR = getStrData(obj2, "addr1");
				String T_DETAIL_ADDR = getStrData(obj2, "addr2");
				String T_IMAGE_MAIN = getStrData(obj2, "firstimage");
				String T_IMAGE_TH = getStrData(obj2, "firstimage2");
				String T_IMAGE_MAIN_SRC = img_path + T_CONTENT_ID + "/" + UrlFileName(T_IMAGE_MAIN);// 다운로드 경로
				String T_IMAGE_TH_SRC = img_path + T_CONTENT_ID + "/" + UrlFileName(T_IMAGE_TH);// 다운로드 경로
				String T_MAP_X = getStrData(obj2, "mapx");
				String T_MAP_Y = getStrData(obj2, "mapy");
				String T_AREACODE = getStrData(obj2, "areacode");
				String T_MAINCATE = getStrData(obj2, "cat1");
				String T_MIDCATE = getStrData(obj2, "cat2");
				String T_SMALLCATE = getStrData(obj2, "cat3");
				int T_VIEWS = 0;// 최초 조회수0
				String T_CITYCODE = getStrData(obj2, "sigungucode");
				String T_TEL = getStrData(obj2, "tel");
				int T_ZIP = getIntData(obj2, "zipcode");
				String T_SUMMARY = getStrData(obj2, "overview");// 개요
				String T_HOMEPAGE_URL = getStrData(obj2, "homepage");// 홈페이지주소
				String T_CAPACITY = "";// 수용인원
				String T_BABVCARRYINFO = "";// 유모차대영정보
				String T_CREDITINFO = "";// 신용카드가능정보
				String T_PETINFO = "";// 애완동물동반가능정보
				String T_KIDSCAFE = "";// 어린이놀이방유무
				String T_EXRATE = "";// 체험가능연령
				String T_EXGUIDE = "";// 체험안내
				int T_HERITAGE1 = 0;// 세계문화유산유무
				int T_HERITAGE2 = 0;// 세계자연유산유무
				int T_HERITAGE3 = 0;// 세계기록유산유무
				String T_INFOCENTER = "";// 문의및안내
				String T_SCALE = "";// 규모
				String T_PARKING_INFO = "";// 주차시설
				String T_PARKING_COST = "";// 주차요금
				String T_RESTDATE = "";// 쉬는날
				String T_USETIME = "";// 이용시간
				String T_USESEASON = "";// 이용시즌
				String T_CUR_COST = "";// 이용요금
				String T_USE_COST = "";// 입장료
				Double T_REVIEW_RATE = 5.0;// 평점
				String T_INFOTITLE = "";// 반복정보제목
				String T_INFOTEXT = "";// 반복정보내용
				String T_CUR_DATE = "";// 현재시간

				if (code == "12")// 관광지
				{
					T_CAPACITY = getStrData(obj3, "accomcount");// 수용인원
					T_BABVCARRYINFO = getStrData(obj3, "chkbabycarriage");// 유모차대영정보
					T_CREDITINFO = getStrData(obj3, "chkcreditcard");// 신용카드가능정보
					T_PETINFO = getStrData(obj3, "chkpet");// 애완동물동반가능정보
					T_KIDSCAFE = getStrData(obj3, "kidsfacility");// 어린이놀이방유무
					T_EXRATE = getStrData(obj3, "expagerange");// 체험가능연령
					T_EXGUIDE = getStrData(obj3, "expguide");// 체험안내
					T_HERITAGE1 = getIntData(obj3, "heritage1");// 세계문화유산유무
					T_HERITAGE2 = getIntData(obj3, "heritage2");// 세계자연유산유무
					T_HERITAGE3 = getIntData(obj3, "heritage3");// 세계기록유산유무
					T_INFOCENTER = getStrData(obj3, "infocenter");// 문의및안내
					T_SCALE = "";
					T_PARKING_INFO = getStrData(obj3, "parking");// 주차시설
					T_PARKING_COST = "";// 주차요금
					T_RESTDATE = getStrData(obj3, "restdate");// 쉬는날
					T_USETIME = getStrData(obj3, "usetime");// 이용시간
					T_USESEASON = getStrData(obj3, "useseason");// 이용시즌
					T_CUR_COST = "";// 이용요금
					T_USE_COST = "";// 입장료
					T_REVIEW_RATE = 5.0;// 평점
					T_INFOTITLE = "";// 반복정보제목
					T_INFOTEXT = "";// 반복정보내용
					T_CUR_DATE = "";// 현재시간
				} else if (code == "14")// 문화
				{
					T_CAPACITY = getStrData(obj3, "accomcountculture");// 수용인원
					T_BABVCARRYINFO = getStrData(obj3, "chkbabycarriageculture");// 유모차대영정보
					T_CREDITINFO = getStrData(obj3, "chkcreditcardculture");// 신용카드가능정보
					T_PETINFO = getStrData(obj3, "chkpetculture");// 애완동물동반가능정보
					T_KIDSCAFE = getStrData(obj3, "kidsfacility");// 어린이놀이방유무
					T_EXRATE = getStrData(obj3, "expagerange");// 체험가능연령
					T_EXGUIDE = getStrData(obj3, "expguide");// 체험안내
					T_HERITAGE1 = getIntData(obj3, "heritage1");// 세계문화유산유무
					T_HERITAGE2 = getIntData(obj3, "heritage2");// 세계자연유산유무
					T_HERITAGE3 = getIntData(obj3, "heritage3");// 세계기록유산유무
					T_INFOCENTER = getStrData(obj3, "infocenterculture");// 문의및안내
					T_SCALE = getStrData(obj3, "scale");// 규모
					T_PARKING_INFO = getStrData(obj3, "parkingculture");// 주차시설
					T_PARKING_COST = getStrData(obj3, "parkingfee");// 주차요금
					T_RESTDATE = getStrData(obj3, "restdateculture");// 쉬는날
					T_USETIME = getStrData(obj3, "usetimeculture");// 이용시간
					T_USESEASON = getStrData(obj3, "useseason");// 이용시즌
					T_CUR_COST = getStrData(obj3, "usefee");// 이용요금
					T_USE_COST = getStrData(obj3, "usefee");
					T_REVIEW_RATE = 5.0;// 평점
					T_INFOTITLE = "";// 반복정보제목
					T_INFOTEXT = "";// 반복정보내용
					T_CUR_DATE = "";// 현재시간
				} else {
					System.out.println("파싱에러 conid =" + contentid);
					break;
				}

				TourParssing local = new TourParssing(T_CONTENT_ID, T_CONTENTTYPE_ID, T_TITEL, T_CREATE_DATE, T_MODI_DATE, T_ADDR,
						T_DETAIL_ADDR, T_IMAGE_MAIN, T_IMAGE_TH, T_IMAGE_MAIN_SRC, T_IMAGE_TH_SRC, T_MAP_X, T_MAP_Y,
						T_AREACODE, T_MAINCATE, T_MIDCATE, T_SMALLCATE, T_VIEWS, T_CITYCODE, T_TEL, T_ZIP, T_SUMMARY,
						T_HOMEPAGE_URL, T_CAPACITY, T_BABVCARRYINFO, T_CREDITINFO, T_PETINFO, T_KIDSCAFE, T_EXRATE,
						T_EXGUIDE, T_HERITAGE1, T_HERITAGE2, T_HERITAGE3, T_INFOCENTER, T_SCALE, T_PARKING_INFO,
						T_PARKING_COST, T_RESTDATE, T_USETIME, T_USESEASON, T_CUR_COST, T_USE_COST, T_REVIEW_RATE,
						T_INFOTITLE, T_INFOTEXT, T_CUR_DATE);

				int result = Tour_insert(sql_conn, local);
				// 공통정보조회 END
				// list.add(local);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public static List<TourImage> parse_image_list(String code, int count, Connection sql_conn) {
		List<TourImage> list = new ArrayList<>();
		try {
			StringBuilder urlBuilder = new StringBuilder(AreaBaseList_JSON_URL);
			urlBuilder.append("?" + "serviceKey=" + ENCODING_KEY);
			urlBuilder.append("&" + "numOfRows=" + "1000");
			urlBuilder.append("&" + "pageNo=" + "1");
			urlBuilder.append("&" + "MobileOS=" + "ETC");
			urlBuilder.append("&" + "MobileApp=" + "MySeoul");
			urlBuilder.append("&" + "_type=" + "json");
			urlBuilder.append("&" + "listYN=" + "Y");
			urlBuilder.append("&" + "arrange=" + "A");// 제목순정렬
			urlBuilder.append("&" + "contentTypeId=" + code);// 관광지
			urlBuilder.append("&" + "areaCode=" + local_Code);
			System.out.println(urlBuilder.toString());

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");

			int code1 = conn.getResponseCode(); // 실제 page를 요청하는 코드부
			System.out.println("ResponseCode : " + code1);
			if (code1 < 200 || code1 >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return list;
			}

			InputStreamReader isr = new InputStreamReader(conn.getInputStream(), "UTF-8");
			BufferedReader br = new BufferedReader(isr);

			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			JSONObject childObj = (JSONObject) rootObj.get("response");
			JSONObject childObj1 = (JSONObject) childObj.get("body");
			JSONObject childObj2 = (JSONObject) childObj1.get("items");
			JSONArray array = (JSONArray) childObj2.get("item");

			for (int i = 31; i < array.size(); i++) {
				System.out.println("이미지 파일 순서 : " + i);
				//332까지 받았음
				
				JSONObject obj = (JSONObject) array.get(i);
				String contentid = getStrData(obj, "contentid");// 최초한번 컨텐츠 아이디 가져오기

				// 이미지 상세조회 START
				StringBuilder urlBuilder3 = new StringBuilder(detailImage1List_JSON_URL);
				urlBuilder3.append("?" + "serviceKey=" + ENCODING_KEY3);
				urlBuilder3.append("&" + "MobileOS=" + "ETC");
				urlBuilder3.append("&" + "MobileApp=" + "MySeoul");
				urlBuilder3.append("&" + "_type=" + "json");
				urlBuilder3.append("&" + "contentId=" + contentid);
				urlBuilder3.append("&" + "imageYN=" + "Y");
				urlBuilder3.append("&" + "subImageYN=" + "Y");
				urlBuilder3.append("&" + "numOfRows=" + "100");
				urlBuilder3.append("&" + "pageNo=" + "1");
				System.out.println(urlBuilder3.toString());
				System.out.println(contentid);
				URL url3 = new URL(urlBuilder3.toString());
				//
				HttpURLConnection conn3 = (HttpURLConnection) url3.openConnection();
				conn3.setRequestMethod("GET");
				conn3.setRequestProperty("Content-type", "application/json");

				int code3 = conn3.getResponseCode(); // 실제 page를 요청하는 코드부
				System.out.println("ResponseCode : " + code3);
				if (code3 < 200 || code3 >= 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return list;
				}

				InputStreamReader isr3 = new InputStreamReader(conn3.getInputStream(), "UTF-8");
				BufferedReader br3 = new BufferedReader(isr3);

				JSONParser jsonParser3 = new JSONParser();
				JSONObject rootObj_3 = (JSONObject) jsonParser3.parse(br3);
				System.out.println(rootObj_3.toJSONString());
				JSONObject childObj_3 = (JSONObject) rootObj_3.get("response");
				JSONObject childObj1_3 = (JSONObject) childObj_3.get("body");

				int totalCount = Integer.parseInt(childObj1_3.get("totalCount").toString());

				if (totalCount == 0) {
					System.out.println("파일0개임");
					continue;
				}

				JSONObject childObj2_3 = (JSONObject) childObj1_3.get("items");
				JSONArray array_3 = (JSONArray) childObj2_3.get("item");
				System.out.println(array_3.toJSONString());

//				File file = new File(img_path + contentid);
//				System.out.println(file.toString());
//				if (file.mkdir() == true) {
//					System.out.println("디렉토리가 생성되었습니다.");
//				} else {
//					System.out.println("디렉토리를 생성하지 못했습니다.");
//				}

				for (int j = 0; j < array_3.size(); j++) {
					JSONObject obj3 = (JSONObject) array_3.get(j);
					// String originimgurl = getStrData(obj3, "originimgurl");
					// String imgname = getStrData(obj3, "imgname");
					// String smallimageurl = getStrData(obj3, "smallimageurl");
					// String serialnum = getStrData(obj3, "serialnum");

					int T_I_NO = 0;
					int T_CONTENT_ID = Integer.parseInt(contentid);
					String T_IMAGE_URL = getStrData(obj3, "originimgurl");
					String T_IMAGE_TH_URL = getStrData(obj3, "smallimageurl");
					String T_IMAGE_SRC = img_path + T_CONTENT_ID + "/" + UrlFileName(T_IMAGE_URL);// 다운로드 경로
					String T_IMAGE_TH_SRC = img_path + T_CONTENT_ID + "/" + UrlFileName(T_IMAGE_TH_URL);// 다운로드 경로
					String T_DATE = "";

					TourImageParssing local = new TourImageParssing(T_I_NO, T_CONTENT_ID, T_IMAGE_SRC, T_IMAGE_TH_SRC, T_IMAGE_URL,
							T_IMAGE_TH_URL, T_DATE);

					// getImageUrl(T_IMAGE_URL, "./" + T_CONTENT_ID + "/" +
					// UrlFileName(T_IMAGE_URL));

					Tour_Image_insert(sql_conn, local);

					//list.add(local);
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// System.out.println(list.toString());

		return list;
	}

	public static List<TourImage> parse_image(String contentid, String code) {
		List<TourImage> list = new ArrayList<>();
		try {
			// 이미지 상세조회 START
			StringBuilder urlBuilder3 = new StringBuilder(detailImage1List_JSON_URL);
			urlBuilder3.append("?" + "serviceKey=" + ENCODING_KEY);
			urlBuilder3.append("&" + "MobileOS=" + "ETC");
			urlBuilder3.append("&" + "MobileApp=" + "MySeoul");
			urlBuilder3.append("&" + "_type=" + "json");
			urlBuilder3.append("&" + "contentId=" + contentid);
			urlBuilder3.append("&" + "imageYN=" + "Y");
			urlBuilder3.append("&" + "subImageYN=" + "Y");
			urlBuilder3.append("&" + "numOfRows=" + "100");
			urlBuilder3.append("&" + "pageNo=" + "1");
			System.out.println(urlBuilder3.toString());

			URL url3 = new URL(urlBuilder3.toString());
			//
			HttpURLConnection conn3 = (HttpURLConnection) url3.openConnection();
			conn3.setRequestMethod("GET");
			conn3.setRequestProperty("Content-type", "application/json");

			int code3 = conn3.getResponseCode(); // 실제 page를 요청하는 코드부
			System.out.println("ResponseCode : " + code3);
			if (code3 < 200 || code3 >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return list;
			}

			InputStreamReader isr3 = new InputStreamReader(conn3.getInputStream(), "UTF-8");
			BufferedReader br3 = new BufferedReader(isr3);

			JSONParser jsonParser3 = new JSONParser();
			JSONObject rootObj_3 = (JSONObject) jsonParser3.parse(br3);
			System.out.println(rootObj_3.toJSONString());
			JSONObject childObj_3 = (JSONObject) rootObj_3.get("response");
			JSONObject childObj1_3 = (JSONObject) childObj_3.get("body");

//			int totalCount = Integer.parseInt(childObj1_3.get("totalCount").toString());
//
//			if (totalCount == 0)
//				continue;

			JSONObject childObj2_3 = (JSONObject) childObj1_3.get("items");
			JSONArray array_3 = (JSONArray) childObj2_3.get("item");
			System.out.println(array_3.toJSONString());

//			File file = new File(img_path + contentid);
//			System.out.println(file.toString());
//			if (file.mkdir() == true) {
//				System.out.println("디렉토리가 생성되었습니다.");
//			} else {
//				System.out.println("디렉토리를 생성하지 못했습니다.");
//			}

			for (int j = 0; j < array_3.size(); j++) {
				JSONObject obj3 = (JSONObject) array_3.get(j);
				// String originimgurl = getStrData(obj3, "originimgurl");
				// String imgname = getStrData(obj3, "imgname");
				// String smallimageurl = getStrData(obj3, "smallimageurl");
				// String serialnum = getStrData(obj3, "serialnum");

				int T_I_NO = 0;

				int T_CONTENT_ID = Integer.parseInt(contentid);
				String T_IMAGE_URL = getStrData(obj3, "originimgurl");
				String T_IMAGE_TH_URL = getStrData(obj3, "smallimageurl");
				String T_IMAGE_SRC = img_path + T_CONTENT_ID + "/" + UrlFileName(T_IMAGE_URL);// 다운로드 경로
				String T_IMAGE_TH_SRC = img_path + T_CONTENT_ID + "/" + UrlFileName(T_IMAGE_TH_URL);// 다운로드 경로
				String T_DATE = "";

				TourImage local = new TourImage(T_I_NO, T_CONTENT_ID, T_IMAGE_SRC, T_IMAGE_TH_SRC, T_IMAGE_URL,
						T_IMAGE_TH_URL, T_DATE);

				// getImageUrl(T_IMAGE_URL, "./" + T_CONTENT_ID + "/" +
				// UrlFileName(T_IMAGE_URL));

				list.add(local);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// System.out.println(list.toString());

		return list;
	}

	private static String getStrData(JSONObject obj, String key) {
		String str = (String) obj.get(key);
		if (str == null) {
			return "-";
		} else {
			return str;
		}
	}

	private static String getStrDateData(JSONObject obj, String key) {
		String str = (String) obj.get(key);

		// String dateString = "20230721145239";

		// 문자열을 LocalDateTime으로 파싱
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		LocalDateTime dateTime = LocalDateTime.parse(str, formatter);

		// 원하는 형식으로 출력
		DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		str = dateTime.format(outputFormatter);

		// 결과 출력
		// System.out.println("변환된 날짜: " + str);

		if (str == null) {
			return "-";
		} else {
			return str;
		}
	}

	private static String UrlFileName(String str) {
		String fileName = "";
		try {
			// URL을 URI로 파싱
			URI uri = new URI(str);

			// URI에서 경로(path)를 가져오고 슬래시('/')로 나누어 배열로 저장
			String[] pathSegments = uri.getPath().split("/");

			// 배열에서 마지막 요소가 파일명
			fileName = pathSegments[pathSegments.length - 1];

		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return fileName;
	}

	// String url =
	// "http://tong.visitkorea.or.kr/cms/resource/33/2678633_image2_1.jpg";

	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	private static Date getDateData(JSONObject obj, String key) {
		String str = (String) obj.get(key);
		Date date = null;
		try {
			date = sdf.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	private static long getLongData(JSONObject obj, String key) {
		String str = (String) obj.get(key);
		if (str != null) {
			try {
				return Long.parseLong(str);
			} catch (Exception e) {
			}
		}
		return 0;
	}

	private static int getIntData(JSONObject obj, String key) {
		String str = (String) obj.get(key);
		if (str != null) {
			try {
				return Integer.parseInt(str);
			} catch (Exception e) {
			}
		}
		return 0;
	}

	private static double getDoubleData(JSONObject obj, String key) {
		String str = (String) obj.get(key);
		if (str != null) {
			try {
				return Double.parseDouble(str);
			} catch (Exception e) {
			}
		}
		return 0;
	}

	private static void getImageUrl(String imageUrl, String path_src) throws IOException {
		URL url = null;
		InputStream in = null;
		OutputStream out = null;

		try {
			url = new URL(imageUrl);
			in = url.openStream();

			// 컴퓨터 또는 서버의 저장할 경로(절대패스로 지정해 주세요.)
			out = new FileOutputStream(path_src);

			while (true) {
				// 루프를 돌면서 이미지데이터를 읽어들이게 됩니다.
				int data = in.read();

				// 데이터값이 -1이면 루프를 종료하고 나오게 됩니다.
				if (data == -1) {
					break;
				}

				// 읽어들인 이미지 데이터값을 컴퓨터 또는 서버공간에 저장하게 됩니다.
				out.write(data);
			}

			// 저장이 끝난후 사용한 객체는 클로즈를 해줍니다.
			in.close();
			out.close();

		} catch (Exception e) {
			// 예외처리
			e.printStackTrace();
		} finally {
			// 만일 에러가 발생해서 클로즈가 안됐을 가능성이 있기에
			// NULL값을 체크후 클로즈 처리를 합니다.
			if (in != null) {
				in.close();
			}
			if (out != null) {
				out.close();
			}
		}
	}

	public static int Tour_insert(Connection conn, TourParssing tourinsert) {
		try {

			String sql = "INSERT INTO TOUR  "
					+ "(T_CONTENT_ID,  T_CONTENTTYPE_ID,  T_TITLE,  T_CREATE_DATE,  T_MODI_DATE,"
					+ "  T_ADDR,  T_IMAGE_MAIN,  T_IMAGE_TH,  T_IMAGE_MAIN_SRC,  T_IMAGE_TH_SRC,"
					+ "  T_MAP_X,  T_MAP_Y,  T_DETAIL_ADDR,  T_AREACODE,  T_MAINCATE,"
					+ "  T_MIDCATE,  T_SMALLCATE,  T_VIEWS,  T_CITYCODE,  T_TEL,"
					+ "  T_ZIP,  T_SUMMARY,  T_HOMEPAGE_URL,  T_CAPACITY,  T_BABVCARRYINFO,"
					+ "  T_CREDITINFO,  T_PETINFO,  T_KIDSCAFE,  T_EXRATE,  T_EXGUIDE,"
					+ "  T_HERITAGE1,  T_HERITAGE2,  T_HERITAGE3,  T_INFOCENTER,  T_SCALE,"
					+ "  T_PARKING_INFO,  T_PARKING_COST,  T_RESTDATE,  T_USETIME,  T_USESEASON,"
					+ "  T_CUR_COST,  T_USE_COST,  T_REVIEW_RATE,  T_INFOTITLE,  T_INFOTEXT," + "  T_CUR_DATE)"
					+ "VALUES  (  " + "?,  ?,  ?,  ?,  ?," + "?,  ?,  ?,  ?,  ?," + "?,  ?,  ?,  ?,  ?,"
					+ "?,  ?,  ?,  ?,  ?," + "?,  ?,  ?,  ?,  ?," + "?,  ?,  ?,  ?,  ?," + "?,  ?,  ?,  ?,  ?,"
					+ "?,  ?,  ?,  ?,  ?," + "?,  ?,  ?,  ?,  ?," + "?)";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			pstmt.setInt(cnt++, tourinsert.getT_CONTENT_ID());// T_CONTENT_ID
			pstmt.setInt(cnt++, tourinsert.getT_CONTENTTYPE_ID());// T_CONTENTTYPE_ID
			pstmt.setString(cnt++, tourinsert.getT_TITEL());// T_TITLE
			pstmt.setString(cnt++, tourinsert.getT_CREATE_DATE());// T_CREATE_DATE
			pstmt.setString(cnt++, tourinsert.getT_MODI_DATE());// T_MODI_DATE
			pstmt.setString(cnt++, tourinsert.getT_ADDR());// T_ADDR
			pstmt.setString(cnt++, tourinsert.getT_IMAGE_MAIN());// T_IMAGE_MAIN
			pstmt.setString(cnt++, tourinsert.getT_IMAGE_TH());// T_IMAGE_TH
			pstmt.setString(cnt++, tourinsert.getT_IMAGE_MAIN_SRC());// T_IMAGE_MAIN_SRC
			pstmt.setString(cnt++, tourinsert.getT_IMAGE_TH_SRC());// T_IMAGE_TH_SRC
			pstmt.setString(cnt++, tourinsert.getT_MAP_X());// T_MAP_X
			pstmt.setString(cnt++, tourinsert.getT_MAP_Y());// T_MAP_Y
			pstmt.setString(cnt++, tourinsert.getT_DETAIL_ADDR());// T_DETAIL_ADDR
			pstmt.setString(cnt++, tourinsert.getT_AREACODE());// T_AREACODE
			pstmt.setString(cnt++, tourinsert.getT_MAINCATE());// T_MAINCATE
			pstmt.setString(cnt++, tourinsert.getT_MIDCATE());// T_MIDCATE
			pstmt.setString(cnt++, tourinsert.getT_SMALLCATE());// T_SMALLCATE
			pstmt.setInt(cnt++, tourinsert.getT_VIEWS());// T_VIEWS
			pstmt.setString(cnt++, tourinsert.getT_CITYCODE());// T_CITYCODE
			pstmt.setString(cnt++, tourinsert.getT_TEL());// T_TEL
			pstmt.setInt(cnt++, tourinsert.getT_ZIP());// T_ZIP
			pstmt.setString(cnt++, tourinsert.getT_SUMMARY());// T_SUMMARY
			pstmt.setString(cnt++, tourinsert.getT_HOMEPAGE_URL());// T_HOMEPAGE_URL
			pstmt.setString(cnt++, tourinsert.getT_CAPACITY());// T_CAPACITY
			pstmt.setString(cnt++, tourinsert.getT_BABVCARRYINFO());// T_BABVCARRYINFO
			pstmt.setString(cnt++, tourinsert.getT_CREDITINFO());// T_CREDITINFO
			pstmt.setString(cnt++, tourinsert.getT_PETINFO());// T_PETINFO
			pstmt.setString(cnt++, tourinsert.getT_KIDSCAFE());// T_KIDSCAFE
			pstmt.setString(cnt++, tourinsert.getT_EXRATE());// T_EXRATE
			pstmt.setString(cnt++, tourinsert.getT_EXGUIDE());// T_EXGUIDE
			pstmt.setInt(cnt++, tourinsert.getT_HERITAGE1());// T_HERITAGE1
			pstmt.setInt(cnt++, tourinsert.getT_HERITAGE2());// T_HERITAGE2
			pstmt.setInt(cnt++, tourinsert.getT_HERITAGE3());// T_HERITAGE3
			pstmt.setString(cnt++, tourinsert.getT_INFOCENTER());// T_INFOCENTER
			pstmt.setString(cnt++, tourinsert.getT_SCALE());// T_SCALE
			pstmt.setString(cnt++, tourinsert.getT_PARKING_INFO());// T_PARKING_INFO
			pstmt.setString(cnt++, tourinsert.getT_PARKING_COST());// T_PARKING_COST
			pstmt.setString(cnt++, tourinsert.getT_RESTDATE());// T_RESTDATE
			pstmt.setString(cnt++, tourinsert.getT_USETIME());// T_USETIME
			pstmt.setString(cnt++, tourinsert.getT_USESEASON());// T_USESEASON
			pstmt.setString(cnt++, tourinsert.getT_CUR_COST());// T_CUR_COST
			pstmt.setString(cnt++, tourinsert.getT_USE_COST());// T_USE_COST
			pstmt.setDouble(cnt++, tourinsert.getT_REVIEW_RATE());// T_REVIEW_RATE
			pstmt.setString(cnt++, tourinsert.getT_INFOTITLE());// T_INFOTITLE
			pstmt.setString(cnt++, tourinsert.getT_INFOTEXT());// T_INFOTEXT
			Date now = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
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

	public static int Tour_Image_insert(Connection conn, TourImageParssing Imageinsert) {
		try {

			String sql = "INSERT INTO tour_image  " + "(T_I_NO,  T_CONTENT_ID,  T_IMAGE_SRC,  T_IMAGE_TH_SRC,"
					+ " T_IMAGE_URL,  T_IMAGE_TH_URL,  T_DATE)  " + "VALUES  (  0,   ?,  ?,  ?," + "?,  ?,  now());";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			pstmt.setInt(cnt++, Imageinsert.getT_CONTENT_ID());// T_CONTENT_ID
			pstmt.setString(cnt++, Imageinsert.getT_IMAGE_SRC());// T_CONTENTTYPE_ID
			pstmt.setString(cnt++, Imageinsert.getT_IMAGE_TH_SRC());// T_TITLE
			pstmt.setString(cnt++, Imageinsert.getT_IMAGE_URL());// T_CREATE_DATE
			pstmt.setString(cnt++, Imageinsert.getT_IMAGE_TH_URL());// T_MODI_DATE

//			Date now = new Date();
//			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//			String formatedNow = formatter.format(now);
//
//			pstmt.setString(cnt++, formatedNow);// T_CUR_DATE

			int result = pstmt.executeUpdate();
			pstmt.close();
			conn.commit();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public static String getDateFormat(java.sql.Date date) {
		return sdf.format(date);
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
}