/*------------------------------- ����/�������� ���̺� ���� -------------------------------*/
drop table guestRoom;
drop table guestRoomInfo;
/*------------------------------- ���� ���̺� ���� -------------------------------*/
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
/*------------------------------- �������� ���̺� ���� -------------------------------*/
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
/*------------------------------- ���� ���̺� insert -------------------------------*/
insert into guestRoom
values('���Ĵٵ�','����ϸ鼭�� �ƴ��� ���׸����� ���Ĵٵ� ��','����� ������� ���õ� �ǳ� �������� ���Ĵٵ� ���� 45�������� �������� �ȶ��ϰ� ����� �޽��� �����մϴ�.','���� WIFI,���� TV 58��ä��,Ŀ��,�̳׶� ���� 2��,���� 1�ڴ� �̴Ϲ� 1ȸ ���� ����','55��ġ FULL HD TV,���ο� �ݰ�,����/ȫ��(Ƽ��),Ŀ����Ʈ','�農 ��޴�Ƽ 5��,�農Ÿ��,���� ����,����ĸ,�Ӹ� ��,���,���Ӹ�����,������̾�','������ ���� üũ ��/�ƿ� �ð��� ������ �� �ֽ��ϴ�.,ȣ�� �� ���ƿ� ű���� �� ���� ������ ����� �����ϰ� ���ѵ˴ϴ�.','���Ĵٵ�1.jpg','���Ĵٵ�2.jpg','���Ĵٵ�3.jpg','���Ĵٵ�4.jpg');
insert into guestRoom
values('���丮��','ħ�ǰ� �Ž��� �ϳ��� �̾����� Ư���� ���� ������ ����� ����, ���丮�� ��','����� ������� ���õ� �ǳ� �������� ���丮�� ���� 65�������� �������� �ȶ��ϰ� ����� �޽��� �����մϴ�.','���� WIFI,���� TV 58��ä��,�׽������� Ŀ�Ǹӽ�,����/ȫ��(Ƽ��),Ŀ����Ʈ,���� 1�ڴ� �̴Ϲ� 1ȸ ���� ����','55��ġ FULL HD TV,���ο� �ݰ�,�̳׶� ���� 2��,Ŀ��ĸ��3��','�農 ��޴�Ƽ 5��,�農Ÿ��,���� ����,����ĸ,�Ӹ� ��,���,���Ӹ�����,������̾�','������ ���� üũ ��/�ƿ� �ð��� ������ �� �ֽ��ϴ�.,ȣ�� �� ���ƿ� ű���� �� ���� ������ ����� �����ϰ� ���ѵ˴ϴ�.','���丮��1.jpg','���丮��2.jpg','���丮��3.jpg','���丮��4.jpg');
insert into guestRoom
values('�𷰽�','����� �������� ħ�ǰ� ����� ������ �Ž��� �и��Ǿ� ������ ���� Ȱ���� �ŷ����� �𷰽� ��','����� ������� ���õ� �ǳ� �������� �𷰽� ���� 85�������� �������� �ȶ��ϰ� ����� �޽��� �����մϴ�.','���� WIFI,55��ġ FULL HD TV(ħ��),���� ��,���ο� �ݰ�,Ŀ��ĸ��6��,�̳׶� ���� 2��,���� 1�ڴ� �̴Ϲ� 1ȸ ���� ����','65��ġ FULL HD TV(�Ž�),���� TV 58�� ä��,��緹���÷��̾�,�׽������� Ŀ�Ǹӽ�,����/ȫ��(Ƽ��),Ŀ����Ʈ','�農 ��޴�Ƽ 5��,�農Ÿ��,���� ����,����ĸ,�Ӹ� ��,���,���Ӹ�����,������̾�','������ ���� üũ ��/�ƿ� �ð��� ������ �� �ֽ��ϴ�.,ȣ�� �� ���ƿ� ű���� �� ���� ������ ����� �����ϰ� ���ѵ˴ϴ�.','�𷰽�1.jpg','�𷰽�2.jpg','�𷰽�3.jpg','�𷰽�4.jpg');
insert into guestRoom
values('�ξ�','��޽����� ��ä�� �������� �����⸦ ���� Ǯ������ ����, �ξ� Ǯ���� ��','���� POOL�� ������ �ξ� Ǯ����� ��ġ �� �޾����� �� �ִ� ���� �̱����� �����⸦ ������ ���ݴϴ�.','���� Pool,86��ġ FULL HD TV(�Ž�),����TV 58�� ä��,���ο� �ݰ�,Ŀ��ĸ�� 6��,�̳׶� ���� 2��,���� 1�ڴ� �̴Ϲ� 1ȸ ���� ����','���� WIFI,43��ġ FULL HD TV(ħ��),���μ���,�׽������� Ŀ�Ǹӽ�,����/ȫ��(Ƽ��),Ŀ����Ʈ','�農 ��޴�Ƽ 5��,�農Ÿ��,���� ����,����ĸ,�Ӹ� ��,���,���Ӹ�����,������̾�','������ ���� üũ ��/�ƿ� �ð��� ������ �� �ֽ��ϴ�.,ȣ�� �� ���ƿ� ű���� �� ���� ������ ����� �����ϰ� ���ѵ˴ϴ�.','�ξ�1.jpg','�ξ�2.jpg','�ξ�3.jpg','�ξ�4.jpg');
/*------------------------------- �������� ���̺� insert -------------------------------*/
insert into guestRoomInfo
values(1201,'���Ĵٵ�',320000,'��/�ٴ�',45,'TWIN/DOUBLE',2,30000,50000,1);
insert into guestRoomInfo
values(1202,'���Ĵٵ�',320000,'��',45,'TWIN',2,30000,50000,0);
insert into guestRoomInfo
values(1203,'���Ĵٵ�',320000,'�ٴ�',45,'DOUBLE',2,30000,50000,0);
insert into guestRoomInfo
values(1204,'���Ĵٵ�',320000,'��/�ٴ�',45,'DOUBLE',2,30000,50000,0);
insert into guestRoomInfo
values(1205,'���Ĵٵ�',320000,'�ٴ�',45,'DOUBLE',2,30000,50000,0);
insert into guestRoomInfo
values(1301,'���Ĵٵ�',320000,'��/�ٴ�',45,'TWIN',2,30000,50000,0);
insert into guestRoomInfo
values(1302,'���Ĵٵ�',320000,'��/�ٴ�',45,'TWIN',2,30000,50000,0);
insert into guestRoomInfo
values(1303,'���Ĵٵ�',320000,'��',45,'TWIN',2,30000,50000,0);
insert into guestRoomInfo
values(1304,'���Ĵٵ�',320000,'��/�ٴ�',45,'DOUBLE',2,30000,50000,0);
insert into guestRoomInfo
values(1305,'���Ĵٵ�',320000,'��/�ٴ�',45,'TWIN',2,30000,50000,0);


