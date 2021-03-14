package kr.iei.hotel.reservation.vo;

public class IncomeStatisticsVO {
	private String standard = "스탠다드";

	private long standardAveragePrice;
	private long standardTotalPrice;

	private int standardAverageCount;
	private int standardTotalCount;
	
	
	private String superior = "슈페리어";

	private long superiorAveragePrice;
	private long superiorTotalPrice;

	private int superiorAverageCount;
	private int superiorTotalCount;
	
	
	private String deluxe = "디럭스";

	private long deluxeAveragePrice;
	private long deluxeTotalPrice;

	private int deluxeAverageCount;
	private int deluxeTotalCount;
	
	private String royal = "로얄";

	private long royalAveragePrice;
	private long royalTotalPrice;

	private int royalAverageCount;
	private int royalTotalCount;
	

	
	
	private long totalAveragePrice;
	private long totalSumPrice;

	private int totalAverageCount;
	private int totalSumCount;
	
	private String guestRoomName;
	
	//----------------------------------
	
	private int day1 = 1;
	private int day2 = 2;
	private int day3 = 3;
	private int day4 = 4;
	private int day5 = 5;
	private int day6 = 6;
	private int day7 = 7;
	private int day8 = 8;
	private int day9 = 9;
	private int day10 = 10;
	private int day11 = 11;
	private int day12 = 12;
	private int day13 = 13;
	private int day14 = 14;
	private int day15 = 15;
	private int day16 = 16;
	private int day17 = 17;
	private int day18 = 18;
	private int day19 = 19;
	private int day20 = 20;
	private int day21 = 21;
	private int day22 = 22;
	private int day23 = 23;
	private int day24 = 24;
	private int day25 = 25;
	private int day26 = 26;
	private int day27 = 27;
	private int day28 = 28;
	private int day29 = 29;
	private int day30 = 30;
	private int day31 = 31;
	
	private int january = 100;
	private int february = 200;
	private int march = 300;
	private int april = 400;
	private int may = 500;
	private int june = 600;
	private int july = 700;
	private int august = 800;
	private int september = 900;
	private int october = 1000;
	private int november = 1100;
	private int december = 1200;
	
	private int choiceDate;
	private int choiceYear;
	private int selectDate;

	
	
	
	public int getSelectDate() {
		return selectDate;
	}

	public void setSelectDate(int selectDate) {
		this.selectDate = selectDate;
	}

	public int getChoiceYear() {
		return choiceYear;
	}

	public void setChoiceYear(int choiceYear) {
		this.choiceYear = choiceYear;
	}

	public String getGuestRoomName() {
		return guestRoomName;
	}

	public void setGuestRoomName(String guestRoomName) {
		this.guestRoomName = guestRoomName;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}



	public long getStandardAveragePrice() {
		return standardAveragePrice;
	}

	public void setStandardAveragePrice(long standardAveragePrice) {
		this.standardAveragePrice = standardAveragePrice;
	}

	public long getStandardTotalPrice() {
		return standardTotalPrice;
	}

	public void setStandardTotalPrice(long standardTotalPrice) {
		this.standardTotalPrice = standardTotalPrice;
	}



	public int getStandardAverageCount() {
		return standardAverageCount;
	}

	public void setStandardAverageCount(int standardAverageCount) {
		this.standardAverageCount = standardAverageCount;
	}

	public int getStandardTotalCount() {
		return standardTotalCount;
	}

	public void setStandardTotalCount(int standardTotalCount) {
		this.standardTotalCount = standardTotalCount;
	}

	public String getSuperior() {
		return superior;
	}

	public void setSuperior(String superior) {
		this.superior = superior;
	}



	public long getSuperiorAveragePrice() {
		return superiorAveragePrice;
	}

	public void setSuperiorAveragePrice(long superiorAveragePrice) {
		this.superiorAveragePrice = superiorAveragePrice;
	}

	public long getSuperiorTotalPrice() {
		return superiorTotalPrice;
	}

	public void setSuperiorTotalPrice(long superiorTotalPrice) {
		this.superiorTotalPrice = superiorTotalPrice;
	}



