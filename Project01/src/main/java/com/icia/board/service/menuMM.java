package com.icia.board.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.icia.board.bean.Movie;
import com.icia.board.dao.ManagerDao;
import com.icia.board.userClass.FileManager;

@Component
public class menuMM {
	@Autowired
	ManagerDao mgDao;

	FileManager fm;
	
	ModelAndView mav;
	
	public ModelAndView movieList(Movie mo) {
		mav= new ModelAndView();
		String view= null;
		List<Movie>mList=null;
		
		mList=mgDao.getMovieList();
		if(mList!=null) {
			mav.addObject("mList", mList);
			view="/managermode/movieManagement";
		}else {
			view="/managermode/movieManagement";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView movieRegistration(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		String view = null;
		
		Movie mo = new Movie();
		
		String code= multi.getParameter("mo_code");
		String name= multi.getParameter("mo_title");
		String day= multi.getParameter("mo_day");
		String perfomer= multi.getParameter("mo_perfomer");
		String director= multi.getParameter("mo_director");
		String time= multi.getParameter("mo_time");
		String genre= multi.getParameter("mo_genre");
		String country= multi.getParameter("mo_country");
		String grade= multi.getParameter("mo_grade");
		String basic= multi.getParameter("mo_basic");
		String title= multi.getParameter("mo_orititle");
		mo.setMo_basic(basic).setMo_code(code).setMo_country(country).setMo_day(day).setMo_director(director).setMo_genre(genre).setMo_grade(grade).setMo_orititle(title).setMo_perfomer(perfomer).setMo_time(time).setMo_title(name);
		System.out.println(basic);
		
		FileManager fm = new FileManager();
		String file = fm.fileUp(multi);
		System.out.println(file);
		mo.setMo_photo(file);
		
		boolean result = mgDao.mregistration(mo);
		System.out.println(name);
		
		if(result) {
			view= "/managermode/mregistration";
			System.out.println("성공");
			
		}else {
			view= "/managermode/mregistration";
			System.out.println("씨발");
		}
		mav.setViewName(view);
		return mav;
	}






}