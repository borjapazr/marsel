/* CREATE TABLE statements */
CREATE TABLE `student`
(
    `id`                             int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `internal_id`                    varchar(32)              NOT NULL,
    `code`                           varchar(255)             NOT NULL,
    `gender`                         char(1)                  NOT NULL,
    `name`                           varchar(150)             NOT NULL,
    `last_name`                      varchar(350)             NOT NULL,
    `birth_date`                     date                     NOT NULL,
    `dni`                            varchar(15)              NOT NULL,
    `phone_number_1`                 varchar(100)             NOT NULL,
    `phone_number_2`                 varchar(100)                      DEFAULT null,
    `email`                          varchar(500)                      DEFAULT null,
    `address`                        varchar(2048)            NOT NULL,
    `default_academy_id`             int unsigned             NOT NULL,
    `image_captation_treatment`      boolean                  NOT NULL DEFAULT false,
    `image_publish`                  boolean                  NOT NULL DEFAULT false,
    `messages_send`                  boolean                  NOT NULL DEFAULT false,
    `messages_channel_participation` boolean                  NOT NULL DEFAULT false,
    `avatar_path`                    varchar(1024)                     DEFAULT null,
    `comments`                       varchar(2048)                     DEFAULT null,
    `created_at`                     timestamp                NOT NULL DEFAULT now(),
    `updated_at`                     timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`                     varchar(500)                      DEFAULT null,
    `updated_by`                     varchar(500)                      DEFAULT null
);

CREATE TABLE `teacher`
(
    `id`                 int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `internal_id`        varchar(32)              NOT NULL,
    `code`               varchar(255)             NOT NULL,
    `gender`             char(1)                  NOT NULL,
    `name`               varchar(150)             NOT NULL,
    `last_name`          varchar(350)             NOT NULL,
    `birth_date`         date                     NOT NULL,
    `dni`                varchar(15)              NOT NULL,
    `phone_number_1`     varchar(100)             NOT NULL,
    `phone_number_2`     varchar(100)                      DEFAULT null,
    `email`              varchar(500)                      DEFAULT null,
    `address`            varchar(2048)            NOT NULL,
    `default_academy_id` int unsigned             NOT NULL,
    `avatar_path`        varchar(1024)                     DEFAULT null,
    `comments`           varchar(2048)                     DEFAULT null,
    `created_at`         timestamp                NOT NULL DEFAULT now(),
    `updated_at`         timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`         varchar(500)                      DEFAULT null,
    `updated_by`         varchar(500)                      DEFAULT null
);

CREATE TABLE `guardian`
(
    `id`             int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`           varchar(255)             NOT NULL,
    `gender`         char(1)                  NOT NULL,
    `name`           varchar(150)             NOT NULL,
    `last_name`      varchar(350)             NOT NULL,
    `dni`            varchar(15)              NOT NULL,
    `birth_date`     date                     NOT NULL,
    `phone_number_1` varchar(100)             NOT NULL,
    `phone_number_2` varchar(100)                      DEFAULT null,
    `email`          varchar(500)                      DEFAULT null,
    `address`        varchar(2048)            NOT NULL,
    `avatar_path`    varchar(1024)                     DEFAULT null,
    `comments`       varchar(2048)                     DEFAULT null,
    `created_at`     timestamp                NOT NULL DEFAULT now(),
    `updated_at`     timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`     varchar(500)                      DEFAULT null,
    `updated_by`     varchar(500)                      DEFAULT null
);

CREATE TABLE `school`
(
    `id`           int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`         varchar(255)             NOT NULL,
    `name`         varchar(300)             NOT NULL,
    `abbreviation` varchar(100)                      DEFAULT null,
    `principal`    varchar(300)                      DEFAULT null,
    `address`      varchar(2048)            NOT NULL,
    `avatar_path`  varchar(1024)                     DEFAULT null,
    `comments`     varchar(2048)                     DEFAULT null,
    `created_at`   timestamp                NOT NULL DEFAULT now(),
    `updated_at`   timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`   varchar(500)                      DEFAULT null,
    `updated_by`   varchar(500)                      DEFAULT null
);

