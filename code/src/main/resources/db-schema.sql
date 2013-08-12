--创建bbsDB数据库
CREATE DATABASE IF NOT EXISTS cqanswer;
USE cqanswer;
create table if not exists current_states (id smallint primary key, state_code varchar(50), name varchar(50))ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into current_states(id, state_code, name) values(1, 'xx', 'xx') ON DUPLICATE KEY UPDATE id=id;
insert into current_states(id, state_code, name) values(2, 'xx', '林超') ON DUPLICATE KEY UPDATE id=id;
insert into current_states(id, state_code, name) values(3, 'xx', 'jair51') ON DUPLICATE KEY UPDATE id=id;