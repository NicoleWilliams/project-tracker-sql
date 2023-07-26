--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Homebrew)
-- Dumped by pg_dump version 14.8 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: projects; Type: TABLE; Schema: public; Owner: nicolewilliams
--

CREATE TABLE public.projects (
    title character varying(15) NOT NULL,
    description text,
    max_grade integer
);


ALTER TABLE public.projects OWNER TO nicolewilliams;

--
-- Name: students; Type: TABLE; Schema: public; Owner: nicolewilliams
--

CREATE TABLE public.students (
    github character varying(30) NOT NULL,
    first_name character varying(30),
    last_name character varying(30)
);


ALTER TABLE public.students OWNER TO nicolewilliams;

--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: nicolewilliams
--

COPY public.projects (title, description, max_grade) FROM stdin;
Markov	Tweets generated from Markov chains	50
Blockly	Programmatic Logic Puzzle Game	100
Baby Food	track what baby foods your kid has tried	75
Anime Calendar	notifies you when new animes are released	80
Attire	picks pieces from your closet and gives you outfit options	70
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: nicolewilliams
--

COPY public.students (github, first_name, last_name) FROM stdin;
jhacks	Jane	Hacker
sdevelops	Sarah	Developer
\.


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolewilliams
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (title);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolewilliams
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (github);


--
-- PostgreSQL database dump complete
--

