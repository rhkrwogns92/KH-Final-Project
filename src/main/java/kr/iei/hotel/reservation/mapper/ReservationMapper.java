package kr.iei.hotel.reservation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.iei.hotel.guestroom.vo.GuestRoomVO;
import kr.iei.hotel.reservation.vo.IncomeStatisticsVO;
import kr.iei.hotel.reservation.vo.ReservationVO;

@Mapper
public interface ReservationMapper {
	
	
	//-------------------------------------예약--------------------------------------------
	
	//예약 개수 검색
	public int selectReservationCount(ReservationVO reservationVO)throws Exception;
	//객실 정보 개수 검색
	public int selectGuestRoomInfoCount(ReservationVO reservationVO)throws Exception;
	//객실 정보 리스트
	public List<GuestRoomVO> selectGuestRoomInfoList(ReservationVO reservationVO)throws Exception;
	//예약 객실 넘버 리스트
	public List<Integer> reservationGuestRoomNumberList(ReservationVO reservationVO)throws Exception;
	//예약 추가 처리
	public void reservationInsertProcess(ReservationVO reservationVO)throws Exception;
	//예약 관리 리스트
	public List<ReservationVO> reservationAdminList(int number1)throws Exception;
	//예약 관리 삭제
	public void reservationAdminDelete(String reservationNo)throws Exception;
	//예약 관리 검색
	public List<ReservationVO> reservationAdminSearch(String reservationNo)throws Exception;
	//회원등급조회
	public double selectMemberGrade(String memberGrade)throws Exception;
	
	//-------------------------------------수입통계--------------------------------------------


	//월별통계 totalPrice
	public List<Long> selectMonthlyTotalPrice(IncomeStatisticsVO incomeStatisticsVO)throws Exception;
	//월별통계 totalCount
	public List<Integer> selectMonthlyTotalCount(IncomeStatisticsVO incomeStatisticsVO)throws Exception;
	//월별통계 객실Price
	public List<Long> selectMonthlyGuestRoomPrice(IncomeStatisticsVO incomeStatisticsVO)throws Exception;
	//월별통계 객실Count
	public List<Integer> selectMonthlyGuestRoomCount(IncomeStatisticsVO incomeStatisticsVO)throws Exception;
	
	
	//일별통계 totalPrice
	public List<Long> selectDailyTotalPrice(IncomeStatisticsVO incomeStatisticsVO)throws Exception;
	//일별통계 totalCount
	public List<Integer> selectDailyTotalCount(IncomeStatisticsVO incomeStatisticsVO)throws Exception;
	//일별통계 객실Price
	public List<Long> selectDailyGuestRoomPrice(IncomeStatisticsVO incomeStatisticsVO)throws Exception;
	//일별통계 객실Count
	public List<Integer> selectDailyGuestRoomCount(IncomeStatisticsVO incomeStatisticsVO)throws Exception;
		

}
