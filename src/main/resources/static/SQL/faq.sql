/*─────────────────────────────────────────────── FAQ  ───────────────────────────────────────────────*/
drop table faq;
drop sequence seq_faq_id;



/*------------------------------- FAQ 테이블 생성 -------------------------------*/
CREATE TABLE FAQ (
    id       NUMBER         not null primary key,
    category VARCHAR2(200)  not null,
    question VARCHAR2(200)  not null,
    answer	 VARCHAR2(3000) not null    
);

/*------------------------------- 시퀀스 생성 -------------------------------*/
create sequence seq_faq_id;

/*──────────────────── FAQ 데이터 등록 ────────────────────*/
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','장기주차를 하려면 어떻게 해야 하나요?','투숙객의 경우, 숙박일에 한하여 무료주차가 가능합니다. 장기주차를 원할경우, 1일 1만원의 추가요금이 발생됩니다.<br>문의 064-700-9000');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','근처 편의점이 있나요?','간단한 스낵 구매가 가능한 벤딩머신이 로비층 크림하우스에 위치 해 있으며,근처 편의점은 호텔 맞은편에 위치해있습니다. (도보로 약 5분소요)');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','H.U.G호텔은 어떻게 찾아가나요?','ABOUT US 메뉴의 오시는길에서 확인하실 수 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','외부 배달 음식을 주문해도 되나요?','호텔 규정 상 외부 배달 음식은 주문하실 수 없습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','컴퓨터와 프린트는 무료로 사용 가능한가요?','프린트는 컬러 1장 기준 1,100원, 흑백 1장 550원의 이용료가 부과되며, ′비지니스 센터′에서 24시간으로 이용가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','호텔로 택배 보내서 투숙 기간 중 수령 가능한가요?','사전에 호텔 측 대표메일(p-city@paradian.com) 혹은 대표번호(064-700-9000)로 연락 주시어 하기의 정보를 공유 부탁드립니다.<br>- 호텔 예약자 정보, 택배에 기입하신 수령자 정보<br>- 운송장 번호, 택배업체명, 구매 물품');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','호텔에서 사용하는 디퓨저나 향수 또는 객실 내 가구 및 비품 구매 가능한가요?','H.U.G호텔만을 위해 특별 디자인하여 주문 제작한 가구 및 비품은 현재 별도로 판매하지 않습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','호텔에서 약 제공받을 수 있나요?','약물 오남용과 부작용을 막기 위한 약사법에 의거하여 호텔에서는 약을 제공할 수 없으며, 가벼운 찰과상 처치를 위한 소독 연고나 밴드 종류는 구비되어 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','호텔 내 전자레인지 이용 가능한가요? ','객실 내 취사 및 외부 음식 반입은 제한되며 전자레인지가 준비되어 있지 않습니다. 유아용 이유식에 한해 히팅 서비스가 제공되고 있으니 필요시 객실 내 전화기를 통해 0번으로 요청 부탁드립니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','회원권제 구매는 어떻게 하나요?','회원권제는 사이트에서 구매가 불가하고 현장구매로 진행하고 있습니다. 구매를 원하시는 고객은  전화 문의 주시기 바랍니다.<br> Tel 064-700-9000');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','개인정보 수정은 어떻게 하나요?','화면 우측 상단의 Log in 버튼을 클릭하여 로그인을 하신 후, My Page 회원정보 에서 개인 정보를 수정하실 수 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[기타]','주차장에서 몇 대까지 주차가 가능한가요?','투숙 고객인 경우, 한 객실 당 1대까지 1일 무료주차 이용이 가능합니다.');


insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[결제]','결제 영수증이 필요한 경우 어떻게 해야 하나요?','고객님의 신용카드 영수증이나 사용 전표가 필요하신 경우에는 이지페이(신용카드 결제 서비스) 홈페이지 내 신용카드 거래내역 조회에서 거래내역을 조회하여 영수증이나 전표를 인쇄할 수 있습니다.<br><br>이지페이 홈페이지는 아래의 URL을 통해서 확인 가능합니다.<br>www.easypay.co.kr');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[결제]','숙박 예약 시 어떤 결제수단을 사용할 수 있나요?','숙박을 예약하실 때 사용할 수 있는 결제수단은 신용카드 방법이 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[결제]','결제 취소를 했는데 취소 기간이 얼마나 걸리나요?','카드취소 시 카드 취소 접수 후 영업일 기준 약 7일 소요되며, 입금 환불 취소 시<br>입금 해 주셨던 통장 사본 수령 후 접수 (입금자명 확인 후 진행 됩니다) 및 접수 후 영업일 기준 약 7일 소요 됩니다.<br>
단, 신분증으로는 입금 환불 신청이 접수되지 않으며, 예약 당일 취소 및 NO SHOW의 경우 위약금 규정에 따라<br>해당 금액 제외한 나머지 금액만 환불됩니다. 또한, 상기 일자는 당사, 카드사 상황 또는 금액에 따라 지연될 수 있습니다');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[결제]','카드사에 연락해서 취소 했는데, 취소가 안됐는데 어떻게 하나요?','결제를 하여 승인이 된 당일에 취소를 하시는 경우, 카드사에 즉시 취소반영이 되어 고객님께는 청구가 되지 않습니다.<br>그러나 결제일이 지나서 취소를 하시는 경우, 해당 거래를 취소하더라도 실제로 취소가 반영되는 데 2~3일 정도가 소요됩니다.<br>
<br>취소과정에 결제일이 포함되어 있다면 당월에는 취소금액이 청구가 되지만, 익월 분의 청구내역에서 자동으로 차감이 이루어집니다.<br>보다 더 자세한 사항은 고객님께서 취소하신 카드사에 전화하셔서 문의하시면 정확하게 확인하실 수 있습니다.');


insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[부대시설]','피트니스 이용요금이 궁금합니다.','지하 1층에 위치한 피트니스는 투숙객에 한하여 무료로 제공되는 시설입니다.<br>운영시간: 피트니스 24시간');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[부대시설]','사우나 이용요금이 궁금합니다','1층에 위치한 사우나는 투숙객에 한하여 무료로 제공되는 시설입니다.<br><br>- 운영시간: 06:00 ~ 22:00 (일~금)<br>06:00 ~ 23:00 (매주 토요일 및 연휴)<br><br>(매주 월요일 13:00 ~18:00 남/여 사우나 Cleaning으로 이용이 어렵습니다.)');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[부대시설]','호텔 내 수영장이 있나요?','사계절 스파풀을 운영 중에 있습니다.<br>자세한 사항은 수영장(pool) 페이지에서 확인하실 수 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[부대시설]','호텔 수영장 내 수영모 착용이 필수인가요?','수영모의 착용은 필수는 아닙니다. 다만 머리가 길 경우 묶어 주시길 권장합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[부대시설]','호텔 수영장 내 튜브 및 물품 반입 가능한가요?','안전하고 편안한 이용을 위하여 튜브, 기타 물놀이 기구 사용 및 음식물 반입, 흡연, 오일 사용을 금하고 있습니다.<br>유아용 퍼들 점퍼 및 목 튜브는 반입 가능하며 구명조끼를 포함하여 무료 대여품으로 준비되어 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[부대시설]','비투숙객도 호텔 내 부대시설(수영장, 사우나 등) 별도 이용 가능한가요?','호텔 파라다이스 내 부대시설인 수영장, 사우나, 플레이스테이션존, 피트니스는 투숙객 전용 시설로 운영되고 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[부대시설]','사우나,수영장,피트니스의 이용 제한이 있나요?','호텔 투숙객과 휘트니스 회원만 이용하실 수 있는 멤버 전용 공간입니다.<br><br>* 사우나, 피트니스: 성인 전용 시설이므로 만 15세 이상인 경우에만 이용 가능<br>* 수영장: 만 3세(36개월) 이상부터 부모님 동반하에 이용 가능 (증빙서류 지참 필요)');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[부대시설]','아이들을 위한 시설이 있나요?','H.U.G호텔은 지하2층에 아이들을 위한 KIDS존과 엔터테이먼트 공간인 PARK를 운영 중입니다.');


insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','이용 시 주의사항이 있나요?','H.U.G호텔은 계단식으로 설계되어 있어 이동 시에 주의를 부탁합니다.<br>노약자 및 장애인, 거동이 불편하신 분은 전용 엘리베이터 또는 별실에서 불편 없이 이용이 가능합니다.<br>예약 시 또는 업장 이용 시, 저희 직원에게 요청을 주시면 이용에 불편함이 없도록 최선을 다해 도움을 드리겠습니다.<br>H.U.G호텔의 바닥은 대리석으로 되어 있어 다소 미끄러울 수 있으니 슬리퍼 착용을 자제해 주시기 바랍니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','식사 가능한 독립된 공간(룸)이 따로 있나요?','#BLUME(별실) 프라이빗 다이닝 룸<br><br>사전 예약을 통해 붐비는 조식 시간을 오랜 기다림 없이, 독립적인 공간에서 조용하고 여유롭게 식사를 즐기고 싶은 분들께 추천해드리는 프라이빗 다이닝 룸<br><br>
※ 사전 예약제로 운영됩니다.<br>※ 총 4개의 별실로, 8명에서 16명까지 수용 가능합니다.<br>※ 예약 및 문의 TEL 064-700-9311');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','레스토랑의 할인혜택이 궁금합니다.','할인혜택 대상<br>H.U.G호텔은 다음과 같이 할인혜택을 제공해드리고 있습니다.<br><br>>경정훈련원 - 10% 할인<br>>SKY72 티카드 멤버 - 10% 할인<br>>제주공항 상주직원 - 10% 할인<br>>H.U.G호텔 회원( *개인정보 유효기간 ′탈퇴 시′ 및 마케팅 정보 ′수신 동의′ 설정 시)<br>
- 식음 10% 할인 (조식 및 토요일 디너/여름,겨울 성수기 제외)<br><br>예약 및 문의 TEL 064-700-9311');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','룸서비스 운영시간이 궁금합니다.','룸서비스는 시간대 별 다양한 메뉴가 준비되어 있으며 24시간 주문 가능합니다<br>기타 문의 사항 TEL 064-700-9311');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','주문 시 소요시간이 얼마나 걸릴까요?','룸서비스 주문 시 소요시간은 최초 주문 접수 시간으로부터 30분 이내 입니다. 주말 이용 시 서비스 소요시간이 지연될 수 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','이용 금액은 어떻게 결제하나요?','현금 또는 카드로 현장 결제가 가능하며, 체크아웃 시 후불로 결제 가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','룸서비스도 카드할인 또는 쿠폰 적용이 되나요?','룸서비스는 기타 카드 할인 또는 쿠폰사용이 어렵습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','조식 쿠폰으로 룸서비스 이용이 가능한가요?','조식 쿠폰은 THE BUFFET 레스토랑 내에서만 이용 가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','전망 좋은 자리가 있다면 추천 부탁드립니다.','3면이 유리로 된 확 트인 전망을 자랑하는 H.U.G호텔 레스토랑은 모든 좌석에서 드넓은 제주바다와 함께 일출과 일몰을 감상하실 수 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','음료와 식사 외에 디저트 메뉴도 판매하나요?','TRATTORIA레스토랑은 다양한 종류의 주류와 커피, 티 그리고 간단한 스낵메뉴를 즐길 수 있으며, 다양한 종류의 케이크와 델리가 준비되어 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','음료를 테이크아웃 하고 싶습니다.','TRATTORIA레스토랑은 모든 음료의 테이크아웃이 가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','대관 및 행사 문의','대관 및 행사에 대한 문의는 064-700-9125으로 전화주시면 자세한 안내를 도와드리겠습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','외부 음식 반입이 가능한가요?','운영 규정에 의하여 외부 음식 반입이 금지되어 있습니다. 단, 와인,위스키 등 주류에 한하여 반입이 가능하오니, 이점 양해 부탁드립니다. (주류 반입 시 별도의 corkage charge가 부과됩니다.)<br>예약 및 문의 064-700-9125');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','호텔 내 위치한 레스토랑의 종류는 어떻게 되나요?','H.U.G호텔의 레스토랑은 2개로 130여 가지의 다양한 메뉴를 제공하는 뷔페 레스토랑인 THE BUFFET과<br>H.U.G호텔의 시그니처 메뉴와 제주 로컬 식재료가 만나 제주만의 스타일로 재해석한 이탈리안 캐주얼 다이닝 레스토랑인 TRATTORIA가 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','레스토랑 내 유모차 반입 가능한가요?','모두 유모차 반입 가능하나 혼잡도에 따라 제한될 수도 있습니다. (외부 대기장소에 보관 가능)');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','레스토랑 내 사진 촬영이 가능합니까?','레스토랑 내 사진 촬영은 이용 고객들의 방해가 되지 않는 선에서만 가능하며, 상업적인 목적의 촬영은 호텔에 사전 승인을 받으셔야 합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','레스토랑을 이용하려면 반드시 사전에 예약을 해야 하나요?','사전 예약을 해야 한다는 원칙은 없으나, 원하시는 좌석에서 식사를 즐기시기 위해서는 미리 예약을 하시는 것을 추천드립니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','레스토랑 이용 시 주차는 어떻게 해야 하나요?','H.U.G호텔 지하 주차장을 이용하시면 되며, 레스토랑 및 음료 업장 이용 시 3시간 무료 주차권을 발급해 드립니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[다이닝]','룸서비스 주문 시 소요시간을 얼마나 걸리나요?','평균 20분~25분 소요됩니다. *메뉴에 따라 약간의 차이가 있습니다.');


insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 예약은 어떻게 하나요?','객실 예약은 064-700-9000(운영시간: 매일 09:00~18:00) 혹은 H.U.G호텔 공식홈페이지 상단 예약메뉴 탭에서 이용하실 수 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','호텔 내 침대 사이즈가 어떻게 되나요?','King 객실에는 너비 1800mm, 길이 2100mm의 킹사이즈 침대 1대, Twin 객실에는 너비 1400mm, 길이 2100mm의 더블 사이즈 침대 2대가 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','침대 이동(헐리웃베드) 가능한가요?','객실 내 안전사고 예방 및 호텔 자산 손상의 우려가 있어 가구의 재배치 혹은 이동은 어렵습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','투숙 시 객실 내의 미니바 무료 제공 맞나요?','1박 당 1회의 미니바 무료 이용 혜택이 제공됩니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','유아용품 및 대여품은 어떻게 신청하나요?','유아용품 및 대여품은 한정된 수량으로 선착순으로 대여해 드리고 있으며, 조기 마감될 수 있습니다.<br>객실 예약 확정 후 H.U.G호텔 프론트에서 신청하시면 실시간 재고 상황에 따라 제공됩니다.<br><br>[대여 유아용품 안내 사항]<br>
- 침대 안전가드 : 안전 상의 이유로 36개월 이하 유아 이용 권장<br>- 범퍼침대 : 가로 60cm x 세로 120cm 사이즈로 36개월 이하 유아 이용 권장<br>- 아기침대 : 낙상 등의 안전 상의 이유로 12개월 이하 유아 이용 권장<br>상기의 품목은 한정된 수량으로 중복 대여가 어렵습니다.<br><br>유아용 슬리퍼와 가운은 별도 준비되어 있지 않습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','장애인이 이용 가능한 전용 객실이 있나요?','장애인 이용에 불편이 없도록 전용시설 및 서비스를 운영 중에 있으며, 별도 요청시 최선을 다해 도움을 드리고 있습니다. (장애인 주차구역, 전용객실, 화장실, 승강기, 휠체어 대여 등)
장애인 전용 화장실이 있는 객실은 ′스탠다드 트윈 산전망′ 객실이 한정적으로 운영되고 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실예약 시 개인 정보 유출의 위험이 있나요?','H.U.G 호텔의 보안은 안전합니다.<br>예약 시 본인 인증 후 개인 예약 내역을 알려 드립니다.<br>본인 인증에 실패 하였을 경우 개인 예약 내역을 누설하지 않습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','얼리 체크인이 가능한가요?','H.U.G 호텔 체크인 시간은 오후 15시 입니다.<br><br>- 얼리 체크인 규정<br><br>오후 12시 ~ 15시 이전 : 55,000원<br>오전 10시 ~ 오후 12시 이전 : 객실요금의 50%<br>오전 10시 이전 시 : 객실 1박 요금');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','레이트 체크아웃이 가능한가요?','H.U.G 호텔 체크아웃 시간은 오전 11시 입니다.<br><br>- 레이트 체크아웃 규정<br><br>오후 12시 ~ 오후 3시 체크아웃 시 : 55,000원<br>오후 3시 ~ 오후 6시 체크아웃 시 : 객실요금의 50%<br>오후 6시 이후 체크아웃 시 : 객실 1박 요금');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','예약 후 당일 취소가 가능한가요?','당일 취소 및 변경은 불가하며, 예약 후 사용예정일(체크인 기준)에 따른 위약금이 부과 됩니다. 자세한 내용은 ′예약취소에 따른 위약금규정′을 참고 하시길 바랍니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 내 amenity 구입이 가능한가요?','객실 내 모든 아이템은 디자이너 자체 제작 상품으로 구성되어 있으며, 일부 상품에 따라 구매 가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 내 별도의 장식이 가능한가요?','외부업체 이용은 불가능하며, 호텔 내 flower 및 gift 서비스가 준비되어 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실에서 아이스버킷 이용이 가능한가요?','각 층 ′아이스머신 룸′ 내 아이스머신이 설치되어 있으므로, 객실 내부에 비치되어 있는 아이스 버킷을 이용하여 자유롭게 이용이 가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 내에 와인잔 오프너와 같은 물품도 준비되어 있나요?','객실 내에 와인잔과 오프너가 상시 비치되어있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','와인을 직접 구매하여 가져왔는데 차갑게 보관이 가능한가요?','고객님 가져오신 와인을 차갑게 보관해드리기 위하여 와인을 담을 수 있는 아이스 버킷을 제공해 드리고 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 내에서 인터넷 사용이 가능한가요?','H.U.G 호텔은 전 객실 내에서 유선, 무선 인터넷 사용이 무료로 이용 가능 합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실에 두고 온 분실물은 어떻게 찾습니까?','H.U.G 호텔은 고객 유실물과 관련하여<br>대한민국 민법 제 253조(유실물의 소유권취득)에 따라<br>고객유실물 관리 규정을 제정하여 운영하고 있습니다.<br><br>모든 유실물에 대해서는 3개월 보관 후 폐기합니다.<br>귀중품(귀금속, 현금, 스마트기기, 카드)은 3개월 보관 후 관할 지구대, 경찰서로 이관됩니다.<br>
코로나로 인한 위생기준 강화 차원에서 식품류는 24시간 보관 후 폐기하고 있습니다.<br><br>유실물을 찾고자 하시는 고객께서는 호텔 대표번호로 문의주시기 바랍니다.<br><br>문의: 064-700-9000');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','전망이 좋은 자리가 있나요?','바다가 보이는 창가 구역에서 이용하실 수 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 내 amenity 구성이 어떻게 되나요?','TV와 위성채널, 초고속 인터넷, 샴푸, 컨디셔너, 바디워시, 바디로션, 헤어드라이기, 다리미&다리미판(요청시), 냉장고, 커피&차, 생수 등 비치되어 있습니다.<br>
*객실 타입 및 호텔 사정에 따라 변경될 수 있으며, 자세한 내용은 홈페이지 내 객실 타입별 페이지를 참조 부탁 드립니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 내에서 흡연이 가능한가요?','모든 객실이 금연으로 운영되고 있으므로, 객실 내 흡연은 불가 합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 내에서 취사가 가능한가요?','객실 내 취사는 불가합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 내에 욕조가 있나요?','일부 객실을 제외한 대부분의 객실에는 샤워부스가 설치되어 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','다리미를 사용할 수 있나요?','요청을 주시면 대여하실 수 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','생수가 무료로 제공되나요?','생수 2병을 무료로 제공해드리고 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','잠옷이 있나요?','별도의 잠옷은 제공하고 있지 않습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','온돌 방도 있나요?','온돌 방은 따로 없습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','객실 청소 및 세탁물 처리는 어떻게 하나요?','매일 객실 정비 서비스를 제공해 쾌적한 이용이 가능하며 손님의 세탁물도 일반 호텔보다 합리적인 가격으로 세탁해 드립니다.<br>또한 모든 객실에는 세탁 건조기가 있어 원하시는 시간에 언제든지 이용하실 수 있습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[객실]','장기 숙박에 대한 혜택이 있나요?','장기 숙박객에게는 2주 또는 1달부터 1년 이상까지 할인이 적용된 요금을 제공해 드립니다.<br>자세한 문의는 064-700-9000으로 연락 주시기 바랍니다.');


