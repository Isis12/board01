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
	
	@PostMapping(value = "/managermode/movieregistration", produces= "application/json;charest=utf-8" )
	public ModelAndView pregistration(MultipartHttpServletRequest multi) {
		System.out.println("씨발2222");
		mav= me.movieRegistration(multi);
		return mav;
	}
	
}
