package com.icia.board.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.icia.board.bean.Member;
@Repository//@Component
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate tpl;
	
	public boolean getLoginResult(Member mb) {
			return tpl.selectOne("memberMapper.getLoginResult", mb);
	}
		
}
