package com.icia.board.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.experimental.Accessors;

@Accessors (chain = true)
@Alias("board")
@Data
public class Board {
	private int b_num;
	private String b_title;
	private String b_id;
	private String b_date;
	private String b_view;
	private String b_contents;

}
