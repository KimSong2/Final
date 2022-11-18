package com.goodee.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.MemberVO;
import com.goodee.vo.SeparateVO;



@Mapper
public interface MemberDAO {
	public int idCheck(MemberVO vo);
	
	public int insertmembership(MemberVO vo);

	public int ismember2(MemberVO vo);
	public int isadmin(MemberVO vo);
	public MemberVO getmemberinfo(MemberVO vo);

	public SeparateVO separate(MemberVO vo);
	

	public int updateinfo(MemberVO vo);
	/* public MemberVO getmemberinfo(@Param("memId") String id); */

	public MemberVO findidmail(MemberVO vo);
	public List<MemberVO> findidphone(MemberVO vo);
	
	public MemberVO findpw(Map<String, String> map);
	
	public MemberVO checkEmail(Map<String, String> map);
	
	public int updatepw(MemberVO vo);

}
