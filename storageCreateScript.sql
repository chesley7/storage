drop table if exists user;
create table user (
	name varchar(50), 
	email varchar(50),
	address varchar(50),  
	phone varchar(10), 
	pw varchar(30), 
	credit decimal, /* amount of positive money in user's account */
	due decimal, /* amount of money the user owes us */
	uid int auto_increment not null primary key ) 
ENGINE InnoDB; 

drop table if exists item;
create table item (
	name varchar(50), 
	description varchar(500),
	price decimal,  
	checkedOut enum('y','n') default 'n', /* y (yes checked out) if the item is not present in storage, defaults to no */
	hidden enum('y','n') default 'n', /* y if user does not want to see item in their searches */
	iid int auto_increment not null primary key,
	uid int not null,
	foreign key (uid) references user(uid))
ENGINE InnoDB; 

drop table if exists record;
create table record (
	status enum('rented','removed','inUse','returned'), /* rented if the item is in the discarded group and was used by a different user, removed if the item was permanently taken from storage, inUse if the item was checked out by the owner, and returned if the item is back in storage after being rented or inUse */
	requestTime TIMESTAMP DEFAULT NOW(), /*time this action was requested */
	returnBy date,
	iid int not null,
	uid int not null,
	primary key (iid,uid), 
	foreign key (iid) references item(iid),
	foreign key (uid) references user(uid))
ENGINE InnoDB; 

drop table if exists publicTag;
create table publicTag (
	word varchar(50), 
	pubid int auto_increment not null primary key,
	iid int not null,
	foreign key (iid) references item(iid))
ENGINE InnoDB; 

drop table if exists privateTag;
create table privateTag (
	word varchar(50), 
	privid int auto_increment not null primary key,
	iid int not null,
	foreign key (iid) references item(iid))
ENGINE InnoDB; 
