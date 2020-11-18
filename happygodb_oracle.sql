
create table ADDRESS
(
  id       NUMBER(11) not null primary key,
  contacts NVARCHAR2(255) not null,
  address  NVARCHAR2(300) not null,
  tel      NVARCHAR2(255) not null,
  user_id  NUMBER(11) not null
);

create table ADS
(
  id     NUMBER(11) not null primary key,
  title  NVARCHAR2(255),
  remark NVARCHAR2(2000),
  img    NVARCHAR2(255),
  url    NVARCHAR2(255),
  target NVARCHAR2(255)
);

create table CITY
(
  id   NUMBER(11) not null primary key,
  city NVARCHAR2(50) not null,
  pid  NUMBER(11) not null
)
;
create table NEWS
(
  id            NUMBER(11) not null primary key,
  title         NVARCHAR2(255) not null,
  content       NVARCHAR2(2000) not null,
  creation_time DATE not null
)
;
create table ORDERS
(
  id            NVARCHAR2(255) not null primary key,
  user_name     NVARCHAR2(255) not null,
  address       NVARCHAR2(255) not null,
  creation_time DATE not null,
  tel           NVARCHAR2(255) not null,
  total_amount  NUMBER(20,2) not null,
  status        NUMBER(11) not null,
  user_id       NUMBER(11) not null
)
;
create table ORDER_DETAIL
(
  id            NUMBER(11) not null primary key,
  product_name  NVARCHAR2(255) not null,
  product_price NUMBER(20,2) not null,
  product_count NUMBER(11) not null,
  order_id      NVARCHAR2(255) not null,
  product_id    NUMBER(11)
)
;
create table PRODUCT
(
  id          NUMBER(11) not null primary key,
  name        NVARCHAR2(255) not null,
  url         NVARCHAR2(255),
  price       NUMBER(20,2),
  stock       NUMBER(11) not null,
  detail      NVARCHAR2(2000),
  category_id NUMBER(11) not null
)
;
create table PRODUCT_CATEGORY
(
  id        NUMBER(11) not null primary key,
  name      NVARCHAR2(255) not null,
  parent_id NUMBER(11)
)
;
create table PROVINCIAL
(
  id         NUMBER(11) not null primary key,
  provincial NVARCHAR2(50)
)
;
create table USERS
(
  id       NUMBER(11) not null primary key,
  login    NVARCHAR2(255) not null,
  name     NVARCHAR2(255) not null,
  pwd      NVARCHAR2(255) not null,
  sex      NVARCHAR2(255),
  phone    NVARCHAR2(255),
  photo    NVARCHAR2(255),
  birthday DATE,
  ismaster NUMBER(1) not null
)
;
insert into ADDRESS (id, contacts, address, tel, user_id)
values (1, 'С��', '���ϳ�ɳ��´��ĳĳ�ֵ�10��', '18866665555', 3);
insert into ADDRESS (id, contacts, address, tel, user_id)
values (3, 'lewin', '���ϳ�ɳ��´���׺׼�԰', '18812345678', 3);
insert into ADDRESS (id, contacts, address, tel, user_id)
values (6, '������', '���ϳ�ɳܽ����ĳĳ�ֵ�99��', '0744-6635352', 1);
insert into ADDRESS (id, contacts, address, tel, user_id)
values (7, '������', '���ϳ�ɳ������ĳĳ�ֵ�200��', '1399999999', 1);
commit;

insert into ADS (id, title, remark, img, url, target)
values (1, '��������', '��������', 'web-101-101-1.jpg', null, null);
insert into ADS (id, title, remark, img, url, target)
values (2, null, null, 'web-101-101-2.jpg', null, null);
insert into ADS (id, title, remark, img, url, target)
values (3, null, null, 'web-101-101-3.jpg', null, null);
insert into ADS (id, title, remark, img, url, target)
values (4, null, null, 'web-101-101-4.jpg', null, null);
insert into ADS (id, title, remark, img, url, target)
values (5, null, null, 'web-101-101-5.jpg', null, null);
commit;

