login:dbuser
pass:dbuser_1234


create table person (
	person_id serial primary key,
	surname varchar(120),
	name varchar(120),
	patronymic varchar(120),
	birth_date date,
	sex char(10),
	birth_place varchar(250),
	address varchar(120),
	telephone varchar(25)
);

alter table person CONVERT TO CHARACTER SET utf8;

INSERT INTO `person` (`person_id`,`surname`,`name`,`patronymic`,`birth_date`,`sex`,`birth_place`,`address`,`telephone`)
 VALUES (1,'Таращук','Роман','Янович','1999-08-12','М', 'місто Миколаїв','Миколаївська область, місто Миколаїв','+38(066)5180749'),
(2,'Махотін','Пармен','Кирсанович','1994-01-01','М', 'місто Житомир','Житомирська область, місто Житомир','+38(066)5187654'),
(3,'Ашанін','Ісаак','Андрійович','1997-09-12','М', 'місто Львів','Львівська область, місто Львів','+38(066)5189087'),
(4,'Хметевський','Микита','Олексійович','1999-03-03','М', 'місто Херсон','Херсонська область, місто Херсон','+38(066)5184312'),
(5,'Гаврилов','Олесь','Михайлович','1995-12-23','М', 'місто Рівне','Волинська область, місто Рівне','+38(066)5182345'),
(6,'Мустафін','Вадим','Антонович','1998-09-30','М', 'місто Одеса','Одеська область, місто Одеса','+38(066)5188703'),
(7,'Пинчук','Любомир','Сергійович','1997-10-11','М', 'місто Київ','Київська область, місто Київ','+38(066)5187349'),
(8,'Ачкасов','Антон','Максимович','1995-12-22','М', 'місто Київ','Київська область, місто Київ','+38(066)5180976'),
(9,'Мацко','Артем','Кирсанович','1997-03-25','М', 'місто Київ','Київська область, місто Київ','+38(066)5180099'),
(10,'Туабе','Ігор','Андрійович','1992-11-11','М', 'місто Київ','Київська область, місто Київ','+38(066)5188977'),
(11,'Карголомський','Володимир','Олексійович','1989-04-19','М', 'місто Київ','Київська область, місто Київ','+38(066)5189066'),
(12,'Гедіанов','Борис','Михайлович','1995-11-02','М', 'місто Київ','Київська область, місто Київ','+38(066)5184478'),
(13,'Грищук','Єгор','Антонович','1996-06-09','М', 'місто Київ','Київська область, місто Київ','+38(066)5189023'),
(14,'Омельченко','Василь','Сергійович','1997-11-28','М', 'місто Київ','Київська область, місто Київ','+38(066)5185578'),
(15,'Олексієнко','Ворфоломій','Максимович','1999-02-22','М', 'місто Київ','Київська область, місто Київ','+38(066)5187865'),
(16,'Губін','Володимир','Олексійович','1998-11-08','М', 'місто Київ','Київська область, місто Київ','+38(066)5181010'),
(17,'Озеров','Борис','Акимович','2000-09-07','М', 'місто Київ','Київська область, місто Київ','+38(066)5182323'),
(18,'Муромцев','Єгор','Степанович','1999-08-15','М', 'місто Київ','Київська область, місто Київ','+38(066)5184554'),
(19,'Григорович','Василь','Абакумович','1993-05-04','М', 'місто Житомир','Київська область, місто Київ','+38(066)5186776'),
(20,'Сазонов','Ворфоломій','Максимович','1997-12-24','М', 'місто Київ','Київська область, місто Київ','+38(063)4438822'),
(21,'Червінський','Олексій','Олексійович','1998-09-14','М', 'місто Рівне','Київська область, місто Київ','+38(063)4438762'),
(22,'Єльчан','Петро','Михайлович','1999-03-30','М', 'місто Київ','Київська область, місто Київ','+38(063)4439088'),
(23,'Романюк','Віталій','Антонович','1996-01-24','М', 'місто Київ','Київська область, місто Київ','+38(063)4438778'),
(24,'Жедринський','Остап','Сергійович','1998-09-12','М', 'місто Київ','Київська область, місто Київ','+38(063)4430909'),
(25,'Мінін','Михайло','Максимович','1994-10-12','М', 'місто Київ','Київська область, місто Київ','+38(063)4433223'),
(26,'Ширинкий','Єдуард','Олексійович','1997-11-23','М', 'місто Київ','Київська область, місто Київ','+38(063)4433443'),
(27,'Корелін','Артем','Акимович','1996-12-30','М', 'місто Одеса','Київська область, місто Київ','+38(063)4434334'),
(28,'Бухарин','Єгор','Степанович','1994-10-29','М', 'місто Київ','Київська область, місто Київ','+38(063)4438778'),
(29,'Васильченко','Василь','Романович','2000-02-03','М', 'місто Київ','Київська область, місто Київ','+38(063)4431001'),
(30,'Пес','Андрій','Максимович','1997-07-18','М', 'місто Донецьк','Київська область, місто Київ','+38(063)4433344'),
(31,'Шимановська','Олена','Александрівна','1999-08-12','Ж', 'місто Миколаїв','Миколаївська область, місто Миколаїв','+38(066)5154749'),
(32,'Братцова','Олеся','Володимирівна','1994-01-01','Ж', 'місто Житомир','Житомирська область, місто Житомир','+38(066)5177754'),
(33,'Арбузова','Єлизавета','Олексіївна','1997-09-12','Ж', 'місто Львів','Львівська область, місто Львів','+38(066)5567087'),
(34,'Шелехова','Марія','Леонідівна','1999-03-03','Ж', 'місто Херсон','Херсонська область, місто Херсон','+38(066)5183312'),
(35,'Деменкова','Вікторія','Михайлівна','1995-12-23','Ж', 'місто Рівне','Волинська область, місто Рівне','+38(066)5232345'),
(36,'Бульвінська','Аннета','Романівна','1998-09-30','Ж', 'місто Одеса','Одеська область, місто Одеса','+38(066)2088703'),
(37,'Лисиченко','Людмила','Сергіївна','1997-10-11','Ж', 'місто Київ','Київська область, місто Київ','+38(066)3237349'),
(38,'Ракітська','Світлана','Максимівна','1995-12-22','Ж', 'місто Київ','Київська область, місто Київ','+38(066)4640976'),
(39,'Марченко','Василина','Андріївна','1997-03-25','Ж', 'місто Київ','Київська область, місто Київ','+38(066)1210099'),
(40,'Чекрижко','Юлія','Петрівна','1992-11-11','Ж', 'місто Київ','Київська область, місто Київ','+38(066)9908977'),
(41,'Штеканська','Віталіна','Александрівна','1999-08-12','Ж', 'місто Миколаїв','Миколаївська область, місто Миколаїв','+38(066)6764749'),
(42,'Рамченко','Маргарита','Володимирівна','1994-01-01','Ж', 'місто Житомир','Житомирська область, місто Житомир','+38(066)8077754'),
(43,'Рима','Єлизавета','Олексіївна','1997-09-12','Ж', 'місто Львів','Львівська область, місто Львів','+38(066)6767087'),
(44,'Чалик','Христина','Леонідівна','1999-03-03','Ж', 'місто Херсон','Херсонська область, місто Херсон','+38(066)7459312'),
(45,'Пестикова','Катерина','Михайлівна','1995-12-23','Ж', 'місто Рівне','Волинська область, місто Рівне','+38(066)7882345'),
(46,'Вісник','Людмила','Романівна','1998-09-30','Ж', 'місто Одеса','Одеська область, місто Одеса','+38(066)9090703'),
(47,'Райченко','Ніколь','Сергіївна','1997-10-11','Ж', 'місто Київ','Київська область, місто Київ','+38(066)1897349'),
(48,'Дорофеева','Лоліта','Максимівна','1995-12-22','Ж', 'місто Київ','Київська область, місто Київ','+38(066)3230976'),
(49,'Лосось','Марія','Андріївна','1997-03-25','Ж', 'місто Київ','Київська область, місто Київ','+38(066)5345699'),
(50,'Цой','Лілія','Петрівна','1992-11-11','Ж', 'місто Київ','Київська область, місто Київ','+38(066)5678977'),
(51,'Мацко','Віталіна','Александрівна','1999-08-12','Ж', 'місто Миколаїв','Миколаївська область, місто Миколаїв','+38(066)9898749'),
(52,'Зелена','Роза','Володимирівна','1994-01-01','Ж', 'місто Житомир','Житомирська область, місто Житомир','+38(066)7897754'),
(53,'Крамер','Афанасія','Олексіївна','1997-09-12','Ж', 'місто Львів','Львівська область, місто Львів','+38(066)5545687'),
(54,'Писарук','Антоніна','Леонідівна','1999-03-03','Ж', 'місто Херсон','Херсонська область, місто Херсон','+38(066)1283312'),
(55,'Лінько','Дора','Михайлівна','1995-12-23','Ж', 'місто Рівне','Волинська область, місто Рівне','+38(066)4322345'),
(56,'Ханькова','Касія','Романівна','1998-09-30','Ж', 'місто Одеса','Одеська область, місто Одеса','+38(066)3128703'),
(57,'Червінська','Євгенія','Сергіївна','1997-10-11','Ж', 'місто Київ','Київська область, місто Київ','+38(066)4337349'),
(58,'Блінова','Ангеліна','Максимівна','1995-12-22','Ж', 'місто Київ','Київська область, місто Київ','+38(066)3380976'),
(59,'Тарасова','Ліна','Андріївна','1997-03-25','Ж', 'місто Київ','Київська область, місто Київ','+38(066)5210099'),
(60,'Булгакова','Рахиль','Петрівна','1992-11-11','Ж', 'місто Київ','Київська область, місто Київ','+38(066)5644977'),
(61,'Теряев','Роман','Янович','1999-08-12','М', 'місто Миколаїв','Миколаївська область, місто Миколаїв','+38(066)5654749'),
(62,'Свинів','Пармен','Кирсанович','1994-01-01','М', 'місто Житомир','Житомирська область, місто Житомир','+38(066)6787654'),
(63,'Островський','Ісаак','Андрійович','1997-09-12','М', 'місто Львів','Львівська область, місто Львів','+38(066)5189087'),
(64,'Хметев','Микита','Олексійович','1999-03-03','М', 'місто Херсон','Херсонська область, місто Херсон','+38(066)5198712'),
(65,'Гавриленко','Олесь','Михайлович','1995-12-23','М', 'місто Рівне','Волинська область, місто Рівне','+38(066)5998345'),
(66,'Мустафінанів','Вадим','Антонович','1998-09-30','М', 'місто Одеса','Одеська область, місто Одеса','+38(066)2378703'),
(67,'Пинчуков','Любомир','Сергійович','1997-10-11','М', 'місто Київ','Київська область, місто Київ','+38(066)5767349'),
(68,'Ачкас','Антон','Максимович','1995-12-22','М', 'місто Київ','Київська область, місто Київ','+38(066)5874576'),
(69,'Мацкович','Артем','Кирсанович','1997-03-25','М', 'місто Київ','Київська область, місто Київ','+38(066)4900099'),
(70,'Туаберів','Ігор','Андрійович','1992-11-11','М', 'місто Київ','Київська область, місто Київ','+38(066)7898977'),
(71,'Коломойський','Володимир','Олексійович','1989-04-19','М', 'місто Київ','Київська область, місто Київ','+38(063)5189066'),
(72,'Гедіан','Борис','Михайлович','1995-11-02','М', 'місто Київ','Київська область, місто Київ','+38(063)5184478'),
(73,'Грищуков','Єгор','Антонович','1996-06-09','М', 'місто Київ','Київська область, місто Київ','+38(063)5189023'),
(74,'Омельчик','Василь','Сергійович','1997-11-28','М', 'місто Київ','Київська область, місто Київ','+38(063)5185578'),
(75,'Олексійченко','Ворфоломій','Максимович','1999-02-22','М', 'місто Київ','Київська область, місто Київ','+38(063)5187865'),
(76,'Губінов','Володимир','Олексійович','1998-11-08','М', 'місто Київ','Київська область, місто Київ','+38(063)5181010'),
(77,'Озеровиченко','Борис','Акимович','2000-09-07','М', 'місто Київ','Київська область, місто Київ','+38(063)5182323'),
(78,'Муромець','Єгор','Степанович','1999-08-15','М', 'місто Київ','Київська область, місто Київ','+38(063)5184554'),
(79,'Григорьев','Василь','Абакумович','1993-05-04','М', 'місто Житомир','Київська область, місто Київ','+38(063)5186776'),
(80,'Сізіпов','Ворфоломій','Максимович','1997-12-24','М', 'місто Київ','Київська область, місто Київ','+38(063)3338822'),
(81,'Червіненко','Олексій','Олексійович','1998-09-14','М', 'місто Рівне','Київська область, місто Київ','+38(063)4556662'),
(82,'Єльзенко','Петро','Михайлович','1999-03-30','М', 'місто Київ','Київська область, місто Київ','+38(093)4439088'),
(83,'Ромченко','Віталій','Антонович','1996-01-24','М', 'місто Київ','Київська область, місто Київ','+38(093)4438778'),
(84,'Жедринов','Остап','Сергійович','1998-09-12','М', 'місто Київ','Київська область, місто Київ','+38(093)4430909'),
(85,'Мінченко','Михайло','Максимович','1994-10-12','М', 'місто Київ','Київська область, місто Київ','+38(093)4433223'),
(86,'Ширинкевич','Єдуард','Олексійович','1997-11-23','М', 'місто Київ','Київська область, місто Київ','+38(093)4433443'),
(87,'Корейський','Артем','Акимович','1996-12-30','М', 'місто Одеса','Київська область, місто Київ','+38(093)4434334'),
(88,'Бухарін','Єгор','Степанович','1994-10-29','М', 'місто Київ','Київська область, місто Київ','+38(093)4438778'),
(89,'Васильвич','Василь','Романович','2000-02-03','М', 'місто Київ','Київська область, місто Київ','+38(093)4431001'),
(90,'Пасічник','Андрій','Максимович','1997-07-18','М', 'місто Донецьк','Київська область, місто Київ','+38(093)4433344'),
(91,'Шимановець','Олена','Александрівна','1999-08-12','Ж', 'місто Миколаїв','Миколаївська область, місто Миколаїв','+38(093)5154749'),
(92,'Братценко','Олеся','Володимирівна','1994-01-01','Ж', 'місто Житомир','Житомирська область, місто Житомир','+38(093)5177754'),
(93,'Кавунко','Єлизавета','Олексіївна','1997-09-12','Ж', 'місто Львів','Львівська область, місто Львів','+38(093)5567087'),
(94,'Шелестів','Марія','Леонідівна','1999-03-03','Ж', 'місто Херсон','Херсонська область, місто Херсон','+38(093)5183312'),
(95,'Деменченко','Вікторія','Михайлівна','1995-12-23','Ж', 'місто Рівне','Волинська область, місто Рівне','+38(093)5232345'),
(96,'Бульман','Аннета','Романівна','1998-09-30','Ж', 'місто Одеса','Одеська область, місто Одеса','+38(093)2088703'),
(97,'Лисичкова','Людмила','Сергіївна','1997-10-11','Ж', 'місто Київ','Київська область, місто Київ','+38(093)3237349'),
(98,'Ракітченко','Світлана','Максимівна','1995-12-22','Ж', 'місто Київ','Київська область, місто Київ','+38(093)4640976'),
(99,'Марчева','Василина','Андріївна','1997-03-25','Ж', 'місто Київ','Київська область, місто Київ','+38(093)1210099'),
(100,'Червона','Юлія','Петрівна','1992-11-11','Ж', 'місто Київ','Київська область, місто Київ','+38(066)9908977'),
(101,'Штека','Віталіна','Александрівна','1999-08-12','Ж', 'місто Миколаїв','Миколаївська область, місто Миколаїв','+38(066)9364749'),
(102,'Рамчер','Маргарита','Володимирівна','1994-01-01','Ж', 'місто Житомир','Житомирська область, місто Житомир','+38(066)9397754'),
(103,'Рименко','Єлизавета','Олексіївна','1997-09-12','Ж', 'місто Львів','Львівська область, місто Львів','+38(066)6769087'),
(104,'Чахлик','Христина','Леонідівна','1999-03-03','Ж', 'місто Херсон','Херсонська область, місто Херсон','+38(066)7459992'),
(105,'Пестиченко','Катерина','Михайлівна','1995-12-23','Ж', 'місто Рівне','Волинська область, місто Рівне','+38(066)7672345'),
(106,'Вісниченко','Людмила','Романівна','1998-09-30','Ж', 'місто Одеса','Одеська область, місто Одеса','+38(066)9098903'),
(107,'Райова','Ніколь','Сергіївна','1997-10-11','Ж', 'місто Київ','Київська область, місто Київ','+38(066)1890099'),
(108,'Дорофенко','Лоліта','Максимівна','1995-12-22','Ж', 'місто Київ','Київська область, місто Київ','+38(066)3004976'),
(109,'Лососенко','Марія','Андріївна','1997-03-25','Ж', 'місто Київ','Київська область, місто Київ','+38(066)5344999'),
(110,'Цінько','Лілія','Петрівна','1992-11-11','Ж', 'місто Київ','Київська область, місто Київ','+38(066)5670017'),
(111,'Мацкович','Віталіна','Александрівна','1999-08-12','Ж', 'місто Миколаїв','Миколаївська область, місто Миколаїв','+38(096)9898749'),
(112,'Зелененко','Роза','Володимирівна','1994-01-01','Ж', 'місто Житомир','Житомирська область, місто Житомир','+38(096)7897754'),
(113,'Краменко','Афанасія','Олексіївна','1997-09-12','Ж', 'місто Львів','Львівська область, місто Львів','+38(096)5545687'),
(114,'Писарченко','Антоніна','Леонідівна','1999-03-03','Ж', 'місто Херсон','Херсонська область, місто Херсон','+38(096)1283312'),
(115,'Лінькова','Дора','Михайлівна','1995-12-23','Ж', 'місто Рівне','Волинська область, місто Рівне','+38(096)4322345'),
(116,'Ханько','Касія','Романівна','1998-09-30','Ж', 'місто Одеса','Одеська область, місто Одеса','+38(096)3128703'),
(117,'Червін','Євгенія','Сергіївна','1997-10-11','Ж', 'місто Київ','Київська область, місто Київ','+38(096)4337349'),
(118,'Бліненко','Ангеліна','Максимівна','1995-12-22','Ж', 'місто Київ','Київська область, місто Київ','+38(096)3380976'),
(119,'Тарасенко','Ліна','Андріївна','1997-03-25','Ж', 'місто Київ','Київська область, місто Київ','+38(096)5210099'),
(120,'Булгарова','Рахиль','Петрівна','1992-11-11','Ж', 'місто Київ','Київська область, місто Київ','+38(096)5644977');



