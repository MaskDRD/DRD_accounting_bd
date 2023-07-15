CREATE TABLE `salary` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `id_worker` int(11) NOT NULL,
    `month` int(11) NOT NULL,
    `sum` int(11) NOT NULL,
    `paid` tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `salary_worker_FK` (`id_worker`),
    CONSTRAINT `salary_worker_FK` FOREIGN KEY (`id_worker`) REFERENCES `worker` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;