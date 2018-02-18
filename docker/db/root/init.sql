create database test DEFAULT CHARACTER SET utf8;

use test;

create table users(
  id int(11) unsigned not null auto_increment,
  name varchar(32) not null,
  email varchar(32) not null,
  primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into users values (1, 'hoge', 'hoge@gmail.com'), (2, 'fuga', 'fuga@gmail.com'), (3, 'piyo', 'piyo@gmail.com');
