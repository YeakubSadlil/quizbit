--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Ubuntu 16.8-1.pgdg24.04+1)
-- Dumped by pg_dump version 17.4 (Ubuntu 17.4-1.pgdg24.04+2)

-- Started on 2025-04-23 23:53:44 +06

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3593 (class 0 OID 42291)
-- Dependencies: 226
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3587 (class 0 OID 42256)
-- Dependencies: 220
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (5, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (6, 'quiz', 'users');
INSERT INTO public.django_content_type VALUES (7, 'quiz', 'choices');
INSERT INTO public.django_content_type VALUES (8, 'quiz', 'question_category');
INSERT INTO public.django_content_type VALUES (9, 'quiz', 'questions');
INSERT INTO public.django_content_type VALUES (10, 'quiz', 'usersolutions');
INSERT INTO public.django_content_type VALUES (11, 'quiz', 'quiz');
INSERT INTO public.django_content_type VALUES (12, 'quiz', 'quizsession');
INSERT INTO public.django_content_type VALUES (13, 'quiz', 'quizsessionquestion');


--
-- TOC entry 3591 (class 0 OID 42285)
-- Dependencies: 224
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO public.auth_permission VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO public.auth_permission VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO public.auth_permission VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO public.auth_permission VALUES (21, 'Can add users', 6, 'add_users');
INSERT INTO public.auth_permission VALUES (22, 'Can change users', 6, 'change_users');
INSERT INTO public.auth_permission VALUES (23, 'Can delete users', 6, 'delete_users');
INSERT INTO public.auth_permission VALUES (24, 'Can view users', 6, 'view_users');
INSERT INTO public.auth_permission VALUES (25, 'Can add choices', 7, 'add_choices');
INSERT INTO public.auth_permission VALUES (26, 'Can change choices', 7, 'change_choices');
INSERT INTO public.auth_permission VALUES (27, 'Can delete choices', 7, 'delete_choices');
INSERT INTO public.auth_permission VALUES (28, 'Can view choices', 7, 'view_choices');
INSERT INTO public.auth_permission VALUES (29, 'Can add question_ category', 8, 'add_question_category');
INSERT INTO public.auth_permission VALUES (30, 'Can change question_ category', 8, 'change_question_category');
INSERT INTO public.auth_permission VALUES (31, 'Can delete question_ category', 8, 'delete_question_category');
INSERT INTO public.auth_permission VALUES (32, 'Can view question_ category', 8, 'view_question_category');
INSERT INTO public.auth_permission VALUES (33, 'Can add questions', 9, 'add_questions');
INSERT INTO public.auth_permission VALUES (34, 'Can change questions', 9, 'change_questions');
INSERT INTO public.auth_permission VALUES (35, 'Can delete questions', 9, 'delete_questions');
INSERT INTO public.auth_permission VALUES (36, 'Can view questions', 9, 'view_questions');
INSERT INTO public.auth_permission VALUES (37, 'Can add user solutions', 10, 'add_usersolutions');
INSERT INTO public.auth_permission VALUES (38, 'Can change user solutions', 10, 'change_usersolutions');
INSERT INTO public.auth_permission VALUES (39, 'Can delete user solutions', 10, 'delete_usersolutions');
INSERT INTO public.auth_permission VALUES (40, 'Can view user solutions', 10, 'view_usersolutions');
INSERT INTO public.auth_permission VALUES (41, 'Can add quiz', 11, 'add_quiz');
INSERT INTO public.auth_permission VALUES (42, 'Can change quiz', 11, 'change_quiz');
INSERT INTO public.auth_permission VALUES (43, 'Can delete quiz', 11, 'delete_quiz');
INSERT INTO public.auth_permission VALUES (44, 'Can view quiz', 11, 'view_quiz');
INSERT INTO public.auth_permission VALUES (45, 'Can add quiz session', 12, 'add_quizsession');
INSERT INTO public.auth_permission VALUES (46, 'Can change quiz session', 12, 'change_quizsession');
INSERT INTO public.auth_permission VALUES (47, 'Can delete quiz session', 12, 'delete_quizsession');
INSERT INTO public.auth_permission VALUES (48, 'Can view quiz session', 12, 'view_quizsession');
INSERT INTO public.auth_permission VALUES (49, 'Can add quiz session question', 13, 'add_quizsessionquestion');
INSERT INTO public.auth_permission VALUES (50, 'Can change quiz session question', 13, 'change_quizsessionquestion');
INSERT INTO public.auth_permission VALUES (51, 'Can delete quiz session question', 13, 'delete_quizsessionquestion');
INSERT INTO public.auth_permission VALUES (52, 'Can view quiz session question', 13, 'view_quizsessionquestion');


--
-- TOC entry 3595 (class 0 OID 42299)
-- Dependencies: 228
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3585 (class 0 OID 42247)
-- Dependencies: 218
-- Data for Name: quiz_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_users VALUES (1, 'pbkdf2_sha256$600000$SUsTgGqCdvFuNNn7jzcpAU$UQWrPsF9E/EeB18xa2jKfVqBALdeh1ipm2OEYlowWSY=', NULL, 'ab1@gmail.com', 'Seyam', true, false, '2024-11-18 17:00:19.400022+06', '2024-11-18 17:00:19.400046+06', NULL, false);
INSERT INTO public.quiz_users VALUES (2, 'pbkdf2_sha256$600000$yOB7FxuQg6sTUIhSPZmKh3$F6QRQ0Trv3+EgXZ7GGClGMTXIaUQD6pIAczRM0lJCDg=', NULL, 'ab2@gmail.com', 'Seyam', true, false, '2024-11-18 17:00:35.437092+06', '2024-11-18 17:00:35.437114+06', NULL, false);
INSERT INTO public.quiz_users VALUES (3, 'pbkdf2_sha256$600000$qbMAQvE2gcxZew01xPgDoo$20EyCxC8M0iH87oiKxEghnEJr8Xd4tRgMj+FRSQ+zQs=', NULL, 'ab3@gmail.com', 'Abir', true, false, '2024-11-18 17:01:14.45627+06', '2024-11-18 17:01:14.456294+06', NULL, false);
INSERT INTO public.quiz_users VALUES (4, 'pbkdf2_sha256$600000$UtNyqgVFjVwvYGZLAcLPgh$YSz/u0qS52mdtqEdMdjtLkgiSUyl/e4Zz9y1A5Hn4xQ=', NULL, 'shahed@gmail.com', 'Shahed Afridi', true, false, '2024-11-19 19:58:22.974111+06', '2024-11-19 19:58:22.974129+06', NULL, false);
INSERT INTO public.quiz_users VALUES (5, 'pbkdf2_sha256$600000$QdcmEpRC9UF8rEOUFOU0De$jnTkvGN9wxYAdn+V07oTR12O0LBOQRpuSYMwfjeDx7o=', NULL, 'test@gmail.com', 'Afridi', true, false, '2024-11-19 20:25:32.19095+06', '2024-11-19 20:25:32.191375+06', NULL, false);
INSERT INTO public.quiz_users VALUES (23, 'pbkdf2_sha256$600000$9P3D7b6V39KOSsjD3ybAVX$SrE0NVl9Af06maXXb6uH9wpANEtEQrA53HnBHbhIbAs=', NULL, 'seyamsadlil@gmail.com', 'seyam 435', true, false, '2024-12-27 11:00:31.043472+06', '2024-12-27 20:40:47.187446+06', NULL, true);
INSERT INTO public.quiz_users VALUES (24, 'pbkdf2_sha256$600000$s0vfoJuVlukDfTvFrxTxNm$InC3AjWcW7zT0P3FXAeWBoogA9F34JY3HYzP6P5Bt3c=', NULL, 'sh4568@gmail.com', 'Shahed Afridi', false, false, '2024-12-31 19:15:15.747353+06', '2024-12-31 19:15:42.438279+06', '8606', false);
INSERT INTO public.quiz_users VALUES (6, 'pbkdf2_sha256$600000$VyAMOPUSKggOx0H1aqnn0p$5j9SlouuuPhUkuYqPHENzAfq14J5nHyP6XVAD84Pjp8=', '2025-02-05 23:12:35.604879+06', 'admin@gmail.com', 'admin', true, true, '2024-12-24 21:21:00.065869+06', '2024-12-24 21:21:00.074152+06', NULL, false);
INSERT INTO public.quiz_users VALUES (10, 'pbkdf2_sha256$600000$WLabsQZVw4YPb0YfZJMOQJ$2ZRnvWIbF9Y6Ki595umNdfnGKk2kKU0PFzleA3+j488=', NULL, 'seyamsadlil647@gmail.com', 'Seyam 12', true, false, '2024-12-25 15:00:25.447032+06', '2024-12-25 15:00:29.522384+06', '1419', true);


--
-- TOC entry 3589 (class 0 OID 42264)
-- Dependencies: 222
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3583 (class 0 OID 42239)
-- Dependencies: 216
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations VALUES (1, 'quiz', '0001_initial', '2024-11-18 16:59:00.530704+06');
INSERT INTO public.django_migrations VALUES (2, 'contenttypes', '0001_initial', '2024-11-18 16:59:00.585269+06');
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2024-11-18 16:59:00.718929+06');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-11-18 16:59:00.738842+06');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-18 16:59:00.767446+06');
INSERT INTO public.django_migrations VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-11-18 16:59:00.79802+06');
INSERT INTO public.django_migrations VALUES (7, 'auth', '0001_initial', '2024-11-18 16:59:01.05283+06');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2024-11-18 16:59:01.090538+06');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0003_alter_user_email_max_length', '2024-11-18 16:59:01.115341+06');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0004_alter_user_username_opts', '2024-11-18 16:59:01.135702+06');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0005_alter_user_last_login_null', '2024-11-18 16:59:01.155409+06');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0006_require_contenttypes_0002', '2024-11-18 16:59:01.169887+06');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2024-11-18 16:59:01.191645+06');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0008_alter_user_username_max_length', '2024-11-18 16:59:01.213464+06');
INSERT INTO public.django_migrations VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2024-11-18 16:59:01.236659+06');
INSERT INTO public.django_migrations VALUES (16, 'auth', '0010_alter_group_name_max_length', '2024-11-18 16:59:01.264697+06');
INSERT INTO public.django_migrations VALUES (17, 'auth', '0011_update_proxy_permissions', '2024-11-18 16:59:01.286786+06');
INSERT INTO public.django_migrations VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2024-11-18 16:59:01.308603+06');
INSERT INTO public.django_migrations VALUES (19, 'quiz', '0002_choices_question_category_questions_usersolutions_and_more', '2024-11-18 16:59:01.615216+06');
INSERT INTO public.django_migrations VALUES (20, 'sessions', '0001_initial', '2024-11-18 16:59:01.71652+06');
INSERT INTO public.django_migrations VALUES (21, 'quiz', '0003_users_is_verified_users_otp_alter_users_is_active', '2024-12-25 11:40:56.190587+06');
INSERT INTO public.django_migrations VALUES (22, 'quiz', '0004_remove_users_is_verified', '2024-12-25 18:53:01.343885+06');
INSERT INTO public.django_migrations VALUES (23, 'quiz', '0005_rename_solution_choices_option', '2024-12-26 21:40:09.381044+06');
INSERT INTO public.django_migrations VALUES (24, 'quiz', '0006_users_is_verified_alter_users_email', '2024-12-27 10:57:33.351995+06');
INSERT INTO public.django_migrations VALUES (25, 'quiz', '0007_quiz', '2025-01-06 22:37:26.150202+06');
INSERT INTO public.django_migrations VALUES (26, 'quiz', '0008_alter_quiz_table', '2025-01-06 23:06:36.249691+06');
INSERT INTO public.django_migrations VALUES (27, 'quiz', '0009_quizsession_quizsessionquestion_and_more', '2025-02-05 22:49:12.733558+06');
INSERT INTO public.django_migrations VALUES (28, 'quiz', '0010_quizsession_created_at_alter_quizsession_start_time_and_more', '2025-02-07 11:36:45.203251+06');
INSERT INTO public.django_migrations VALUES (29, 'quiz', '0011_usersolutions_attempt_type_and_more', '2025-02-20 19:26:05.801004+06');
INSERT INTO public.django_migrations VALUES (30, 'quiz', '0012_alter_choices_option_alter_quizsession_status', '2025-04-23 23:42:12.030498+06');


