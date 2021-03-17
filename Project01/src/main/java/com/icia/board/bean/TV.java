package com.icia.board.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Alias("tv")
@Accessors(chain = true)
public class TV {
	private String t_code;
	private String t_name;
	private String t_day;
	private String t_perfomer;
	private String t_director;
	private String t_genre;
	private String t_country;
	private String t_grade;
	private String t_basic;
	private String t_date;
	private String t_orimg;
	private String t_sysimg;
	private String t_suming;
	
	

}
