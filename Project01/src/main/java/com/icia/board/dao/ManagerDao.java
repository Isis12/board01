package com.icia.board.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.icia.board.bean.Movie;

@Component
public interface ManagerDao {
	
	boolean mregistration(Movie mo);
	
	ArrayList<Movie> getMovieList(Integer pageNum);
	
	@Select("SELECT COUNT(*) FROM MOVIE")
	int getMovieCount();
	
	Movie getContents(int num);
	


	







}