--
-- TOC entry 3604 (class 0 OID 42390)
-- Dependencies: 237
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session VALUES ('xm01685fl7saanpbj9jinkcq44hhmg2d', '.eJxVjEEOwiAQAP_C2RCQ7goevfcNZGFBqgaS0p6MfzckPeh1ZjJv4Wnfit97Wv3C4ipQnH5ZoPhMdQh-UL03GVvd1iXIkcjDdjk3Tq_b0f4NCvUytobBarAJyERnIEMANDEDXxxhRhUmxYms4rNWOGUwJobkyEVAh9qKzxfZyzeJ:1tQnbl:GmWTIlu7cxcekjRDIFj24jPDw8WA6L58zpQztnPUVYQ', '2025-01-09 19:08:57.290042+06');
INSERT INTO public.django_session VALUES ('spmrba22vjnphkgi7toutnx1y1llkn3s', '.eJxVjEEOwiAQAP_C2RCQ7goevfcNZGFBqgaS0p6MfzckPeh1ZjJv4Wnfit97Wv3C4ipQnH5ZoPhMdQh-UL03GVvd1iXIkcjDdjk3Tq_b0f4NCvUytobBarAJyERnIEMANDEDXxxhRhUmxYms4rNWOGUwJobkyEVAh9qKzxfZyzeJ:1tfix1:sMkoFJUoiNKR7J5qHbtdCGaGic-434EPEIp6s9S87aw', '2025-02-19 23:12:35.613599+06');


--
-- TOC entry 3599 (class 0 OID 42339)
-- Dependencies: 232
-- Data for Name: quiz_question_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_question_category VALUES (1, 'Math', 'mathematics', '2024-11-18 23:08:38.964+06');
INSERT INTO public.quiz_question_category VALUES (2, 'GS', 'general science', '2024-11-18 23:08:51.939+06');
INSERT INTO public.quiz_question_category VALUES (3, 'Chemistry', 'science', '2024-11-18 23:09:05.872+06');
INSERT INTO public.quiz_question_category VALUES (4, 'General Knowledge', 'Trivia and general facts', '2025-01-05 18:42:26.14279+06');
INSERT INTO public.quiz_question_category VALUES (5, 'Science', 'Physics, Chemistry, Biology', '2025-01-05 18:42:26.14279+06');
INSERT INTO public.quiz_question_category VALUES (6, 'Technology', 'IT, Software, and Engineering', '2025-01-05 18:42:26.14279+06');
INSERT INTO public.quiz_question_category VALUES (7, 'History', 'Historical events and figures', '2025-01-05 18:42:26.14279+06');
INSERT INTO public.quiz_question_category VALUES (8, 'Sports', 'Sports and athletics', '2025-01-05 18:42:26.14279+06');
INSERT INTO public.quiz_question_category VALUES (10, 'Physics', 'physics subject', '2025-02-12 05:02:44.383+06');


--
-- TOC entry 3601 (class 0 OID 42347)
-- Dependencies: 234
-- Data for Name: quiz_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_questions VALUES (2, 'What is the symbol for Gold?', 'medium', true, '2024-11-18 23:09:45.767+06', 3);
INSERT INTO public.quiz_questions VALUES (3, 'What is log(100) = ?', 'hard', true, '2024-11-18 23:10:19.171+06', 1);
INSERT INTO public.quiz_questions VALUES (1, 'What is 1 + 3 = ?', 'easy', true, '2024-11-18 23:08:09+06', 1);
INSERT INTO public.quiz_questions VALUES (4, 'What is the capital of Japan?', 'easy', true, '2025-01-05 18:49:16.432781+06', 1);
INSERT INTO public.quiz_questions VALUES (5, 'Which is the smallest country in the world?', 'medium', true, '2025-01-05 18:49:16.432781+06', 1);
INSERT INTO public.quiz_questions VALUES (6, 'How many bones are 	there in the human body?', 'hard', true, '2025-01-05 18:49:16.432781+06', 1);
INSERT INTO public.quiz_questions VALUES (7, 'What is the chemical formula of glucose?', 'easy', true, '2025-01-05 18:49:16.432781+06', 2);
INSERT INTO public.quiz_questions VALUES (8, 'Who discovered the electron?', 'medium', true, '2025-01-05 18:49:16.432781+06', 2);
INSERT INTO public.quiz_questions VALUES (9, 'What is the powerhouse of the cell?', 'hard', true, '2025-01-05 18:49:16.432781+06', 2);
INSERT INTO public.quiz_questions VALUES (10, 'What does CPU stand for?', 'easy', true, '2025-01-05 18:49:16.432781+06', 3);
INSERT INTO public.quiz_questions VALUES (11, 'Who is known as the father of the computer?', 'medium', true, '2025-01-05 18:49:16.432781+06', 3);
INSERT INTO public.quiz_questions VALUES (12, 'What is the time complexity of binary search?', 'hard', true, '2025-01-05 18:49:16.432781+06', 3);
INSERT INTO public.quiz_questions VALUES (13, 'Who was the first Emperor of Rome?', 'easy', true, '2025-01-05 18:49:16.432781+06', 4);
INSERT INTO public.quiz_questions VALUES (14, 'When did the French Revolution start?', 'medium', true, '2025-01-05 18:49:16.432781+06', 4);
INSERT INTO public.quiz_questions VALUES (15, 'Which treaty ended World War I?', 'hard', true, '2025-01-05 18:49:16.432781+06', 4);
INSERT INTO public.quiz_questions VALUES (17, 'Which country hosted the 2016 Summer Olympics?', 'medium', true, '2025-01-05 18:49:16.432781+06', 8);
INSERT INTO public.quiz_questions VALUES (16, 'How many players are in a basketball team?', 'easy', true, '2025-01-05 18:49:16.432781+06', 8);
INSERT INTO public.quiz_questions VALUES (18, 'Which country has won the most FIFA World Cup titles?', 'hard', true, '2025-01-05 18:49:16.432781+06', 8);


