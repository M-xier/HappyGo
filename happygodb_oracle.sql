
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
values (1, '小李', '湖南长沙岳麓区某某街道10号', '18866665555', 3);
insert into ADDRESS (id, contacts, address, tel, user_id)
values (3, 'lewin', '湖南长沙岳麓区白鹤家园', '18812345678', 3);
insert into ADDRESS (id, contacts, address, tel, user_id)
values (6, '张三三', '湖南长沙芙蓉区某某街道99号', '0744-6635352', 1);
insert into ADDRESS (id, contacts, address, tel, user_id)
values (7, '李四四', '湖南长沙天心区某某街道200号', '1399999999', 1);
commit;

insert into ADS (id, title, remark, img, url, target)
values (1, '标题内容', '描述内容', 'web-101-101-1.jpg', null, null);
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
values (1, '北京市', 1);
insert into CITY (id, city, pid)
values (2, '天津市', 2);
insert into CITY (id, city, pid)
values (3, '上海市', 3);
insert into CITY (id, city, pid)
values (4, '重庆市', 4);
insert into CITY (id, city, pid)
values (5, '秦皇岛市', 5);
insert into CITY (id, city, pid)
values (6, '邢台市', 5);
insert into CITY (id, city, pid)
values (7, '承德市', 5);
insert into CITY (id, city, pid)
values (8, '保定市', 5);
insert into CITY (id, city, pid)
values (9, '邯郸市', 5);
insert into CITY (id, city, pid)
values (10, '石家庄市', 5);
insert into CITY (id, city, pid)
values (11, '唐山市', 5);
insert into CITY (id, city, pid)
values (12, '廊坊市', 5);
insert into CITY (id, city, pid)
values (13, '沧州市', 5);
insert into CITY (id, city, pid)
values (14, '衡水市', 5);
insert into CITY (id, city, pid)
values (15, '张家口市', 5);
insert into CITY (id, city, pid)
values (16, '阳泉市', 6);
insert into CITY (id, city, pid)
values (17, '忻州市', 6);
insert into CITY (id, city, pid)
values (18, '晋城市', 6);
insert into CITY (id, city, pid)
values (19, '长治市', 6);
insert into CITY (id, city, pid)
values (20, '太原市', 6);
insert into CITY (id, city, pid)
values (21, '晋中市', 6);
insert into CITY (id, city, pid)
values (22, '运城市', 6);
insert into CITY (id, city, pid)
values (23, '临汾市', 6);
insert into CITY (id, city, pid)
values (24, '吕梁市', 6);
insert into CITY (id, city, pid)
values (25, '朔州市', 6);
insert into CITY (id, city, pid)
values (26, '大同市', 6);
insert into CITY (id, city, pid)
values (27, '台东县', 7);
insert into CITY (id, city, pid)
values (28, '台中县', 7);
insert into CITY (id, city, pid)
values (29, '宜兰县', 7);
insert into CITY (id, city, pid)
values (30, '彰化县', 7);
insert into CITY (id, city, pid)
values (31, '屏东县', 7);
insert into CITY (id, city, pid)
values (32, '高雄县', 7);
insert into CITY (id, city, pid)
values (33, '新竹市', 7);
insert into CITY (id, city, pid)
values (34, '桃园县', 7);
insert into CITY (id, city, pid)
values (35, '苗栗县', 7);
insert into CITY (id, city, pid)
values (36, '嘉义县', 7);
insert into CITY (id, city, pid)
values (37, '嘉义市', 7);
insert into CITY (id, city, pid)
values (38, '云林县', 7);
insert into CITY (id, city, pid)
values (39, '基隆市', 7);
insert into CITY (id, city, pid)
values (40, '高雄市', 7);
insert into CITY (id, city, pid)
values (41, '新竹县', 7);
insert into CITY (id, city, pid)
values (42, '澎湖县', 7);
insert into CITY (id, city, pid)
values (43, '花莲县', 7);
insert into CITY (id, city, pid)
values (44, '台南市', 7);
insert into CITY (id, city, pid)
values (45, '台南县', 7);
insert into CITY (id, city, pid)
values (46, '台北市', 7);
insert into CITY (id, city, pid)
values (47, '台北县', 7);
insert into CITY (id, city, pid)
values (48, '南投县', 7);
insert into CITY (id, city, pid)
values (49, '台中市', 7);
insert into CITY (id, city, pid)
values (50, '葫芦岛市', 8);
insert into CITY (id, city, pid)
values (51, '大连市', 8);
insert into CITY (id, city, pid)
values (52, '营口市', 8);
insert into CITY (id, city, pid)
values (53, '辽阳市', 8);
insert into CITY (id, city, pid)
values (54, '阜新市', 8);
insert into CITY (id, city, pid)
values (55, '丹东市', 8);
insert into CITY (id, city, pid)
values (56, '盘锦市', 8);
insert into CITY (id, city, pid)
values (57, '本溪市', 8);
insert into CITY (id, city, pid)
values (58, '朝阳市', 8);
insert into CITY (id, city, pid)
values (59, '抚顺市', 8);
insert into CITY (id, city, pid)
values (60, '沈阳市', 8);
insert into CITY (id, city, pid)
values (61, '锦州市', 8);
insert into CITY (id, city, pid)
values (62, '铁岭市', 8);
insert into CITY (id, city, pid)
values (63, '鞍山市', 8);
insert into CITY (id, city, pid)
values (64, '吉林市', 9);
insert into CITY (id, city, pid)
values (65, '通化市', 9);
insert into CITY (id, city, pid)
values (66, '白城市', 9);
insert into CITY (id, city, pid)
values (67, '白山市', 9);
insert into CITY (id, city, pid)
values (68, '松原市', 9);
insert into CITY (id, city, pid)
values (69, '辽源市', 9);
insert into CITY (id, city, pid)
values (70, '延边朝鲜族自治州', 9);
insert into CITY (id, city, pid)
values (71, '四平市', 9);
insert into CITY (id, city, pid)
values (72, '长春市', 9);
insert into CITY (id, city, pid)
values (73, '大 庆 市', 10);
insert into CITY (id, city, pid)
values (74, '哈尔滨市', 10);
insert into CITY (id, city, pid)
values (75, '黑 河 市', 10);
insert into CITY (id, city, pid)
values (76, '大兴安岭地区', 10);
insert into CITY (id, city, pid)
values (77, '鸡 西 市', 10);
insert into CITY (id, city, pid)
values (78, '齐齐哈尔市', 10);
insert into CITY (id, city, pid)
values (79, '鹤 岗 市', 10);
insert into CITY (id, city, pid)
values (80, '绥 化 市', 10);
insert into CITY (id, city, pid)
values (81, '牡丹江市', 10);
insert into CITY (id, city, pid)
values (82, '七台河市', 10);
insert into CITY (id, city, pid)
values (83, '伊 春 市', 10);
insert into CITY (id, city, pid)
values (84, '佳木斯市', 10);
insert into CITY (id, city, pid)
values (85, '双鸭山市', 1);
insert into CITY (id, city, pid)
values (86, '苏州市', 11);
insert into CITY (id, city, pid)
values (87, '宿迁市', 11);
insert into CITY (id, city, pid)
values (88, '徐州市', 11);
insert into CITY (id, city, pid)
values (89, '泰州市', 11);
insert into CITY (id, city, pid)
values (90, '扬州市', 11);
insert into CITY (id, city, pid)
values (91, '淮安市', 11);
insert into CITY (id, city, pid)
values (92, '盐城市', 11);
insert into CITY (id, city, pid)
values (93, '无锡市', 11);
insert into CITY (id, city, pid)
values (94, '镇江市', 11);
insert into CITY (id, city, pid)
values (95, '连云港市', 11);
insert into CITY (id, city, pid)
values (96, '南通市', 11);
insert into CITY (id, city, pid)
values (97, '常州市', 11);
insert into CITY (id, city, pid)
values (98, '南京市', 11);
insert into CITY (id, city, pid)
values (99, '衢州市', 12);
insert into CITY (id, city, pid)
values (100, '湖州市', 12);
commit;