	public int getSuperiorAverageCount() {
		return superiorAverageCount;
	}

	public void setSuperiorAverageCount(int superiorAverageCount) {
		this.superiorAverageCount = superiorAverageCount;
	}

	public int getSuperiorTotalCount() {
		return superiorTotalCount;
	}

	public void setSuperiorTotalCount(int superiorTotalCount) {
		this.superiorTotalCount = superiorTotalCount;
	}

	public String getDeluxe() {
		return deluxe;
	}

	public void setDeluxe(String deluxe) {
		this.deluxe = deluxe;
	}



	public long getDeluxeAveragePrice() {
		return deluxeAveragePrice;
	}

	public void setDeluxeAveragePrice(long deluxeAveragePrice) {
		this.deluxeAveragePrice = deluxeAveragePrice;
	}

	public long getDeluxeTotalPrice() {
		return deluxeTotalPrice;
	}

	public void setDeluxeTotalPrice(long deluxeTotalPrice) {
		this.deluxeTotalPrice = deluxeTotalPrice;
	}



	public int getDeluxeAverageCount() {
		return deluxeAverageCount;
	}

	public void setDeluxeAverageCount(int deluxeAverageCount) {
		this.deluxeAverageCount = deluxeAverageCount;
	}

	public int getDeluxeTotalCount() {
		return deluxeTotalCount;
	}

	public void setDeluxeTotalCount(int deluxeTotalCount) {
		this.deluxeTotalCount = deluxeTotalCount;
	}

	public String getRoyal() {
		return royal;
	}

	public void setRoyal(String royal) {
		this.royal = royal;
	}



	public long getRoyalAveragePrice() {
		return royalAveragePrice;
	}

	public void setRoyalAveragePrice(long royalAveragePrice) {
		this.royalAveragePrice = royalAveragePrice;
	}

	public long getRoyalTotalPrice() {
		return royalTotalPrice;
	}

	public void setRoyalTotalPrice(long royalTotalPrice) {
		this.royalTotalPrice = royalTotalPrice;
	}



	public int getRoyalAverageCount() {
		return royalAverageCount;
	}

	public void setRoyalAverageCount(int royalAverageCount) {
		this.royalAverageCount = royalAverageCount;
	}

	public int getRoyalTotalCount() {
		return royalTotalCount;
	}

	public void setRoyalTotalCount(int royalTotalCount) {
		this.royalTotalCount = royalTotalCount;
	}



	public long getTotalAveragePrice() {
		return totalAveragePrice;
	}

	public void setTotalAveragePrice(long totalAveragePrice) {
		this.totalAveragePrice = totalAveragePrice;
	}

	public long getTotalSumPrice() {
		return totalSumPrice;
	}

	public void setTotalSumPrice(long totalSumPrice) {
		this.totalSumPrice = totalSumPrice;
	}



	public int getTotalAverageCount() {
		return totalAverageCount;
	}

	public void setTotalAverageCount(int totalAverageCount) {
		this.totalAverageCount = totalAverageCount;
	}

	public int getTotalSumCount() {
		return totalSumCount;
	}

	public void setTotalSumCount(int totalSumCount) {
		this.totalSumCount = totalSumCount;
	}

	public int getDay1() {
		return day1;
	}

	public void setDay1(int day1) {
		this.day1 = day1;
	}

	public int getDay2() {
		return day2;
	}

	public void setDay2(int day2) {
		this.day2 = day2;
	}

	public int getDay3() {
		return day3;
	}

	public void setDay3(int day3) {
		this.day3 = day3;
	}

	public int getDay4() {
		return day4;
	}

	public void setDay4(int day4) {
		this.day4 = day4;
	}

	public int getDay5() {
		return day5;
	}

	public void setDay5(int day5) {
		this.day5 = day5;
	}

	public int getDay6() {
		return day6;
	}

	public void setDay6(int day6) {
		this.day6 = day6;
	}

	public int getDay7() {
		return day7;
	}

	public void setDay7(int day7) {
		this.day7 = day7;
	}

	public int getDay8() {
		return day8;
	}

	public void setDay8(int day8) {
		this.day8 = day8;
	}

	public int getDay9() {
		return day9;
	}