--
-- TOC entry 3597 (class 0 OID 42331)
-- Dependencies: 230
-- Data for Name: quiz_choices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_choices VALUES (1, '2', false, '2024-11-18 23:37:18.496+06', 1);
INSERT INTO public.quiz_choices VALUES (2, '4', true, '2024-11-18 23:37:22.02+06', 1);
INSERT INTO public.quiz_choices VALUES (3, '5', false, '2024-11-18 23:37:23.358+06', 1);
INSERT INTO public.quiz_choices VALUES (4, '6', false, '2024-11-18 23:37:24.477+06', 1);
INSERT INTO public.quiz_choices VALUES (5, 'Au', true, '2024-11-18 23:39:45.427+06', 2);
INSERT INTO public.quiz_choices VALUES (6, 'Gu', false, '2024-11-18 23:39:47.668+06', 2);
INSERT INTO public.quiz_choices VALUES (7, 'Gd', false, '2024-11-18 23:39:48.744+06', 2);
INSERT INTO public.quiz_choices VALUES (8, 'Gl', false, '2024-11-18 23:39:49.595+06', 2);
INSERT INTO public.quiz_choices VALUES (9, '2', true, '2024-11-20 00:35:43.12+06', 3);
INSERT INTO public.quiz_choices VALUES (10, '4', false, '2024-11-20 00:35:56.426+06', 3);
INSERT INTO public.quiz_choices VALUES (11, '0', false, '2024-11-20 00:35:59.962+06', 3);
INSERT INTO public.quiz_choices VALUES (12, '1', false, '2024-11-20 00:36:04.18+06', 3);
INSERT INTO public.quiz_choices VALUES (25, 'C6H12O6', true, '2025-01-05 18:51:58.80479+06', 7);
INSERT INTO public.quiz_choices VALUES (47, 'O(n^2)', false, '2025-01-05 18:51:58.80479+06', 12);
INSERT INTO public.quiz_choices VALUES (46, 'O(n)', false, '2025-01-05 18:51:58.80479+06', 12);
INSERT INTO public.quiz_choices VALUES (61, '5', true, '2025-01-05 18:51:58.80479+06', 16);
INSERT INTO public.quiz_choices VALUES (37, 'Central Processing Unit', true, '2025-01-05 18:51:58.80479+06', 10);
INSERT INTO public.quiz_choices VALUES (39, 'Compute Power Unit', false, '2025-01-05 18:51:58.80479+06', 10);
INSERT INTO public.quiz_choices VALUES (18, 'Monaco', false, '2025-01-05 18:51:58.80479+06', 5);
INSERT INTO public.quiz_choices VALUES (53, '1789', true, '2025-01-05 18:51:58.80479+06', 14);
INSERT INTO public.quiz_choices VALUES (33, 'Mitochondria', true, '2025-01-05 18:51:58.80479+06', 9);
INSERT INTO public.quiz_choices VALUES (69, 'Brazil', true, '2025-01-05 18:51:58.80479+06', 18);
INSERT INTO public.quiz_choices VALUES (35, 'Ribosome', false, '2025-01-05 18:51:58.80479+06', 9);
INSERT INTO public.quiz_choices VALUES (30, 'Rutherford', false, '2025-01-05 18:51:58.80479+06', 8);
INSERT INTO public.quiz_choices VALUES (49, 'Augustus', true, '2025-01-05 18:51:58.80479+06', 13);
INSERT INTO public.quiz_choices VALUES (56, '1815', false, '2025-01-05 18:51:58.80479+06', 14);
INSERT INTO public.quiz_choices VALUES (27, 'CO2', false, '2025-01-05 18:51:58.80479+06', 7);
INSERT INTO public.quiz_choices VALUES (19, 'Malta', false, '2025-01-05 18:51:58.80479+06', 5);
INSERT INTO public.quiz_choices VALUES (38, 'Control Process Unit', false, '2025-01-05 18:51:58.80479+06', 10);
INSERT INTO public.quiz_choices VALUES (59, 'Potsdam Agreement', false, '2025-01-05 18:51:58.80479+06', 15);
INSERT INTO public.quiz_choices VALUES (68, 'Rio de Janeiro', true, '2025-01-05 18:51:58.80479+06', 17);
INSERT INTO public.quiz_choices VALUES (45, 'O(log n)', true, '2025-01-05 18:51:58.80479+06', 12);
INSERT INTO public.quiz_choices VALUES (63, '7', false, '2025-01-05 18:51:58.80479+06', 16);
INSERT INTO public.quiz_choices VALUES (62, '6', false, '2025-01-05 18:51:58.80479+06', 16);
INSERT INTO public.quiz_choices VALUES (20, 'Liechtenstein', false, '2025-01-05 18:51:58.80479+06', 5);
INSERT INTO public.quiz_choices VALUES (29, 'J.J. Thomson', true, '2025-01-05 18:51:58.80479+06', 8);
INSERT INTO public.quiz_choices VALUES (48, 'O(1)', false, '2025-01-05 18:51:58.80479+06', 12);
INSERT INTO public.quiz_choices VALUES (31, 'Bohr', false, '2025-01-05 18:51:58.80479+06', 8);
INSERT INTO public.quiz_choices VALUES (60, 'Treaty of Tordesillas', false, '2025-01-05 18:51:58.80479+06', 15);
INSERT INTO public.quiz_choices VALUES (58, 'Treaty of Paris', false, '2025-01-05 18:51:58.80479+06', 15);
INSERT INTO public.quiz_choices VALUES (28, 'NaCl', false, '2025-01-05 18:51:58.80479+06', 7);
INSERT INTO public.quiz_choices VALUES (15, 'Beijing', false, '2025-01-05 18:51:58.80479+06', 4);
INSERT INTO public.quiz_choices VALUES (13, 'Tokyo', true, '2025-01-05 18:51:58.80479+06', 4);
INSERT INTO public.quiz_choices VALUES (44, 'Tim Berners-Lee', false, '2025-01-05 18:51:58.80479+06', 11);
INSERT INTO public.quiz_choices VALUES (42, 'Alan Turing', false, '2025-01-05 18:51:58.80479+06', 11);
INSERT INTO public.quiz_choices VALUES (26, 'H2O', false, '2025-01-05 18:51:58.80479+06', 7);
INSERT INTO public.quiz_choices VALUES (14, 'Seoul', false, '2025-01-05 18:51:58.80479+06', 4);
INSERT INTO public.quiz_choices VALUES (16, 'Bangkok', false, '2025-01-05 18:51:58.80479+06', 4);
INSERT INTO public.quiz_choices VALUES (21, '206', true, '2025-01-05 18:51:58.80479+06', 6);
INSERT INTO public.quiz_choices VALUES (54, '1776', false, '2025-01-05 18:51:58.80479+06', 14);
INSERT INTO public.quiz_choices VALUES (57, 'Treaty of Versailles', true, '2025-01-05 18:51:58.80479+06', 15);
INSERT INTO public.quiz_choices VALUES (67, 'China', false, '2025-01-05 18:51:58.80479+06', 17);
INSERT INTO public.quiz_choices VALUES (66, 'USA', false, '2025-01-05 18:51:58.80479+06', 17);
INSERT INTO public.quiz_choices VALUES (51, 'Nero', false, '2025-01-05 18:51:58.80479+06', 13);
INSERT INTO public.quiz_choices VALUES (36, 'Lysosome', false, '2025-01-05 18:51:58.80479+06', 9);
INSERT INTO public.quiz_choices VALUES (50, 'Julius Caesar', false, '2025-01-05 18:51:58.80479+06', 13);
INSERT INTO public.quiz_choices VALUES (41, 'Charles Babbage', true, '2025-01-05 18:51:58.80479+06', 11);
INSERT INTO public.quiz_choices VALUES (55, '1804', false, '2025-01-05 18:51:58.80479+06', 14);
INSERT INTO public.quiz_choices VALUES (43, 'Bill Gates', false, '2025-01-05 18:51:58.80479+06', 11);
INSERT INTO public.quiz_choices VALUES (40, 'Central Power Unit', false, '2025-01-05 18:51:58.80479+06', 10);
INSERT INTO public.quiz_choices VALUES (34, 'Nucleus', false, '2025-01-05 18:51:58.80479+06', 9);
INSERT INTO public.quiz_choices VALUES (23, '180', false, '2025-01-05 18:51:58.80479+06', 6);
INSERT INTO public.quiz_choices VALUES (64, '4', false, '2025-01-05 18:51:58.80479+06', 16);
INSERT INTO public.quiz_choices VALUES (52, 'Marcus Aurelius', false, '2025-01-05 18:51:58.80479+06', 13);
INSERT INTO public.quiz_choices VALUES (65, 'Brazil', false, '2025-01-05 18:51:58.80479+06', 17);
INSERT INTO public.quiz_choices VALUES (24, '250', false, '2025-01-05 18:51:58.80479+06', 6);
INSERT INTO public.quiz_choices VALUES (22, '210', false, '2025-01-05 18:51:58.80479+06', 6);
INSERT INTO public.quiz_choices VALUES (17, 'Vatican City', true, '2025-01-05 18:51:58.80479+06', 5);
INSERT INTO public.quiz_choices VALUES (32, 'Einstein', false, '2025-01-05 18:51:58.80479+06', 8);
INSERT INTO public.quiz_choices VALUES (71, 'Italy', false, '2025-01-05 18:51:58.80479+06', 18);
INSERT INTO public.quiz_choices VALUES (70, 'Germany', false, '2025-01-05 18:51:58.80479+06', 18);
INSERT INTO public.quiz_choices VALUES (72, 'Argentina', false, '2025-01-05 18:51:58.80479+06', 18);


--
-- TOC entry 3606 (class 0 OID 50754)
-- Dependencies: 239
-- Data for Name: quiz_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_info VALUES (2, 'Chemical Bonds', 'Basic chemical bonding concepts', 7, 50, true);
INSERT INTO public.quiz_info VALUES (1, 'Newton''s Laws', ' Test on Newton''s Laws of Motion', 5, 50, true);


--
-- TOC entry 3608 (class 0 OID 50762)
-- Dependencies: 241
-- Data for Name: quiz_info_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_info_categories VALUES (1, 1, 1);
INSERT INTO public.quiz_info_categories VALUES (2, 1, 10);
INSERT INTO public.quiz_info_categories VALUES (3, 2, 3);
INSERT INTO public.quiz_info_categories VALUES (4, 2, 5);
INSERT INTO public.quiz_info_categories VALUES (5, 1, 5);


