package com.icia.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.icia.board.bean.Board;
import com.icia.board.bean.Reply;

//@Repository 쓰면 안됨
public interface IBoardDao {
	Board getContents(Integer bNum);
	List<Board> getBoardList(int pageNum);
	
	boolean replyInsert(Reply r);
	List<Reply> getReplyList(int r_bnum);
	
	@Select("SELECT COUNT(*) FROM BLIST")
	int getBoardCount();
	@Delete("DELETE FROM R WHERE R_BNUM=#{bNum}")
	boolean replyDelete(Integer bNum);
	@Delete("DELETE FROM B WHERE B_NUM=#{bNum}")
	boolean boardDelete(Integer bNum);
	@Insert("INSERT INTO BF VALUES(BF_SEQ.NEXTVAL,#{bnum},#{origFileName},#{sysFileName})")
	boolean fileInsert(Map<String, String> fMap);
	boolean boardWrite(Board board);
	
}













