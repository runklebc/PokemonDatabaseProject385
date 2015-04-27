CREATE TABLE pokemon(
  name			varchar(25) not null, 
  number		number(3),
  type			varchar(25),
  environment 		varchar(25),
  location	 	varchar(25),
  primary key (number),
  unique(number),
  foreign key (type) references effectiveness(base_type),
  foreign key (number) references trainer_team(p1_id),
  foreign key (number) references trainer_team(p2_id),
  foreign key (number) references trainer_team(p3_id),
  foreign key (number) references trainer_team(p4_id),
  foreign key (number) references trainer_team(p5_id),
  foreign key (number) references trainer_team(p6_id)
);

 
CREATE TABLE effectiveness(
  base_type	varchar(25),
  strength	varchar(25),
  weakness	varchar(25),
  unique(base_type),
  primary key (base_type)
);
 
CREATE TABLE trainer(
	id			number(1),
	location		varchar(25),
	sex			varchar(25),
	name			varchar(25),
	phone_number	number(10),
	unique (phone_number),
	unique(id),
	primary key (id),
	foreign key (id) references trainer_team(trainer_id)
);

 
CREATE TABLE trainer_team(
	trainer_id	varchar(25),
	p1_id		number(3) not null,
	p2_id		number(3),
	p3_id		number(3),
	p4_id		number(3),
	p5_id		number(3),
	p6_id		number(3),
	unique(trainer_id),
	primary key (trainer_id)
);

 
CREATE TABLE gym (
	name		varchar(25),
        leader_id	number(1),
        badge		varchar(25),
  	type 		varchar(25),
	unique (badge),
	unique(name),
        primary key (name),
        foreign key (leader_id) references trainer (id)
);
