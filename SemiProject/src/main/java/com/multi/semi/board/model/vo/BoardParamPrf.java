package com.multi.semi.board.model.vo;

// BoardParam : 검색창 파라메터 받아오는 객체
// 설계 요령 
// 1. form의 name과 종류와 일치해서 파라메터 설계 필요
// 2. types의 경우 마이바티스 호환성을 위해 typeList 설계 추가 필요
// 3. 페이징 처리를 위해 page, limit, offset을 따로 설계 필요

public class BoardParamPrf {
	// html - form의 name과 일치하는 파라메터
	private String searchType;
	private String orderType;
	private String searchValue;

	// 페이징 인자
	private int page;
	private int limit;
	private int offset;

	public BoardParamPrf() {
		super();
		page = 1;
		orderType = "time";
	}

	public BoardParamPrf(String searchType, String searchValue, int page, int limit, int offset, String orderType) {
		super();
		this.searchType = searchType;
		this.searchValue = searchValue;
		this.page = page;
		this.limit = limit;
		this.offset = offset;
		this.orderType = orderType;
	}

	@Override
	public String toString() {
		return "BoardParamPrf [searchType=" + searchType + ", orderType=" + orderType + ", searchValue=" + searchValue + ", page=" + page
				+ ", limit=" + limit + ", offset=" + offset + "]";
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

}
