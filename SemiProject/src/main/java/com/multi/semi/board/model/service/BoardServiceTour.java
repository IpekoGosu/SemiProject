package com.multi.semi.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.semi.board.model.mapper.BoardMapperTour;
import com.multi.semi.board.model.vo.AttachFileTour;
import com.multi.semi.board.model.vo.BoardParamTour;
import com.multi.semi.board.model.vo.BoardTour;
import com.multi.semi.board.model.vo.BoardReplyTour;

@Service
public class BoardServiceTour {
	@Autowired
	private BoardMapperTour mapper;
	
	public int getBoardCount(BoardParamTour param) {
		return mapper.selectBoardCountTour(param);
	}
	public List<BoardTour> getBoardList(BoardParamTour param) {
		return mapper.selectBoardListTour(param);
	}
	public BoardTour getBoardFirst() {
		return mapper.selectBoardFirstTour();
	}
	@Transactional(rollbackFor = Exception.class)
	public BoardTour findBoardByBNo (int bno) {
		BoardTour board = mapper.selectBoardByNoTour(bno);
		List<BoardReplyTour> rList = mapper.selectReplyByBnoTour(bno);
		board.setReplies(rList);
		List<AttachFileTour> fList = mapper.selectAttachFileByBnoTour(bno);
		board.setAttachFiles(fList);
		board.setReadCount(board.getReadCount() + 1);
		mapper.updateReadCountTour(board);
		
		return board;
	}
	
	
	
	
	
	
	
	
	@Transactional(rollbackFor = Exception.class)
	public int saveBoardReply(BoardReplyTour reply) {
		int result = mapper.insertReplyTour(reply);
		mapper.updateReplyCountTour(reply.getBno());
		return result;
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteBoardReply(int rno, int bno) {
		int result = mapper.deleteReplyTour(rno);
		mapper.updateReplyCountTour(bno);
		return result;
	}
	
}






