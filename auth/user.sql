CREATE TABLE users(
	id int AUTO_INCREMENT,
	login varchar(128),
	password varchar(256),
	email varchar(128),
	nik varchar(128),
	check_active boolean default 1,
	check_conf_email boolean default 0,
	CONSTRAINT customers_pk PRIMARY KEY(id),
	CONSTRAINT customers_login_uq UNIQUE KEY(login),
	CONSTRAINT customers_email_uq UNIQUE KEY(email),
	CONSTRAINT customers_nik_uq UNIQUE KEY(nik)
);


DROP PROCEDURE IF EXISTS bd.UserGet;
CREATE DEFINER=`root`@`localhost` PROCEDURE bd.UserGet(in _token varchar(256))
begin
	select * from users u left join token t ON t.id_user = u.id where t.value = _token;
end

DROP PROCEDURE IF EXISTS bd.UserCreate;
CREATE DEFINER=`root`@`localhost` PROCEDURE bd.UserCreate(
	in _login varchar(128), 
	in _password varchar(256),
	in _email varchar(128),
	in _nik varchar(128)
	)
begin
	INSERT users(login, password, email, nik) 
	VALUES (_login, _password, _email, _nik);
end