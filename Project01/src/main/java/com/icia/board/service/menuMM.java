package com.icia.board.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.icia.board.bean.Movie;
import com.icia.board.dao.ManagerDao;
import com.icia.board.userClass.FileManager;
import com.icia.board.userClass.Paging;

@Component
public class menuMM {
	@Autowired
	ManagerDao mgDao;

	FileManager fm;
	
	ModelAndView mav;

	public ModelAndView movieRegistration(MultipartHttpServletRequest multi, Integer pageNum) {
		mav = new ModelAndView();
		String view = null;
		
		Movie mo = new Movie();
		ArrayList<Movie>mList=null;
		
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
		String role= multi.getParameter("mo_role");
		String personnel= multi.getParameter("mo_personnel");
		mo.setMo_basic(basic).setMo_country(country).setMo_day(day).setMo_director(director).setMo_genre(genre).setMo_grade(grade).setMo_orititle(title).setMo_perfomer(perfomer).setMo_time(time).setMo_title(name).setMo_role(role).setMo_personnel(personnel);
		System.out.println(title);
		
		FileManager fm = new FileManager();
		String file = fm.fileUp(multi);
		System.out.println(file);
		mo.setMo_photo(file);
		
		pageNum=(pageNum==null)?1:pageNum;
		if(pageNum<=0) {
			System.out.println("잘못된 페이지 번호");
		}
		
		boolean result = mgDao.mregistration(mo);
		System.out.println(name);
		
		if(result) {
			mList=mgDao.getMovieList(pageNum);
			if(mList!=null && mList.size()!=0) {
				mList=mgDao.getMovieList(pageNum);
				view= "/managermode/mregistration";
				mav.addObject("check","1");
				System.out.println("등록성공");
			}
		}else {
			view= "/managermode/mregistration";
			mav.addObject("check", "2");
			System.out.println("등록실패");
		}
		mav.setViewName(view);
		return mav;
	}
	
	//게시판 이동시 목록 출력
	public ModelAndView getMovieList(Integer pageNum) {
		System.out.println("pageNum="+pageNum);
		mav=new ModelAndView();
		String view= null;
		ArrayList<Movie>mList=null;
		pageNum=(pageNum==null)?1:pageNum;
		if(pageNum<=0) {
			System.out.println("잘못된 페이지 번호");
		}
		mList=mgDao.getMovieList(pageNum);
		if(mList!=null && mList.size()!=0) {
			System.out.println("들어가는거지??");
			Gson gson=new Gson();
			String json=gson.toJson(mList);
			mav.addObject("mList", json);
			mav.addObject("paging", getPaging(pageNum));
			view="/managermode/movieManagement";
		}
		mav.setViewName(view);
		return mav;
	}

	private Object getPaging(Integer pageNum) {
		int maxNum= mgDao.getMovieCount();
		int listCount=10;
		int pageCount=5;
		String boardName="/board/managemode/movieManagement";
		Paging paging= new Paging(maxNum, pageNum, listCount, pageCount, boardName);
		return paging.makeHtmlPaging();
	}

	public ModelAndView movieDetail(int MO_NUM) {
		mav=new ModelAndView();
		String view=null;
		int num=MO_NUM;
		Movie movie=mgDao.getContents(num);
		System.out.println("들어갔을까?");
		
		System.out.println("movie="+movie);
		mav.addObject("mo", movie);
		view="/managermode/movieContents";
		mav.setViewName(view);
		return mav;
	}

	public String deleteMovie(String num) {
		String value=null;
		boolean result=mgDao.deleteMovie(num);
		if(result) {
			value="1";
		}
		return value;
	}

	public ModelAndView movieModify(int MO_NUM) {
		mav=new ModelAndView();
		String view=null;
		int num=MO_NUM;
		Movie movie=mgDao.getContents(num);
		System.out.println("들어갔을까?");
		
		System.out.println("movie="+movie);
		mav.addObject("mo", movie);
		view="/managermode/contentModification";
		mav.setViewName(view);
		return mav;
	}





}