CREATE TABLE `academy`
(
    `id`           int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `internal_id`  varchar(32)              NOT NULL,
    `code`         varchar(255)             NOT NULL,
    `name`         varchar(300)             NOT NULL,
    `abbreviation` varchar(100)                      DEFAULT null,
    `principal`    varchar(300)                      DEFAULT null,
    `address`      varchar(2048)            NOT NULL,
    `avatar_path`  varchar(1024)                     DEFAULT null,
    `comments`     varchar(2048)                     DEFAULT null,
    `created_at`   timestamp                NOT NULL DEFAULT now(),
    `updated_at`   timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`   varchar(500)                      DEFAULT null,
    `updated_by`   varchar(500)                      DEFAULT null
);

CREATE TABLE `subject`
(
    `id`           int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `internal_id`  varchar(32)              NOT NULL,
    `code`         varchar(255)             NOT NULL,
    `name`         varchar(300)             NOT NULL,
    `abbreviation` varchar(100)                      DEFAULT null,
    `comments`     varchar(2048)                     DEFAULT null,
    `created_at`   timestamp                NOT NULL DEFAULT now(),
    `updated_at`   timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`   varchar(500)                      DEFAULT null,
    `updated_by`   varchar(500)                      DEFAULT null
);

CREATE TABLE `guardian_type`
(
    `id`         int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`       varchar(255)             NOT NULL,
    `name`       varchar(150)             NOT NULL,
    `comments`   varchar(2048)                     DEFAULT null,
    `created_at` timestamp                NOT NULL DEFAULT now(),
    `updated_at` timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by` varchar(500)                      DEFAULT null,
    `updated_by` varchar(500)                      DEFAULT null
);

CREATE TABLE `exam`
(
    `id`                 int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`               varchar(255)             NOT NULL,
    `name`               varchar(300)             NOT NULL,
    `description`        varchar(2048)                     DEFAULT null,
    `exam_date`          date                     NOT NULL,
    `score`              double                            DEFAULT null,
    `taken`              boolean                  NOT NULL DEFAULT false,
    `student_subject_id` int unsigned             NOT NULL,
    `comments`           varchar(2048)                     DEFAULT null,
    `created_at`         timestamp                NOT NULL DEFAULT now(),
    `updated_at`         timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`         varchar(500)                      DEFAULT null,
    `updated_by`         varchar(500)                      DEFAULT null
);

CREATE TABLE `academic_year`
(
    `id`          int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`        varchar(255)             NOT NULL,
    `name`        varchar(300)             NOT NULL,
    `description` varchar(2048)                     DEFAULT null,
    `date_from`   date                     NOT NULL,
    `date_to`     date                              DEFAULT null,
    `comments`    varchar(2048)                     DEFAULT null,
    `created_at`  timestamp                NOT NULL DEFAULT now(),
    `updated_at`  timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`  varchar(500)                      DEFAULT null,
    `updated_by`  varchar(500)                      DEFAULT null
);

CREATE TABLE `voucher`
(
    `id`          int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `internal_id` varchar(32)              NOT NULL,
    `code`        varchar(255)             NOT NULL,
    `name`        varchar(300)             NOT NULL,
    `description` varchar(2048)                     DEFAULT null,
    `num_hours`   int                      NOT NULL,
    `comments`    varchar(2048)                     DEFAULT null,
    `created_at`  timestamp                NOT NULL DEFAULT now(),
    `updated_at`  timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`  varchar(500)                      DEFAULT null,
    `updated_by`  varchar(500)                      DEFAULT null
);

CREATE TABLE `voucher_consumption`
(
    `id`                 int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `student_voucher_id` int unsigned             NOT NULL,
    `consumption_date`   date                     NOT NULL,
    `num_consumed_hours` int                      NOT NULL,
    `comments`           varchar(2048)                     DEFAULT null,
    `created_at`         timestamp                NOT NULL DEFAULT now(),
    `updated_at`         timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`         varchar(500)                      DEFAULT null,
    `updated_by`         varchar(500)                      DEFAULT null
);

CREATE TABLE `student_voucher`
(
    `id`         int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`       varchar(255)             NOT NULL,
    `student_id` int unsigned             NOT NULL,
    `voucher_id` int unsigned             NOT NULL,
    `date_from`  date                     NOT NULL,
    `date_to`    date                              DEFAULT null,
    `comments`   varchar(2048)                     DEFAULT null,
    `created_at` timestamp                NOT NULL DEFAULT now(),
    `updated_at` timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by` varchar(500)                      DEFAULT null,
    `updated_by` varchar(500)                      DEFAULT null
);