insert into CITY (id, city, pid)
values (101, '台州市', 12);
insert into CITY (id, city, pid)
values (102, '杭州市', 12);
insert into CITY (id, city, pid)
values (103, '宁波市', 12);
insert into CITY (id, city, pid)
values (104, '温州市', 12);
insert into CITY (id, city, pid)
values (105, '丽水市', 12);
insert into CITY (id, city, pid)
values (106, '舟山市', 12);
insert into CITY (id, city, pid)
values (107, '嘉兴市', 12);
insert into CITY (id, city, pid)
values (108, '金华市', 12);
insert into CITY (id, city, pid)
values (109, '绍兴市', 12);
insert into CITY (id, city, pid)
values (110, '马鞍山市', 13);
insert into CITY (id, city, pid)
values (111, '宣城市', 13);
insert into CITY (id, city, pid)
values (112, '宿州市', 13);
insert into CITY (id, city, pid)
values (113, '亳州市', 13);
insert into CITY (id, city, pid)
values (114, '铜陵市', 13);
insert into CITY (id, city, pid)
values (115, '阜阳市', 13);
insert into CITY (id, city, pid)
values (116, '六安市', 13);
insert into CITY (id, city, pid)
values (117, '芜湖市', 13);
insert into CITY (id, city, pid)
values (118, '巢湖市', 13);
insert into CITY (id, city, pid)
values (119, '淮南市', 13);
insert into CITY (id, city, pid)
values (120, '淮北市', 13);
insert into CITY (id, city, pid)
values (121, '合肥市', 13);
insert into CITY (id, city, pid)
values (122, '黄山市', 13);
insert into CITY (id, city, pid)
values (123, '池州市', 13);
insert into CITY (id, city, pid)
values (124, '蚌埠市', 13);
insert into CITY (id, city, pid)
values (125, '安庆市', 13);
insert into CITY (id, city, pid)
values (126, '滁州市', 13);
insert into CITY (id, city, pid)
values (127, '莆田市', 14);
insert into CITY (id, city, pid)
values (128, '福州市', 14);
insert into CITY (id, city, pid)
values (129, '三明市', 14);
insert into CITY (id, city, pid)
values (130, '泉州市', 14);
insert into CITY (id, city, pid)
values (131, '厦门市', 14);
insert into CITY (id, city, pid)
values (132, '南平市', 14);
insert into CITY (id, city, pid)
values (133, '龙岩市', 14);
insert into CITY (id, city, pid)
values (134, '宁德市', 14);
insert into CITY (id, city, pid)
values (135, '漳州市', 14);
insert into CITY (id, city, pid)
values (136, '鹰潭市', 15);
insert into CITY (id, city, pid)
values (137, '萍乡市', 15);
insert into CITY (id, city, pid)
values (138, '上饶市', 15);
insert into CITY (id, city, pid)
values (139, '九江市', 15);
insert into CITY (id, city, pid)
values (140, '新余市', 15);
insert into CITY (id, city, pid)
values (141, '景德镇市', 15);
insert into CITY (id, city, pid)
values (142, '抚州市', 15);
insert into CITY (id, city, pid)
values (143, '宜春市', 15);
insert into CITY (id, city, pid)
values (144, '赣州市', 15);
insert into CITY (id, city, pid)
values (145, '吉安市', 15);
insert into CITY (id, city, pid)
values (146, '南昌市', 15);
insert into CITY (id, city, pid)
values (147, '聊城市', 16);
insert into CITY (id, city, pid)
values (148, '菏泽市', 16);
insert into CITY (id, city, pid)
values (149, '淄博市', 16);
insert into CITY (id, city, pid)
values (150, '临沂市', 16);
insert into CITY (id, city, pid)
values (151, '威海市', 16);
insert into CITY (id, city, pid)
values (152, '东营市', 16);
insert into CITY (id, city, pid)
values (153, '枣庄市', 16);
insert into CITY (id, city, pid)
values (154, '烟台市', 16);
insert into CITY (id, city, pid)
values (155, '德州市', 16);
insert into CITY (id, city, pid)
values (156, '青岛市', 16);
insert into CITY (id, city, pid)
values (157, '泰安市', 16);
insert into CITY (id, city, pid)
values (158, '滨州市', 16);
insert into CITY (id, city, pid)
values (159, '莱芜市', 16);
insert into CITY (id, city, pid)
values (160, '潍坊市', 16);
insert into CITY (id, city, pid)
values (161, '济南市', 16);
insert into CITY (id, city, pid)
values (162, '济宁市', 16);
insert into CITY (id, city, pid)
values (163, '日照市', 16);
insert into CITY (id, city, pid)
values (164, '新乡市', 17);
insert into CITY (id, city, pid)
values (165, '驻马店市', 17);
insert into CITY (id, city, pid)
values (166, '漯河市', 17);
insert into CITY (id, city, pid)
values (167, '鹤壁市', 17);
insert into CITY (id, city, pid)
values (168, '南阳市', 17);
insert into CITY (id, city, pid)
values (169, '安阳市', 17);
insert into CITY (id, city, pid)
values (170, '焦作市', 17);
insert into CITY (id, city, pid)
values (171, '平顶山市', 17);
insert into CITY (id, city, pid)
values (172, '三门峡市', 17);
insert into CITY (id, city, pid)
values (173, '开封市', 17);
insert into CITY (id, city, pid)
values (174, '洛阳市', 17);
insert into CITY (id, city, pid)
values (175, '济源市', 17);
insert into CITY (id, city, pid)
values (176, '郑州市', 17);
insert into CITY (id, city, pid)
values (177, '信阳市', 17);
insert into CITY (id, city, pid)
values (178, '商丘市', 17);
insert into CITY (id, city, pid)
values (179, '濮阳市', 17);
insert into CITY (id, city, pid)
values (180, '周口市', 17);
insert into CITY (id, city, pid)
values (181, '许昌市', 17);
insert into CITY (id, city, pid)
values (182, '武汉市', 18);
insert into CITY (id, city, pid)
values (183, '黄冈市', 18);
insert into CITY (id, city, pid)
values (184, '黄石市', 18);
insert into CITY (id, city, pid)
values (185, '襄樊市', 18);
insert into CITY (id, city, pid)
values (186, '天门市', 18);
insert into CITY (id, city, pid)
values (187, '潜江市', 18);
insert into CITY (id, city, pid)
values (188, '恩施土家族苗族自治州', 18);
insert into CITY (id, city, pid)
values (189, '神农架林区', 18);
insert into CITY (id, city, pid)
values (190, '随州市', 18);
insert into CITY (id, city, pid)
values (191, '宜昌市', 18);
insert into CITY (id, city, pid)
values (192, '孝感市', 18);
insert into CITY (id, city, pid)
values (193, '咸宁市', 18);
insert into CITY (id, city, pid)
values (194, '鄂州市', 18);
insert into CITY (id, city, pid)
values (195, '十堰市', 18);
insert into CITY (id, city, pid)
values (196, '荆门市', 18);
insert into CITY (id, city, pid)
values (197, '荆州市', 18);
insert into CITY (id, city, pid)
values (198, '仙桃市', 18);
insert into CITY (id, city, pid)
values (199, '益阳市', 19);
insert into CITY (id, city, pid)
values (200, '怀化市', 19);
commit;

