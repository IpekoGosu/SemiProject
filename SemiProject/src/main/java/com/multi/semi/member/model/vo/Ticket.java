package com.multi.semi.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Ticket {
	private int reserveno;
	private String pid;
	private String pname;
	private int mno;
	private int seatCount;
	private String seatType;
	private String showTime;
	private Date reserveTime;
}