insert into CITY (id, city, pid)
values (1, '������', 1);
insert into CITY (id, city, pid)
values (2, '�����', 2);
insert into CITY (id, city, pid)
values (3, '�Ϻ���', 3);
insert into CITY (id, city, pid)
values (4, '������', 4);
insert into CITY (id, city, pid)
values (5, '�ػʵ���', 5);
insert into CITY (id, city, pid)
values (6, '��̨��', 5);
insert into CITY (id, city, pid)
values (7, '�е���', 5);
insert into CITY (id, city, pid)
values (8, '������', 5);
insert into CITY (id, city, pid)
values (9, '������', 5);
insert into CITY (id, city, pid)
values (10, 'ʯ��ׯ��', 5);
insert into CITY (id, city, pid)
values (11, '��ɽ��', 5);
insert into CITY (id, city, pid)
values (12, '�ȷ���', 5);
insert into CITY (id, city, pid)
values (13, '������', 5);
insert into CITY (id, city, pid)
values (14, '��ˮ��', 5);
insert into CITY (id, city, pid)
values (15, '�żҿ���', 5);
insert into CITY (id, city, pid)
values (16, '��Ȫ��', 6);
insert into CITY (id, city, pid)
values (17, '������', 6);
insert into CITY (id, city, pid)
values (18, '������', 6);
insert into CITY (id, city, pid)
values (19, '������', 6);
insert into CITY (id, city, pid)
values (20, '̫ԭ��', 6);
insert into CITY (id, city, pid)
values (21, '������', 6);
insert into CITY (id, city, pid)
values (22, '�˳���', 6);
insert into CITY (id, city, pid)
values (23, '�ٷ���', 6);
insert into CITY (id, city, pid)
values (24, '������', 6);
insert into CITY (id, city, pid)
values (25, '˷����', 6);
insert into CITY (id, city, pid)
values (26, '��ͬ��', 6);
insert into CITY (id, city, pid)
values (27, '̨����', 7);
insert into CITY (id, city, pid)
values (28, '̨����', 7);
insert into CITY (id, city, pid)
values (29, '������', 7);
insert into CITY (id, city, pid)
values (30, '�û���', 7);
insert into CITY (id, city, pid)
values (31, '������', 7);
insert into CITY (id, city, pid)
values (32, '������', 7);
insert into CITY (id, city, pid)
values (33, '������', 7);
insert into CITY (id, city, pid)
values (34, '��԰��', 7);
insert into CITY (id, city, pid)
values (35, '������', 7);
insert into CITY (id, city, pid)
values (36, '������', 7);
insert into CITY (id, city, pid)
values (37, '������', 7);
insert into CITY (id, city, pid)
values (38, '������', 7);
insert into CITY (id, city, pid)
values (39, '��¡��', 7);
insert into CITY (id, city, pid)
values (40, '������', 7);
insert into CITY (id, city, pid)
values (41, '������', 7);
insert into CITY (id, city, pid)
values (42, '�����', 7);
insert into CITY (id, city, pid)
values (43, '������', 7);
insert into CITY (id, city, pid)
values (44, '̨����', 7);
insert into CITY (id, city, pid)
values (45, '̨����', 7);
insert into CITY (id, city, pid)
values (46, '̨����', 7);
insert into CITY (id, city, pid)
values (47, '̨����', 7);
insert into CITY (id, city, pid)
values (48, '��Ͷ��', 7);
insert into CITY (id, city, pid)
values (49, '̨����', 7);
insert into CITY (id, city, pid)
values (50, '��«����', 8);
insert into CITY (id, city, pid)
values (51, '������', 8);
insert into CITY (id, city, pid)
values (52, 'Ӫ����', 8);
insert into CITY (id, city, pid)
values (53, '������', 8);
insert into CITY (id, city, pid)
values (54, '������', 8);
insert into CITY (id, city, pid)
values (55, '������', 8);
insert into CITY (id, city, pid)
values (56, '�̽���', 8);
insert into CITY (id, city, pid)
values (57, '��Ϫ��', 8);
insert into CITY (id, city, pid)
values (58, '������', 8);
insert into CITY (id, city, pid)
values (59, '��˳��', 8);
insert into CITY (id, city, pid)
values (60, '������', 8);
insert into CITY (id, city, pid)
values (61, '������', 8);
insert into CITY (id, city, pid)
values (62, '������', 8);
insert into CITY (id, city, pid)
values (63, '��ɽ��', 8);
insert into CITY (id, city, pid)
values (64, '������', 9);
insert into CITY (id, city, pid)
values (65, 'ͨ����', 9);
insert into CITY (id, city, pid)
values (66, '�׳���', 9);
insert into CITY (id, city, pid)
values (67, '��ɽ��', 9);
insert into CITY (id, city, pid)
values (68, '��ԭ��', 9);
insert into CITY (id, city, pid)
values (69, '��Դ��', 9);
insert into CITY (id, city, pid)
values (70, '�ӱ߳�����������', 9);
insert into CITY (id, city, pid)
values (71, '��ƽ��', 9);
insert into CITY (id, city, pid)
values (72, '������', 9);
insert into CITY (id, city, pid)
values (73, '�� �� ��', 10);
insert into CITY (id, city, pid)
values (74, '��������', 10);
insert into CITY (id, city, pid)
values (75, '�� �� ��', 10);
insert into CITY (id, city, pid)
values (76, '���˰������', 10);
insert into CITY (id, city, pid)
values (77, '�� �� ��', 10);
insert into CITY (id, city, pid)
values (78, '���������', 10);
insert into CITY (id, city, pid)
values (79, '�� �� ��', 10);
insert into CITY (id, city, pid)
values (80, '�� �� ��', 10);
insert into CITY (id, city, pid)
values (81, 'ĵ������', 10);
insert into CITY (id, city, pid)
values (82, '��̨����', 10);
insert into CITY (id, city, pid)
values (83, '�� �� ��', 10);
insert into CITY (id, city, pid)
values (84, '��ľ˹��', 10);
insert into CITY (id, city, pid)
values (85, '˫Ѽɽ��', 1);
insert into CITY (id, city, pid)
values (86, '������', 11);
insert into CITY (id, city, pid)
values (87, '��Ǩ��', 11);
insert into CITY (id, city, pid)
values (88, '������', 11);
insert into CITY (id, city, pid)
values (89, '̩����', 11);
insert into CITY (id, city, pid)
values (90, '������', 11);
insert into CITY (id, city, pid)
values (91, '������', 11);
insert into CITY (id, city, pid)
values (92, '�γ���', 11);
insert into CITY (id, city, pid)
values (93, '������', 11);
insert into CITY (id, city, pid)
values (94, '����', 11);
insert into CITY (id, city, pid)
values (95, '���Ƹ���', 11);
insert into CITY (id, city, pid)
values (96, '��ͨ��', 11);
insert into CITY (id, city, pid)
values (97, '������', 11);
insert into CITY (id, city, pid)
values (98, '�Ͼ���', 11);
insert into CITY (id, city, pid)
values (99, '������', 12);
insert into CITY (id, city, pid)
values (100, '������', 12);
commit;

