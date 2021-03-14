<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


		<div class="boxWrap">
		<input style="background: red;" readonly type="text" /><span class="standardBox" id="standardBtn">STANDARD</span>|<span class="standardBox" id="standardAVG">AVG</span>
		<input style="background: orange;" readonly type="text" /><span class="superiorBox" id="superiorBtn">SUPERIOR</span>|<span class="superiorBox" id="superiorAVG">AVG</span>
		<input style="background: goldenrod;" readonly type="text" /><span class="deluxeBox" id="deluxeBtn">DELUXE</span>|<span class="deluxeBox" id="deluxeAVG" >AVG</span>
		<input style="background: green;" readonly class="royalBox" type="text" /><span class="royalBox" id="royalBtn">ROYAL</span>|<span class="royalBox" id="royalAVG">AVG</span>
		<input style="background: blue;" readonly type="text" /><span class="totalBox" id="totalBtn">TOTAL</span>|<span class="totalBox" id="totalAVG">AVG</span>
		<input style="background: black;" readonly type="text" /><span class="deleteBox" id="deleteBtn">DELETE</span>
		</div>



		<div class="incomeGraph">
		<c:if test="${!empty totalPriceList }">
			<div class="wrapLeft">
			<div class ="totalBox">
			<span style="color: white;">hide</span>
			</div>
				<p>1월</p><br />
				<p>2월</p><br />
				<p>3월</p><br />
				<p>4월</p><br />
				<p>5월</p><br />
				<p>6월</p><br />
				<p>7월</p><br />
				<p>8월</p><br />
				<p>9월</p><br />
				<p>10월</p><br />
				<p>11월</p><br />
				<p>12월</p><br />
			</div>
			<div class="wrapRight">
				<select id="priceAndCount">
					<option value="price">PRICE</option>
					<option value="count">COUNT</option>
				</select>
				<span id="changeBtn">CHANGE</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span style="font-size: 30px;">${date.selectDate }</span>
				
				
				
				
				<div id="selectPrice">
				
				<div class ="totalBox">
				<span>TOTAL PRICE&nbsp;</span>
				<span style="color: red; display: none;" id="standardPriceSUM">= <fmt:formatNumber value="${incomeStatistics.standardTotalPrice }" pattern="#,###"/></span>
				<span style="color: orange; display: none;" id="superiorPriceSUM">= <fmt:formatNumber value="${incomeStatistics.superiorTotalPrice }" pattern="#,###"/></span>
				<span style="color: goldenrod; display: none;" id="deluxePriceSUM">= <fmt:formatNumber value="${incomeStatistics.deluxeTotalPrice }" pattern="#,###"/></span>
				<span style="color: green; display: none;" id="royalPriceSUM">= <fmt:formatNumber value="${incomeStatistics.royalTotalPrice }" pattern="#,###"/></span>
				<span style="color: blue; display: none;" id="totalPriceSUM">= <fmt:formatNumber value="${incomeStatistics.totalSumPrice }" pattern="#,###"/></span>
								
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<span>AVG PRICE&nbsp;</span>
				<span style="color: red; display: none;" id="AVG2">= <fmt:formatNumber value="${incomeStatistics.standardAveragePrice }" pattern="#,###"/></span>
				<span style="color: orange; display: none;" id="AVG4">= <fmt:formatNumber value="${incomeStatistics.superiorAveragePrice }" pattern="#,###"/></span>
				<span style="color: goldenrod; display: none;" id="AVG6">= <fmt:formatNumber value="${incomeStatistics.deluxeAveragePrice }" pattern="#,###"/></span>
				<span style="color: green; display: none;" id="AVG8">= <fmt:formatNumber value="${incomeStatistics.royalAveragePrice }" pattern="#,###"/></span>
				<span style="color: blue; display: none;" id="AVG10">= <fmt:formatNumber value="${incomeStatistics.totalAveragePrice }" pattern="#,###"/></span>
				</div>
				
				
				<c:forEach var="index" begin="0" end="${fn:length(totalPriceList)-1}">
				<input readonly class="standardPrice" type="text" value="${standardPriceList[index] }" />
				<input readonly class="superiorPrice" type="text" value="${superiorPriceList[index] }" />
				<input readonly class="deluxePrice" type="text" value="${deluxePriceList[index] }" />
				<input readonly class="royalPrice" type="text" value="${royalPriceList[index] }" />
				<input readonly class="totalPrice" type="text" value="${totalPriceList[index] }" />
				
				<input readonly class="standardPriceAVG2" type="text" value="${incomeStatistics.standardAveragePrice }" />
				<input readonly class="superiorPriceAVG2" type="text" value="${incomeStatistics.superiorAveragePrice }" />
				<input readonly class="deluxePriceAVG2" type="text" value="${incomeStatistics.deluxeAveragePrice }" />
				<input readonly class="royalPriceAVG2" type="text" value="${incomeStatistics.royalAveragePrice }" />
				<input readonly class="totalPriceAVG2" type="text" value="${incomeStatistics.totalAveragePrice }" />
				<input readonly class="priceColorChange2" type="text" value="" />
				<br />
				
				<input readonly class="standardPriceAVG" type="text" value="${incomeStatistics.standardAveragePrice }" />
				<input readonly class="superiorPriceAVG" type="text" value="${incomeStatistics.superiorAveragePrice }" />
				<input readonly class="deluxePriceAVG" type="text" value="${incomeStatistics.deluxeAveragePrice }" />
				<input readonly class="royalPriceAVG" type="text" value="${incomeStatistics.royalAveragePrice }" />
				<input readonly class="totalPriceAVG" type="text" value="${incomeStatistics.totalAveragePrice }" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				</c:forEach>
		
				</div>
				
				
				
				
				
				<div id="selectCount" style="display: none;">
				
				
				<div class ="totalBox">
				<span>TOTAL COUNT&nbsp;</span>
				<span style="color: red; display: none;" id="standardCountSUM">= ${incomeStatistics.standardTotalCount }</span>
				<span style="color: orange; display: none;" id="superiorCountSUM">= ${incomeStatistics.superiorTotalCount }</span>
				<span style="color: goldenrod; display: none;" id="deluxeCountSUM">= ${incomeStatistics.deluxeTotalCount }</span>
				<span style="color: green; display: none;" id="royalCountSUM">= ${incomeStatistics.royalTotalCount }</span>
				<span style="color: blue; display: none;" id="totalCountSUM">= ${incomeStatistics.totalSumCount }</span>
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<span>AVG COUNT&nbsp;</span>
				<span style="color: red; display: none;" id="AVG1">= ${incomeStatistics.standardAverageCount }</span>
				<span style="color: orange; display: none;" id="AVG3">= ${incomeStatistics.superiorAverageCount }</span>
				<span style="color: goldenrod; display: none;" id="AVG5">= ${incomeStatistics.deluxeAverageCount }</span>
				<span style="color: green; display: none;" id="AVG7">= ${incomeStatistics.royalAverageCount }</span>
				<span style="color: blue; display: none;" id="AVG9">= ${incomeStatistics.totalAverageCount }</span>
				</div>
				
				
				<c:forEach var="index" begin="0" end="${fn:length(totalCountList)-1}">
				<input readonly class="standardCount" type="text" value="${standardCountList[index] }" />
				<input readonly class="superiorCount" type="text" value="${superiorCountList[index] }" />
				<input readonly class="deluxeCount" type="text" value="${deluxeCountList[index] }" />
				<input readonly class="royalCount" type="text" value="${royalCountList[index] }" />
				<input readonly class="totalCount" type="text" value="${totalCountList[index] }" />
				
				<input readonly class="standardCountAVG2" type="text" value="${incomeStatistics.standardAverageCount }" />
				<input readonly class="superiorCountAVG2" type="text" value="${incomeStatistics.superiorAverageCount }" />
				<input readonly class="deluxeCountAVG2" type="text" value="${incomeStatistics.deluxeAverageCount }" />
				<input readonly class="royalCountAVG2" type="text" value="${incomeStatistics.royalAverageCount }" />
				<input readonly class="totalCountAVG2" type="text" value="${incomeStatistics.totalAverageCount }" />
				<input readonly class="countColorChange2" type="text" value="" />
				<br />
				
				<input readonly class="standardCountAVG" type="text" value="${incomeStatistics.standardAverageCount }" />
				<input readonly class="superiorCountAVG" type="text" value="${incomeStatistics.superiorAverageCount }" />
				<input readonly class="deluxeCountAVG" type="text" value="${incomeStatistics.deluxeAverageCount }" />
				<input readonly class="royalCountAVG" type="text" value="${incomeStatistics.royalAverageCount }" />
				<input readonly class="totalCountAVG" type="text" value="${incomeStatistics.totalAverageCount }" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				</c:forEach>
				</div>




			</div>
		</c:if>	
		</div>




