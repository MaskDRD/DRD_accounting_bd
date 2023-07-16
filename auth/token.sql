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

DROP PROCEDURE IF EXISTS bd.TokenCreate;
CREATE DEFINER = `root` @`localhost` PROCEDURE bd.TokenCreate(
	in _value varchar(256),
	in _id_user int
) 
begin
	INSERT token(value, id_user, date)
	VALUES (_value, _id_user, NOW() + INTERVAL 1 DAY);
end