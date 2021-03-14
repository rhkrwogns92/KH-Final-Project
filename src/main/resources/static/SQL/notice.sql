/*─────────────────────────────────────────────── 공지사항 ───────────────────────────────────────────────*/
drop table notice;
drop sequence seq_notice_nNo;



/*------------------------------- NOTICE 테이블 생성 -------------------------------*/
CREATE TABLE NOTICE (
    nNo       NUMBER         not null primary key,
    title     VARCHAR2(200)  not null,
    contents  CLOB           not null,
    hit	      VARCHAR2(200)  DEFAULT 0,
    regdate   varchar2(100)  DEFAULT SYSDATE,
    pub       NUMBER(1)      DEFAULT 0   
);

/*------------------------------- 시퀀스 생성 -------------------------------*/
create sequence seq_notice_nNo;

/*------------------------------- NOTICE 데이터 등록 -------------------------------*/
DECLARE
    notice_cnt NUMBER:= 1;
    cnt NUMBER:= 1;
BEGIN
    WHILE notice_cnt <= 10
    LOOP
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'외부 배달 음식 반입 금지 안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        <br>저희 H.U.G호텔은 외부 음식 반입으로 인한 위생 및 보안 상의 문제점을 사전에 예방하고<br>쾌적한 서비스 환경을 조성하기 위해 호텔 내 외부 배달 음식 반입을 전면 금지하고 있습니다.<br><br>고객님들의 적극적인 협조 부탁드리며,<br>룸서비스 및 쿤스트 라운지에서 피자, 치킨 등 이용이 가능하오니 많은 이용바랍니다.<br><br>
        ■ 룸서비스 문의 : 064 700 9315<br>■ 쿤스트 라운지 문의 : 064 700 9125<br><br>저희 H.U.G호텔은 앞으로도 호텔 내 안전과 청결을 최우선으로 하며,<br>늘 고객님께 보다 편리하고 가치 있는 서비스를 제공할 것을 약속드립니다.<br><br>고맙습니다.');
        cnt := cnt + 1;
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'코로나19 사전 예방조치 안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        저희 H.U.G호텔은 코로나 바이러스 안전지대를 목표로 사전 예방조치와 전문업체 방역(소독)을 시행 중이며<br>다음과 같은 H.U.G만의 특화된 위생관리를 통해<br>고객님께서 안심하시고 편안한 여행이 되실 수 있도록 최선의 노력을 다하겠습니다.');
        cnt := cnt + 1;
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'개인정보 처리방침 변경 안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        개인정보 처리방침이 다음과 같이 개정되어 변경 내용을 공지 하오니, 서비스 이용에 참고하시기 바랍니다.<br><br>▣ 변경대상<br>개인정보 처리방침<br><br>▣ 개정내용<br>제9조 개인정보의 기술적/관리적 보호 대책 추가<br>1. 개인정보의 암호화<br>2. 해킹 등에 대비한 대책<br>3. 개인정보 취급자의 최소화 및 교육<br>
        4. 개인정보보호 전담부서의 운영<br><br>▣ 시행일자<br>2021년 02월 20일(토)<br><br>H.U.G호텔은 고객님께 보다 편리하고, 질 높은 서비스를 제공할 것을 약속 드리며, 고객정보의 보호 및 엄격한 관리를 위해 최선을 다할 것입니다.<br>감사합니다.');
        cnt := cnt + 1;
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'마케팅 정보 수신동의 확인 안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따라<br>마케팅 정보 수신에 동의한 경우 동의사실을 매2년마다 안내해드립니다.<br><br>고객님들의 서비스이용에 있어 불편을 최소화하고 중요사항에 대한 이해를 돕기 위해 아래와 같이 안내를 드리오니, 서비스이용 등에 있어 참고하여 주시기 바랍니다.<br><br>
        [관련법령]<br><br>정보통신망 이용촉진 및 정보보호 등에 관한 법률 제50조8항 (영리목적의 광고성 정보 전송 제한)<br>⑧ 수신동의를 받은 자는 대통령령으로 정하는 바에 따라 정기적으로 광고성 정보 수신자의 수신동의 여부를 확인하여야 한다.<br><br>동법 시행령 제 62조의3 (수신동의 여부 확인 방식)<br>① 수신자의 사전 동의를 받은 자는 그 수신동의를 받은 날부터 2년마다 (매 2년이 되는 해의 수신동의를 받은 날과 같은 날 전까지를 말한다) 해당 수신자의 수신동의 여부를 확인하여야 한다.<br><br>
        ▣ 시 행 일<br>1) E-mail : 2021년 02월 25일(목) 부터<br>2) SMS : 2021년 02월 25일(목) 부터<br><br>▣ 시행주기<br>- 서비스 수신동의 내역을 안내한 시점으로부터 매 2년<br><br>H.U.G호텔은 고객님께 보다 편리하고, 질 높은 서비스를 제공할 것을 약속 드리며, 고객정보의 보호 및 엄격한 관리를 위해 최선을 다할 것입니다.<br>
        감사합니다.');
        cnt := cnt + 1;
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'법정점검으로 인한 심야 정전 안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        법정점검 시행으로 인하여<br>아래와 같이 일시적으로 전기 사용이 제한되오니,<br>고객님들의 깊은 양해 부탁 드립니다.<br><br>- 아 래 -<br><br>■ 시행일 : 2021년 02월 28일 (일) -> 2021년 03월 1일 (월)<br>■ 정전시간 : 오전 01:30~04:30 (3시간)<br><br>
        이용에 착오 없으시길 바랍니다.<br><br>앞으로도 호텔 내 안전을 최우선으로 하며,<br>늘 고객님께 보다 편리하고 가치 있는 서비스를 제공할 것을 약속드립니다.<br><br>고맙습니다.');
        cnt := cnt + 1;
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'영리 및 홍보를 목적으로 하는 상업적 촬영 제한 안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        당 호텔은 이용약관 제 10조 제4호에 의거하여 사전 승낙 및 별도 계약없이<br>사적인 영리 및 홍보를 목적으로 하는 상업적 촬영에 대해 엄격히 금지하고 있습니다.<br><br>이용객 여러분의 불편과 피해를 미연에 방지하기 위한 조치이며,<br>만약 이를 위반할 경우 공식 대관료 상당의 비용을 부과 예정이오니 <br>이 점 양지해 주시기 바랍니다.<br><br>촬영 및 대관 문의 064-700-9000');
        cnt := cnt + 1;
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'2021제16호 태풍 ′링링′으로 H.U.G 호텔 이용 사전안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        H.U.G호텔 이용 관련 안내를 드리오니,<br>이용에 참고 부탁 드립니다.<br><br>- 아 래 -<br><br>제16호 태풍 ′링링′이 북상으로 고객님들께 이를 사전에 안내드리며,<br>호우 및 강풍 등 당일 날씨 상황에 따라,<br>고객 안전을 위해 수영장 이용 및 호텔 외부활동이 제한될 수 있으니 이용에 참고 드립니다.<br><br>■ 기간 : 2021년 3월 10일(수) *기상상황에 따라 변경 가능<br>
        ■ 문의 : 064-700-9000 / 카카오톡ID : H.U.G호텔<br><br>여행이 예정된 고객님은 미리 날씨 확인 부탁 드리며,<br>늘 고객님께 보다 편리하고 가치 있는 서비스를 제공할 것을 약속드립니다.<br><br>감사합니다.');
        cnt := cnt + 1;
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'2021년 3월 수영장 점검 및 보수기간 사전 안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        H.U.G호텔 수영장을 찾아주시는 고객님들께 깊은 감사드립니다.<br>현재 시행 중인 수영장 시설물 점검 및 보수 공사를 안전하게 마무리하기 위해<br>아래와 같이 스트란트 휴장 기간을 조정하오니,<br>고객님들의 깊은 양해 부탁드립니다<br><br>ㅡ 아 래 ㅡ<br><br>■ 휴장 기간 : 2021년 3월 15(월) ~ 3월 17일(수)<br>■ 개장 일시 : 2021년 3월 18일(목) 14:00<br>■ 장소 및 문의 : 스트란트 (064-700-9054)<br>
        ■ 내용 : 수영장 용수 교체, 시설물 점검 및 보수<br><br><br>앞으로도 저희 H.U.G호텔은 고객님들께 안전하고 쾌적한 환경을 조성하고<br>보다 편리하고 가치 있는 서비스를 제공해드릴 것을 약속드립니다.<br><br>감사합니다.');
        cnt := cnt + 1;
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'영상정보처리기기 운영·관리 방침 변경 안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        H.U.G호텔 영상정보처리기기 운영·관리 방침이 개정되어 변경 사항을 사전에 안내하고자 합니다.<br><br>고객님의 개인정보를 소중히 보호하며, 언제나 노력하는 H.U.G호텔이 되겠습니다.<br>감사합니다.<br><br><br>■ 적용시점: 2021년 3월 28일<br>■ 변경내용<br>1) 설치대수, 설치 위치 및 촬영범위<br>
        2) 관리책임자 및 접근권한자<br>3) 영상정보처리기기 설치 및 관리 등의 위탁에 관한 사항<br>※ 자세한 사항은 향후 고지될 개정 영상정보처리기기 운영·관리 방침을 참조해주시기 바랍니다.');
        cnt := cnt + 1;
        insert into notice (nNo, title, regdate, contents) values (seq_notice_nNo.nextval,'개인정보 처리 수탁사 변경 안내', (sysdate-200)+(notice_cnt+cnt), '안녕하세요. H.U.G호텔입니다.<br><br>
        H.U.G호텔 이용해 주시는 여러분들께 진심으로 감사 드리며, 홈페이지/전산 시스템을 위탁운영하고 있는 수탁사인 한화에스엔씨 주식회사가 한화시스템 주식회사와 합병함에 따라 수탁사가 변경됨을 알려드리오니 이용에 참고하시기 바랍니다.<br><br><br>■ 적용시점: 2021년 4월 2일<br>
        ■ 변경내용: 한화에스엔씨 주식회사 → 한화시스템 주식회사<br><br>H.U.G호텔은 소중한 정보를 보다 안전하게 관리하기 위하여 더욱 노력하겠습니다.<br>감사합니다.<br>');
             
        notice_cnt := notice_cnt + 1;       
        cnt := cnt + 1;
        
    END LOOP;
END;

commit;