CREATE TABLE accounting_bd.`position` (
    id INT auto_increment NOT NULL,
    name varchar(100) NOT NULL,
    CONSTRAINT position_pk PRIMARY KEY (id),
    CONSTRAINT position_un UNIQUE KEY (name)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;