insert into CITY (id, city, pid)
values (101, '̨����', 12);
insert into CITY (id, city, pid)
values (102, '������', 12);
insert into CITY (id, city, pid)
values (103, '������', 12);
insert into CITY (id, city, pid)
values (104, '������', 12);
insert into CITY (id, city, pid)
values (105, '��ˮ��', 12);
insert into CITY (id, city, pid)
values (106, '��ɽ��', 12);
insert into CITY (id, city, pid)
values (107, '������', 12);
insert into CITY (id, city, pid)
values (108, '����', 12);
insert into CITY (id, city, pid)
values (109, '������', 12);
insert into CITY (id, city, pid)
values (110, '��ɽ��', 13);
insert into CITY (id, city, pid)
values (111, '������', 13);
insert into CITY (id, city, pid)
values (112, '������', 13);
insert into CITY (id, city, pid)
values (113, '������', 13);
insert into CITY (id, city, pid)
values (114, 'ͭ����', 13);
insert into CITY (id, city, pid)
values (115, '������', 13);
insert into CITY (id, city, pid)
values (116, '������', 13);
insert into CITY (id, city, pid)
values (117, '�ߺ���', 13);
insert into CITY (id, city, pid)
values (118, '������', 13);
insert into CITY (id, city, pid)
values (119, '������', 13);
insert into CITY (id, city, pid)
values (120, '������', 13);
insert into CITY (id, city, pid)
values (121, '�Ϸ���', 13);
insert into CITY (id, city, pid)
values (122, '��ɽ��', 13);
insert into CITY (id, city, pid)
values (123, '������', 13);
insert into CITY (id, city, pid)
values (124, '������', 13);
insert into CITY (id, city, pid)
values (125, '������', 13);
insert into CITY (id, city, pid)
values (126, '������', 13);
insert into CITY (id, city, pid)
values (127, '������', 14);
insert into CITY (id, city, pid)
values (128, '������', 14);
insert into CITY (id, city, pid)
values (129, '������', 14);
insert into CITY (id, city, pid)
values (130, 'Ȫ����', 14);
insert into CITY (id, city, pid)
values (131, '������', 14);
insert into CITY (id, city, pid)
values (132, '��ƽ��', 14);
insert into CITY (id, city, pid)
values (133, '������', 14);
insert into CITY (id, city, pid)
values (134, '������', 14);
insert into CITY (id, city, pid)
values (135, '������', 14);
insert into CITY (id, city, pid)
values (136, 'ӥ̶��', 15);
insert into CITY (id, city, pid)
values (137, 'Ƽ����', 15);
insert into CITY (id, city, pid)
values (138, '������', 15);
insert into CITY (id, city, pid)
values (139, '�Ž���', 15);
insert into CITY (id, city, pid)
values (140, '������', 15);
insert into CITY (id, city, pid)
values (141, '��������', 15);
insert into CITY (id, city, pid)
values (142, '������', 15);
insert into CITY (id, city, pid)
values (143, '�˴���', 15);
insert into CITY (id, city, pid)
values (144, '������', 15);
insert into CITY (id, city, pid)
values (145, '������', 15);
insert into CITY (id, city, pid)
values (146, '�ϲ���', 15);
insert into CITY (id, city, pid)
values (147, '�ĳ���', 16);
insert into CITY (id, city, pid)
values (148, '������', 16);
insert into CITY (id, city, pid)
values (149, '�Ͳ���', 16);
insert into CITY (id, city, pid)
values (150, '������', 16);
insert into CITY (id, city, pid)
values (151, '������', 16);
insert into CITY (id, city, pid)
values (152, '��Ӫ��', 16);
insert into CITY (id, city, pid)
values (153, '��ׯ��', 16);
insert into CITY (id, city, pid)
values (154, '��̨��', 16);
insert into CITY (id, city, pid)
values (155, '������', 16);
insert into CITY (id, city, pid)
values (156, '�ൺ��', 16);
insert into CITY (id, city, pid)
values (157, '̩����', 16);
insert into CITY (id, city, pid)
values (158, '������', 16);
insert into CITY (id, city, pid)
values (159, '������', 16);
insert into CITY (id, city, pid)
values (160, 'Ϋ����', 16);
insert into CITY (id, city, pid)
values (161, '������', 16);
insert into CITY (id, city, pid)
values (162, '������', 16);
insert into CITY (id, city, pid)
values (163, '������', 16);
insert into CITY (id, city, pid)
values (164, '������', 17);
insert into CITY (id, city, pid)
values (165, 'פ�����', 17);
insert into CITY (id, city, pid)
values (166, '�����', 17);
insert into CITY (id, city, pid)
values (167, '�ױ���', 17);
insert into CITY (id, city, pid)
values (168, '������', 17);
insert into CITY (id, city, pid)
values (169, '������', 17);
insert into CITY (id, city, pid)
values (170, '������', 17);
insert into CITY (id, city, pid)
values (171, 'ƽ��ɽ��', 17);
insert into CITY (id, city, pid)
values (172, '����Ͽ��', 17);
insert into CITY (id, city, pid)
values (173, '������', 17);
insert into CITY (id, city, pid)
values (174, '������', 17);
insert into CITY (id, city, pid)
values (175, '��Դ��', 17);
insert into CITY (id, city, pid)
values (176, '֣����', 17);
insert into CITY (id, city, pid)
values (177, '������', 17);
insert into CITY (id, city, pid)
values (178, '������', 17);
insert into CITY (id, city, pid)
values (179, '�����', 17);
insert into CITY (id, city, pid)
values (180, '�ܿ���', 17);
insert into CITY (id, city, pid)
values (181, '�����', 17);
insert into CITY (id, city, pid)
values (182, '�人��', 18);
insert into CITY (id, city, pid)
values (183, '�Ƹ���', 18);
insert into CITY (id, city, pid)
values (184, '��ʯ��', 18);
insert into CITY (id, city, pid)
values (185, '�差��', 18);
insert into CITY (id, city, pid)
values (186, '������', 18);
insert into CITY (id, city, pid)
values (187, 'Ǳ����', 18);
insert into CITY (id, city, pid)
values (188, '��ʩ����������������', 18);
insert into CITY (id, city, pid)
values (189, '��ũ������', 18);
insert into CITY (id, city, pid)
values (190, '������', 18);
insert into CITY (id, city, pid)
values (191, '�˲���', 18);
insert into CITY (id, city, pid)
values (192, 'Т����', 18);
insert into CITY (id, city, pid)
values (193, '������', 18);
insert into CITY (id, city, pid)
values (194, '������', 18);
insert into CITY (id, city, pid)
values (195, 'ʮ����', 18);
insert into CITY (id, city, pid)
values (196, '������', 18);
insert into CITY (id, city, pid)
values (197, '������', 18);
insert into CITY (id, city, pid)
values (198, '������', 18);
insert into CITY (id, city, pid)
values (199, '������', 19);
insert into CITY (id, city, pid)
values (200, '������', 19);
commit;

