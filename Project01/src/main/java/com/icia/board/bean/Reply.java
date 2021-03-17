package com.icia.board.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.experimental.Accessors;

@Accessors (chain = true)
@Alias("reply")
@Data
public class Reply {
	private int r_num;
	private int r_bnum;
	private String r_contents;
	private String r_id;
	private String r_date;

}
