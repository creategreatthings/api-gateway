--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--


--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
-- PostgreSQL database dump complete
--

--
-- Database "film" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
-- Name: film; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE film WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE film OWNER TO postgres;

\connect film

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Actor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Actor" (
    id integer NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Actor" OWNER TO postgres;

--
-- Name: Actor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Actor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Actor_id_seq" OWNER TO postgres;

--
-- Name: Actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Actor_id_seq" OWNED BY public."Actor".id;


--
-- Name: Director; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Director" (
    id integer NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Director" OWNER TO postgres;

--
-- Name: Director_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Director_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Director_id_seq" OWNER TO postgres;

--
-- Name: Director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Director_id_seq" OWNED BY public."Director".id;


--
-- Name: Genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Genre" (
    id integer NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Genre" OWNER TO postgres;

--
-- Name: Genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Genre_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Genre_id_seq" OWNER TO postgres;

--
-- Name: Genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Genre_id_seq" OWNED BY public."Genre".id;


--
-- Name: Movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Movie" (
    id integer NOT NULL,
    title text NOT NULL,
    year integer NOT NULL,
    rating double precision NOT NULL,
    runtime integer NOT NULL,
    plot text NOT NULL,
    "posterUrl" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "directorId" integer NOT NULL
);


ALTER TABLE public."Movie" OWNER TO postgres;

--
-- Name: Movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Movie_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Movie_id_seq" OWNER TO postgres;

--
-- Name: Movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Movie_id_seq" OWNED BY public."Movie".id;


--
-- Name: _ActorToMovie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."_ActorToMovie" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


ALTER TABLE public."_ActorToMovie" OWNER TO postgres;

--
-- Name: _GenreToMovie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."_GenreToMovie" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


ALTER TABLE public."_GenreToMovie" OWNER TO postgres;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- Name: Actor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actor" ALTER COLUMN id SET DEFAULT nextval('public."Actor_id_seq"'::regclass);


--
-- Name: Director id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Director" ALTER COLUMN id SET DEFAULT nextval('public."Director_id_seq"'::regclass);


--
-- Name: Genre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genre" ALTER COLUMN id SET DEFAULT nextval('public."Genre_id_seq"'::regclass);


--
-- Name: Movie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Movie" ALTER COLUMN id SET DEFAULT nextval('public."Movie_id_seq"'::regclass);


--
-- Data for Name: Actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Actor" (id, name, "createdAt", "updatedAt") FROM stdin;
1	Leonardo DiCaprio	2023-12-31 21:59:39.435	2023-12-31 21:59:39.435
2	Brad Pitt	2023-12-31 21:59:39.435	2023-12-31 21:59:39.435
3	Tom Hanks	2023-12-31 21:59:39.435	2023-12-31 21:59:39.435
4	Robert De Niro	2023-12-31 21:59:39.435	2023-12-31 21:59:39.435
5	Arnold Schwarzenegger	2023-12-31 21:59:39.435	2023-12-31 21:59:39.435
6	Samuel L. Jackson	2023-12-31 21:59:39.435	2023-12-31 21:59:39.435
7	Tim Roth	2023-12-31 21:59:39.435	2023-12-31 21:59:39.435
8	John Travolta	2023-12-31 21:59:39.435	2023-12-31 21:59:39.435
9	Uma Thurman	2023-12-31 21:59:39.435	2023-12-31 21:59:39.435
\.


--
-- Data for Name: Director; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Director" (id, name, "createdAt", "updatedAt") FROM stdin;
1	Christopher Nolan	2023-12-31 21:59:39.38	2023-12-31 21:59:39.38
2	Quentin Tarantino	2023-12-31 21:59:39.38	2023-12-31 21:59:39.38
3	Steven Spielberg	2023-12-31 21:59:39.38	2023-12-31 21:59:39.38
4	Martin Scorsese	2023-12-31 21:59:39.38	2023-12-31 21:59:39.38
5	James Cameron	2023-12-31 21:59:39.38	2023-12-31 21:59:39.38
\.