CREATE TABLE `student_guardian`
(
    `id`               int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `student_id`       int unsigned             NOT NULL,
    `guardian_id`      int unsigned             NOT NULL,
    `guardian_type_id` int unsigned             NOT NULL,
    `date_from`        date                     NOT NULL,
    `date_to`          date                              DEFAULT null,
    `comments`         varchar(2048)                     DEFAULT null,
    `created_at`       timestamp                NOT NULL DEFAULT now(),
    `updated_at`       timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`       varchar(500)                      DEFAULT null,
    `updated_by`       varchar(500)                      DEFAULT null
);

CREATE TABLE `student_subject`
(
    `id`         int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `student_id` int unsigned             NOT NULL,
    `subject_id` int unsigned             NOT NULL,
    `date_from`  date                     NOT NULL,
    `date_to`    date                              DEFAULT null,
    `comments`   varchar(2048)                     DEFAULT null,
    `created_at` timestamp                NOT NULL DEFAULT now(),
    `updated_at` timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by` varchar(500)                      DEFAULT null,
    `updated_by` varchar(500)                      DEFAULT null
);

CREATE TABLE `student_schedule`
(
    `id`         int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`       varchar(255)             NOT NULL,
    `student_id` int unsigned             NOT NULL,
    `date_from`  date                     NOT NULL,
    `date_to`    date                              DEFAULT null,
    `week_day`   int                               DEFAULT null,
    `start_time` time                              DEFAULT null,
    `end_time`   time                              DEFAULT null,
    `priority`   int                      NOT NULL DEFAULT 0,
    `comments`   varchar(2048)                     DEFAULT null,
    `created_at` timestamp                NOT NULL DEFAULT now(),
    `updated_at` timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by` varchar(500)                      DEFAULT null,
    `updated_by` varchar(500)                      DEFAULT null
);

CREATE TABLE `invoice`
(
    `id`                 int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `internal_id`        varchar(32)              NOT NULL,
    `code`               varchar(255)             NOT NULL,
    `invoice_number`     int unsigned             NOT NULL,
    `issue_date`         date                     NOT NULL,
    `concept`            varchar(2048)                     DEFAULT null,
    `description`        varchar(2048)                     DEFAULT null,
    `invoice_status_id`  int unsigned             NOT NULL,
    `invoice_type_id`    int unsigned             NOT NULL,
    `student_id`         int unsigned                      DEFAULT null,
    `student_voucher_id` int unsigned                      DEFAULT null,
    `comments`           varchar(2048)                     DEFAULT null,
    `created_at`         timestamp                NOT NULL DEFAULT now(),
    `updated_at`         timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`         varchar(500)                      DEFAULT null,
    `updated_by`         varchar(500)                      DEFAULT null
);

CREATE TABLE `invoice_type`
(
    `id`          int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `internal_id` varchar(32)              NOT NULL,
    `code`        varchar(255)             NOT NULL,
    `name`        varchar(300)             NOT NULL,
    `description` varchar(2048)                     DEFAULT null,
    `created_at`  timestamp                NOT NULL DEFAULT now(),
    `updated_at`  timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`  varchar(500)                      DEFAULT null,
    `updated_by`  varchar(500)                      DEFAULT null
);

CREATE TABLE `invoice_status`
(
    `id`          int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `internal_id` varchar(32)              NOT NULL,
    `code`        varchar(255)             NOT NULL,
    `name`        varchar(300)             NOT NULL,
    `description` varchar(2048)                     DEFAULT null,
    `created_at`  timestamp                NOT NULL DEFAULT now(),
    `updated_at`  timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`  varchar(500)                      DEFAULT null,
    `updated_by`  varchar(500)                      DEFAULT null
);

CREATE TABLE `academy_teacher`
(
    `id`         int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`       varchar(255)             NOT NULL,
    `teacher_id` int unsigned             NOT NULL,
    `academy_id` int unsigned             NOT NULL,
    `date_from`  date                     NOT NULL,
    `date_to`    date                              DEFAULT null,
    `comments`   varchar(2048)                     DEFAULT null,
    `created_at` timestamp                NOT NULL DEFAULT now(),
    `updated_at` timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by` varchar(500)                      DEFAULT null,
    `updated_by` varchar(500)                      DEFAULT null
);

CREATE TABLE `teacher_student`
(
    `id`                 int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `academy_teacher_id` int unsigned             NOT NULL,
    `student_id`         int unsigned             NOT NULL,
    `date_from`          date                     NOT NULL,
    `date_to`            date                              DEFAULT null,
    `priority`           int                      NOT NULL DEFAULT 0,
    `comments`           varchar(2048)                     DEFAULT null,
    `created_at`         timestamp                NOT NULL DEFAULT now(),
    `updated_at`         timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by`         varchar(500)                      DEFAULT null,
    `updated_by`         varchar(500)                      DEFAULT null
);

