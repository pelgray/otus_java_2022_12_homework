create sequence client_SEQ start with 1 increment by 1;

create table client
(
    id   bigint not null primary key,
    name varchar(50)
);
