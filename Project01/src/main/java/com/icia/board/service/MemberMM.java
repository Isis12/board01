package com.icia.board.service;
//회원관리 서비스 클래스

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import com.icia.board.bean.Member;
import com.icia.board.dao.IMemberDao;

@Component
public class MemberMM {
	@Autowired
	private IMemberDao mDao;

	ModelAndView mav;

	public String getDupleID(String m_id) {
		int idcnt = mDao.getDupID(m_id);
		return Integer.toString(idcnt);
	}
	
	public ModelAndView join(Member mb) {
		String view = null;
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		mb.setM_pw(pwdEncoder.encode(mb.getM_pw()));
		if (mDao.memberJoin(mb)) {
			view="login";
			mav.addObject("check", 1);
		}else {
			view="/home/joinFrm";
		}
		mav.setViewName(view);
		return mav;
	}
	
	public ModelAndView access(Member mb, HttpSession session) {
		mav= new ModelAndView();
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		String pwdEncode = mDao.getSecurityPwd(mb.getM_id());
		System.out.println("pw="+mb.getM_pw());
		
		String view= null;
		
		if(pwdEncode!=null) {
			if(pwdEncoder.matches(mb.getM_pw(), pwdEncode)) {
				//로그인 성공
				session.setAttribute("id", mb.getM_id());
				//정보출력
				mb=mDao.getMemberInfo(mb.getM_id());
				session.setAttribute("mb", mb);
				view="redirect:/home/welcome";
			}else { 
				view="/home/login";
				mav.addObject("check", "2");
			}
		}else { //아이디 오류
			view="/home/login";
			mav.addObject("check", 2);
		}
		mav.setViewName(view);
		return mav;
	}
	


	


}
