DROP SCHEMA public CASCADE;
CREATE SCHEMA public;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;

create table "группа услуг" (
	id_группа_услуг serial,
	"группа услуг" varchar(100) not null,
	primary key(id_группа_услуг)
);

CREATE TABLE салон (
	id_салон SERIAL ,
	название varchar(100) NOT null UNIQUE,
	"начало работы" time NOT NULL,
	"конец работы" time NOT NULL,
	телефон char(12) check (телефон ~'[0-9]'),
	адрес text NOT null UNIQUE,
	метро varchar(50) NULL,
	PRIMARY KEY (id_салон)
);

create table сотрудник (
	id_сотрудник serial ,
	пароль varchar(50) check (char_length(пароль)>=8) not null,
	логин varchar(80) check (char_length(логин) >=6) unique not null,
	ФИО varchar(150) not null,
	специализация varchar (200) not null,
	квалификация varchar (100) not null,
	primary key (id_сотрудник)
);

create table клиент (
	id_клиент serial,
	пароль varchar(50) check (char_length(пароль)>=8) not null,
	логин varchar(80) check (char_length(логин) >=6) not null,
	ФИО varchar(150) not null,
	статус varchar (20) not null,
	"номер телефона" char(12) check ("номер телефона" ~'[0-9]') ,
	primary key (id_клиент)
);

create table процедура(
	id_процедура serial,
	название varchar (100) not null unique,
	описание text,
	длительность float not null,
	id_группа_услуг int not null,
	primary key (id_процедура),
    foreign key (id_группа_услуг) references "группа услуг"(id_группа_услуг)
);

create table "расходный материал" (
	id_материал serial,
	название varchar (100) not null,
	количество int,
	"количество в упаковке" int not null,
	primary key (id_материал)
);

create table администратор (
	id_администратор serial,
	id_салон int not null ,
	логин varchar(80) check (char_length(логин) >=6) unique not null,
	пароль varchar(50) check (char_length(пароль) >=8) not null,
	ФИО varchar (150) not null,
	primary key (id_администратор),
	foreign key (id_салон) references салон (id_салон)
);

create table запись (
	id_запись serial,
	дата date not null,
	время time not null,
	статус varchar check (статус in ('не подтверждена', 'подтверждена', 'отменена')) not null,
	id_клиент int not null,
	id_процедура int not null,
	id_администратор int not null,
	id_сотрудник int not null,
	primary key (id_запись),
	foreign key(id_клиент) references клиент(id_клиент),
	foreign key(id_процедура) references процедура(id_процедура),
	foreign key(id_администратор) references администратор(id_администратор),
	foreign key(id_сотрудник) references сотрудник(id_сотрудник)
);

create table расписание(
	id_расписание serial,
	id_салон int not null,
	id_сотрудник int not null,
	"день недели" varchar(11) not null,
	"начало работы" time not null,
	"конец работы" time not null,
	primary key (id_расписание),
	foreign key(id_салон) references салон(id_салон)
);

create table отзыв(
	id_отзыв serial,
	id_салон int not null,
	id_клиент int not null,
	id_сотрудник int not null,
	"текст отзыва" text,
	оценка char (1) check (оценка in ('1','2','3','4','5')),
	primary key (id_отзыв),
	foreign key(id_салон) references салон(id_салон),
	foreign key(id_клиент) references клиент(id_клиент),
	foreign key(id_сотрудник) references сотрудник(id_сотрудник)
);

create table "запись-салон"(
	id_запись_салон serial,
	id_салон int not null,
	id_запись int not null,
	primary key (id_запись_салон),
	foreign key(id_салон) references салон(id_салон),
	foreign key(id_запись) references запись(id_запись)
);

create table "процедура-сотрудник"(
	id_процедура_сотрудник serial,
	id_сотрудник int not null,
	id_процедура int not null,
	primary key (id_процедура_сотрудник),
	foreign key(id_сотрудник) references сотрудник(id_сотрудник),
	foreign key(id_процедура) references процедура(id_процедура)
);

create table "процедура-материал"(
	id_процедура_материал serial,
	id_материал int not null,
	id_процедура int not null,
	primary key (id_процедура_материал),
	foreign key(id_материал) references "расходный материал"(id_материал),
	foreign key(id_процедура) references процедура(id_процедура)
);
