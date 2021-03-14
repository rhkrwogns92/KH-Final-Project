/*------------------------------- 객실/객실정보 테이블 삭제 -------------------------------*/
drop table guestRoom;
drop table guestRoomInfo;
/*------------------------------- 객실 테이블 생성 -------------------------------*/
create table guestRoom(
guestRoomName varchar2(200) primary key,
guestRoomContents1 varchar2(1000) not null,
guestRoomContents2 varchar2(1000) not null,
guestRoomService1 varchar2(2000) not null,
guestRoomService2 varchar2(2000) not null,
guestRoomAmenity varchar2(2000) not null,
guestRoomInformation varchar2(1000) not null,
guestRoomImage1 varchar2(200) not null,
guestRoomImage2 varchar2(200) not null,
guestRoomImage3 varchar2(200) not null,
guestRoomImage4 varchar2(200) not null
);
/*------------------------------- 객실정보 테이블 생성 -------------------------------*/
create table guestRoomInfo(
guestRoomNo number not null,
guestRoomName varchar2(200) not null,
guestRoomPrice number not null,
guestRoomView varchar2(200) not null,
guestRoomArea number not null,
guestRoomBedType varchar2(200) not null,
standardPersonnel number not null,
adultPrice number not null,
childPrice number not null,
standardNo number null,
primary key(guestRoomNo),
foreign key(guestRoomName) references guestRoom(guestRoomName)
);
/*------------------------------- 객실 테이블 insert -------------------------------*/
insert into guestRoom
values('스탠다드','모던하면서도 아늑한 인테리어의 스탠다드 룸','편안한 분위기와 세련된 실내 디자인의 스탠다드 룸은 45평방미터의 공간으로 안락하고 편안한 휴식을 제공합니다.','무료 WIFI,위성 TV 58개채널,커피,미네랄 워터 2병,투숙 1박당 미니바 1회 무료 제공','55인치 FULL HD TV,개인용 금고,녹차/홍차(티백),커피포트','배쓰 어메니티 5종,배쓰타올,목욕용 가운,샤워캡,머리 빗,면봉,에머리보드,헤어드라이어','성수기 시즌 체크 인/아웃 시간은 조정될 수 있습니다.,호텔 내 유아용 킥보드 및 전동 퀵보드 사용은 엄격하게 제한됩니다.','스탠다드1.jpg','스탠다드2.jpg','스탠다드3.jpg','스탠다드4.jpg');
insert into guestRoom
values('슈페리어','침실과 거실이 하나로 이어지는 특별한 공간 구성과 모던한 감각, 슈페리어 룸','편안한 분위기와 세련된 실내 디자인의 슈페리어 룸은 65평방미터의 공간으로 안락하고 편안한 휴식을 제공합니다.','무료 WIFI,위성 TV 58개채널,네스프레소 커피머신,녹차/홍차(티백),커피포트,투숙 1박당 미니바 1회 무료 제공','55인치 FULL HD TV,개인용 금고,미네랄 워터 2병,커피캡슐3개','배쓰 어메니티 5종,배쓰타올,목욕용 가운,샤워캡,머리 빗,면봉,에머리보드,헤어드라이어','성수기 시즌 체크 인/아웃 시간은 조정될 수 있습니다.,호텔 내 유아용 킥보드 및 전동 퀵보드 사용은 엄격하게 제한됩니다.','슈페리어1.jpg','슈페리어2.jpg','슈페리어3.jpg','슈페리어4.jpg');
insert into guestRoom
values('디럭스','편안한 분위기의 침실과 우아한 감성의 거실이 분리되어 독립적 공간 활용이 매력적인 디럭스 룸','편안한 분위기와 세련된 실내 디자인의 디럭스 룸은 85평방미터의 공간으로 안락하고 편안한 휴식을 제공합니다.','무료 WIFI,55인치 FULL HD TV(침실),사운드 바,개인용 금고,커피캡슐6개,미네랄 워터 2병,투숙 1박당 미니바 1회 무료 제공','65인치 FULL HD TV(거실),위성 TV 58개 채널,블루레이플레이어,네스프레소 커피머신,녹차/홍차(티백),커피포트','배쓰 어메니티 5종,배쓰타올,목욕용 가운,샤워캡,머리 빗,면봉,에머리보드,헤어드라이어','성수기 시즌 체크 인/아웃 시간은 조정될 수 있습니다.,호텔 내 유아용 킥보드 및 전동 퀵보드 사용은 엄격하게 제한됩니다.','디럭스1.jpg','디럭스2.jpg','디럭스3.jpg','디럭스4.jpg');
insert into guestRoom
values('로얄','고급스러운 색채와 감각적인 분위기를 지닌 풀빌라의 정석, 로얄 풀빌라 룸','전용 POOL을 보유한 로얄 풀빌라는 마치 먼 휴양지에 와 있는 듯한 이국적인 분위기를 느끼게 해줍니다.','전용 Pool,86인치 FULL HD TV(거실),위성TV 58개 채널,개인용 금고,커피캡슐 6개,미네랄 워터 2병,투숙 1박당 미니바 1회 무료 제공','무료 WIFI,43인치 FULL HD TV(침실),와인셀러,네스프레소 커피머신,녹차/홍차(티백),커피포트','배쓰 어메니티 5종,배쓰타올,목욕용 가운,샤워캡,머리 빗,면봉,에머리보드,헤어드라이어','성수기 시즌 체크 인/아웃 시간은 조정될 수 있습니다.,호텔 내 유아용 킥보드 및 전동 퀵보드 사용은 엄격하게 제한됩니다.','로얄1.jpg','로얄2.jpg','로얄3.jpg','로얄4.jpg');
/*------------------------------- 객실정보 테이블 insert -------------------------------*/
insert into guestRoomInfo
values(1201,'스탠다드',320000,'산/바다',45,'TWIN/DOUBLE',2,30000,50000,1);
insert into guestRoomInfo
values(1202,'스탠다드',320000,'산',45,'TWIN',2,30000,50000,0);
insert into guestRoomInfo
values(1203,'스탠다드',320000,'바다',45,'DOUBLE',2,30000,50000,0);
insert into guestRoomInfo
values(1204,'스탠다드',320000,'산/바다',45,'DOUBLE',2,30000,50000,0);
insert into guestRoomInfo
values(1205,'스탠다드',320000,'바다',45,'DOUBLE',2,30000,50000,0);
insert into guestRoomInfo
values(1301,'스탠다드',320000,'산/바다',45,'TWIN',2,30000,50000,0);
insert into guestRoomInfo
values(1302,'스탠다드',320000,'산/바다',45,'TWIN',2,30000,50000,0);
insert into guestRoomInfo
values(1303,'스탠다드',320000,'산',45,'TWIN',2,30000,50000,0);
insert into guestRoomInfo
values(1304,'스탠다드',320000,'산/바다',45,'DOUBLE',2,30000,50000,0);
insert into guestRoomInfo
values(1305,'스탠다드',320000,'산/바다',45,'TWIN',2,30000,50000,0);


