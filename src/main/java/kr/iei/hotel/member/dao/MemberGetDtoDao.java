package kr.iei.hotel.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.iei.hotel.member.dto.MemberDto;

@Mapper
public interface MemberGetDtoDao {
	
	@Select("SELECT * FROM MEMBER WHERE memberEmail = '${memberEmail}'")
	MemberDto getMemberDtoByEmail(String memberEmail);

	@Select("SELECT * FROM MEMBER WHERE memberKey = '${memberKey}'")
	MemberDto getMemberDtoByKey(String memberKey);
	
	@Select("SELECT * FROM MEMBER WHERE memberName = '${memberName}' AND memberPhone = '${memberPhone}'")
	List<MemberDto> getMemberDtoListByNameAndPhone(String memberName, String memberPhone);
	
}