insert into faq (id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','체크인, 체크아웃 시간은 어떻게 되나요?','HUG 호텔의 체크인 시간은 오후 15시이며 체크아웃 시간은 오전 11시 입니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','객실 내 최대 투숙 인원 규정이 어떻게 되나요?','한 객실 당 최대 성인 2인 & 13세 이하 어린이 2인 또는 성인 3인 & 13세 이하 어린이 1인까지 투숙 가능합니다.<br>객실 패키지 별로 기준 인원이 상이하며, 기준 인원을 초과할 경우 추가 인원에 대한 요금이 부과됩니다.<br>
추가 요금은 성인 1인 55,000원(부가세 포함), 어린이 1인(37개월 이상~13세 이하) 33,000원(부가세 포함)입니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','MUSIC ROUNGE 이용은 어떻게 하나요?','라운지는 14세 이상 입장 가능한 시설로 어린이의 출입이 제한되며 라운지 혜택이 포함된 패키지로 예약하신 투숙객에 한하여 이용 가능합니다.<br>매주 토요일만 운영되며 이용 시간은 아래와 같습니다.<br><br>- Breakfast 07:00~10:30<br>라운지 고객만을 위해 특별하게 준비되는 고급스러운 조식 서비스<br>
<br>- Tea&Coffee 14:00~17:00<br>따듯한 햇살이 함께하는 오후의 티타임<br><br>- Happy Hour 18:00~21:00<br>엄선된 메뉴와 품격 있는 주류로 제공되는 풍성한 해피아워');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','체크인 전 또는 체크아웃 후 부대시설 이용 가능한가요?','호텔 수영장, 스파, 피트니스, 파크, 키즈존의 부대시설은 체크인 후부터 체크아웃 전까지 이용 가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','주차장은 어디인가요?','H.U.G호텔 지하 주차장을 이용하시면 되며, 객실 당 1대는 무료로 이용하실 수 있습니다. 발렛 파킹 서비스도 가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','주차 규정','* 주차 공간이 협소하니 대중교통 이용을 권장 드립니다.<br>* 무료 주차 : 객실당 주차 1대 무료, 방문 차량의 경우 1대에 한하여 최대 3시간까지 무료 주차가 가능합니다. ( 주차 추가요금 : 2,400원 / 시간 )');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','애완동물 출입이 가능 한가요? ','H.U.G호텔은 일반 호텔과 달리 애완동물 출입이 가능합니다. 이용 시 펫클리닝비와 보증금이 발생되며 자세한 문의는 064-700-9000으로 주십시오.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','식당이나 룸 서비스가 있나요?','H.U.G호텔은 1층과 6층에 다양한 다이닝 시설이 있으며 한식, 양식 등 다양한 메뉴의 식사와 룸서비스가 가능합니다. 자세한 문의는 064-700-9100로 부탁 드리겠습니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','피트니스 센터 및 수영장이 있나요?','호텔 투숙객이라면 지하1층에 피트니스 센터와 수영장,사우나가 있습니다. 자세한 문의는 064-700-9000에서 가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','어린이를 위한 시설은 무엇이 있나요?','H.U.G호텔은 지하2층에 KIDS존 및 놀이방이 있어 아이가 있는 가족들에게 편의를 제공하고 있으며 비즈니스 센터에서는<br>에니메이션 DVD를 대여해드립니다. 또한 가능 시 영유아를 위한 아기 침대 렌탈도 가능합니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','호텔 내에서 프린트 또는 복사를 할 수 있나요?','A4용지 기준 1장 당 100원이 부과됩니다.');
insert into faq(id, category, question, answer)
values(seq_faq_id.nextval, '[이용안내]','로비에서 책을 대여할 수 있나요?','숙박 고객에 한하여 대여하실 수 있습니다.');


commit;