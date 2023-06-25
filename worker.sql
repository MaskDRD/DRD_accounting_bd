CREATE TABLE `worker` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `surname` varchar(100) NOT NULL,
    `name` varchar(100) NOT NULL,
    `patronymic` varchar(100) NOT NULL,
    `zp` int(11) NOT NULL,
    `id_position` int(11) NOT NULL,
    `id_status_worker` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `worker_position_FK` (`id_position`),
    KEY `worker_status_FK` (`id_status_worker`),
    CONSTRAINT `worker_status_FK` FOREIGN KEY (`id_status_worker`) REFERENCES `status_worker` (`id`),
    CONSTRAINT `worker_position_FK` FOREIGN KEY (`id_position`) REFERENCES `position` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;