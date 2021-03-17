package com.icia.board.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.experimental.Accessors;

@Accessors(chain = true)
@Alias("movie")
@Data
public class Movie {
	private String mo_code;
	private String mo_title;
	private String mo_day;
	private String mo_perfomer;
	private String mo_director;
	private String mo_time;
	private String mo_genre;
	private String mo_country;
	private String mo_grade;
	private String mo_basic;
	private String mo_date;
	private String mo_photo;
	private String mo_orititle;

}