CREATE TABLE `academy_schedule`
(
    `id`         int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`       varchar(255)             NOT NULL,
    `academy_id` int unsigned             NOT NULL,
    `date_from`  date                     NOT NULL,
    `date_to`    date                              DEFAULT null,
    `week_day`   int                               DEFAULT null,
    `start_time` time                              DEFAULT null,
    `end_time`   time                              DEFAULT null,
    `priority`   int                      NOT NULL DEFAULT 0,
    `comments`   varchar(2048)                     DEFAULT null,
    `created_at` timestamp                NOT NULL DEFAULT now(),
    `updated_at` timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by` varchar(500)                      DEFAULT null,
    `updated_by` varchar(500)                      DEFAULT null
);

CREATE TABLE `school_student`
(
    `id`         int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `school_id`  int unsigned             NOT NULL,
    `student_id` int unsigned             NOT NULL,
    `date_from`  date                     NOT NULL,
    `date_to`    date                              DEFAULT null,
    `comments`   varchar(2048)                     DEFAULT null,
    `created_at` timestamp                NOT NULL DEFAULT now(),
    `updated_at` timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by` varchar(500)                      DEFAULT null,
    `updated_by` varchar(500)                      DEFAULT null
);

CREATE TABLE `voucher_price`
(
    `id`         int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `code`       varchar(255)             NOT NULL,
    `voucher_id` int unsigned             NOT NULL,
    `hour_price` int                      NOT NULL,
    `date_from`  date                     NOT NULL,
    `date_to`    date                              DEFAULT null,
    `comments`   varchar(2048)                     DEFAULT null,
    `created_at` timestamp                NOT NULL DEFAULT now(),
    `updated_at` timestamp                NOT NULL DEFAULT now() ON UPDATE now(),
    `created_by` varchar(500)                      DEFAULT null,
    `updated_by` varchar(500)                      DEFAULT null
);

CREATE TABLE `gender_ref`
(
    `gender` char(1) PRIMARY KEY NOT NULL
);


/* FOREIGN KEY statements */
ALTER TABLE `student`
    ADD CONSTRAINT `student_gender_fk` FOREIGN KEY (`gender`) REFERENCES `gender_ref` (`gender`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `student`
    ADD CONSTRAINT `student_default_academy_fk` FOREIGN KEY (`default_academy_id`) REFERENCES `academy` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `teacher`
    ADD CONSTRAINT `teacher_gender_fk` FOREIGN KEY (`gender`) REFERENCES `gender_ref` (`gender`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `teacher`
    ADD CONSTRAINT `teacher_default_academy_fk` FOREIGN KEY (`default_academy_id`) REFERENCES `academy` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `guardian`
    ADD CONSTRAINT `guardian_gender_fk` FOREIGN KEY (`gender`) REFERENCES `gender_ref` (`gender`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `exam`
    ADD CONSTRAINT `exam_student_subject_fk` FOREIGN KEY (`student_subject_id`) REFERENCES `student_subject` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `voucher_consumption`
    ADD CONSTRAINT `voucher_consumption_student_voucher_fk` FOREIGN KEY (`student_voucher_id`) REFERENCES `student_voucher` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `student_voucher`
    ADD CONSTRAINT `student_voucher_student_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `student_voucher`
    ADD CONSTRAINT `student_voucher_voucher_fk` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `student_guardian`
    ADD CONSTRAINT `student_guardian_student_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `student_guardian`
    ADD CONSTRAINT `student_guardian_guardian_fk` FOREIGN KEY (`guardian_id`) REFERENCES `guardian` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `student_guardian`
    ADD CONSTRAINT `student_guardian_guardian_type_fk` FOREIGN KEY (`guardian_type_id`) REFERENCES `guardian_type` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `student_subject`
    ADD CONSTRAINT `student_subject_student_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `student_subject`
    ADD CONSTRAINT `student_subject_subject_fk` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `student_schedule`
    ADD CONSTRAINT `student_schedule_student_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `invoice`
    ADD CONSTRAINT `invoice_invoice_staus_fk` FOREIGN KEY (`invoice_status_id`) REFERENCES `invoice_status` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `invoice`
    ADD CONSTRAINT `invoice_invoice_type_fk` FOREIGN KEY (`invoice_type_id`) REFERENCES `invoice_type` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `invoice`
    ADD CONSTRAINT `invoice_student_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `invoice`
    ADD CONSTRAINT `invoice_student_voucher_fk` FOREIGN KEY (`student_voucher_id`) REFERENCES `student_voucher` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `academy_teacher`
    ADD CONSTRAINT `academy_teacher_teacher_fk` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `academy_teacher`
    ADD CONSTRAINT `academy_teacher_academy_fk` FOREIGN KEY (`academy_id`) REFERENCES `academy` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `teacher_student`
    ADD CONSTRAINT `teacher_student_academy_teacher_fk` FOREIGN KEY (`academy_teacher_id`) REFERENCES `academy_teacher` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `teacher_student`
    ADD CONSTRAINT `teacher_student_student_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `academy_schedule`
    ADD CONSTRAINT `academy_schedule_academy_fk` FOREIGN KEY (`academy_id`) REFERENCES `academy` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `school_student`
    ADD CONSTRAINT `school_student_school_fk` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `school_student`
    ADD CONSTRAINT `school_student_student_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `voucher_price`
    ADD CONSTRAINT `voucher_price_voucher_fk` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;


/* INDEX statements */
CREATE INDEX `gender_index` ON `student` (`gender`);

CREATE INDEX `default_academy_index` ON `student` (`default_academy_id`);

CREATE INDEX `gender_index` ON `teacher` (`gender`);

CREATE INDEX `default_academy_index` ON `teacher` (`default_academy_id`);

CREATE INDEX `gender_index` ON `guardian` (`gender`);

CREATE INDEX `student_subject_index` ON `exam` (`student_subject_id`);

CREATE INDEX `student_voucher_index` ON `voucher_consumption` (`student_voucher_id`);

CREATE UNIQUE INDEX `student_voucher_date_from_unique_index` ON `student_voucher` (`student_id`, `voucher_id`, `date_from`);

CREATE INDEX `student_voucher_index` ON `student_voucher` (`student_id`, `voucher_id`);

CREATE INDEX `voucher_student_index` ON `student_voucher` (`voucher_id`, `student_id`);

CREATE INDEX `student_date_from_index` ON `student_voucher` (`student_id`, `date_from`);

CREATE INDEX `voucher_date_from_index` ON `student_voucher` (`voucher_id`, `date_from`);

CREATE INDEX `student_index` ON `student_voucher` (`student_id`);

CREATE INDEX `voucher_index` ON `student_voucher` (`voucher_id`);

CREATE UNIQUE INDEX `student_guardian_date_from_unique_index` ON `student_guardian` (`student_id`, `guardian_id`, `date_from`);

CREATE INDEX `student_guardian_unique_index` ON `student_guardian` (`student_id`, `guardian_id`);

CREATE INDEX `guardian_student_index` ON `student_guardian` (`guardian_id`, `student_id`);

CREATE INDEX `student_date_from_index` ON `student_guardian` (`student_id`, `date_from`);

CREATE INDEX `guardian_date_from_index` ON `student_guardian` (`guardian_id`, `date_from`);

CREATE INDEX `student_index` ON `student_guardian` (`student_id`);

CREATE INDEX `guardian_index` ON `student_guardian` (`guardian_id`);

CREATE INDEX `guardian_type_index` ON `student_guardian` (`guardian_type_id`);

CREATE UNIQUE INDEX `student_subject_date_from_unique_index` ON `student_subject` (`student_id`, `subject_id`, `date_from`);

CREATE INDEX `student_subject_index` ON `student_subject` (`student_id`, `subject_id`);

CREATE INDEX `subject_student_index` ON `student_subject` (`subject_id`, `student_id`);

CREATE INDEX `student_date_from_index` ON `student_subject` (`student_id`, `date_from`);

CREATE INDEX `subject_date_from_index` ON `student_subject` (`subject_id`, `date_from`);

CREATE INDEX `student_index` ON `student_subject` (`student_id`);

CREATE INDEX `subject_index` ON `student_subject` (`subject_id`);

CREATE INDEX `student_index` ON `student_schedule` (`student_id`);

CREATE INDEX `invoice_status_index` ON `invoice` (`invoice_status_id`);

CREATE INDEX `invoice_type_index` ON `invoice` (`invoice_type_id`);

CREATE INDEX `student_index` ON `invoice` (`student_id`);

CREATE INDEX `student_voucher_index` ON `invoice` (`student_voucher_id`);

CREATE UNIQUE INDEX `teacher_academy_date_from_unique_index` ON `academy_teacher` (`teacher_id`, `academy_id`, `date_from`);

CREATE INDEX `teacher_academy_index` ON `academy_teacher` (`teacher_id`, `academy_id`);

CREATE INDEX `academy_teacher_index` ON `academy_teacher` (`academy_id`, `teacher_id`);

CREATE INDEX `teacher_date_from_index` ON `academy_teacher` (`teacher_id`, `date_from`);

CREATE INDEX `academy_date_from_index` ON `academy_teacher` (`academy_id`, `date_from`);

CREATE INDEX `teacher_index` ON `academy_teacher` (`teacher_id`);

CREATE INDEX `academy_index` ON `academy_teacher` (`academy_id`);

CREATE UNIQUE INDEX `academy_teacher_student_date_from_unique_index` ON `teacher_student` (`academy_teacher_id`, `student_id`, `date_from`);

CREATE INDEX `academy_teacher_student_index` ON `teacher_student` (`academy_teacher_id`, `student_id`);

CREATE INDEX `student_academy_teacher_index` ON `teacher_student` (`student_id`, `academy_teacher_id`);

CREATE INDEX `academy_teacher_date_from_index` ON `teacher_student` (`academy_teacher_id`, `date_from`);

CREATE INDEX `student_date_from_index` ON `teacher_student` (`student_id`, `date_from`);

CREATE INDEX `academy_teacher_index` ON `teacher_student` (`academy_teacher_id`);

CREATE INDEX `student_index` ON `teacher_student` (`student_id`);

CREATE INDEX `academy_index` ON `academy_schedule` (`academy_id`);

CREATE UNIQUE INDEX `school_student_date_from_unique_index` ON `school_student` (`school_id`, `student_id`, `date_from`);

CREATE INDEX `school_student_index` ON `school_student` (`school_id`, `student_id`);

CREATE INDEX `student_school_index` ON `school_student` (`student_id`, `school_id`);

CREATE INDEX `school_date_from_index` ON `school_student` (`school_id`, `date_from`);

CREATE INDEX `student_date_from_index` ON `school_student` (`student_id`, `date_from`);

CREATE INDEX `school_index` ON `school_student` (`school_id`);

CREATE INDEX `student_index` ON `school_student` (`student_id`);

CREATE INDEX `voucher_index` ON `voucher_price` (`voucher_id`);

CREATE UNIQUE INDEX `internal_id_unique_index` ON `student` (`internal_id`);

CREATE UNIQUE INDEX `code_unique_index` ON `student` (`code`);

CREATE UNIQUE INDEX `internal_id_unique_index` ON `teacher` (`internal_id`);

CREATE UNIQUE INDEX `code_unique_index` ON `teacher` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `guardian` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `school` (`code`);

CREATE UNIQUE INDEX `internal_id_unique_index` ON `academy` (`internal_id`);

CREATE UNIQUE INDEX `code_unique_index` ON `academy` (`code`);

CREATE UNIQUE INDEX `internal_id_unique_index` ON `subject` (`internal_id`);

CREATE UNIQUE INDEX `code_unique_index` ON `subject` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `guardian_type` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `exam` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `academic_year` (`code`);

CREATE UNIQUE INDEX `internal_id_unique_index` ON `voucher` (`internal_id`);

CREATE UNIQUE INDEX `code_unique_index` ON `voucher` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `student_voucher` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `student_schedule` (`code`);

CREATE UNIQUE INDEX `internal_id_unique_index` ON `invoice` (`internal_id`);

CREATE UNIQUE INDEX `code_unique_index` ON `invoice` (`code`);

CREATE UNIQUE INDEX `internal_id_unique_index` ON `invoice_type` (`internal_id`);

CREATE UNIQUE INDEX `code_unique_index` ON `invoice_type` (`code`);

CREATE UNIQUE INDEX `internal_id_unique_index` ON `invoice_status` (`internal_id`);

CREATE UNIQUE INDEX `code_unique_index` ON `invoice_status` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `academy_teacher` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `academy_schedule` (`code`);

CREATE UNIQUE INDEX `code_unique_index` ON `voucher_price` (`code`);


/* INSERT statements */
INSERT INTO `gender_ref`
VALUES ('m'),
       ('f');
