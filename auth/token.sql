CREATE TABLE token(
	id int AUTO_INCREMENT,
	value varchar(256),
	id_user int,
	date datetime,
	check_active boolean default 1,
	CONSTRAINT token_pk PRIMARY KEY(id),
	CONSTRAINT token_user_id  
	FOREIGN KEY (id_user)  REFERENCES users (id)
)