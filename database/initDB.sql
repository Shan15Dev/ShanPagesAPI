create table if not exists "Class"
(
"Id"    uuid         not null
constraint "Class_pk"
primary key,
"Class" varchar(255) not null
);

alter table "Class"
owner to postgres;

create table if not exists "Timetable"
(
"Id"         uuid    not null
constraint "Timetable_pk"
primary key,
"Subject"    varchar not null,
"Teacher"    varchar not null,
"Start_time" time    not null,
"End_time"   time    not null,
"Class_id"   uuid    not null
references "Class"
);

alter table "Timetable"
owner to postgres;

