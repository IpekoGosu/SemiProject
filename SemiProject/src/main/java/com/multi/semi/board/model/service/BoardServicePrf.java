package com.multi.semi.board.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.multi.semi.board.model.mapper.BoardMapperPrf;
import com.multi.semi.board.model.vo.AttachFilePrf;
import com.multi.semi.board.model.vo.AttachFilePrf;
import com.multi.semi.board.model.vo.BoardParamPrf;
import com.multi.semi.board.model.vo.BoardPrf;
import com.multi.semi.board.model.vo.BoardReplyPrf;
import com.multi.semi.board.model.vo.BoardPrf;

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
	public BoardPrf getBoardFirst() {
		return mapper.selectBoardFirstPrf();
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
	public int saveBoard(BoardPrf board) throws Exception {
		
		int result = 0;
		if(board.getBno() == 0) { // insert
			result = mapper.insertBoardPrf(board);
			mapper.updatePrfRate(board.getPid()); // 평점 update
			if(result <= 0) {
				throw new Exception("Board insert error!");
			}
		} else { // update
			result = mapper.updateBoardPrf(board);
			mapper.updatePrfRate(board.getPid());
			if(result <= 0) {
				throw new Exception("Board update error!");
			}
		}
		
		if(board.getAttachFiles() != null) {
			for(AttachFilePrf file : board.getAttachFiles()) {
				file.setBno(board.getBno());
				result = mapper.insertAttachFilePrf(file);
				if(result <= 0) {
					throw new Exception("AttachFile insert error!");
				}
			}
			result = mapper.updateAttachFileCounterPrf(board.getBno());
			if(result <= 0) {
				throw new Exception("AttachFile update error!");
			}
		}
		
		return result;
	}

	public AttachFilePrf findAttachFile(int fno) {
		return mapper.selectAttachFileByFnoPrf(fno);
	}

	@Transactional(rollbackFor = Exception.class)
	public int deleteBoard(int bno, String savePath) throws Exception {
		BoardPrf board = this.findBoardByBNo(bno);
		int result = 0;
		
		if(board.getAttachFiles() != null) {
			for(AttachFilePrf file : board.getAttachFiles()) {
				deleteFile(savePath, file);
				result = mapper.deleteAttachFilePrf(file.getFno());
				if(result <= 0) {
					throw new Exception("file delete error!");
				}
			}
		}
		int delresult = mapper.deleteBoardPrf(bno);
		mapper.updatePrfRate(board.getPid());
		return delresult;
	}

	public void deleteFile(String savePath, AttachFilePrf arrachFile) {
		File file = new File(savePath +"/" + arrachFile.getRenamedFilename());
		if(file.exists()) {
			file.delete();
		}
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteAttachFile(AttachFilePrf arrachFile) {
		return mapper.deleteAttachFilePrf(arrachFile.getFno());
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






