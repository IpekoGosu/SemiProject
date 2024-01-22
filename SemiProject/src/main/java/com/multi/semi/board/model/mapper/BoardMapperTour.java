package com.multi.semi.board.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.semi.board.model.vo.AttachFileTour;
import com.multi.semi.board.model.vo.BoardParamTour;
import com.multi.semi.board.model.vo.BoardTour;
import com.multi.semi.board.model.vo.BoardReplyTour;

@Mapper
public interface BoardMapperTour {
	List<BoardTour> selectBoardListTour(BoardParamTour param);
	BoardTour selectBoardFirstTour();
	int selectBoardCountTour(BoardParamTour param);
	BoardTour selectBoardByNoTour(int bno);
	int insertBoardTour(BoardTour board);
	int updateBoardTour(BoardTour board);
	int updateReadCountTour(BoardTour board);
	int updateReplyCountTour(int bno);
	int deleteBoardTour(int bno);
	AttachFileTour selectAttachFileByFnoTour(int fno);
	List<AttachFileTour> selectAttachFileByBnoTour(int bno);
	int insertAttachFileTour(AttachFileTour file);
	int updateAttachFileCounterTour(int bno);
	int deleteAttachFileTour(int fno);
	int insertReplyTour(BoardReplyTour reply);
	List<BoardReplyTour> selectReplyByBnoTour(int bno);
	int deleteReplyTour(int rno);
}