insert into CITY (id, city, pid)
values (201, '������', 19);
insert into CITY (id, city, pid)
values (202, '������', 19);
insert into CITY (id, city, pid)
values (203, '������', 19);
insert into CITY (id, city, pid)
values (204, '������', 19);
insert into CITY (id, city, pid)
values (205, '������', 19);
insert into CITY (id, city, pid)
values (206, '������', 19);
insert into CITY (id, city, pid)
values (207, '��̶��', 19);
insert into CITY (id, city, pid)
values (208, '¦����', 19);
insert into CITY (id, city, pid)
values (209, '��������������������', 19);
insert into CITY (id, city, pid)
values (210, '������', 19);
insert into CITY (id, city, pid)
values (211, '��ɳ��', 19);
insert into CITY (id, city, pid)
values (212, '�żҽ���', 19);
insert into CITY (id, city, pid)
values (213, '������', 20);
insert into CITY (id, city, pid)
values (214, '������', 20);
insert into CITY (id, city, pid)
values (215, '�麣��', 20);
insert into CITY (id, city, pid)
values (216, '������', 20);
insert into CITY (id, city, pid)
values (217, '�ع���', 20);
insert into CITY (id, city, pid)
values (218, '������', 20);
insert into CITY (id, city, pid)
values (219, '��Զ��', 20);
insert into CITY (id, city, pid)
values (220, '��Դ��', 20);
insert into CITY (id, city, pid)
values (221, '÷����', 20);
insert into CITY (id, city, pid)
values (222, 'տ����', 20);
insert into CITY (id, city, pid)
values (223, '������', 20);
insert into CITY (id, city, pid)
values (224, '��ɽ��', 20);
insert into CITY (id, city, pid)
values (225, 'ï����', 20);
insert into CITY (id, city, pid)
values (226, '������', 20);
insert into CITY (id, city, pid)
values (227, '�Ƹ���', 20);
insert into CITY (id, city, pid)
values (228, '������', 20);
insert into CITY (id, city, pid)
values (229, '��ͷ��', 20);
insert into CITY (id, city, pid)
values (230, '��β��', 20);
insert into CITY (id, city, pid)
values (231, '��ɽ��', 20);
insert into CITY (id, city, pid)
values (232, '��ݸ��', 20);
insert into CITY (id, city, pid)
values (233, '������', 20);
insert into CITY (id, city, pid)
values (234, '��Ȫ��', 21);
insert into CITY (id, city, pid)
values (235, '��Ҵ��', 21);
insert into CITY (id, city, pid)
values (236, '��������', 21);
insert into CITY (id, city, pid)
values (237, '������', 21);
insert into CITY (id, city, pid)
values (238, '���ϲ���������', 21);
insert into CITY (id, city, pid)
values (239, '��ˮ��', 21);
insert into CITY (id, city, pid)
values (240, '������', 21);
insert into CITY (id, city, pid)
values (241, '���Ļ���������', 21);
insert into CITY (id, city, pid)
values (242, '¤����', 21);
insert into CITY (id, city, pid)
values (243, '������', 21);
insert into CITY (id, city, pid)
values (244, '������', 21);
insert into CITY (id, city, pid)
values (245, '������', 21);
insert into CITY (id, city, pid)
values (246, '�����', 21);
insert into CITY (id, city, pid)
values (247, 'ƽ����', 21);
insert into CITY (id, city, pid)
values (248, 'üɽ��', 22);
insert into CITY (id, city, pid)
values (249, '���β���������', 22);
insert into CITY (id, city, pid)
values (250, '�㰲��', 22);
insert into CITY (id, city, pid)
values (251, '������', 22);
insert into CITY (id, city, pid)
values (252, '������', 22);
insert into CITY (id, city, pid)
values (253, '��Ԫ��', 22);
insert into CITY (id, city, pid)
values (254, '�Թ���', 22);
insert into CITY (id, city, pid)
values (255, '���Ӳ���Ǽ��������', 22);
insert into CITY (id, city, pid)
values (256, '��ɽ��', 22);
insert into CITY (id, city, pid)
values (257, '��ɽ����������', 22);
insert into CITY (id, city, pid)
values (258, '�ϳ���', 22);
insert into CITY (id, city, pid)
values (259, '������', 22);
insert into CITY (id, city, pid)
values (260, '������', 22);
insert into CITY (id, city, pid)
values (261, '������', 22);
insert into CITY (id, city, pid)
values (262, '�ڽ���', 22);
insert into CITY (id, city, pid)
values (263, '�˱���', 22);
insert into CITY (id, city, pid)
values (264, '������', 22);
insert into CITY (id, city, pid)
values (265, '�Ű���', 22);
insert into CITY (id, city, pid)
values (266, '��֦����', 22);
insert into CITY (id, city, pid)
values (267, '������', 22);
insert into CITY (id, city, pid)
values (268, '�ɶ���', 22);
insert into CITY (id, city, pid)
values (269, '��˳��', 23);
insert into CITY (id, city, pid)
values (270, 'ǭ�������嶱��������', 23);
insert into CITY (id, city, pid)
values (271, 'ǭ�ϲ���������������', 23);
insert into CITY (id, city, pid)
values (272, 'ǭ���ϲ���������������', 23);
insert into CITY (id, city, pid)
values (273, 'ͭ�ʵ���', 23);
insert into CITY (id, city, pid)
values (274, '�Ͻڵ���', 23);
insert into CITY (id, city, pid)
values (275, '������', 23);
insert into CITY (id, city, pid)
values (276, '����ˮ��', 23);
insert into CITY (id, city, pid)
values (277, '������', 23);
insert into CITY (id, city, pid)
values (278, '��ˮ����������', 24);
insert into CITY (id, city, pid)
values (279, '��������������', 24);
insert into CITY (id, city, pid)
values (280, '������', 24);
insert into CITY (id, city, pid)
values (281, '������', 24);
insert into CITY (id, city, pid)
values (282, '�ٸ���', 24);
insert into CITY (id, city, pid)
values (283, '��ͤ��������������', 24);
insert into CITY (id, city, pid)
values (284, '����', 24);
insert into CITY (id, city, pid)
values (285, '������', 24);
insert into CITY (id, city, pid)
values (286, '�ֶ�����������', 24);
insert into CITY (id, city, pid)
values (287, '��ָɽ��', 24);
insert into CITY (id, city, pid)
values (288, '�Ͳ���', 24);
insert into CITY (id, city, pid)
values (289, '������', 24);
insert into CITY (id, city, pid)
values (290, '�Ĳ���', 24);
insert into CITY (id, city, pid)
values (291, '������', 24);
insert into CITY (id, city, pid)
values (292, '������', 24);
insert into CITY (id, city, pid)
values (293, '������������������', 24);
insert into CITY (id, city, pid)
values (294, '������', 24);
insert into CITY (id, city, pid)
values (295, '��ɳ����������', 24);
insert into CITY (id, city, pid)
values (296, '��ͨ��', 25);
insert into CITY (id, city, pid)
values (297, '������', 25);
insert into CITY (id, city, pid)
values (298, '��˫���ɴ���������', 25);
insert into CITY (id, city, pid)
values (299, '�º���徰����������', 25);
insert into CITY (id, city, pid)
values (300, '��ɽ��', 25);
commit;

