package com.icia.board.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.board.bean.Member;
import com.icia.board.bean.Movie;
import com.icia.board.service.MemberMM;
import com.icia.board.service.menuMM;
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);	
	
	ModelAndView mav;
	
	@Autowired
	private MemberMM mm;//new MemberMM();
	@Autowired
	private menuMM me;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home/home";
	}
	
	@RequestMapping(value = "home/login", method = RequestMethod.GET)
	public String login() {
		return "home/login";
	}
	
	@RequestMapping(value = "home/welcome", method = RequestMethod.GET)
	public String welcome() {
		return "home/welcomeFrm";
	}
	
	@RequestMapping(value = "home/joinFrm", method = RequestMethod.GET)
	public String joinFrm() {
		mav = new ModelAndView();
		mav.setViewName("joinFrm");
		
		return "home/joinFrm";
	}
	
	//��й�ȣ ��ȿ���˻�
	@RequestMapping(value = "home/pwCheck", method = RequestMethod.POST)
	public boolean pwCheck(String m_pw) {
		boolean check = false;
		String pw_chk = "^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[$@$!%*?&`~'\"+=])[A-Za-z[0-9]$@$!%*?&`~'\"+=]{6,18}$";
		
		Pattern pattern_symbol = Pattern.compile(pw_chk);
		Matcher match_symbol = pattern_symbol.matcher(m_pw);
		
		if(match_symbol.find()) {
			check=true;
		}
		return check;
	}
	
	//ID�ߺ� �˻�
	@RequestMapping(value = "home/dupleID", method = RequestMethod.GET)
	@ResponseBody
	public String getDupleID(String m_id)  {
		System.out.println("m_id"+m_id);
		String result = mm.getDupleID(m_id);
		System.out.println("result"+result);
		return result;
	}
	
	@RequestMapping(value = "home/join", method = RequestMethod.POST)
	public ModelAndView join(Member member) {
		mav =mm.join(member);
		System.out.println("��??");
		return mav;
	}
	
	@RequestMapping(value = "home/access", method = RequestMethod.POST)
	public ModelAndView access(Member mb, HttpSession session) {
		mav =mm.access(mb,session);
		return mav;
	}
	
	@RequestMapping(value = "home/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "movie/moviePage", method = RequestMethod.GET)
	public String moviePage() {
		return "movie/moviePage";
	}
	
	@RequestMapping(value = "/tvPage", method = RequestMethod.GET)
	public String tvPage() {
		return "tvPage";
	}

	//admin
	@RequestMapping(value = "/managermode/managerPage", method = RequestMethod.GET)
	public String adminPage() {
		return "managermode/managerPage";
	}
	
	@RequestMapping(value = "/managermode/movieManagement", method = RequestMethod.GET)
	public ModelAndView movieManagement(Integer pageNum) {
		mav =me.getMovieList(pageNum);
		return mav;
	}
	
	@RequestMapping(value = "/managermode/movieContents", method = RequestMethod.GET)
	public ModelAndView movieContents(int MO_NUM) {
		mav =me.movieDetail(MO_NUM);
		return mav;
	}
	
	//��ȭ ���
	@RequestMapping(value = "/managermode/mregistration", method = RequestMethod.GET)
	public String mregistration() {
		return "managermode/mregistration";
	}

	@RequestMapping(value = "/managermode/memberManagement", method = RequestMethod.GET)
	public String memberManagement() {
		return "managermode/memberManagement";
	}
	
	

	
}
