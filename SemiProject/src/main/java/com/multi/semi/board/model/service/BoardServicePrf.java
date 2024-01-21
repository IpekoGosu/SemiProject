package com.multi.semi.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.semi.board.model.mapper.BoardMapperPrf;
import com.multi.semi.board.model.vo.AttachFilePrf;
import com.multi.semi.board.model.vo.BoardParamPrf;
import com.multi.semi.board.model.vo.BoardPrf;
import com.multi.semi.board.model.vo.BoardReplyPrf;

@Service
public class BoardServicePrf {
	@Autowired
	private BoardMapperPrf mapper;
	
	public int getBoardCount(BoardParamPrf param) {
		return mapper.selectBoardCountPrf(param);
	}
	public List<BoardPrf> getBoardList(BoardParamPrf param) {
		return mapper.selectBoardListPrf(param);
	}
	@Transactional(rollbackFor = Exception.class)
	public BoardPrf findBoardByBNo (int bno) {
		BoardPrf board = mapper.selectBoardByNoPrf(bno);
		List<BoardReplyPrf> rList = mapper.selectReplyByBnoPrf(bno);
		board.setReplies(rList);
		List<AttachFilePrf> fList = mapper.selectAttachFileByBnoPrf(bno);
		board.setAttachFiles(fList);
		board.setReadCount(board.getReadCount() + 1);
		mapper.updateReadCountPrf(board);
		
		return board;
	}
	
	
	
	
	
	
	
	
	@Transactional(rollbackFor = Exception.class)
	public int saveBoardReply(BoardReplyPrf reply) {
		int result = mapper.insertReplyPrf(reply);
		mapper.updateReplyCountPrf(reply.getBno());
		return result;
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteBoardReply(int rno, int bno) {
		int result = mapper.deleteReplyPrf(rno);
		mapper.updateReplyCountPrf(bno);
		return result;
	}
	
}