create table smark (
	mark_id serial primary key,
	mark_name integer
);



INSERT INTO `smark` (`mark_id`, `mark_name`) VALUES ('1','100'),('2','99'),('3','98'),('4','97'),('5','96'),('6','95'),('7','94'),('8','93'),('9','92'),('10','91'),('11','90'),('12','89'),('13','88'),('14','87'),('15','86'),('16','85'),('17','84'),('18','83'),('19','82'),('20','81'),('21','80'),('22','79'),('23','78'),('24','77'),('25','76'),('26','75'),('27','74'),('28','73'),('29','72'),('30','71'),('31','70'),('32','69'),('33','68'),('34','67'),('35','66'),('36','65'),('37','64'),('38','63'),('39','62'),('40','61'),('41','60');





create table student_marks (
	student_id bigint unsigned not null,
	mark_id bigint unsigned not null,
	foreign key (student_id) references student(student_id) on update cascade,
	foreign key (mark_id) references smark(mark_id) on update cascade
);

insert into student_marks (student_id, mark_id) values (1, 16);
insert into student_marks (student_id, mark_id) values (2, 23);
insert into student_marks (student_id, mark_id) values (3, 8);
insert into student_marks (student_id, mark_id) values (4, 5);
insert into student_marks (student_id, mark_id) values (5, 10);
insert into student_marks (student_id, mark_id) values (6, 34);
insert into student_marks (student_id, mark_id) values (7, 12);
insert into student_marks (student_id, mark_id) values (8, 38);
insert into student_marks (student_id, mark_id) values (9, 19);
insert into student_marks (student_id, mark_id) values (10, 8);
insert into student_marks (student_id, mark_id) values (11, 35);
insert into student_marks (student_id, mark_id) values (12, 9);
insert into student_marks (student_id, mark_id) values (13, 30);
insert into student_marks (student_id, mark_id) values (14, 21);
insert into student_marks (student_id, mark_id) values (15, 40);
insert into student_marks (student_id, mark_id) values (16, 38);
insert into student_marks (student_id, mark_id) values (17, 38);
insert into student_marks (student_id, mark_id) values (18, 21);
insert into student_marks (student_id, mark_id) values (19, 4);
insert into student_marks (student_id, mark_id) values (20, 6);
insert into student_marks (student_id, mark_id) values (21, 8);
insert into student_marks (student_id, mark_id) values (22, 27);
insert into student_marks (student_id, mark_id) values (23, 26);
insert into student_marks (student_id, mark_id) values (24, 41);
insert into student_marks (student_id, mark_id) values (25, 15);
insert into student_marks (student_id, mark_id) values (26, 35);
insert into student_marks (student_id, mark_id) values (27, 22);
insert into student_marks (student_id, mark_id) values (28, 13);
insert into student_marks (student_id, mark_id) values (29, 15);
insert into student_marks (student_id, mark_id) values (30, 24);
insert into student_marks (student_id, mark_id) values (31, 30);
insert into student_marks (student_id, mark_id) values (32, 22);
insert into student_marks (student_id, mark_id) values (33, 16);
insert into student_marks (student_id, mark_id) values (34, 31);
insert into student_marks (student_id, mark_id) values (35, 29);
insert into student_marks (student_id, mark_id) values (36, 12);
insert into student_marks (student_id, mark_id) values (37, 18);
insert into student_marks (student_id, mark_id) values (38, 34);
insert into student_marks (student_id, mark_id) values (39, 32);
insert into student_marks (student_id, mark_id) values (40, 40);
insert into student_marks (student_id, mark_id) values (41, 6);
insert into student_marks (student_id, mark_id) values (42, 38);
insert into student_marks (student_id, mark_id) values (43, 15);
insert into student_marks (student_id, mark_id) values (44, 40);
insert into student_marks (student_id, mark_id) values (45, 34);
insert into student_marks (student_id, mark_id) values (46, 10);
insert into student_marks (student_id, mark_id) values (47, 2);
insert into student_marks (student_id, mark_id) values (48, 6);
insert into student_marks (student_id, mark_id) values (49, 3);
insert into student_marks (student_id, mark_id) values (50, 32);
insert into student_marks (student_id, mark_id) values (51, 35);
insert into student_marks (student_id, mark_id) values (52, 5);
insert into student_marks (student_id, mark_id) values (53, 39);
insert into student_marks (student_id, mark_id) values (54, 30);
insert into student_marks (student_id, mark_id) values (55, 35);
insert into student_marks (student_id, mark_id) values (56, 38);
insert into student_marks (student_id, mark_id) values (57, 39);
insert into student_marks (student_id, mark_id) values (58, 23);
insert into student_marks (student_id, mark_id) values (59, 20);
insert into student_marks (student_id, mark_id) values (60, 23);
insert into student_marks (student_id, mark_id) values (61, 35);
insert into student_marks (student_id, mark_id) values (62, 38);
insert into student_marks (student_id, mark_id) values (63, 8);
insert into student_marks (student_id, mark_id) values (64, 3);
insert into student_marks (student_id, mark_id) values (65, 41);
insert into student_marks (student_id, mark_id) values (66, 4);
insert into student_marks (student_id, mark_id) values (67, 37);
insert into student_marks (student_id, mark_id) values (68, 39);
insert into student_marks (student_id, mark_id) values (69, 12);
insert into student_marks (student_id, mark_id) values (70, 26);
insert into student_marks (student_id, mark_id) values (71, 20);
insert into student_marks (student_id, mark_id) values (72, 34);
insert into student_marks (student_id, mark_id) values (73, 27);
insert into student_marks (student_id, mark_id) values (74, 23);
insert into student_marks (student_id, mark_id) values (75, 17);
insert into student_marks (student_id, mark_id) values (76, 9);
insert into student_marks (student_id, mark_id) values (77, 24);
insert into student_marks (student_id, mark_id) values (78, 14);
insert into student_marks (student_id, mark_id) values (79, 19);
insert into student_marks (student_id, mark_id) values (80, 33);
insert into student_marks (student_id, mark_id) values (81, 31);
insert into student_marks (student_id, mark_id) values (82, 18);
insert into student_marks (student_id, mark_id) values (83, 12);
insert into student_marks (student_id, mark_id) values (84, 19);
insert into student_marks (student_id, mark_id) values (85, 40);
insert into student_marks (student_id, mark_id) values (86, 31);
insert into student_marks (student_id, mark_id) values (87, 39);
insert into student_marks (student_id, mark_id) values (88, 37);
insert into student_marks (student_id, mark_id) values (89, 36);
insert into student_marks (student_id, mark_id) values (90, 16);
insert into student_marks (student_id, mark_id) values (91, 20);
insert into student_marks (student_id, mark_id) values (92, 10);
insert into student_marks (student_id, mark_id) values (93, 39);
insert into student_marks (student_id, mark_id) values (94, 22);
insert into student_marks (student_id, mark_id) values (95, 24);
insert into student_marks (student_id, mark_id) values (96, 29);
insert into student_marks (student_id, mark_id) values (97, 23);
insert into student_marks (student_id, mark_id) values (98, 41);
insert into student_marks (student_id, mark_id) values (99, 38);
insert into student_marks (student_id, mark_id) values (100, 3);
insert into student_marks (student_id, mark_id) values (101, 18);
insert into student_marks (student_id, mark_id) values (102, 41);
insert into student_marks (student_id, mark_id) values (103, 28);
insert into student_marks (student_id, mark_id) values (104, 8);
insert into student_marks (student_id, mark_id) values (105, 15);
insert into student_marks (student_id, mark_id) values (106, 24);
insert into student_marks (student_id, mark_id) values (107, 41);
insert into student_marks (student_id, mark_id) values (108, 25);
insert into student_marks (student_id, mark_id) values (109, 32);
insert into student_marks (student_id, mark_id) values (110, 3);
insert into student_marks (student_id, mark_id) values (111, 41);
insert into student_marks (student_id, mark_id) values (112, 28);
insert into student_marks (student_id, mark_id) values (113, 40);
insert into student_marks (student_id, mark_id) values (114, 40);
insert into student_marks (student_id, mark_id) values (115, 23);
insert into student_marks (student_id, mark_id) values (116, 29);
insert into student_marks (student_id, mark_id) values (117, 22);
insert into student_marks (student_id, mark_id) values (118, 31);
insert into student_marks (student_id, mark_id) values (119, 41);
insert into student_marks (student_id, mark_id) values (120, 29);





