package com.multi.semi.board.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AttachFilePrf {
	private int fno;
	private int bno;
	private String originalFilename;
	private String renamedFilename;
	private Date createDate;
}