insert into CITY (id, city, pid)
values (201, '邵阳市', 19);
insert into CITY (id, city, pid)
values (202, '永州市', 19);
insert into CITY (id, city, pid)
values (203, '岳阳市', 19);
insert into CITY (id, city, pid)
values (204, '常德市', 19);
insert into CITY (id, city, pid)
values (205, '株洲市', 19);
insert into CITY (id, city, pid)
values (206, '郴州市', 19);
insert into CITY (id, city, pid)
values (207, '湘潭市', 19);
insert into CITY (id, city, pid)
values (208, '娄底市', 19);
insert into CITY (id, city, pid)
values (209, '湘西土家族苗族自治州', 19);
insert into CITY (id, city, pid)
values (210, '衡阳市', 19);
insert into CITY (id, city, pid)
values (211, '长沙市', 19);
insert into CITY (id, city, pid)
values (212, '张家界市', 19);
insert into CITY (id, city, pid)
values (213, '肇庆市', 20);
insert into CITY (id, city, pid)
values (214, '深圳市', 20);
insert into CITY (id, city, pid)
values (215, '珠海市', 20);
insert into CITY (id, city, pid)
values (216, '阳江市', 20);
insert into CITY (id, city, pid)
values (217, '韶关市', 20);
insert into CITY (id, city, pid)
values (218, '潮州市', 20);
insert into CITY (id, city, pid)
values (219, '清远市', 20);
insert into CITY (id, city, pid)
values (220, '河源市', 20);
insert into CITY (id, city, pid)
values (221, '梅州市', 20);
insert into CITY (id, city, pid)
values (222, '湛江市', 20);
insert into CITY (id, city, pid)
values (223, '惠州市', 20);
insert into CITY (id, city, pid)
values (224, '佛山市', 20);
insert into CITY (id, city, pid)
values (225, '茂名市', 20);
insert into CITY (id, city, pid)
values (226, '揭阳市', 20);
insert into CITY (id, city, pid)
values (227, '云浮市', 20);
insert into CITY (id, city, pid)
values (228, '广州市', 20);
insert into CITY (id, city, pid)
values (229, '汕头市', 20);
insert into CITY (id, city, pid)
values (230, '汕尾市', 20);
insert into CITY (id, city, pid)
values (231, '中山市', 20);
insert into CITY (id, city, pid)
values (232, '东莞市', 20);
insert into CITY (id, city, pid)
values (233, '江门市', 20);
insert into CITY (id, city, pid)
values (234, '酒泉市', 21);
insert into CITY (id, city, pid)
values (235, '张掖市', 21);
insert into CITY (id, city, pid)
values (236, '嘉峪关市', 21);
insert into CITY (id, city, pid)
values (237, '庆阳市', 21);
insert into CITY (id, city, pid)
values (238, '甘南藏族自治州', 21);
insert into CITY (id, city, pid)
values (239, '天水市', 21);
insert into CITY (id, city, pid)
values (240, '定西市', 21);
insert into CITY (id, city, pid)
values (241, '临夏回族自治州', 21);
insert into CITY (id, city, pid)
values (242, '陇南市', 21);
insert into CITY (id, city, pid)
values (243, '武威市', 21);
insert into CITY (id, city, pid)
values (244, '兰州市', 21);
insert into CITY (id, city, pid)
values (245, '白银市', 21);
insert into CITY (id, city, pid)
values (246, '金昌市', 21);
insert into CITY (id, city, pid)
values (247, '平凉市', 21);
insert into CITY (id, city, pid)
values (248, '眉山市', 22);
insert into CITY (id, city, pid)
values (249, '甘孜藏族自治州', 22);
insert into CITY (id, city, pid)
values (250, '广安市', 22);
insert into CITY (id, city, pid)
values (251, '德阳市', 22);
insert into CITY (id, city, pid)
values (252, '绵阳市', 22);
insert into CITY (id, city, pid)
values (253, '广元市', 22);
insert into CITY (id, city, pid)
values (254, '自贡市', 22);
insert into CITY (id, city, pid)
values (255, '阿坝藏族羌族自治州', 22);
insert into CITY (id, city, pid)
values (256, '乐山市', 22);
insert into CITY (id, city, pid)
values (257, '凉山彝族自治州', 22);
insert into CITY (id, city, pid)
values (258, '南充市', 22);
insert into CITY (id, city, pid)
values (259, '达州市', 22);
insert into CITY (id, city, pid)
values (260, '资阳市', 22);
insert into CITY (id, city, pid)
values (261, '遂宁市', 22);
insert into CITY (id, city, pid)
values (262, '内江市', 22);
insert into CITY (id, city, pid)
values (263, '宜宾市', 22);
insert into CITY (id, city, pid)
values (264, '巴中市', 22);
insert into CITY (id, city, pid)
values (265, '雅安市', 22);
insert into CITY (id, city, pid)
values (266, '攀枝花市', 22);
insert into CITY (id, city, pid)
values (267, '泸州市', 22);
insert into CITY (id, city, pid)
values (268, '成都市', 22);
insert into CITY (id, city, pid)
values (269, '安顺市', 23);
insert into CITY (id, city, pid)
values (270, '黔东南苗族侗族自治州', 23);
insert into CITY (id, city, pid)
values (271, '黔南布依族苗族自治州', 23);
insert into CITY (id, city, pid)
values (272, '黔西南布依族苗族自治州', 23);
insert into CITY (id, city, pid)
values (273, '铜仁地区', 23);
insert into CITY (id, city, pid)
values (274, '毕节地区', 23);
insert into CITY (id, city, pid)
values (275, '贵阳市', 23);
insert into CITY (id, city, pid)
values (276, '六盘水市', 23);
insert into CITY (id, city, pid)
values (277, '遵义市', 23);
insert into CITY (id, city, pid)
values (278, '陵水黎族自治县', 24);
insert into CITY (id, city, pid)
values (279, '昌江黎族自治县', 24);
insert into CITY (id, city, pid)
values (280, '定安县', 24);
insert into CITY (id, city, pid)
values (281, '儋州市', 24);
insert into CITY (id, city, pid)
values (282, '临高县', 24);
insert into CITY (id, city, pid)
values (283, '保亭黎族苗族自治县', 24);
insert into CITY (id, city, pid)
values (284, '琼海市', 24);
insert into CITY (id, city, pid)
values (285, '海口市', 24);
insert into CITY (id, city, pid)
values (286, '乐东黎族自治县', 24);
insert into CITY (id, city, pid)
values (287, '五指山市', 24);
insert into CITY (id, city, pid)
values (288, '屯昌县', 24);
insert into CITY (id, city, pid)
values (289, '东方市', 24);
insert into CITY (id, city, pid)
values (290, '文昌市', 24);
insert into CITY (id, city, pid)
values (291, '万宁市', 24);
insert into CITY (id, city, pid)
values (292, '三亚市', 24);
insert into CITY (id, city, pid)
values (293, '琼中黎族苗族自治县', 24);
insert into CITY (id, city, pid)
values (294, '澄迈县', 24);
insert into CITY (id, city, pid)
values (295, '白沙黎族自治县', 24);
insert into CITY (id, city, pid)
values (296, '昭通市', 25);
insert into CITY (id, city, pid)
values (297, '曲靖市', 25);
insert into CITY (id, city, pid)
values (298, '西双版纳傣族自治州', 25);
insert into CITY (id, city, pid)
values (299, '德宏傣族景颇族自治州', 25);
insert into CITY (id, city, pid)
values (300, '保山市', 25);
commit;