insert into CITY (id, city, pid)
values (301, '������', 25);
insert into CITY (id, city, pid)
values (302, '�������������', 25);
insert into CITY (id, city, pid)
values (303, 'ŭ��������������', 25);
insert into CITY (id, city, pid)
values (304, '��Ϫ��', 25);
insert into CITY (id, city, pid)
values (305, '��ӹ���������������', 25);
insert into CITY (id, city, pid)
values (306, '�ٲ���', 25);
insert into CITY (id, city, pid)
values (307, '��ɽ׳������������', 25);
insert into CITY (id, city, pid)
values (308, '��������������', 25);
insert into CITY (id, city, pid)
values (309, '������', 25);
insert into CITY (id, city, pid)
values (310, '˼é��', 25);
insert into CITY (id, city, pid)
values (311, '�������������', 25);
insert into CITY (id, city, pid)
values (312, '���ϲ���������', 26);
insert into CITY (id, city, pid)
values (313, '���ϲ���������', 26);
insert into CITY (id, city, pid)
values (314, '��������', 26);
insert into CITY (id, city, pid)
values (315, '�������������', 26);
insert into CITY (id, city, pid)
values (316, '��������������', 26);
insert into CITY (id, city, pid)
values (317, '������', 26);
insert into CITY (id, city, pid)
values (318, '�����ɹ������������', 26);
insert into CITY (id, city, pid)
values (319, '��������������', 26);
insert into CITY (id, city, pid)
values (320, 'μ����', 27);
insert into CITY (id, city, pid)
values (321, '������', 27);
insert into CITY (id, city, pid)
values (322, 'ͭ����', 27);
insert into CITY (id, city, pid)
values (323, '������', 27);
insert into CITY (id, city, pid)
values (324, '�Ӱ���', 27);
insert into CITY (id, city, pid)
values (325, '������', 27);
insert into CITY (id, city, pid)
values (326, '������', 27);
insert into CITY (id, city, pid)
values (327, '������', 27);
insert into CITY (id, city, pid)
values (328, '������', 27);
insert into CITY (id, city, pid)
values (329, '������', 27);
insert into CITY (id, city, pid)
values (330, '������', 28);
insert into CITY (id, city, pid)
values (331, '������', 28);
insert into CITY (id, city, pid)
values (332, '������', 28);
insert into CITY (id, city, pid)
values (333, '������', 28);
insert into CITY (id, city, pid)
values (334, '������', 28);
insert into CITY (id, city, pid)
values (335, '�ӳ���', 28);
insert into CITY (id, city, pid)
values (336, '������', 28);
insert into CITY (id, city, pid)
values (337, '������', 28);
insert into CITY (id, city, pid)
values (338, '�����', 28);
insert into CITY (id, city, pid)
values (339, '��ɫ��', 28);
insert into CITY (id, city, pid)
values (340, '������', 28);
insert into CITY (id, city, pid)
values (341, '���Ǹ���', 28);
insert into CITY (id, city, pid)
values (342, '������', 28);
insert into CITY (id, city, pid)
values (343, '������', 28);
insert into CITY (id, city, pid)
values (344, '�������', 29);
insert into CITY (id, city, pid)
values (345, '��������', 29);
insert into CITY (id, city, pid)
values (346, '��֥����', 29);
insert into CITY (id, city, pid)
values (347, 'ɽ�ϵ���', 29);
insert into CITY (id, city, pid)
values (348, '�տ������', 29);
insert into CITY (id, city, pid)
values (349, '��������', 29);
insert into CITY (id, city, pid)
values (350, '������', 29);
insert into CITY (id, city, pid)
values (351, '������', 30);
insert into CITY (id, city, pid)
values (352, '������', 30);
insert into CITY (id, city, pid)
values (353, '��ԭ��', 30);
insert into CITY (id, city, pid)
values (354, 'ʯ��ɽ��', 30);
insert into CITY (id, city, pid)
values (355, '������', 30);
insert into CITY (id, city, pid)
values (356, '������', 31);
insert into CITY (id, city, pid)
values (357, '������', 31);
insert into CITY (id, city, pid)
values (358, '��ʲ��', 31);
insert into CITY (id, city, pid)
values (359, '��³ľ����', 31);
insert into CITY (id, city, pid)
values (360, '�����С�', 31);
insert into CITY (id, city, pid)
values (361, '������', 31);
insert into CITY (id, city, pid)
values (362, '������', 31);
insert into CITY (id, city, pid)
values (363, '����������', 31);
insert into CITY (id, city, pid)
values (364, 'ͼľ�����', 31);
insert into CITY (id, city, pid)
values (365, '������', 31);
insert into CITY (id, city, pid)
values (366, '������', 31);
insert into CITY (id, city, pid)
values (367, 'ʯ�����С�', 31);
insert into CITY (id, city, pid)
values (368, '��Ȫ��', 31);
insert into CITY (id, city, pid)
values (369, '������', 31);
insert into CITY (id, city, pid)
values (370, '�������', 31);
insert into CITY (id, city, pid)
values (371, '��������', 31);
insert into CITY (id, city, pid)
values (372, '����̩��', 31);
insert into CITY (id, city, pid)
values (373, '��ͼʲ��', 31);
insert into CITY (id, city, pid)
values (374, '������', 31);
insert into CITY (id, city, pid)
values (375, '�������', 31);
insert into CITY (id, city, pid)
values (376, '��������', 31);
insert into CITY (id, city, pid)
values (377, '��³����', 31);
insert into CITY (id, city, pid)
values (378, '�����첼��', 32);
insert into CITY (id, city, pid)
values (379, '�����׶���', 32);
insert into CITY (id, city, pid)
values (380, '�ں���', 32);
insert into CITY (id, city, pid)
values (381, '���ֹ�����', 32);
insert into CITY (id, city, pid)
values (382, '�˰���', 32);
insert into CITY (id, city, pid)
values (383, '��ͷ��', 32);
insert into CITY (id, city, pid)
values (384, '������˹��', 32);
insert into CITY (id, city, pid)
values (385, 'ͨ����', 32);
insert into CITY (id, city, pid)
values (386, '��������', 32);
insert into CITY (id, city, pid)
values (387, '���ױ�����', 32);
insert into CITY (id, city, pid)
values (388, '���ͺ�����', 32);
insert into CITY (id, city, pid)
values (389, '�����', 32);
insert into CITY (id, city, pid)
values (390, '�����ر�������', 33);
insert into CITY (id, city, pid)
values (391, '����ر�������', 34);
commit;

