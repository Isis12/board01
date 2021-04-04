package com.icia.board.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.experimental.Accessors;

@Accessors(chain = true)
@Alias("movie")
@Data
public class Movie {
	private int mo_num;  //등록번호
	private String mo_title; //영화 제목
	private String mo_day; //개봉날짜
	private String mo_perfomer; //출연자
	private String mo_director; //영화감독
	private String mo_time; //영화시간
	private String mo_genre; //장르
	private String mo_country; //국가
	private String mo_grade; //평점
	private String mo_basic; //기본정보
	private String mo_date; //등록날짜
	private String mo_photo; //포스터
	private String mo_orititle; //원제

}