create table student_group (
	group_id bigint unsigned not null,
	student_id bigint unsigned not null,
	putting_date date,
	foreign key (student_id) references student(student_id) on update cascade,
	foreign key (group_id) references groups(group_id) on update cascade
);


insert into student_group (group_id, student_id, putting_date) values (17, 1, '2023-06-19');
insert into student_group (group_id, student_id, putting_date) values (22, 2, '2020-10-27');
insert into student_group (group_id, student_id, putting_date) values (2, 3, '2021-04-08');
insert into student_group (group_id, student_id, putting_date) values (26, 4, '2020-09-05');
insert into student_group (group_id, student_id, putting_date) values (13, 5, '2020-07-31');
insert into student_group (group_id, student_id, putting_date) values (17, 6, '2022-05-21');
insert into student_group (group_id, student_id, putting_date) values (18, 7, '2021-04-26');
insert into student_group (group_id, student_id, putting_date) values (20, 8, '2023-03-29');
insert into student_group (group_id, student_id, putting_date) values (21, 9, '2019-11-07');
insert into student_group (group_id, student_id, putting_date) values (20, 10, '2020-12-02');
insert into student_group (group_id, student_id, putting_date) values (10, 11, '2020-12-09');
insert into student_group (group_id, student_id, putting_date) values (14, 12, '2023-10-05');
insert into student_group (group_id, student_id, putting_date) values (8, 13, '2021-04-27');
insert into student_group (group_id, student_id, putting_date) values (24, 14, '2023-09-17');
insert into student_group (group_id, student_id, putting_date) values (27, 15, '2022-03-16');
insert into student_group (group_id, student_id, putting_date) values (8, 16, '2023-05-13');
insert into student_group (group_id, student_id, putting_date) values (15, 17, '2022-09-27');
insert into student_group (group_id, student_id, putting_date) values (23, 18, '2023-09-16');
insert into student_group (group_id, student_id, putting_date) values (25, 19, '2022-05-06');
insert into student_group (group_id, student_id, putting_date) values (24, 20, '2021-01-20');
insert into student_group (group_id, student_id, putting_date) values (24, 21, '2021-12-20');
insert into student_group (group_id, student_id, putting_date) values (20, 22, '2022-04-11');
insert into student_group (group_id, student_id, putting_date) values (29, 23, '2019-10-27');
insert into student_group (group_id, student_id, putting_date) values (7, 24, '2019-10-17');
insert into student_group (group_id, student_id, putting_date) values (30, 25, '2021-02-15');
insert into student_group (group_id, student_id, putting_date) values (18, 26, '2020-12-01');
insert into student_group (group_id, student_id, putting_date) values (6, 27, '2022-10-27');
insert into student_group (group_id, student_id, putting_date) values (5, 28, '2021-12-25');
insert into student_group (group_id, student_id, putting_date) values (20, 29, '2020-06-01');
insert into student_group (group_id, student_id, putting_date) values (12, 30, '2020-04-24');
insert into student_group (group_id, student_id, putting_date) values (13, 31, '2019-12-14');
insert into student_group (group_id, student_id, putting_date) values (5, 32, '2023-02-03');
insert into student_group (group_id, student_id, putting_date) values (21, 33, '2022-09-18');
insert into student_group (group_id, student_id, putting_date) values (4, 34, '2023-06-09');
insert into student_group (group_id, student_id, putting_date) values (18, 35, '2022-02-13');
insert into student_group (group_id, student_id, putting_date) values (17, 36, '2022-07-18');
insert into student_group (group_id, student_id, putting_date) values (1, 37, '2020-06-02');
insert into student_group (group_id, student_id, putting_date) values (8, 38, '2021-07-21');
insert into student_group (group_id, student_id, putting_date) values (12, 39, '2023-10-05');
insert into student_group (group_id, student_id, putting_date) values (3, 40, '2020-03-15');
insert into student_group (group_id, student_id, putting_date) values (23, 41, '2019-12-28');
insert into student_group (group_id, student_id, putting_date) values (26, 42, '2022-07-11');
insert into student_group (group_id, student_id, putting_date) values (30, 43, '2020-05-12');
insert into student_group (group_id, student_id, putting_date) values (11, 44, '2022-08-18');
insert into student_group (group_id, student_id, putting_date) values (29, 45, '2021-04-23');
insert into student_group (group_id, student_id, putting_date) values (14, 46, '2022-06-22');
insert into student_group (group_id, student_id, putting_date) values (11, 47, '2022-09-23');
insert into student_group (group_id, student_id, putting_date) values (29, 48, '2019-12-18');
insert into student_group (group_id, student_id, putting_date) values (13, 49, '2019-10-20');
insert into student_group (group_id, student_id, putting_date) values (6, 50, '2020-10-09');
insert into student_group (group_id, student_id, putting_date) values (15, 51, '2023-04-29');
insert into student_group (group_id, student_id, putting_date) values (25, 52, '2022-12-18');
insert into student_group (group_id, student_id, putting_date) values (11, 53, '2022-07-03');
insert into student_group (group_id, student_id, putting_date) values (12, 54, '2021-06-29');
insert into student_group (group_id, student_id, putting_date) values (27, 55, '2020-08-25');
insert into student_group (group_id, student_id, putting_date) values (13, 56, '2023-01-31');
insert into student_group (group_id, student_id, putting_date) values (11, 57, '2020-02-20');
insert into student_group (group_id, student_id, putting_date) values (28, 58, '2021-09-19');
insert into student_group (group_id, student_id, putting_date) values (23, 59, '2023-07-31');
insert into student_group (group_id, student_id, putting_date) values (27, 60, '2021-02-20');
insert into student_group (group_id, student_id, putting_date) values (9, 61, '2022-09-20');
insert into student_group (group_id, student_id, putting_date) values (10, 62, '2021-06-15');
insert into student_group (group_id, student_id, putting_date) values (21, 63, '2021-04-14');
insert into student_group (group_id, student_id, putting_date) values (30, 64, '2020-12-04');
insert into student_group (group_id, student_id, putting_date) values (29, 65, '2021-06-14');
insert into student_group (group_id, student_id, putting_date) values (22, 66, '2021-03-27');
insert into student_group (group_id, student_id, putting_date) values (30, 67, '2020-10-10');
insert into student_group (group_id, student_id, putting_date) values (3, 68, '2020-07-20');
insert into student_group (group_id, student_id, putting_date) values (26, 69, '2021-02-14');
insert into student_group (group_id, student_id, putting_date) values (10, 70, '2020-01-28');
insert into student_group (group_id, student_id, putting_date) values (4, 71, '2020-02-27');
insert into student_group (group_id, student_id, putting_date) values (6, 72, '2023-01-02');
insert into student_group (group_id, student_id, putting_date) values (3, 73, '2021-08-09');
insert into student_group (group_id, student_id, putting_date) values (30, 74, '2020-03-31');
insert into student_group (group_id, student_id, putting_date) values (4, 75, '2022-01-15');
insert into student_group (group_id, student_id, putting_date) values (13, 76, '2020-01-08');
insert into student_group (group_id, student_id, putting_date) values (28, 77, '2021-08-20');
insert into student_group (group_id, student_id, putting_date) values (24, 78, '2022-04-15');
insert into student_group (group_id, student_id, putting_date) values (23, 79, '2022-11-14');
insert into student_group (group_id, student_id, putting_date) values (22, 80, '2023-04-01');
insert into student_group (group_id, student_id, putting_date) values (22, 81, '2022-10-20');
insert into student_group (group_id, student_id, putting_date) values (21, 82, '2019-11-19');
insert into student_group (group_id, student_id, putting_date) values (19, 83, '2021-10-10');
insert into student_group (group_id, student_id, putting_date) values (11, 84, '2022-05-29');
insert into student_group (group_id, student_id, putting_date) values (20, 85, '2021-01-23');
insert into student_group (group_id, student_id, putting_date) values (24, 86, '2020-04-26');
insert into student_group (group_id, student_id, putting_date) values (27, 87, '2022-06-29');
insert into student_group (group_id, student_id, putting_date) values (27, 88, '2022-01-18');
insert into student_group (group_id, student_id, putting_date) values (1, 89, '2020-12-04');
insert into student_group (group_id, student_id, putting_date) values (27, 90, '2020-10-20');
insert into student_group (group_id, student_id, putting_date) values (20, 91, '2022-07-12');
insert into student_group (group_id, student_id, putting_date) values (21, 92, '2020-08-18');
insert into student_group (group_id, student_id, putting_date) values (2, 93, '2021-06-20');
insert into student_group (group_id, student_id, putting_date) values (2, 94, '2022-03-07');
insert into student_group (group_id, student_id, putting_date) values (9, 95, '2021-11-14');
insert into student_group (group_id, student_id, putting_date) values (18, 96, '2021-01-21');
insert into student_group (group_id, student_id, putting_date) values (15, 97, '2022-01-28');
insert into student_group (group_id, student_id, putting_date) values (9, 98, '2020-10-07');
insert into student_group (group_id, student_id, putting_date) values (21, 99, '2021-08-27');
insert into student_group (group_id, student_id, putting_date) values (19, 100, '2019-11-08');
insert into student_group (group_id, student_id, putting_date) values (18, 101, '2021-01-11');
insert into student_group (group_id, student_id, putting_date) values (15, 102, '2020-02-12');
insert into student_group (group_id, student_id, putting_date) values (26, 103, '2020-11-17');
insert into student_group (group_id, student_id, putting_date) values (12, 104, '2023-01-20');
insert into student_group (group_id, student_id, putting_date) values (12, 105, '2020-04-24');
insert into student_group (group_id, student_id, putting_date) values (24, 106, '2023-01-24');
insert into student_group (group_id, student_id, putting_date) values (6, 107, '2022-05-28');
insert into student_group (group_id, student_id, putting_date) values (16, 108, '2023-08-29');
insert into student_group (group_id, student_id, putting_date) values (11, 109, '2023-05-19');
insert into student_group (group_id, student_id, putting_date) values (23, 110, '2022-08-03');
insert into student_group (group_id, student_id, putting_date) values (27, 111, '2021-01-07');
insert into student_group (group_id, student_id, putting_date) values (12, 112, '2023-02-21');
insert into student_group (group_id, student_id, putting_date) values (11, 113, '2020-12-30');
insert into student_group (group_id, student_id, putting_date) values (13, 114, '2020-09-12');
insert into student_group (group_id, student_id, putting_date) values (11, 115, '2021-06-28');
insert into student_group (group_id, student_id, putting_date) values (2, 116, '2020-11-26');
insert into student_group (group_id, student_id, putting_date) values (14, 117, '2023-06-11');
insert into student_group (group_id, student_id, putting_date) values (27, 118, '2023-07-18');
insert into student_group (group_id, student_id, putting_date) values (7, 119, '2020-12-19');
insert into student_group (group_id, student_id, putting_date) values (15, 120, '2021-03-29');