	public void setDay9(int day9) {
		this.day9 = day9;
	}

	public int getDay10() {
		return day10;
	}

	public void setDay10(int day10) {
		this.day10 = day10;
	}

	public int getDay11() {
		return day11;
	}

	public void setDay11(int day11) {
		this.day11 = day11;
	}

	public int getDay12() {
		return day12;
	}

	public void setDay12(int day12) {
		this.day12 = day12;
	}

	public int getDay13() {
		return day13;
	}

	public void setDay13(int day13) {
		this.day13 = day13;
	}

	public int getDay14() {
		return day14;
	}

	public void setDay14(int day14) {
		this.day14 = day14;
	}

	public int getDay15() {
		return day15;
	}

	public void setDay15(int day15) {
		this.day15 = day15;
	}

	public int getDay16() {
		return day16;
	}

	public void setDay16(int day16) {
		this.day16 = day16;
	}

	public int getDay17() {
		return day17;
	}

	public void setDay17(int day17) {
		this.day17 = day17;
	}

	public int getDay18() {
		return day18;
	}

	public void setDay18(int day18) {
		this.day18 = day18;
	}

	public int getDay19() {
		return day19;
	}

	public void setDay19(int day19) {
		this.day19 = day19;
	}

	public int getDay20() {
		return day20;
	}

	public void setDay20(int day20) {
		this.day20 = day20;
	}

	public int getDay21() {
		return day21;
	}

	public void setDay21(int day21) {
		this.day21 = day21;
	}

	public int getDay22() {
		return day22;
	}

	public void setDay22(int day22) {
		this.day22 = day22;
	}

	public int getDay23() {
		return day23;
	}

	public void setDay23(int day23) {
		this.day23 = day23;
	}

	public int getDay24() {
		return day24;
	}

	public void setDay24(int day24) {
		this.day24 = day24;
	}

	public int getDay25() {
		return day25;
	}

	public void setDay25(int day25) {
		this.day25 = day25;
	}

	public int getDay26() {
		return day26;
	}

	public void setDay26(int day26) {
		this.day26 = day26;
	}

	public int getDay27() {
		return day27;
	}

	public void setDay27(int day27) {
		this.day27 = day27;
	}

	public int getDay28() {
		return day28;
	}

	public void setDay28(int day28) {
		this.day28 = day28;
	}

	public int getDay29() {
		return day29;
	}

	public void setDay29(int day29) {
		this.day29 = day29;
	}

	public int getDay30() {
		return day30;
	}

	public void setDay30(int day30) {
		this.day30 = day30;
	}

	public int getDay31() {
		return day31;
	}

	public void setDay31(int day31) {
		this.day31 = day31;
	}

	public int getJanuary() {
		return january;
	}

	public void setJanuary(int january) {
		this.january = january;
	}

	public int getFebruary() {
		return february;
	}

	public void setFebruary(int february) {
		this.february = february;
	}

	public int getMarch() {
		return march;
	}

	public void setMarch(int march) {
		this.march = march;
	}

	public int getApril() {
		return april;
	}

	public void setApril(int april) {
		this.april = april;
	}

	public int getMay() {
		return may;
	}

	public void setMay(int may) {
		this.may = may;
	}

	public int getJune() {
		return june;
	}

	public void setJune(int june) {
		this.june = june;
	}

	public int getJuly() {
		return july;
	}

	public void setJuly(int july) {
		this.july = july;
	}

	public int getAugust() {
		return august;
	}

	public void setAugust(int august) {
		this.august = august;
	}

	public int getSeptember() {
		return september;
	}

	public void setSeptember(int september) {
		this.september = september;
	}

	public int getOctober() {
		return october;
	}

	public void setOctober(int october) {
		this.october = october;
	}

	public int getNovember() {
		return november;
	}

	public void setNovember(int november) {
		this.november = november;
	}

	public int getDecember() {
		return december;
	}

	public void setDecember(int december) {
		this.december = december;
	}

	public int getChoiceDate() {
		return choiceDate;
	}

	public void setChoiceDate(int choiceDate) {
		this.choiceDate = choiceDate;
	}

			
	
			
	
}
