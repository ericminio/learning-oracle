create table event(
    id number(10) not null,
    label varchar2(50) not null
);

create sequence event_id;

insert into event(id, label) values(event_id.nextval, 'new year');
insert into event(id, label) values(event_id.nextval, 'new month');
insert into event(id, label) values(event_id.nextval, 'new day');
insert into event(id, label) values(event_id.nextval, 'new hour');
insert into event(id, label) values(event_id.nextval, 'new minute');

select * from event where rownum <= 3;
