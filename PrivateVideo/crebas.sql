/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/10/31 星期二 上午 11:43:01                   */
/*==============================================================*/


drop table if exists lunbo;

drop table if exists movies;

drop table if exists orders;

drop table if exists rooms;

drop table if exists screenings;

drop table if exists types;

drop table if exists users;

/*==============================================================*/
/* Table: lunbo                                                 */
/*==============================================================*/
create table lunbo
(
   srcid                int not null auto_increment,
   srcs                 varchar(300) not null,
   primary key (srcid)
);

/*==============================================================*/
/* Table: movies                                                */
/*==============================================================*/
create table movies
(
   mvid                 int not null auto_increment,
   typeid               int not null,
   mvname               varchar(40) not null,
   releasetime          timestamp not null,
   mvtime               timestamp not null,
   mvdirector           varchar(40) not null,
   mvlanguage           varchar(40) not null,
   mvintroduction       varchar(200) not null,
   mvimg                varchar(100) not null,
   mvactor              varchar(40) not null,
   primary key (mvid)
);

/*==============================================================*/
/* Table: orders                                                */
/*==============================================================*/
create table orders
(
   orderno              int not null auto_increment,
   userid               int not null,
   reconfirmtime        timestamp not null,
   cost                 float not null,
   scheduledtime        timestamp not null,
   primary key (orderno)
);

/*==============================================================*/
/* Table: rooms                                                 */
/*==============================================================*/
create table rooms
(
   roomid               int not null auto_increment,
   roomname             varchar(20) not null,
   roomdesc             varchar(200) not null,
   roomtype             varchar(20) not null,
   roomprice            float not null,
   primary key (roomid)
);

/*==============================================================*/
/* Table: screenings                                            */
/*==============================================================*/
create table screenings
(
   scid                 int not null auto_increment,
   mvid                 int,
   orderno              int not null,
   starttime            timestamp not null,
   overtime             timestamp not null,
   scdate               date not null,
   primary key (scid)
);

/*==============================================================*/
/* Table: types                                                 */
/*==============================================================*/
create table types
(
   typeid               int not null auto_increment,
   typename             varchar(20) not null,
   primary key (typeid)
);

/*==============================================================*/
/* Table: users                                                 */
/*==============================================================*/
create table users
(
   userid               int not null auto_increment,
   username             varchar(20) not null,
   userpasswd           varchar(20) not null,
   sex                  varchar(10) not null,
   age                  int not null,
   useremail            varchar(20) not null,
   userimg              varchar(200) not null,
   userphone            numeric(8,0) not null,
   primary key (userid)
);

alter table movies add constraint FK_属于 foreign key (typeid)
      references types (typeid) on delete restrict on update restrict;

alter table orders add constraint FK_预定 foreign key (userid)
      references users (userid) on delete restrict on update restrict;

alter table screenings add constraint FK_choiceroot foreign key (scid)
      references rooms (roomid) on delete restrict on update restrict;

alter table screenings add constraint FK_playmv foreign key (mvid)
      references movies (mvid) on delete restrict on update restrict;

alter table screenings add constraint FK_预定场次 foreign key (orderno)
      references orders (orderno) on delete restrict on update restrict;

