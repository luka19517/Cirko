--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2023-01-29 16:16:13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: cirko; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA cirko;


ALTER SCHEMA cirko OWNER TO pg_database_owner;

--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA cirko; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA cirko IS 'standard cirko schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 32950)
-- Name: attachment; Type: TABLE; Schema: cirko; Owner: postgres
--

CREATE TABLE cirko.attachment (
    id bigint NOT NULL,
    dataid bigint NOT NULL,
    uploadeddatetime date NOT NULL,
    uploadedby bigint NOT NULL,
    type text NOT NULL,
    content text NOT NULL
);


ALTER TABLE cirko.attachment OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 32984)
-- Name: attachment_id_seq; Type: SEQUENCE; Schema: cirko; Owner: postgres
--

CREATE SEQUENCE cirko.attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cirko.attachment_id_seq OWNER TO postgres;

--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 220
-- Name: attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: cirko; Owner: postgres
--

ALTER SEQUENCE cirko.attachment_id_seq OWNED BY cirko.attachment.id;


--
-- TOC entry 217 (class 1259 OID 32923)
-- Name: backlog; Type: TABLE; Schema: cirko; Owner: postgres
--

CREATE TABLE cirko.backlog (
    id bigint NOT NULL,
    createddatetime date NOT NULL,
    createdby bigint NOT NULL,
    name text NOT NULL,
    startdatetime date NOT NULL,
    enddatetime date NOT NULL,
    percentcompleted integer NOT NULL,
    backlogpriority text NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE cirko.backlog OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 32985)
-- Name: backlog_id_seq; Type: SEQUENCE; Schema: cirko; Owner: postgres
--

CREATE SEQUENCE cirko.backlog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cirko.backlog_id_seq OWNER TO postgres;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 221
-- Name: backlog_id_seq; Type: SEQUENCE OWNED BY; Schema: cirko; Owner: postgres
--

ALTER SEQUENCE cirko.backlog_id_seq OWNED BY cirko.backlog.id;


--
-- TOC entry 215 (class 1259 OID 32873)
-- Name: backlogpriority; Type: TABLE; Schema: cirko; Owner: postgres
--

CREATE TABLE cirko.backlogpriority (
    id text NOT NULL,
    name text NOT NULL
);


ALTER TABLE cirko.backlogpriority OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 32911)
-- Name: task; Type: TABLE; Schema: cirko; Owner: postgres
--

CREATE TABLE cirko.task (
    id bigint NOT NULL,
    name text NOT NULL,
    createddatetime date NOT NULL,
    createdby bigint NOT NULL,
    backlog bigint NOT NULL,
    percentcompleted integer NOT NULL,
    parent bigint NOT NULL,
    startdatetime date NOT NULL,
    enddatetime date NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE cirko.task OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 32988)
-- Name: task_id_seq; Type: SEQUENCE; Schema: cirko; Owner: postgres
--

CREATE SEQUENCE cirko.task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cirko.task_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 224
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: cirko; Owner: postgres
--

ALTER SEQUENCE cirko.task_id_seq OWNED BY cirko.task.id;


--
-- TOC entry 219 (class 1259 OID 32962)
-- Name: tasklog; Type: TABLE; Schema: cirko; Owner: postgres
--

CREATE TABLE cirko.tasklog (
    id bigint NOT NULL,
    task bigint NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    createddatetime date NOT NULL,
    createdby bigint NOT NULL,
    timespent double precision NOT NULL
);


ALTER TABLE cirko.tasklog OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 32987)
-- Name: tasklog_id_seq; Type: SEQUENCE; Schema: cirko; Owner: postgres
--

CREATE SEQUENCE cirko.tasklog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cirko.tasklog_id_seq OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 223
-- Name: tasklog_id_seq; Type: SEQUENCE OWNED BY; Schema: cirko; Owner: postgres
--

ALTER SEQUENCE cirko.tasklog_id_seq OWNED BY cirko.tasklog.id;


--
-- TOC entry 214 (class 1259 OID 32864)
-- Name: user; Type: TABLE; Schema: cirko; Owner: postgres
--

CREATE TABLE cirko."user" (
    id bigint NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    registrationdatetime date NOT NULL
);


ALTER TABLE cirko."user" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 32986)
-- Name: user_id_seq; Type: SEQUENCE; Schema: cirko; Owner: postgres
--

CREATE SEQUENCE cirko.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cirko.user_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 222
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: cirko; Owner: postgres
--

ALTER SEQUENCE cirko.user_id_seq OWNED BY cirko."user".id;


--
-- TOC entry 3365 (class 0 OID 32950)
-- Dependencies: 218
-- Data for Name: attachment; Type: TABLE DATA; Schema: cirko; Owner: postgres
--

COPY cirko.attachment (id, dataid, uploadeddatetime, uploadedby, type, content) FROM stdin;
\.


--
-- TOC entry 3364 (class 0 OID 32923)
-- Dependencies: 217
-- Data for Name: backlog; Type: TABLE DATA; Schema: cirko; Owner: postgres
--

COPY cirko.backlog (id, createddatetime, createdby, name, startdatetime, enddatetime, percentcompleted, backlogpriority, active) FROM stdin;
\.


