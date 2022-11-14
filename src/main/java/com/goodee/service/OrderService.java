package com.goodee.service;

import org.springframework.stereotype.Service;

import com.goodee.dao.OrderDAO;

@Service
public class OrderService {
	private OrderDAO dao;

	public OrderService(OrderDAO dao) {
		super();
		this.dao = dao;
	}
	
}