create table groups (
	group_id serial primary key,
	speciality_id BIGINT UNSIGNED not null,
	group_code char(15),
	group_create_date date,
	constraint fk_group_speciality foreign key (speciality_id) references speciality(speciality_id)
);

INSERT INTO `groups` (`group_id`,`speciality_id`,`group_code`,`group_create_date`) VALUES (1,6,"5568","2016-08-01"),(2,12,"2014","2018-08-01"),(3,11,"5819","2018-08-01"),(4,4,"9372","2016-08-01"),(5,4,"9652","2018-08-01"),(6,8,"1858","2016-08-01"),(7,5,"5301","2018-08-01"),(8,7,"3318","2018-08-01"),(9,6,"6293","2016-08-01"),(10,7,"1908","2017-08-01"),(11,11,"4465","2018-08-01"),(12,9,"6412","2018-08-01"),(13,10,"9312","2019-08-01"),(14,4,"8306","2017-08-01"),(15,7,"2756","2014-08-01"),(16,5,"7264","2019-08-01"),(17,3,"8540","2016-08-01"),(18,6,"9047","2015-08-01"),(19,8,"6373","2015-08-01"),(20,12,"2590","2016-08-01"),(21,11,"3009","2016-08-01"),(22,5,"2762","2018-08-01"),(23,4,"3085","2015-08-01"),(24,3,"6199","2014-08-01"),(25,12,"6589","2016-08-01"),(26,9,"7224","2018-08-01"),(27,8,"1465","2019-08-01"),(28,4,"4820","2017-08-01"),(29,5,"8737","2018-08-01"),(30,8,"6227","2014-08-01");




