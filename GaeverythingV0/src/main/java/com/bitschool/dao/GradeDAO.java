package com.bitschool.dao;


import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bitschool.dto.GradeDTO;

@Repository
public class GradeDAO {

	@Inject
	private SqlSession session;
	
	private static final String namespace = "com.bitschool.gaverything.GradeMapper";

	// 회원가입할 때 호출한다
	public boolean insertNew(GradeDTO dto) throws SQLException{
		boolean flag = false;
		int aCnt = session.insert(namespace+".insertNew",dto);
		if(aCnt>0){
			flag = true;
		}
		return flag;
	}
	
	//리뷰게시글에 댓글 달렸을 때 글쓴이의 resComment
	public boolean insertInfo(GradeDTO dto) throws SQLException{
		boolean flag = false;
		int aCnt = session.insert(namespace+".insertInfo",dto);
		if(aCnt>0){
			flag = true;
		}
		return flag;
	}
	
	
}
