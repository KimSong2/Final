package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.BoardVO;

@Mapper
public interface BoardDAO {
	public List<BoardVO> getList(String boardCategory);
	public BoardVO selectList(String boardId);
}