create table speciality (
	speciality_id serial primary key,
	speciality_name varchar(150),
	speciality_shifr char(15)
);

alter table speciality CONVERT TO CHARACTER SET utf8;


INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('1','Комп’ютерні науки','122');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('2','Системний аналіз ','124');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('3','Інженерія програмного забезпечення','121');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('4','Комп’ютерна інженерія','123');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('5','Кібербезпека','125');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('6','Прикладна механіка','131');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('7','Матеріалознавство','132');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('8','Галузеве машинобудування','133');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('9','Авіаційна та ракетно-космічна техніка','134');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('10','Автоматизація та комп’ютерно-інтегровані технології','151');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('11','Метрологія та інформаційно-вимірювальна техніка','152');
INSERT INTO `speciality` (`speciality_id`, `speciality_name`, `speciality_shifr`) VALUES ('12','Мікро- та наносистемна техніка','153');



create table contract(
	contract_id serial primary key,
	student_id bigint unsigned not null,
	contract_kind_id bigint unsigned not null,
	contract_date date,
	contract_number varchar(25),
	contract_sum real,
	constraint fk_contract_student foreign key (student_id) references student(student_id) on delete cascade,
	constraint fk_contract_kind foreign key (contract_kind_id) references scontract_kind(contract_kind_id)
);


insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (1, 1, 4, '2014-05-17', '48219250', 16376);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (2, 2, 3, '2016-11-06', '25016798', 18743);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (3, 3, 4, '2015-12-06', '40844934', 24674);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (4, 4, 1, '2014-04-12', '14146704', 25403);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (5, 5, 4, '2017-03-23', '52306034', 13019);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (6, 6, 1, '2017-04-13', '37278018', 22712);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (7, 7, 4, '2015-03-10', '99508168', 13144);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (8, 8, 2, '2014-02-08', '21240614', 21936);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (9, 9, 3, '2016-01-09', '11885260', 18172);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (10, 10, 4, '2016-11-06', '21856588', 16586);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (11, 11, 4, '2017-10-02', '48766050', 29603);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (12, 12, 4, '2014-07-27', '08582008', 21155);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (13, 13, 4, '2017-08-15', '70592551', 19670);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (14, 14, 2, '2014-06-08', '79561737', 15378);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (15, 15, 2, '2014-07-26', '40141451', 23380);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (16, 16, 3, '2018-03-16', '43425275', 10678);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (17, 17, 4, '2017-01-10', '08588889', 28708);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (18, 18, 3, '2017-07-20', '26584303', 12896);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (19, 19, 3, '2016-12-08', '67228348', 24278);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (20, 20, 4, '2015-05-10', '04289473', 11051);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (21, 21, 1, '2015-03-11', '89860061', 25195);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (22, 22, 4, '2016-11-09', '35875201', 26217);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (23, 23, 4, '2017-09-17', '39433616', 23368);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (24, 24, 4, '2017-08-07', '91863842', 28658);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (25, 25, 2, '2016-04-25', '57853206', 25128);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (26, 26, 1, '2018-01-16', '59565883', 28099);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (27, 27, 2, '2016-05-28', '27317557', 22993);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (28, 28, 2, '2016-03-10', '84074658', 24326);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (29, 29, 4, '2014-04-13', '08432911', 17931);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (30, 30, 1, '2015-07-25', '26710218', 26877);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (31, 31, 4, '2014-05-19', '60872984', 27218);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (32, 32, 3, '2014-03-23', '03808161', 28172);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (33, 33, 4, '2017-07-23', '42078522', 18178);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (34, 34, 2, '2015-11-29', '77086661', 23468);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (35, 35, 2, '2014-07-26', '80370719', 28099);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (36, 36, 1, '2015-09-22', '88193979', 22581);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (37, 37, 4, '2017-11-26', '06727889', 10873);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (38, 38, 3, '2016-01-19', '10629875', 21332);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (39, 39, 2, '2015-12-19', '11223991', 14835);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (40, 40, 3, '2017-11-14', '81828335', 14996);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (41, 41, 3, '2017-06-30', '57181951', 10093);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (42, 42, 3, '2017-12-24', '19629800', 13355);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (43, 43, 3, '2018-06-12', '01609903', 23478);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (44, 44, 2, '2015-03-09', '40969624', 24629);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (45, 45, 4, '2018-07-19', '29780761', 28771);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (46, 46, 3, '2015-04-23', '62024018', 14693);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (47, 47, 1, '2015-10-22', '46227167', 11241);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (48, 48, 2, '2016-02-23', '85341609', 29887);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (49, 49, 3, '2017-05-21', '38429044', 20661);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (50, 50, 2, '2015-09-04', '44135009', 28419);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (51, 51, 1, '2014-05-15', '48938434', 11643);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (52, 52, 1, '2018-12-03', '57103285', 14594);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (53, 53, 1, '2017-09-07', '53539784', 26497);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (54, 54, 1, '2018-09-27', '29627711', 13498);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (55, 55, 4, '2015-05-10', '64836209', 24399);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (56, 56, 1, '2016-09-02', '05098856', 14502);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (57, 57, 1, '2015-01-25', '71227957', 20245);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (58, 58, 1, '2014-09-03', '79360922', 22553);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (59, 59, 4, '2014-05-02', '01678965', 11980);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (60, 60, 4, '2018-11-30', '24345263', 28214);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (61, 61, 3, '2018-01-24', '13183088', 26324);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (62, 62, 3, '2015-11-23', '18012037', 25262);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (63, 63, 2, '2014-11-26', '43724084', 25754);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (64, 64, 4, '2018-06-23', '27244914', 16600);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (65, 65, 4, '2015-12-12', '55496953', 22369);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (66, 66, 1, '2017-08-16', '18542657', 27799);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (67, 67, 3, '2017-07-03', '28554805', 18779);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (68, 68, 4, '2014-08-22', '93352117', 14535);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (69, 69, 3, '2017-04-13', '39921097', 20110);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (70, 70, 1, '2015-12-13', '40791483', 27063);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (71, 71, 1, '2017-02-24', '25987712', 19002);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (72, 72, 1, '2014-03-11', '15389474', 16695);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (73, 73, 1, '2015-01-25', '20419917', 23355);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (74, 74, 1, '2017-12-23', '36221657', 11548);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (75, 75, 1, '2014-07-01', '99865707', 16058);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (76, 76, 2, '2014-01-29', '79416804', 26516);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (77, 77, 4, '2016-04-18', '27122420', 13395);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (78, 78, 3, '2018-10-09', '81658435', 26505);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (79, 79, 4, '2015-03-16', '43540886', 20774);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (80, 80, 1, '2018-12-31', '07212632', 27496);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (81, 81, 3, '2018-11-07', '29515881', 21507);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (82, 82, 4, '2014-09-18', '79505444', 13100);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (83, 83, 1, '2018-09-07', '57194904', 18507);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (84, 84, 4, '2015-02-20', '57539244', 26433);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (85, 85, 4, '2015-09-22', '17870529', 16712);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (86, 86, 2, '2016-07-29', '73732735', 19561);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (87, 87, 1, '2014-09-26', '69908443', 17067);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (88, 88, 1, '2016-12-19', '68167446', 13373);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (89, 89, 2, '2016-09-10', '47215962', 24504);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (90, 90, 1, '2017-12-26', '55128436', 24250);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (91, 91, 1, '2015-12-28', '40940224', 19095);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (92, 92, 4, '2016-06-30', '47101617', 26110);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (93, 93, 3, '2018-09-17', '55352936', 15934);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (94, 94, 3, '2014-04-12', '70572744', 17627);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (95, 95, 2, '2018-08-10', '90042936', 15944);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (96, 96, 3, '2018-03-07', '29932572', 25924);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (97, 97, 4, '2015-07-04', '72454059', 27426);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (98, 98, 2, '2018-06-04', '67880231', 29615);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (99, 99, 4, '2018-08-03', '16782044', 25722);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (100, 100, 1, '2016-07-10', '69105941', 18018);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (101, 101, 2, '2014-08-06', '29427586', 22981);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (102, 102, 3, '2016-05-10', '27243833', 15062);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (103, 103, 2, '2017-08-09', '25391603', 17829);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (104, 104, 3, '2015-06-16', '55789478', 17693);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (105, 105, 2, '2014-01-30', '64584892', 12850);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (106, 106, 2, '2014-04-18', '48882695', 18224);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (107, 107, 4, '2017-03-04', '06552273', 28787);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (108, 108, 1, '2017-12-31', '76480713', 26715);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (109, 109, 4, '2014-10-14', '12189517', 10458);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (110, 110, 3, '2017-02-14', '87226724', 17446);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (111, 111, 3, '2015-04-25', '27634589', 25007);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (112, 112, 3, '2014-01-14', '16930711', 27375);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (113, 113, 4, '2016-05-25', '89963805', 21991);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (114, 114, 3, '2016-10-26', '72626253', 16756);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (115, 115, 3, '2015-06-06', '08919114', 29869);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (116, 116, 2, '2018-10-04', '07627893', 19215);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (117, 117, 2, '2016-04-01', '98434303', 22298);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (118, 118, 4, '2018-11-20', '41017256', 23819);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (119, 119, 2, '2017-04-04', '90660878', 28567);
insert into contract (contract_id, student_id, contract_kind_id, contract_date, contract_number, contract_sum) values (120, 120, 1, '2016-04-03', '89161497', 14448);