insert into CITY (id, city, pid)
values (301, '丽江市', 25);
insert into CITY (id, city, pid)
values (302, '迪庆藏族自治州', 25);
insert into CITY (id, city, pid)
values (303, '怒江傈傈族自治州', 25);
insert into CITY (id, city, pid)
values (304, '玉溪市', 25);
insert into CITY (id, city, pid)
values (305, '红河哈尼族彝族自治州', 25);
insert into CITY (id, city, pid)
values (306, '临沧市', 25);
insert into CITY (id, city, pid)
values (307, '文山壮族苗族自治州', 25);
insert into CITY (id, city, pid)
values (308, '楚雄彝族自治州', 25);
insert into CITY (id, city, pid)
values (309, '昆明市', 25);
insert into CITY (id, city, pid)
values (310, '思茅市', 25);
insert into CITY (id, city, pid)
values (311, '大理白族自治州', 25);
insert into CITY (id, city, pid)
values (312, '海南藏族自治州', 26);
insert into CITY (id, city, pid)
values (313, '黄南藏族自治州', 26);
insert into CITY (id, city, pid)
values (314, '海东地区', 26);
insert into CITY (id, city, pid)
values (315, '果洛藏族自治州', 26);
insert into CITY (id, city, pid)
values (316, '玉树藏族自治州', 26);
insert into CITY (id, city, pid)
values (317, '西宁市', 26);
insert into CITY (id, city, pid)
values (318, '海西蒙古族藏族自治州', 26);
insert into CITY (id, city, pid)
values (319, '海北藏族自治州', 26);
insert into CITY (id, city, pid)
values (320, '渭南市', 27);
insert into CITY (id, city, pid)
values (321, '榆林市', 27);
insert into CITY (id, city, pid)
values (322, '铜川市', 27);
insert into CITY (id, city, pid)
values (323, '安康市', 27);
insert into CITY (id, city, pid)
values (324, '延安市', 27);
insert into CITY (id, city, pid)
values (325, '商洛市', 27);
insert into CITY (id, city, pid)
values (326, '汉中市', 27);
insert into CITY (id, city, pid)
values (327, '宝鸡市', 27);
insert into CITY (id, city, pid)
values (328, '西安市', 27);
insert into CITY (id, city, pid)
values (329, '咸阳市', 27);
insert into CITY (id, city, pid)
values (330, '钦州市', 28);
insert into CITY (id, city, pid)
values (331, '桂林市', 28);
insert into CITY (id, city, pid)
values (332, '柳州市', 28);
insert into CITY (id, city, pid)
values (333, '崇左市', 28);
insert into CITY (id, city, pid)
values (334, '梧州市', 28);
insert into CITY (id, city, pid)
values (335, '河池市', 28);
insert into CITY (id, city, pid)
values (336, '北海市', 28);
insert into CITY (id, city, pid)
values (337, '来宾市', 28);
insert into CITY (id, city, pid)
values (338, '贵港市', 28);
insert into CITY (id, city, pid)
values (339, '百色市', 28);
insert into CITY (id, city, pid)
values (340, '贺州市', 28);
insert into CITY (id, city, pid)
values (341, '防城港市', 28);
insert into CITY (id, city, pid)
values (342, '玉林市', 28);
insert into CITY (id, city, pid)
values (343, '南宁市', 28);
insert into CITY (id, city, pid)
values (344, '阿里地区', 29);
insert into CITY (id, city, pid)
values (345, '昌都地区', 29);
insert into CITY (id, city, pid)
values (346, '林芝地区', 29);
insert into CITY (id, city, pid)
values (347, '山南地区', 29);
insert into CITY (id, city, pid)
values (348, '日喀则地区', 29);
insert into CITY (id, city, pid)
values (349, '那曲地区', 29);
insert into CITY (id, city, pid)
values (350, '拉萨市', 29);
insert into CITY (id, city, pid)
values (351, '中卫市', 30);
insert into CITY (id, city, pid)
values (352, '吴忠市', 30);
insert into CITY (id, city, pid)
values (353, '固原市', 30);
insert into CITY (id, city, pid)
values (354, '石嘴山市', 30);
insert into CITY (id, city, pid)
values (355, '银川市', 30);
insert into CITY (id, city, pid)
values (356, '阜康市', 31);
insert into CITY (id, city, pid)
values (357, '哈密市', 31);
insert into CITY (id, city, pid)
values (358, '喀什市', 31);
insert into CITY (id, city, pid)
values (359, '乌鲁木齐市', 31);
insert into CITY (id, city, pid)
values (360, '昌吉市　', 31);
insert into CITY (id, city, pid)
values (361, '乌苏市', 31);
insert into CITY (id, city, pid)
values (362, '奎屯市', 31);
insert into CITY (id, city, pid)
values (363, '克拉玛依市', 31);
insert into CITY (id, city, pid)
values (364, '图木舒克市', 31);
insert into CITY (id, city, pid)
values (365, '塔城市', 31);
insert into CITY (id, city, pid)
values (366, '和田市', 31);
insert into CITY (id, city, pid)
values (367, '石河子市　', 31);
insert into CITY (id, city, pid)
values (368, '米泉市', 31);
insert into CITY (id, city, pid)
values (369, '博乐市', 31);
insert into CITY (id, city, pid)
values (370, '五家渠市', 31);
insert into CITY (id, city, pid)
values (371, '阿克苏市', 31);
insert into CITY (id, city, pid)
values (372, '阿勒泰市', 31);
insert into CITY (id, city, pid)
values (373, '阿图什市', 31);
insert into CITY (id, city, pid)
values (374, '伊宁市', 31);
insert into CITY (id, city, pid)
values (375, '库尔勒市', 31);
insert into CITY (id, city, pid)
values (376, '阿拉尔市', 31);
insert into CITY (id, city, pid)
values (377, '吐鲁番市', 31);
insert into CITY (id, city, pid)
values (378, '乌兰察布市', 32);
insert into CITY (id, city, pid)
values (379, '巴彦淖尔市', 32);
insert into CITY (id, city, pid)
values (380, '乌海市', 32);
insert into CITY (id, city, pid)
values (381, '锡林郭勒盟', 32);
insert into CITY (id, city, pid)
values (382, '兴安盟', 32);
insert into CITY (id, city, pid)
values (383, '包头市', 32);
insert into CITY (id, city, pid)
values (384, '鄂尔多斯市', 32);
insert into CITY (id, city, pid)
values (385, '通辽市', 32);
insert into CITY (id, city, pid)
values (386, '阿拉善盟', 32);
insert into CITY (id, city, pid)
values (387, '呼伦贝尔市', 32);
insert into CITY (id, city, pid)
values (388, '呼和浩特市', 32);
insert into CITY (id, city, pid)
values (389, '赤峰市', 32);
insert into CITY (id, city, pid)
values (390, '澳门特别行政区', 33);
insert into CITY (id, city, pid)
values (391, '香港特别行政区', 34);
commit;

