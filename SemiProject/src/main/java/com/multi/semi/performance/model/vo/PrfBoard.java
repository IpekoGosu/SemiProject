package com.multi.semi.performance.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PrfBoard {
	private String poster;
	private int bno;
	private int mno;
	private String pid;
	private String pname;
	private String title;
	private String content;
	private int ratings;
}
