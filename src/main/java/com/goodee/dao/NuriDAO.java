package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.HotelVO;
import com.goodee.vo.ShopVO;

@Mapper
public interface NuriDAO {
	public List<ShopVO> searchshop(@Param("search") String search);
	public List<HotelVO> searchhotel(@Param("search") String search);
}
