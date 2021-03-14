package kr.iei.hotel.adminMember.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.iei.hotel.adminMember.dto.AdminMemberDto;
import kr.iei.hotel.notice.vo.Page;



@Repository
@Mapper
public interface AdminMemberMapper  {

	public int adminTotalSize(Page page);

	public List<AdminMemberDto> adminMemberList(Page page);

	public int memberGradeUpdate(Map<String, Object> map);

	

}