insert into guestRoomInfo
values(1401,'슈페리어',450000,'산/바다',65,'TWIN/DOUBLE',3,40000,60000,1);
insert into guestRoomInfo
values(1402,'슈페리어',450000,'바다',65,'DOUBLE',3,40000,60000,0);
insert into guestRoomInfo
values(1403,'슈페리어',450000,'산',65,'TWIN/DOUBLE',3,40000,60000,0);
insert into guestRoomInfo
values(1404,'슈페리어',450000,'바다',65,'TWIN',3,40000,60000,0);
insert into guestRoomInfo
values(1501,'슈페리어',450000,'산/바다',65,'TWIN/DOUBLE',3,40000,60000,0);
insert into guestRoomInfo
values(1502,'슈페리어',450000,'산',65,'DOUBLE',3,40000,60000,0);
insert into guestRoomInfo
values(1503,'슈페리어',450000,'산/바다',65,'TWIN',3,40000,60000,0);
insert into guestRoomInfo
values(1504,'슈페리어',450000,'바다',65,'TWIN/DOUBLE',3,40000,60000,0);


insert into guestRoomInfo
values(1701,'디럭스',550000,'산/바다',85,'DOUBLE/QUEEN',4,50000,70000,1);
insert into guestRoomInfo
values(1702,'디럭스',550000,'산',85,'QUEEN',4,50000,70000,0);
insert into guestRoomInfo
values(1703,'디럭스',550000,'바다',85,'DOUBLE/QUEEN',4,50000,70000,0);
insert into guestRoomInfo
values(1801,'디럭스',550000,'산',85,'DOUBLE',4,50000,70000,0);
insert into guestRoomInfo
values(1802,'디럭스',550000,'산/바다',85,'DOUBLE/QUEEN',4,50000,70000,0);
insert into guestRoomInfo
values(1803,'디럭스',550000,'산/바다',85,'QUEEN',4,50000,70000,0);

insert into guestRoomInfo
values(1901,'로얄',850000,'산/바다',145,'QUEEN/KING',6,50000,90000,1);
insert into guestRoomInfo
values(1902,'로얄',850000,'산/바다',145,'QUEEN/KING',6,50000,90000,0);


commit;