--
-- TOC entry 3362 (class 0 OID 32873)
-- Dependencies: 215
-- Data for Name: backlogpriority; Type: TABLE DATA; Schema: cirko; Owner: postgres
--

COPY cirko.backlogpriority (id, name) FROM stdin;
\.


--
-- TOC entry 3363 (class 0 OID 32911)
-- Dependencies: 216
-- Data for Name: task; Type: TABLE DATA; Schema: cirko; Owner: postgres
--

COPY cirko.task (id, name, createddatetime, createdby, backlog, percentcompleted, parent, startdatetime, enddatetime, active) FROM stdin;
\.


--
-- TOC entry 3366 (class 0 OID 32962)
-- Dependencies: 219
-- Data for Name: tasklog; Type: TABLE DATA; Schema: cirko; Owner: postgres
--

COPY cirko.tasklog (id, task, title, description, createddatetime, createdby, timespent) FROM stdin;
\.


--
-- TOC entry 3361 (class 0 OID 32864)
-- Dependencies: 214
-- Data for Name: user; Type: TABLE DATA; Schema: cirko; Owner: postgres
--

COPY cirko."user" (id, username, password, registrationdatetime) FROM stdin;
\.


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 220
-- Name: attachment_id_seq; Type: SEQUENCE SET; Schema: cirko; Owner: postgres
--

SELECT pg_catalog.setval('cirko.attachment_id_seq', 1, false);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 221
-- Name: backlog_id_seq; Type: SEQUENCE SET; Schema: cirko; Owner: postgres
--

SELECT pg_catalog.setval('cirko.backlog_id_seq', 1, false);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 224
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: cirko; Owner: postgres
--

SELECT pg_catalog.setval('cirko.task_id_seq', 1, false);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 223
-- Name: tasklog_id_seq; Type: SEQUENCE SET; Schema: cirko; Owner: postgres
--

SELECT pg_catalog.setval('cirko.tasklog_id_seq', 1, false);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 222
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: cirko; Owner: postgres
--

SELECT pg_catalog.setval('cirko.user_id_seq', 1, false);


--
-- TOC entry 3198 (class 2606 OID 32872)
-- Name: user ak_user1; Type: CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko."user"
    ADD CONSTRAINT ak_user1 UNIQUE (username);


--
-- TOC entry 3208 (class 2606 OID 32956)
-- Name: attachment attachment_pkey; Type: CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.attachment
    ADD CONSTRAINT attachment_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 32929)
-- Name: backlog backlog_pkey; Type: CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.backlog
    ADD CONSTRAINT backlog_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 32879)
-- Name: backlogpriority backlogpriority_pkey; Type: CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.backlogpriority
    ADD CONSTRAINT backlogpriority_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 32917)
-- Name: task task_pkey; Type: CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 32968)
-- Name: tasklog tasklog_pkey; Type: CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.tasklog
    ADD CONSTRAINT tasklog_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 32870)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 32957)
-- Name: attachment attachment_fk1; Type: FK CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.attachment
    ADD CONSTRAINT attachment_fk1 FOREIGN KEY (uploadedby) REFERENCES cirko."user"(id);


--
-- TOC entry 3214 (class 2606 OID 32930)
-- Name: backlog fk_backlog1; Type: FK CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.backlog
    ADD CONSTRAINT fk_backlog1 FOREIGN KEY (createdby) REFERENCES cirko."user"(id);


--
-- TOC entry 3215 (class 2606 OID 32935)
-- Name: backlog fk_backlog2; Type: FK CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.backlog
    ADD CONSTRAINT fk_backlog2 FOREIGN KEY (backlogpriority) REFERENCES cirko.backlogpriority(id);


--
-- TOC entry 3211 (class 2606 OID 32918)
-- Name: task fk_task1; Type: FK CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.task
    ADD CONSTRAINT fk_task1 FOREIGN KEY (createdby) REFERENCES cirko."user"(id);


--
-- TOC entry 3212 (class 2606 OID 32940)
-- Name: task fk_task2; Type: FK CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.task
    ADD CONSTRAINT fk_task2 FOREIGN KEY (backlog) REFERENCES cirko.backlog(id) NOT VALID;


--
-- TOC entry 3213 (class 2606 OID 32945)
-- Name: task fk_task3; Type: FK CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.task
    ADD CONSTRAINT fk_task3 FOREIGN KEY (parent) REFERENCES cirko.task(id) NOT VALID;


--
-- TOC entry 3217 (class 2606 OID 32974)
-- Name: tasklog fk_tasklog2; Type: FK CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.tasklog
    ADD CONSTRAINT fk_tasklog2 FOREIGN KEY (createdby) REFERENCES cirko."user"(id);


--
-- TOC entry 3218 (class 2606 OID 32969)
-- Name: tasklog tasklog_fk1; Type: FK CONSTRAINT; Schema: cirko; Owner: postgres
--

ALTER TABLE ONLY cirko.tasklog
    ADD CONSTRAINT tasklog_fk1 FOREIGN KEY (task) REFERENCES cirko.task(id);


-- Completed on 2023-01-29 16:16:13

--
-- PostgreSQL database dump complete
--