insert into NEWS (id, title, content, creation_time)
values (1, '迎双旦促销大酬宾', '迎双旦促销大酬宾', to_date('24-12-2010 12:11:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into NEWS (id, title, content, creation_time)
values (2, '加入会员，赢千万大礼包', '加入会员，赢千万大礼包', to_date('31-12-2017 19:29:56', 'dd-mm-yyyy hh24:mi:ss'));
insert into NEWS (id, title, content, creation_time)
values (3, '免费送', '全场不要钱 随便搞', to_date('31-12-2017 19:29:51', 'dd-mm-yyyy hh24:mi:ss'));
commit;

insert into ORDERS (id, user_name, address, creation_time, tel, total_amount, status, user_id)
values ('20180101013125e4dc29d6bdf14dbc9a37445e4f729393', '小李', '湖南长沙岳麓区某某街道10号', to_date('01-01-2018 01:31:25', 'dd-mm-yyyy hh24:mi:ss'), '18866665555', 808, 1, 1);
insert into ORDERS (id, user_name, address, creation_time, tel, total_amount, status, user_id)
values ('20180101014837174d7e38608946aebcb9fdc364353c72', '小李', '湖南长沙岳麓区某某街道10号', to_date('01-01-2018 01:48:37', 'dd-mm-yyyy hh24:mi:ss'), '18866665555', 398, 1, 1);
insert into ORDERS (id, user_name, address, creation_time, tel, total_amount, status, user_id)
values ('20180101014854bec1c955f2b14acab050e62785e8e2e8', 'lewin', '湖南长沙岳麓区白鹤家园', to_date('01-01-2018 01:48:54', 'dd-mm-yyyy hh24:mi:ss'), '18812345678', 3135, 1, 2);
insert into ORDERS (id, user_name, address, creation_time, tel, total_amount, status, user_id)
values ('20180101015036d0d073d5b3804c669f1f3659b4063a15', '小李', '湖南长沙岳麓区某某街道10号', to_date('01-01-2018 01:50:36', 'dd-mm-yyyy hh24:mi:ss'), '18866665555', 808, 1, 3);
commit;

insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (1, '圣其罗 毛呢大衣女中长款2017新款双面呢子大衣羊毛外套秋冬大衣', 808, 1, '20180101013125e4dc29d6bdf14dbc9a37445e4f729393', 4);
insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (2, '2017秋冬新款无双面羊绒大衣女短款韩版潮小个子羊毛呢子外套加厚', 398, 1, '20180101014837174d7e38608946aebcb9fdc364353c72', 2);
insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (3, '王小鸭双面羊绒大衣女中长款2017新款韩版潮长袖秋冬装毛呢外套女', 1398, 2, '20180101014854bec1c955f2b14acab050e62785e8e2e8', 1);
insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (4, 'Five Plus新女冬装刺绣双排扣长款长袖毛呢西装外套2HD5345220', 339, 1, '20180101014854bec1c955f2b14acab050e62785e8e2e8', 3);
insert into ORDER_DETAIL (id, product_name, product_price, product_count, order_id, product_id)
values (5, '圣其罗 毛呢大衣女中长款2017新款双面呢子大衣羊毛外套秋冬大衣', 808, 1, '20180101015036d0d073d5b3804c669f1f3659b4063a15', 4);
commit;

insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (1, '王小鸭双面羊绒大衣女中长款2017新款韩版潮长袖秋冬装毛呢外套女', 'a.jpg', 1398, 86, '材质成分: 羊毛100%销售渠道类型: 纯电商(只在线上销售)品牌: 王小鸭货号: W-FZS16809服装版型: 修身风格: 通勤通勤: 韩版衣长: 长款袖长: 长袖领子: 西装领袖型: 常规衣门襟: 暗扣图案: 纯色流行元素/工艺: 口袋 拼接 立体装饰 纽扣适用年龄: 30-34周岁上市年份季节: 2016年冬季颜色分类: 大红色 金红驼 蓝色尺码: M L XL 2XL 3XL', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (2, '2017秋冬新款无双面羊绒大衣女短款韩版潮小个子羊毛呢子外套加厚', 'b.jpg', 398, 133, '品牌名称：PHELEAD/梵丽登<br/>产品参数：<br/>材质成分: 聚酯纤维51% 羊毛41% 兔毛8%销售渠道类型: 纯电商(只在线上销售)品牌: PHELEAD/梵丽登货号: F15YR0550服装版型: 修身风格: 通勤通勤: 韩版衣长: 短款袖长: 长袖领子: 西装领袖型: 常规衣门襟: 单排扣图案: 格子流行元素/工艺: 口袋 拼接 纽扣面料: 粗花呢里料图案: 纯色里料材质: 涤纶适用年龄: 35-39周岁上市年份季节: 2016年春季颜色分类: 玫紫 豆沙尺码: L XL 2XL 3XL 4XL', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (3, 'Five Plus新女冬装刺绣双排扣长款长袖毛呢西装外套2HD5345220', 'c.jpg', 339, 41, '品牌名称：Five Plus<br/>产品参数：<br/>材质成分: 聚酯纤维51.6% 羊毛48.4%销售渠道类型: 商场同款(线上线下都销售)品牌: Five Plus货号: 2HD5345220服装版型: 直筒风格: 通勤通勤: 简约衣长: 中长款袖长: 长袖领子: 西装领袖型: 常规衣门襟: 双排扣图案: 纯色流行元素/工艺: 口袋 纽扣里料图案: 纯色里料材质: 涤纶适用年龄: 25-29周岁上市年份季节: 2016年冬季颜色分类: 大红120 花灰050 黑色090尺码: XS S M L', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (4, '圣其罗 毛呢大衣女中长款2017新款双面呢子大衣羊毛外套秋冬大衣', 'd.jpg', 808, 40, '品牌名称：SECHRRO/圣其罗<br/>产品参数：<br/>材质成分: 羊毛100%销售渠道类型: 纯电商(只在线上销售)品牌: SECHRRO/圣其罗货号: SG-037服装版型: 修身风格: 通勤通勤: 韩版衣长: 中长款袖长: 长袖领子: 西装领袖型: 常规衣门襟: 一粒扣图案: 纯色流行元素/工艺: 口袋 纽扣里料图案: 纯色适用年龄: 25-29周岁上市年份季节: 2016年秋季颜色分类: 皇家驼 深焦糖 中国红 蓝灰 藏青 墨绿 ', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (5, 'MECITY女装2017冬新款甜美羊毛收腰系带双面呢大衣', 'e.jpg', 669, 20, '品牌名称：Me'||chr(38)||'City<br/>产品参数：<br/>材质成分: 羊毛78% 聚酰胺纤维(锦纶)22%销售渠道类型: 纯电商(只在线上销售)品牌: Me'||chr(38)||'City货号: 539966服装版型: 直筒风格: 通勤通勤: 淑女衣长: 中长款袖长: 长袖领子: 西装领袖型: 常规衣门襟: 系带图案: 纯色适用年龄: 25-29周岁上市年份季节: 2017年冬季颜色分类: 峭壁绿 浅紫色 黄棕色尺码: 155/80A 160/84A 165/8', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (6, 'MECITY女装2017冬季新款双面呢羊毛系带大衣外套', 'g.jpg', 1499, 22, '品牌名称：Me'||chr(38)||'City<br/>产品参数：<br/>材质成分: 羊毛100%品牌: Me'||chr(38)||'City货号: 539984服装版型: 直筒风格: 通勤通勤: 韩版衣长: 长款袖长: 长袖领子: 西装领衣门襟: 系带图案: 纯色适用年龄: 25-29周岁上市年份季节: 2017年冬季颜色分类: 藕灰花纱 晨雾灰尺码: 155/80A 160/84A 165/88', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (7, '2017秋冬新双面呢大衣女修身风衣手工无羊绒尼妮子毛呢外套中长款', 'h.jpg', 1068, 143, '品牌名称：派妃<br/>产品参数：<br/>材质成分: 羊毛100%销售渠道类型: 纯电商(只在线上销售)品牌: 派妃货号: QZ05服装版型: 修身风格: 通勤通勤: 韩版衣长: 中长款袖长: 长袖领子: 西装领袖型: 常规衣门襟: 其他图案: 纯色流行元素/工艺: 口袋适用年龄: 30-34周岁上市年份季节: 2017年秋季颜色分类: 藏青 大红 驼色尺码: S M L XL XXL 前襟2颗扣子', 5);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (8, '棉衣女中长款韩版2017冬装新款羽绒棉服大毛领修身百搭棉袄外套潮', 'a.jpg', 158, 9, '品牌名称：宁蔓<br/>产品参数：<br/>材质成分: 聚酯纤维100%销售渠道类型: 纯电商(只在线上销售)品牌: 宁蔓货号: HS-5198服装版型: 修身厚薄: 常规风格: 通勤通勤: 韩版衣长: 中长款袖长: 长袖领子: 可脱卸帽袖型: 常规衣门襟: 拉链图案: 纯色流行元素/工艺: 带毛领适用年龄: 18-24周岁年份/季节: 2017年冬季颜色分类: (棉衣）--黑色 (棉衣）--军绿色 (', 6);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (9, 'Apple MacBook Air 13.3英寸笔记本电脑I5 8G 128G MQD32CH/A银色', 'b.jpg', 6058, 100, '品牌名称：Apple/苹果<br/>更多参数产品参数：<br/>产品名称：Apple/苹果 MacBook Air ...品牌: Apple/苹果屏幕尺寸: 13.3英寸CPU: 不详显卡类型: 英特尔 HD Graphics 6000显存容量: 共享内存容量机械硬盘容量: 无机械硬盘内存容量: 8GB操作系统: Mac OS', 13);
insert into PRODUCT (id, name, url, price, stock, detail, category_id)
values (10, 'Lenovo/联想 拯救者 R720-15IKB游戏笔记本四核手提电脑15.6英寸', 'c.jpg', 5499, 1, '品牌名称：Lenovo/联想<br/>更多参数产品参数：<br/>证书编号：2012010902583758证书状态：有效申请人名称：联宝(合肥)电子科技有限公司制造商名称：联想(北京)有限公司产品名称：便携式计算机3C产品型号：见附件3C规格型号：见附件产品名称：Lenovo/联想 拯救者 R720...品牌: Lenovo/联想型号: R720-15IKB屏幕尺寸: 15.6英寸CPU: 英特尔 酷睿 i5-7300HQ显卡类型: NVIDIA GeForce GTX1050 Ti (Notebook)显存容量: 4GB机械硬盘容量: 1t内存容量: 8g', 13);
commit;

insert into PRODUCT_CATEGORY (id, name, parent_id)
values (1, '女装/内衣', null);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (2, '男装/运动户外', null);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (3, '女鞋/男鞋/箱包', null);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (4, '手机/数码/电脑办公', null);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (5, '毛呢外套', 1);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (6, '羽绒服', 1);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (7, '棉服', 1);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (8, '夹克', 1);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (9, '单西', 2);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (10, '棉衣', 2);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (11, '平底单鞋', 3);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (12, '高跟单鞋', 3);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (13, '笔记本', 4);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (14, '平板电脑', 4);
insert into PRODUCT_CATEGORY (id, name, parent_id)
values (15, '台式机', 4);
commit;

insert into PROVINCIAL (id, provincial)
values (1, '北京市');
insert into PROVINCIAL (id, provincial)
values (2, '天津市');
insert into PROVINCIAL (id, provincial)
values (3, '上海市');
insert into PROVINCIAL (id, provincial)
values (4, '重庆市');
insert into PROVINCIAL (id, provincial)
values (5, '河北省');
insert into PROVINCIAL (id, provincial)
values (6, '山西省');
insert into PROVINCIAL (id, provincial)
values (7, '台湾省');
insert into PROVINCIAL (id, provincial)
values (8, '辽宁省');
insert into PROVINCIAL (id, provincial)
values (9, '吉林省');
insert into PROVINCIAL (id, provincial)
values (10, '黑龙江省');
insert into PROVINCIAL (id, provincial)
values (11, '江苏省');
insert into PROVINCIAL (id, provincial)
values (12, '浙江省');
insert into PROVINCIAL (id, provincial)
values (13, '安徽省');
insert into PROVINCIAL (id, provincial)
values (14, '福建省');
insert into PROVINCIAL (id, provincial)
values (15, '江西省');
insert into PROVINCIAL (id, provincial)
values (16, '山东省');
insert into PROVINCIAL (id, provincial)
values (17, '河南省');
insert into PROVINCIAL (id, provincial)
values (18, '湖北省');
insert into PROVINCIAL (id, provincial)
values (19, '湖南省');
insert into PROVINCIAL (id, provincial)
values (20, '广东省');
insert into PROVINCIAL (id, provincial)
values (21, '甘肃省');
insert into PROVINCIAL (id, provincial)
values (22, '四川省');
insert into PROVINCIAL (id, provincial)
values (23, '贵州省');
insert into PROVINCIAL (id, provincial)
values (24, '海南省');
insert into PROVINCIAL (id, provincial)
values (25, '云南省');
insert into PROVINCIAL (id, provincial)
values (26, '青海省');
insert into PROVINCIAL (id, provincial)
values (27, '陕西省');
insert into PROVINCIAL (id, provincial)
values (28, '广西壮族自治区');
insert into PROVINCIAL (id, provincial)
values (29, '西藏自治区');
insert into PROVINCIAL (id, provincial)
values (30, '宁夏回族自治区');
insert into PROVINCIAL (id, provincial)
values (31, '新疆维吾尔自治区');
insert into PROVINCIAL (id, provincial)
values (32, '内蒙古自治区');
insert into PROVINCIAL (id, provincial)
values (33, '澳门特别行政区');
insert into PROVINCIAL (id, provincial)
values (34, '香港特别行政区');
commit;

insert into USERS (id, login, name, pwd, sex, phone, photo, birthday, ismaster)
values (1, 'admin', '小红', '123', '女', '1399999999', 'user_default.png', to_date('03-12-2000', 'dd-mm-yyyy'), 1);
insert into USERS (id, login, name, pwd, sex, phone, photo, birthday, ismaster)
values (2, 'master', '刚哥', '123', '男', '18670304414', 'user_default.png', to_date('03-12-2013', 'dd-mm-yyyy'), 1);
insert into USERS (id, login, name, pwd, sex, phone, photo, birthday, ismaster)
values (3, 'user', '谷谷', '123', '男', '18907490081', 'user_default.png', to_date('10-10-1987', 'dd-mm-yyyy'), 0);
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