<script>
	 	let = 	standardPriceAVG2 = document.querySelectorAll(".standardPriceAVG2"),
				superiorPriceAVG2 = document.querySelectorAll(".superiorPriceAVG2"),
				deluxePriceAVG2 = document.querySelectorAll(".deluxePriceAVG2"),
				royalPriceAVG2 = document.querySelectorAll(".royalPriceAVG2"),
				totalPriceAVG2 = document.querySelectorAll(".totalPriceAVG2"),
				standardCountAVG2 = document.querySelectorAll(".standardCountAVG2"),
				superiorCountAVG2 = document.querySelectorAll(".superiorCountAVG2"),
				deluxeCountAVG2 = document.querySelectorAll(".deluxeCountAVG2"),
				royalCountAVG2 = document.querySelectorAll(".royalCountAVG2"),
				totalCountAVG2 = document.querySelectorAll(".totalCountAVG2"),
				priceColorChange2 = document.querySelectorAll(".priceColorChange2"),
				countColorChange2 = document.querySelectorAll(".countColorChange2"),
	 			
	 			
	 			standardBtn = document.querySelector("#standardBtn"),
				superiorBtn = document.querySelector("#superiorBtn"),
				deluxeBtn = document.querySelector("#deluxeBtn"),
				royalBtn = document.querySelector("#royalBtn"),
				totalBtn = document.querySelector("#totalBtn"),
				standardAVG = document.querySelector("#standardAVG"),
				superiorAVG = document.querySelector("#superiorAVG"),
				deluxeAVG = document.querySelector("#deluxeAVG"),
				royalAVG = document.querySelector("#royalAVG"),
				totalAVG = document.querySelector("#totalAVG"),
				
				standardPriceSUM = document.querySelector("#standardPriceSUM"),
				superiorPriceSUM = document.querySelector("#superiorPriceSUM"),
				deluxePriceSUM = document.querySelector("#deluxePriceSUM"),
				royalPriceSUM = document.querySelector("#royalPriceSUM"),
				totalPriceSUM = document.querySelector("#totalPriceSUM"),
				standardCountSUM = document.querySelector("#standardCountSUM "),
				superiorCountSUM = document.querySelector("#superiorCountSUM"),
				deluxeCountSUM = document.querySelector("#deluxeCountSUM"),
				royalCountSUM = document.querySelector("#royalCountSUM"),
				totalCountSUM = document.querySelector("#totalCountSUM"),
				
				AVG1 = document.querySelector("#AVG1"),
				AVG2 = document.querySelector("#AVG2"),
				AVG3 = document.querySelector("#AVG3"),
				AVG4 = document.querySelector("#AVG4"),
				AVG5 = document.querySelector("#AVG5"),
				AVG6 = document.querySelector("#AVG6"),
				AVG7 = document.querySelector("#AVG7"),
				AVG8 = document.querySelector("#AVG8"),
				AVG9 = document.querySelector("#AVG9"),
				AVG10 = document.querySelector("#AVG10"),

				standardPrice = document.querySelectorAll(".standardPrice"),
				superiorPrice = document.querySelectorAll(".superiorPrice"),
				deluxePrice = document.querySelectorAll(".deluxePrice"),
				royalPrice = document.querySelectorAll(".royalPrice"),
				totalPrice = document.querySelectorAll(".totalPrice"),
				standardCount = document.querySelectorAll(".standardCount"),
				superiorCount = document.querySelectorAll(".superiorCount"),
				deluxeCount = document.querySelectorAll(".deluxeCount"),
				royalCount = document.querySelectorAll(".royalCount"),
				totalCount = document.querySelectorAll(".totalCount"),
				
				standardPriceAVG = document.querySelectorAll(".standardPriceAVG"),
				superiorPriceAVG = document.querySelectorAll(".superiorPriceAVG"),
				deluxePriceAVG = document.querySelectorAll(".deluxePriceAVG"),
				royalPriceAVG = document.querySelectorAll(".royalPriceAVG"),
				totalPriceAVG = document.querySelectorAll(".totalPriceAVG"),
				standardCountAVG = document.querySelectorAll(".standardCountAVG"),
				superiorCountAVG = document.querySelectorAll(".superiorCountAVG"),
				deluxeCountAVG = document.querySelectorAll(".deluxeCountAVG"),
				royalCountAVG = document.querySelectorAll(".royalCountAVG"),
				totalCountAVG = document.querySelectorAll(".totalCountAVG"),
				
				priceColorChange = document.querySelectorAll(".priceColorChange"),
				countColorChange = document.querySelectorAll(".countColorChange"),
				
				deleteBtn = document.querySelector("#deleteBtn"),
				priceAndCount = document.querySelector("#priceAndCount"),
				changeBtn = document.querySelector("#changeBtn"),
				selectPrice = document.querySelector("#selectPrice"),
				selectCount = document.querySelector("#selectCount");
				
				
				changeBtn.addEventListener("click",function(){
					if(priceAndCount.value == "price"){
						selectPrice.style.display = "block";
						selectCount.style.display = "none";
					}
					if(priceAndCount.value == "count") {
						selectPrice.style.display = "none";
						selectCount.style.display = "block";
					}
					
				});
	
				
				
				deleteBtn.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";

						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";
					

					
					for(var index = 0; index < standardPrice.length; index++){
						standardPrice[index].style.width = 0 + "px";
						standardCount[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						priceColorChange2[index].style.background = "white";
						countColorChange2[index].style.background = "white";
						
					};
				});
				
				standardBtn.addEventListener("click", function(){

						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "inline";
						standardCountSUM.style.display = "inline";
					
	
					
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";		
					
			
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
		
						standardPrice[index].style.width = standardPrice[index].value / 800000 + "px";
						standardCount[index].style.width = standardCount[index].value + "px";
					};
				});
				superiorBtn.addEventListener("click", function(){
	
						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "inline";
						superiorCountSUM.style.display = "inline";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";
					

					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
					
					
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
	
						superiorPrice[index].style.width = superiorPrice[index].value / 800000 + "px";
						superiorCount[index].style.width = superiorCount[index].value + "px";
					};
				});
				deluxeBtn.addEventListener("click", function(){
						

		
						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "inline";
						deluxeCountSUM.style.display = "inline";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";

					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						
						

						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
	
						deluxePrice[index].style.width = deluxePrice[index].value / 800000 + "px";
						deluxeCount[index].style.width = deluxeCount[index].value + "px";
					};
				});
				royalBtn.addEventListener("click", function(){
		
		
						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "inline";
						royalCountSUM.style.display = "inline";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";
					

					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
					
					
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
			
						royalPrice[index].style.width = royalPrice[index].value / 800000 + "px";
						royalCount[index].style.width = royalCount[index].value + "px";
					};
				});
				totalBtn.addEventListener("click", function(){
					
	
						totalPriceSUM.style.display = "inline";
						totalCountSUM.style.display = "inline";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";

					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						
						
						standardPrice[index].style.width = 0 + "px";
						standardCount[index].style.width = 0 + "px";
	
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
			
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
			
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
			
						totalPrice[index].style.width = totalPrice[index].value / 800000 + "px";
						totalCount[index].style.width = totalCount[index].value + "px";
					};
				
				});
				
				
				standardAVG.addEventListener("click", function(){
				
					AVG1.style.display = "inline";
					AVG2.style.display = "inline";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = (standardPriceAVG2[index].value-standardPrice[index].value) / 800000 + "px";
						standardCountAVG2[index].style.width = (standardCountAVG2[index].value-standardCount[index].value) + "px";
						priceColorChange2[index].style.background = "red";
						countColorChange2[index].style.background = "red";
						
						
						standardPriceAVG[index].style.width = standardPriceAVG[index].value / 800000 + "px";
						standardCountAVG[index].style.width = standardCountAVG[index].value + "px";
						priceColorChange[index].style.background = "red";
						countColorChange[index].style.background = "red";
					};
				});
				superiorAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "inline";
					AVG4.style.display = "inline";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = (superiorPriceAVG2[index].value-superiorPrice[index].value) / 800000 + "px";
						superiorCountAVG2[index].style.width = (superiorCountAVG2[index].value-superiorCount[index].value) + "px";
						priceColorChange2[index].style.background = "orange";
						countColorChange2[index].style.background = "orange";
						
						superiorPriceAVG[index].style.width = superiorPriceAVG[index].value / 800000 + "px";
						superiorCountAVG[index].style.width = superiorCountAVG[index].value + "px";
						priceColorChange[index].style.background = "orange";
						countColorChange[index].style.background = "orange";
					};
				});
				deluxeAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "inline";
					AVG6.style.display = "inline";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = (deluxePriceAVG2[index].value-deluxePrice[index].value) / 800000 + "px";
						deluxeCountAVG2[index].style.width = (deluxeCountAVG2[index].value-deluxeCount[index].value) + "px";
						priceColorChange2[index].style.background = "goldenrod";
						countColorChange2[index].style.background = "goldenrod";
						
						deluxePriceAVG[index].style.width = deluxePriceAVG[index].value / 800000 + "px";
						deluxeCountAVG[index].style.width = deluxeCountAVG[index].value + "px";
						priceColorChange[index].style.background = "goldenrod";
						countColorChange[index].style.background = "goldenrod";
					};
				});
				royalAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "inline";
					AVG8.style.display = "inline";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = (royalPriceAVG2[index].value-royalPrice[index].value) / 800000 + "px";
						royalCountAVG2[index].style.width = (royalCountAVG2[index].value-royalCount[index].value) + "px";
						priceColorChange2[index].style.background = "green";
						countColorChange2[index].style.background = "green";
						
						royalPriceAVG[index].style.width = royalPriceAVG[index].value / 800000 + "px";
						royalCountAVG[index].style.width = royalCountAVG[index].value  + "px";
						priceColorChange[index].style.background = "green";
						countColorChange[index].style.background = "green";
					};
				});
				totalAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "inline";
					AVG10.style.display = "inline";
				
					for(var index = 0; index < standardPrice.length; index++){
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						
						
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						totalPriceAVG2[index].style.width = (totalPriceAVG2[index].value-totalPrice[index].value) / 800000 + "px";
						totalCountAVG2[index].style.width = (totalCountAVG2[index].value-totalCount[index].value) + "px";
						priceColorChange2[index].style.background = "blue";
						countColorChange2[index].style.background = "blue";
						
						totalPriceAVG[index].style.width = totalPriceAVG[index].value / 800000 + "px";
						totalCountAVG[index].style.width = totalCountAVG[index].value  + "px";
						priceColorChange[index].style.background = "blue";
						countColorChange[index].style.background = "blue";
					};
				});
</script>
</body>
</html>