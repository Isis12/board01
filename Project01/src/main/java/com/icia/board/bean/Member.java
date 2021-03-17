package com.icia.board.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.experimental.Accessors;

@Accessors(chain = true)
@Alias("member")
@Data
public class Member {
	private String m_id;
	private String m_pw;
	private String m_rpw;
	private String m_name;
	private String m_phone;
	private String m_birth;
	private String m_date;
	private String m_grade;

}
