package com.multi.semi.board.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardPrf {
	private int bno;
	private int mno;
	private String pname;
	private int ratings;
	private String title;
	private String content;
	private String memberId;
	private String memberName;
	private int attachCount;
	private int readCount;
	private int replyCount;
	private String status;
	private Date createDate;
	private Date modifyDate;
	private List<BoardReplyPrf> replies;
	private List<AttachFilePrf> attachFiles;
}