--
-- TOC entry 3610 (class 0 OID 50782)
-- Dependencies: 243
-- Data for Name: quiz_quizsession; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_quizsession VALUES (1, 'in_progress', '2025-02-07 07:03:33.459+06', NULL, NULL, 1, 23, '2025-02-07 07:03:00+06');
INSERT INTO public.quiz_quizsession VALUES (2, 'not_started', NULL, NULL, NULL, 2, 23, '2025-02-07 11:52:56.140467+06');
INSERT INTO public.quiz_quizsession VALUES (27, 'not_started', NULL, NULL, NULL, 2, 23, '2025-02-12 22:33:09.429198+06');
INSERT INTO public.quiz_quizsession VALUES (28, 'in_progress', '2025-02-12 22:42:43.64607+06', '2025-02-12 22:46:43.64607+06', NULL, 2, 23, '2025-02-12 22:42:43.60295+06');
INSERT INTO public.quiz_quizsession VALUES (49, 'expired', '2025-03-03 17:07:57.4512+06', '2025-03-03 17:14:57.4512+06', NULL, 1, 10, '2025-03-03 17:07:57.385264+06');
INSERT INTO public.quiz_quizsession VALUES (29, 'expired', '2025-02-16 21:12:52.484022+06', '2025-02-16 21:15:52.484022+06', NULL, 1, 10, '2025-02-16 21:12:52.432833+06');
INSERT INTO public.quiz_quizsession VALUES (30, 'expired', '2025-02-23 22:46:05.563103+06', '2025-02-23 22:49:05.563103+06', NULL, 1, 10, '2025-02-23 22:46:05.502239+06');
INSERT INTO public.quiz_quizsession VALUES (31, 'expired', '2025-02-23 22:47:24.65853+06', '2025-02-23 22:50:24.65853+06', NULL, 1, 10, '2025-02-23 22:47:24.616966+06');
INSERT INTO public.quiz_quizsession VALUES (50, 'expired', '2025-03-03 21:12:56.872845+06', '2025-03-03 21:19:56.872845+06', NULL, 1, 10, '2025-03-03 21:12:56.828594+06');
INSERT INTO public.quiz_quizsession VALUES (32, 'expired', '2025-02-23 23:04:33.578991+06', '2025-02-23 23:07:33.578991+06', NULL, 1, 10, '2025-02-23 23:04:33.52494+06');
INSERT INTO public.quiz_quizsession VALUES (33, 'expired', '2025-02-23 23:19:08.931199+06', '2025-02-23 23:22:08.931199+06', NULL, 1, 10, '2025-02-23 23:19:08.882932+06');
INSERT INTO public.quiz_quizsession VALUES (34, 'expired', '2025-02-23 23:19:17.262922+06', '2025-02-23 23:22:17.262922+06', NULL, 1, 10, '2025-02-23 23:19:17.22183+06');
INSERT INTO public.quiz_quizsession VALUES (51, 'expired', '2025-03-03 21:44:43.821323+06', '2025-03-03 21:51:43.821323+06', NULL, 1, 10, '2025-03-03 21:44:43.770013+06');
INSERT INTO public.quiz_quizsession VALUES (35, 'expired', '2025-02-23 23:37:19.716527+06', '2025-02-23 23:40:19.716527+06', NULL, 1, 10, '2025-02-23 23:37:19.673767+06');
INSERT INTO public.quiz_quizsession VALUES (36, 'expired', '2025-02-24 20:20:45.085776+06', '2025-02-24 20:23:45.085776+06', NULL, 1, 10, '2025-02-24 20:20:45.034959+06');
INSERT INTO public.quiz_quizsession VALUES (70, 'expired', '2025-04-14 00:30:31.136958+06', '2025-04-14 01:20:31.136958+06', NULL, 1, 10, '2025-04-14 00:30:31.091059+06');
INSERT INTO public.quiz_quizsession VALUES (37, 'expired', '2025-02-24 21:03:21.800511+06', '2025-02-24 21:06:21.800511+06', NULL, 1, 10, '2025-02-24 21:03:21.758516+06');
INSERT INTO public.quiz_quizsession VALUES (52, 'expired', '2025-03-03 21:54:56.263045+06', '2025-03-03 22:01:56.263045+06', NULL, 1, 10, '2025-03-03 21:54:56.219888+06');
INSERT INTO public.quiz_quizsession VALUES (38, 'expired', '2025-02-24 21:07:11.683276+06', '2025-02-24 21:10:11.683276+06', NULL, 1, 10, '2025-02-24 21:07:11.642571+06');
INSERT INTO public.quiz_quizsession VALUES (39, 'expired', '2025-02-24 22:21:40.362366+06', '2025-02-24 22:28:40.362366+06', NULL, 1, 10, '2025-02-24 22:21:40.320588+06');
INSERT INTO public.quiz_quizsession VALUES (40, 'expired', '2025-02-24 22:42:42.08793+06', '2025-02-24 22:49:42.08793+06', NULL, 1, 10, '2025-02-24 22:42:41.774804+06');
INSERT INTO public.quiz_quizsession VALUES (53, 'expired', '2025-03-03 22:15:56.557367+06', '2025-03-03 22:35:56.557367+06', NULL, 1, 10, '2025-03-03 22:15:56.509642+06');
INSERT INTO public.quiz_quizsession VALUES (41, 'expired', '2025-02-25 20:47:16.650216+06', '2025-02-25 20:54:16.650216+06', NULL, 1, 10, '2025-02-25 20:47:16.580262+06');
INSERT INTO public.quiz_quizsession VALUES (42, 'expired', '2025-02-25 22:17:57.689605+06', '2025-02-25 22:24:57.689605+06', NULL, 1, 10, '2025-02-25 22:17:57.646137+06');
INSERT INTO public.quiz_quizsession VALUES (71, 'in_progress', '2025-04-14 01:40:09.095013+06', '2025-04-14 02:30:09.095013+06', NULL, 1, 10, '2025-04-14 01:40:09.05333+06');
INSERT INTO public.quiz_quizsession VALUES (43, 'expired', '2025-02-25 22:26:15.236958+06', '2025-02-25 22:33:15.236958+06', NULL, 1, 10, '2025-02-25 22:26:15.194629+06');
INSERT INTO public.quiz_quizsession VALUES (54, 'expired', '2025-03-03 22:44:07.509416+06', '2025-03-03 23:04:07.509416+06', NULL, 1, 10, '2025-03-03 22:44:07.437328+06');
INSERT INTO public.quiz_quizsession VALUES (44, 'expired', '2025-02-25 22:37:18.716092+06', '2025-02-25 22:44:18.716092+06', NULL, 1, 10, '2025-02-25 22:37:18.673195+06');
INSERT INTO public.quiz_quizsession VALUES (45, 'completed', '2025-02-25 23:34:02.027699+06', '2025-02-25 23:41:02.027699+06', NULL, 1, 10, '2025-02-25 23:34:01.984854+06');
INSERT INTO public.quiz_quizsession VALUES (46, 'expired', '2025-02-26 19:22:40.822509+06', '2025-02-26 19:29:40.822509+06', NULL, 1, 10, '2025-02-26 19:22:40.75143+06');
INSERT INTO public.quiz_quizsession VALUES (55, 'expired', '2025-03-03 23:34:16.031689+06', '2025-03-03 23:54:16.031689+06', NULL, 1, 10, '2025-03-03 23:34:15.976973+06');
INSERT INTO public.quiz_quizsession VALUES (47, 'expired', '2025-02-26 23:17:55.533163+06', '2025-02-26 23:24:55.533163+06', NULL, 1, 10, '2025-02-26 23:17:55.491858+06');
INSERT INTO public.quiz_quizsession VALUES (48, 'expired', '2025-02-26 23:25:50.462112+06', '2025-02-26 23:32:50.462112+06', NULL, 1, 10, '2025-02-26 23:25:50.421507+06');
INSERT INTO public.quiz_quizsession VALUES (56, 'completed', '2025-03-04 00:00:37.222797+06', '2025-03-04 00:50:37.222797+06', NULL, 1, 10, '2025-03-04 00:00:37.179142+06');
INSERT INTO public.quiz_quizsession VALUES (58, 'in_progress', '2025-03-17 17:48:45.091995+06', '2025-03-17 18:38:45.091995+06', NULL, 2, 10, '2025-03-17 17:48:45.054649+06');
INSERT INTO public.quiz_quizsession VALUES (57, 'completed', '2025-03-17 17:25:09.235736+06', '2025-03-17 18:15:09.235736+06', NULL, 1, 10, '2025-03-17 17:25:09.159496+06');
INSERT INTO public.quiz_quizsession VALUES (59, 'expired', '2025-03-17 17:53:51.522158+06', '2025-03-17 18:43:51.522158+06', NULL, 1, 10, '2025-03-17 17:53:51.482148+06');
INSERT INTO public.quiz_quizsession VALUES (60, 'expired', '2025-03-17 23:07:15.067719+06', '2025-03-17 23:57:15.067719+06', NULL, 1, 10, '2025-03-17 23:07:15.020703+06');
INSERT INTO public.quiz_quizsession VALUES (61, 'expired', '2025-03-22 18:51:37.90514+06', '2025-03-22 19:41:37.90514+06', NULL, 1, 10, '2025-03-22 18:51:37.820883+06');
INSERT INTO public.quiz_quizsession VALUES (62, 'expired', '2025-04-08 22:10:49.2386+06', '2025-04-08 23:00:49.2386+06', NULL, 1, 10, '2025-04-08 22:10:49.161579+06');
INSERT INTO public.quiz_quizsession VALUES (63, 'expired', '2025-04-11 14:03:39.407754+06', '2025-04-11 14:53:39.407754+06', NULL, 1, 10, '2025-04-11 14:03:39.301913+06');
INSERT INTO public.quiz_quizsession VALUES (64, 'expired', '2025-04-11 23:29:14.495327+06', '2025-04-12 00:19:14.495327+06', NULL, 1, 10, '2025-04-11 23:29:14.40874+06');
INSERT INTO public.quiz_quizsession VALUES (65, 'completed', '2025-04-12 21:49:15.123759+06', '2025-04-12 22:39:15.123759+06', NULL, 1, 10, '2025-04-12 21:49:15.025734+06');
INSERT INTO public.quiz_quizsession VALUES (66, 'completed', '2025-04-13 21:59:38.845718+06', '2025-04-13 22:49:38.845718+06', NULL, 1, 10, '2025-04-13 21:59:38.738276+06');
INSERT INTO public.quiz_quizsession VALUES (67, 'expired', '2025-04-13 22:00:20.064696+06', '2025-04-13 22:50:20.064696+06', NULL, 1, 10, '2025-04-13 22:00:20.020013+06');
INSERT INTO public.quiz_quizsession VALUES (68, 'expired', '2025-04-13 23:24:26.286587+06', '2025-04-14 00:14:26.286587+06', NULL, 1, 10, '2025-04-13 23:24:26.244963+06');
INSERT INTO public.quiz_quizsession VALUES (69, 'completed', '2025-04-14 00:25:18.849995+06', '2025-04-14 01:15:18.849995+06', NULL, 1, 10, '2025-04-14 00:25:18.805974+06');


