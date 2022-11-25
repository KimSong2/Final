package com.goodee.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.NuriDAO;



@Service
public class NuriService {
	private NuriDAO dao;

	public NuriService(NuriDAO dao) {
		super();
		this.dao = dao;	
	} 
	public void search(String category, String search, Model model){
		if(category.equals("shop")) {
			if(search=="") {
				model.addAttribute("shop", null);
			}else {
				model.addAttribute("shop", dao.searchshop("%"+search+"%"));
			}
		}else if(category.equals("hotel")) {
			if(search=="") {
				model.addAttribute("hotel", null);
			}else {
				model.addAttribute("hotel", dao.searchhotel("%"+search+"%"));
				
			}
		}
	}
	
	
}
