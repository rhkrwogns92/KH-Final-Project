package kr.iei.hotel.memberUpdate.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.iei.hotel.member.dto.MemberDto;
import kr.iei.hotel.memberUpdate.dto.MemberUpdateDto;



@Repository
@Mapper
public interface MemberUpdateMapper  {

	public MemberUpdateDto getMemberInfo(String memberEmail);

	public int memberUpdate(MemberDto memberDto);

	public int memberDelete(MemberDto memberDto);


}
