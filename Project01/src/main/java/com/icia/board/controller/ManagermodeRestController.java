package com.icia.board.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.icia.board.service.menuMM;

@RestController
@RequestMapping(value = "/rest")
public class ManagermodeRestController {

	@Autowired
	private menuMM me;
	
	ModelAndView mav;
	
	@PostMapping(value = "/managermode/movieregistration")
	public ModelAndView pregistration(MultipartHttpServletRequest multi) {
		mav= me.movieRegistration(multi);
		System.out.println("들어가라");
		return mav;
	}
	
	@PostMapping(value = "/managermode/deleteMovie")
	public String deleteMovie(String num) {
		String value=me.deleteMovie(num);
		return value;
	}
	
}
