package com.multi.semi.board.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.semi.board.model.vo.AttachFilePrf;
import com.multi.semi.board.model.vo.BoardParamPrf;
import com.multi.semi.board.model.vo.BoardPrf;
import com.multi.semi.board.model.vo.BoardReplyPrf;

@Mapper
public interface BoardMapperPrf {
	List<BoardPrf> selectBoardListPrf(BoardParamPrf param);
	int selectBoardCountPrf(BoardParamPrf param);
	BoardPrf selectBoardByNoPrf(int bno);
	int insertBoardPrf(BoardPrf board);
	int updateBoardPrf(BoardPrf board);
	int updateReadCountPrf(BoardPrf board);
	int updateReplyCountPrf(int bno);
	int deleteBoardPrf(int bno);
	AttachFilePrf selectAttachFileByFnoPrf(int fno);
	List<AttachFilePrf> selectAttachFileByBnoPrf(int bno);
	int insertAttachFilePrf(AttachFilePrf file);
	int updateAttachFileCounterPrf(int bno);
	int deleteAttachFilePrf(int fno);
	int insertReplyPrf(BoardReplyPrf reply);
	List<BoardReplyPrf> selectReplyByBnoPrf(int bno);
	int deleteReplyPrf(int rno);
}
