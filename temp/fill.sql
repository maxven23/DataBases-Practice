INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 0, 0, 'Moscow', 'Moscow');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 1, 0, 'Moscow', 'Moscow');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 1, 0, 'Moscow', 'Moscow');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (1, 0, 0, 'Ryazan region', 'Ryazan');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 1, 0, 'Tula region', 'Tula');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 0, 0, 'St Petersburg', 'St Petersburg');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (1, 0, 0, 'Tula region', 'Tula');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (1, 0, 1, 'Ryazan region', 'Ryazan');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 1, 1, 'Moscow', 'Moscow');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 0, 0, 'St Petersburg', 'St Petersburg');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (1, 1, 0, 'Moscow', 'Moscow');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 0, 1, 'St Petersburg', 'St Petersburg');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 0, 0, 'Moscow', 'Moscow');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 0, 0, 'Moscow', 'Moscow');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (1, 1, 1, 'Moscow', 'Moscow');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 1, 0, 'Vladimir region', 'Vladimir');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 0, 1, 'St Petersburg', 'St Petersburg');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (1, 0, 0, 'Vladimir region', 'Vladimir');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 1, 0, 'Moscow', 'Moscow');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 0, 1, 'Ryazan region', 'Ryazan');
INSERT INTO Users(user_type, sex, nationality_id, region, city) values (0, 0, 1, 'Ryazan region', 'Ryazan');

INSERT INTO applications(job_id, recruiter_id, candidate_id) values (1, 4, 20);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (1, 4, 20);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (2, 4, 20);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (3, 8, 20);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (5, 11, 13);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (5, 11, 14);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (6, 7, 5);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (8, 15, 1);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (9, 18, 16);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (10, 18, 16);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (1, 4, 1);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (1, 4, 2);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (1, 4, 3);
INSERT INTO applications(job_id, recruiter_id, candidate_id) values (4, 11, 20);

INSERT INTO Jobs(user_id, profession, region, city) values (4, 'Programmer', 'Ryazan region', 'Ryazan');
INSERT INTO Jobs(user_id, profession, region, city) values (4, 'Sysadmin', 'Ryazan region', 'Ryazan');
INSERT INTO Jobs(user_id, profession, region, city) values (8, 'Programmer', 'Ryazan region', 'Ryazan');
INSERT INTO Jobs(user_id, profession, region, city) values (11, 'Programmer', 'Moscow', 'Moscow');
INSERT INTO Jobs(user_id, profession, region, city) values (11, 'Developer', 'Moscow', 'Moscow');
INSERT INTO Jobs(user_id, profession, region, city) values (7, 'Programmer', 'Tula region', 'Tula');
INSERT INTO Jobs(user_id, profession, region, city) values (4, 'Developer', 'Ryazan region', 'Ryazan');
INSERT INTO Jobs(user_id, profession, region, city) values (15, 'Washer', 'Moscow', 'Moscow');
INSERT INTO Jobs(user_id, profession, region, city) values (18, 'Programmer', 'Vladimir region', 'Vladimir');
INSERT INTO Jobs(user_id, profession, region, city) values (18, 'Developer', 'Vladimir region', 'Vladimir');


UPDATE Users SET created_at='2021-08-15 18:13:16', birthday='2002-07-02', last_online_at='2022-08-15 18:13:16.102029' WHERE id=1
UPDATE Users SET created_at='2020-08-09 16:23:41', birthday='2001-02-02', last_online_at='2021-12-23 14:25:09' WHERE id=2
UPDATE Users SET created_at='2011-10-19 01:59:56', birthday='1994-07-17', last_online_at='2016-07-24 14:06:10' WHERE id=3
UPDATE Users SET created_at='2014-09-12 04:17:56', birthday='1997-10-26', last_online_at='2021-06-06 02:02:03' WHERE id=4
UPDATE Users SET created_at='2014-05-03 05:42:30', birthday='1997-01-11', last_online_at='2021-02-24 15:39:59' WHERE id=5
UPDATE Users SET created_at='2014-11-07 22:06:24', birthday='1997-09-25', last_online_at='2017-02-06 19:57:45' WHERE id=6
UPDATE Users SET created_at='2020-06-09 08:08:36', birthday='1991-12-26', last_online_at='2021-09-13 10:15:08' WHERE id=7
UPDATE Users SET created_at='2020-07-17 12:29:43', birthday='2000-04-01', last_online_at='2022-01-29 13:09:47' WHERE id=8
UPDATE Users SET created_at='2020-03-23 09:38:51', birthday='2000-08-19', last_online_at='2021-08-25 02:12:29' WHERE id=9
UPDATE Users SET created_at='2020-08-21 18:13:03', birthday='1998-12-02', last_online_at='2022-01-08 14:42:51' WHERE id=10
UPDATE Users SET created_at='2021-01-27 14:37:30', birthday='2000-04-06', last_online_at='2022-03-28 05:04:35' WHERE id=11
UPDATE Users SET created_at='2016-04-09 23:51:54', birthday='1988-11-09', last_online_at='2020-06-18 16:09:37' WHERE id=12
UPDATE Users SET created_at='2012-08-13 11:20:41', birthday='1989-03-08', last_online_at='2018-05-03 04:35:48' WHERE id=13
UPDATE Users SET created_at='2014-02-19 07:53:19', birthday='1987-07-22', last_online_at='2018-06-03 14:20:36' WHERE id=14
UPDATE Users SET created_at='2018-09-04 22:29:46', birthday='1990-07-10', last_online_at='2020-05-21 08:52:01' WHERE id=15
UPDATE Users SET created_at='2019-06-24 00:11:55', birthday='1999-11-07', last_online_at='2022-02-02 21:19:44' WHERE id=16
UPDATE Users SET created_at='2013-06-21 22:25:40', birthday='1988-01-04', last_online_at='2017-07-16 14:28:47' WHERE id=17
UPDATE Users SET created_at='2019-05-31 06:07:30', birthday='2001-04-02', last_online_at='2022-02-28 09:34:07' WHERE id=18
UPDATE Users SET created_at='2008-02-12 01:24:20', birthday='1990-06-17', last_online_at='2015-05-06 10:12:49' WHERE id=19
UPDATE Users SET created_at='2016-01-25 17:31:36', birthday='1989-10-05', last_online_at='2021-08-26 09:17:44' WHERE id=20
UPDATE Users SET created_at='2020-04-18 02:29:06', birthday='1997-11-24', last_online_at='2021-08-06 06:46:41' WHERE id=21