CREATE TABLE `attendance` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `id_worker` int(11) NOT NULL,
    `id_status_attendance` int(11) NOT NULL,
    `date_` date DEFAULT NULL,
    `clock` int(11) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `attendance_worker_FK` (`id_worker`),
    KEY `attendance_status_FK` (`id_status_attendance`),
    CONSTRAINT `attendance_status_FK` FOREIGN KEY (`id_status_attendance`) REFERENCES `status_attendance` (`id`),
    CONSTRAINT `attendance_worker_FK` FOREIGN KEY (`id_worker`) REFERENCES `worker` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;