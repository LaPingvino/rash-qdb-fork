
-- Use the following commands to create the database and the users:

--create database $DATABASE$;
--create user '$USERNAME$'@'$HOSTSPEC$' identified by '$PASSWORD$';
--grant all privileges on $DATABASE$.* to '$USERNAME$'@'$HOSTSPEC$';


create table $QUOTETABLE$ (id int(11) NOT NULL auto_increment primary key,
							quote text NOT NULL,
							rating int(7) NOT NULL,
							flag int(1) NOT NULL,
                                                        queue int(1) NOT NULL,
							date int(10) NOT NULL);


create table $USERSTABLE$ (id int(11) NOT NULL auto_increment primary key,
							user varchar(20) NOT NULL,
							`password` varchar(255) NOT NULL,
							level int(1) NOT NULL,
							salt text);

create table $TRACKINGTABLE$ (id int NOT NULL auto_increment primary key,
                              user_ip varchar(15) NOT NULL,
                              user_id int,
                              quote_id int NOT NULL,
                              vote int NOT NULL);

create table $NEWSTABLE$ (id int(11) NOT NULL auto_increment primary key,
							news text NOT NULL,
							date int(10) NOT NULL);


insert into $USERSTABLE$ (user, password, level, salt) values (
       	    		 '$ADMINUSER$', '$ADMINPASS$', 1, '$ADMINSALT$');
