insert into passengers (active, birth_date, first_name, last_name, password, username)
values (1, STR_TO_DATE('19/02/1991', '%d/%m/%Y %H:%i:%s'), 'Ivan', 'Titov', '1', 'admin');
insert into roles (passenger_id, roles)
values (1, 'ADMIN');
insert into passengers (active, birth_date, first_name, last_name, password, username)
values (1, STR_TO_DATE('20/05/1949', '%d/%m/%Y %H:%i:%s'), 'Petr', 'Smirnov', '1', 'petrsmirnov');
insert into roles (passenger_id, roles)
values (2, 'ADMIN');
insert into passengers (active, birth_date, first_name, last_name, password, username)
values (1, STR_TO_DATE('07/04/1978', '%d/%m/%Y %H:%i:%s'), 'Maria', 'Veselova', '1', 'mariaveselova');
insert into roles (passenger_id, roles)
values (3, 'USER');
insert into passengers (active, birth_date, first_name, last_name, password, username)
values (1, STR_TO_DATE('14/10/2000', '%d/%m/%Y %H:%i:%s'), 'Alexandra', 'Mishina', '1', 'sashamishina');
insert into roles (passenger_id, roles)
values (4, 'USER');
insert into passengers (active, birth_date, first_name, last_name, password, username)
values (1, STR_TO_DATE('12/09/1987', '%d/%m/%Y %H:%i:%s'), 'Maxim', 'Ivanov', '1', 'maximivanov');
insert into roles (passenger_id, roles)
values (5, 'USER');

insert into stations (name)
values ('Apple');
insert into stations (name)
values ('Pear');
insert into stations (name)
values ('Grapes');
insert into stations (name)
values ('Watermelon');
insert into stations (name)
values ('Sweet cherry');
insert into stations (name)
values ('Cherry');

insert into trains(seats_amount, number)
values (1000, 'T001');
insert into trains(seats_amount, number)
values (980, 'T002');
insert into trains(seats_amount, number)
values (100, 'T003');
insert into trains(seats_amount, number)
values (10, 'T004');
insert into trains(seats_amount, number)
values (100, 'T005');


insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('15:00', '14:50', 1, 1);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('16:00', '15:55', 2, 1);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('17:00', '16:50', 3, 1);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('18:00', '17:50', 4, 1);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('19:00', '18:50', 5, 1);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('20:00', '19:55', 6, 1);

insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('11:00', '10:55', 1, 2);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('12:00', '11:50', 2, 2);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('13:00', '12:50', 3, 2);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('14:00', '13:55', 4, 2);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('15:00', '14:55', 5, 2);

insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('19:00', '18:55', 2, 3);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('20:00', '19:55', 3, 3);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('21:00', '20:55', 4, 3);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('22:00', '21:55', 5, 3);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('23:00', '22:55', 6, 3);

insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('18:10', '17:55', 6, 4);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('19:10', '18:55', 5, 4);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('20:10', '19:55', 4, 4);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('21:10', '20:55', 3, 4);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('22:10', '21:55', 2, 4);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('23:10', '22:55', 1, 4);

insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('16:00', '15:55', 5, 5);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('17:00', '16:55', 4, 5);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('18:00', '17:55', 3, 5);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('19:00', '18:55', 2, 5);
insert into schedule(departure_time, arrival_time, station_id, train_id)
values ('20:00', '19:55', 1, 5);

INSERT INTO tickets(departureTime, passenger_id, train_id)
VALUES ('15:00', 2, 1);
INSERT INTO tickets(departureTime, passenger_id, train_id)
VALUES ('16:00', 1, 1);

INSERT INTO tickets(departureTime, passenger_id, train_id)
VALUES ('11:00', 4, 2);

INSERT INTO tickets(departureTime, passenger_id, train_id)
VALUES ('19:00', 3, 3);
INSERT INTO tickets(departureTime, passenger_id, train_id)
VALUES ('21:00', 5, 3);
