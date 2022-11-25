package com.goodee.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.BoardDAO;
@Service
public class BoardService {
	private BoardDAO dao;

	public BoardService(BoardDAO dao) {
		super();
		this.dao = dao;
	}
	public void getList(Model model, String boardCategory) {
		model.addAttribute("list",dao.getList(boardCategory));
	}
	
	public void selectList(Model model, String boardId) {
		model.addAttribute("list",dao.selectList(boardId));
	}
	
}
