package com.multi.semi.board.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.multi.semi.board.model.mapper.BoardMapperTour;
import com.multi.semi.board.model.vo.AttachFileTour;
import com.multi.semi.board.model.vo.BoardParamTour;
import com.multi.semi.board.model.vo.BoardReplyTour;
import com.multi.semi.board.model.vo.BoardTour;

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
	
	
	private static int count = 0; // 파일 식별을 위한 count 값
	public String saveFile(MultipartFile upfile, String savePath) {
		File folder = new File(savePath);
		
		// 폴더가 존재하지 않을때 해당 경로를 만드는 코드
		if(folder.exists() == false) {
			folder.mkdirs();
		}
		System.out.println(savePath);
		
		// 파일 이름을 날짜시간 + count를 더해서 만드는 코드, test.jpg -> 20240112_1044232_1.jpg
		String originalFilename = upfile.getOriginalFilename();
		String renamedFilename = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_hhmmssSSS"));
		renamedFilename += "_" + (count++);
		renamedFilename += originalFilename.substring(originalFilename.lastIndexOf(".")); // .jpg
		String renamedSavePath = savePath + "/" + renamedFilename;
		
		try {
			// 실제 파일을 디스크에 쓰는 로직
			upfile.transferTo(new File(renamedSavePath));
		} catch (Exception e) {
			return null;
		}
		return renamedFilename;
	}

	@Transactional(rollbackFor = Exception.class)
	public int saveBoard(BoardTour board) throws Exception {
		
		int result = 0;
		if(board.getBno() == 0) { // insert
			result = mapper.insertBoardTour(board);
			if(result <= 0) {
				throw new Exception("Board insert error!");
			}
		} else { // update
			result = mapper.updateBoardTour(board);
			if(result <= 0) {
				throw new Exception("Board update error!");
			}
		}
		
		if(board.getAttachFiles() != null) {
			for(AttachFileTour file : board.getAttachFiles()) {
				file.setBno(board.getBno());
				result = mapper.insertAttachFileTour(file);
				if(result <= 0) {
					throw new Exception("AttachFile insert error!");
				}
			}
			result = mapper.updateAttachFileCounterTour(board.getBno());
			if(result <= 0) {
				throw new Exception("AttachFile update error!");
			}
		}
		
		return result;
	}

	public AttachFileTour findAttachFile(int fno) {
		return mapper.selectAttachFileByFnoTour(fno);
	}

	@Transactional(rollbackFor = Exception.class)
	public int deleteBoard(int bno, String savePath) throws Exception {
		BoardTour board = this.findBoardByBNo(bno);
		int result = 0;
		
		if(board.getAttachFiles() != null) {
			for(AttachFileTour file : board.getAttachFiles()) {
				deleteFile(savePath, file);
				result = mapper.deleteAttachFileTour(file.getFno());
				if(result <= 0) {
					throw new Exception("file delete error!");
				}
			}
		}
		return mapper.deleteBoardTour(bno);
	}

	public void deleteFile(String savePath, AttachFileTour arrachFile) {
		File file = new File(savePath +"/" + arrachFile.getRenamedFilename());
		if(file.exists()) {
			file.delete();
		}
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteAttachFile(AttachFileTour arrachFile) {
		return mapper.deleteAttachFileTour(arrachFile.getFno());
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






