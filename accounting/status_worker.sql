CREATE TABLE accounting_bd.`status_worker` (
    id INT auto_increment NOT NULL,
    `name` varchar(100) NOT NULL,
    `description` varchar(100) DEFAULT NULL,
    CONSTRAINT status_worker_pk PRIMARY KEY (id),
    CONSTRAINT status_worker_un UNIQUE KEY (name)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

INSERT INTO accounting_bd.status_worker (name, description) VALUES('Р', 'Работающий');
INSERT INTO accounting_bd.status_worker (name, description) VALUES('У', 'Уволен');
INSERT INTO accounting_bd.status_worker (name, description) VALUES('О', 'Отпуск');
INSERT INTO accounting_bd.status_worker (name, description) VALUES('П', 'Пенсия');