--
-- TOC entry 3612 (class 0 OID 50788)
-- Dependencies: 245
-- Data for Name: quiz_quizsessionquestion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_quizsessionquestion VALUES (1, 0, 10, 28);
INSERT INTO public.quiz_quizsessionquestion VALUES (2, 1, 12, 28);
INSERT INTO public.quiz_quizsessionquestion VALUES (3, 2, 11, 28);
INSERT INTO public.quiz_quizsessionquestion VALUES (4, 3, 2, 28);
INSERT INTO public.quiz_quizsessionquestion VALUES (5, 0, 1, 29);
INSERT INTO public.quiz_quizsessionquestion VALUES (6, 1, 6, 29);
INSERT INTO public.quiz_quizsessionquestion VALUES (7, 2, 4, 29);
INSERT INTO public.quiz_quizsessionquestion VALUES (8, 3, 5, 29);
INSERT INTO public.quiz_quizsessionquestion VALUES (9, 4, 3, 29);
INSERT INTO public.quiz_quizsessionquestion VALUES (10, 0, 4, 30);
INSERT INTO public.quiz_quizsessionquestion VALUES (11, 1, 6, 30);
INSERT INTO public.quiz_quizsessionquestion VALUES (12, 2, 3, 30);
INSERT INTO public.quiz_quizsessionquestion VALUES (13, 3, 5, 30);
INSERT INTO public.quiz_quizsessionquestion VALUES (14, 4, 1, 30);
INSERT INTO public.quiz_quizsessionquestion VALUES (15, 0, 1, 31);
INSERT INTO public.quiz_quizsessionquestion VALUES (16, 1, 6, 31);
INSERT INTO public.quiz_quizsessionquestion VALUES (17, 2, 3, 31);
INSERT INTO public.quiz_quizsessionquestion VALUES (18, 3, 5, 31);
INSERT INTO public.quiz_quizsessionquestion VALUES (19, 4, 4, 31);
INSERT INTO public.quiz_quizsessionquestion VALUES (20, 0, 3, 32);
INSERT INTO public.quiz_quizsessionquestion VALUES (21, 1, 1, 32);
INSERT INTO public.quiz_quizsessionquestion VALUES (22, 2, 5, 32);
INSERT INTO public.quiz_quizsessionquestion VALUES (23, 3, 4, 32);
INSERT INTO public.quiz_quizsessionquestion VALUES (24, 4, 6, 32);
INSERT INTO public.quiz_quizsessionquestion VALUES (25, 0, 4, 33);
INSERT INTO public.quiz_quizsessionquestion VALUES (26, 1, 6, 33);
INSERT INTO public.quiz_quizsessionquestion VALUES (27, 2, 1, 33);
INSERT INTO public.quiz_quizsessionquestion VALUES (28, 3, 5, 33);
INSERT INTO public.quiz_quizsessionquestion VALUES (29, 4, 3, 33);
INSERT INTO public.quiz_quizsessionquestion VALUES (30, 0, 3, 34);
INSERT INTO public.quiz_quizsessionquestion VALUES (31, 1, 6, 34);
INSERT INTO public.quiz_quizsessionquestion VALUES (32, 2, 5, 34);
INSERT INTO public.quiz_quizsessionquestion VALUES (33, 3, 4, 34);
INSERT INTO public.quiz_quizsessionquestion VALUES (34, 4, 1, 34);
INSERT INTO public.quiz_quizsessionquestion VALUES (35, 0, 1, 35);
INSERT INTO public.quiz_quizsessionquestion VALUES (36, 1, 3, 35);
INSERT INTO public.quiz_quizsessionquestion VALUES (37, 2, 4, 35);
INSERT INTO public.quiz_quizsessionquestion VALUES (38, 3, 5, 35);
INSERT INTO public.quiz_quizsessionquestion VALUES (39, 4, 6, 35);
INSERT INTO public.quiz_quizsessionquestion VALUES (40, 0, 6, 36);
INSERT INTO public.quiz_quizsessionquestion VALUES (41, 1, 3, 36);
INSERT INTO public.quiz_quizsessionquestion VALUES (42, 2, 1, 36);
INSERT INTO public.quiz_quizsessionquestion VALUES (43, 3, 5, 36);
INSERT INTO public.quiz_quizsessionquestion VALUES (44, 4, 4, 36);
INSERT INTO public.quiz_quizsessionquestion VALUES (45, 0, 3, 37);
INSERT INTO public.quiz_quizsessionquestion VALUES (46, 1, 4, 37);
INSERT INTO public.quiz_quizsessionquestion VALUES (47, 2, 6, 37);
INSERT INTO public.quiz_quizsessionquestion VALUES (48, 3, 1, 37);
INSERT INTO public.quiz_quizsessionquestion VALUES (49, 4, 5, 37);
INSERT INTO public.quiz_quizsessionquestion VALUES (50, 0, 1, 38);
INSERT INTO public.quiz_quizsessionquestion VALUES (51, 1, 6, 38);
INSERT INTO public.quiz_quizsessionquestion VALUES (52, 2, 4, 38);
INSERT INTO public.quiz_quizsessionquestion VALUES (53, 3, 5, 38);
INSERT INTO public.quiz_quizsessionquestion VALUES (54, 4, 3, 38);
INSERT INTO public.quiz_quizsessionquestion VALUES (55, 0, 3, 39);
INSERT INTO public.quiz_quizsessionquestion VALUES (56, 1, 6, 39);
INSERT INTO public.quiz_quizsessionquestion VALUES (57, 2, 1, 39);
INSERT INTO public.quiz_quizsessionquestion VALUES (58, 3, 5, 39);
INSERT INTO public.quiz_quizsessionquestion VALUES (59, 4, 4, 39);
INSERT INTO public.quiz_quizsessionquestion VALUES (60, 0, 3, 40);
INSERT INTO public.quiz_quizsessionquestion VALUES (61, 1, 5, 40);
INSERT INTO public.quiz_quizsessionquestion VALUES (62, 2, 6, 40);
INSERT INTO public.quiz_quizsessionquestion VALUES (63, 3, 1, 40);
INSERT INTO public.quiz_quizsessionquestion VALUES (64, 4, 4, 40);
INSERT INTO public.quiz_quizsessionquestion VALUES (65, 0, 1, 41);
INSERT INTO public.quiz_quizsessionquestion VALUES (66, 1, 3, 41);
INSERT INTO public.quiz_quizsessionquestion VALUES (67, 2, 4, 41);
INSERT INTO public.quiz_quizsessionquestion VALUES (68, 3, 5, 41);
INSERT INTO public.quiz_quizsessionquestion VALUES (69, 4, 6, 41);
INSERT INTO public.quiz_quizsessionquestion VALUES (70, 0, 3, 42);
INSERT INTO public.quiz_quizsessionquestion VALUES (71, 1, 5, 42);
INSERT INTO public.quiz_quizsessionquestion VALUES (72, 2, 4, 42);
INSERT INTO public.quiz_quizsessionquestion VALUES (73, 3, 6, 42);
INSERT INTO public.quiz_quizsessionquestion VALUES (74, 4, 1, 42);
INSERT INTO public.quiz_quizsessionquestion VALUES (75, 0, 5, 43);
INSERT INTO public.quiz_quizsessionquestion VALUES (76, 1, 6, 43);
INSERT INTO public.quiz_quizsessionquestion VALUES (77, 2, 4, 43);
INSERT INTO public.quiz_quizsessionquestion VALUES (78, 3, 3, 43);
INSERT INTO public.quiz_quizsessionquestion VALUES (79, 4, 1, 43);
INSERT INTO public.quiz_quizsessionquestion VALUES (80, 0, 4, 44);
INSERT INTO public.quiz_quizsessionquestion VALUES (81, 1, 5, 44);
INSERT INTO public.quiz_quizsessionquestion VALUES (82, 2, 6, 44);
INSERT INTO public.quiz_quizsessionquestion VALUES (83, 3, 3, 44);
INSERT INTO public.quiz_quizsessionquestion VALUES (84, 4, 1, 44);
INSERT INTO public.quiz_quizsessionquestion VALUES (85, 0, 4, 45);
INSERT INTO public.quiz_quizsessionquestion VALUES (86, 1, 5, 45);
INSERT INTO public.quiz_quizsessionquestion VALUES (87, 2, 6, 45);
INSERT INTO public.quiz_quizsessionquestion VALUES (88, 3, 1, 45);
INSERT INTO public.quiz_quizsessionquestion VALUES (89, 4, 3, 45);
INSERT INTO public.quiz_quizsessionquestion VALUES (90, 0, 5, 46);
INSERT INTO public.quiz_quizsessionquestion VALUES (91, 1, 6, 46);
INSERT INTO public.quiz_quizsessionquestion VALUES (92, 2, 1, 46);
INSERT INTO public.quiz_quizsessionquestion VALUES (93, 3, 3, 46);
INSERT INTO public.quiz_quizsessionquestion VALUES (94, 4, 4, 46);
INSERT INTO public.quiz_quizsessionquestion VALUES (95, 0, 1, 47);
INSERT INTO public.quiz_quizsessionquestion VALUES (96, 1, 5, 47);
INSERT INTO public.quiz_quizsessionquestion VALUES (97, 2, 6, 47);
INSERT INTO public.quiz_quizsessionquestion VALUES (98, 3, 3, 47);
INSERT INTO public.quiz_quizsessionquestion VALUES (99, 4, 4, 47);
INSERT INTO public.quiz_quizsessionquestion VALUES (100, 0, 1, 48);
INSERT INTO public.quiz_quizsessionquestion VALUES (101, 1, 3, 48);
INSERT INTO public.quiz_quizsessionquestion VALUES (102, 2, 4, 48);
INSERT INTO public.quiz_quizsessionquestion VALUES (103, 3, 6, 48);
INSERT INTO public.quiz_quizsessionquestion VALUES (104, 4, 5, 48);
INSERT INTO public.quiz_quizsessionquestion VALUES (105, 0, 1, 49);
INSERT INTO public.quiz_quizsessionquestion VALUES (106, 1, 3, 49);
INSERT INTO public.quiz_quizsessionquestion VALUES (107, 2, 4, 49);
INSERT INTO public.quiz_quizsessionquestion VALUES (108, 3, 5, 49);
INSERT INTO public.quiz_quizsessionquestion VALUES (109, 4, 6, 49);
INSERT INTO public.quiz_quizsessionquestion VALUES (110, 0, 6, 50);
INSERT INTO public.quiz_quizsessionquestion VALUES (111, 1, 3, 50);
INSERT INTO public.quiz_quizsessionquestion VALUES (112, 2, 4, 50);
INSERT INTO public.quiz_quizsessionquestion VALUES (113, 3, 5, 50);
INSERT INTO public.quiz_quizsessionquestion VALUES (114, 4, 1, 50);
INSERT INTO public.quiz_quizsessionquestion VALUES (115, 0, 5, 51);
INSERT INTO public.quiz_quizsessionquestion VALUES (116, 1, 1, 51);
INSERT INTO public.quiz_quizsessionquestion VALUES (117, 2, 6, 51);
INSERT INTO public.quiz_quizsessionquestion VALUES (118, 3, 3, 51);
INSERT INTO public.quiz_quizsessionquestion VALUES (119, 4, 4, 51);
INSERT INTO public.quiz_quizsessionquestion VALUES (120, 0, 3, 52);
INSERT INTO public.quiz_quizsessionquestion VALUES (121, 1, 5, 52);
INSERT INTO public.quiz_quizsessionquestion VALUES (122, 2, 4, 52);
INSERT INTO public.quiz_quizsessionquestion VALUES (123, 3, 6, 52);
INSERT INTO public.quiz_quizsessionquestion VALUES (124, 4, 1, 52);
INSERT INTO public.quiz_quizsessionquestion VALUES (125, 0, 1, 53);
INSERT INTO public.quiz_quizsessionquestion VALUES (126, 1, 6, 53);
INSERT INTO public.quiz_quizsessionquestion VALUES (127, 2, 5, 53);
INSERT INTO public.quiz_quizsessionquestion VALUES (128, 3, 4, 53);
INSERT INTO public.quiz_quizsessionquestion VALUES (129, 4, 3, 53);
INSERT INTO public.quiz_quizsessionquestion VALUES (130, 0, 3, 54);
INSERT INTO public.quiz_quizsessionquestion VALUES (131, 1, 6, 54);
INSERT INTO public.quiz_quizsessionquestion VALUES (132, 2, 5, 54);
INSERT INTO public.quiz_quizsessionquestion VALUES (133, 3, 4, 54);
INSERT INTO public.quiz_quizsessionquestion VALUES (134, 4, 1, 54);
INSERT INTO public.quiz_quizsessionquestion VALUES (135, 0, 5, 55);
INSERT INTO public.quiz_quizsessionquestion VALUES (136, 1, 4, 55);
INSERT INTO public.quiz_quizsessionquestion VALUES (137, 2, 1, 55);
INSERT INTO public.quiz_quizsessionquestion VALUES (138, 3, 3, 55);
INSERT INTO public.quiz_quizsessionquestion VALUES (139, 4, 6, 55);
INSERT INTO public.quiz_quizsessionquestion VALUES (140, 0, 4, 56);
INSERT INTO public.quiz_quizsessionquestion VALUES (141, 1, 3, 56);
INSERT INTO public.quiz_quizsessionquestion VALUES (142, 2, 5, 56);
INSERT INTO public.quiz_quizsessionquestion VALUES (143, 3, 1, 56);
INSERT INTO public.quiz_quizsessionquestion VALUES (144, 4, 6, 56);
INSERT INTO public.quiz_quizsessionquestion VALUES (145, 0, 1, 57);
INSERT INTO public.quiz_quizsessionquestion VALUES (146, 1, 5, 57);
INSERT INTO public.quiz_quizsessionquestion VALUES (147, 2, 6, 57);
INSERT INTO public.quiz_quizsessionquestion VALUES (148, 3, 3, 57);
INSERT INTO public.quiz_quizsessionquestion VALUES (149, 4, 4, 57);
INSERT INTO public.quiz_quizsessionquestion VALUES (150, 0, 12, 58);
INSERT INTO public.quiz_quizsessionquestion VALUES (151, 1, 2, 58);
INSERT INTO public.quiz_quizsessionquestion VALUES (152, 2, 10, 58);
INSERT INTO public.quiz_quizsessionquestion VALUES (153, 3, 11, 58);
INSERT INTO public.quiz_quizsessionquestion VALUES (154, 0, 1, 59);
INSERT INTO public.quiz_quizsessionquestion VALUES (155, 1, 6, 59);
INSERT INTO public.quiz_quizsessionquestion VALUES (156, 2, 4, 59);
INSERT INTO public.quiz_quizsessionquestion VALUES (157, 3, 5, 59);
INSERT INTO public.quiz_quizsessionquestion VALUES (158, 4, 3, 59);
INSERT INTO public.quiz_quizsessionquestion VALUES (159, 0, 6, 60);
INSERT INTO public.quiz_quizsessionquestion VALUES (160, 1, 3, 60);
INSERT INTO public.quiz_quizsessionquestion VALUES (161, 2, 4, 60);
INSERT INTO public.quiz_quizsessionquestion VALUES (162, 3, 5, 60);
INSERT INTO public.quiz_quizsessionquestion VALUES (163, 4, 1, 60);
INSERT INTO public.quiz_quizsessionquestion VALUES (164, 0, 1, 61);
INSERT INTO public.quiz_quizsessionquestion VALUES (165, 1, 3, 61);
INSERT INTO public.quiz_quizsessionquestion VALUES (166, 2, 4, 61);
INSERT INTO public.quiz_quizsessionquestion VALUES (167, 3, 5, 61);
INSERT INTO public.quiz_quizsessionquestion VALUES (168, 4, 6, 61);
INSERT INTO public.quiz_quizsessionquestion VALUES (169, 0, 1, 62);
INSERT INTO public.quiz_quizsessionquestion VALUES (170, 1, 4, 62);
INSERT INTO public.quiz_quizsessionquestion VALUES (171, 2, 6, 62);
INSERT INTO public.quiz_quizsessionquestion VALUES (172, 3, 5, 62);
INSERT INTO public.quiz_quizsessionquestion VALUES (173, 4, 3, 62);
INSERT INTO public.quiz_quizsessionquestion VALUES (174, 0, 5, 63);
INSERT INTO public.quiz_quizsessionquestion VALUES (175, 1, 3, 63);
INSERT INTO public.quiz_quizsessionquestion VALUES (176, 2, 4, 63);
INSERT INTO public.quiz_quizsessionquestion VALUES (177, 3, 1, 63);
INSERT INTO public.quiz_quizsessionquestion VALUES (178, 4, 6, 63);
INSERT INTO public.quiz_quizsessionquestion VALUES (179, 0, 1, 64);
INSERT INTO public.quiz_quizsessionquestion VALUES (180, 1, 3, 64);
INSERT INTO public.quiz_quizsessionquestion VALUES (181, 2, 4, 64);
INSERT INTO public.quiz_quizsessionquestion VALUES (182, 3, 6, 64);
INSERT INTO public.quiz_quizsessionquestion VALUES (183, 4, 5, 64);
INSERT INTO public.quiz_quizsessionquestion VALUES (184, 0, 1, 65);
INSERT INTO public.quiz_quizsessionquestion VALUES (185, 1, 5, 65);
INSERT INTO public.quiz_quizsessionquestion VALUES (186, 2, 3, 65);
INSERT INTO public.quiz_quizsessionquestion VALUES (187, 3, 4, 65);
INSERT INTO public.quiz_quizsessionquestion VALUES (188, 4, 6, 65);
INSERT INTO public.quiz_quizsessionquestion VALUES (189, 0, 4, 66);
INSERT INTO public.quiz_quizsessionquestion VALUES (190, 1, 3, 66);
INSERT INTO public.quiz_quizsessionquestion VALUES (191, 2, 6, 66);
INSERT INTO public.quiz_quizsessionquestion VALUES (192, 3, 5, 66);
INSERT INTO public.quiz_quizsessionquestion VALUES (193, 4, 1, 66);
INSERT INTO public.quiz_quizsessionquestion VALUES (194, 0, 3, 67);
INSERT INTO public.quiz_quizsessionquestion VALUES (195, 1, 1, 67);
INSERT INTO public.quiz_quizsessionquestion VALUES (196, 2, 4, 67);
INSERT INTO public.quiz_quizsessionquestion VALUES (197, 3, 5, 67);
INSERT INTO public.quiz_quizsessionquestion VALUES (198, 4, 6, 67);
INSERT INTO public.quiz_quizsessionquestion VALUES (199, 0, 3, 68);
INSERT INTO public.quiz_quizsessionquestion VALUES (200, 1, 4, 68);
INSERT INTO public.quiz_quizsessionquestion VALUES (201, 2, 5, 68);
INSERT INTO public.quiz_quizsessionquestion VALUES (202, 3, 6, 68);
INSERT INTO public.quiz_quizsessionquestion VALUES (203, 4, 1, 68);
INSERT INTO public.quiz_quizsessionquestion VALUES (204, 0, 3, 69);
INSERT INTO public.quiz_quizsessionquestion VALUES (205, 1, 5, 69);
INSERT INTO public.quiz_quizsessionquestion VALUES (206, 2, 1, 69);
INSERT INTO public.quiz_quizsessionquestion VALUES (207, 3, 6, 69);
INSERT INTO public.quiz_quizsessionquestion VALUES (208, 4, 4, 69);
INSERT INTO public.quiz_quizsessionquestion VALUES (209, 0, 3, 70);
INSERT INTO public.quiz_quizsessionquestion VALUES (210, 1, 5, 70);
INSERT INTO public.quiz_quizsessionquestion VALUES (211, 2, 4, 70);
INSERT INTO public.quiz_quizsessionquestion VALUES (212, 3, 1, 70);
INSERT INTO public.quiz_quizsessionquestion VALUES (213, 4, 6, 70);
INSERT INTO public.quiz_quizsessionquestion VALUES (214, 0, 4, 71);
INSERT INTO public.quiz_quizsessionquestion VALUES (215, 1, 6, 71);
INSERT INTO public.quiz_quizsessionquestion VALUES (216, 2, 5, 71);
INSERT INTO public.quiz_quizsessionquestion VALUES (217, 3, 1, 71);
INSERT INTO public.quiz_quizsessionquestion VALUES (218, 4, 3, 71);