--
-- Data for Name: Genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Genre" (id, name, "createdAt", "updatedAt") FROM stdin;
1	Action	2023-12-31 21:59:39.43	2023-12-31 21:59:39.43
2	Drama	2023-12-31 21:59:39.43	2023-12-31 21:59:39.43
3	Science Fiction	2023-12-31 21:59:39.43	2023-12-31 21:59:39.43
4	Comedy	2023-12-31 21:59:39.43	2023-12-31 21:59:39.43
5	Adventure	2023-12-31 21:59:39.43	2023-12-31 21:59:39.43
\.


--
-- Data for Name: Movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Movie" (id, title, year, rating, runtime, plot, "posterUrl", "createdAt", "updatedAt", "directorId") FROM stdin;
1	Inception	2010	8.8	148	A thief who enters the dreams of others to steal their secrets embarks on an ambitious heist.	https://example.com/poster1.jpg	2023-12-31 21:59:39.441	2023-12-31 21:59:39.441	1
2	Pulp Fiction	1994	8.9	154	The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine.	https://example.com/poster2.jpg	2023-12-31 21:59:39.441	2023-12-31 21:59:39.441	2
3	Schindler's List	1993	8.9	195	In Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.	https://example.com/poster3.jpg	2023-12-31 21:59:39.441	2023-12-31 21:59:39.441	3
4	Goodfellas	1990	8.7	146	The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.	https://example.com/poster4.jpg	2023-12-31 21:59:39.441	2023-12-31 21:59:39.441	4
5	Avatar	2009	7.8	162	A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.	https://example.com/poster5.jpg	2023-12-31 21:59:39.441	2023-12-31 21:59:39.441	5
\.


--
-- Data for Name: _ActorToMovie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."_ActorToMovie" ("A", "B") FROM stdin;
1	1
6	2
7	2
8	2
9	2
\.


--
-- Data for Name: _GenreToMovie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."_GenreToMovie" ("A", "B") FROM stdin;
1	1
2	2
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
20a57aba-5718-4316-afbc-66807ef9f232	eb506ff464d5a5b93c60e2efa82fe03608532bf8ad4c4a47f84f8b43a23e3831	2023-12-31 21:59:37.408797+00	20231230211041_init	\N	\N	2023-12-31 21:59:37.343861+00	1
\.


--
-- Name: Actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Actor_id_seq"', 9, true);


--
-- Name: Director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Director_id_seq"', 5, true);


--
-- Name: Genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Genre_id_seq"', 5, true);


--
-- Name: Movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Movie_id_seq"', 5, true);


--
-- Name: Actor Actor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actor"
    ADD CONSTRAINT "Actor_pkey" PRIMARY KEY (id);


--
-- Name: Director Director_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Director"
    ADD CONSTRAINT "Director_pkey" PRIMARY KEY (id);


--
-- Name: Genre Genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "Genre_pkey" PRIMARY KEY (id);


--
-- Name: Movie Movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Movie"
    ADD CONSTRAINT "Movie_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: _ActorToMovie_AB_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "_ActorToMovie_AB_unique" ON public."_ActorToMovie" USING btree ("A", "B");


--
-- Name: _ActorToMovie_B_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "_ActorToMovie_B_index" ON public."_ActorToMovie" USING btree ("B");


--
-- Name: _GenreToMovie_AB_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "_GenreToMovie_AB_unique" ON public."_GenreToMovie" USING btree ("A", "B");


--
-- Name: _GenreToMovie_B_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "_GenreToMovie_B_index" ON public."_GenreToMovie" USING btree ("B");


--
-- Name: Movie Movie_directorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Movie"
    ADD CONSTRAINT "Movie_directorId_fkey" FOREIGN KEY ("directorId") REFERENCES public."Director"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: _ActorToMovie _ActorToMovie_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_ActorToMovie"
    ADD CONSTRAINT "_ActorToMovie_A_fkey" FOREIGN KEY ("A") REFERENCES public."Actor"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ActorToMovie _ActorToMovie_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_ActorToMovie"
    ADD CONSTRAINT "_ActorToMovie_B_fkey" FOREIGN KEY ("B") REFERENCES public."Movie"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _GenreToMovie _GenreToMovie_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_GenreToMovie"
    ADD CONSTRAINT "_GenreToMovie_A_fkey" FOREIGN KEY ("A") REFERENCES public."Genre"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _GenreToMovie _GenreToMovie_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_GenreToMovie"
    ADD CONSTRAINT "_GenreToMovie_B_fkey" FOREIGN KEY ("B") REFERENCES public."Movie"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

