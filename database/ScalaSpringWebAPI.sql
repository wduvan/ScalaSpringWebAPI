--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.21
-- Dumped by pg_dump version 11.2

-- Started on 2019-03-18 14:31:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "ScalaSpringWebAPI";
--
-- TOC entry 1936 (class 1262 OID 18315)
-- Name: ScalaSpringWebAPI; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "ScalaSpringWebAPI" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';


ALTER DATABASE "ScalaSpringWebAPI" OWNER TO postgres;

\connect "ScalaSpringWebAPI"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 18332)
-- Name: authorities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authorities (
    id integer DEFAULT nextval(('authority_id_seq'::text)::regclass) NOT NULL,
    username character varying(150) NOT NULL,
    authority character varying(50) NOT NULL
);


ALTER TABLE public.authorities OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 18316)
-- Name: authority_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authority_id_seq OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 18324)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer DEFAULT nextval(('users_id_seq'::text)::regclass) NOT NULL,
    username character varying(150) NOT NULL,
    password character varying(150) NOT NULL,
    enabled boolean
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 18322)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 1930 (class 0 OID 18332)
-- Dependencies: 172
-- Data for Name: authorities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.authorities (id, username, authority) VALUES (1, 'root', 'ROLE_user');
INSERT INTO public.authorities (id, username, authority) VALUES (2, 'root', 'ROLE_admin');
INSERT INTO public.authorities (id, username, authority) VALUES (3, 'user', 'ROLE_user');


--
-- TOC entry 1929 (class 0 OID 18324)
-- Dependencies: 171
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, username, password, enabled) VALUES (1, 'root', 'root', true);
INSERT INTO public.users (id, username, password, enabled) VALUES (2, 'user', 'user', true);


--
-- TOC entry 1938 (class 0 OID 0)
-- Dependencies: 169
-- Name: authority_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authority_id_seq', 1, false);


--
-- TOC entry 1939 (class 0 OID 0)
-- Dependencies: 170
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 1819 (class 2606 OID 18351)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- TOC entry 1820 (class 2606 OID 18352)
-- Name: authorities fk_authorities_users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authorities
    ADD CONSTRAINT fk_authorities_users FOREIGN KEY (username) REFERENCES public.users(username);


--
-- TOC entry 1937 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-03-18 14:31:18

--
-- PostgreSQL database dump complete
--

