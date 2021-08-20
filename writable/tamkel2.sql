--
-- File generated with SQLiteStudio v3.3.3 on Sel Agu 17 13:25:49 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_activation_attempts
CREATE TABLE auth_activation_attempts (
    id         INTEGER  PRIMARY KEY AUTOINCREMENT,
    ip_address VARCHAR  NOT NULL,
    user_agent VARCHAR  NOT NULL,
    token      VARCHAR,
    created_at DATETIME NOT NULL
);

INSERT INTO auth_activation_attempts (id, ip_address, user_agent, token, created_at) VALUES (1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'cbd73d904f51d1a9efab1be8fa154b15', '2021-08-08 03:02:13');

-- Table: auth_groups
CREATE TABLE auth_groups (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR NOT NULL,
    description VARCHAR NOT NULL
);

INSERT INTO auth_groups (id, name, description) VALUES (1, 'admin', 'administrator');
INSERT INTO auth_groups (id, name, description) VALUES (2, 'bos', 'kepala pelaksana tamkel');
INSERT INTO auth_groups (id, name, description) VALUES (3, 'staf', 'pekerja');

-- Table: auth_groups_permissions
CREATE TABLE auth_groups_permissions (
    group_id      INT NOT NULL
                      DEFAULT 0,
    permission_id INT NOT NULL
                      DEFAULT 0,
    CONSTRAINT auth_groups_permissions_group_id_foreign FOREIGN KEY (
        group_id
    )
    REFERENCES auth_groups (id) ON DELETE CASCADE,
    CONSTRAINT auth_groups_permissions_permission_id_foreign FOREIGN KEY (
        permission_id
    )
    REFERENCES auth_permissions (id) ON DELETE CASCADE
);


-- Table: auth_groups_users
CREATE TABLE auth_groups_users (
    group_id INT NOT NULL
                 DEFAULT 0
                 REFERENCES auth_groups (id),
    user_id  INT NOT NULL
                 DEFAULT 0
                 REFERENCES users (id),
    CONSTRAINT auth_groups_users_group_id_foreign FOREIGN KEY (
        group_id
    )
    REFERENCES auth_groups (id) ON DELETE CASCADE,
    CONSTRAINT auth_groups_users_user_id_foreign FOREIGN KEY (
        user_id
    )
    REFERENCES users (id) ON DELETE CASCADE
);

INSERT INTO auth_groups_users (group_id, user_id) VALUES (1, 7);
INSERT INTO auth_groups_users (group_id, user_id) VALUES (3, 9);
INSERT INTO auth_groups_users (group_id, user_id) VALUES (2, 10);

-- Table: auth_logins
CREATE TABLE auth_logins (
    id         INTEGER  PRIMARY KEY AUTOINCREMENT,
    ip_address VARCHAR,
    email      VARCHAR,
    user_id    INT,
    date       DATETIME NOT NULL,
    success    TINYINT  NOT NULL
);

INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (1, '::1', 'severinusgg@gmail.com', 1, '2021-08-08 02:41:07', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (2, '::1', 'severinusgg@gmail.com', 6, '2021-08-08 03:02:23', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (3, '::1', 'helang_temeran@gmail.com', 7, '2021-08-09 09:10:16', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (4, '::1', 'helang_temeran@gmail.com', 7, '2021-08-09 09:38:10', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (5, '::1', 'helang_temeran@gmail.com', 7, '2021-08-09 09:39:14', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (6, '::1', 'helang_temeran@gmail.com', NULL, '2021-08-09 09:46:36', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (7, '::1', 'helang_temeran@gmail.com', NULL, '2021-08-09 09:46:45', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (8, '::1', 'helang_temeran@gmail.com', 7, '2021-08-09 09:46:52', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (9, '::1', 'helang_temeran@gmail.com', 7, '2021-08-09 10:10:02', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (10, '::1', 'helang_temeran@gmail.com', 7, '2021-08-09 10:46:16', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (11, '::1', 'mangkubuwono@gmail.com', NULL, '2021-08-09 12:08:20', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (12, '::1', 'mangkubuwono@gmail.com', NULL, '2021-08-09 12:08:30', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (13, '::1', 'mangkubuwono@tamkel.com', 8, '2021-08-09 12:09:23', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (14, '::1', 'helang_temeran@gmail.com', 7, '2021-08-10 09:33:38', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (15, '::1', 'helang_temeran@gmail.com', 7, '2021-08-10 09:52:37', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (16, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 08:31:15', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (17, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 08:31:42', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (18, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 08:36:57', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (19, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 08:54:20', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (20, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 09:05:11', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (21, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 09:10:35', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (22, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 09:11:11', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (23, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 09:12:10', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (24, '::1', 'severinusgg@gmail.com', NULL, '2021-08-11 09:26:43', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (25, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 09:26:50', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (26, '::1', 'severinusgg@gmail.com', NULL, '2021-08-11 09:27:03', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (27, '::1', 'severinusgg@gmail.com', NULL, '2021-08-11 09:27:48', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (28, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 09:36:48', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (29, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 09:37:04', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (30, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:03:38', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (31, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:11:22', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (32, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 10:13:47', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (33, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 10:41:16', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (34, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:41:28', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (35, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:42:26', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (36, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:43:03', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (37, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:44:58', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (38, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 10:45:08', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (39, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 10:45:42', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (40, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 10:46:01', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (41, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 10:48:58', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (42, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 10:50:57', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (43, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:51:10', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (44, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:55:09', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (45, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:55:14', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (46, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 10:55:25', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (47, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 10:55:55', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (48, '::1', 'mangkubuwono@tamkel.com', NULL, '2021-08-11 11:40:36', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (49, '::1', 'mangkubuwono@tamkel.com', NULL, '2021-08-11 11:41:17', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (50, '::1', 'mangkubuwono@tamkel.com', 10, '2021-08-11 11:42:23', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (51, '::1', 'mangkubuwono@tamkel.com', 10, '2021-08-11 11:42:59', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (52, '::1', 'mangkubuwono@tamkel.com', 10, '2021-08-11 11:43:05', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (53, '::1', 'mangkubuwono@tamkel.com', 10, '2021-08-11 11:43:57', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (54, '::1', 'mangkubuwono@tamkel.com', 10, '2021-08-11 11:44:50', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (55, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 11:45:01', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (56, '::1', 'mangkubuwono@tamkel.com', 10, '2021-08-11 11:46:00', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (57, '::1', 'mangkubuwono@tamkel.com', 10, '2021-08-11 11:47:31', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (58, '::1', 'hela', NULL, '2021-08-11 11:47:40', 0);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (59, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 11:47:48', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (60, '::1', 'mangkubuwono@tamkel.com', 10, '2021-08-11 11:56:17', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (61, '::1', 'mangkubuwono@tamkel.com', 10, '2021-08-11 12:01:28', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (62, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 12:01:56', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (63, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 12:09:03', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (64, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 12:44:31', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (65, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 12:56:23', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (66, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 13:02:59', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (67, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 13:03:11', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (68, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 13:20:19', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (69, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 13:21:52', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (70, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 21:55:10', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (71, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 21:55:21', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (72, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 22:24:17', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (73, '::1', 'resimasri1010@gmail.com', 9, '2021-08-11 22:34:02', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (74, '::1', 'helang_temeran@gmail.com', 7, '2021-08-11 22:41:42', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (75, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 00:23:24', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (76, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 00:23:46', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (77, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 00:23:56', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (78, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 00:47:23', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (79, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 00:49:49', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (80, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 00:50:44', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (81, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 00:50:54', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (82, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 00:59:52', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (83, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 01:03:24', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (84, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 01:07:36', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (85, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 01:09:19', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (86, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 01:11:40', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (87, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 01:13:29', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (88, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 02:46:54', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (89, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 02:49:35', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (90, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 02:50:27', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (91, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 02:59:46', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (92, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 03:10:17', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (93, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 03:25:07', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (94, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 03:25:34', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (95, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 03:28:37', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (96, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 03:28:50', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (97, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 07:43:19', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (98, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 07:47:36', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (99, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 07:50:15', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (100, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 07:53:57', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (101, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 07:55:32', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (102, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 07:56:43', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (103, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 07:56:52', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (104, '::1', 'resimasri1010@gmail.com', 9, '2021-08-12 09:50:18', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (105, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 09:50:30', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (106, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 22:03:48', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (107, '::1', 'helang_temeran@gmail.com', 7, '2021-08-12 22:06:30', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (108, '::1', 'helang_temeran@gmail.com', 7, '2021-08-13 01:20:25', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (109, '::1', 'helang_temeran@gmail.com', 7, '2021-08-13 09:37:36', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (110, '::1', 'helang_temeran@gmail.com', 7, '2021-08-14 06:49:15', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (111, '::1', 'helang_temeran@gmail.com', 7, '2021-08-14 12:03:43', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (112, '::1', 'helang_temeran@gmail.com', 7, '2021-08-16 00:22:49', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (113, '::1', 'helang_temeran@gmail.com', 7, '2021-08-16 04:17:23', 1);
INSERT INTO auth_logins (id, ip_address, email, user_id, date, success) VALUES (114, '::1', 'helang_temeran@gmail.com', 7, '2021-08-16 09:01:12', 1);

-- Table: auth_permissions
CREATE TABLE auth_permissions (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR NOT NULL,
    description VARCHAR NOT NULL
);


-- Table: auth_reset_attempts
CREATE TABLE auth_reset_attempts (
    id         INTEGER  PRIMARY KEY AUTOINCREMENT,
    email      VARCHAR  NOT NULL,
    ip_address VARCHAR  NOT NULL,
    user_agent VARCHAR  NOT NULL,
    token      VARCHAR,
    created_at DATETIME NOT NULL
);


-- Table: auth_tokens
CREATE TABLE auth_tokens (
    id              INTEGER  PRIMARY KEY AUTOINCREMENT,
    selector        VARCHAR  NOT NULL,
    hashedValidator VARCHAR  NOT NULL,
    user_id         INT      NOT NULL,
    expires         DATETIME NOT NULL,
    CONSTRAINT auth_tokens_user_id_foreign FOREIGN KEY (
        user_id
    )
    REFERENCES users (id) ON DELETE CASCADE
);


-- Table: auth_users_permissions
CREATE TABLE auth_users_permissions (
    user_id       INT NOT NULL
                      DEFAULT 0,
    permission_id INT NOT NULL
                      DEFAULT 0,
    CONSTRAINT auth_users_permissions_user_id_foreign FOREIGN KEY (
        user_id
    )
    REFERENCES users (id) ON DELETE CASCADE,
    CONSTRAINT auth_users_permissions_permission_id_foreign FOREIGN KEY (
        permission_id
    )
    REFERENCES auth_permissions (id) ON DELETE CASCADE
);


-- Table: bagian
CREATE TABLE bagian (
    id        INTEGER      PRIMARY KEY AUTOINCREMENT
                           NOT NULL,
    deskripsi VARCHAR (50) NOT NULL
);

INSERT INTO bagian (id, deskripsi) VALUES (1, 'pelayan-pesanan');
INSERT INTO bagian (id, deskripsi) VALUES (2, 'sewa-wahana');
INSERT INTO bagian (id, deskripsi) VALUES (3, 'tiket-depan');
INSERT INTO bagian (id, deskripsi) VALUES (4, 'parkir-keluar');
INSERT INTO bagian (id, deskripsi) VALUES (5, 'parkir-masuk');

-- Table: karyawan
CREATE TABLE karyawan (
    id           INTEGER       PRIMARY KEY AUTOINCREMENT
                               NOT NULL,
    nama_lengkap VARCHAR (200),
    jk           VARCHAR (2),
    tgl_lahir    DATE          NOT NULL,
    alamat       TEXT,
    umur         INTEGER,
    email        VARCHAR (50),
    nohp         VARCHAR (20) 
);

INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (1, NULL, NULL, '2000-01-02', 'sekadau', 21, NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (2, 'stepanus mangku', NULL, '1992-05-09', 'sekadau', 28, NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (3, 'anggita anggi', '1', '2005-03-12', 'tapang sambas', 16, NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (4, 'stepanus pandus', '1', '1993-03-12', 'TAPANG SEMADAK', 25, NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (5, '', '1', '', '', '', NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (6, '', '1', '', '', '', NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (7, '', '1', '', '', '', NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (8, '', '1', '', '', '', NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (9, 'ignasius ', '1', '1990-04-12', 'TAPANG SEMADAK', 31, NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (10, 'sesil', '1', '1998-10-23', 'tapang sambas', 23, NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (11, 'juing', '1', '1999-12-23', 'tapang semadak', 22, NULL, NULL);
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (12, 'bita', '2', '1979-06-12', 'tapang sambas', 42, 'bita-bito@gmail.com', '08237745894');
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (13, 'kasianus mental', '1', '1976-11-19', 'tapang semadak', 44, 'mental@gmail.com', '08232112322');
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (14, 'moses', '1', '1976-09-09', 'tapang semadak', 44, 'moses@gmail.com', '0811218834');
INSERT INTO karyawan (id, nama_lengkap, jk, tgl_lahir, alamat, umur, email, nohp) VALUES (15, 'petrus muna', '2', '1993-07-13', 'tapang kemayau', 28, 'munafik@gmail.com', '08111217362');

-- Table: migrations
CREATE TABLE migrations (
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    version   VARCHAR NOT NULL,
    class     VARCHAR NOT NULL,
    [group]   VARCHAR NOT NULL,
    namespace VARCHAR NOT NULL,
    time      INT     NOT NULL,
    batch     INT     NOT NULL
);

INSERT INTO migrations (id, version, class, "group", namespace, time, batch) VALUES (1, '2017-11-20-223112', 'Myth\Auth\Database\Migrations\CreateAuthTables', 'default', 'Myth\Auth', 1628406128, 1);

-- Table: shift
CREATE TABLE shift (
    id          INTEGER      PRIMARY KEY AUTOINCREMENT
                             NOT NULL,
    deskripsi   VARCHAR (50) NOT NULL,
    awal        DATETIME,
    selesai     DATETIME,
    karyawan_id INTEGER      REFERENCES karyawan (id) ON DELETE NO ACTION
                                                      ON UPDATE NO ACTION,
    bagian_id   INTEGER      REFERENCES bagian (id) ON DELETE NO ACTION
                                                    ON UPDATE NO ACTION
);


-- Table: users
CREATE TABLE users (
    id               INTEGER  PRIMARY KEY AUTOINCREMENT,
    email            VARCHAR  NOT NULL,
    username         VARCHAR,
    password_hash    VARCHAR  NOT NULL,
    reset_hash       VARCHAR,
    reset_at         DATETIME,
    reset_expires    DATETIME,
    activate_hash    VARCHAR,
    status           VARCHAR,
    status_message   VARCHAR,
    active           TINYINT  NOT NULL
                              DEFAULT 0,
    force_pass_reset TINYINT  NOT NULL
                              DEFAULT 0,
    created_at       DATETIME,
    updated_at       DATETIME,
    deleted_at       DATETIME
);

INSERT INTO users (id, email, username, password_hash, reset_hash, reset_at, reset_expires, activate_hash, status, status_message, active, force_pass_reset, created_at, updated_at, deleted_at) VALUES (7, 'helang_temeran@gmail.com', 'severgragan', '$2y$10$e024npS75j.4DYxCz4En5OB2jYteLqYF8.Zk14uBsXVPSkr4.t1Gm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-08-09 09:09:44', '2021-08-09 09:09:44', NULL);
INSERT INTO users (id, email, username, password_hash, reset_hash, reset_at, reset_expires, activate_hash, status, status_message, active, force_pass_reset, created_at, updated_at, deleted_at) VALUES (9, 'resimasri1010@gmail.com', 'resimasri', '$2y$10$SuShJp5XgdcOACXsjQ81cuHeCqjwFg.k/KQ3OAO5dEAxigqaWyNwe', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-08-11 08:54:11', '2021-08-11 08:54:11', NULL);
INSERT INTO users (id, email, username, password_hash, reset_hash, reset_at, reset_expires, activate_hash, status, status_message, active, force_pass_reset, created_at, updated_at, deleted_at) VALUES (10, 'mangkubuwono@tamkel.com', 'supermangku', '$2y$10$QUXHIm77/paPbEC9ZO2m/.947//olTBQuCdK10bbjDS5hQIGYDa/W', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-08-11 11:42:19', '2021-08-11 11:42:19', NULL);

-- Index: auth_groups_permissions_group_id_permission_id
CREATE INDEX auth_groups_permissions_group_id_permission_id ON auth_groups_permissions (
    group_id,
    permission_id
);


-- Index: auth_groups_users_group_id_user_id
CREATE INDEX auth_groups_users_group_id_user_id ON auth_groups_users (
    group_id,
    user_id
);


-- Index: auth_logins_email
CREATE INDEX auth_logins_email ON auth_logins (
    email
);


-- Index: auth_logins_user_id
CREATE INDEX auth_logins_user_id ON auth_logins (
    user_id
);


-- Index: auth_tokens_selector
CREATE INDEX auth_tokens_selector ON auth_tokens (
    selector
);


-- Index: auth_users_permissions_user_id_permission_id
CREATE INDEX auth_users_permissions_user_id_permission_id ON auth_users_permissions (
    user_id,
    permission_id
);


-- Index: users_email
CREATE UNIQUE INDEX users_email ON users (
    email
);


-- Index: users_username
CREATE UNIQUE INDEX users_username ON users (
    username
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