insert into NEWS (id, title, content, creation_time)
values (1, 'ӭ˫����������', 'ӭ˫����������', to_date('24-12-2010 12:11:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into NEWS (id, title, content, creation_time)
values (2, '�����Ա��Ӯǧ������', '�����Ա��Ӯǧ������', to_date('31-12-2017 19:29:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into NEWS (id, title, content, creation_time)
values (3, '�����', 'ȫ����ҪǮ ����', to_date('31-12-2017 19:29:51', 'dd-mm-yyyy hh24:mi:ss'));
commit;

insert into ORDERS (id, user_name, address, creation_time, tel, total_amount, status, user_id)
values ('20180101013125e4dc29d6bdf14dbc9a37445e4f729393', 'С��', '���ϳ�ɳ��´��ĳĳ�ֵ�10��', to_date('01-01-2018 01:31:25', 'dd-mm-yyyy hh24:mi:ss'), '18866665555', 808, 1, 1);
insert into ORDERS (id, user_name, address, creation_time, tel, total_amount, status, user_id)
values ('20180101014837174d7e38608946aebcb9fdc364353c72', 'С��', '���ϳ�ɳ��´��ĳĳ�ֵ�10��', to_date('01-01-2018 01:48:37', 'dd-mm-yyyy hh24:mi:ss'), '18866665555', 398, 1, 1);
insert into ORDERS (id, user_name, address, creation_time, tel, total_amount, status, user_id)
values ('20180101014854bec1c955f2b14acab050e62785e8e2e8', 'lewin', '���ϳ�ɳ��´���׺׼�԰', to_date('01-01-2018 01:48:54', 'dd-mm-yyyy hh24:mi:ss'), '18812345678', 3135, 1, 2);
insert into ORDERS (id, user_name, address, creation_time, tel, total_amount, status, user_id)
values ('20180101015036d0d073d5b3804c669f1f3659b4063a15', 'С��', '���ϳ�ɳ��´��ĳĳ�ֵ�10��', to_date('01-01-2018 01:50:36', 'dd-mm-yyyy hh24:mi:ss'), '18866665555', 808, 1, 3);
commit;

insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (1, 'ʥ���� ë�ش���Ů�г���2017�¿�˫�����Ӵ�����ë�����ﶬ����', 808, 1, '20180101013125e4dc29d6bdf14dbc9a37445e4f729393', 4);
insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (2, '2017�ﶬ�¿���˫�����޴���Ů�̿�泱С������ë�������׼Ӻ�', 398, 1, '20180101014837174d7e38608946aebcb9fdc364353c72', 2);
insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (3, '��СѼ˫�����޴���Ů�г���2017�¿�泱�����ﶬװë������Ů', 1398, 2, '20180101014854bec1c955f2b14acab050e62785e8e2e8', 1);
insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (4, 'Five Plus��Ů��װ����˫�ſ۳����ë����װ����2HD5345220', 339, 1, '20180101014854bec1c955f2b14acab050e62785e8e2e8', 3);
insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (5, 'ʥ���� ë�ش���Ů�г���2017�¿�˫�����Ӵ�����ë�����ﶬ����', 808, 1, '20180101015036d0d073d5b3804c669f1f3659b4063a15', 4);
commit;

insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (1, '��СѼ˫�����޴���Ů�г���2017�¿�泱�����ﶬװë������Ů', 'a.jpg', 1398, 86, '���ʳɷ�: ��ë100%������������: ������(ֻ����������)Ʒ��: ��СѼ����: W-FZS16809��װ����: ������: ͨ��ͨ��: �����³�: �����䳤: ��������: ��װ������: �������Ž�: ����ͼ��: ��ɫ����Ԫ��/����: �ڴ� ƴ�� ����װ�� Ŧ����������: 30-34����������ݼ���: 2016�궬����ɫ����: ���ɫ ����� ��ɫ����: M L XL 2XL 3XL', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (2, '2017�ﶬ�¿���˫�����޴���Ů�̿�泱С������ë�������׼Ӻ�', 'b.jpg', 398, 133, 'Ʒ�����ƣ�PHELEAD/������<br/>��Ʒ������<br/>���ʳɷ�: ������ά51% ��ë41% ��ë8%������������: ������(ֻ����������)Ʒ��: PHELEAD/�����ǻ���: F15YR0550��װ����: ������: ͨ��ͨ��: �����³�: �̿��䳤: ��������: ��װ������: �������Ž�: ���ſ�ͼ��: ��������Ԫ��/����: �ڴ� ƴ�� Ŧ������: �ֻ�������ͼ��: ��ɫ���ϲ���: ������������: 35-39����������ݼ���: 2016�괺����ɫ����: õ�� ��ɳ����: L XL 2XL 3XL 4XL', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (3, 'Five Plus��Ů��װ����˫�ſ۳����ë����װ����2HD5345220', 'c.jpg', 339, 41, 'Ʒ�����ƣ�Five Plus<br/>��Ʒ������<br/>���ʳɷ�: ������ά51.6% ��ë48.4%������������: �̳�ͬ��(�������¶�����)Ʒ��: Five Plus����: 2HD5345220��װ����: ֱͲ���: ͨ��ͨ��: ��Լ�³�: �г����䳤: ��������: ��װ������: �������Ž�: ˫�ſ�ͼ��: ��ɫ����Ԫ��/����: �ڴ� Ŧ������ͼ��: ��ɫ���ϲ���: ������������: 25-29����������ݼ���: 2016�궬����ɫ����: ���120 ����050 ��ɫ090����: XS S M L', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (4, 'ʥ���� ë�ش���Ů�г���2017�¿�˫�����Ӵ�����ë�����ﶬ����', 'd.jpg', 808, 40, 'Ʒ�����ƣ�SECHRRO/ʥ����<br/>��Ʒ������<br/>���ʳɷ�: ��ë100%������������: ������(ֻ����������)Ʒ��: SECHRRO/ʥ���޻���: SG-037��װ����: ������: ͨ��ͨ��: �����³�: �г����䳤: ��������: ��װ������: �������Ž�: һ����ͼ��: ��ɫ����Ԫ��/����: �ڴ� Ŧ������ͼ��: ��ɫ��������: 25-29����������ݼ���: 2016���＾��ɫ����: �ʼ��� ��� �й��� ���� ���� ī�� ', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (5, 'MECITYŮװ2017���¿�������ë����ϵ��˫���ش���', 'e.jpg', 669, 20, 'Ʒ�����ƣ�Me'||chr(38)||'City<br/>��Ʒ������<br/>���ʳɷ�: ��ë78% ��������ά(����)22%������������: ������(ֻ����������)Ʒ��: Me'||chr(38)||'City����: 539966��װ����: ֱͲ���: ͨ��ͨ��: ��Ů�³�: �г����䳤: ��������: ��װ������: �������Ž�: ϵ��ͼ��: ��ɫ��������: 25-29����������ݼ���: 2017�궬����ɫ����: �ͱ��� ǳ��ɫ ����ɫ����: 155/80A 160/84A 165/8', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (6, 'MECITYŮװ2017�����¿�˫������ëϵ����������', 'g.jpg', 1499, 22, 'Ʒ�����ƣ�Me'||chr(38)||'City<br/>��Ʒ������<br/>���ʳɷ�: ��ë100%Ʒ��: Me'||chr(38)||'City����: 539984��װ����: ֱͲ���: ͨ��ͨ��: �����³�: �����䳤: ��������: ��װ�����Ž�: ϵ��ͼ��: ��ɫ��������: 25-29����������ݼ���: 2017�궬����ɫ����: ź�һ�ɴ ����ҳ���: 155/80A 160/84A 165/88', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (7, '2017�ﶬ��˫���ش���Ů��������ֹ�������������ë�������г���', 'h.jpg', 1068, 143, 'Ʒ�����ƣ�����<br/>��Ʒ������<br/>���ʳɷ�: ��ë100%������������: ������(ֻ����������)Ʒ��: ��������: QZ05��װ����: ������: ͨ��ͨ��: �����³�: �г����䳤: ��������: ��װ������: �������Ž�: ����ͼ��: ��ɫ����Ԫ��/����: �ڴ���������: 30-34����������ݼ���: 2017���＾��ɫ����: ���� ��� ��ɫ����: S M L XL XXL ǰ��2�ſ���', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (8, '����Ů�г����2017��װ�¿������޷���ë������ٴ��ް����׳�', 'a.jpg', 158, 9, 'Ʒ�����ƣ�����<br/>��Ʒ������<br/>���ʳɷ�: ������ά100%������������: ������(ֻ����������)Ʒ��: ��������: HS-5198��װ����: �����: ������: ͨ��ͨ��: �����³�: �г����䳤: ��������: ����жñ����: �������Ž�: ����ͼ��: ��ɫ����Ԫ��/����: ��ë����������: 18-24�������/����: 2017�궬����ɫ����: (���£�--��ɫ (���£�--����ɫ (', 6);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (9, 'Apple MacBook Air 13.3Ӣ��ʼǱ�����I5 8G 128G MQD32CH/A��ɫ', 'b.jpg', 6058, 100, 'Ʒ�����ƣ�Apple/ƻ��<br/>���������Ʒ������<br/>��Ʒ���ƣ�Apple/ƻ�� MacBook Air ...Ʒ��: Apple/ƻ����Ļ�ߴ�: 13.3Ӣ��CPU: �����Կ�����: Ӣ�ض� HD Graphics 6000�Դ�����: �����ڴ�������еӲ������: �޻�еӲ���ڴ�����: 8GB����ϵͳ: Mac OS', 13);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (10, 'Lenovo/���� ������ R720-15IKB��Ϸ�ʼǱ��ĺ��������15.6Ӣ��', 'c.jpg', 5499, 1, 'Ʒ�����ƣ�Lenovo/����<br/>���������Ʒ������<br/>֤���ţ�2012010902583758֤��״̬����Ч���������ƣ�����(�Ϸ�)���ӿƼ����޹�˾���������ƣ�����(����)���޹�˾��Ʒ���ƣ���Яʽ�����3C��Ʒ�ͺţ�������3C����ͺţ���������Ʒ���ƣ�Lenovo/���� ������ R720...Ʒ��: Lenovo/�����ͺ�: R720-15IKB��Ļ�ߴ�: 15.6Ӣ��CPU: Ӣ�ض� ��� i5-7300HQ�Կ�����: NVIDIA GeForce GTX1050 Ti (Notebook)�Դ�����: 4GB��еӲ������: 1t�ڴ�����: 8g', 13);
commit;

insert into PRODUCT_CATEGORY (id, name, parent_id)
values (1, 'Ůװ/����', null);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (2, '��װ/�˶�����', null);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (3, 'ŮЬ/��Ь/���', null);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (4, '�ֻ�/����/���԰칫', null);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (5, 'ë������', 1);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (6, '���޷�', 1);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (7, '�޷�', 1);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (8, '�п�', 1);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (9, '����', 2);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (10, '����', 2);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (11, 'ƽ�׵�Ь', 3);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (12, '�߸���Ь', 3);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (13, '�ʼǱ�', 4);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (14, 'ƽ�����', 4);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (15, '̨ʽ��', 4);
commit;

insert into PROVINCIAL (id, provincial)
values (1, '������');
insert into PROVINCIAL (id, provincial)
values (2, '�����');
insert into PROVINCIAL (id, provincial)
values (3, '�Ϻ���');
insert into PROVINCIAL (id, provincial)
values (4, '������');
insert into PROVINCIAL (id, provincial)
values (5, '�ӱ�ʡ');
insert into PROVINCIAL (id, provincial)
values (6, 'ɽ��ʡ');
insert into PROVINCIAL (id, provincial)
values (7, '̨��ʡ');
insert into PROVINCIAL (id, provincial)
values (8, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (9, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (10, '������ʡ');
insert into PROVINCIAL (id, provincial)
values (11, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (12, '�㽭ʡ');
insert into PROVINCIAL (id, provincial)
values (13, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (14, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (15, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (16, 'ɽ��ʡ');
insert into PROVINCIAL (id, provincial)
values (17, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (18, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (19, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (20, '�㶫ʡ');
insert into PROVINCIAL (id, provincial)
values (21, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (22, '�Ĵ�ʡ');
insert into PROVINCIAL (id, provincial)
values (23, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (24, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (25, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (26, '�ຣʡ');
insert into PROVINCIAL (id, provincial)
values (27, '����ʡ');
insert into PROVINCIAL (id, provincial)
values (28, '����׳��������');
insert into PROVINCIAL (id, provincial)
values (29, '����������');
insert into PROVINCIAL (id, provincial)
values (30, '���Ļ���������');
insert into PROVINCIAL (id, provincial)
values (31, '�½�ά���������');
insert into PROVINCIAL (id, provincial)
values (32, '���ɹ�������');
insert into PROVINCIAL (id, provincial)
values (33, '�����ر�������');
insert into PROVINCIAL (id, provincial)
values (34, '����ر�������');
commit;

insert into USERS (id, login, name, pwd, sex, phone, photo, birthday, ismaster)
values (1, 'admin', 'С��', '123', 'Ů', '1399999999', 'user_default.png', to_date('03-12-2000', 'dd-mm-yyyy'), 1);
insert into USERS (id, login, name, pwd, sex, phone, photo, birthday, ismaster)
values (2, 'master', '�ո�', '123', '��', '18670304414', 'user_default.png', to_date('03-12-2013', 'dd-mm-yyyy'), 1);
insert into USERS (id, login, name, pwd, sex, phone, photo, birthday, ismaster)
values (3, 'user', '�ȹ�', '123', '��', '18907490081', 'user_default.png', to_date('10-10-1987', 'dd-mm-yyyy'), 0);
commit;

-- Create sequence 
create sequence SEQ_ADDRESS
minvalue 1
maxvalue 999999999999999999999999999
start with 10
increment by 1
cache 20;

-- Create sequence 
create sequence SEQ_ADS
minvalue 1
maxvalue 999999999999999999999999999
start with 10
increment by 1
cache 20;

-- Create sequence 
create sequence SEQ_NEWS
minvalue 1
maxvalue 999999999999999999999999999
start with 10
increment by 1
cache 20;

-- Create sequence 
create sequence SEQ_ORDER_DETAIL
minvalue 1
maxvalue 999999999999999999999999999
start with 10
increment by 1
cache 20;

-- Create sequence 
create sequence SEQ_PRODUCT
minvalue 1
maxvalue 999999999999999999999999999
start with 15
increment by 1
cache 20;

-- Create sequence 
create sequence SEQ_PRODUCT_CATEGORY
minvalue 1
maxvalue 999999999999999999999999999
start with 20
increment by 1
cache 20;

-- Create sequence 
create sequence SEQ_USERS
minvalue 1
maxvalue 999999999999999999999999999
start with 5
increment by 1
cache 20;