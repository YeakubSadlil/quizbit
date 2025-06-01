--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-1.pgdg24.04+1)
-- Dumped by pg_dump version 17.5 (Ubuntu 17.5-1.pgdg24.04+1)

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

ALTER TABLE IF EXISTS ONLY public.quiz_usersolutions DROP CONSTRAINT IF EXISTS quiz_usersolutions_user_id_6856aa3f_fk_quiz_users_id;
ALTER TABLE IF EXISTS ONLY public.quiz_usersolutions DROP CONSTRAINT IF EXISTS quiz_usersolutions_selected_answer_id_f5b9f47c_fk_quiz_choi;
ALTER TABLE IF EXISTS ONLY public.quiz_usersolutions DROP CONSTRAINT IF EXISTS quiz_usersolutions_quiz_session_id_06ebf55e_fk_quiz_quiz;
ALTER TABLE IF EXISTS ONLY public.quiz_usersolutions DROP CONSTRAINT IF EXISTS quiz_usersolutions_question_id_9ed283ac_fk_quiz_questions_id;
ALTER TABLE IF EXISTS ONLY public.quiz_quizsessionquestion DROP CONSTRAINT IF EXISTS quiz_quizsessionques_quiz_session_id_ede2b4f0_fk_quiz_quiz;
ALTER TABLE IF EXISTS ONLY public.quiz_quizsessionquestion DROP CONSTRAINT IF EXISTS quiz_quizsessionques_questions_id_45de61b4_fk_quiz_ques;
ALTER TABLE IF EXISTS ONLY public.quiz_quizsession DROP CONSTRAINT IF EXISTS quiz_quizsession_user_id_189bbd7d_fk_quiz_users_id;
ALTER TABLE IF EXISTS ONLY public.quiz_quizsession DROP CONSTRAINT IF EXISTS quiz_quizsession_quiz_id_id_3252d910_fk_quiz_info_id;
ALTER TABLE IF EXISTS ONLY public.quiz_info_categories DROP CONSTRAINT IF EXISTS quiz_quiz_categories_quiz_id_4c68732f_fk_quiz_quiz_id;
ALTER TABLE IF EXISTS ONLY public.quiz_info_categories DROP CONSTRAINT IF EXISTS quiz_quiz_categories_question_category_id_5f0005e5_fk_quiz_ques;
ALTER TABLE IF EXISTS ONLY public.quiz_questions DROP CONSTRAINT IF EXISTS quiz_questions_category_id_a6061467_fk_quiz_ques;
ALTER TABLE IF EXISTS ONLY public.quiz_choices DROP CONSTRAINT IF EXISTS quiz_choices_question_id_91499dec_fk_quiz_questions_id;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_user_id_c564eba6_fk_quiz_users_id;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX IF EXISTS public.quiz_usersolutions_user_id_6856aa3f;
DROP INDEX IF EXISTS public.quiz_usersolutions_selected_answer_id_f5b9f47c;
DROP INDEX IF EXISTS public.quiz_usersolutions_quiz_session_id_06ebf55e;
DROP INDEX IF EXISTS public.quiz_usersolutions_question_id_9ed283ac;
DROP INDEX IF EXISTS public.quiz_users_email_54010888_like;
DROP INDEX IF EXISTS public.quiz_quizsessionquestion_quiz_session_id_ede2b4f0;
DROP INDEX IF EXISTS public.quiz_quizsessionquestion_questions_id_45de61b4;
DROP INDEX IF EXISTS public.quiz_quizsession_user_id_189bbd7d;
DROP INDEX IF EXISTS public.quiz_quizsession_quiz_id_id_3252d910;
DROP INDEX IF EXISTS public.quiz_quiz_categories_quiz_id_4c68732f;
DROP INDEX IF EXISTS public.quiz_quiz_categories_question_category_id_5f0005e5;
DROP INDEX IF EXISTS public.quiz_questions_category_id_a6061467;
DROP INDEX IF EXISTS public.quiz_choices_question_id_91499dec;
DROP INDEX IF EXISTS public.django_session_session_key_c0390e0f_like;
DROP INDEX IF EXISTS public.django_session_expire_date_a5c62663;
DROP INDEX IF EXISTS public.django_admin_log_user_id_c564eba6;
DROP INDEX IF EXISTS public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX IF EXISTS public.auth_permission_content_type_id_2f476e4b;
DROP INDEX IF EXISTS public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX IF EXISTS public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX IF EXISTS public.auth_group_name_a6ea08ec_like;
ALTER TABLE IF EXISTS ONLY public.quiz_usersolutions DROP CONSTRAINT IF EXISTS quiz_usersolutions_pkey;
ALTER TABLE IF EXISTS ONLY public.quiz_users DROP CONSTRAINT IF EXISTS quiz_users_pkey;
ALTER TABLE IF EXISTS ONLY public.quiz_users DROP CONSTRAINT IF EXISTS quiz_users_email_key;
ALTER TABLE IF EXISTS ONLY public.quiz_quizsessionquestion DROP CONSTRAINT IF EXISTS quiz_quizsessionquestion_pkey;
ALTER TABLE IF EXISTS ONLY public.quiz_quizsession DROP CONSTRAINT IF EXISTS quiz_quizsession_pkey;
ALTER TABLE IF EXISTS ONLY public.quiz_info DROP CONSTRAINT IF EXISTS quiz_quiz_pkey;
ALTER TABLE IF EXISTS ONLY public.quiz_info_categories DROP CONSTRAINT IF EXISTS quiz_quiz_categories_quiz_id_question_category_id_0660f50b_uniq;
ALTER TABLE IF EXISTS ONLY public.quiz_info_categories DROP CONSTRAINT IF EXISTS quiz_quiz_categories_pkey;
ALTER TABLE IF EXISTS ONLY public.quiz_questions DROP CONSTRAINT IF EXISTS quiz_questions_pkey;
ALTER TABLE IF EXISTS ONLY public.quiz_question_category DROP CONSTRAINT IF EXISTS quiz_question_category_pkey;
ALTER TABLE IF EXISTS ONLY public.quiz_choices DROP CONSTRAINT IF EXISTS quiz_choices_pkey;
ALTER TABLE IF EXISTS ONLY public.django_session DROP CONSTRAINT IF EXISTS django_session_pkey;
ALTER TABLE IF EXISTS ONLY public.django_migrations DROP CONSTRAINT IF EXISTS django_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_name_key;
DROP TABLE IF EXISTS public.quiz_usersolutions;
DROP TABLE IF EXISTS public.quiz_users;
DROP TABLE IF EXISTS public.quiz_quizsessionquestion;
DROP TABLE IF EXISTS public.quiz_quizsession;
DROP TABLE IF EXISTS public.quiz_questions;
DROP TABLE IF EXISTS public.quiz_question_category;
DROP TABLE IF EXISTS public.quiz_info_categories;
DROP TABLE IF EXISTS public.quiz_info;
DROP TABLE IF EXISTS public.quiz_choices;
DROP TABLE IF EXISTS public.django_session;
DROP TABLE IF EXISTS public.django_migrations;
DROP TABLE IF EXISTS public.django_content_type;
DROP TABLE IF EXISTS public.django_admin_log;
DROP TABLE IF EXISTS public.auth_permission;
DROP TABLE IF EXISTS public.auth_group_permissions;
DROP TABLE IF EXISTS public.auth_group;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: quiz_choices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_choices (
    id bigint NOT NULL,
    option text,
    is_correct boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    question_id bigint NOT NULL
);


ALTER TABLE public.quiz_choices OWNER TO postgres;

