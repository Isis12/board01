package com.icia.board.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.icia.board.bean.Movie;

@Component
public interface ManagerDao {
	
	List<Movie> getMovieList();

	boolean mregistration(Movie mo);



}
