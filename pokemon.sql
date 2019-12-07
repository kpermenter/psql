--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: pokemon_db; Type: TABLE; Schema: public; Owner: katharinepermenter
--

CREATE TABLE public.pokemon_db (
    id integer NOT NULL,
    name character varying,
    type character varying,
    "evolvesFromId" integer
);


ALTER TABLE public.pokemon_db OWNER TO katharinepermenter;

--
-- Name: pokemon_db_id_seq; Type: SEQUENCE; Schema: public; Owner: katharinepermenter
--

CREATE SEQUENCE public.pokemon_db_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pokemon_db_id_seq OWNER TO katharinepermenter;

--
-- Name: pokemon_db_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katharinepermenter
--

ALTER SEQUENCE public.pokemon_db_id_seq OWNED BY public.pokemon_db.id;


--
-- Name: trainers; Type: TABLE; Schema: public; Owner: katharinepermenter
--

CREATE TABLE public.trainers (
    id integer NOT NULL,
    name character varying,
    "isGymLeader" boolean,
    "pokemonSlot1" integer,
    "pokemonSlot2" integer,
    "pokemonSlot3" integer,
    "pokemonSlot4" integer,
    "pokemonSlot5" integer,
    "pokemonSlot6" integer
);


ALTER TABLE public.trainers OWNER TO katharinepermenter;

--
-- Name: trainers_id_seq; Type: SEQUENCE; Schema: public; Owner: katharinepermenter
--

CREATE SEQUENCE public.trainers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trainers_id_seq OWNER TO katharinepermenter;

--
-- Name: trainers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katharinepermenter
--

ALTER SEQUENCE public.trainers_id_seq OWNED BY public.trainers.id;


--
-- Name: pokemon_db id; Type: DEFAULT; Schema: public; Owner: katharinepermenter
--

ALTER TABLE ONLY public.pokemon_db ALTER COLUMN id SET DEFAULT nextval('public.pokemon_db_id_seq'::regclass);


--
-- Name: trainers id; Type: DEFAULT; Schema: public; Owner: katharinepermenter
--

ALTER TABLE ONLY public.trainers ALTER COLUMN id SET DEFAULT nextval('public.trainers_id_seq'::regclass);


--
-- Data for Name: pokemon_db; Type: TABLE DATA; Schema: public; Owner: katharinepermenter
--

COPY public.pokemon_db (id, name, type, "evolvesFromId") FROM stdin;
1	as	as	\N
2	Bulbasaur	Grass	\N
3	Ivysaur	Grass	1
13	Venusaur	Grass	2
14	Charmander	Fire	\N
15	Charmeleon	Fire	4
16	Charizard	Fire	5
17	Squirtle	Water	\N
18	Blastoise	Water	8
19	Caterpie	Bug	\N
20	Metapod	Bug	10
21	Butterfree	Bug	11
\.


--
-- Data for Name: trainers; Type: TABLE DATA; Schema: public; Owner: katharinepermenter
--

COPY public.trainers (id, name, "isGymLeader", "pokemonSlot1", "pokemonSlot2", "pokemonSlot3", "pokemonSlot4", "pokemonSlot5", "pokemonSlot6") FROM stdin;
1	Ash	f	1	10	\N	\N	\N	\N
2	Misty	t	7	\N	\N	\N	\N	\N
3	Brock	t	3	6	9	\N	\N	\N
4	Brock	t	3	6	9	\N	\N	\N
\.


--
-- Name: pokemon_db_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katharinepermenter
--

SELECT pg_catalog.setval('public.pokemon_db_id_seq', 21, true);


--
-- Name: trainers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katharinepermenter
--

SELECT pg_catalog.setval('public.trainers_id_seq', 6, true);


--
-- Name: pokemon_db pokemon_db_pkey; Type: CONSTRAINT; Schema: public; Owner: katharinepermenter
--

ALTER TABLE ONLY public.pokemon_db
    ADD CONSTRAINT pokemon_db_pkey PRIMARY KEY (id);


--
-- Name: trainers trainers_pkey; Type: CONSTRAINT; Schema: public; Owner: katharinepermenter
--

ALTER TABLE ONLY public.trainers
    ADD CONSTRAINT trainers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