insert into guestRoomInfo
values(1401,'���丮��',450000,'��/�ٴ�',65,'TWIN/DOUBLE',3,40000,60000,1);
insert into guestRoomInfo
values(1402,'���丮��',450000,'�ٴ�',65,'DOUBLE',3,40000,60000,0);
insert into guestRoomInfo
values(1403,'���丮��',450000,'��',65,'TWIN/DOUBLE',3,40000,60000,0);
insert into guestRoomInfo
values(1404,'���丮��',450000,'�ٴ�',65,'TWIN',3,40000,60000,0);
insert into guestRoomInfo
values(1501,'���丮��',450000,'��/�ٴ�',65,'TWIN/DOUBLE',3,40000,60000,0);
insert into guestRoomInfo
values(1502,'���丮��',450000,'��',65,'DOUBLE',3,40000,60000,0);
insert into guestRoomInfo
values(1503,'���丮��',450000,'��/�ٴ�',65,'TWIN',3,40000,60000,0);
insert into guestRoomInfo
values(1504,'���丮��',450000,'�ٴ�',65,'TWIN/DOUBLE',3,40000,60000,0);


insert into guestRoomInfo
values(1701,'�𷰽�',550000,'��/�ٴ�',85,'DOUBLE/QUEEN',4,50000,70000,1);
insert into guestRoomInfo
values(1702,'�𷰽�',550000,'��',85,'QUEEN',4,50000,70000,0);
insert into guestRoomInfo
values(1703,'�𷰽�',550000,'�ٴ�',85,'DOUBLE/QUEEN',4,50000,70000,0);
insert into guestRoomInfo
values(1801,'�𷰽�',550000,'��',85,'DOUBLE',4,50000,70000,0);
insert into guestRoomInfo
values(1802,'�𷰽�',550000,'��/�ٴ�',85,'DOUBLE/QUEEN',4,50000,70000,0);
insert into guestRoomInfo
values(1803,'�𷰽�',550000,'��/�ٴ�',85,'QUEEN',4,50000,70000,0);

insert into guestRoomInfo
values(1901,'�ξ�',850000,'��/�ٴ�',145,'QUEEN/KING',6,50000,90000,1);
insert into guestRoomInfo
values(1902,'�ξ�',850000,'��/�ٴ�',145,'QUEEN/KING',6,50000,90000,0);


commit;