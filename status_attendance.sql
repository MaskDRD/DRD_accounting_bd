CREATE TABLE accounting_bd.`status_attendance` (
    id INT auto_increment NOT NULL,
    `name` varchar(100) NOT NULL,
    `description` varchar(100) DEFAULT NULL,
    CONSTRAINT status_attendance_pk PRIMARY KEY (id),
    CONSTRAINT status_attendance_un UNIQUE KEY (name)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

INSERT INTO accounting_bd.status_attendance (name, description) VALUES('О', 'Отпуск');
INSERT INTO accounting_bd.status_attendance (name, description) VALUES('П', 'Прогул');
INSERT INTO accounting_bd.status_attendance (name, description) VALUES('Р', 'Работал');
INSERT INTO accounting_bd.status_attendance (name, description) VALUES('Б', 'Болен');
