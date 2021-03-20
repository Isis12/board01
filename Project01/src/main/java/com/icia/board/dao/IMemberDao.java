package com.icia.board.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.icia.board.bean.Member;

@Mapper
@Component
public interface IMemberDao {
	public String getSecurityPwd(String m_id);
	public Member getMemberInfo(String m_id);
	public boolean memberJoin(Member mb);
	
	@Select("SELECT COUNT(*) FROM MEMBER WHERE M_ID=#{m_id}")
	public int getDupID(String m_id);

	
}

