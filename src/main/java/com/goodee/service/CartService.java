package com.goodee.service;

import org.springframework.stereotype.Service;

import com.goodee.dao.CartDAO;

@Service
public class CartService {
	private CartDAO dao;

	public CartService(CartDAO dao) {
		super();
		this.dao = dao;
	}
	
	
}
