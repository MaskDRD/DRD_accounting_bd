CREATE TABLE accounting_bd.`status_worker` (
    id INT auto_increment NOT NULL,
    name varchar(100) NOT NULL,
    CONSTRAINT status_worker_pk PRIMARY KEY (id),
    CONSTRAINT status_worker_un UNIQUE KEY (name)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;