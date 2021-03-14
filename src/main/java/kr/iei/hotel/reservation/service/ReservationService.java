package kr.iei.hotel.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.iei.hotel.guestroom.vo.GuestRoomVO;
import kr.iei.hotel.reservation.mapper.ReservationMapper;
import kr.iei.hotel.reservation.vo.IncomeStatisticsVO;
import kr.iei.hotel.reservation.vo.ReservationVO;

@Service
public class ReservationService {

	@Autowired
	ReservationMapper reservationMapper;
	
	//-------------------------------------예약--------------------------------------------
	
	//예약 개수 검색
	public int selectReservationCount(ReservationVO reservationVO)throws Exception {
		return reservationMapper.selectReservationCount(reservationVO);
	}
	//객실 정보 개수 검색
	public int selectGuestRoomInfoCount(ReservationVO reservationVO)throws Exception {
		return reservationMapper.selectGuestRoomInfoCount(reservationVO);
	}
	//객실 정보 리스트
	public List<GuestRoomVO> selectGuestRoomInfoList(ReservationVO reservationVO)throws Exception {
		return reservationMapper.selectGuestRoomInfoList(reservationVO);
	}
	//예약 객실 정보 리스트
	public List<Integer> reservationGuestRoomNumberList(ReservationVO reservationVO)throws Exception {
		return reservationMapper.reservationGuestRoomNumberList(reservationVO);
	}
	//예약 insert 처리
	public void reservationInsertProcess(ReservationVO reservationVO)throws Exception {
		reservationMapper.reservationInsertProcess(reservationVO);
	}
	//예약 관리 리스트
	public List<ReservationVO> reservationAdminList(int number1)throws Exception {
		return reservationMapper.reservationAdminList(number1);
	}
	//예약 관리 삭제
	public void reservationAdminDelete(String reservationNo)throws Exception {
		reservationMapper.reservationAdminDelete(reservationNo);
	}
	//예약 관리 검색
	public List<ReservationVO> reservationAdminSearch(String reservationNo)throws Exception {
		return reservationMapper.reservationAdminSearch(reservationNo);
	}
	//회원등급조회
	public double selectMemberGrade(String memberGrade)throws Exception {
		return reservationMapper.selectMemberGrade(memberGrade);
	}
	
	
	//-------------------------------------수입통계--------------------------------------------
	
	//월별통계 totalPrice
	public List<Long> selectMonthlyTotalPrice(IncomeStatisticsVO incomeStatisticsVO)throws Exception {
		return reservationMapper.selectMonthlyTotalPrice(incomeStatisticsVO);
	}
	//월별통계 totalCount
	public List<Integer> selectMonthlyTotalCount(IncomeStatisticsVO incomeStatisticsVO)throws Exception {
		return reservationMapper.selectMonthlyTotalCount(incomeStatisticsVO);
	}
	//월별통계 객실Price
	public List<Long> selectMonthlyGuestRoomPrice(IncomeStatisticsVO incomeStatisticsVO)throws Exception {
		return reservationMapper.selectMonthlyGuestRoomPrice(incomeStatisticsVO);
	}
	//월별통계 객실Count
	public List<Integer> selectMonthlyGuestRoomCount(IncomeStatisticsVO incomeStatisticsVO)throws Exception {
		return reservationMapper.selectMonthlyGuestRoomCount(incomeStatisticsVO);
	}
	
	
	
	//월별통계 totalPrice
	public List<Long> selectDailyTotalPrice(IncomeStatisticsVO incomeStatisticsVO)throws Exception {
		return reservationMapper.selectDailyTotalPrice(incomeStatisticsVO);
	}
	//월별통계 totalCount
	public List<Integer> selectDailyTotalCount(IncomeStatisticsVO incomeStatisticsVO)throws Exception {
		return reservationMapper.selectDailyTotalCount(incomeStatisticsVO);
	}
	//월별통계 객실Price
	public List<Long> selectDailyGuestRoomPrice(IncomeStatisticsVO incomeStatisticsVO)throws Exception {
		return reservationMapper.selectDailyGuestRoomPrice(incomeStatisticsVO);
	}
	//월별통계 객실Count
	public List<Integer> selectDailyGuestRoomCount(IncomeStatisticsVO incomeStatisticsVO)throws Exception {
		return reservationMapper.selectDailyGuestRoomCount(incomeStatisticsVO);
	}
}