create table scontract_kind (
	contract_kind_id serial primary key,
	contract_kind_name varchar(50)
);

alter table scontract_kind CONVERT TO CHARACTER SET utf8;


INSERT INTO `scontract_kind` (`contract_kind_id`, `contract_kind_name`) VALUES ('1','Бюджетний');
INSERT INTO `scontract_kind` (`contract_kind_id`, `contract_kind_name`) VALUES ('2','Платний');
INSERT INTO `scontract_kind` (`contract_kind_id`, `contract_kind_name`) VALUES ('3','Грантовий');
INSERT INTO `scontract_kind` (`contract_kind_id`, `contract_kind_name`) VALUES ('4','Цільовий');


create table student (
	student_id serial primary key,
	person_id bigint unsigned not null,
	book_no char(10),
	note varchar(300),
	foreign key (person_id) references person(person_id) on delete cascade
);

insert into student (student_id, person_id, book_no, note) values (1, 1, 'OP178629', 'tmackereth0@bigcartel.com');
insert into student (student_id, person_id, book_no, note) values (2, 2, 'SE328163', 'tshackell1@parallels.com');
insert into student (student_id, person_id, book_no, note) values (3, 3, 'QC533992', 'lmarchenko2@boston.com');
insert into student (student_id, person_id, book_no, note) values (4, 4, 'JB648501', 'pdinapoli3@jigsy.com');
insert into student (student_id, person_id, book_no, note) values (5, 5, 'CW238474', 'dtregea4@tiny.cc');
insert into student (student_id, person_id, book_no, note) values (6, 6, 'OP178686', 'dyushachkov5@istockphoto.com');
insert into student (student_id, person_id, book_no, note) values (7, 7, 'QD368578', 'mhowcroft6@intel.com');
insert into student (student_id, person_id, book_no, note) values (8, 8, 'MM226075', 'cwaterhous7@indiegogo.com');
insert into student (student_id, person_id, book_no, note) values (9, 9, 'KV174710', 'mmacewan8@jiathis.com');
insert into student (student_id, person_id, book_no, note) values (10, 10, 'FW697081', 'ckubis9@friendfeed.com');
insert into student (student_id, person_id, book_no, note) values (11, 11, 'UF641306', 'lchristiensena@jalbum.net');
insert into student (student_id, person_id, book_no, note) values (12, 12, 'YE555184', 'mlichfieldb@elpais.com');
insert into student (student_id, person_id, book_no, note) values (13, 13, 'AV499241', 'anormanc@arstechnica.com');
insert into student (student_id, person_id, book_no, note) values (14, 14, 'VV293594', 'vbrundelld@booking.com');
insert into student (student_id, person_id, book_no, note) values (15, 15, 'BI765717', 'zuttermaree@ifeng.com');
insert into student (student_id, person_id, book_no, note) values (16, 16, 'BX044641', 'bcalvief@zimbio.com');
insert into student (student_id, person_id, book_no, note) values (17, 17, 'VN084982', 'bfeltoeg@ed.gov');
insert into student (student_id, person_id, book_no, note) values (18, 18, 'HD997728', 'ajiroutekh@soundcloud.com');
insert into student (student_id, person_id, book_no, note) values (19, 19, 'LH370055', 'rcottomi@wikia.com');
insert into student (student_id, person_id, book_no, note) values (20, 20, 'UK867505', 'sducarnej@redcross.org');
insert into student (student_id, person_id, book_no, note) values (21, 21, 'KG378611', 'rorwink@hatena.ne.jp');
insert into student (student_id, person_id, book_no, note) values (22, 22, 'UL791734', 'ltomasl@skyrock.com');
insert into student (student_id, person_id, book_no, note) values (23, 23, 'YC760088', 'darnalm@vkontakte.ru');
insert into student (student_id, person_id, book_no, note) values (24, 24, 'LV512112', 'kdauntern@symantec.com');
insert into student (student_id, person_id, book_no, note) values (25, 25, 'BM518966', 'rlaveno@sakura.ne.jp');
insert into student (student_id, person_id, book_no, note) values (26, 26, 'QA562352', 'ntyerp@hp.com');
insert into student (student_id, person_id, book_no, note) values (27, 27, 'SO771799', 'ncruikshanksq@oracle.com');
insert into student (student_id, person_id, book_no, note) values (28, 28, 'CV786405', 'chuikerbyr@latimes.com');
insert into student (student_id, person_id, book_no, note) values (29, 29, 'TT188759', 'dscranges@wisc.edu');
insert into student (student_id, person_id, book_no, note) values (30, 30, 'JT952090', 'chutchingst@nyu.edu');
insert into student (student_id, person_id, book_no, note) values (31, 31, 'SS055789', 'weustaceu@oaic.gov.au');
insert into student (student_id, person_id, book_no, note) values (32, 32, 'MX473074', 'akemellv@goo.ne.jp');
insert into student (student_id, person_id, book_no, note) values (33, 33, 'RY316705', 'cturfesw@usa.gov');
insert into student (student_id, person_id, book_no, note) values (34, 34, 'GY733750', 'afranzolinix@census.gov');
insert into student (student_id, person_id, book_no, note) values (35, 35, 'LM473747', 'lbebisy@imageshack.us');
insert into student (student_id, person_id, book_no, note) values (36, 36, 'ZE655167', 'gcarmontz@naver.com');
insert into student (student_id, person_id, book_no, note) values (37, 37, 'DT483106', 'gcrowcher10@is.gd');
insert into student (student_id, person_id, book_no, note) values (38, 38, 'HF295478', 'jivanchov11@pinterest.com');
insert into student (student_id, person_id, book_no, note) values (39, 39, 'FR444612', 'ktowers12@hugedomains.com');
insert into student (student_id, person_id, book_no, note) values (40, 40, 'GS255406', 'cgaishson13@jiathis.com');
insert into student (student_id, person_id, book_no, note) values (41, 41, 'WP431528', 'hkennon14@fda.gov');
insert into student (student_id, person_id, book_no, note) values (42, 42, 'XR899340', 'iwilman15@icq.com');
insert into student (student_id, person_id, book_no, note) values (43, 43, 'HO574499', 'hnoyes16@ebay.com');
insert into student (student_id, person_id, book_no, note) values (44, 44, 'NH585926', 'adaveley17@chicagotribune.com');
insert into student (student_id, person_id, book_no, note) values (45, 45, 'HY948842', 'phelder18@mozilla.org');
insert into student (student_id, person_id, book_no, note) values (46, 46, 'GN066905', 'ahagyard19@un.org');
insert into student (student_id, person_id, book_no, note) values (47, 47, 'QD879628', 'htrusler1a@nba.com');
insert into student (student_id, person_id, book_no, note) values (48, 48, 'FR703337', 'ashreeve1b@usda.gov');
insert into student (student_id, person_id, book_no, note) values (49, 49, 'SK086521', 'lmeanwell1c@hc360.com');
insert into student (student_id, person_id, book_no, note) values (50, 50, 'SA827235', 'ymartinec1d@tinypic.com');
insert into student (student_id, person_id, book_no, note) values (51, 51, 'LC244526', 'kchazette1e@people.com.cn');
insert into student (student_id, person_id, book_no, note) values (52, 52, 'RX404256', 'scanario1f@blog.com');
insert into student (student_id, person_id, book_no, note) values (53, 53, 'WJ421196', 'jcollinwood1g@ihg.com');
insert into student (student_id, person_id, book_no, note) values (54, 54, 'TJ539659', 'kbushel1h@livejournal.com');
insert into student (student_id, person_id, book_no, note) values (55, 55, 'OY547649', 'amatts1i@google.com.au');
insert into student (student_id, person_id, book_no, note) values (56, 56, 'RC117353', 'ltweedle1j@oaic.gov.au');
insert into student (student_id, person_id, book_no, note) values (57, 57, 'HZ770605', 'etrussell1k@jiathis.com');
insert into student (student_id, person_id, book_no, note) values (58, 58, 'YF423763', 'clankester1l@studiopress.com');
insert into student (student_id, person_id, book_no, note) values (59, 59, 'DG724950', 'hmccarron1m@msu.edu');
insert into student (student_id, person_id, book_no, note) values (60, 60, 'XG051283', 'vduran1n@unc.edu');
insert into student (student_id, person_id, book_no, note) values (61, 61, 'BA126176', 'jjeffels1o@networksolutions.com');
insert into student (student_id, person_id, book_no, note) values (62, 62, 'YT201890', 'yhaton1p@pagesperso-orange.fr');
insert into student (student_id, person_id, book_no, note) values (63, 63, 'SF023106', 'tfeveryear1q@nifty.com');
insert into student (student_id, person_id, book_no, note) values (64, 64, 'OJ892293', 'kpallent1r@ca.gov');
insert into student (student_id, person_id, book_no, note) values (65, 65, 'HS290668', 'kgillbard1s@mtv.com');
insert into student (student_id, person_id, book_no, note) values (66, 66, 'QF842393', 'ggeill1t@umich.edu');
insert into student (student_id, person_id, book_no, note) values (67, 67, 'AU637481', 'ljann1u@elegantthemes.com');
insert into student (student_id, person_id, book_no, note) values (68, 68, 'ML030914', 'bacomb1v@wp.com');
insert into student (student_id, person_id, book_no, note) values (69, 69, 'MU972781', 'cspurr1w@amazon.co.jp');
insert into student (student_id, person_id, book_no, note) values (70, 70, 'HF466092', 'ffrances1x@archive.org');
insert into student (student_id, person_id, book_no, note) values (71, 71, 'LR010919', 'epawlowicz1y@twitter.com');
insert into student (student_id, person_id, book_no, note) values (72, 72, 'ZE337637', 'sshrigley1z@amazon.com');
insert into student (student_id, person_id, book_no, note) values (73, 73, 'IP451606', 'cdomelow20@wordpress.org');
insert into student (student_id, person_id, book_no, note) values (74, 74, 'DN398837', 'fbreagan21@unc.edu');
insert into student (student_id, person_id, book_no, note) values (75, 75, 'ZX480606', 'selder22@bbc.co.uk');
insert into student (student_id, person_id, book_no, note) values (76, 76, 'NA472582', 'mbigglestone23@geocities.jp');
insert into student (student_id, person_id, book_no, note) values (77, 77, 'GK627265', 'neynald24@prnewswire.com');
insert into student (student_id, person_id, book_no, note) values (78, 78, 'XR984534', 'kbullman25@google.com.hk');
insert into student (student_id, person_id, book_no, note) values (79, 79, 'MR983361', 'ulinnitt26@soundcloud.com');
insert into student (student_id, person_id, book_no, note) values (80, 80, 'SQ722623', 'agommery27@ezinearticles.com');
insert into student (student_id, person_id, book_no, note) values (81, 81, 'MV622597', 'odagger28@naver.com');
insert into student (student_id, person_id, book_no, note) values (82, 82, 'DR882565', 'cmuschette29@networksolutions.com');
insert into student (student_id, person_id, book_no, note) values (83, 83, 'JX618376', 'aclapperton2a@spiegel.de');
insert into student (student_id, person_id, book_no, note) values (84, 84, 'TT605971', 'golder2b@facebook.com');
insert into student (student_id, person_id, book_no, note) values (85, 85, 'AW066517', 'ggrimshaw2c@ocn.ne.jp');
insert into student (student_id, person_id, book_no, note) values (86, 86, 'NS512129', 'alamberteschi2d@canalblog.com');
insert into student (student_id, person_id, book_no, note) values (87, 87, 'BU988412', 'wbruster2e@dagondesign.com');
insert into student (student_id, person_id, book_no, note) values (88, 88, 'ZQ073023', 'pponte2f@usda.gov');
insert into student (student_id, person_id, book_no, note) values (89, 89, 'RL791204', 'chenaughan2g@lulu.com');
insert into student (student_id, person_id, book_no, note) values (90, 90, 'GZ104679', 'smeeke2h@joomla.org');
insert into student (student_id, person_id, book_no, note) values (91, 91, 'PO269222', 'mskey2i@slate.com');
insert into student (student_id, person_id, book_no, note) values (92, 92, 'UY259886', 'dbramo2j@gov.uk');
insert into student (student_id, person_id, book_no, note) values (93, 93, 'OH838363', 'dbream2k@ibm.com');
insert into student (student_id, person_id, book_no, note) values (94, 94, 'FU116259', 'bkillen2l@nasa.gov');
insert into student (student_id, person_id, book_no, note) values (95, 95, 'ZE989032', 'bmerlin2m@epa.gov');
insert into student (student_id, person_id, book_no, note) values (96, 96, 'MZ156123', 'pnewcom2n@ovh.net');
insert into student (student_id, person_id, book_no, note) values (97, 97, 'AI097056', 'ntruckell2o@wordpress.org');
insert into student (student_id, person_id, book_no, note) values (98, 98, 'SY908089', 'lrudledge2p@bizjournals.com');
insert into student (student_id, person_id, book_no, note) values (99, 99, 'HG506922', 'rstansall2q@illinois.edu');
insert into student (student_id, person_id, book_no, note) values (100, 100, 'EI539520', 'zpashler2r@kickstarter.com');
insert into student (student_id, person_id, book_no, note) values (101, 101, 'LQ088957', 'ggledhall2s@parallels.com');
insert into student (student_id, person_id, book_no, note) values (102, 102, 'VF764137', 'ekunzler2t@time.com');
insert into student (student_id, person_id, book_no, note) values (103, 103, 'SG797095', 'nmaccartney2u@usgs.gov');
insert into student (student_id, person_id, book_no, note) values (104, 104, 'SM045732', 'vscrymgeour2v@unblog.fr');
insert into student (student_id, person_id, book_no, note) values (105, 105, 'QQ957038', 'scornillot2w@psu.edu');
insert into student (student_id, person_id, book_no, note) values (106, 106, 'IH709773', 'nhinchshaw2x@dell.com');
insert into student (student_id, person_id, book_no, note) values (107, 107, 'BN087973', 'gdudill2y@zimbio.com');
insert into student (student_id, person_id, book_no, note) values (108, 108, 'YO378756', 'rrouke2z@yahoo.co.jp');
insert into student (student_id, person_id, book_no, note) values (109, 109, 'NH710187', 'uraraty30@4shared.com');
insert into student (student_id, person_id, book_no, note) values (110, 110, 'BE202366', 'tstranio31@archive.org');
insert into student (student_id, person_id, book_no, note) values (111, 111, 'BB863298', 'bspratley32@mail.ru');
insert into student (student_id, person_id, book_no, note) values (112, 112, 'PQ448513', 'aoxteby33@skype.com');
insert into student (student_id, person_id, book_no, note) values (113, 113, 'ZT278717', 'ocoulthard34@harvard.edu');
insert into student (student_id, person_id, book_no, note) values (114, 114, 'VQ922248', 'pdebell35@nyu.edu');
insert into student (student_id, person_id, book_no, note) values (115, 115, 'TF780631', 'bkensall36@acquirethisname.com');
insert into student (student_id, person_id, book_no, note) values (116, 116, 'RE966485', 'fknellen37@umich.edu');
insert into student (student_id, person_id, book_no, note) values (117, 117, 'SY711772', 'hwiffler38@hud.gov');
insert into student (student_id, person_id, book_no, note) values (118, 118, 'KJ316673', 'alowdes39@rambler.ru');
insert into student (student_id, person_id, book_no, note) values (119, 119, 'HJ858311', 'dfylan3a@blogger.com');
insert into student (student_id, person_id, book_no, note) values (120, 120, 'TS961412', 'ctarge3b@google.es');


