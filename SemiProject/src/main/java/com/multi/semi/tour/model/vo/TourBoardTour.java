package com.multi.semi.tour.model.vo;

import java.util.Date;
import java.util.List;

import com.multi.semi.board.model.vo.AttachFileTour;
import com.multi.semi.board.model.vo.BoardReplyTour;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TourBoardTour {
	private int bno;
	private int mno;
	private String tname;
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
	private List<BoardReplyTour> replies;
	private List<AttachFileTour> attachFiles;
}