--
-- Name: quiz_choices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.quiz_choices ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_choices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: quiz_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_info (
    id bigint NOT NULL,
    title character varying(250) NOT NULL,
    descriptions text NOT NULL,
    num_questions integer NOT NULL,
    quiz_duration_min integer NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.quiz_info OWNER TO postgres;

--
-- Name: quiz_info_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_info_categories (
    id bigint NOT NULL,
    quiz_id bigint NOT NULL,
    question_category_id bigint NOT NULL
);


ALTER TABLE public.quiz_info_categories OWNER TO postgres;

--
-- Name: quiz_question_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_question_category (
    id bigint NOT NULL,
    name character varying(80) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.quiz_question_category OWNER TO postgres;

--
-- Name: quiz_question_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.quiz_question_category ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_question_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: quiz_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_questions (
    id bigint NOT NULL,
    text text NOT NULL,
    difficulty character varying(15) NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.quiz_questions OWNER TO postgres;

--
-- Name: quiz_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.quiz_questions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: quiz_quiz_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.quiz_info_categories ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_quiz_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: quiz_quiz_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.quiz_info ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_quiz_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: quiz_quizsession; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_quizsession (
    id bigint NOT NULL,
    status character varying(50) NOT NULL,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    score integer,
    quiz_id_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.quiz_quizsession OWNER TO postgres;

--
-- Name: quiz_quizsession_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.quiz_quizsession ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_quizsession_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: quiz_quizsessionquestion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_quizsessionquestion (
    id bigint NOT NULL,
    question_order integer NOT NULL,
    questions_id bigint NOT NULL,
    quiz_session_id bigint NOT NULL
);


ALTER TABLE public.quiz_quizsessionquestion OWNER TO postgres;

--
-- Name: quiz_quizsessionquestion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.quiz_quizsessionquestion ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_quizsessionquestion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: quiz_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_users (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    email character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    otp character varying(6),
    is_verified boolean NOT NULL
);


ALTER TABLE public.quiz_users OWNER TO postgres;

--
-- Name: quiz_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.quiz_users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: quiz_usersolutions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_usersolutions (
    id bigint NOT NULL,
    is_correct boolean NOT NULL,
    answered_at timestamp with time zone NOT NULL,
    question_id bigint NOT NULL,
    selected_answer_id bigint NOT NULL,
    user_id bigint NOT NULL,
    attempt_type character varying(20) NOT NULL,
    quiz_session_id bigint
);


ALTER TABLE public.quiz_usersolutions OWNER TO postgres;

--
-- Name: quiz_usersolutions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.quiz_usersolutions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_usersolutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
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
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
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
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session VALUES ('xm01685fl7saanpbj9jinkcq44hhmg2d', '.eJxVjEEOwiAQAP_C2RCQ7goevfcNZGFBqgaS0p6MfzckPeh1ZjJv4Wnfit97Wv3C4ipQnH5ZoPhMdQh-UL03GVvd1iXIkcjDdjk3Tq_b0f4NCvUytobBarAJyERnIEMANDEDXxxhRhUmxYms4rNWOGUwJobkyEVAh9qKzxfZyzeJ:1tQnbl:GmWTIlu7cxcekjRDIFj24jPDw8WA6L58zpQztnPUVYQ', '2025-01-09 19:08:57.290042+06');
INSERT INTO public.django_session VALUES ('spmrba22vjnphkgi7toutnx1y1llkn3s', '.eJxVjEEOwiAQAP_C2RCQ7goevfcNZGFBqgaS0p6MfzckPeh1ZjJv4Wnfit97Wv3C4ipQnH5ZoPhMdQh-UL03GVvd1iXIkcjDdjk3Tq_b0f4NCvUytobBarAJyERnIEMANDEDXxxhRhUmxYms4rNWOGUwJobkyEVAh9qKzxfZyzeJ:1tfix1:sMkoFJUoiNKR7J5qHbtdCGaGic-434EPEIp6s9S87aw', '2025-02-19 23:12:35.613599+06');


--
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
-- Data for Name: quiz_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_info VALUES (2, 'Chemical Bonds', 'Basic chemical bonding concepts', 7, 50, true);
INSERT INTO public.quiz_info VALUES (1, 'Newton''s Laws', ' Test on Newton''s Laws of Motion', 5, 50, true);


--
-- Data for Name: quiz_info_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quiz_info_categories VALUES (1, 1, 1);
INSERT INTO public.quiz_info_categories VALUES (2, 1, 10);
INSERT INTO public.quiz_info_categories VALUES (3, 2, 3);
INSERT INTO public.quiz_info_categories VALUES (4, 2, 5);
INSERT INTO public.quiz_info_categories VALUES (5, 1, 5);


--
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
INSERT INTO public.quiz_questions VALUES (19, 'Special available teach several organization left new response during.?', 'easy', true, '2025-05-18 17:53:34.909348+06', 6);
INSERT INTO public.quiz_questions VALUES (20, 'Dinner consider sign hope care child gun cut institution keep improve others near summer down total.?', 'hard', true, '2025-05-18 17:53:34.90938+06', 3);
INSERT INTO public.quiz_questions VALUES (21, 'Happy us catch job leader out including.?', 'hard', true, '2025-05-18 17:53:34.9094+06', 5);
INSERT INTO public.quiz_questions VALUES (22, 'Resource page often outside.?', 'easy', true, '2025-05-18 17:53:34.909416+06', 2);
INSERT INTO public.quiz_questions VALUES (23, 'Forward low individual pretty admit important onto owner meeting together ahead heavy.?', 'medium', true, '2025-05-18 17:53:34.909433+06', 7);
INSERT INTO public.quiz_questions VALUES (24, 'Something director resource group watch director group.?', 'medium', true, '2025-05-18 17:53:34.909449+06', 8);
INSERT INTO public.quiz_questions VALUES (25, 'The last threat plan wear man produce.?', 'medium', true, '2025-05-18 17:53:34.909465+06', 3);
INSERT INTO public.quiz_questions VALUES (26, 'Against page man alone strategy defense some.?', 'easy', true, '2025-05-18 17:53:34.909481+06', 2);
INSERT INTO public.quiz_questions VALUES (27, 'Physical enough practice top.?', 'hard', true, '2025-05-18 17:53:34.909497+06', 2);
INSERT INTO public.quiz_questions VALUES (28, 'Tax lawyer material item business respond suffer.?', 'easy', true, '2025-05-18 17:53:34.909513+06', 5);
INSERT INTO public.quiz_questions VALUES (29, 'Foreign gun window firm practice total list true raise five spend share less deal floor product sell service professor.?', 'hard', true, '2025-05-18 23:21:05.430701+06', 3);
INSERT INTO public.quiz_questions VALUES (30, 'East rule every face high major own large blood.?', 'hard', true, '2025-05-18 23:21:05.430772+06', 3);
INSERT INTO public.quiz_questions VALUES (31, 'Life opportunity plant lose nature.?', 'medium', true, '2025-05-18 23:21:05.430791+06', 6);
INSERT INTO public.quiz_questions VALUES (32, 'Fish where add let race back next develop.?', 'hard', true, '2025-05-18 23:21:05.430808+06', 4);
INSERT INTO public.quiz_questions VALUES (33, 'Part almost action sometimes table address.?', 'medium', true, '2025-05-18 23:21:05.430824+06', 2);
INSERT INTO public.quiz_questions VALUES (34, 'Material system account enough last country personal important apply face different rate cost.?', 'easy', true, '2025-05-18 23:21:05.430841+06', 1);
INSERT INTO public.quiz_questions VALUES (35, 'Word media whether approach dark official maintain.?', 'medium', true, '2025-05-18 23:21:05.430857+06', 5);
INSERT INTO public.quiz_questions VALUES (36, 'Deal this why movement least.?', 'hard', true, '2025-05-18 23:21:05.430872+06', 10);
INSERT INTO public.quiz_questions VALUES (37, 'Similar him late improve.?', 'hard', true, '2025-05-18 23:21:05.430888+06', 8);
INSERT INTO public.quiz_questions VALUES (38, 'Citizen dinner nation might machine half should modern but agree.?', 'easy', true, '2025-05-18 23:21:05.430904+06', 1);
INSERT INTO public.quiz_questions VALUES (39, 'Example training artist page those environmental toward vote real beautiful beautiful down hard Mr election window need painting of.?', 'medium', true, '2025-05-18 23:21:36.050686+06', 1);
INSERT INTO public.quiz_questions VALUES (40, 'Town join value hope serve point those.?', 'hard', true, '2025-05-18 23:21:36.050727+06', 10);
INSERT INTO public.quiz_questions VALUES (41, 'Arrive piece view will including light.?', 'hard', true, '2025-05-18 23:21:36.050747+06', 3);
INSERT INTO public.quiz_questions VALUES (42, 'Follow never later lose recognize answer practice wind agency say guy worker hard.?', 'hard', true, '2025-05-18 23:21:36.050765+06', 3);
INSERT INTO public.quiz_questions VALUES (43, 'Level lose necessary almost possible produce young none imagine wait build.?', 'hard', true, '2025-05-18 23:21:36.050781+06', 4);
INSERT INTO public.quiz_questions VALUES (44, 'Wonder off southern ever study different exist hair mean citizen daughter.?', 'hard', true, '2025-05-18 23:21:36.050798+06', 2);
INSERT INTO public.quiz_questions VALUES (45, 'Federal thousand between feeling religious media clearly increase nice tell.?', 'medium', true, '2025-05-18 23:21:36.050814+06', 2);
INSERT INTO public.quiz_questions VALUES (46, 'Authority relationship management open treatment stay.?', 'hard', true, '2025-05-18 23:21:36.050831+06', 10);
INSERT INTO public.quiz_questions VALUES (47, 'Kitchen such coach policy describe the.?', 'medium', true, '2025-05-18 23:21:36.050847+06', 3);
INSERT INTO public.quiz_questions VALUES (48, 'Very good theory protect maybe art man join let beat.?', 'hard', true, '2025-05-18 23:21:36.050863+06', 7);
INSERT INTO public.quiz_questions VALUES (49, 'One most rate nature position understand fear environment run.?', 'easy', true, '2025-05-18 23:21:36.050879+06', 10);
INSERT INTO public.quiz_questions VALUES (50, 'Trial treat cover entire claim suggest nature than way other effort grow newspaper think.?', 'medium', true, '2025-05-18 23:21:36.050895+06', 6);
INSERT INTO public.quiz_questions VALUES (51, 'Democrat stock lead community attention reveal born.?', 'hard', true, '2025-05-18 23:21:36.050911+06', 3);
INSERT INTO public.quiz_questions VALUES (52, 'Shoulder than direction public suddenly anyone involve professional structure.?', 'medium', true, '2025-05-18 23:21:36.050927+06', 2);
INSERT INTO public.quiz_questions VALUES (53, 'Since appear college dinner economy window PM TV find.?', 'medium', true, '2025-05-18 23:21:36.050943+06', 10);
INSERT INTO public.quiz_questions VALUES (54, 'Audience dinner community understand it enjoy already somebody fact age foreign voice city decade.?', 'easy', true, '2025-05-18 23:21:36.050959+06', 5);
INSERT INTO public.quiz_questions VALUES (55, 'Student close central could family admit Mr year.?', 'easy', true, '2025-05-18 23:21:36.050974+06', 1);
INSERT INTO public.quiz_questions VALUES (56, 'Former attorney important structure.?', 'hard', true, '2025-05-18 23:21:36.05099+06', 8);
INSERT INTO public.quiz_questions VALUES (57, 'Hour crime purpose like we short stage other which you then.?', 'medium', true, '2025-05-18 23:21:36.051006+06', 5);
INSERT INTO public.quiz_questions VALUES (58, 'Wall left news number American resource report else Mrs ten.?', 'medium', true, '2025-05-18 23:21:36.051022+06', 5);
INSERT INTO public.quiz_questions VALUES (59, 'Protect dream development well middle security pay degree which accept send school myself girl where.?', 'hard', true, '2025-05-18 23:21:36.051038+06', 10);
INSERT INTO public.quiz_questions VALUES (60, 'Identify base example sit somebody box fact it direction mouth among trip physical.?', 'medium', true, '2025-05-18 23:21:36.051054+06', 8);
INSERT INTO public.quiz_questions VALUES (61, 'Sort leg production land think.?', 'easy', true, '2025-05-18 23:21:36.05107+06', 8);
INSERT INTO public.quiz_questions VALUES (62, 'Himself play near rate door for difference fund sure.?', 'medium', true, '2025-05-18 23:21:36.051086+06', 1);
INSERT INTO public.quiz_questions VALUES (63, 'Including administration claim the product.?', 'medium', true, '2025-05-18 23:21:36.051101+06', 7);
INSERT INTO public.quiz_questions VALUES (64, 'Management keep realize girl Republican choice black action past both.?', 'hard', true, '2025-05-18 23:21:36.051117+06', 3);
INSERT INTO public.quiz_questions VALUES (65, 'Ball mother rather up story.?', 'hard', true, '2025-05-18 23:21:36.051133+06', 4);
INSERT INTO public.quiz_questions VALUES (66, 'Record edge western well poor skin such about.?', 'easy', true, '2025-05-18 23:21:36.051149+06', 7);
INSERT INTO public.quiz_questions VALUES (67, 'Choose both both feel.?', 'easy', true, '2025-05-18 23:21:36.051165+06', 4);
INSERT INTO public.quiz_questions VALUES (68, 'Democratic pretty that organization truth seem anything read evening policy according run final.?', 'hard', true, '2025-05-18 23:21:36.05118+06', 1);
INSERT INTO public.quiz_questions VALUES (69, 'Change enjoy letter indeed enter daughter suffer still edge mind without.?', 'medium', true, '2025-05-18 23:21:36.051196+06', 6);
INSERT INTO public.quiz_questions VALUES (70, 'Eat alone organization debate book drug view energy increase might think focus young laugh party win.?', 'easy', true, '2025-05-18 23:21:36.051212+06', 4);
INSERT INTO public.quiz_questions VALUES (71, 'Again each could there suffer son present lead question experience including risk particular no agree food.?', 'easy', true, '2025-05-18 23:21:36.051227+06', 4);
INSERT INTO public.quiz_questions VALUES (72, 'Bill successful record reflect different music stay allow share center.?', 'easy', true, '2025-05-18 23:21:36.051243+06', 5);
INSERT INTO public.quiz_questions VALUES (73, 'Real century fact upon activity fly whether while join travel bed door magazine.?', 'easy', true, '2025-05-18 23:21:36.051264+06', 8);
INSERT INTO public.quiz_questions VALUES (74, 'Thus strong actually economy example might whose debate today.?', 'hard', true, '2025-05-18 23:21:36.051281+06', 4);
INSERT INTO public.quiz_questions VALUES (75, 'Wear agent those feel course increase indeed behind.?', 'hard', true, '2025-05-18 23:21:36.051298+06', 7);
INSERT INTO public.quiz_questions VALUES (76, 'Person president book local each benefit.?', 'hard', true, '2025-05-18 23:21:36.051313+06', 6);
INSERT INTO public.quiz_questions VALUES (77, 'Street yes service yeah billion history themselves.?', 'easy', true, '2025-05-18 23:21:36.051329+06', 2);
INSERT INTO public.quiz_questions VALUES (78, 'Third believe across all only per kind natural.?', 'hard', true, '2025-05-18 23:21:36.051345+06', 5);
INSERT INTO public.quiz_questions VALUES (79, 'Board personal federal lead accept successful assume popular example never price religious southern.?', 'hard', true, '2025-05-18 23:21:36.051361+06', 5);
INSERT INTO public.quiz_questions VALUES (80, 'Think consider enter animal defense hold factor try five laugh season factor.?', 'easy', true, '2025-05-18 23:21:36.051377+06', 2);
INSERT INTO public.quiz_questions VALUES (81, 'Decision over current our level PM realize word sometimes ever medical interesting.?', 'medium', true, '2025-05-18 23:21:36.051393+06', 7);
INSERT INTO public.quiz_questions VALUES (82, 'Bar fish forget something move understand low everybody ahead.?', 'easy', true, '2025-05-18 23:21:36.051409+06', 6);
INSERT INTO public.quiz_questions VALUES (83, 'Remember yeah long computer mission strategy lead often but somebody full get rock smile.?', 'medium', true, '2025-05-18 23:21:36.051425+06', 5);
INSERT INTO public.quiz_questions VALUES (84, 'Back business entire level executive common research court girl trip of whom coach defense lot.?', 'hard', true, '2025-05-18 23:21:36.051442+06', 8);
INSERT INTO public.quiz_questions VALUES (85, 'Plan head camera defense.?', 'hard', true, '2025-05-18 23:21:36.051462+06', 1);
INSERT INTO public.quiz_questions VALUES (86, 'Government do specific your it.?', 'medium', true, '2025-05-18 23:21:36.051479+06', 6);
INSERT INTO public.quiz_questions VALUES (87, 'List east American population song although recognize poor election.?', 'medium', true, '2025-05-18 23:21:36.051495+06', 1);
INSERT INTO public.quiz_questions VALUES (88, 'Everyone color audience life travel partner yard occur land.?', 'hard', true, '2025-05-18 23:21:36.051511+06', 2);
INSERT INTO public.quiz_questions VALUES (89, 'For movement require media range month.?', 'hard', true, '2025-05-18 23:21:36.051528+06', 2);
INSERT INTO public.quiz_questions VALUES (90, 'Report lot walk yeah appear themselves report street away least force.?', 'easy', true, '2025-05-18 23:21:36.051543+06', 10);
INSERT INTO public.quiz_questions VALUES (91, 'Successful prove five economy level.?', 'medium', true, '2025-05-18 23:21:36.05156+06', 1);
INSERT INTO public.quiz_questions VALUES (92, 'Peace color whatever party blood thought politics leg produce.?', 'easy', true, '2025-05-18 23:21:36.051576+06', 1);
INSERT INTO public.quiz_questions VALUES (93, 'Surface teach before impact vote book study half authority.?', 'hard', true, '2025-05-18 23:21:36.051591+06', 6);
INSERT INTO public.quiz_questions VALUES (94, 'Herself general board pick several effect but assume understand.?', 'easy', true, '2025-05-18 23:21:36.051607+06', 1);
INSERT INTO public.quiz_questions VALUES (95, 'Body light million television sit well return since drug keep forget.?', 'easy', true, '2025-05-18 23:21:36.051623+06', 10);
INSERT INTO public.quiz_questions VALUES (96, 'Late door father moment body parent not.?', 'medium', true, '2025-05-18 23:21:36.051639+06', 5);
INSERT INTO public.quiz_questions VALUES (97, 'Tax information detail back look note.?', 'medium', true, '2025-05-18 23:21:36.051655+06', 7);
INSERT INTO public.quiz_questions VALUES (98, 'From teacher maintain political we card beat from today.?', 'medium', true, '2025-05-18 23:21:36.051671+06', 7);
INSERT INTO public.quiz_questions VALUES (99, 'Character according pick operation wide out service ok.?', 'hard', true, '2025-05-18 23:21:36.051687+06', 1);
INSERT INTO public.quiz_questions VALUES (100, 'Evening sea range it safe degree can someone.?', 'easy', true, '2025-05-18 23:21:36.051703+06', 10);
INSERT INTO public.quiz_questions VALUES (101, 'Admit base their million tree lose people site behind authority imagine trip international.?', 'hard', true, '2025-05-18 23:21:36.051724+06', 3);
INSERT INTO public.quiz_questions VALUES (102, 'Fall pick response against goal fact amount down onto sure light author reveal street.?', 'medium', true, '2025-05-18 23:21:36.051742+06', 4);
INSERT INTO public.quiz_questions VALUES (103, 'Age family newspaper rich entire rather true get.?', 'easy', true, '2025-05-18 23:21:36.051758+06', 3);
INSERT INTO public.quiz_questions VALUES (104, 'Field drive cost now south continue discuss range break send police wall.?', 'medium', true, '2025-05-18 23:21:36.051774+06', 3);
INSERT INTO public.quiz_questions VALUES (105, 'Green possible finish couple history wrong person among government north nature them international same edge food specific worry.?', 'hard', true, '2025-05-18 23:21:36.05179+06', 7);
INSERT INTO public.quiz_questions VALUES (106, 'Your run knowledge guess week herself figure cost leader put enter arrive project catch.?', 'easy', true, '2025-05-18 23:21:36.051806+06', 3);
INSERT INTO public.quiz_questions VALUES (107, 'Develop meeting week draw yourself bill human along join around that vote water off.?', 'hard', true, '2025-05-18 23:21:36.051823+06', 6);
INSERT INTO public.quiz_questions VALUES (108, 'Suggest compare trouble including rock each task religious road.?', 'easy', true, '2025-05-18 23:21:36.051838+06', 1);
INSERT INTO public.quiz_questions VALUES (109, 'Class term bill series hand might everybody could central ago modern.?', 'hard', true, '2025-05-18 23:21:36.051854+06', 10);
INSERT INTO public.quiz_questions VALUES (110, 'Garden structure several traditional result crime stock action ahead indeed him American onto hear.?', 'hard', true, '2025-05-18 23:21:36.05187+06', 1);
INSERT INTO public.quiz_questions VALUES (111, 'Mrs baby rest simply fall.?', 'easy', true, '2025-05-18 23:21:36.051886+06', 10);
INSERT INTO public.quiz_questions VALUES (112, 'Back toward carry similar course teacher inside than reduce item through prove future.?', 'medium', true, '2025-05-18 23:21:36.051902+06', 4);
INSERT INTO public.quiz_questions VALUES (113, 'Ten painting wonder impact area stay rest term up.?', 'medium', true, '2025-05-18 23:21:36.051918+06', 2);
INSERT INTO public.quiz_questions VALUES (114, 'North short day data.?', 'hard', true, '2025-05-18 23:21:36.051934+06', 10);
INSERT INTO public.quiz_questions VALUES (115, 'Improve who interest stop third call lawyer significant.?', 'hard', true, '2025-05-18 23:21:36.05195+06', 1);
INSERT INTO public.quiz_questions VALUES (116, 'Young wrong nation always tonight situation.?', 'hard', true, '2025-05-18 23:21:36.051966+06', 2);
INSERT INTO public.quiz_questions VALUES (117, 'Recently apply story will past strong effort main.?', 'hard', true, '2025-05-18 23:21:36.051982+06', 2);
INSERT INTO public.quiz_questions VALUES (118, 'Back discussion their task us.?', 'hard', true, '2025-05-18 23:21:36.051998+06', 7);
INSERT INTO public.quiz_questions VALUES (119, 'Reduce impact say give unit city PM exist soldier or.?', 'easy', true, '2025-05-18 23:21:36.052014+06', 7);
INSERT INTO public.quiz_questions VALUES (120, 'Hit fine difference mind section.?', 'easy', true, '2025-05-18 23:21:36.052029+06', 1);
INSERT INTO public.quiz_questions VALUES (121, 'Enough office space easy also work want especially store.?', 'medium', true, '2025-05-18 23:21:36.052045+06', 8);
INSERT INTO public.quiz_questions VALUES (122, 'Edge ten these two prove difficult single realize long mouth.?', 'hard', true, '2025-05-18 23:21:36.05206+06', 3);
INSERT INTO public.quiz_questions VALUES (123, 'Forget use soldier when explain air partner.?', 'medium', true, '2025-05-18 23:21:36.052076+06', 5);
INSERT INTO public.quiz_questions VALUES (124, 'Dinner financial mission need interview go your cold Congress teacher mouth.?', 'medium', true, '2025-05-18 23:21:36.052092+06', 4);
INSERT INTO public.quiz_questions VALUES (125, 'Do another or instead finally shoulder despite area firm moment.?', 'easy', true, '2025-05-18 23:21:36.052108+06', 6);
INSERT INTO public.quiz_questions VALUES (126, 'Enjoy store never meet show current detail strategy sit happen think leader.?', 'hard', true, '2025-05-18 23:21:36.052124+06', 10);
INSERT INTO public.quiz_questions VALUES (127, 'Ten reality garden form rock quickly.?', 'hard', true, '2025-05-18 23:21:36.052143+06', 10);
INSERT INTO public.quiz_questions VALUES (128, 'Expect can energy ever American particular as family hold positive view establish give fact others crime beautiful walk cut.?', 'easy', true, '2025-05-18 23:21:36.052161+06', 10);
INSERT INTO public.quiz_questions VALUES (129, 'Her go science exactly policy.?', 'medium', true, '2025-05-18 23:21:36.052177+06', 6);
INSERT INTO public.quiz_questions VALUES (130, 'Rise help behavior worker hit themselves cut table available treatment of likely.?', 'hard', true, '2025-05-18 23:21:36.052193+06', 3);
INSERT INTO public.quiz_questions VALUES (131, 'His TV sound crime behind.?', 'hard', true, '2025-05-18 23:21:36.052209+06', 4);
INSERT INTO public.quiz_questions VALUES (132, 'Explain without small car consider stay positive politics movie.?', 'medium', true, '2025-05-18 23:21:36.052225+06', 8);
INSERT INTO public.quiz_questions VALUES (133, 'Dream like own sit issue dark without clear pick why participant important government wide.?', 'easy', true, '2025-05-18 23:21:36.052241+06', 6);
INSERT INTO public.quiz_questions VALUES (134, 'Middle poor modern successful again page politics cost.?', 'hard', true, '2025-05-18 23:21:36.052257+06', 1);
INSERT INTO public.quiz_questions VALUES (135, 'Spring traditional ability concern clear sing relationship policy.?', 'medium', true, '2025-05-18 23:21:36.052273+06', 4);
INSERT INTO public.quiz_questions VALUES (136, 'Sing write list tough again if then goal involve.?', 'medium', true, '2025-05-18 23:21:36.052289+06', 5);
INSERT INTO public.quiz_questions VALUES (137, 'Fact center grow they walk off race either professional lose describe suggest best respond.?', 'medium', true, '2025-05-18 23:21:36.052305+06', 5);
INSERT INTO public.quiz_questions VALUES (138, 'Effort sea quite once course.?', 'easy', true, '2025-05-18 23:21:36.052321+06', 8);
INSERT INTO public.quiz_questions VALUES (139, 'Answer customer hear chance know according.?', 'hard', true, '2025-05-18 23:21:36.052337+06', 8);
INSERT INTO public.quiz_questions VALUES (140, 'Strategy research collection doctor health north set billion stage lot.?', 'hard', true, '2025-05-18 23:21:36.052353+06', 2);
INSERT INTO public.quiz_questions VALUES (141, 'Recently probably blood quite find story star table voice.?', 'hard', true, '2025-05-18 23:21:36.052368+06', 6);
INSERT INTO public.quiz_questions VALUES (142, 'Director take everybody local message medical set station value country.?', 'hard', true, '2025-05-18 23:21:36.052384+06', 10);
INSERT INTO public.quiz_questions VALUES (143, 'Small raise hear gas some physical past usually true stage.?', 'medium', true, '2025-05-18 23:21:36.0524+06', 1);
INSERT INTO public.quiz_questions VALUES (144, 'Business toward smile role nor certainly specific line air foot third consider yet official list fast past against among.?', 'hard', true, '2025-05-18 23:21:36.052416+06', 6);
INSERT INTO public.quiz_questions VALUES (145, 'Compare choice consider push soon everybody middle to baby sport.?', 'hard', true, '2025-05-18 23:21:36.052432+06', 1);
INSERT INTO public.quiz_questions VALUES (146, 'Star sea environmental along something end social carry tax physical.?', 'easy', true, '2025-05-18 23:21:36.052448+06', 4);
INSERT INTO public.quiz_questions VALUES (147, 'Past early fight boy phone.?', 'easy', true, '2025-05-18 23:21:36.052464+06', 6);
INSERT INTO public.quiz_questions VALUES (148, 'Mention hot PM sister.?', 'medium', true, '2025-05-18 23:21:36.05248+06', 5);
INSERT INTO public.quiz_questions VALUES (149, 'Wonder nothing well bank.?', 'hard', true, '2025-05-18 23:21:36.052496+06', 8);
INSERT INTO public.quiz_questions VALUES (150, 'Represent each stop age agree make cover that relate imagine month available use whom or good simply.?', 'easy', true, '2025-05-18 23:21:36.052512+06', 8);
INSERT INTO public.quiz_questions VALUES (151, 'Now either hit by nation although game.?', 'medium', true, '2025-05-18 23:21:36.052528+06', 6);
INSERT INTO public.quiz_questions VALUES (152, 'Learn base dog campaign do writer change any son current.?', 'easy', true, '2025-05-18 23:21:36.052543+06', 10);
INSERT INTO public.quiz_questions VALUES (153, 'Simply fill available Democrat some space travel.?', 'easy', true, '2025-05-18 23:21:36.052559+06', 1);
INSERT INTO public.quiz_questions VALUES (154, 'Soldier year range along six necessary something.?', 'easy', true, '2025-05-18 23:21:36.052575+06', 7);
INSERT INTO public.quiz_questions VALUES (155, 'Recently mind some practice crime some wait individual.?', 'medium', true, '2025-05-18 23:21:36.052592+06', 3);
INSERT INTO public.quiz_questions VALUES (156, 'Include bad such adult tonight ready moment people professor today watch measure human.?', 'easy', true, '2025-05-18 23:21:36.052607+06', 8);
INSERT INTO public.quiz_questions VALUES (157, 'Never letter alone fact soldier explain word.?', 'easy', true, '2025-05-18 23:21:36.052627+06', 3);
INSERT INTO public.quiz_questions VALUES (158, 'Society movement then coach cost institution start imagine.?', 'medium', true, '2025-05-18 23:21:36.052644+06', 8);
INSERT INTO public.quiz_questions VALUES (159, 'Environment compare too appear.?', 'medium', true, '2025-05-18 23:21:36.052663+06', 5);
INSERT INTO public.quiz_questions VALUES (160, 'Clearly box likely cause fact investment responsibility whose majority.?', 'hard', true, '2025-05-18 23:21:36.05268+06', 10);
INSERT INTO public.quiz_questions VALUES (161, 'Visit foreign care produce check technology religious state avoid ready cup model return worker surface message.?', 'easy', true, '2025-05-18 23:21:36.052696+06', 6);
INSERT INTO public.quiz_questions VALUES (162, 'Congress indeed friend law.?', 'easy', true, '2025-05-18 23:21:36.052716+06', 6);
INSERT INTO public.quiz_questions VALUES (163, 'Return collection foreign.?', 'hard', true, '2025-05-18 23:21:36.052734+06', 4);
INSERT INTO public.quiz_questions VALUES (164, 'Itself word exist camera pay sense common heart conference.?', 'hard', true, '2025-05-18 23:21:36.05275+06', 6);
INSERT INTO public.quiz_questions VALUES (165, 'Radio pass soon these born authority.?', 'hard', true, '2025-05-18 23:21:36.052766+06', 10);
INSERT INTO public.quiz_questions VALUES (166, 'North that including own some painting network friend rule knowledge yet this.?', 'easy', true, '2025-05-18 23:21:36.052782+06', 6);
INSERT INTO public.quiz_questions VALUES (167, 'Behind instead operation ready so.?', 'easy', true, '2025-05-18 23:21:36.052798+06', 3);
INSERT INTO public.quiz_questions VALUES (168, 'Foreign center large sister degree hand really fill agent nor.?', 'easy', true, '2025-05-18 23:21:36.052814+06', 7);
INSERT INTO public.quiz_questions VALUES (169, 'Change top environmental capital even learn writer hot weight remain model heart choice.?', 'medium', true, '2025-05-18 23:21:36.05283+06', 4);
INSERT INTO public.quiz_questions VALUES (170, 'Action event common example.?', 'easy', true, '2025-05-18 23:21:36.052846+06', 3);
INSERT INTO public.quiz_questions VALUES (171, 'Build nothing action happy lay.?', 'medium', true, '2025-05-18 23:21:36.052861+06', 6);
INSERT INTO public.quiz_questions VALUES (172, 'Accept arrive year my million expert detail successful huge piece right.?', 'easy', true, '2025-05-18 23:21:36.052877+06', 1);
INSERT INTO public.quiz_questions VALUES (173, 'Likely short through teacher technology support against camera professor.?', 'medium', true, '2025-05-18 23:21:36.052893+06', 6);
INSERT INTO public.quiz_questions VALUES (174, 'Road statement agency town clearly media and church bit until instead book service drug difference.?', 'medium', true, '2025-05-18 23:21:36.052909+06', 4);
INSERT INTO public.quiz_questions VALUES (175, 'Speak small you Republican go sort science ask million size significant we born.?', 'hard', true, '2025-05-18 23:21:36.052925+06', 6);
INSERT INTO public.quiz_questions VALUES (176, 'Listen tough light even investment art store everybody sing maybe production rise.?', 'easy', true, '2025-05-18 23:21:36.05294+06', 4);
INSERT INTO public.quiz_questions VALUES (177, 'Indicate best describe ready like social on yard.?', 'easy', true, '2025-05-18 23:21:36.052956+06', 7);
INSERT INTO public.quiz_questions VALUES (178, 'Major question wear true everything far dream majority team any beyond a.?', 'easy', true, '2025-05-18 23:21:36.052972+06', 5);
INSERT INTO public.quiz_questions VALUES (179, 'Involve few authority quickly.?', 'hard', true, '2025-05-18 23:21:36.052988+06', 1);
INSERT INTO public.quiz_questions VALUES (180, 'Rule see first throw.?', 'easy', true, '2025-05-18 23:21:36.053003+06', 3);
INSERT INTO public.quiz_questions VALUES (181, 'Detail cup defense some machine analysis this glass skill church rate side after do interesting.?', 'easy', true, '2025-05-18 23:21:36.053019+06', 6);
INSERT INTO public.quiz_questions VALUES (182, 'During identify lawyer picture see first off.?', 'medium', true, '2025-05-18 23:21:36.053035+06', 5);
INSERT INTO public.quiz_questions VALUES (183, 'Myself pattern rule task arm huge wind conference reveal network.?', 'easy', true, '2025-05-18 23:21:36.05305+06', 2);
INSERT INTO public.quiz_questions VALUES (184, 'Brother success serve politics woman power administration upon result.?', 'easy', true, '2025-05-18 23:21:36.053066+06', 4);
INSERT INTO public.quiz_questions VALUES (185, 'Traditional rise style heavy side price.?', 'medium', true, '2025-05-18 23:21:36.053082+06', 4);
INSERT INTO public.quiz_questions VALUES (186, 'Law international finish only work idea.?', 'hard', true, '2025-05-18 23:21:36.053098+06', 1);
INSERT INTO public.quiz_questions VALUES (187, 'Region teacher require.?', 'hard', true, '2025-05-18 23:21:36.053114+06', 4);
INSERT INTO public.quiz_questions VALUES (188, 'House necessary soon she individual late food.?', 'hard', true, '2025-05-18 23:21:36.05313+06', 8);
INSERT INTO public.quiz_questions VALUES (189, 'Without church statement factor piece go.?', 'easy', true, '2025-05-18 23:21:36.053145+06', 1);
INSERT INTO public.quiz_questions VALUES (190, 'Radio until community card least catch newspaper into treatment audience such.?', 'medium', true, '2025-05-18 23:21:36.053165+06', 10);
INSERT INTO public.quiz_questions VALUES (191, 'Source maybe message look eight hit standard produce material affect box star hour item chair toward Democrat.?', 'hard', true, '2025-05-18 23:21:36.053182+06', 5);
INSERT INTO public.quiz_questions VALUES (192, 'Friend art some wall career push future.?', 'easy', true, '2025-05-18 23:21:36.053198+06', 6);
INSERT INTO public.quiz_questions VALUES (257, 'Collection down recent need finish young thank.?', 'medium', true, '2025-05-18 23:21:36.054248+06', 6);
INSERT INTO public.quiz_questions VALUES (193, 'Security enjoy television pull good brother life nothing mouth natural such recently face official how cost young style.?', 'medium', true, '2025-05-18 23:21:36.053214+06', 5);
INSERT INTO public.quiz_questions VALUES (194, 'North remain movie arrive water adult manage effort.?', 'easy', true, '2025-05-18 23:21:36.053229+06', 3);
INSERT INTO public.quiz_questions VALUES (195, 'Million organization pass over doctor effort beat material national after defense live ten present success hand.?', 'medium', true, '2025-05-18 23:21:36.053245+06', 2);
INSERT INTO public.quiz_questions VALUES (196, 'Record bed trial do sound total activity kitchen summer part oil.?', 'hard', true, '2025-05-18 23:21:36.053261+06', 10);
INSERT INTO public.quiz_questions VALUES (197, 'Number head notice worker figure magazine.?', 'medium', true, '2025-05-18 23:21:36.053277+06', 6);
INSERT INTO public.quiz_questions VALUES (198, 'Audience night consider work stage my until health compare few prevent himself they moment its above majority build Congress.?', 'easy', true, '2025-05-18 23:21:36.053293+06', 3);
INSERT INTO public.quiz_questions VALUES (199, 'Discuss service respond society executive red case.?', 'easy', true, '2025-05-18 23:21:36.053308+06', 6);
INSERT INTO public.quiz_questions VALUES (200, 'Talk assume write consumer physical drug both again season lawyer owner half.?', 'hard', true, '2025-05-18 23:21:36.053324+06', 3);
INSERT INTO public.quiz_questions VALUES (201, 'Eye her same others range style budget age catch east.?', 'easy', true, '2025-05-18 23:21:36.05334+06', 5);
INSERT INTO public.quiz_questions VALUES (202, 'Gas environment themselves general occur above central party window claim easy under good.?', 'medium', true, '2025-05-18 23:21:36.053356+06', 10);
INSERT INTO public.quiz_questions VALUES (203, 'Money itself visit strong health stop born response crime against land herself throughout peace cause.?', 'hard', true, '2025-05-18 23:21:36.053372+06', 6);
INSERT INTO public.quiz_questions VALUES (204, 'Back house charge away sign miss tonight blue fund condition sit area wait begin.?', 'easy', true, '2025-05-18 23:21:36.053387+06', 5);
INSERT INTO public.quiz_questions VALUES (205, 'Data show tree beyond guess door win quality report.?', 'hard', true, '2025-05-18 23:21:36.053403+06', 6);
INSERT INTO public.quiz_questions VALUES (206, 'From charge data administration upon control base test voice decision nothing throw.?', 'medium', true, '2025-05-18 23:21:36.053419+06', 3);
INSERT INTO public.quiz_questions VALUES (207, 'Speech position provide wonder agree window citizen possible page per.?', 'easy', true, '2025-05-18 23:21:36.053435+06', 5);
INSERT INTO public.quiz_questions VALUES (208, 'Employee teach drug figure play walk near.?', 'hard', true, '2025-05-18 23:21:36.053451+06', 5);
INSERT INTO public.quiz_questions VALUES (209, 'Radio as nor suffer friend sometimes reach indicate dinner responsibility.?', 'hard', true, '2025-05-18 23:21:36.053466+06', 6);
INSERT INTO public.quiz_questions VALUES (210, 'Environment order serve north at data.?', 'easy', true, '2025-05-18 23:21:36.053482+06', 8);
INSERT INTO public.quiz_questions VALUES (211, 'Population particular cultural cause half campaign lawyer.?', 'easy', true, '2025-05-18 23:21:36.053498+06', 6);
INSERT INTO public.quiz_questions VALUES (212, 'Trade south live participant improve production left city first.?', 'medium', true, '2025-05-18 23:21:36.053514+06', 2);
INSERT INTO public.quiz_questions VALUES (213, 'Or chair activity employee kind admit.?', 'hard', true, '2025-05-18 23:21:36.05353+06', 10);
INSERT INTO public.quiz_questions VALUES (214, 'Wish everyone worry subject find world hear she sign able billion total government provide.?', 'easy', true, '2025-05-18 23:21:36.053546+06', 3);
INSERT INTO public.quiz_questions VALUES (215, 'None seem even you garden individual.?', 'hard', true, '2025-05-18 23:21:36.053562+06', 7);
INSERT INTO public.quiz_questions VALUES (216, 'Laugh level return maintain success hair wait specific evening water.?', 'easy', true, '2025-05-18 23:21:36.053578+06', 8);
INSERT INTO public.quiz_questions VALUES (217, 'Responsibility player painting able stage represent kitchen tree structure day crime rule dream.?', 'hard', true, '2025-05-18 23:21:36.053593+06', 5);
INSERT INTO public.quiz_questions VALUES (218, 'Dark couple be daughter.?', 'hard', true, '2025-05-18 23:21:36.053609+06', 4);
INSERT INTO public.quiz_questions VALUES (219, 'Economy international when rise task all alone ask.?', 'easy', true, '2025-05-18 23:21:36.053624+06', 10);
INSERT INTO public.quiz_questions VALUES (220, 'Project hit million hot role pressure teacher.?', 'medium', true, '2025-05-18 23:21:36.05364+06', 5);
INSERT INTO public.quiz_questions VALUES (221, 'Option majority lead try effect medical adult else thus including.?', 'hard', true, '2025-05-18 23:21:36.053656+06', 3);
INSERT INTO public.quiz_questions VALUES (222, 'Accept shake speak important read fly join save speak blue ahead.?', 'hard', true, '2025-05-18 23:21:36.053675+06', 5);
INSERT INTO public.quiz_questions VALUES (223, 'Story he spend side red drop kind.?', 'hard', true, '2025-05-18 23:21:36.053692+06', 8);
INSERT INTO public.quiz_questions VALUES (224, 'Job protect line traditional official able suffer prepare.?', 'easy', true, '2025-05-18 23:21:36.053708+06', 6);
INSERT INTO public.quiz_questions VALUES (225, 'Town or enjoy pattern catch brother speak.?', 'hard', true, '2025-05-18 23:21:36.053729+06', 4);
INSERT INTO public.quiz_questions VALUES (226, 'Share it kitchen less doctor people majority body.?', 'easy', true, '2025-05-18 23:21:36.053746+06', 2);
INSERT INTO public.quiz_questions VALUES (227, 'Tough describe often from.?', 'easy', true, '2025-05-18 23:21:36.053762+06', 8);
INSERT INTO public.quiz_questions VALUES (228, 'Accept Republican middle number dinner.?', 'medium', true, '2025-05-18 23:21:36.053778+06', 1);
INSERT INTO public.quiz_questions VALUES (229, 'Dinner various note anyone beat whether.?', 'medium', true, '2025-05-18 23:21:36.053794+06', 8);
INSERT INTO public.quiz_questions VALUES (230, 'Government score job traditional guy size large feel affect floor field.?', 'hard', true, '2025-05-18 23:21:36.053809+06', 8);
INSERT INTO public.quiz_questions VALUES (231, 'Authority sea indeed prevent.?', 'easy', true, '2025-05-18 23:21:36.053825+06', 2);
INSERT INTO public.quiz_questions VALUES (232, 'Up worry she language less country win across discover choose practice fact news catch sister.?', 'hard', true, '2025-05-18 23:21:36.053841+06', 8);
INSERT INTO public.quiz_questions VALUES (233, 'Expert space travel board account less listen difference most well.?', 'easy', true, '2025-05-18 23:21:36.053857+06', 3);
INSERT INTO public.quiz_questions VALUES (234, 'His though often happen yard window follow national where hit hand.?', 'medium', true, '2025-05-18 23:21:36.053872+06', 5);
INSERT INTO public.quiz_questions VALUES (235, 'Turn people board term room appear job herself whatever dog himself shake you attack must most.?', 'medium', true, '2025-05-18 23:21:36.053888+06', 1);
INSERT INTO public.quiz_questions VALUES (236, 'Brother court skin wear boy list seat everyone question store team unit reason view edge reduce knowledge against knowledge.?', 'hard', true, '2025-05-18 23:21:36.053904+06', 6);
INSERT INTO public.quiz_questions VALUES (237, 'True these mind machine enough condition attack best difficult must cup after.?', 'easy', true, '2025-05-18 23:21:36.05392+06', 4);
INSERT INTO public.quiz_questions VALUES (238, 'Event way upon ball generation protect impact.?', 'hard', true, '2025-05-18 23:21:36.053936+06', 8);
INSERT INTO public.quiz_questions VALUES (239, 'Risk scene already.?', 'easy', true, '2025-05-18 23:21:36.053952+06', 10);
INSERT INTO public.quiz_questions VALUES (240, 'Authority those cut address price center structure marriage of if treatment discussion standard.?', 'easy', true, '2025-05-18 23:21:36.053967+06', 8);
INSERT INTO public.quiz_questions VALUES (241, 'Ago alone report size bit course.?', 'medium', true, '2025-05-18 23:21:36.053989+06', 8);
INSERT INTO public.quiz_questions VALUES (242, 'Word range country past but.?', 'easy', true, '2025-05-18 23:21:36.054005+06', 7);
INSERT INTO public.quiz_questions VALUES (243, 'Teacher perform official effect garden life director per nature.?', 'easy', true, '2025-05-18 23:21:36.054022+06', 4);
INSERT INTO public.quiz_questions VALUES (244, 'Company subject girl nice both tough hold decision eye way who.?', 'easy', true, '2025-05-18 23:21:36.054039+06', 5);
INSERT INTO public.quiz_questions VALUES (245, 'Management they side task any left through.?', 'easy', true, '2025-05-18 23:21:36.054055+06', 7);
INSERT INTO public.quiz_questions VALUES (246, 'Policy science middle project either key increase style claim man.?', 'hard', true, '2025-05-18 23:21:36.054071+06', 3);
INSERT INTO public.quiz_questions VALUES (247, 'Song hospital treat cut learn job sport bar former end item type soon especially campaign.?', 'medium', true, '2025-05-18 23:21:36.054087+06', 10);
INSERT INTO public.quiz_questions VALUES (248, 'Try base choose system child remain remain focus they.?', 'easy', true, '2025-05-18 23:21:36.054102+06', 5);
INSERT INTO public.quiz_questions VALUES (249, 'Late beat affect rate.?', 'medium', true, '2025-05-18 23:21:36.054118+06', 10);
INSERT INTO public.quiz_questions VALUES (250, 'Place community audience find phone often last under office herself analysis away about.?', 'hard', true, '2025-05-18 23:21:36.054133+06', 1);
INSERT INTO public.quiz_questions VALUES (251, 'Tree thousand well what data until front investment service somebody program.?', 'hard', true, '2025-05-18 23:21:36.054149+06', 6);
INSERT INTO public.quiz_questions VALUES (252, 'Entire bad like oil.?', 'hard', true, '2025-05-18 23:21:36.054168+06', 8);
INSERT INTO public.quiz_questions VALUES (253, 'Project may suggest Congress technology available go run.?', 'easy', true, '2025-05-18 23:21:36.054185+06', 5);
INSERT INTO public.quiz_questions VALUES (254, 'Theory citizen off agree buy try.?', 'medium', true, '2025-05-18 23:21:36.054201+06', 3);
INSERT INTO public.quiz_questions VALUES (255, 'Model parent around example significant record.?', 'medium', true, '2025-05-18 23:21:36.054217+06', 4);
INSERT INTO public.quiz_questions VALUES (256, 'Great environment only catch easy recognize sing article lose.?', 'medium', true, '2025-05-18 23:21:36.054232+06', 2);
INSERT INTO public.quiz_questions VALUES (258, 'Artist level include ten white not.?', 'hard', true, '2025-05-18 23:21:36.054264+06', 1);
INSERT INTO public.quiz_questions VALUES (259, 'Race manage bed daughter carry several major hundred approach positive ready.?', 'easy', true, '2025-05-18 23:21:36.054279+06', 3);
INSERT INTO public.quiz_questions VALUES (260, 'Member think kind policy get difference develop when picture also.?', 'medium', true, '2025-05-18 23:21:36.054295+06', 5);
INSERT INTO public.quiz_questions VALUES (261, 'Somebody here citizen seek as.?', 'medium', true, '2025-05-18 23:21:36.05431+06', 8);
INSERT INTO public.quiz_questions VALUES (262, 'Buy yard research thousand far environment color day before late red.?', 'easy', true, '2025-05-18 23:21:36.054326+06', 5);
INSERT INTO public.quiz_questions VALUES (263, 'Strategy character return worry support.?', 'easy', true, '2025-05-18 23:21:36.054342+06', 3);
INSERT INTO public.quiz_questions VALUES (264, 'Cost name recently institution her.?', 'medium', true, '2025-05-18 23:21:36.054357+06', 1);
INSERT INTO public.quiz_questions VALUES (265, 'Gun relate audience west alone team space a production west many early career term amount material.?', 'hard', true, '2025-05-18 23:21:36.054373+06', 8);
INSERT INTO public.quiz_questions VALUES (266, 'Fall step strong nice thank year it everybody of with growth probably treatment former television PM.?', 'hard', true, '2025-05-18 23:21:36.054388+06', 10);
INSERT INTO public.quiz_questions VALUES (267, 'Raise exist always final at ground miss son son race style read treatment.?', 'medium', true, '2025-05-18 23:21:36.054404+06', 4);
INSERT INTO public.quiz_questions VALUES (268, 'Less trip side store score mention audience tonight seek break white individual increase blue detail.?', 'hard', true, '2025-05-18 23:21:36.05442+06', 10);
INSERT INTO public.quiz_questions VALUES (269, 'Far away feel administration can develop.?', 'hard', true, '2025-05-18 23:21:36.054435+06', 4);
INSERT INTO public.quiz_questions VALUES (270, 'Financial build high.?', 'hard', true, '2025-05-18 23:21:36.054451+06', 6);
INSERT INTO public.quiz_questions VALUES (271, 'College floor join break money sing accept successful front environment strong interesting five same owner PM.?', 'easy', true, '2025-05-18 23:21:36.054467+06', 7);
INSERT INTO public.quiz_questions VALUES (272, 'Development that run per kind discussion sell environmental today.?', 'hard', true, '2025-05-18 23:21:36.054482+06', 2);
INSERT INTO public.quiz_questions VALUES (273, 'Girl instead require yard show police individual partner treatment house where road product loss return personal.?', 'medium', true, '2025-05-18 23:21:36.054499+06', 2);
INSERT INTO public.quiz_questions VALUES (274, 'Me teacher remain tell notice direction factor.?', 'easy', true, '2025-05-18 23:21:36.054515+06', 8);
INSERT INTO public.quiz_questions VALUES (275, 'Write tell that central people country other know film form run.?', 'medium', true, '2025-05-18 23:21:36.05453+06', 4);
INSERT INTO public.quiz_questions VALUES (276, 'None foot she almost we agency section buy.?', 'hard', true, '2025-05-18 23:21:36.054546+06', 2);
INSERT INTO public.quiz_questions VALUES (277, 'Future fire couple group hard difference difficult court modern style.?', 'hard', true, '2025-05-18 23:21:36.054562+06', 8);
INSERT INTO public.quiz_questions VALUES (278, 'Than mention feel son ten question opportunity task.?', 'easy', true, '2025-05-18 23:21:36.054578+06', 7);
INSERT INTO public.quiz_questions VALUES (279, 'Hard than modern animal at window high sit this.?', 'hard', true, '2025-05-18 23:21:36.054593+06', 10);
INSERT INTO public.quiz_questions VALUES (280, 'Discuss risk page partner in like.?', 'medium', true, '2025-05-18 23:21:36.054608+06', 5);
INSERT INTO public.quiz_questions VALUES (281, 'Painting six garden reason leave Democrat.?', 'easy', true, '2025-05-18 23:21:36.054624+06', 4);
INSERT INTO public.quiz_questions VALUES (282, 'Side cell Mr draw owner somebody I raise research source ok.?', 'easy', true, '2025-05-18 23:21:36.05464+06', 10);
INSERT INTO public.quiz_questions VALUES (283, 'Month service hour hotel field not order simply support discussion table almost meeting everybody mention.?', 'easy', true, '2025-05-18 23:21:36.054656+06', 6);
INSERT INTO public.quiz_questions VALUES (284, 'Treat specific member religious prove state leave democratic.?', 'hard', true, '2025-05-18 23:21:36.054686+06', 7);
INSERT INTO public.quiz_questions VALUES (285, 'Ok system community open perform discussion by risk race about suffer project capital another consumer behind song affect.?', 'medium', true, '2025-05-18 23:21:36.054704+06', 1);
INSERT INTO public.quiz_questions VALUES (286, 'Control the sometimes civil send traditional single range whom worry nor play management simply woman account challenge cause prove new.?', 'medium', true, '2025-05-18 23:21:36.054727+06', 7);
INSERT INTO public.quiz_questions VALUES (287, 'Could turn class themselves.?', 'medium', true, '2025-05-18 23:21:36.054745+06', 4);
INSERT INTO public.quiz_questions VALUES (288, 'Professor country six onto quickly finish big raise minute social team watch.?', 'hard', true, '2025-05-18 23:21:36.054762+06', 2);
INSERT INTO public.quiz_questions VALUES (289, 'Real beat common easy usually raise college character much order.?', 'medium', true, '2025-05-18 23:21:36.054778+06', 8);
INSERT INTO public.quiz_questions VALUES (290, 'Deep receive stuff arrive hope child information garden.?', 'hard', true, '2025-05-18 23:21:36.054795+06', 7);
INSERT INTO public.quiz_questions VALUES (291, 'Happy effort close participant rule entire drug computer night minute.?', 'easy', true, '2025-05-18 23:21:36.054822+06', 8);
INSERT INTO public.quiz_questions VALUES (292, 'Bar type specific light six treat on so crime blood.?', 'easy', true, '2025-05-18 23:21:36.054838+06', 7);
INSERT INTO public.quiz_questions VALUES (293, 'Little off soldier idea culture order week camera ball wait.?', 'medium', true, '2025-05-18 23:21:36.054853+06', 1);
INSERT INTO public.quiz_questions VALUES (294, 'Sea investment senior apply military five two baby loss student offer seven.?', 'easy', true, '2025-05-18 23:21:36.054869+06', 3);
INSERT INTO public.quiz_questions VALUES (295, 'Happy property day of Congress firm.?', 'easy', true, '2025-05-18 23:21:36.054885+06', 5);
INSERT INTO public.quiz_questions VALUES (296, 'Civil office style seven land future edge lead still leg.?', 'hard', true, '2025-05-18 23:21:36.054901+06', 2);
INSERT INTO public.quiz_questions VALUES (297, 'Thing professor a white security.?', 'easy', true, '2025-05-18 23:21:36.054917+06', 5);
INSERT INTO public.quiz_questions VALUES (298, 'Decade theory pretty board series administration guy return.?', 'easy', true, '2025-05-18 23:21:36.054932+06', 5);
INSERT INTO public.quiz_questions VALUES (299, 'Surface not book wall upon choice movement recent move.?', 'easy', true, '2025-05-18 23:21:36.054948+06', 6);
INSERT INTO public.quiz_questions VALUES (300, 'Subject should interview station economic writer often either worker leg.?', 'easy', true, '2025-05-18 23:21:36.054963+06', 1);
INSERT INTO public.quiz_questions VALUES (301, 'Federal similar live example anyone participant next.?', 'medium', true, '2025-05-18 23:21:36.054979+06', 4);
INSERT INTO public.quiz_questions VALUES (302, 'Development particular song question police heart yard left nothing story.?', 'easy', true, '2025-05-18 23:21:36.054994+06', 8);
INSERT INTO public.quiz_questions VALUES (303, 'Consider help including just attorney simply perform red person his for may.?', 'medium', true, '2025-05-18 23:21:36.05501+06', 8);
INSERT INTO public.quiz_questions VALUES (304, 'Better far company make your high lawyer.?', 'hard', true, '2025-05-18 23:21:36.055025+06', 1);
INSERT INTO public.quiz_questions VALUES (305, 'Professor meet program.?', 'hard', true, '2025-05-18 23:21:36.055041+06', 10);
INSERT INTO public.quiz_questions VALUES (306, 'Attorney fact hair boy result bag indicate end me very whether very deal.?', 'medium', true, '2025-05-18 23:21:36.055056+06', 1);
INSERT INTO public.quiz_questions VALUES (307, 'Military back likely three reveal process number ask five than just.?', 'hard', true, '2025-05-18 23:21:36.055072+06', 8);
INSERT INTO public.quiz_questions VALUES (308, 'Head economic indicate democratic director.?', 'hard', true, '2025-05-18 23:21:36.055087+06', 6);
INSERT INTO public.quiz_questions VALUES (309, 'Take even individual then phone agree mission treatment across.?', 'hard', true, '2025-05-18 23:21:36.055103+06', 10);
INSERT INTO public.quiz_questions VALUES (310, 'Role door base security six yes mission structure example center nearly friend film discuss grow often stuff mouth.?', 'medium', true, '2025-05-18 23:21:36.055119+06', 5);
INSERT INTO public.quiz_questions VALUES (311, 'Wait them light ten age she.?', 'hard', true, '2025-05-18 23:21:36.055134+06', 7);
INSERT INTO public.quiz_questions VALUES (312, 'Sense trouble investment impact door.?', 'easy', true, '2025-05-18 23:21:36.05515+06', 3);
INSERT INTO public.quiz_questions VALUES (313, 'Every power prove position into until about least wait author forward child room form.?', 'medium', true, '2025-05-18 23:21:36.055166+06', 3);
INSERT INTO public.quiz_questions VALUES (314, 'Court major teacher authority movie language hold strategy important whose yes yeah main suddenly amount protect phone.?', 'hard', true, '2025-05-18 23:21:36.055181+06', 8);
INSERT INTO public.quiz_questions VALUES (315, 'Baby treat necessary attorney me resource report a.?', 'easy', true, '2025-05-18 23:21:36.055201+06', 3);
INSERT INTO public.quiz_questions VALUES (316, 'Employee all may several professional probably.?', 'medium', true, '2025-05-18 23:21:36.055217+06', 8);
INSERT INTO public.quiz_questions VALUES (317, 'About affect language experience successful return music bad soon this hundred product feeling add point.?', 'medium', true, '2025-05-18 23:21:36.055233+06', 10);
INSERT INTO public.quiz_questions VALUES (318, 'Next nature wait interview ago sense black hard expert activity.?', 'hard', true, '2025-05-18 23:21:36.055249+06', 6);
INSERT INTO public.quiz_questions VALUES (319, 'Deep several red purpose involve not if data contain million rest campaign husband whatever purpose whole card.?', 'medium', true, '2025-05-18 23:21:36.055264+06', 3);
INSERT INTO public.quiz_questions VALUES (320, 'Own foot rock whose politics north.?', 'hard', true, '2025-05-18 23:21:36.055279+06', 3);
INSERT INTO public.quiz_questions VALUES (321, 'Either evidence character such whatever exist.?', 'hard', true, '2025-05-18 23:21:36.055295+06', 2);
INSERT INTO public.quiz_questions VALUES (322, 'Maintain stay family easy indeed that fast much newspaper station hour free turn take whom.?', 'hard', true, '2025-05-18 23:21:36.055311+06', 8);
INSERT INTO public.quiz_questions VALUES (323, 'Among once good which travel whatever spend mission drop only.?', 'easy', true, '2025-05-18 23:21:36.055326+06', 3);
INSERT INTO public.quiz_questions VALUES (324, 'Management step outside believe term person into federal analysis painting environment.?', 'hard', true, '2025-05-18 23:21:36.055342+06', 3);
INSERT INTO public.quiz_questions VALUES (325, 'Population kid voice mind.?', 'easy', true, '2025-05-18 23:21:36.055361+06', 7);
INSERT INTO public.quiz_questions VALUES (326, 'Call mother financial.?', 'medium', true, '2025-05-18 23:21:36.055377+06', 4);
INSERT INTO public.quiz_questions VALUES (327, 'Dream writer pressure chair space.?', 'hard', true, '2025-05-18 23:21:36.055393+06', 6);
INSERT INTO public.quiz_questions VALUES (328, 'Arrive bar listen once despite better price action public else behind foot same song develop manage lead.?', 'hard', true, '2025-05-18 23:21:36.055409+06', 8);
INSERT INTO public.quiz_questions VALUES (329, 'Weight simply indeed traditional moment since total film defense reality main.?', 'medium', true, '2025-05-18 23:21:36.055424+06', 1);
INSERT INTO public.quiz_questions VALUES (330, 'Same concern let attention person little.?', 'hard', true, '2025-05-18 23:21:36.055439+06', 5);
INSERT INTO public.quiz_questions VALUES (331, 'Set firm write traditional yard any college region believe.?', 'easy', true, '2025-05-18 23:21:36.055455+06', 5);
INSERT INTO public.quiz_questions VALUES (332, 'Figure white some clearly stuff never husband down watch answer around human condition budget.?', 'medium', true, '2025-05-18 23:21:36.05547+06', 3);
INSERT INTO public.quiz_questions VALUES (333, 'Next participant interesting be.?', 'hard', true, '2025-05-18 23:21:36.055486+06', 2);
INSERT INTO public.quiz_questions VALUES (334, 'Think local mean example others.?', 'medium', true, '2025-05-18 23:21:36.055502+06', 4);
INSERT INTO public.quiz_questions VALUES (335, 'Without rate available other book north of turn.?', 'medium', true, '2025-05-18 23:21:36.055517+06', 4);
INSERT INTO public.quiz_questions VALUES (336, 'Trial site toward decade himself very.?', 'easy', true, '2025-05-18 23:21:36.055533+06', 1);
INSERT INTO public.quiz_questions VALUES (337, 'Trouble necessary prove always want pull ever together investment time seat.?', 'easy', true, '2025-05-18 23:21:36.055549+06', 7);
INSERT INTO public.quiz_questions VALUES (338, 'Guess pull son his teach beat billion face inside traditional big Republican tough.?', 'medium', true, '2025-05-18 23:21:36.055564+06', 3);
INSERT INTO public.quiz_questions VALUES (339, 'Only company significant discussion drug game near majority generation sport modern outside school more no year adult.?', 'medium', true, '2025-05-18 23:21:36.055579+06', 6);
INSERT INTO public.quiz_questions VALUES (340, 'Use need city run crime image simple audience simple analysis concern pass among.?', 'easy', true, '2025-05-18 23:21:36.055595+06', 6);
INSERT INTO public.quiz_questions VALUES (341, 'In deep what practice huge point building rather leader campaign late thousand play will.?', 'easy', true, '2025-05-18 23:21:36.055611+06', 6);
INSERT INTO public.quiz_questions VALUES (342, 'Purpose military though understand collection cultural focus player miss bit west born see situation on receive month.?', 'easy', true, '2025-05-18 23:21:36.055626+06', 7);
INSERT INTO public.quiz_questions VALUES (343, 'Democratic soldier green place into them foreign rate born individual cold.?', 'hard', true, '2025-05-18 23:21:36.055642+06', 2);
INSERT INTO public.quiz_questions VALUES (344, 'Particular machine must week cut serious management spend society.?', 'hard', true, '2025-05-18 23:21:36.055657+06', 1);
INSERT INTO public.quiz_questions VALUES (345, 'Successful bit employee no full avoid however.?', 'easy', true, '2025-05-18 23:21:36.055673+06', 4);
INSERT INTO public.quiz_questions VALUES (346, 'Hit to whom difference occur site kitchen like every.?', 'hard', true, '2025-05-18 23:21:36.055689+06', 6);
INSERT INTO public.quiz_questions VALUES (347, 'Season job describe nature across air everything.?', 'medium', true, '2025-05-18 23:21:36.055708+06', 6);
INSERT INTO public.quiz_questions VALUES (348, 'Major blood help radio difference more.?', 'easy', true, '2025-05-18 23:21:36.055742+06', 5);
INSERT INTO public.quiz_questions VALUES (349, 'That material travel should perform area tonight rich push owner parent think responsibility teacher white edge green.?', 'easy', true, '2025-05-18 23:21:36.05576+06', 2);
INSERT INTO public.quiz_questions VALUES (350, 'Value star rock teacher whom difference maintain those than likely defense cell save life out head example.?', 'easy', true, '2025-05-18 23:21:36.055787+06', 7);
INSERT INTO public.quiz_questions VALUES (351, 'Create small know staff weight continue cup north job happy little customer today.?', 'easy', true, '2025-05-18 23:21:36.055803+06', 4);
INSERT INTO public.quiz_questions VALUES (352, 'Consumer guess gas technology but future never whatever that upon building group add travel let face break knowledge.?', 'hard', true, '2025-05-18 23:21:36.055818+06', 1);
INSERT INTO public.quiz_questions VALUES (353, 'Table property contain series around set human eight education.?', 'hard', true, '2025-05-18 23:21:36.055834+06', 2);
INSERT INTO public.quiz_questions VALUES (354, 'Then follow month authority need along even dog year hair upon ask.?', 'hard', true, '2025-05-18 23:21:36.05585+06', 6);
INSERT INTO public.quiz_questions VALUES (355, 'High former today scientist dinner exactly often hand only above.?', 'hard', true, '2025-05-18 23:21:36.055866+06', 4);
INSERT INTO public.quiz_questions VALUES (356, 'Fight everyone build buy item up.?', 'hard', true, '2025-05-18 23:21:36.055881+06', 10);
INSERT INTO public.quiz_questions VALUES (357, 'Seem national create figure child different bag issue again.?', 'hard', true, '2025-05-18 23:21:36.055897+06', 3);
INSERT INTO public.quiz_questions VALUES (358, 'Professor money sure scene film church international way.?', 'easy', true, '2025-05-18 23:21:36.055912+06', 1);
INSERT INTO public.quiz_questions VALUES (359, 'Into than former dream quality professional range result his reflect growth apply.?', 'easy', true, '2025-05-18 23:21:36.055928+06', 7);
INSERT INTO public.quiz_questions VALUES (360, 'Fight production religious manage order friend eat where someone just today benefit.?', 'easy', true, '2025-05-18 23:21:36.055943+06', 6);
INSERT INTO public.quiz_questions VALUES (361, 'Hear anyone wonder finish nearly dinner decide on heavy effect face right today billion.?', 'medium', true, '2025-05-18 23:21:36.055959+06', 5);
INSERT INTO public.quiz_questions VALUES (362, 'Return between describe individual pay herself mention city player eat though data senior.?', 'hard', true, '2025-05-18 23:21:36.055975+06', 3);
INSERT INTO public.quiz_questions VALUES (363, 'Property method positive key each training avoid front city seven various appear mission create she set try shake.?', 'medium', true, '2025-05-18 23:21:36.05599+06', 10);
INSERT INTO public.quiz_questions VALUES (364, 'I paper meeting Mrs run center area guy beautiful father his.?', 'medium', true, '2025-05-18 23:21:36.056006+06', 3);
INSERT INTO public.quiz_questions VALUES (365, 'Want accept rise discussion time fear officer campaign improve loss better build wife any.?', 'hard', true, '2025-05-18 23:21:36.056021+06', 5);
INSERT INTO public.quiz_questions VALUES (366, 'Fund marriage test sell deep anything get.?', 'medium', true, '2025-05-18 23:21:36.056037+06', 6);
INSERT INTO public.quiz_questions VALUES (367, 'State parent artist provide mission.?', 'hard', true, '2025-05-18 23:21:36.056052+06', 6);
INSERT INTO public.quiz_questions VALUES (368, 'Job political drive condition relate she ask.?', 'medium', true, '2025-05-18 23:21:36.056068+06', 2);
INSERT INTO public.quiz_questions VALUES (369, 'Give beautiful theory.?', 'easy', true, '2025-05-18 23:21:36.056083+06', 5);
INSERT INTO public.quiz_questions VALUES (370, 'Kid likely positive order anyone green choice defense skin loss health a tell seek least wear onto sound spend.?', 'easy', true, '2025-05-18 23:21:36.056099+06', 3);
INSERT INTO public.quiz_questions VALUES (371, 'Wind improve hold spring blue state expect wear effect Congress.?', 'hard', true, '2025-05-18 23:21:36.056114+06', 3);
INSERT INTO public.quiz_questions VALUES (372, 'Will before herself type research chair number pay song cell various story.?', 'medium', true, '2025-05-18 23:21:36.056129+06', 6);
INSERT INTO public.quiz_questions VALUES (373, 'Be coach television site arrive listen.?', 'medium', true, '2025-05-18 23:21:36.056145+06', 4);
INSERT INTO public.quiz_questions VALUES (374, 'Under behavior despite language scene manager realize general more level including product member fill.?', 'hard', true, '2025-05-18 23:21:36.05616+06', 10);
INSERT INTO public.quiz_questions VALUES (375, 'Outside explain she Mr feeling air dinner reduce career institution project.?', 'easy', true, '2025-05-18 23:21:36.056176+06', 8);
INSERT INTO public.quiz_questions VALUES (376, 'Story agent themselves collection baby article ability my.?', 'medium', true, '2025-05-18 23:21:36.056191+06', 1);
INSERT INTO public.quiz_questions VALUES (377, 'Account general claim law nice individual news main wall college fact reveal energy main movement growth soon.?', 'easy', true, '2025-05-18 23:21:36.056207+06', 7);
INSERT INTO public.quiz_questions VALUES (378, 'Agent scientist environment and protect reality find energy sister suddenly.?', 'medium', true, '2025-05-18 23:21:36.056226+06', 8);
INSERT INTO public.quiz_questions VALUES (379, 'His but hotel bank particular husband bring affect energy few action north.?', 'hard', true, '2025-05-18 23:21:36.056243+06', 8);
INSERT INTO public.quiz_questions VALUES (380, 'Art seat security rich recent finish news.?', 'easy', true, '2025-05-18 23:21:36.056259+06', 10);
INSERT INTO public.quiz_questions VALUES (381, 'Subject past none American traditional store.?', 'medium', true, '2025-05-18 23:21:36.056275+06', 2);
INSERT INTO public.quiz_questions VALUES (382, 'One indicate all campaign daughter natural.?', 'hard', true, '2025-05-18 23:21:36.05629+06', 5);
INSERT INTO public.quiz_questions VALUES (383, 'Participant piece care glass determine single evidence check price.?', 'medium', true, '2025-05-18 23:21:36.056306+06', 2);
INSERT INTO public.quiz_questions VALUES (384, 'Late mission each list feel safe attorney positive indicate.?', 'hard', true, '2025-05-18 23:21:36.056321+06', 2);
INSERT INTO public.quiz_questions VALUES (385, 'Who we debate success appear weight pick officer.?', 'medium', true, '2025-05-18 23:21:36.056337+06', 2);
INSERT INTO public.quiz_questions VALUES (386, 'Individual process writer drug physical leave over.?', 'easy', true, '2025-05-18 23:21:36.056353+06', 2);
INSERT INTO public.quiz_questions VALUES (387, 'Major agree magazine tax.?', 'hard', true, '2025-05-18 23:21:36.056368+06', 7);
INSERT INTO public.quiz_questions VALUES (388, 'Road right eight mean should wall prevent international tough.?', 'medium', true, '2025-05-18 23:21:36.056384+06', 7);
INSERT INTO public.quiz_questions VALUES (389, 'Knowledge weight enter else kitchen race short past necessary hair hospital say require.?', 'medium', true, '2025-05-18 23:21:36.056399+06', 10);
INSERT INTO public.quiz_questions VALUES (390, 'Sister air light case group though central car might bring.?', 'medium', true, '2025-05-18 23:21:36.056415+06', 6);
INSERT INTO public.quiz_questions VALUES (391, 'Consumer television help during standard.?', 'hard', true, '2025-05-18 23:21:36.05643+06', 3);
INSERT INTO public.quiz_questions VALUES (392, 'Test less purpose agent set whether.?', 'hard', true, '2025-05-18 23:21:36.056446+06', 3);
INSERT INTO public.quiz_questions VALUES (393, 'Phone upon able race quickly soldier.?', 'medium', true, '2025-05-18 23:21:36.056462+06', 2);
INSERT INTO public.quiz_questions VALUES (394, 'Right case west rise rest knowledge car.?', 'medium', true, '2025-05-18 23:21:36.056477+06', 5);
INSERT INTO public.quiz_questions VALUES (395, 'Performance anyone yourself interest hold including.?', 'hard', true, '2025-05-18 23:21:36.056493+06', 7);
INSERT INTO public.quiz_questions VALUES (396, 'Measure style little figure win hope record.?', 'hard', true, '2025-05-18 23:21:36.056508+06', 3);
INSERT INTO public.quiz_questions VALUES (397, 'Father window many sing.?', 'medium', true, '2025-05-18 23:21:36.056524+06', 4);
INSERT INTO public.quiz_questions VALUES (398, 'Professional high call how individual tough.?', 'hard', true, '2025-05-18 23:21:36.056539+06', 2);
INSERT INTO public.quiz_questions VALUES (399, 'My least know staff goal reason beyond measure even pressure writer think she bill bad room.?', 'hard', true, '2025-05-18 23:21:36.056555+06', 3);
INSERT INTO public.quiz_questions VALUES (400, 'Dream itself film condition above she hot.?', 'hard', true, '2025-05-18 23:21:36.05657+06', 2);
INSERT INTO public.quiz_questions VALUES (401, 'Wonder interest such actually wear upon stock rock than.?', 'hard', true, '2025-05-18 23:21:36.056586+06', 6);
INSERT INTO public.quiz_questions VALUES (402, 'Natural also along surface air sing green key event only forward computer pass worry mind pick.?', 'hard', true, '2025-05-18 23:21:36.056601+06', 7);
INSERT INTO public.quiz_questions VALUES (403, 'Pattern military station radio both hair run dinner bring.?', 'hard', true, '2025-05-18 23:21:36.056617+06', 8);
INSERT INTO public.quiz_questions VALUES (404, 'Street act once morning by marriage until.?', 'medium', true, '2025-05-18 23:21:36.056632+06', 8);
INSERT INTO public.quiz_questions VALUES (405, 'Quickly under kind financial money reach huge responsibility issue carry modern consumer.?', 'hard', true, '2025-05-18 23:21:36.056648+06', 6);
INSERT INTO public.quiz_questions VALUES (406, 'Hair painting fine miss finish beautiful can.?', 'easy', true, '2025-05-18 23:21:36.056664+06', 8);
INSERT INTO public.quiz_questions VALUES (407, 'Agency east minute.?', 'easy', true, '2025-05-18 23:21:36.056679+06', 10);
INSERT INTO public.quiz_questions VALUES (408, 'Challenge protect read source morning artist as me.?', 'hard', true, '2025-05-18 23:21:36.056695+06', 6);
INSERT INTO public.quiz_questions VALUES (409, 'Indicate statement already particular.?', 'medium', true, '2025-05-18 23:21:36.05672+06', 10);
INSERT INTO public.quiz_questions VALUES (410, 'About mention half keep name not red ten mother possible.?', 'hard', true, '2025-05-18 23:21:36.05674+06', 2);
INSERT INTO public.quiz_questions VALUES (411, 'Like for moment direction anything hope usually evidence.?', 'medium', true, '2025-05-18 23:21:36.056757+06', 4);
INSERT INTO public.quiz_questions VALUES (412, 'Election own how rate two where three add they rise lawyer life.?', 'hard', true, '2025-05-18 23:21:36.056773+06', 1);
INSERT INTO public.quiz_questions VALUES (413, 'Card decision style keep experience become member national four difference vote.?', 'easy', true, '2025-05-18 23:21:36.056789+06', 2);
INSERT INTO public.quiz_questions VALUES (414, 'High seat long season leg late behind look what different Republican exist size book brother.?', 'hard', true, '2025-05-18 23:21:36.056804+06', 3);
INSERT INTO public.quiz_questions VALUES (415, 'Know window front hundred section million go usually.?', 'easy', true, '2025-05-18 23:21:36.05682+06', 6);
INSERT INTO public.quiz_questions VALUES (416, 'Degree see like guy.?', 'hard', true, '2025-05-18 23:21:36.056835+06', 6);
INSERT INTO public.quiz_questions VALUES (417, 'Sometimes gun now let foot right.?', 'easy', true, '2025-05-18 23:21:36.056851+06', 10);
INSERT INTO public.quiz_questions VALUES (418, 'Describe force tend know world anyone cold chance go game series themselves charge paper know social.?', 'easy', true, '2025-05-18 23:21:36.056867+06', 5);
INSERT INTO public.quiz_questions VALUES (419, 'Budget present onto recently doctor body race already personal.?', 'easy', true, '2025-05-18 23:21:36.056882+06', 4);
INSERT INTO public.quiz_questions VALUES (420, 'Table cause whom stage realize budget truth tree although.?', 'easy', true, '2025-05-18 23:21:36.056897+06', 6);
INSERT INTO public.quiz_questions VALUES (421, 'Marriage need decide son make both similar word sister take pattern dream.?', 'medium', true, '2025-05-18 23:21:36.056913+06', 4);
INSERT INTO public.quiz_questions VALUES (422, 'Those whom body stop today upon pay series be discover quality guy group.?', 'medium', true, '2025-05-18 23:21:36.056928+06', 2);
INSERT INTO public.quiz_questions VALUES (423, 'Visit foot purpose pattern cell.?', 'hard', true, '2025-05-18 23:21:36.056944+06', 7);
INSERT INTO public.quiz_questions VALUES (424, 'Tough well after space fine late to certain letter reason.?', 'hard', true, '2025-05-18 23:21:36.056959+06', 8);
INSERT INTO public.quiz_questions VALUES (425, 'Wish end seat top.?', 'easy', true, '2025-05-18 23:21:36.056975+06', 8);
INSERT INTO public.quiz_questions VALUES (426, 'Gas few my meet wide yard find interesting resource.?', 'medium', true, '2025-05-18 23:21:36.056991+06', 5);
INSERT INTO public.quiz_questions VALUES (427, 'Late whom whom financial officer drive factor law.?', 'hard', true, '2025-05-18 23:21:36.057006+06', 4);
INSERT INTO public.quiz_questions VALUES (428, 'Town sometimes our Mr make become behind growth many.?', 'hard', true, '2025-05-18 23:21:36.057022+06', 10);
INSERT INTO public.quiz_questions VALUES (429, 'Take share avoid.?', 'hard', true, '2025-05-18 23:21:36.057038+06', 5);
INSERT INTO public.quiz_questions VALUES (430, 'Quality material case pay rise realize newspaper front almost sing.?', 'easy', true, '2025-05-18 23:21:36.057053+06', 6);
INSERT INTO public.quiz_questions VALUES (431, 'Decision go opportunity side.?', 'hard', true, '2025-05-18 23:21:36.057069+06', 8);
INSERT INTO public.quiz_questions VALUES (432, 'My bar others response she nation piece none window fund practice sign economic maybe.?', 'easy', true, '2025-05-18 23:21:36.057084+06', 10);
INSERT INTO public.quiz_questions VALUES (433, 'Live very card despite church big who talk sport you sense likely.?', 'medium', true, '2025-05-18 23:21:36.0571+06', 6);
INSERT INTO public.quiz_questions VALUES (434, 'Thus them goal meet natural prepare responsibility the trouble strategy actually nor story southern yeah.?', 'hard', true, '2025-05-18 23:21:36.057116+06', 4);
INSERT INTO public.quiz_questions VALUES (435, 'Son little already for give.?', 'medium', true, '2025-05-18 23:21:36.057131+06', 3);
INSERT INTO public.quiz_questions VALUES (436, 'Instead newspaper speak air expert benefit position so try.?', 'easy', true, '2025-05-18 23:21:36.057147+06', 10);
INSERT INTO public.quiz_questions VALUES (437, 'Plan them network military pull such.?', 'easy', true, '2025-05-18 23:21:36.057163+06', 5);
INSERT INTO public.quiz_questions VALUES (438, 'Four side tell education activity discover they.?', 'easy', true, '2025-05-18 23:21:36.057178+06', 10);
INSERT INTO public.quiz_questions VALUES (439, 'Day push sense fact how song.?', 'easy', true, '2025-05-18 23:21:36.057194+06', 1);
INSERT INTO public.quiz_questions VALUES (440, 'Foreign main local man situation effort four issue its agency.?', 'medium', true, '2025-05-18 23:21:36.057209+06', 8);
INSERT INTO public.quiz_questions VALUES (441, 'Crime visit happy themselves food list sport second born administration single guess how.?', 'easy', true, '2025-05-18 23:21:36.057234+06', 4);
INSERT INTO public.quiz_questions VALUES (442, 'Individual determine part experience street production attack recently which us.?', 'medium', true, '2025-05-18 23:21:36.057251+06', 2);
INSERT INTO public.quiz_questions VALUES (443, 'Either use now as defense.?', 'easy', true, '2025-05-18 23:21:36.057266+06', 4);
INSERT INTO public.quiz_questions VALUES (444, 'Page sound front data share agent community senior over college shoulder.?', 'easy', true, '2025-05-18 23:21:36.057282+06', 1);
INSERT INTO public.quiz_questions VALUES (445, 'Agent visit red woman assume quality stop campaign sing value once president bit garden now.?', 'medium', true, '2025-05-18 23:21:36.057298+06', 8);
INSERT INTO public.quiz_questions VALUES (446, 'Themselves visit describe box expect memory senior child small.?', 'medium', true, '2025-05-18 23:21:36.057314+06', 8);
INSERT INTO public.quiz_questions VALUES (447, 'Other pressure social prepare direction TV your discussion show able.?', 'medium', true, '2025-05-18 23:21:36.05733+06', 8);
INSERT INTO public.quiz_questions VALUES (448, 'Free instead seat edge inside year attorney off hope none.?', 'easy', true, '2025-05-18 23:21:36.057345+06', 8);
INSERT INTO public.quiz_questions VALUES (449, 'Down figure wide interesting check evening.?', 'easy', true, '2025-05-18 23:21:36.05736+06', 10);
INSERT INTO public.quiz_questions VALUES (450, 'Red believe prevent surface eight society phone may model body throughout.?', 'hard', true, '2025-05-18 23:21:36.057376+06', 6);
INSERT INTO public.quiz_questions VALUES (451, 'Factor rather arm lead physical.?', 'easy', true, '2025-05-18 23:21:36.057392+06', 4);
INSERT INTO public.quiz_questions VALUES (452, 'Arm reach century care message however card outside after fact short campaign.?', 'hard', true, '2025-05-18 23:21:36.057407+06', 1);
INSERT INTO public.quiz_questions VALUES (453, 'Here major easy born couple use future speech information life economy.?', 'medium', true, '2025-05-18 23:21:36.057423+06', 7);
INSERT INTO public.quiz_questions VALUES (454, 'Plan organization next cut enter agency.?', 'easy', true, '2025-05-18 23:21:36.057439+06', 10);
INSERT INTO public.quiz_questions VALUES (455, 'Sell baby western little American brother again far material.?', 'easy', true, '2025-05-18 23:21:36.057454+06', 6);
INSERT INTO public.quiz_questions VALUES (456, 'Race budget live our sign and lawyer teacher economic animal.?', 'medium', true, '2025-05-18 23:21:36.05747+06', 3);
INSERT INTO public.quiz_questions VALUES (457, 'Try reality land beat order.?', 'medium', true, '2025-05-18 23:21:36.057485+06', 6);
INSERT INTO public.quiz_questions VALUES (458, 'Husband help better specific sort.?', 'hard', true, '2025-05-18 23:21:36.057501+06', 6);
INSERT INTO public.quiz_questions VALUES (459, 'Eye worry social pattern for new easy organization research organization they discuss.?', 'hard', true, '2025-05-18 23:21:36.057517+06', 10);
INSERT INTO public.quiz_questions VALUES (460, 'Low production to land century candidate conference actually either condition hair.?', 'easy', true, '2025-05-18 23:21:36.057532+06', 8);
INSERT INTO public.quiz_questions VALUES (461, 'Administration policy week friend language them.?', 'easy', true, '2025-05-18 23:21:36.057548+06', 8);
INSERT INTO public.quiz_questions VALUES (462, 'Deal make crime although of floor fight kitchen arrive within simply chance reveal home situation anything.?', 'medium', true, '2025-05-18 23:21:36.057564+06', 7);
INSERT INTO public.quiz_questions VALUES (463, 'Run item memory affect continue fact still production stop within treatment hope happy official nothing.?', 'easy', true, '2025-05-18 23:21:36.057579+06', 6);
INSERT INTO public.quiz_questions VALUES (464, 'Character figure last vote she we program along.?', 'easy', true, '2025-05-18 23:21:36.057595+06', 8);
INSERT INTO public.quiz_questions VALUES (465, 'Staff stand blue middle son newspaper race.?', 'easy', true, '2025-05-18 23:21:36.05761+06', 6);
INSERT INTO public.quiz_questions VALUES (466, 'Office life probably character sea with build.?', 'medium', true, '2025-05-18 23:21:36.057626+06', 3);
INSERT INTO public.quiz_questions VALUES (467, 'Anything me measure anyone word image respond condition south reduce capital visit top full quickly likely account.?', 'hard', true, '2025-05-18 23:21:36.057642+06', 8);
INSERT INTO public.quiz_questions VALUES (468, 'Price commercial institution real five cup oil high artist later pick pass production trip.?', 'medium', true, '2025-05-18 23:21:36.057658+06', 7);
INSERT INTO public.quiz_questions VALUES (469, 'However itself section tough report policy appear gun.?', 'hard', true, '2025-05-18 23:21:36.057673+06', 8);
INSERT INTO public.quiz_questions VALUES (470, 'Learn arrive several mouth seem your drop market young school.?', 'easy', true, '2025-05-18 23:21:36.057689+06', 1);
INSERT INTO public.quiz_questions VALUES (471, 'Management speech perform lawyer scientist.?', 'hard', true, '2025-05-18 23:21:36.057705+06', 7);
INSERT INTO public.quiz_questions VALUES (472, 'Onto agreement who but skill positive until east cell.?', 'medium', true, '2025-05-18 23:21:36.057727+06', 7);
INSERT INTO public.quiz_questions VALUES (473, 'Part clearly often arrive together lay study beautiful test war allow customer job want without.?', 'hard', true, '2025-05-18 23:21:36.057747+06', 6);
INSERT INTO public.quiz_questions VALUES (474, 'President people human teach hope town successful raise yeah far machine soldier when sister hold continue allow.?', 'medium', true, '2025-05-18 23:21:36.057764+06', 4);
INSERT INTO public.quiz_questions VALUES (475, 'Guess course visit.?', 'hard', true, '2025-05-18 23:21:36.05778+06', 4);
INSERT INTO public.quiz_questions VALUES (476, 'Report partner thus event street campaign middle no spring fear alone.?', 'hard', true, '2025-05-18 23:21:36.057795+06', 4);
INSERT INTO public.quiz_questions VALUES (477, 'Question own industry.?', 'medium', true, '2025-05-18 23:21:36.057811+06', 2);
INSERT INTO public.quiz_questions VALUES (478, 'Nature hard director letter hear positive husband model well religious support.?', 'easy', true, '2025-05-18 23:21:36.057827+06', 7);
INSERT INTO public.quiz_questions VALUES (479, 'Tree by participant develop mouth clearly animal range project.?', 'hard', true, '2025-05-18 23:21:36.057842+06', 3);
INSERT INTO public.quiz_questions VALUES (480, 'Outside society trip trouble here cup run none hit foreign yes.?', 'medium', true, '2025-05-18 23:21:36.057858+06', 4);
INSERT INTO public.quiz_questions VALUES (481, 'General anyone race service.?', 'hard', true, '2025-05-18 23:21:36.057873+06', 5);
INSERT INTO public.quiz_questions VALUES (482, 'Director note provide myself ask upon seven interest television listen.?', 'medium', true, '2025-05-18 23:21:36.057889+06', 4);
INSERT INTO public.quiz_questions VALUES (483, 'About energy could onto why build like throw partner service important fish wrong west feeling difficult easy.?', 'medium', true, '2025-05-18 23:21:36.057905+06', 2);
INSERT INTO public.quiz_questions VALUES (484, 'Nor notice old myself national his parent side dog executive mother job short.?', 'easy', true, '2025-05-18 23:21:36.05792+06', 5);
INSERT INTO public.quiz_questions VALUES (485, 'Leg act marriage.?', 'medium', true, '2025-05-18 23:21:36.057935+06', 5);
INSERT INTO public.quiz_questions VALUES (486, 'Central left protect eight cup trial.?', 'easy', true, '2025-05-18 23:21:36.057951+06', 1);
INSERT INTO public.quiz_questions VALUES (487, 'Improve sport able.?', 'medium', true, '2025-05-18 23:21:36.057967+06', 7);
INSERT INTO public.quiz_questions VALUES (488, 'Consumer create though week local role long work that represent.?', 'medium', true, '2025-05-18 23:21:36.057982+06', 10);
INSERT INTO public.quiz_questions VALUES (489, 'Table research east brother whose information claim blood kind onto.?', 'hard', true, '2025-05-18 23:21:36.057997+06', 7);
INSERT INTO public.quiz_questions VALUES (490, 'Play want player author mother on shake unit TV open minute.?', 'easy', true, '2025-05-18 23:21:36.058013+06', 6);
INSERT INTO public.quiz_questions VALUES (491, 'Social fall least still capital subject hair.?', 'easy', true, '2025-05-18 23:21:36.058028+06', 1);
INSERT INTO public.quiz_questions VALUES (492, 'Defense door bag data seat base rise stop purpose teach.?', 'easy', true, '2025-05-18 23:21:36.058044+06', 1);
INSERT INTO public.quiz_questions VALUES (493, 'Early modern stage attack that cause couple dog herself serious like.?', 'medium', true, '2025-05-18 23:21:36.058064+06', 6);
INSERT INTO public.quiz_questions VALUES (494, 'Floor son increase three pass care wife.?', 'hard', true, '2025-05-18 23:21:36.05808+06', 2);
INSERT INTO public.quiz_questions VALUES (495, 'Mission which deep as state.?', 'easy', true, '2025-05-18 23:21:36.058095+06', 4);
INSERT INTO public.quiz_questions VALUES (496, 'Best minute series husband also free.?', 'medium', true, '2025-05-18 23:21:36.058111+06', 8);
INSERT INTO public.quiz_questions VALUES (497, 'Resource mouth behind program him suddenly past every suddenly leader recognize.?', 'medium', true, '2025-05-18 23:21:36.058127+06', 8);
INSERT INTO public.quiz_questions VALUES (498, 'Happy remember almost defense party build particular rock leave four pattern.?', 'medium', true, '2025-05-18 23:21:36.058142+06', 3);
INSERT INTO public.quiz_questions VALUES (499, 'Focus deal expert relationship their voice conference attorney mean idea hot price yes.?', 'hard', true, '2025-05-18 23:21:36.058158+06', 6);
INSERT INTO public.quiz_questions VALUES (500, 'Street thank reflect heart relate put image majority long environment successful.?', 'medium', true, '2025-05-18 23:21:36.058174+06', 7);
INSERT INTO public.quiz_questions VALUES (501, 'Work probably right either want yourself social when trial.?', 'easy', true, '2025-05-18 23:21:36.058189+06', 10);
INSERT INTO public.quiz_questions VALUES (502, 'Financial individual song kid simple former.?', 'hard', true, '2025-05-18 23:21:36.058205+06', 10);
INSERT INTO public.quiz_questions VALUES (503, 'Nearly structure son free campaign may woman west discussion physical my daughter class.?', 'easy', true, '2025-05-18 23:21:36.058221+06', 1);
INSERT INTO public.quiz_questions VALUES (504, 'Throw develop newspaper product degree ability politics.?', 'easy', true, '2025-05-18 23:21:36.058239+06', 10);
INSERT INTO public.quiz_questions VALUES (505, 'Establish I return particularly least theory various away less doctor traditional.?', 'hard', true, '2025-05-18 23:21:36.058256+06', 10);
INSERT INTO public.quiz_questions VALUES (506, 'Star effect design success writer one one market institution skin three least guy.?', 'easy', true, '2025-05-18 23:21:36.058272+06', 3);
INSERT INTO public.quiz_questions VALUES (507, 'Maintain through high vote food current radio ready choose size example college over team.?', 'easy', true, '2025-05-18 23:21:36.058287+06', 10);
INSERT INTO public.quiz_questions VALUES (508, 'Allow every trade statement camera result pattern pass.?', 'medium', true, '2025-05-18 23:21:36.058303+06', 3);
INSERT INTO public.quiz_questions VALUES (509, 'Effort little stand finish in maintain break increase.?', 'medium', true, '2025-05-18 23:21:36.058318+06', 8);
INSERT INTO public.quiz_questions VALUES (510, 'Red ready push.?', 'hard', true, '2025-05-18 23:21:36.058334+06', 8);
INSERT INTO public.quiz_questions VALUES (511, 'Them sound hard drive realize something nation front listen general occur by water turn thousand too.?', 'hard', true, '2025-05-18 23:21:36.058349+06', 4);
INSERT INTO public.quiz_questions VALUES (512, 'Watch feeling wind traditional many.?', 'medium', true, '2025-05-18 23:21:36.058365+06', 10);
INSERT INTO public.quiz_questions VALUES (513, 'Enjoy TV much cut cause resource vote try administration.?', 'medium', true, '2025-05-18 23:21:36.058381+06', 3);
INSERT INTO public.quiz_questions VALUES (578, 'Skill model thank already deep threat piece whom.?', 'medium', true, '2025-05-18 23:21:36.059425+06', 6);
INSERT INTO public.quiz_questions VALUES (514, 'Help bank least how compare argue produce future rather best ago myself simply follow about.?', 'medium', true, '2025-05-18 23:21:36.058396+06', 1);
INSERT INTO public.quiz_questions VALUES (515, 'Health television bank speak Democrat us send research information board public into season address writer.?', 'easy', true, '2025-05-18 23:21:36.058412+06', 1);
INSERT INTO public.quiz_questions VALUES (516, 'Style see dark machine read believe send enough camera fight none realize end.?', 'medium', true, '2025-05-18 23:21:36.058427+06', 2);
INSERT INTO public.quiz_questions VALUES (517, 'Everyone itself truth personal security shake price pick everybody.?', 'hard', true, '2025-05-18 23:21:36.058443+06', 4);
INSERT INTO public.quiz_questions VALUES (518, 'Political plan language answer black.?', 'easy', true, '2025-05-18 23:21:36.058459+06', 3);
INSERT INTO public.quiz_questions VALUES (519, 'Inside poor hope month foreign student government way anyone.?', 'easy', true, '2025-05-18 23:21:36.058474+06', 1);
INSERT INTO public.quiz_questions VALUES (520, 'Network down such value pick.?', 'hard', true, '2025-05-18 23:21:36.05849+06', 2);
INSERT INTO public.quiz_questions VALUES (521, 'Without sort add instead their impact reveal perform.?', 'easy', true, '2025-05-18 23:21:36.058506+06', 10);
INSERT INTO public.quiz_questions VALUES (522, 'Unit color thank southern able author.?', 'hard', true, '2025-05-18 23:21:36.058521+06', 4);
INSERT INTO public.quiz_questions VALUES (523, 'Activity power huge development current reach single want might dream former before action response project.?', 'easy', true, '2025-05-18 23:21:36.058537+06', 10);
INSERT INTO public.quiz_questions VALUES (524, 'Week measure feeling month recently painting wonder event if call night increase thousand.?', 'hard', true, '2025-05-18 23:21:36.058553+06', 8);
INSERT INTO public.quiz_questions VALUES (525, 'Relate land east open need market edge take wife find.?', 'easy', true, '2025-05-18 23:21:36.058568+06', 10);
INSERT INTO public.quiz_questions VALUES (526, 'Southern dinner card.?', 'easy', true, '2025-05-18 23:21:36.058584+06', 7);
INSERT INTO public.quiz_questions VALUES (527, 'Last reflect company international resource technology nothing.?', 'easy', true, '2025-05-18 23:21:36.058599+06', 4);
INSERT INTO public.quiz_questions VALUES (528, 'Measure light treat red test agree campaign wall various.?', 'easy', true, '2025-05-18 23:21:36.058615+06', 6);
INSERT INTO public.quiz_questions VALUES (529, 'Rise or from discuss no three both walk force democratic energy my.?', 'medium', true, '2025-05-18 23:21:36.05863+06', 7);
INSERT INTO public.quiz_questions VALUES (530, 'At material realize recognize.?', 'hard', true, '2025-05-18 23:21:36.058646+06', 10);
INSERT INTO public.quiz_questions VALUES (531, 'Her lot instead central medical notice allow rule once kind sit through.?', 'medium', true, '2025-05-18 23:21:36.058661+06', 7);
INSERT INTO public.quiz_questions VALUES (532, 'Oil point reason leg letter computer hope idea among give hundred.?', 'easy', true, '2025-05-18 23:21:36.058677+06', 8);
INSERT INTO public.quiz_questions VALUES (533, 'Question to knowledge benefit hospital body vote everybody religious kitchen skin.?', 'easy', true, '2025-05-18 23:21:36.058692+06', 10);
INSERT INTO public.quiz_questions VALUES (534, 'Bad to I simple local international word collection happen high.?', 'easy', true, '2025-05-18 23:21:36.058708+06', 10);
INSERT INTO public.quiz_questions VALUES (535, 'Four future appear during machine.?', 'medium', true, '2025-05-18 23:21:36.058729+06', 5);
INSERT INTO public.quiz_questions VALUES (536, 'Most health really audience enjoy radio hand.?', 'easy', true, '2025-05-18 23:21:36.058749+06', 4);
INSERT INTO public.quiz_questions VALUES (537, 'Contain notice force board top culture low gas science Democrat close building.?', 'medium', true, '2025-05-18 23:21:36.058766+06', 6);
INSERT INTO public.quiz_questions VALUES (538, 'Picture worker note radio present his Mrs free spring.?', 'easy', true, '2025-05-18 23:21:36.058782+06', 7);
INSERT INTO public.quiz_questions VALUES (539, 'Usually worry ground not onto may paper hit water its nor.?', 'hard', true, '2025-05-18 23:21:36.058797+06', 8);
INSERT INTO public.quiz_questions VALUES (540, 'Billion cultural travel take technology early society still.?', 'easy', true, '2025-05-18 23:21:36.058813+06', 8);
INSERT INTO public.quiz_questions VALUES (541, 'Military defense candidate forward often.?', 'hard', true, '2025-05-18 23:21:36.058829+06', 5);
INSERT INTO public.quiz_questions VALUES (542, 'Heavy agree argue heavy turn most make open find stand sing list from surface.?', 'medium', true, '2025-05-18 23:21:36.058844+06', 3);
INSERT INTO public.quiz_questions VALUES (543, 'Total official might run short finally.?', 'hard', true, '2025-05-18 23:21:36.05886+06', 5);
INSERT INTO public.quiz_questions VALUES (544, 'Main generation history laugh heart weight smile gun shake require.?', 'medium', true, '2025-05-18 23:21:36.058875+06', 7);
INSERT INTO public.quiz_questions VALUES (545, 'And yeah become seem responsibility have message card society.?', 'hard', true, '2025-05-18 23:21:36.058891+06', 4);
INSERT INTO public.quiz_questions VALUES (546, 'Doctor security spring improve put purpose analysis understand vote carry energy age night difference better thus.?', 'medium', true, '2025-05-18 23:21:36.058906+06', 10);
INSERT INTO public.quiz_questions VALUES (547, 'Later west together enjoy laugh professional consumer assume.?', 'hard', true, '2025-05-18 23:21:36.058922+06', 7);
INSERT INTO public.quiz_questions VALUES (548, 'Rest sport owner deep.?', 'medium', true, '2025-05-18 23:21:36.058937+06', 7);
INSERT INTO public.quiz_questions VALUES (549, 'Community him increase quite watch unit plant ten federal very of sing form music key whether such fly.?', 'easy', true, '2025-05-18 23:21:36.058953+06', 7);
INSERT INTO public.quiz_questions VALUES (550, 'Always control of herself sure think learn ground character take.?', 'medium', true, '2025-05-18 23:21:36.058968+06', 7);
INSERT INTO public.quiz_questions VALUES (551, 'Magazine town hot clearly wall allow and they magazine off others phone choice very opportunity great experience site.?', 'medium', true, '2025-05-18 23:21:36.05899+06', 6);
INSERT INTO public.quiz_questions VALUES (552, 'Carry along for change cost ahead.?', 'easy', true, '2025-05-18 23:21:36.059007+06', 10);
INSERT INTO public.quiz_questions VALUES (553, 'Wrong discover manage million lay economy.?', 'hard', true, '2025-05-18 23:21:36.059022+06', 5);
INSERT INTO public.quiz_questions VALUES (554, 'Image very so account time expect whether draw behind central vote.?', 'hard', true, '2025-05-18 23:21:36.059038+06', 7);
INSERT INTO public.quiz_questions VALUES (555, 'Lay more late computer newspaper personal build professional themselves word why current together soon heart improve where.?', 'medium', true, '2025-05-18 23:21:36.059054+06', 3);
INSERT INTO public.quiz_questions VALUES (556, 'Individual range opportunity oil war camera.?', 'easy', true, '2025-05-18 23:21:36.059069+06', 5);
INSERT INTO public.quiz_questions VALUES (557, 'Opportunity before particularly article whole training see human pull society amount range hundred to manage future true office.?', 'easy', true, '2025-05-18 23:21:36.059084+06', 1);
INSERT INTO public.quiz_questions VALUES (558, 'Response save material though too leg within reflect far.?', 'medium', true, '2025-05-18 23:21:36.0591+06', 4);
INSERT INTO public.quiz_questions VALUES (559, 'Create summer nearly determine seek need what smile message.?', 'easy', true, '2025-05-18 23:21:36.059115+06', 7);
INSERT INTO public.quiz_questions VALUES (560, 'Provide since example debate fight.?', 'easy', true, '2025-05-18 23:21:36.059131+06', 4);
INSERT INTO public.quiz_questions VALUES (561, 'Effort result body deal image.?', 'easy', true, '2025-05-18 23:21:36.059147+06', 10);
INSERT INTO public.quiz_questions VALUES (562, 'Wonder fish message deal full pay increase bad let southern.?', 'easy', true, '2025-05-18 23:21:36.059162+06', 5);
INSERT INTO public.quiz_questions VALUES (563, 'Smile recent far hand ready science keep.?', 'easy', true, '2025-05-18 23:21:36.059178+06', 10);
INSERT INTO public.quiz_questions VALUES (564, 'Onto level similar management thousand kind quickly civil ready.?', 'hard', true, '2025-05-18 23:21:36.059193+06', 7);
INSERT INTO public.quiz_questions VALUES (565, 'Including drive agreement employee small occur be party.?', 'medium', true, '2025-05-18 23:21:36.059208+06', 3);
INSERT INTO public.quiz_questions VALUES (566, 'Response not or walk crime part exist science million size a.?', 'easy', true, '2025-05-18 23:21:36.059229+06', 8);
INSERT INTO public.quiz_questions VALUES (567, 'Series however of paper because far too medical operation could while soldier night such head development.?', 'hard', true, '2025-05-18 23:21:36.059249+06', 4);
INSERT INTO public.quiz_questions VALUES (568, 'Memory far bill.?', 'easy', true, '2025-05-18 23:21:36.059265+06', 6);
INSERT INTO public.quiz_questions VALUES (569, 'Ask believe force suggest.?', 'medium', true, '2025-05-18 23:21:36.059281+06', 1);
INSERT INTO public.quiz_questions VALUES (570, 'Line manager have reach mention serious task gas do whether character especially.?', 'easy', true, '2025-05-18 23:21:36.059296+06', 8);
INSERT INTO public.quiz_questions VALUES (571, 'Event could admit community.?', 'medium', true, '2025-05-18 23:21:36.059312+06', 6);
INSERT INTO public.quiz_questions VALUES (572, 'Why over billion step rule course decide contain voice candidate seem shake.?', 'medium', true, '2025-05-18 23:21:36.059327+06', 4);
INSERT INTO public.quiz_questions VALUES (573, 'General blue house positive despite environment response collection nature occur citizen other enough heavy write.?', 'hard', true, '2025-05-18 23:21:36.059343+06', 5);
INSERT INTO public.quiz_questions VALUES (574, 'Education official property affect.?', 'easy', true, '2025-05-18 23:21:36.059358+06', 6);
INSERT INTO public.quiz_questions VALUES (575, 'Guy policy store onto owner data simply movie building film view now.?', 'medium', true, '2025-05-18 23:21:36.059374+06', 1);
INSERT INTO public.quiz_questions VALUES (576, 'Boy personal theory.?', 'medium', true, '2025-05-18 23:21:36.059389+06', 10);
INSERT INTO public.quiz_questions VALUES (577, 'High probably realize growth likely drive country young.?', 'medium', true, '2025-05-18 23:21:36.059409+06', 4);
INSERT INTO public.quiz_questions VALUES (579, 'Kid environment type environmental beat former according time.?', 'medium', true, '2025-05-18 23:21:36.05944+06', 6);
INSERT INTO public.quiz_questions VALUES (580, 'Later trial affect rock.?', 'medium', true, '2025-05-18 23:21:36.059456+06', 4);
INSERT INTO public.quiz_questions VALUES (581, 'That it rock standard indeed campaign give pressure work.?', 'easy', true, '2025-05-18 23:21:36.059472+06', 3);
INSERT INTO public.quiz_questions VALUES (582, 'Because that care similar themselves.?', 'hard', true, '2025-05-18 23:21:36.059487+06', 10);
INSERT INTO public.quiz_questions VALUES (583, 'Customer usually too product eight.?', 'hard', true, '2025-05-18 23:21:36.059503+06', 10);
INSERT INTO public.quiz_questions VALUES (584, 'Guy west song.?', 'medium', true, '2025-05-18 23:21:36.059518+06', 10);
INSERT INTO public.quiz_questions VALUES (585, 'Build discussion community particularly free program agency.?', 'easy', true, '2025-05-18 23:21:36.059534+06', 10);
INSERT INTO public.quiz_questions VALUES (586, 'Five skin ever store foot give.?', 'medium', true, '2025-05-18 23:21:36.059549+06', 1);
INSERT INTO public.quiz_questions VALUES (587, 'Suggest industry book get spring receive hard example thus argue leg loss involve production same moment morning market full.?', 'hard', true, '2025-05-18 23:21:36.059565+06', 8);
INSERT INTO public.quiz_questions VALUES (588, 'Idea painting stuff know hold south ground.?', 'medium', true, '2025-05-18 23:21:36.059581+06', 3);
INSERT INTO public.quiz_questions VALUES (589, 'Picture word argue team kid open security each wide accept past measure little.?', 'medium', true, '2025-05-18 23:21:36.059596+06', 10);
INSERT INTO public.quiz_questions VALUES (590, 'Necessary now off join question.?', 'medium', true, '2025-05-18 23:21:36.059612+06', 1);
INSERT INTO public.quiz_questions VALUES (591, 'Make end example describe loss again.?', 'hard', true, '2025-05-18 23:21:36.059628+06', 5);
INSERT INTO public.quiz_questions VALUES (592, 'Director specific office hold amount add another condition.?', 'medium', true, '2025-05-18 23:21:36.059643+06', 8);
INSERT INTO public.quiz_questions VALUES (593, 'Financial painting rest walk.?', 'medium', true, '2025-05-18 23:21:36.059659+06', 7);
INSERT INTO public.quiz_questions VALUES (594, 'Suddenly special have soldier rock fight necessary buy drop finally fund politics.?', 'medium', true, '2025-05-18 23:21:36.059675+06', 8);
INSERT INTO public.quiz_questions VALUES (595, 'General successful produce child foot relate small six dark discover break.?', 'medium', true, '2025-05-18 23:21:36.05969+06', 7);
INSERT INTO public.quiz_questions VALUES (596, 'You certain in and ever detail thousand remember clearly sell story get minute catch.?', 'medium', true, '2025-05-18 23:21:36.059706+06', 5);
INSERT INTO public.quiz_questions VALUES (597, 'Song measure charge what century marriage raise choice authority call oil.?', 'hard', true, '2025-05-18 23:21:36.059727+06', 10);
INSERT INTO public.quiz_questions VALUES (598, 'Economy suggest care look range sense.?', 'easy', true, '2025-05-18 23:21:36.059743+06', 7);
INSERT INTO public.quiz_questions VALUES (599, 'Reason meeting what history himself any test significant house over person.?', 'easy', true, '2025-05-18 23:21:36.059762+06', 5);
INSERT INTO public.quiz_questions VALUES (600, 'Give window me eight us go lawyer better hospital realize explain.?', 'easy', true, '2025-05-18 23:21:36.059779+06', 6);
INSERT INTO public.quiz_questions VALUES (601, 'Try team career game scene professor over election many red read amount late hope treat network.?', 'easy', true, '2025-05-18 23:21:36.059795+06', 8);
INSERT INTO public.quiz_questions VALUES (602, 'Be sit state reduce most environment fast arm out return prepare level page policy although.?', 'medium', true, '2025-05-18 23:21:36.05981+06', 3);
INSERT INTO public.quiz_questions VALUES (603, 'Concern final smile need like environmental really detail.?', 'easy', true, '2025-05-18 23:21:36.059826+06', 7);
INSERT INTO public.quiz_questions VALUES (604, 'Blood free mouth relate than model language study trip shoulder.?', 'hard', true, '2025-05-18 23:21:36.059842+06', 5);
INSERT INTO public.quiz_questions VALUES (605, 'Available certain close paper outside.?', 'easy', true, '2025-05-18 23:21:36.059857+06', 1);
INSERT INTO public.quiz_questions VALUES (606, 'Today time there involve.?', 'easy', true, '2025-05-18 23:21:36.059873+06', 4);
INSERT INTO public.quiz_questions VALUES (607, 'Interest likely conference Mrs.?', 'easy', true, '2025-05-18 23:21:36.059888+06', 8);
INSERT INTO public.quiz_questions VALUES (608, 'Firm scientist idea idea personal yard shoulder bill grow care where education west girl.?', 'medium', true, '2025-05-18 23:21:36.059904+06', 10);
INSERT INTO public.quiz_questions VALUES (609, 'Affect send continue worry bag option film environment particular people also body include.?', 'hard', true, '2025-05-18 23:21:36.059919+06', 2);
INSERT INTO public.quiz_questions VALUES (610, 'Likely spring field year more shoulder piece surface garden a present truth very enter north point trouble sing.?', 'easy', true, '2025-05-18 23:21:36.059935+06', 8);
INSERT INTO public.quiz_questions VALUES (611, 'Why add always reach law.?', 'hard', true, '2025-05-18 23:21:36.05995+06', 2);
INSERT INTO public.quiz_questions VALUES (612, 'Former life quite easy item blood area administration nation see whole anything.?', 'medium', true, '2025-05-18 23:21:36.059965+06', 7);
INSERT INTO public.quiz_questions VALUES (613, 'Seem past contain institution level spring final design.?', 'medium', true, '2025-05-18 23:21:36.059981+06', 1);
INSERT INTO public.quiz_questions VALUES (614, 'Order after certainly age area rich item rich she north attorney father water cause.?', 'hard', true, '2025-05-18 23:21:36.059997+06', 8);
INSERT INTO public.quiz_questions VALUES (615, 'Space rise seat eight fast system computer color soldier.?', 'easy', true, '2025-05-18 23:21:36.060012+06', 8);
INSERT INTO public.quiz_questions VALUES (616, 'Pressure together road listen member window others letter thank certainly particular shoulder my deal.?', 'easy', true, '2025-05-18 23:21:36.060028+06', 10);
INSERT INTO public.quiz_questions VALUES (617, 'Stuff within and here risk produce arrive day work church low this money explain.?', 'easy', true, '2025-05-18 23:21:36.060044+06', 8);
INSERT INTO public.quiz_questions VALUES (618, 'Level magazine throughout Republican speech like because attorney action.?', 'medium', true, '2025-05-18 23:21:36.060059+06', 6);
INSERT INTO public.quiz_questions VALUES (619, 'Candidate later control garden difficult picture talk majority school once along appear.?', 'medium', true, '2025-05-18 23:21:36.060075+06', 6);
INSERT INTO public.quiz_questions VALUES (620, 'Figure large throughout about president.?', 'medium', true, '2025-05-18 23:21:36.06009+06', 1);
INSERT INTO public.quiz_questions VALUES (621, 'Lay beautiful somebody road.?', 'medium', true, '2025-05-18 23:21:36.060106+06', 2);
INSERT INTO public.quiz_questions VALUES (622, 'Morning whose similar forget sell six for eye measure site foot program must like director.?', 'easy', true, '2025-05-18 23:21:36.060121+06', 8);
INSERT INTO public.quiz_questions VALUES (623, 'Capital sign show talk base open those buy energy to bar to brother from.?', 'easy', true, '2025-05-18 23:21:36.060137+06', 10);
INSERT INTO public.quiz_questions VALUES (624, 'Effect shoulder trouble analysis generation it effort today foot.?', 'medium', true, '2025-05-18 23:21:36.060153+06', 7);
INSERT INTO public.quiz_questions VALUES (625, 'Many sport capital language focus practice about offer evening physical foot.?', 'medium', true, '2025-05-18 23:21:36.060168+06', 4);
INSERT INTO public.quiz_questions VALUES (626, 'Sure benefit check store cold.?', 'easy', true, '2025-05-18 23:21:36.060184+06', 2);
INSERT INTO public.quiz_questions VALUES (627, 'Able choose relate center seat.?', 'easy', true, '2025-05-18 23:21:36.0602+06', 4);
INSERT INTO public.quiz_questions VALUES (628, 'President ask recognize security use great hope maintain themselves away five reveal.?', 'hard', true, '2025-05-18 23:21:36.060216+06', 7);
INSERT INTO public.quiz_questions VALUES (629, 'Whether early share side from late kind easy you order test beyond story follow suggest.?', 'easy', true, '2025-05-18 23:21:36.060231+06', 10);
INSERT INTO public.quiz_questions VALUES (630, 'Product he cost their sell alone name everything bank.?', 'medium', true, '2025-05-18 23:21:36.06025+06', 6);
INSERT INTO public.quiz_questions VALUES (631, 'Among seek mind difference describe they.?', 'medium', true, '2025-05-18 23:21:36.060267+06', 1);
INSERT INTO public.quiz_questions VALUES (632, 'Describe property contain film hear since just top body street surface message agree impact.?', 'easy', true, '2025-05-18 23:21:36.060283+06', 6);
INSERT INTO public.quiz_questions VALUES (633, 'Professor product energy water step parent white according they require happy provide hundred.?', 'easy', true, '2025-05-18 23:21:36.060299+06', 4);
INSERT INTO public.quiz_questions VALUES (634, 'Food price do evidence area both letter defense method these.?', 'hard', true, '2025-05-18 23:21:36.060314+06', 4);
INSERT INTO public.quiz_questions VALUES (635, 'Then them daughter effort.?', 'hard', true, '2025-05-18 23:21:36.06033+06', 1);
INSERT INTO public.quiz_questions VALUES (636, 'Father run challenge but election practice act cover behavior about always feel visit picture.?', 'easy', true, '2025-05-18 23:21:36.060345+06', 10);
INSERT INTO public.quiz_questions VALUES (637, 'Sound thing into church unit many hot culture.?', 'medium', true, '2025-05-18 23:21:36.060361+06', 1);
INSERT INTO public.quiz_questions VALUES (638, 'Threat turn when Mr something.?', 'hard', true, '2025-05-18 23:21:36.060376+06', 10);
INSERT INTO public.quiz_questions VALUES (639, 'Network than would feel.?', 'medium', true, '2025-05-18 23:21:36.060392+06', 1);
INSERT INTO public.quiz_questions VALUES (640, 'Only learn base she choice move resource however join word that.?', 'medium', true, '2025-05-18 23:21:36.060407+06', 6);
INSERT INTO public.quiz_questions VALUES (641, 'Avoid reason those tonight approach class wrong work field of around that tough east while light will them.?', 'hard', true, '2025-05-18 23:21:36.060423+06', 2);
INSERT INTO public.quiz_questions VALUES (642, 'Me audience foreign campaign compare admit arm receive remain which thing physical couple suddenly.?', 'hard', true, '2025-05-18 23:21:36.060439+06', 7);
INSERT INTO public.quiz_questions VALUES (643, 'Yeah arm brother environment add onto.?', 'easy', true, '2025-05-18 23:21:36.060454+06', 10);
INSERT INTO public.quiz_questions VALUES (644, 'Should sit hour matter music market toward wall figure clearly natural follow believe raise three raise reality call.?', 'easy', true, '2025-05-18 23:21:36.06047+06', 2);
INSERT INTO public.quiz_questions VALUES (645, 'Be drug heart wife all list open just more draw tonight record myself relate gun push.?', 'easy', true, '2025-05-18 23:21:36.060485+06', 4);
INSERT INTO public.quiz_questions VALUES (646, 'Author direction while Mr talk cover always car analysis value.?', 'easy', true, '2025-05-18 23:21:36.0605+06', 4);
INSERT INTO public.quiz_questions VALUES (647, 'Both explain read of indicate set.?', 'easy', true, '2025-05-18 23:21:36.060516+06', 10);
INSERT INTO public.quiz_questions VALUES (648, 'Push memory TV people summer party.?', 'easy', true, '2025-05-18 23:21:36.060532+06', 1);
INSERT INTO public.quiz_questions VALUES (649, 'Live action research design together answer understand commercial property.?', 'easy', true, '2025-05-18 23:21:36.060547+06', 2);
INSERT INTO public.quiz_questions VALUES (650, 'Brother radio stage seek compare medical though increase administration purpose be common hope difference point.?', 'easy', true, '2025-05-18 23:21:36.060563+06', 1);
INSERT INTO public.quiz_questions VALUES (651, 'Argue tax lose group Republican officer wall.?', 'easy', true, '2025-05-18 23:21:36.060578+06', 5);
INSERT INTO public.quiz_questions VALUES (652, 'Enough hit son top religious lawyer pattern fall reason enough.?', 'hard', true, '2025-05-18 23:21:36.060594+06', 3);
INSERT INTO public.quiz_questions VALUES (653, 'Hot of method investment exist tree technology material issue sport course Democrat.?', 'hard', true, '2025-05-18 23:21:36.060609+06', 3);
INSERT INTO public.quiz_questions VALUES (654, 'Rock step middle someone politics hope address from store system name democratic herself hot remember explain must peace.?', 'easy', true, '2025-05-18 23:21:36.060625+06', 10);
INSERT INTO public.quiz_questions VALUES (655, 'Build long bar their investment sit trouble religious dog.?', 'hard', true, '2025-05-18 23:21:36.06064+06', 5);
INSERT INTO public.quiz_questions VALUES (656, 'Little sound buy through two range president almost recent plant here find under they.?', 'hard', true, '2025-05-18 23:21:36.060656+06', 1);
INSERT INTO public.quiz_questions VALUES (657, 'Policy what prepare choice matter deal today resource someone cell dinner page president activity road candidate walk.?', 'hard', true, '2025-05-18 23:21:36.060671+06', 2);
INSERT INTO public.quiz_questions VALUES (658, 'Issue rule product carry anything purpose finish he worker minute role baby foot use nation.?', 'easy', true, '2025-05-18 23:21:36.060687+06', 4);
INSERT INTO public.quiz_questions VALUES (659, 'While nothing someone material.?', 'medium', true, '2025-05-18 23:21:36.060703+06', 3);
INSERT INTO public.quiz_questions VALUES (660, 'Place anything experience section respond help between continue since.?', 'easy', true, '2025-05-18 23:21:36.060723+06', 3);
INSERT INTO public.quiz_questions VALUES (661, 'Score oil father ten might sell.?', 'medium', true, '2025-05-18 23:21:36.060744+06', 3);
INSERT INTO public.quiz_questions VALUES (662, 'Task system avoid possible less huge increase for.?', 'hard', true, '2025-05-18 23:21:36.060763+06', 4);
INSERT INTO public.quiz_questions VALUES (663, 'Practice whom in country democratic training these organization statement policy simply you executive.?', 'easy', true, '2025-05-18 23:21:36.060779+06', 10);
INSERT INTO public.quiz_questions VALUES (664, 'Image none and travel shoulder month history.?', 'medium', true, '2025-05-18 23:21:36.060795+06', 2);
INSERT INTO public.quiz_questions VALUES (665, 'Behind music then work woman vote who.?', 'medium', true, '2025-05-18 23:21:36.060811+06', 4);
INSERT INTO public.quiz_questions VALUES (666, 'Talk himself past education position Democrat property respond third seem defense couple.?', 'medium', true, '2025-05-18 23:21:36.060827+06', 3);
INSERT INTO public.quiz_questions VALUES (667, 'Natural fear each fast major military.?', 'medium', true, '2025-05-18 23:21:36.060842+06', 1);
INSERT INTO public.quiz_questions VALUES (668, 'Small far quite popular age.?', 'hard', true, '2025-05-18 23:21:36.060858+06', 10);
INSERT INTO public.quiz_questions VALUES (669, 'Collection now glass amount perhaps scientist apply among technology probably produce suffer.?', 'hard', true, '2025-05-18 23:21:36.060873+06', 10);
INSERT INTO public.quiz_questions VALUES (670, 'Body memory begin staff different term high brother.?', 'hard', true, '2025-05-18 23:21:36.060889+06', 4);
INSERT INTO public.quiz_questions VALUES (671, 'Street including us ago by house machine court employee suddenly computer stuff light try arm feeling trade cut week media.?', 'medium', true, '2025-05-18 23:21:36.060905+06', 2);
INSERT INTO public.quiz_questions VALUES (672, 'Million my wife hour.?', 'medium', true, '2025-05-18 23:21:36.06092+06', 6);
INSERT INTO public.quiz_questions VALUES (673, 'Wait sit certain while name laugh hit would yeah game road store.?', 'easy', true, '2025-05-18 23:21:36.060936+06', 2);
INSERT INTO public.quiz_questions VALUES (674, 'Lay kitchen low citizen month rise them challenge.?', 'medium', true, '2025-05-18 23:21:36.060951+06', 10);
INSERT INTO public.quiz_questions VALUES (675, 'Teach here executive country peace rich cause nation.?', 'hard', true, '2025-05-18 23:21:36.060967+06', 7);
INSERT INTO public.quiz_questions VALUES (676, 'Movie reveal price picture crime you purpose.?', 'easy', true, '2025-05-18 23:21:36.060982+06', 1);
INSERT INTO public.quiz_questions VALUES (677, 'Listen enjoy listen southern believe high suggest return.?', 'hard', true, '2025-05-18 23:21:36.060998+06', 5);
INSERT INTO public.quiz_questions VALUES (678, 'Vote customer to up learn sell kitchen very produce generation safe.?', 'medium', true, '2025-05-18 23:21:36.061013+06', 2);
INSERT INTO public.quiz_questions VALUES (679, 'Guy research including manage show produce action science.?', 'medium', true, '2025-05-18 23:21:36.061029+06', 8);
INSERT INTO public.quiz_questions VALUES (680, 'Anyone including bill simply property than feeling finish most action.?', 'medium', true, '2025-05-18 23:21:36.061044+06', 6);
INSERT INTO public.quiz_questions VALUES (681, 'Fill leg type some coach social wind head none.?', 'hard', true, '2025-05-18 23:21:36.061059+06', 10);
INSERT INTO public.quiz_questions VALUES (682, 'Race son him possible property report party leave yourself stock quality everybody.?', 'easy', true, '2025-05-18 23:21:36.061075+06', 6);
INSERT INTO public.quiz_questions VALUES (683, 'Her door some nor door wide.?', 'hard', true, '2025-05-18 23:21:36.06109+06', 10);
INSERT INTO public.quiz_questions VALUES (684, 'Sister history including majority work against without.?', 'hard', true, '2025-05-18 23:21:36.061106+06', 2);
INSERT INTO public.quiz_questions VALUES (685, 'Same a safe me dark enjoy.?', 'easy', true, '2025-05-18 23:21:36.061121+06', 6);
INSERT INTO public.quiz_questions VALUES (686, 'Difficult knowledge wear decision control never chance act.?', 'easy', true, '2025-05-18 23:21:36.061137+06', 5);
INSERT INTO public.quiz_questions VALUES (687, 'Believe social little politics wrong increase billion market this.?', 'medium', true, '2025-05-18 23:21:36.061152+06', 6);
INSERT INTO public.quiz_questions VALUES (688, 'Strategy it everyone data understand wish expect.?', 'hard', true, '2025-05-18 23:21:36.061168+06', 1);
INSERT INTO public.quiz_questions VALUES (689, 'Heart break story culture natural system phone field kind central play.?', 'easy', true, '2025-05-18 23:21:36.061183+06', 3);
INSERT INTO public.quiz_questions VALUES (690, 'Admit character marriage they conference.?', 'easy', true, '2025-05-18 23:21:36.061199+06', 3);
INSERT INTO public.quiz_questions VALUES (691, 'Community bar show start card people find their draw special not image.?', 'medium', true, '2025-05-18 23:21:36.061214+06', 8);
INSERT INTO public.quiz_questions VALUES (692, 'What simple high this.?', 'hard', true, '2025-05-18 23:21:36.06123+06', 8);
INSERT INTO public.quiz_questions VALUES (693, 'Address toward again understand head question so morning or can officer pass.?', 'medium', true, '2025-05-18 23:21:36.061249+06', 5);
INSERT INTO public.quiz_questions VALUES (694, 'Prove couple listen black color daughter everyone which order national understand store some money.?', 'medium', true, '2025-05-18 23:21:36.061265+06', 8);
INSERT INTO public.quiz_questions VALUES (695, 'Eight available kitchen sense believe something long president rich side draw toward respond.?', 'medium', true, '2025-05-18 23:21:36.061281+06', 6);
INSERT INTO public.quiz_questions VALUES (696, 'Door smile opportunity language especially approach notice picture hot off once start seek agency involve couple.?', 'easy', true, '2025-05-18 23:21:36.061296+06', 8);
INSERT INTO public.quiz_questions VALUES (697, 'Husband apply office start least international.?', 'medium', true, '2025-05-18 23:21:36.061312+06', 1);
INSERT INTO public.quiz_questions VALUES (698, 'Recently tell professor particular student far Republican start trial can.?', 'medium', true, '2025-05-18 23:21:36.061327+06', 4);
INSERT INTO public.quiz_questions VALUES (699, 'How fear memory activity growth quality attention into condition business must where decision.?', 'easy', true, '2025-05-18 23:21:36.061343+06', 8);
INSERT INTO public.quiz_questions VALUES (700, 'Drop security final it try positive response goal.?', 'hard', true, '2025-05-18 23:21:36.061358+06', 8);
INSERT INTO public.quiz_questions VALUES (701, 'Star order determine election character result pick kitchen many service remain article responsibility investment.?', 'hard', true, '2025-05-18 23:21:36.061374+06', 1);
INSERT INTO public.quiz_questions VALUES (702, 'Serious little certainly while.?', 'hard', true, '2025-05-18 23:21:36.061389+06', 5);
INSERT INTO public.quiz_questions VALUES (703, 'Seek science member while case job civil position camera yes music bit vote test shake call building.?', 'hard', true, '2025-05-18 23:21:36.061404+06', 3);
INSERT INTO public.quiz_questions VALUES (704, 'Time general focus collection adult discuss might ago dog risk.?', 'easy', true, '2025-05-18 23:21:36.061419+06', 6);
INSERT INTO public.quiz_questions VALUES (891, 'Into training clear hotel.?', 'medium', true, '2025-05-18 23:21:36.064427+06', 1);
INSERT INTO public.quiz_questions VALUES (705, 'Drug weight scene oil television dinner move she happy TV free expert rule hope mean stage decade feel rich.?', 'easy', true, '2025-05-18 23:21:36.061435+06', 6);
INSERT INTO public.quiz_questions VALUES (706, 'Improve any clearly few number inside window it the.?', 'hard', true, '2025-05-18 23:21:36.06145+06', 7);
INSERT INTO public.quiz_questions VALUES (707, 'Again prevent for easy service stock employee past land born age feeling yes expert.?', 'hard', true, '2025-05-18 23:21:36.061466+06', 7);
INSERT INTO public.quiz_questions VALUES (708, 'Pull word clear official society future use.?', 'hard', true, '2025-05-18 23:21:36.061481+06', 7);
INSERT INTO public.quiz_questions VALUES (709, 'Character agency military test charge collection.?', 'medium', true, '2025-05-18 23:21:36.061497+06', 8);
INSERT INTO public.quiz_questions VALUES (710, 'Single upon experience successful structure similar energy individual that.?', 'hard', true, '2025-05-18 23:21:36.061512+06', 1);
INSERT INTO public.quiz_questions VALUES (711, 'Professor safe PM trouble lead consider heavy arrive idea well admit he put development also industry full door bad may.?', 'medium', true, '2025-05-18 23:21:36.061528+06', 1);
INSERT INTO public.quiz_questions VALUES (712, 'Reduce if theory recent organization trade economic different.?', 'easy', true, '2025-05-18 23:21:36.061543+06', 1);
INSERT INTO public.quiz_questions VALUES (713, 'Issue space major according almost decade economy.?', 'medium', true, '2025-05-18 23:21:36.061559+06', 6);
INSERT INTO public.quiz_questions VALUES (714, 'Radio hotel bad whole hundred within material yes operation management serve.?', 'medium', true, '2025-05-18 23:21:36.061574+06', 7);
INSERT INTO public.quiz_questions VALUES (715, 'Which Mrs wish future set writer read executive.?', 'medium', true, '2025-05-18 23:21:36.06159+06', 1);
INSERT INTO public.quiz_questions VALUES (716, 'Produce idea painting customer power move today probably government whom recently artist space.?', 'easy', true, '2025-05-18 23:21:36.061605+06', 4);
INSERT INTO public.quiz_questions VALUES (717, 'Look offer professor tend.?', 'easy', true, '2025-05-18 23:21:36.06162+06', 10);
INSERT INTO public.quiz_questions VALUES (718, 'Cost today develop direction statement.?', 'hard', true, '2025-05-18 23:21:36.061635+06', 1);
INSERT INTO public.quiz_questions VALUES (719, 'Decade firm six suffer candidate deep break try.?', 'medium', true, '2025-05-18 23:21:36.061651+06', 3);
INSERT INTO public.quiz_questions VALUES (720, 'Particular than I these before again power hotel call note foreign.?', 'hard', true, '2025-05-18 23:21:36.061667+06', 6);
INSERT INTO public.quiz_questions VALUES (721, 'Reveal miss edge accept deep hard.?', 'hard', true, '2025-05-18 23:21:36.061682+06', 4);
INSERT INTO public.quiz_questions VALUES (722, 'Kid at economic open long decide fill.?', 'easy', true, '2025-05-18 23:21:36.061697+06', 8);
INSERT INTO public.quiz_questions VALUES (723, 'Drive involve others reality various store than establish call environment system agency strategy present actually important.?', 'easy', true, '2025-05-18 23:21:36.061718+06', 8);
INSERT INTO public.quiz_questions VALUES (724, 'Him personal peace far executive century guess certainly behavior.?', 'easy', true, '2025-05-18 23:21:36.061735+06', 1);
INSERT INTO public.quiz_questions VALUES (725, 'Billion agreement factor wonder civil cold tree form keep now cup.?', 'medium', true, '2025-05-18 23:21:36.061754+06', 2);
INSERT INTO public.quiz_questions VALUES (726, 'Tax career gun situation you experience clear door perhaps technology sport off meet.?', 'hard', true, '2025-05-18 23:21:36.061771+06', 7);
INSERT INTO public.quiz_questions VALUES (727, 'Gun guess issue usually until rise force fish among spend police.?', 'easy', true, '2025-05-18 23:21:36.061787+06', 10);
INSERT INTO public.quiz_questions VALUES (728, 'Girl environmental here finally song.?', 'medium', true, '2025-05-18 23:21:36.061802+06', 10);
INSERT INTO public.quiz_questions VALUES (729, 'Hot official situation mind good including.?', 'easy', true, '2025-05-18 23:21:36.061817+06', 5);
INSERT INTO public.quiz_questions VALUES (730, 'Director set without general mission more under exist space around road guess administration.?', 'easy', true, '2025-05-18 23:21:36.061833+06', 1);
INSERT INTO public.quiz_questions VALUES (731, 'Past quite health edge not reality choice sound simple.?', 'medium', true, '2025-05-18 23:21:36.061848+06', 5);
INSERT INTO public.quiz_questions VALUES (732, 'Reason region agreement central receive until him finally visit hair inside beat those.?', 'easy', true, '2025-05-18 23:21:36.061864+06', 6);
INSERT INTO public.quiz_questions VALUES (733, 'If mother smile up certain behind enter know talk.?', 'easy', true, '2025-05-18 23:21:36.061879+06', 4);
INSERT INTO public.quiz_questions VALUES (734, 'Easy may race notice computer identify.?', 'hard', true, '2025-05-18 23:21:36.061951+06', 8);
INSERT INTO public.quiz_questions VALUES (735, 'Around data large all far.?', 'medium', true, '2025-05-18 23:21:36.061971+06', 2);
INSERT INTO public.quiz_questions VALUES (736, 'Usually race hundred hand whose service point old.?', 'easy', true, '2025-05-18 23:21:36.061988+06', 7);
INSERT INTO public.quiz_questions VALUES (737, 'American relationship cost teacher account.?', 'easy', true, '2025-05-18 23:21:36.062004+06', 5);
INSERT INTO public.quiz_questions VALUES (738, 'Leg type sign culture live star off his.?', 'medium', true, '2025-05-18 23:21:36.062019+06', 6);
INSERT INTO public.quiz_questions VALUES (739, 'Full day buy score.?', 'hard', true, '2025-05-18 23:21:36.062035+06', 4);
INSERT INTO public.quiz_questions VALUES (740, 'Close hand relate close activity environmental recent establish loss role.?', 'medium', true, '2025-05-18 23:21:36.06205+06', 7);
INSERT INTO public.quiz_questions VALUES (741, 'Word wish early attack side that camera answer.?', 'easy', true, '2025-05-18 23:21:36.062065+06', 8);
INSERT INTO public.quiz_questions VALUES (742, 'Piece student your care choice provide alone bad scene from civil discover industry scientist wrong early.?', 'hard', true, '2025-05-18 23:21:36.062081+06', 5);
INSERT INTO public.quiz_questions VALUES (743, 'Drug city she consider machine.?', 'easy', true, '2025-05-18 23:21:36.062096+06', 6);
INSERT INTO public.quiz_questions VALUES (744, 'Drive expert enjoy event fall recent group business figure your challenge reach whose heart couple.?', 'medium', true, '2025-05-18 23:21:36.062111+06', 5);
INSERT INTO public.quiz_questions VALUES (745, 'Congress either no action stock.?', 'medium', true, '2025-05-18 23:21:36.062131+06', 6);
INSERT INTO public.quiz_questions VALUES (746, 'Candidate need turn evidence product very can describe skin create ground.?', 'medium', true, '2025-05-18 23:21:36.062147+06', 7);
INSERT INTO public.quiz_questions VALUES (747, 'Senior take plant family father form authority per military six else site base one billion food couple develop set.?', 'medium', true, '2025-05-18 23:21:36.062163+06', 7);
INSERT INTO public.quiz_questions VALUES (748, 'Organization impact generation send upon his force teacher.?', 'medium', true, '2025-05-18 23:21:36.062178+06', 10);
INSERT INTO public.quiz_questions VALUES (749, 'Safe often administration on science magazine kitchen bed television figure so.?', 'easy', true, '2025-05-18 23:21:36.062194+06', 8);
INSERT INTO public.quiz_questions VALUES (750, 'Western truth ok story determine feel firm difference president.?', 'hard', true, '2025-05-18 23:21:36.062209+06', 2);
INSERT INTO public.quiz_questions VALUES (751, 'Total participant region tonight strategy easy race space drive dinner will over difficult go.?', 'medium', true, '2025-05-18 23:21:36.062224+06', 6);
INSERT INTO public.quiz_questions VALUES (752, 'Indicate sell avoid what window worker behavior day bring story brother want sometimes true Mrs expert white week run.?', 'hard', true, '2025-05-18 23:21:36.06224+06', 5);
INSERT INTO public.quiz_questions VALUES (753, 'Tax writer remain common degree give including already.?', 'easy', true, '2025-05-18 23:21:36.062255+06', 3);
INSERT INTO public.quiz_questions VALUES (754, 'Politics important security response interest state million use begin including pay family PM would improve government management suggest.?', 'medium', true, '2025-05-18 23:21:36.062271+06', 3);
INSERT INTO public.quiz_questions VALUES (755, 'Although amount shoulder show suggest trade.?', 'hard', true, '2025-05-18 23:21:36.062286+06', 6);
INSERT INTO public.quiz_questions VALUES (756, 'Make reveal also possible young check.?', 'hard', true, '2025-05-18 23:21:36.062304+06', 5);
INSERT INTO public.quiz_questions VALUES (757, 'Hot structure push would arm recognize.?', 'medium', true, '2025-05-18 23:21:36.062321+06', 6);
INSERT INTO public.quiz_questions VALUES (758, 'Order two many soldier opportunity art improve real back.?', 'medium', true, '2025-05-18 23:21:36.062337+06', 1);
INSERT INTO public.quiz_questions VALUES (759, 'National poor cup wait win bad maintain maintain two worker spring cause pressure.?', 'easy', true, '2025-05-18 23:21:36.062352+06', 5);
INSERT INTO public.quiz_questions VALUES (760, 'Mention use all mission development clearly time big control state.?', 'hard', true, '2025-05-18 23:21:36.062367+06', 8);
INSERT INTO public.quiz_questions VALUES (761, 'Home write nothing gun every different me stage threat ever enjoy ground there.?', 'easy', true, '2025-05-18 23:21:36.062383+06', 3);
INSERT INTO public.quiz_questions VALUES (762, 'Those plan particular table world message career.?', 'hard', true, '2025-05-18 23:21:36.062398+06', 7);
INSERT INTO public.quiz_questions VALUES (763, 'Current rest per oil quality position task soon.?', 'hard', true, '2025-05-18 23:21:36.062413+06', 4);
INSERT INTO public.quiz_questions VALUES (764, 'Paper recently real bag job ten artist although.?', 'medium', true, '2025-05-18 23:21:36.062429+06', 10);
INSERT INTO public.quiz_questions VALUES (765, 'Someone prevent right including movement arm.?', 'easy', true, '2025-05-18 23:21:36.062444+06', 7);
INSERT INTO public.quiz_questions VALUES (766, 'Through society floor character teacher some once law perform parent political.?', 'hard', true, '2025-05-18 23:21:36.062459+06', 3);
INSERT INTO public.quiz_questions VALUES (767, 'Read yard ok discussion walk they experience ground phone people point.?', 'medium', true, '2025-05-18 23:21:36.062474+06', 5);
INSERT INTO public.quiz_questions VALUES (768, 'Sound front spend create manage glass mouth name star time high.?', 'easy', true, '2025-05-18 23:21:36.06249+06', 10);
INSERT INTO public.quiz_questions VALUES (769, 'Dog commercial activity him respond chance role dinner anything if.?', 'hard', true, '2025-05-18 23:21:36.062505+06', 5);
INSERT INTO public.quiz_questions VALUES (770, 'Back skill season thousand.?', 'medium', true, '2025-05-18 23:21:36.06252+06', 1);
INSERT INTO public.quiz_questions VALUES (771, 'Somebody easy administration high direction.?', 'easy', true, '2025-05-18 23:21:36.062535+06', 7);
INSERT INTO public.quiz_questions VALUES (772, 'Along happy themselves hold dark degree town film get local.?', 'easy', true, '2025-05-18 23:21:36.062551+06', 5);
INSERT INTO public.quiz_questions VALUES (773, 'Identify now that close performance as year check last drive debate project beat skill bed soldier address.?', 'hard', true, '2025-05-18 23:21:36.062566+06', 7);
INSERT INTO public.quiz_questions VALUES (774, 'Small forget head fund if usually sort offer page let begin.?', 'hard', true, '2025-05-18 23:21:36.062581+06', 3);
INSERT INTO public.quiz_questions VALUES (775, 'Drug authority interesting best lead suggest college material.?', 'medium', true, '2025-05-18 23:21:36.062597+06', 3);
INSERT INTO public.quiz_questions VALUES (776, 'To any learn Democrat control do usually.?', 'hard', true, '2025-05-18 23:21:36.062612+06', 7);
INSERT INTO public.quiz_questions VALUES (777, 'Shake movie whether film.?', 'medium', true, '2025-05-18 23:21:36.062627+06', 3);
INSERT INTO public.quiz_questions VALUES (778, 'Whom position trade throw money process marriage bank.?', 'medium', true, '2025-05-18 23:21:36.062643+06', 2);
INSERT INTO public.quiz_questions VALUES (779, 'Single including investment course speech under writer street.?', 'easy', true, '2025-05-18 23:21:36.062658+06', 8);
INSERT INTO public.quiz_questions VALUES (780, 'Record work boy six six information.?', 'easy', true, '2025-05-18 23:21:36.062673+06', 4);
INSERT INTO public.quiz_questions VALUES (781, 'Stop even more role ability product role plan.?', 'easy', true, '2025-05-18 23:21:36.062688+06', 6);
INSERT INTO public.quiz_questions VALUES (782, 'There still big hold class bar role approach respond herself win ahead agree rise size join whole as.?', 'hard', true, '2025-05-18 23:21:36.062703+06', 3);
INSERT INTO public.quiz_questions VALUES (783, 'Bag develop sit nation care phone late.?', 'hard', true, '2025-05-18 23:21:36.062724+06', 10);
INSERT INTO public.quiz_questions VALUES (784, 'Land job our when free it fine international return administration shoulder manage such then discuss significant.?', 'medium', true, '2025-05-18 23:21:36.062741+06', 1);
INSERT INTO public.quiz_questions VALUES (785, 'Board fear morning heavy almost out let chance relationship adult that training wonder name suddenly sort guy.?', 'medium', true, '2025-05-18 23:21:36.062757+06', 5);
INSERT INTO public.quiz_questions VALUES (786, 'Million story service company water interesting knowledge than type oil while direction side value election president.?', 'easy', true, '2025-05-18 23:21:36.062772+06', 2);
INSERT INTO public.quiz_questions VALUES (787, 'Everything how staff agent shoulder until reduce job.?', 'easy', true, '2025-05-18 23:21:36.062788+06', 6);
INSERT INTO public.quiz_questions VALUES (788, 'Do training really race local finally night positive image sea work other debate turn them near hope brother.?', 'hard', true, '2025-05-18 23:21:36.062807+06', 7);
INSERT INTO public.quiz_questions VALUES (789, 'Himself politics shake show only throw.?', 'medium', true, '2025-05-18 23:21:36.062823+06', 1);
INSERT INTO public.quiz_questions VALUES (790, 'Society question something speak various key mouth.?', 'hard', true, '2025-05-18 23:21:36.062839+06', 8);
INSERT INTO public.quiz_questions VALUES (791, 'Use letter decision her too much among everybody easy without lose example population turn more when yourself team.?', 'easy', true, '2025-05-18 23:21:36.062855+06', 8);
INSERT INTO public.quiz_questions VALUES (792, 'Yes fund plan cup apply growth economic during bank.?', 'medium', true, '2025-05-18 23:21:36.06287+06', 2);
INSERT INTO public.quiz_questions VALUES (793, 'Edge skin majority energy among represent power blue rock relate certain situation issue husband time I ok keep keep.?', 'hard', true, '2025-05-18 23:21:36.062885+06', 1);
INSERT INTO public.quiz_questions VALUES (794, 'Both analysis rich race school radio focus it television summer into career.?', 'medium', true, '2025-05-18 23:21:36.062901+06', 6);
INSERT INTO public.quiz_questions VALUES (795, 'Work why sing practice main reality contain form music computer record single Democrat.?', 'medium', true, '2025-05-18 23:21:36.062916+06', 5);
INSERT INTO public.quiz_questions VALUES (796, 'Lot garden represent draw third name chair audience.?', 'easy', true, '2025-05-18 23:21:36.062932+06', 2);
INSERT INTO public.quiz_questions VALUES (797, 'Foot imagine you support thousand crime day wonder left four for stand stock mean bag continue as various story.?', 'medium', true, '2025-05-18 23:21:36.062947+06', 2);
INSERT INTO public.quiz_questions VALUES (798, 'Candidate why market lose newspaper magazine southern recent training.?', 'easy', true, '2025-05-18 23:21:36.062963+06', 8);
INSERT INTO public.quiz_questions VALUES (799, 'Measure design marriage not team investment identify how just child he one every return feeling mother.?', 'easy', true, '2025-05-18 23:21:36.062978+06', 2);
INSERT INTO public.quiz_questions VALUES (800, 'Speak area per growth suffer less drive school.?', 'easy', true, '2025-05-18 23:21:36.062993+06', 4);
INSERT INTO public.quiz_questions VALUES (801, 'This who everyone always fast one.?', 'easy', true, '2025-05-18 23:21:36.063009+06', 10);
INSERT INTO public.quiz_questions VALUES (802, 'Letter rich husband wish be authority time cut house people may yes about ten join if prove ago.?', 'easy', true, '2025-05-18 23:21:36.063024+06', 10);
INSERT INTO public.quiz_questions VALUES (803, 'When value little suggest in.?', 'easy', true, '2025-05-18 23:21:36.06304+06', 2);
INSERT INTO public.quiz_questions VALUES (804, 'Career forget think among group this create marriage such amount change several which when special street difference school.?', 'hard', true, '2025-05-18 23:21:36.063055+06', 3);
INSERT INTO public.quiz_questions VALUES (805, 'Financial pay glass process key raise clearly share may weight age today sing.?', 'easy', true, '2025-05-18 23:21:36.063071+06', 3);
INSERT INTO public.quiz_questions VALUES (806, 'College himself fast coach defense then game election bill exist light that fly senior management.?', 'medium', true, '2025-05-18 23:21:36.063087+06', 3);
INSERT INTO public.quiz_questions VALUES (807, 'Other wonder what specific hold federal hundred.?', 'hard', true, '2025-05-18 23:21:36.063102+06', 10);
INSERT INTO public.quiz_questions VALUES (808, 'Voice other article gas design individual which describe address forward hard prepare team bad authority set buy fear quality light.?', 'medium', true, '2025-05-18 23:21:36.063117+06', 4);
INSERT INTO public.quiz_questions VALUES (809, 'Class become dinner nearly sister easy why sound condition head shake.?', 'easy', true, '2025-05-18 23:21:36.063133+06', 3);
INSERT INTO public.quiz_questions VALUES (810, 'Ever who early model yard campaign sell system.?', 'easy', true, '2025-05-18 23:21:36.063148+06', 1);
INSERT INTO public.quiz_questions VALUES (811, 'Age without contain skin may professional may not focus.?', 'easy', true, '2025-05-18 23:21:36.063164+06', 10);
INSERT INTO public.quiz_questions VALUES (812, 'Opportunity car energy door require happy success process score animal central.?', 'easy', true, '2025-05-18 23:21:36.063179+06', 2);
INSERT INTO public.quiz_questions VALUES (813, 'Cut dark no well should what remain sound character one work act prove particular.?', 'easy', true, '2025-05-18 23:21:36.063195+06', 10);
INSERT INTO public.quiz_questions VALUES (814, 'Item step floor score remain develop mother.?', 'medium', true, '2025-05-18 23:21:36.06321+06', 5);
INSERT INTO public.quiz_questions VALUES (815, 'Media buy term happen fly pass role international story ask score conference deep both treatment however parent.?', 'hard', true, '2025-05-18 23:21:36.063226+06', 10);
INSERT INTO public.quiz_questions VALUES (816, 'Nearly sign as billion real debate.?', 'medium', true, '2025-05-18 23:21:36.063241+06', 4);
INSERT INTO public.quiz_questions VALUES (817, 'Rate traditional expert three heavy risk through sit none if produce get.?', 'easy', true, '2025-05-18 23:21:36.063256+06', 6);
INSERT INTO public.quiz_questions VALUES (818, 'Hard drive authority bring each season statement approach include national fast would as conference everything share.?', 'hard', true, '2025-05-18 23:21:36.063272+06', 5);
INSERT INTO public.quiz_questions VALUES (819, 'Record race of investment garden health thank if visit test least community through energy.?', 'easy', true, '2025-05-18 23:21:36.063291+06', 3);
INSERT INTO public.quiz_questions VALUES (820, 'Seek responsibility participant admit director chance training speech enjoy easy another world probably know western bar spend.?', 'hard', true, '2025-05-18 23:21:36.063307+06', 3);
INSERT INTO public.quiz_questions VALUES (821, 'Situation report sign entire message throughout condition agree politics lose its west.?', 'medium', true, '2025-05-18 23:21:36.063323+06', 1);
INSERT INTO public.quiz_questions VALUES (822, 'Raise not eat follow set.?', 'medium', true, '2025-05-18 23:21:36.063339+06', 1);
INSERT INTO public.quiz_questions VALUES (823, 'Door family age product what job no culture order key perform people week understand call describe off man represent.?', 'easy', true, '2025-05-18 23:21:36.063354+06', 6);
INSERT INTO public.quiz_questions VALUES (824, 'Seek add give investment similar peace thousand.?', 'hard', true, '2025-05-18 23:21:36.06337+06', 4);
INSERT INTO public.quiz_questions VALUES (825, 'Hear natural begin arm.?', 'medium', true, '2025-05-18 23:21:36.063385+06', 2);
INSERT INTO public.quiz_questions VALUES (826, 'City send meet standard himself huge explain check he authority.?', 'hard', true, '2025-05-18 23:21:36.063401+06', 7);
INSERT INTO public.quiz_questions VALUES (827, 'Hit room describe.?', 'easy', true, '2025-05-18 23:21:36.063416+06', 1);
INSERT INTO public.quiz_questions VALUES (828, 'Community support he million here group represent cup guess free water travel approach back subject can home five upon herself.?', 'hard', true, '2025-05-18 23:21:36.063432+06', 6);
INSERT INTO public.quiz_questions VALUES (829, 'So maybe other question ahead spend various old page right happy record box.?', 'easy', true, '2025-05-18 23:21:36.063451+06', 8);
INSERT INTO public.quiz_questions VALUES (830, 'Whatever decade key political item bring.?', 'easy', true, '2025-05-18 23:21:36.063467+06', 6);
INSERT INTO public.quiz_questions VALUES (831, 'Through car determine baby sound child day record stop can reduce reality ago smile organization write serious.?', 'hard', true, '2025-05-18 23:21:36.063483+06', 8);
INSERT INTO public.quiz_questions VALUES (832, 'Threat husband push operation treatment its cover century politics ahead.?', 'medium', true, '2025-05-18 23:21:36.063498+06', 6);
INSERT INTO public.quiz_questions VALUES (833, 'Gun add although southern.?', 'easy', true, '2025-05-18 23:21:36.063514+06', 2);
INSERT INTO public.quiz_questions VALUES (834, 'Fish protect series hit away speak stay.?', 'medium', true, '2025-05-18 23:21:36.063529+06', 7);
INSERT INTO public.quiz_questions VALUES (835, 'Doctor short couple agency early dinner pick.?', 'easy', true, '2025-05-18 23:21:36.063545+06', 2);
INSERT INTO public.quiz_questions VALUES (836, 'Drive threat cost point parent clear book Mrs.?', 'medium', true, '2025-05-18 23:21:36.06356+06', 7);
INSERT INTO public.quiz_questions VALUES (837, 'Pressure finish as follow cost writer former everyone director.?', 'hard', true, '2025-05-18 23:21:36.063576+06', 3);
INSERT INTO public.quiz_questions VALUES (838, 'Also mention here important whether social case address many picture participant involve tough early.?', 'easy', true, '2025-05-18 23:21:36.063591+06', 5);
INSERT INTO public.quiz_questions VALUES (839, 'Whole everyone learn none new evidence market so support thought seven put assume yard.?', 'easy', true, '2025-05-18 23:21:36.063607+06', 2);
INSERT INTO public.quiz_questions VALUES (840, 'Heavy exactly land blue film themselves window others everybody future protect.?', 'medium', true, '2025-05-18 23:21:36.063622+06', 6);
INSERT INTO public.quiz_questions VALUES (841, 'View page none little hear down author again step establish.?', 'medium', true, '2025-05-18 23:21:36.063638+06', 2);
INSERT INTO public.quiz_questions VALUES (842, 'Life sometimes board his behavior his live operation success role feel anyone marriage property guy tough attorney add.?', 'easy', true, '2025-05-18 23:21:36.063653+06', 2);
INSERT INTO public.quiz_questions VALUES (843, 'Relate until camera more let least together heavy remember market tonight radio imagine speak.?', 'hard', true, '2025-05-18 23:21:36.063669+06', 4);
INSERT INTO public.quiz_questions VALUES (844, 'Dark both control indeed top adult within fine.?', 'medium', true, '2025-05-18 23:21:36.063684+06', 6);
INSERT INTO public.quiz_questions VALUES (845, 'Girl eat couple nor range win.?', 'medium', true, '2025-05-18 23:21:36.0637+06', 1);
INSERT INTO public.quiz_questions VALUES (846, 'Human table various reveal speak his once total call able late share data speak chance.?', 'easy', true, '2025-05-18 23:21:36.06372+06', 3);
INSERT INTO public.quiz_questions VALUES (847, 'Well civil protect interesting section increase.?', 'medium', true, '2025-05-18 23:21:36.063737+06', 6);
INSERT INTO public.quiz_questions VALUES (848, 'Vote use radio campaign.?', 'hard', true, '2025-05-18 23:21:36.063753+06', 8);
INSERT INTO public.quiz_questions VALUES (849, 'Spend kid weight major board today soon mind cell skin.?', 'easy', true, '2025-05-18 23:21:36.063768+06', 2);
INSERT INTO public.quiz_questions VALUES (850, 'Sit free car season.?', 'easy', true, '2025-05-18 23:21:36.063784+06', 8);
INSERT INTO public.quiz_questions VALUES (851, 'Court ago effect authority safe food year against green six foreign.?', 'medium', true, '2025-05-18 23:21:36.063803+06', 1);
INSERT INTO public.quiz_questions VALUES (852, 'Prepare tree child not.?', 'easy', true, '2025-05-18 23:21:36.06382+06', 10);
INSERT INTO public.quiz_questions VALUES (853, 'Hour room local employee event enough protect rule financial tonight after.?', 'medium', true, '2025-05-18 23:21:36.063836+06', 6);
INSERT INTO public.quiz_questions VALUES (854, 'Thank talk effect bill mean election write so very.?', 'hard', true, '2025-05-18 23:21:36.063851+06', 5);
INSERT INTO public.quiz_questions VALUES (855, 'Skill heart whatever artist along me life establish stuff thing environment attack result.?', 'hard', true, '2025-05-18 23:21:36.063867+06', 7);
INSERT INTO public.quiz_questions VALUES (856, 'Surface member size throughout mind.?', 'medium', true, '2025-05-18 23:21:36.063882+06', 8);
INSERT INTO public.quiz_questions VALUES (857, 'Claim mother off standard their into company marriage event area art but.?', 'hard', true, '2025-05-18 23:21:36.063898+06', 5);
INSERT INTO public.quiz_questions VALUES (858, 'Both color over standard action talk gun human help west against local report price even watch bank.?', 'easy', true, '2025-05-18 23:21:36.063913+06', 4);
INSERT INTO public.quiz_questions VALUES (859, 'Organization off early personal reason executive agreement authority keep development.?', 'hard', true, '2025-05-18 23:21:36.063929+06', 5);
INSERT INTO public.quiz_questions VALUES (860, 'East though force right newspaper into something fly south common father past stuff cold.?', 'medium', true, '2025-05-18 23:21:36.063944+06', 3);
INSERT INTO public.quiz_questions VALUES (861, 'College charge couple grow investment there summer attorney if six buy.?', 'easy', true, '2025-05-18 23:21:36.06396+06', 7);
INSERT INTO public.quiz_questions VALUES (862, 'Again whom hot.?', 'hard', true, '2025-05-18 23:21:36.063975+06', 2);
INSERT INTO public.quiz_questions VALUES (863, 'Address teach near whom lose one point.?', 'easy', true, '2025-05-18 23:21:36.06399+06', 8);
INSERT INTO public.quiz_questions VALUES (864, 'Both democratic home stop word radio recent.?', 'medium', true, '2025-05-18 23:21:36.064006+06', 3);
INSERT INTO public.quiz_questions VALUES (865, 'Degree wait or education audience grow prepare hold artist.?', 'medium', true, '2025-05-18 23:21:36.064021+06', 1);
INSERT INTO public.quiz_questions VALUES (866, 'Full stock participant Mrs store list.?', 'hard', true, '2025-05-18 23:21:36.064037+06', 10);
INSERT INTO public.quiz_questions VALUES (867, 'Wind practice year teacher score sure treatment doctor deep offer would successful audience who total share speak.?', 'hard', true, '2025-05-18 23:21:36.064052+06', 4);
INSERT INTO public.quiz_questions VALUES (868, 'Choice father my task admit.?', 'medium', true, '2025-05-18 23:21:36.064068+06', 7);
INSERT INTO public.quiz_questions VALUES (869, 'Quite staff peace per half sing nor certain send political stay bank way position rate opportunity.?', 'hard', true, '2025-05-18 23:21:36.064083+06', 6);
INSERT INTO public.quiz_questions VALUES (870, 'Song arm shoulder not myself community full state.?', 'easy', true, '2025-05-18 23:21:36.064099+06', 10);
INSERT INTO public.quiz_questions VALUES (871, 'People know exactly admit might reveal do recent join up tend hour everything.?', 'easy', true, '2025-05-18 23:21:36.064114+06', 5);
INSERT INTO public.quiz_questions VALUES (872, 'Partner arm culture direction someone.?', 'hard', true, '2025-05-18 23:21:36.06413+06', 7);
INSERT INTO public.quiz_questions VALUES (873, 'Cut ready board responsibility sort per among activity establish available art radio grow.?', 'hard', true, '2025-05-18 23:21:36.064145+06', 2);
INSERT INTO public.quiz_questions VALUES (874, 'Market street carry number husband might pressure including see.?', 'hard', true, '2025-05-18 23:21:36.064161+06', 3);
INSERT INTO public.quiz_questions VALUES (875, 'Deal enter meeting strategy month dinner imagine with see list mission.?', 'easy', true, '2025-05-18 23:21:36.064176+06', 4);
INSERT INTO public.quiz_questions VALUES (876, 'Cold else machine interest door girl red.?', 'easy', true, '2025-05-18 23:21:36.064191+06', 7);
INSERT INTO public.quiz_questions VALUES (877, 'Drop order dark risk goal ground author.?', 'hard', true, '2025-05-18 23:21:36.064207+06', 2);
INSERT INTO public.quiz_questions VALUES (878, 'Walk seat fight man everything edge.?', 'hard', true, '2025-05-18 23:21:36.064222+06', 4);
INSERT INTO public.quiz_questions VALUES (879, 'Serve carry energy wrong turn possible under report.?', 'hard', true, '2025-05-18 23:21:36.064237+06', 8);
INSERT INTO public.quiz_questions VALUES (880, 'Argue cut son throw fear four natural budget training age.?', 'easy', true, '2025-05-18 23:21:36.064253+06', 6);
INSERT INTO public.quiz_questions VALUES (881, 'Miss fast while project opportunity card common measure there with article central perhaps lead for take owner store.?', 'easy', true, '2025-05-18 23:21:36.064268+06', 1);
INSERT INTO public.quiz_questions VALUES (882, 'School radio concern main opportunity fine degree.?', 'easy', true, '2025-05-18 23:21:36.064287+06', 10);
INSERT INTO public.quiz_questions VALUES (883, 'Race hotel lead administration billion throw every at expect.?', 'easy', true, '2025-05-18 23:21:36.064303+06', 8);
INSERT INTO public.quiz_questions VALUES (884, 'Even that actually simply lay nation another fill view learn five say financial here investment while.?', 'medium', true, '2025-05-18 23:21:36.064319+06', 1);
INSERT INTO public.quiz_questions VALUES (885, 'Whatever light important line take.?', 'medium', true, '2025-05-18 23:21:36.064334+06', 8);
INSERT INTO public.quiz_questions VALUES (886, 'Treat strategy company fall they attention south have.?', 'easy', true, '2025-05-18 23:21:36.06435+06', 3);
INSERT INTO public.quiz_questions VALUES (887, 'Its how recently exist understand certain blue people ability truth Democrat bit card various nor ask.?', 'easy', true, '2025-05-18 23:21:36.064365+06', 3);
INSERT INTO public.quiz_questions VALUES (888, 'Chance scientist assume approach left Democrat your community little case long practice already education.?', 'hard', true, '2025-05-18 23:21:36.064381+06', 7);
INSERT INTO public.quiz_questions VALUES (889, 'Perform simple show over perhaps thing politics chair term.?', 'medium', true, '2025-05-18 23:21:36.064396+06', 8);
INSERT INTO public.quiz_questions VALUES (890, 'Him economy miss reach in material thought door collection stand arrive somebody surface hear.?', 'hard', true, '2025-05-18 23:21:36.064411+06', 1);
INSERT INTO public.quiz_questions VALUES (892, 'Fall perhaps thank international material.?', 'medium', true, '2025-05-18 23:21:36.064442+06', 2);
INSERT INTO public.quiz_questions VALUES (893, 'Simply between subject blood recent everybody reveal decade.?', 'easy', true, '2025-05-18 23:21:36.064457+06', 10);
INSERT INTO public.quiz_questions VALUES (894, 'Bad structure respond through white not conference test.?', 'hard', true, '2025-05-18 23:21:36.064473+06', 3);
INSERT INTO public.quiz_questions VALUES (895, 'Leader get find book guy more.?', 'easy', true, '2025-05-18 23:21:36.064488+06', 10);
INSERT INTO public.quiz_questions VALUES (896, 'Determine light despite relate stand suggest smile dark change.?', 'easy', true, '2025-05-18 23:21:36.064504+06', 8);
INSERT INTO public.quiz_questions VALUES (897, 'Cell commercial building more issue once leave show deep particularly reduce if.?', 'hard', true, '2025-05-18 23:21:36.064519+06', 5);
INSERT INTO public.quiz_questions VALUES (898, 'Respond sound its west cultural adult suggest rather race economic.?', 'hard', true, '2025-05-18 23:21:36.064534+06', 4);
INSERT INTO public.quiz_questions VALUES (899, 'Behind suggest look quickly exactly since attorney.?', 'medium', true, '2025-05-18 23:21:36.064549+06', 5);
INSERT INTO public.quiz_questions VALUES (900, 'Line name today order growth first attention television player.?', 'hard', true, '2025-05-18 23:21:36.064565+06', 7);
INSERT INTO public.quiz_questions VALUES (901, 'Exactly project nearly power whatever art glass bad student quite.?', 'medium', true, '2025-05-18 23:21:36.06458+06', 5);
INSERT INTO public.quiz_questions VALUES (902, 'See voice coach performance threat spend often billion.?', 'easy', true, '2025-05-18 23:21:36.064595+06', 7);
INSERT INTO public.quiz_questions VALUES (903, 'Two model arm her practice.?', 'hard', true, '2025-05-18 23:21:36.064611+06', 6);
INSERT INTO public.quiz_questions VALUES (904, 'Foot TV beat surface would.?', 'medium', true, '2025-05-18 23:21:36.064626+06', 4);
INSERT INTO public.quiz_questions VALUES (905, 'Size someone wind memory.?', 'medium', true, '2025-05-18 23:21:36.064642+06', 7);
INSERT INTO public.quiz_questions VALUES (906, 'Defense region seem party card.?', 'medium', true, '2025-05-18 23:21:36.064657+06', 8);
INSERT INTO public.quiz_questions VALUES (907, 'Make garden writer window decade pretty reality receive total final drive.?', 'easy', true, '2025-05-18 23:21:36.064673+06', 7);
INSERT INTO public.quiz_questions VALUES (908, 'Require cultural house agreement available finally why seat third product food consider somebody mention story.?', 'medium', true, '2025-05-18 23:21:36.064689+06', 5);
INSERT INTO public.quiz_questions VALUES (909, 'Back once with vote drug brother soon beat total decision lay few different nearly.?', 'medium', true, '2025-05-18 23:21:36.064704+06', 4);
INSERT INTO public.quiz_questions VALUES (910, 'Never spring game truth miss measure last how strong total staff meet agreement pay short.?', 'easy', true, '2025-05-18 23:21:36.064725+06', 2);
INSERT INTO public.quiz_questions VALUES (911, 'Memory mother meet those arm author finish make behind night no probably.?', 'easy', true, '2025-05-18 23:21:36.064741+06', 3);
INSERT INTO public.quiz_questions VALUES (912, 'The true to sound thank near support school western why.?', 'medium', true, '2025-05-18 23:21:36.064757+06', 8);
INSERT INTO public.quiz_questions VALUES (913, 'Floor black thing natural cell possible.?', 'hard', true, '2025-05-18 23:21:36.064777+06', 5);
INSERT INTO public.quiz_questions VALUES (914, 'Develop capital bag language painting central.?', 'hard', true, '2025-05-18 23:21:36.064799+06', 8);
INSERT INTO public.quiz_questions VALUES (915, 'Part then place success coach friend watch these carry level.?', 'hard', true, '2025-05-18 23:21:36.064815+06', 2);
INSERT INTO public.quiz_questions VALUES (916, 'Agency of know look buy we attention put laugh level event himself west.?', 'hard', true, '2025-05-18 23:21:36.064831+06', 1);
INSERT INTO public.quiz_questions VALUES (917, 'Minute land final teach test world off itself draw win around white officer agency doctor let eat game example.?', 'medium', true, '2025-05-18 23:21:36.064846+06', 2);
INSERT INTO public.quiz_questions VALUES (918, 'Focus economic easy ask letter wide everybody reason machine billion class point staff culture present.?', 'hard', true, '2025-05-18 23:21:36.064862+06', 1);
INSERT INTO public.quiz_questions VALUES (919, 'Then open end pick participant coach window actually respond story indicate true part skill someone.?', 'medium', true, '2025-05-18 23:21:36.064877+06', 7);
INSERT INTO public.quiz_questions VALUES (920, 'Director dog manager move eye impact more without.?', 'hard', true, '2025-05-18 23:21:36.064892+06', 2);
INSERT INTO public.quiz_questions VALUES (921, 'Visit message your give will north.?', 'easy', true, '2025-05-18 23:21:36.064908+06', 2);
INSERT INTO public.quiz_questions VALUES (922, 'Cut increase speech save mission.?', 'easy', true, '2025-05-18 23:21:36.064923+06', 3);
INSERT INTO public.quiz_questions VALUES (923, 'To near debate.?', 'medium', true, '2025-05-18 23:21:36.064939+06', 7);
INSERT INTO public.quiz_questions VALUES (924, 'Piece science focus whom Democrat that management nature.?', 'easy', true, '2025-05-18 23:21:36.064954+06', 6);
INSERT INTO public.quiz_questions VALUES (925, 'Seem for ok ball somebody sort simply picture pull possible meeting region fear whose to eight spring.?', 'hard', true, '2025-05-18 23:21:36.064969+06', 10);
INSERT INTO public.quiz_questions VALUES (926, 'Approach rise issue section mention able arrive same interesting.?', 'medium', true, '2025-05-18 23:21:36.064985+06', 2);
INSERT INTO public.quiz_questions VALUES (927, 'Seem develop at sing increase add suddenly trade particularly call participant federal exactly.?', 'medium', true, '2025-05-18 23:21:36.065+06', 1);
INSERT INTO public.quiz_questions VALUES (928, 'Up night health actually ahead truth read size seek him yard.?', 'easy', true, '2025-05-18 23:21:36.065015+06', 4);
INSERT INTO public.quiz_questions VALUES (929, 'Mention Mrs while when including region according positive note themselves people guess office.?', 'medium', true, '2025-05-18 23:21:36.065031+06', 10);
INSERT INTO public.quiz_questions VALUES (930, 'Article coach fear he tough list small store each model.?', 'hard', true, '2025-05-18 23:21:36.065046+06', 5);
INSERT INTO public.quiz_questions VALUES (931, 'Region begin put nor behind focus little risk maybe question low least democratic east effort however.?', 'medium', true, '2025-05-18 23:21:36.065061+06', 10);
INSERT INTO public.quiz_questions VALUES (932, 'Technology sort of short course much.?', 'medium', true, '2025-05-18 23:21:36.065077+06', 10);
INSERT INTO public.quiz_questions VALUES (933, 'Court yourself appear word where part career seek so law believe test responsibility share wind want himself including evidence.?', 'medium', true, '2025-05-18 23:21:36.065092+06', 7);
INSERT INTO public.quiz_questions VALUES (934, 'Employee start hair action control fill body analysis speak act include whatever beat program public people from.?', 'medium', true, '2025-05-18 23:21:36.065108+06', 7);
INSERT INTO public.quiz_questions VALUES (935, 'Third pretty decision resource suffer benefit your ready behavior kitchen big value scene single.?', 'hard', true, '2025-05-18 23:21:36.065123+06', 6);
INSERT INTO public.quiz_questions VALUES (936, 'Decision debate full stage focus eight couple place country brother field.?', 'hard', true, '2025-05-18 23:21:36.065138+06', 8);
INSERT INTO public.quiz_questions VALUES (937, 'Yourself high blue international always growth beyond.?', 'hard', true, '2025-05-18 23:21:36.065153+06', 2);
INSERT INTO public.quiz_questions VALUES (938, 'Admit hand throughout thousand if half across him among color happen real campaign difficult maybe.?', 'easy', true, '2025-05-18 23:21:36.065169+06', 8);
INSERT INTO public.quiz_questions VALUES (939, 'Thought himself anything either father arrive most know fear feeling.?', 'medium', true, '2025-05-18 23:21:36.065184+06', 8);
INSERT INTO public.quiz_questions VALUES (940, 'Network talk study single force north low career about public.?', 'easy', true, '2025-05-18 23:21:36.065199+06', 3);
INSERT INTO public.quiz_questions VALUES (941, 'Building pick pass loss so even set score detail pick figure.?', 'hard', true, '2025-05-18 23:21:36.065215+06', 4);
INSERT INTO public.quiz_questions VALUES (942, 'Right leave environment kind arm save night.?', 'hard', true, '2025-05-18 23:21:36.06523+06', 1);
INSERT INTO public.quiz_questions VALUES (943, 'Note near training question result chair.?', 'easy', true, '2025-05-18 23:21:36.065245+06', 4);
INSERT INTO public.quiz_questions VALUES (944, 'Would let the partner PM.?', 'easy', true, '2025-05-18 23:21:36.065261+06', 3);
INSERT INTO public.quiz_questions VALUES (945, 'There tough board tough fish important six play out upon.?', 'easy', true, '2025-05-18 23:21:36.065279+06', 2);
INSERT INTO public.quiz_questions VALUES (946, 'Positive our pick sign point machine south customer side relate.?', 'medium', true, '2025-05-18 23:21:36.065296+06', 6);
INSERT INTO public.quiz_questions VALUES (947, 'Particularly Republican risk behind outside talk country group heart term else experience growth network sound discussion natural natural.?', 'hard', true, '2025-05-18 23:21:36.065311+06', 1);
INSERT INTO public.quiz_questions VALUES (948, 'Fall site remain mother have result that give on loss.?', 'medium', true, '2025-05-18 23:21:36.065327+06', 3);
INSERT INTO public.quiz_questions VALUES (949, 'Program themselves better yet recognize suggest people cell race build PM down behind explain tree travel million.?', 'easy', true, '2025-05-18 23:21:36.065342+06', 1);
INSERT INTO public.quiz_questions VALUES (950, 'Low usually foreign fact news.?', 'easy', true, '2025-05-18 23:21:36.065358+06', 3);
INSERT INTO public.quiz_questions VALUES (951, 'Radio either improve room half western point analysis never interest value floor visit food care.?', 'hard', true, '2025-05-18 23:21:36.065373+06', 3);
INSERT INTO public.quiz_questions VALUES (952, 'Responsibility let our skill.?', 'easy', true, '2025-05-18 23:21:36.065388+06', 3);
INSERT INTO public.quiz_questions VALUES (953, 'Back guess quite join drive car able on off daughter energy.?', 'easy', true, '2025-05-18 23:21:36.065404+06', 10);
INSERT INTO public.quiz_questions VALUES (954, 'Effort whom we local federal throw source more.?', 'easy', true, '2025-05-18 23:21:36.065419+06', 8);
INSERT INTO public.quiz_questions VALUES (955, 'Couple walk amount myself do.?', 'hard', true, '2025-05-18 23:21:36.065434+06', 2);
INSERT INTO public.quiz_questions VALUES (956, 'Quality before ago usually.?', 'hard', true, '2025-05-18 23:21:36.065449+06', 7);
INSERT INTO public.quiz_questions VALUES (957, 'Specific maybe lead hope rule bed religious size my experience.?', 'easy', true, '2025-05-18 23:21:36.065465+06', 6);
INSERT INTO public.quiz_questions VALUES (958, 'Account last community when such suggest structure data always happy seven manage both will.?', 'easy', true, '2025-05-18 23:21:36.06548+06', 5);
INSERT INTO public.quiz_questions VALUES (959, 'Senior style so population push.?', 'easy', true, '2025-05-18 23:21:36.065496+06', 7);
INSERT INTO public.quiz_questions VALUES (960, 'Tonight soon trade finish tough ask third next.?', 'medium', true, '2025-05-18 23:21:36.065511+06', 10);
INSERT INTO public.quiz_questions VALUES (961, 'As lot cell figure look example himself environmental life.?', 'easy', true, '2025-05-18 23:21:36.065527+06', 4);
INSERT INTO public.quiz_questions VALUES (962, 'Plan speak role discover amount use toward peace meet represent concern market.?', 'easy', true, '2025-05-18 23:21:36.065542+06', 1);
INSERT INTO public.quiz_questions VALUES (963, 'Others above clear democratic interest child enter out well inside school realize.?', 'hard', true, '2025-05-18 23:21:36.065557+06', 1);
INSERT INTO public.quiz_questions VALUES (964, 'Several over past and enjoy each.?', 'easy', true, '2025-05-18 23:21:36.065572+06', 4);
INSERT INTO public.quiz_questions VALUES (965, 'Doctor nearly collection.?', 'hard', true, '2025-05-18 23:21:36.065588+06', 4);
INSERT INTO public.quiz_questions VALUES (966, 'Story party lose toward for though.?', 'medium', true, '2025-05-18 23:21:36.065603+06', 3);
INSERT INTO public.quiz_questions VALUES (967, 'Fear general lead cold administration type surface too dream benefit wonder join appear positive teacher.?', 'hard', true, '2025-05-18 23:21:36.065619+06', 3);
INSERT INTO public.quiz_questions VALUES (968, 'Will kind despite collection particular cold street herself by.?', 'hard', true, '2025-05-18 23:21:36.065634+06', 8);
INSERT INTO public.quiz_questions VALUES (969, 'Then cold can commercial.?', 'easy', true, '2025-05-18 23:21:36.065649+06', 1);
INSERT INTO public.quiz_questions VALUES (970, 'Pass nature enter theory partner receive tell type pull final drive plan authority office.?', 'medium', true, '2025-05-18 23:21:36.065664+06', 5);
INSERT INTO public.quiz_questions VALUES (971, 'Argue as movement reveal history people ten early.?', 'medium', true, '2025-05-18 23:21:36.06568+06', 5);
INSERT INTO public.quiz_questions VALUES (972, 'Event down rule major service authority religious.?', 'medium', true, '2025-05-18 23:21:36.065695+06', 4);
INSERT INTO public.quiz_questions VALUES (973, 'Nice politics bill situation yet attention class turn.?', 'medium', true, '2025-05-18 23:21:36.065715+06', 1);
INSERT INTO public.quiz_questions VALUES (974, 'Such question available sort.?', 'easy', true, '2025-05-18 23:21:36.065732+06', 1);
INSERT INTO public.quiz_questions VALUES (975, 'When here social professor agent join quite yet character article.?', 'easy', true, '2025-05-18 23:21:36.065748+06', 2);
INSERT INTO public.quiz_questions VALUES (976, 'Piece imagine four ever clearly.?', 'easy', true, '2025-05-18 23:21:36.065764+06', 1);
INSERT INTO public.quiz_questions VALUES (977, 'Hard run occur rise family view consumer close.?', 'hard', true, '2025-05-18 23:21:36.065783+06', 4);
INSERT INTO public.quiz_questions VALUES (978, 'Those charge whom miss show.?', 'easy', true, '2025-05-18 23:21:36.065799+06', 5);
INSERT INTO public.quiz_questions VALUES (979, 'However same smile key write step under pass avoid.?', 'hard', true, '2025-05-18 23:21:36.065825+06', 3);
INSERT INTO public.quiz_questions VALUES (980, 'Place myself occur man rise current position crime.?', 'easy', true, '2025-05-18 23:21:36.065855+06', 8);
INSERT INTO public.quiz_questions VALUES (981, 'Threat difference who.?', 'easy', true, '2025-05-18 23:21:36.065896+06', 1);
INSERT INTO public.quiz_questions VALUES (982, 'The page range available quickly quite past very doctor follow claim.?', 'hard', true, '2025-05-18 23:21:36.065927+06', 5);
INSERT INTO public.quiz_questions VALUES (983, 'Fine different across matter turn child knowledge without data among choose fear.?', 'medium', true, '2025-05-18 23:21:36.065947+06', 1);
INSERT INTO public.quiz_questions VALUES (984, 'Include us maybe range all professional sense everybody reality civil probably war lay accept.?', 'hard', true, '2025-05-18 23:21:36.065964+06', 3);
INSERT INTO public.quiz_questions VALUES (985, 'Bill ten hold necessary pass save decide research out message of.?', 'hard', true, '2025-05-18 23:21:36.065981+06', 7);
INSERT INTO public.quiz_questions VALUES (986, 'Right pay believe meeting evening until poor firm believe she sell huge paper.?', 'hard', true, '2025-05-18 23:21:36.065997+06', 5);
INSERT INTO public.quiz_questions VALUES (987, 'Skin make walk idea event sister need positive able page.?', 'hard', true, '2025-05-18 23:21:36.066014+06', 4);
INSERT INTO public.quiz_questions VALUES (988, 'Require town bill big goal computer heavy adult partner.?', 'hard', true, '2025-05-18 23:21:36.066031+06', 1);
INSERT INTO public.quiz_questions VALUES (989, 'Determine treat already you.?', 'easy', true, '2025-05-18 23:21:36.066062+06', 5);
INSERT INTO public.quiz_questions VALUES (990, 'Court different industry spend environmental rate player later sign international study recent truth pattern she point likely.?', 'hard', true, '2025-05-18 23:21:36.066093+06', 10);
INSERT INTO public.quiz_questions VALUES (991, 'Fish say perhaps magazine usually lay cost address certainly.?', 'hard', true, '2025-05-18 23:21:36.066121+06', 4);
INSERT INTO public.quiz_questions VALUES (992, 'Pm board good age.?', 'easy', true, '2025-05-18 23:21:36.066139+06', 5);
INSERT INTO public.quiz_questions VALUES (993, 'Fund spend experience all school itself scene vote night.?', 'easy', true, '2025-05-18 23:21:36.066156+06', 8);
INSERT INTO public.quiz_questions VALUES (994, 'Term PM strong none American answer eye success.?', 'hard', true, '2025-05-18 23:21:36.066182+06', 1);
INSERT INTO public.quiz_questions VALUES (995, 'Source them environmental century should recently current agree wife blue.?', 'easy', true, '2025-05-18 23:21:36.066198+06', 2);
INSERT INTO public.quiz_questions VALUES (996, 'Then reality central discover into including well total indicate.?', 'easy', true, '2025-05-18 23:21:36.066213+06', 6);
INSERT INTO public.quiz_questions VALUES (997, 'Though himself course each nothing strategy try vote most along first share whole may shake.?', 'hard', true, '2025-05-18 23:21:36.066253+06', 10);
INSERT INTO public.quiz_questions VALUES (998, 'Night wind senior economic general benefit research low piece keep dark relationship bad make perform evidence budget.?', 'hard', true, '2025-05-18 23:21:36.066279+06', 8);
INSERT INTO public.quiz_questions VALUES (999, 'Quite news safe happy.?', 'medium', true, '2025-05-18 23:21:36.066297+06', 3);
INSERT INTO public.quiz_questions VALUES (1000, 'Also physical parent result well Republican type but.?', 'easy', true, '2025-05-18 23:21:36.066314+06', 5);
INSERT INTO public.quiz_questions VALUES (1001, 'Few address federal chair under adult play since.?', 'medium', true, '2025-05-18 23:21:36.066331+06', 7);
INSERT INTO public.quiz_questions VALUES (1002, 'Painting writer concern plan factor ago risk coach large listen station person in poor.?', 'easy', true, '2025-05-18 23:21:36.066348+06', 2);
INSERT INTO public.quiz_questions VALUES (1003, 'Certainly challenge close coach detail type hundred kind modern fund line seat.?', 'easy', true, '2025-05-18 23:21:36.066374+06', 4);
INSERT INTO public.quiz_questions VALUES (1004, 'Strategy human discover individual.?', 'hard', true, '2025-05-18 23:21:36.06639+06', 6);
INSERT INTO public.quiz_questions VALUES (1005, 'Color network instead care off option fly relate attorney inside high site tough up recently focus.?', 'hard', true, '2025-05-18 23:21:36.066406+06', 6);
INSERT INTO public.quiz_questions VALUES (1006, 'Save instead road help forward note issue buy when various news source evening.?', 'medium', true, '2025-05-18 23:21:36.066421+06', 7);
INSERT INTO public.quiz_questions VALUES (1007, 'Someone project unit people as college necessary employee beat page personal degree speak better simply.?', 'hard', true, '2025-05-18 23:21:36.066437+06', 1);
INSERT INTO public.quiz_questions VALUES (1008, 'Whatever door let lot accept decision so opportunity through interview case evidence on seek poor serve.?', 'easy', true, '2025-05-18 23:21:36.066457+06', 2);
INSERT INTO public.quiz_questions VALUES (1009, 'Authority mission kind reflect teach along its sign attention.?', 'medium', true, '2025-05-18 23:21:36.066474+06', 4);
INSERT INTO public.quiz_questions VALUES (1010, 'Success doctor debate.?', 'hard', true, '2025-05-18 23:21:36.06649+06', 8);
INSERT INTO public.quiz_questions VALUES (1011, 'Which when believe throughout rather western very or right reveal there teacher.?', 'medium', true, '2025-05-18 23:21:36.066505+06', 8);
INSERT INTO public.quiz_questions VALUES (1012, 'Whatever early remain technology down.?', 'hard', true, '2025-05-18 23:21:36.066521+06', 1);
INSERT INTO public.quiz_questions VALUES (1013, 'Traditional take add bill everybody hope because understand sign drive.?', 'hard', true, '2025-05-18 23:21:36.066536+06', 2);
INSERT INTO public.quiz_questions VALUES (1014, 'How region smile sport into indeed entire wonder meet school free leave.?', 'easy', true, '2025-05-18 23:21:36.066552+06', 5);
INSERT INTO public.quiz_questions VALUES (1015, 'Bit weight through position history local civil free baby life paper.?', 'medium', true, '2025-05-18 23:21:36.066568+06', 2);
INSERT INTO public.quiz_questions VALUES (1016, 'I imagine both picture hope glass.?', 'medium', true, '2025-05-18 23:21:36.066583+06', 5);
INSERT INTO public.quiz_questions VALUES (1017, 'You energy property challenge ball admit unit another lose nor girl require.?', 'medium', true, '2025-05-18 23:21:36.066599+06', 3);
INSERT INTO public.quiz_questions VALUES (1018, 'Music ok product machine.?', 'hard', true, '2025-05-18 23:21:36.066615+06', 3);
INSERT INTO public.quiz_questions VALUES (1019, 'Win up reason base try value voice employee civil month perhaps environmental firm.?', 'easy', true, '2025-05-18 23:21:36.06663+06', 6);
INSERT INTO public.quiz_questions VALUES (1020, 'Let floor inside hold design notice management east key book hot.?', 'medium', true, '2025-05-18 23:21:36.066646+06', 5);
INSERT INTO public.quiz_questions VALUES (1021, 'Town factor effort ok option boy along though still interest another inside none bed past baby degree treatment.?', 'easy', true, '2025-05-18 23:21:36.066661+06', 8);
INSERT INTO public.quiz_questions VALUES (1022, 'Clearly ability air involve happen itself have top this.?', 'hard', true, '2025-05-18 23:21:36.066676+06', 8);
INSERT INTO public.quiz_questions VALUES (1023, 'Teach knowledge plan industry list owner employee animal may low budget force need improve peace lot customer.?', 'easy', true, '2025-05-18 23:21:36.066692+06', 7);
INSERT INTO public.quiz_questions VALUES (1024, 'Certain coach evidence out identify class support shake imagine and true team together.?', 'medium', true, '2025-05-18 23:21:36.066708+06', 5);
INSERT INTO public.quiz_questions VALUES (1025, 'Author quality feel statement enough speech experience up.?', 'hard', true, '2025-05-18 23:21:36.066744+06', 10);
INSERT INTO public.quiz_questions VALUES (1026, 'Catch coach cup both go old will wife paper deep anything ago region since front ago.?', 'easy', true, '2025-05-18 23:21:36.066772+06', 4);
INSERT INTO public.quiz_questions VALUES (1027, 'Number read talk necessary ok bring sell ground Mr bar professional.?', 'easy', true, '2025-05-18 23:21:36.066788+06', 6);
INSERT INTO public.quiz_questions VALUES (1028, 'People ten traditional Mrs.?', 'hard', true, '2025-05-18 23:21:36.066804+06', 1);
INSERT INTO public.quiz_questions VALUES (1029, 'Something team however remember team.?', 'medium', true, '2025-05-18 23:21:36.066819+06', 1);
INSERT INTO public.quiz_questions VALUES (1030, 'Science girl for friend his approach TV exist.?', 'easy', true, '2025-05-18 23:21:36.066835+06', 2);
INSERT INTO public.quiz_questions VALUES (1031, 'Certainly rather discuss role hot son phone senior.?', 'easy', true, '2025-05-18 23:21:36.066851+06', 2);
INSERT INTO public.quiz_questions VALUES (1032, 'Police foreign record necessary whom process after herself.?', 'hard', true, '2025-05-18 23:21:36.066866+06', 8);
INSERT INTO public.quiz_questions VALUES (1033, 'Full live position member pick.?', 'easy', true, '2025-05-18 23:21:36.066881+06', 7);
INSERT INTO public.quiz_questions VALUES (1034, 'Poor where see other people time but security hit dog act ahead better sport.?', 'medium', true, '2025-05-18 23:21:36.066897+06', 4);
INSERT INTO public.quiz_questions VALUES (1035, 'Bag close black participant job include item peace reality this want large you also.?', 'hard', true, '2025-05-18 23:21:36.066912+06', 2);
INSERT INTO public.quiz_questions VALUES (1036, 'Describe though society can kind newspaper skill purpose make most because foreign what final.?', 'easy', true, '2025-05-18 23:21:36.066928+06', 6);
INSERT INTO public.quiz_questions VALUES (1037, 'President their through speak imagine game never range soldier final ten suggest shake explain measure where interesting message song reason.?', 'easy', true, '2025-05-18 23:21:36.066944+06', 4);
INSERT INTO public.quiz_questions VALUES (1038, 'Agree eat near wish land.?', 'easy', true, '2025-05-18 23:21:36.066959+06', 4);


--
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
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);


--
-- Name: quiz_choices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_choices_id_seq', 72, true);


--
-- Name: quiz_question_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_question_category_id_seq', 10, true);


--
-- Name: quiz_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_questions_id_seq', 1038, true);


--
-- Name: quiz_quiz_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_quiz_categories_id_seq', 5, true);


--
-- Name: quiz_quiz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_quiz_id_seq', 2, true);


--
-- Name: quiz_quizsession_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_quizsession_id_seq', 71, true);


--
-- Name: quiz_quizsessionquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_quizsessionquestion_id_seq', 218, true);


--
-- Name: quiz_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_users_id_seq', 24, true);


--
-- Name: quiz_usersolutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_usersolutions_id_seq', 188, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: quiz_choices quiz_choices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_choices
    ADD CONSTRAINT quiz_choices_pkey PRIMARY KEY (id);


--
-- Name: quiz_question_category quiz_question_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_question_category
    ADD CONSTRAINT quiz_question_category_pkey PRIMARY KEY (id);


--
-- Name: quiz_questions quiz_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_questions
    ADD CONSTRAINT quiz_questions_pkey PRIMARY KEY (id);


--
-- Name: quiz_info_categories quiz_quiz_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_info_categories
    ADD CONSTRAINT quiz_quiz_categories_pkey PRIMARY KEY (id);


--
-- Name: quiz_info_categories quiz_quiz_categories_quiz_id_question_category_id_0660f50b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_info_categories
    ADD CONSTRAINT quiz_quiz_categories_quiz_id_question_category_id_0660f50b_uniq UNIQUE (quiz_id, question_category_id);


--
-- Name: quiz_info quiz_quiz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_info
    ADD CONSTRAINT quiz_quiz_pkey PRIMARY KEY (id);


--
-- Name: quiz_quizsession quiz_quizsession_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_quizsession
    ADD CONSTRAINT quiz_quizsession_pkey PRIMARY KEY (id);


--
-- Name: quiz_quizsessionquestion quiz_quizsessionquestion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_quizsessionquestion
    ADD CONSTRAINT quiz_quizsessionquestion_pkey PRIMARY KEY (id);


--
-- Name: quiz_users quiz_users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_users
    ADD CONSTRAINT quiz_users_email_key UNIQUE (email);


--
-- Name: quiz_users quiz_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_users
    ADD CONSTRAINT quiz_users_pkey PRIMARY KEY (id);


--
-- Name: quiz_usersolutions quiz_usersolutions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_usersolutions
    ADD CONSTRAINT quiz_usersolutions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: quiz_choices_question_id_91499dec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_choices_question_id_91499dec ON public.quiz_choices USING btree (question_id);


--
-- Name: quiz_questions_category_id_a6061467; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_questions_category_id_a6061467 ON public.quiz_questions USING btree (category_id);


--
-- Name: quiz_quiz_categories_question_category_id_5f0005e5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_quiz_categories_question_category_id_5f0005e5 ON public.quiz_info_categories USING btree (question_category_id);


--
-- Name: quiz_quiz_categories_quiz_id_4c68732f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_quiz_categories_quiz_id_4c68732f ON public.quiz_info_categories USING btree (quiz_id);


--
-- Name: quiz_quizsession_quiz_id_id_3252d910; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_quizsession_quiz_id_id_3252d910 ON public.quiz_quizsession USING btree (quiz_id_id);


--
-- Name: quiz_quizsession_user_id_189bbd7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_quizsession_user_id_189bbd7d ON public.quiz_quizsession USING btree (user_id);


--
-- Name: quiz_quizsessionquestion_questions_id_45de61b4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_quizsessionquestion_questions_id_45de61b4 ON public.quiz_quizsessionquestion USING btree (questions_id);


--
-- Name: quiz_quizsessionquestion_quiz_session_id_ede2b4f0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_quizsessionquestion_quiz_session_id_ede2b4f0 ON public.quiz_quizsessionquestion USING btree (quiz_session_id);


--
-- Name: quiz_users_email_54010888_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_users_email_54010888_like ON public.quiz_users USING btree (email varchar_pattern_ops);


--
-- Name: quiz_usersolutions_question_id_9ed283ac; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_usersolutions_question_id_9ed283ac ON public.quiz_usersolutions USING btree (question_id);


--
-- Name: quiz_usersolutions_quiz_session_id_06ebf55e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_usersolutions_quiz_session_id_06ebf55e ON public.quiz_usersolutions USING btree (quiz_session_id);


--
-- Name: quiz_usersolutions_selected_answer_id_f5b9f47c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_usersolutions_selected_answer_id_f5b9f47c ON public.quiz_usersolutions USING btree (selected_answer_id);


--
-- Name: quiz_usersolutions_user_id_6856aa3f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quiz_usersolutions_user_id_6856aa3f ON public.quiz_usersolutions USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_quiz_users_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_quiz_users_id FOREIGN KEY (user_id) REFERENCES public.quiz_users(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_choices quiz_choices_question_id_91499dec_fk_quiz_questions_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_choices
    ADD CONSTRAINT quiz_choices_question_id_91499dec_fk_quiz_questions_id FOREIGN KEY (question_id) REFERENCES public.quiz_questions(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_questions quiz_questions_category_id_a6061467_fk_quiz_ques; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_questions
    ADD CONSTRAINT quiz_questions_category_id_a6061467_fk_quiz_ques FOREIGN KEY (category_id) REFERENCES public.quiz_question_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_info_categories quiz_quiz_categories_question_category_id_5f0005e5_fk_quiz_ques; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_info_categories
    ADD CONSTRAINT quiz_quiz_categories_question_category_id_5f0005e5_fk_quiz_ques FOREIGN KEY (question_category_id) REFERENCES public.quiz_question_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_info_categories quiz_quiz_categories_quiz_id_4c68732f_fk_quiz_quiz_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_info_categories
    ADD CONSTRAINT quiz_quiz_categories_quiz_id_4c68732f_fk_quiz_quiz_id FOREIGN KEY (quiz_id) REFERENCES public.quiz_info(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_quizsession quiz_quizsession_quiz_id_id_3252d910_fk_quiz_info_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_quizsession
    ADD CONSTRAINT quiz_quizsession_quiz_id_id_3252d910_fk_quiz_info_id FOREIGN KEY (quiz_id_id) REFERENCES public.quiz_info(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_quizsession quiz_quizsession_user_id_189bbd7d_fk_quiz_users_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_quizsession
    ADD CONSTRAINT quiz_quizsession_user_id_189bbd7d_fk_quiz_users_id FOREIGN KEY (user_id) REFERENCES public.quiz_users(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_quizsessionquestion quiz_quizsessionques_questions_id_45de61b4_fk_quiz_ques; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_quizsessionquestion
    ADD CONSTRAINT quiz_quizsessionques_questions_id_45de61b4_fk_quiz_ques FOREIGN KEY (questions_id) REFERENCES public.quiz_questions(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_quizsessionquestion quiz_quizsessionques_quiz_session_id_ede2b4f0_fk_quiz_quiz; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_quizsessionquestion
    ADD CONSTRAINT quiz_quizsessionques_quiz_session_id_ede2b4f0_fk_quiz_quiz FOREIGN KEY (quiz_session_id) REFERENCES public.quiz_quizsession(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_usersolutions quiz_usersolutions_question_id_9ed283ac_fk_quiz_questions_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_usersolutions
    ADD CONSTRAINT quiz_usersolutions_question_id_9ed283ac_fk_quiz_questions_id FOREIGN KEY (question_id) REFERENCES public.quiz_questions(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_usersolutions quiz_usersolutions_quiz_session_id_06ebf55e_fk_quiz_quiz; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_usersolutions
    ADD CONSTRAINT quiz_usersolutions_quiz_session_id_06ebf55e_fk_quiz_quiz FOREIGN KEY (quiz_session_id) REFERENCES public.quiz_quizsession(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_usersolutions quiz_usersolutions_selected_answer_id_f5b9f47c_fk_quiz_choi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_usersolutions
    ADD CONSTRAINT quiz_usersolutions_selected_answer_id_f5b9f47c_fk_quiz_choi FOREIGN KEY (selected_answer_id) REFERENCES public.quiz_choices(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quiz_usersolutions quiz_usersolutions_user_id_6856aa3f_fk_quiz_users_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_usersolutions
    ADD CONSTRAINT quiz_usersolutions_user_id_6856aa3f_fk_quiz_users_id FOREIGN KEY (user_id) REFERENCES public.quiz_users(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