create table sviolation_kind (
	violation_kind_id serial primary key,
	violation_kind_name varchar(100)
);

alter table sviolation_kind CONVERT TO CHARACTER SET utf8;


INSERT INTO `sviolation_kind` (`violation_kind_id`, `violation_kind_name`) VALUES ('1','Запізнення');
INSERT INTO `sviolation_kind` (`violation_kind_id`, `violation_kind_name`) VALUES ('2','Неявка');
INSERT INTO `sviolation_kind` (`violation_kind_id`, `violation_kind_name`) VALUES ('3','Викидання сміття в невідповідному місці');
INSERT INTO `sviolation_kind` (`violation_kind_id`, `violation_kind_name`) VALUES ('4','Паління на території університету');
INSERT INTO `sviolation_kind` (`violation_kind_id`, `violation_kind_name`) VALUES ('5','Зрив заняття');
INSERT INTO `sviolation_kind` (`violation_kind_id`, `violation_kind_name`) VALUES ('6','Нецензурна лексика');
INSERT INTO `sviolation_kind` (`violation_kind_id`, `violation_kind_name`) VALUES ('7','Завдання університету матеріального збитку');
INSERT INTO `sviolation_kind` (`violation_kind_id`, `violation_kind_name`) VALUES ('8','Некорректна повідінка');