--
-- TOC entry 3603 (class 0 OID 42355)
-- Dependencies: 236
-- Data for Name: quiz_usersolutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_usersolutions VALUES (9, false, '2024-11-19 20:25:47.796034+06', 1, 3, 5, 'practice', NULL);
INSERT INTO public.quiz_usersolutions VALUES (10, true, '2024-11-19 20:31:38.204699+06', 3, 9, 5, 'practice', NULL);
INSERT INTO public.quiz_usersolutions VALUES (11, false, '2025-01-01 20:38:51.633627+06', 1, 3, 23, 'practice', NULL);
INSERT INTO public.quiz_usersolutions VALUES (12, false, '2025-02-23 19:15:28.309964+06', 1, 3, 10, 'quiz', 1);
INSERT INTO public.quiz_usersolutions VALUES (13, false, '2025-02-23 19:16:53.356117+06', 1, 3, 10, 'quiz', 1);
INSERT INTO public.quiz_usersolutions VALUES (14, false, '2025-02-23 19:19:53.696512+06', 1, 4, 10, 'quiz', 1);
INSERT INTO public.quiz_usersolutions VALUES (15, true, '2025-02-23 19:20:21.678952+06', 1, 2, 10, 'quiz', 1);
INSERT INTO public.quiz_usersolutions VALUES (16, true, '2025-02-23 19:33:01.309514+06', 1, 2, 10, 'quiz', 1);
INSERT INTO public.quiz_usersolutions VALUES (17, true, '2025-02-23 19:39:07.129644+06', 1, 2, 10, 'quiz', 1);
INSERT INTO public.quiz_usersolutions VALUES (18, true, '2025-02-23 19:52:31.055853+06', 1, 2, 10, 'quiz', 29);
INSERT INTO public.quiz_usersolutions VALUES (19, true, '2025-02-23 23:34:59.556284+06', 1, 2, 10, 'quiz', 1);
INSERT INTO public.quiz_usersolutions VALUES (20, true, '2025-02-23 23:38:58.450703+06', 1, 2, 10, 'quiz', 35);
INSERT INTO public.quiz_usersolutions VALUES (21, false, '2025-02-23 23:41:37.767918+06', 3, 10, 10, 'quiz', 35);
INSERT INTO public.quiz_usersolutions VALUES (22, false, '2025-02-23 23:42:03.534846+06', 2, 7, 10, 'quiz', 35);
INSERT INTO public.quiz_usersolutions VALUES (23, false, '2025-02-23 23:42:14.990783+06', 2, 7, 10, 'quiz', 35);
INSERT INTO public.quiz_usersolutions VALUES (24, false, '2025-02-24 19:49:29.0276+06', 2, 7, 10, 'quiz', 35);
INSERT INTO public.quiz_usersolutions VALUES (25, false, '2025-02-24 20:21:04.784488+06', 2, 7, 10, 'quiz', 35);
INSERT INTO public.quiz_usersolutions VALUES (26, false, '2025-02-24 20:28:43.330549+06', 2, 7, 10, 'quiz', 35);
INSERT INTO public.quiz_usersolutions VALUES (27, false, '2025-02-24 20:29:02.73432+06', 2, 7, 10, 'quiz', 35);
INSERT INTO public.quiz_usersolutions VALUES (28, false, '2025-02-24 20:29:29.321242+06', 2, 7, 10, 'quiz', 36);
INSERT INTO public.quiz_usersolutions VALUES (29, false, '2025-02-24 20:29:41.139422+06', 2, 7, 10, 'quiz', 36);
INSERT INTO public.quiz_usersolutions VALUES (30, false, '2025-02-24 20:30:15.939619+06', 1, 3, 10, 'quiz', 36);
INSERT INTO public.quiz_usersolutions VALUES (31, false, '2025-02-24 20:30:28.930758+06', 1, 3, 10, 'quiz', 36);
INSERT INTO public.quiz_usersolutions VALUES (32, false, '2025-02-24 21:07:25.895859+06', 1, 3, 10, 'quiz', 38);
INSERT INTO public.quiz_usersolutions VALUES (33, false, '2025-02-24 22:44:26.474802+06', 3, 12, 10, 'quiz', 40);
INSERT INTO public.quiz_usersolutions VALUES (34, false, '2025-02-24 22:46:03.531979+06', 5, 30, 10, 'quiz', 40);
INSERT INTO public.quiz_usersolutions VALUES (35, true, '2025-02-24 22:46:24.327891+06', 1, 2, 10, 'quiz', 40);
INSERT INTO public.quiz_usersolutions VALUES (36, false, '2025-02-24 22:47:00.216699+06', 4, 28, 10, 'quiz', 40);
INSERT INTO public.quiz_usersolutions VALUES (37, false, '2025-02-24 22:47:31.953352+06', 6, 36, 10, 'quiz', 40);
INSERT INTO public.quiz_usersolutions VALUES (38, false, '2025-02-25 20:47:34.543443+06', 6, 36, 10, 'quiz', 41);
INSERT INTO public.quiz_usersolutions VALUES (39, false, '2025-02-25 20:48:23.213192+06', 6, 36, 10, 'quiz', 41);
INSERT INTO public.quiz_usersolutions VALUES (40, false, '2025-02-25 20:49:40.157886+06', 6, 36, 10, 'quiz', 41);
INSERT INTO public.quiz_usersolutions VALUES (41, false, '2025-02-25 20:49:46.504712+06', 6, 36, 10, 'quiz', 41);
INSERT INTO public.quiz_usersolutions VALUES (42, false, '2025-02-25 22:18:02.188359+06', 6, 36, 10, 'quiz', 42);
INSERT INTO public.quiz_usersolutions VALUES (43, false, '2025-02-25 22:18:11.125901+06', 6, 36, 10, 'quiz', 42);
INSERT INTO public.quiz_usersolutions VALUES (44, false, '2025-02-25 22:26:23.218644+06', 6, 36, 10, 'quiz', 43);
INSERT INTO public.quiz_usersolutions VALUES (45, false, '2025-02-25 22:26:30.326131+06', 6, 36, 10, 'quiz', 43);
INSERT INTO public.quiz_usersolutions VALUES (46, false, '2025-02-25 22:32:19.501497+06', 6, 36, 10, 'quiz', 43);
INSERT INTO public.quiz_usersolutions VALUES (47, false, '2025-02-25 22:32:55.774773+06', 6, 36, 10, 'quiz', 43);
INSERT INTO public.quiz_usersolutions VALUES (48, false, '2025-02-25 22:33:00.246494+06', 6, 36, 10, 'quiz', 43);
INSERT INTO public.quiz_usersolutions VALUES (49, false, '2025-02-25 22:33:10.699038+06', 6, 36, 10, 'quiz', 43);
INSERT INTO public.quiz_usersolutions VALUES (50, false, '2025-02-25 22:37:25.312803+06', 6, 36, 10, 'quiz', 44);
INSERT INTO public.quiz_usersolutions VALUES (51, false, '2025-02-25 22:37:58.578395+06', 6, 36, 10, 'quiz', 44);
INSERT INTO public.quiz_usersolutions VALUES (52, false, '2025-02-25 22:38:01.714168+06', 6, 36, 10, 'quiz', 44);
INSERT INTO public.quiz_usersolutions VALUES (53, false, '2025-02-25 22:38:04.039117+06', 6, 36, 10, 'quiz', 44);
INSERT INTO public.quiz_usersolutions VALUES (54, false, '2025-02-25 22:38:14.841703+06', 6, 36, 10, 'quiz', 44);
INSERT INTO public.quiz_usersolutions VALUES (55, false, '2025-02-25 22:38:21.221684+06', 6, 36, 10, 'quiz', 44);
INSERT INTO public.quiz_usersolutions VALUES (56, false, '2025-02-25 22:38:42.24193+06', 6, 36, 10, 'quiz', 44);
INSERT INTO public.quiz_usersolutions VALUES (57, false, '2025-02-25 23:34:09.078845+06', 6, 36, 10, 'quiz', 45);
INSERT INTO public.quiz_usersolutions VALUES (58, false, '2025-02-25 23:34:15.65499+06', 6, 36, 10, 'quiz', 45);
INSERT INTO public.quiz_usersolutions VALUES (59, false, '2025-02-25 23:34:17.591001+06', 6, 36, 10, 'quiz', 45);
INSERT INTO public.quiz_usersolutions VALUES (60, false, '2025-02-25 23:34:18.972166+06', 6, 36, 10, 'quiz', 45);
INSERT INTO public.quiz_usersolutions VALUES (61, false, '2025-02-25 23:34:43.878077+06', 6, 36, 10, 'quiz', 45);
INSERT INTO public.quiz_usersolutions VALUES (62, false, '2025-02-26 19:27:46.908691+06', 1, 4, 10, 'quiz', 46);
INSERT INTO public.quiz_usersolutions VALUES (63, false, '2025-02-26 19:28:06.828762+06', 1, 4, 10, 'quiz', 46);
INSERT INTO public.quiz_usersolutions VALUES (64, true, '2025-02-26 19:29:17.150165+06', 1, 2, 10, 'quiz', 46);
INSERT INTO public.quiz_usersolutions VALUES (65, true, '2025-03-03 17:10:54.637653+06', 3, 9, 10, 'quiz', 49);
INSERT INTO public.quiz_usersolutions VALUES (66, true, '2025-03-03 17:11:05.03465+06', 3, 9, 10, 'quiz', 49);
INSERT INTO public.quiz_usersolutions VALUES (67, false, '2025-03-04 00:00:58.169279+06', 5, 18, 10, 'quiz', 56);
INSERT INTO public.quiz_usersolutions VALUES (68, false, '2025-03-04 00:00:58.182742+06', 4, 15, 10, 'quiz', 56);
INSERT INTO public.quiz_usersolutions VALUES (69, false, '2025-03-04 00:00:58.195231+06', 1, 1, 10, 'quiz', 56);
INSERT INTO public.quiz_usersolutions VALUES (70, true, '2025-03-04 00:00:58.208138+06', 3, 9, 10, 'quiz', 56);
INSERT INTO public.quiz_usersolutions VALUES (71, true, '2025-03-04 00:00:58.222942+06', 6, 21, 10, 'quiz', 56);
INSERT INTO public.quiz_usersolutions VALUES (72, false, '2025-03-17 17:52:14.614198+06', 5, 18, 10, 'quiz', 57);
INSERT INTO public.quiz_usersolutions VALUES (73, false, '2025-03-17 17:52:14.631796+06', 4, 15, 10, 'quiz', 57);
INSERT INTO public.quiz_usersolutions VALUES (74, false, '2025-03-17 17:52:14.645163+06', 1, 1, 10, 'quiz', 57);
INSERT INTO public.quiz_usersolutions VALUES (75, true, '2025-03-17 17:52:14.658363+06', 3, 9, 10, 'quiz', 57);
INSERT INTO public.quiz_usersolutions VALUES (76, false, '2025-03-17 17:52:14.672223+06', 6, 22, 10, 'quiz', 57);
INSERT INTO public.quiz_usersolutions VALUES (77, true, '2025-03-22 19:15:11.492548+06', 1, 2, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (78, false, '2025-03-22 19:15:11.505088+06', 3, 10, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (79, false, '2025-03-22 19:15:11.516158+06', 4, 15, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (80, true, '2025-03-22 19:15:37.807331+06', 1, 2, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (81, false, '2025-03-22 19:15:37.818626+06', 3, 10, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (82, false, '2025-03-22 19:15:37.830167+06', 4, 15, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (83, true, '2025-03-22 19:20:49.403067+06', 1, 2, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (84, false, '2025-03-22 19:20:49.424235+06', 3, 10, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (85, false, '2025-03-22 19:20:49.435169+06', 4, 15, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (86, true, '2025-03-22 19:21:18.19156+06', 1, 2, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (87, false, '2025-03-22 19:21:18.202677+06', 3, 10, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (88, false, '2025-03-22 19:21:18.212613+06', 4, 15, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (89, true, '2025-03-22 19:24:11.088026+06', 1, 2, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (90, false, '2025-03-22 19:24:11.098875+06', 3, 10, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (91, false, '2025-03-22 19:24:11.110534+06', 4, 15, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (92, true, '2025-03-22 19:39:36.790936+06', 1, 2, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (93, false, '2025-03-22 19:39:36.806369+06', 3, 10, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (94, false, '2025-03-22 19:39:36.816692+06', 4, 15, 10, 'quiz', 61);
INSERT INTO public.quiz_usersolutions VALUES (95, true, '2025-04-08 22:11:06.74398+06', 1, 2, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (96, false, '2025-04-08 22:11:06.76444+06', 3, 10, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (97, false, '2025-04-08 22:11:06.776419+06', 4, 15, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (98, true, '2025-04-08 22:23:24.637801+06', 1, 2, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (99, false, '2025-04-08 22:23:24.651531+06', 3, 10, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (100, false, '2025-04-08 22:23:24.661536+06', 4, 15, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (101, true, '2025-04-08 22:25:42.386423+06', 1, 2, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (102, false, '2025-04-08 22:25:42.398537+06', 3, 10, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (103, false, '2025-04-08 22:25:42.409694+06', 4, 15, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (104, true, '2025-04-08 22:54:41.322443+06', 1, 2, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (105, false, '2025-04-08 22:56:00.929905+06', 3, 10, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (106, false, '2025-04-08 22:56:16.486348+06', 4, 15, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (107, true, '2025-04-08 22:59:04.670273+06', 1, 2, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (108, false, '2025-04-08 22:59:06.874383+06', 3, 10, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (109, false, '2025-04-08 22:59:08.281622+06', 4, 15, 10, 'quiz', 62);
INSERT INTO public.quiz_usersolutions VALUES (110, true, '2025-04-11 14:06:37.512535+06', 1, 2, 10, 'quiz', 63);
INSERT INTO public.quiz_usersolutions VALUES (111, false, '2025-04-11 14:06:58.106685+06', 3, 10, 10, 'quiz', 63);
INSERT INTO public.quiz_usersolutions VALUES (112, false, '2025-04-11 14:07:11.226784+06', 4, 15, 10, 'quiz', 63);
INSERT INTO public.quiz_usersolutions VALUES (113, true, '2025-04-11 14:10:27.432607+06', 1, 2, 10, 'quiz', 63);
INSERT INTO public.quiz_usersolutions VALUES (114, false, '2025-04-11 14:10:27.443134+06', 3, 10, 10, 'quiz', 63);
INSERT INTO public.quiz_usersolutions VALUES (115, false, '2025-04-11 14:10:27.454248+06', 4, 15, 10, 'quiz', 63);
INSERT INTO public.quiz_usersolutions VALUES (116, true, '2025-04-11 23:39:58.668832+06', 1, 2, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (117, false, '2025-04-11 23:39:58.715092+06', 3, 10, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (118, false, '2025-04-11 23:39:58.754552+06', 4, 15, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (119, true, '2025-04-11 23:45:23.739523+06', 1, 2, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (120, false, '2025-04-11 23:45:23.751625+06', 3, 10, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (121, false, '2025-04-11 23:45:23.762805+06', 4, 15, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (122, true, '2025-04-11 23:47:03.99394+06', 1, 2, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (123, false, '2025-04-11 23:47:04.004592+06', 3, 10, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (124, false, '2025-04-11 23:47:04.014879+06', 4, 15, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (125, true, '2025-04-11 23:47:33.133015+06', 1, 2, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (126, false, '2025-04-11 23:47:33.144276+06', 3, 10, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (127, false, '2025-04-11 23:47:33.153759+06', 4, 15, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (128, false, '2025-04-11 23:47:33.173976+06', 5, 19, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (129, false, '2025-04-11 23:47:33.184966+06', 6, 24, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (130, true, '2025-04-11 23:49:43.818537+06', 1, 2, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (131, false, '2025-04-11 23:49:43.830304+06', 3, 10, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (132, false, '2025-04-11 23:49:43.840507+06', 4, 15, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (133, false, '2025-04-11 23:49:43.850733+06', 5, 19, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (134, false, '2025-04-11 23:49:43.862347+06', 6, 24, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (135, true, '2025-04-11 23:50:02.054306+06', 1, 2, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (136, false, '2025-04-11 23:50:02.066262+06', 3, 10, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (137, false, '2025-04-11 23:50:02.07636+06', 4, 15, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (138, false, '2025-04-11 23:50:02.086615+06', 5, 19, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (139, false, '2025-04-11 23:50:02.097958+06', 6, 24, 10, 'quiz', 64);
INSERT INTO public.quiz_usersolutions VALUES (140, true, '2025-04-12 21:49:34.371861+06', 1, 2, 10, 'quiz', 65);
INSERT INTO public.quiz_usersolutions VALUES (141, false, '2025-04-12 21:49:34.389341+06', 3, 10, 10, 'quiz', 65);
INSERT INTO public.quiz_usersolutions VALUES (142, false, '2025-04-12 21:49:34.400285+06', 4, 15, 10, 'quiz', 65);
INSERT INTO public.quiz_usersolutions VALUES (143, false, '2025-04-12 21:49:34.410917+06', 5, 19, 10, 'quiz', 65);
INSERT INTO public.quiz_usersolutions VALUES (144, false, '2025-04-12 21:49:34.453581+06', 6, 24, 10, 'quiz', 65);
INSERT INTO public.quiz_usersolutions VALUES (145, true, '2025-04-13 21:59:59.373394+06', 1, 2, 10, 'quiz', 66);
INSERT INTO public.quiz_usersolutions VALUES (146, false, '2025-04-13 21:59:59.391193+06', 3, 10, 10, 'quiz', 66);
INSERT INTO public.quiz_usersolutions VALUES (147, false, '2025-04-13 21:59:59.401869+06', 4, 15, 10, 'quiz', 66);
INSERT INTO public.quiz_usersolutions VALUES (148, false, '2025-04-13 21:59:59.413298+06', 5, 19, 10, 'quiz', 66);
INSERT INTO public.quiz_usersolutions VALUES (149, false, '2025-04-13 21:59:59.425621+06', 6, 24, 10, 'quiz', 66);
INSERT INTO public.quiz_usersolutions VALUES (150, false, '2025-04-13 22:00:56.322744+06', 3, 10, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (151, false, '2025-04-13 22:00:56.336864+06', 4, 15, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (152, false, '2025-04-13 22:00:56.34996+06', 5, 19, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (153, false, '2025-04-13 22:00:56.362874+06', 6, 24, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (154, true, '2025-04-13 22:02:05.47298+06', 1, 2, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (155, false, '2025-04-13 22:02:05.484083+06', 3, 10, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (156, false, '2025-04-13 22:02:05.496206+06', 4, 15, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (157, false, '2025-04-13 22:02:05.506852+06', 5, 19, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (158, false, '2025-04-13 22:02:05.517756+06', 6, 24, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (159, true, '2025-04-13 22:02:31.449581+06', 1, 2, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (160, false, '2025-04-13 22:02:31.462324+06', 3, 10, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (161, false, '2025-04-13 22:02:31.472309+06', 4, 15, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (162, false, '2025-04-13 22:02:31.483217+06', 5, 19, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (163, false, '2025-04-13 22:02:31.494315+06', 6, 24, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (164, true, '2025-04-13 22:05:06.818292+06', 1, 2, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (165, false, '2025-04-13 22:05:06.830747+06', 3, 10, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (166, false, '2025-04-13 22:05:06.843178+06', 4, 15, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (167, false, '2025-04-13 22:05:06.856231+06', 5, 19, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (168, false, '2025-04-13 22:05:06.868085+06', 6, 24, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (169, false, '2025-04-13 22:46:46.119667+06', 1, 3, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (170, false, '2025-04-13 22:46:46.135727+06', 3, 10, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (171, false, '2025-04-13 22:46:46.148598+06', 4, 15, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (172, false, '2025-04-13 22:46:46.162199+06', 5, 19, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (173, false, '2025-04-13 22:46:46.177072+06', 6, 24, 10, 'quiz', 67);
INSERT INTO public.quiz_usersolutions VALUES (174, false, '2025-04-14 00:30:16.277091+06', 1, 3, 10, 'quiz', 69);
INSERT INTO public.quiz_usersolutions VALUES (175, false, '2025-04-14 00:30:16.293431+06', 3, 10, 10, 'quiz', 69);
INSERT INTO public.quiz_usersolutions VALUES (176, false, '2025-04-14 00:30:16.308495+06', 4, 15, 10, 'quiz', 69);
INSERT INTO public.quiz_usersolutions VALUES (177, false, '2025-04-14 00:30:16.329053+06', 5, 19, 10, 'quiz', 69);
INSERT INTO public.quiz_usersolutions VALUES (178, false, '2025-04-14 00:30:16.347001+06', 6, 24, 10, 'quiz', 69);
INSERT INTO public.quiz_usersolutions VALUES (179, false, '2025-04-14 01:40:22.248257+06', 3, 10, 10, 'quiz', 71);
INSERT INTO public.quiz_usersolutions VALUES (180, false, '2025-04-14 01:40:22.267793+06', 4, 15, 10, 'quiz', 71);
INSERT INTO public.quiz_usersolutions VALUES (181, false, '2025-04-14 01:40:22.281028+06', 5, 19, 10, 'quiz', 71);
INSERT INTO public.quiz_usersolutions VALUES (182, false, '2025-04-14 01:40:22.294114+06', 6, 24, 10, 'quiz', 71);
INSERT INTO public.quiz_usersolutions VALUES (183, false, '2025-04-14 01:41:35.255154+06', 3, 10, 10, 'quiz', 71);
INSERT INTO public.quiz_usersolutions VALUES (184, false, '2025-04-14 01:41:35.268372+06', 4, 15, 10, 'quiz', 71);
INSERT INTO public.quiz_usersolutions VALUES (185, false, '2025-04-14 01:41:35.308974+06', 5, 19, 10, 'quiz', 71);
INSERT INTO public.quiz_usersolutions VALUES (186, false, '2025-04-14 01:41:35.320218+06', 6, 24, 10, 'quiz', 71);
INSERT INTO public.quiz_usersolutions VALUES (187, false, '2025-04-14 01:43:10.642519+06', 1, 3, 10, 'quiz', 71);
INSERT INTO public.quiz_usersolutions VALUES (188, true, '2025-04-14 23:11:08.526542+06', 10, 37, 10, 'practice', NULL);


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 221
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 219
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 215
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 229
-- Name: quiz_choices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_choices_id_seq', 72, true);


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 231
-- Name: quiz_question_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_question_category_id_seq', 10, true);


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 233
-- Name: quiz_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_questions_id_seq', 18, true);


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 240
-- Name: quiz_quiz_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_quiz_categories_id_seq', 5, true);


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 238
-- Name: quiz_quiz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_quiz_id_seq', 2, true);


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 242
-- Name: quiz_quizsession_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_quizsession_id_seq', 71, true);


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 244
-- Name: quiz_quizsessionquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_quizsessionquestion_id_seq', 218, true);


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 217
-- Name: quiz_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_users_id_seq', 24, true);


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 235
-- Name: quiz_usersolutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_usersolutions_id_seq', 188, true);


-- Completed on 2025-04-23 23:53:45 +06

--
-- PostgreSQL database dump complete
--

