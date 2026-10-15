--
-- PostgreSQL database dump
--

\restrict JWOReWQCdVZgqhNqJ8SPFcXXRyQvv2eZET3VB2hFXPGVzDhisP33xpbsd1eFHjg

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg13+2)
-- Dumped by pg_dump version 18.6

-- Started on 2026-10-15 18:20:04 UTC

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 24651)
-- Name: rs12; Type: TABLE; Schema: public; Owner: ammshivam
--

CREATE TABLE public.rs12 (
    id integer NOT NULL,
    name character varying DEFAULT 'Boom'::character varying NOT NULL,
    age integer DEFAULT 23,
    email character varying(100),
    address character varying(500)
);


ALTER TABLE public.rs12 OWNER TO ammshivam;

--
-- TOC entry 219 (class 1259 OID 24648)
-- Name: rs15; Type: TABLE; Schema: public; Owner: ammshivam
--

CREATE TABLE public.rs15 (
    column_1 integer,
    column_2 character(1),
    column_3 date
);


ALTER TABLE public.rs15 OWNER TO ammshivam;

--
-- TOC entry 3446 (class 0 OID 24651)
-- Dependencies: 220
-- Data for Name: rs12; Type: TABLE DATA; Schema: public; Owner: ammshivam
--

COPY public.rs12 (id, name, age, email, address) FROM stdin;
101	Shivam Kumar	45	ammshivam@gmail.com	Kalindi Nagar
102	Raj Kumar	23	raj89w9@gmail.com	Buxar
103	Aryan Kumar	23	aryan89w9@gmail.com	Faridabad
104	Himanshu Upadhayay	34	himanshu231@gmail.com	Sri Nagar
105	Sneha Chaurasiya	12	sn72@gmail.com	Bangalore
106	jetha Lal	21	jetha@gmail.com	delhi
107	Shivam Kumar	34	ammshivam.research@gmail.com	Ballia
108	Aryan Kumar	34	aryan32@gmail.com	Faridabad
100	Sandhya Pandey	21	sandhyapandey1611@gmail.com	Buxar
109	Sandhya Pandey	20	san@gmail.com	Buxar
\.


--
-- TOC entry 3445 (class 0 OID 24648)
-- Dependencies: 219
-- Data for Name: rs15; Type: TABLE DATA; Schema: public; Owner: ammshivam
--

COPY public.rs15 (column_1, column_2, column_3) FROM stdin;
23	4	2026-12-04
23	4	2028-04-12
\.


--
-- TOC entry 3295 (class 2606 OID 24663)
-- Name: rs12 rs12_email_key; Type: CONSTRAINT; Schema: public; Owner: ammshivam
--

ALTER TABLE ONLY public.rs12
    ADD CONSTRAINT rs12_email_key UNIQUE (email);


--
-- TOC entry 3297 (class 2606 OID 24661)
-- Name: rs12 rs12_pkey; Type: CONSTRAINT; Schema: public; Owner: ammshivam
--

ALTER TABLE ONLY public.rs12
    ADD CONSTRAINT rs12_pkey PRIMARY KEY (id);


-- Completed on 2026-10-15 18:20:05 UTC

--
-- PostgreSQL database dump complete
--

\unrestrict JWOReWQCdVZgqhNqJ8SPFcXXRyQvv2eZET3VB2hFXPGVzDhisP33xpbsd1eFHjg