create table spunish_kind (
	punish_kind_id serial primary key,
	punish_kind_name varchar(100)
);


alter table spunish_kind CONVERT TO CHARACTER SET utf8;


INSERT INTO `spunish_kind` (`punish_kind_id`, `punish_kind_name`) VALUES ('1','Догана');
INSERT INTO `spunish_kind` (`punish_kind_id`, `punish_kind_name`) VALUES ('2','Розʼяснювальна бесіда');
INSERT INTO `spunish_kind` (`punish_kind_id`, `punish_kind_name`) VALUES ('3','Штраф');
INSERT INTO `spunish_kind` (`punish_kind_id`, `punish_kind_name`) VALUES ('4','Попередження');


create table violation (
	violation_id serial primary key,
	violation_kind_id BIGINT UNSIGNED not null,
	punish_kind_id BIGINT UNSIGNED not null,
	violation_date date,
	person_id BIGINT UNSIGNED not null,
	foreign key (person_id) references person(person_id) on delete cascade,
	constraint fk_violation_violation_kind foreign key (violation_kind_id) references sviolation_kind(violation_kind_id),
	constraint fk_violation_punish_kind foreign key (punish_kind_id) references spunish_kind(punish_kind_id)
);


insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (1, 5, 2, '2019-04-22', 28);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (2, 8, 4, '2018-01-11', 109);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (3, 4, 4, '2017-02-10', 45);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (4, 3, 4, '2017-08-14', 77);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (5, 2, 2, '2018-07-17', 39);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (6, 2, 4, '2019-11-02', 43);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (7, 6, 2, '2019-08-06', 98);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (8, 5, 2, '2016-04-16', 72);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (9, 7, 2, '2018-10-16', 45);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (10, 1, 2, '2019-08-18', 120);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (11, 2, 3, '2014-06-06', 41);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (12, 5, 4, '2016-11-03', 83);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (13, 6, 4, '2017-10-08', 29);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (14, 2, 4, '2019-04-04', 3);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (15, 3, 4, '2019-07-10', 40);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (16, 5, 3, '2018-07-10', 47);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (17, 6, 1, '2019-07-03', 99);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (18, 3, 3, '2018-10-28', 108);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (19, 5, 2, '2018-07-01', 63);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (20, 3, 3, '2014-04-08', 48);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (21, 4, 2, '2017-08-02', 20);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (22, 1, 3, '2018-01-22', 2);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (23, 4, 4, '2015-02-03', 105);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (24, 5, 2, '2018-01-25', 71);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (25, 8, 1, '2018-11-05', 55);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (26, 6, 3, '2014-10-16', 22);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (27, 4, 4, '2016-06-19', 7);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (28, 4, 2, '2018-04-01', 97);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (29, 8, 3, '2014-11-27', 67);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (30, 6, 3, '2016-02-17', 43);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (31, 7, 3, '2018-10-18', 66);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (32, 8, 3, '2018-09-07', 3);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (33, 8, 3, '2016-01-21', 62);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (34, 3, 2, '2016-02-20', 79);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (35, 7, 1, '2016-08-08', 28);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (36, 7, 4, '2019-08-26', 47);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (37, 7, 1, '2017-11-14', 78);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (38, 5, 1, '2016-12-14', 105);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (39, 1, 3, '2018-08-15', 56);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (40, 6, 3, '2016-09-25', 117);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (41, 5, 1, '2019-12-06', 113);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (42, 7, 1, '2019-01-02', 95);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (43, 4, 2, '2016-10-27', 28);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (44, 8, 4, '2017-07-26', 93);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (45, 5, 3, '2014-03-05', 57);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (46, 2, 3, '2015-10-25', 55);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (47, 4, 4, '2019-04-26', 59);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (48, 6, 1, '2017-04-22', 55);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (49, 8, 4, '2014-01-13', 98);
insert into violation (violation_id, violation_kind_id, punish_kind_id, violation_date, person_id) values (50, 8, 2, '2014-05-03', 97);



###############1
select groups.group_id, groups.group_code, student_group.student_id, student.person_id,concat(person.surname,' ',person.name,' ',person.patronymic) as full_name,violation.violation_kind_id,sviolation_kind.violation_kind_name from groups join student_group on groups.group_id = student_group.group_id join student on student.student_id = student_group.student_id join person on person.person_id = student.person_id join violation on person.person_id = violation.person_id join sviolation_kind on violation.violation_kind_id = sviolation_kind.violation_kind_id where violation_kind_name = 'Некорректна поведінка' and group_code = '6227';

#
select concat(person.surname,' ',person.name,' ',person.patronymic) as full_name from groups join student_group on groups.group_id = student_group.group_id join student on student.student_id = student_group.student_id join person on person.person_id = student.person_id join violation on person.person_id = violation.person_id join sviolation_kind on violation.violation_kind_id = sviolation_kind.violation_kind_id where violation_kind_name = 'Некорректна поведінка' and group_code = '6227';

##############4

select concat(person.surname,' ',person.name,' ',person.patronymic) as full_name from person join violation on person.person_id = violation.person_id join spunish_kind on spunish_kind.punish_kind_id = violation.punish_kind_id join student on student.person_id = person.person_id join contract on contract.student_id = student.student_id join scontract_kind on scontract_kind.contract_kind_id = contract.contract_kind_id where spunish_kind.punish_kind_name = 'Попередження' and scontract_kind.contract_kind_name = 'Цільовий';

#############3
select concat(person.surname,' ',person.name,' ',person.patronymic) as full_name, smark.mark_name, speciality.speciality_name from person join student on person.person_id = student.person_id join student_group on student.student_id = student_group.student_id join groups on groups.group_id = student_group.group_id join speciality on speciality.speciality_id = groups.speciality_id join student_marks on student_marks.student_id = student.student_id join smark on smark.mark_id = student_marks.mark_id where (smark.mark_name > 80) and (speciality.speciality_name = 'Метрологія та інформаційно-вимірювальна техніка');

#
select concat(person.surname,' ',person.name,' ',person.patronymic) as full_name from person join student on person.person_id = student.person_id join student_group on student.student_id = student_group.student_id join groups on groups.group_id = student_group.group_id join speciality on speciality.speciality_id = groups.speciality_id join student_marks on student_marks.student_id = student.student_id join smark on smark.mark_id = student_marks.mark_id where (smark.mark_name > 80) and (speciality.speciality_name = 'Метрологія та інформаційно-вимірювальна техніка');

#############2
select sum_of_points/persons_in_group as avr_mark_in_group,speciality_alias from (select count(student.student_id) as persons_in_group, sum(mark_name) as sum_of_points, groups.group_code as group_alias ,speciality.speciality_name as speciality_alias from person join student on person.person_id = student.person_id join student_group on student.student_id = student_group.student_id join groups on groups.group_id = student_group.group_id join speciality on speciality.speciality_id = groups.speciality_id join student_marks on student_marks.student_id = student.student_id join smark on smark.mark_id = student_marks.mark_id group by groups.group_id) as joined_table;

select max(sum_of_points/persons_in_group) as max_on_speciality from (select count(student.student_id) as persons_in_group, sum(mark_name) as sum_of_points, groups.group_code as group_alias ,speciality.speciality_name as speciality_alias from person join student on person.person_id = student.person_id join student_group on student.student_id = student_group.student_id join groups on groups.group_id = student_group.group_id join speciality on speciality.speciality_id = groups.speciality_id join student_marks on student_marks.student_id = student.student_id join smark on smark.mark_id = student_marks.mark_id group by groups.group_id) as joined_table where speciality_alias = 'Матеріалознавство';

##
select group_alias from (select sum(mark_name)/count(student.student_id) as avg, groups.group_code as group_alias from person join student on person.person_id = student.person_id join student_group on student.student_id = student_group.student_id join groups on groups.group_id = student_group.group_id join speciality on speciality.speciality_id = groups.speciality_id join student_marks on student_marks.student_id = student.student_id join smark on smark.mark_id = student_marks.mark_id where speciality.speciality_name = 'Кібербезпека' group by groups.group_id)tt where tt.avg = (select max(avg) from (select sum(mark_name)/count(student.student_id) as avg, groups.group_code as group_alias from person join student on person.person_id = student.person_id join student_group on student.student_id = student_group.student_id join groups on groups.group_id = student_group.group_id join speciality on speciality.speciality_id = groups.speciality_id join student_marks on student_marks.student_id = student.student_id join smark on smark.mark_id = student_marks.mark_id where speciality.speciality_name = 'Кібербезпека' group by groups.group_id) t2);











