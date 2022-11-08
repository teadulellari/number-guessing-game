--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    player_id integer NOT NULL,
    attempts integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 8);
INSERT INTO public.games VALUES (2, 2, 4);
INSERT INTO public.games VALUES (3, 4, 6);
INSERT INTO public.games VALUES (4, 4, 1);
INSERT INTO public.games VALUES (5, 2, 1);
INSERT INTO public.games VALUES (6, 2, 1);
INSERT INTO public.games VALUES (7, 5, 4);
INSERT INTO public.games VALUES (8, 6, 113);
INSERT INTO public.games VALUES (9, 6, 458);
INSERT INTO public.games VALUES (10, 7, 423);
INSERT INTO public.games VALUES (11, 7, 242);
INSERT INTO public.games VALUES (12, 6, 584);
INSERT INTO public.games VALUES (13, 6, 513);
INSERT INTO public.games VALUES (14, 6, 184);
INSERT INTO public.games VALUES (15, 8, 482);
INSERT INTO public.games VALUES (16, 8, 850);
INSERT INTO public.games VALUES (17, 9, 973);
INSERT INTO public.games VALUES (18, 9, 148);
INSERT INTO public.games VALUES (19, 8, 1001);
INSERT INTO public.games VALUES (20, 8, 80);
INSERT INTO public.games VALUES (21, 8, 218);
INSERT INTO public.games VALUES (22, 10, 63);
INSERT INTO public.games VALUES (23, 10, 331);
INSERT INTO public.games VALUES (24, 11, 481);
INSERT INTO public.games VALUES (25, 11, 668);
INSERT INTO public.games VALUES (26, 10, 227);
INSERT INTO public.games VALUES (27, 10, 193);
INSERT INTO public.games VALUES (28, 10, 649);
INSERT INTO public.games VALUES (29, 12, 319);
INSERT INTO public.games VALUES (30, 12, 809);
INSERT INTO public.games VALUES (31, 13, 358);
INSERT INTO public.games VALUES (32, 13, 629);
INSERT INTO public.games VALUES (33, 12, 830);
INSERT INTO public.games VALUES (34, 12, 417);
INSERT INTO public.games VALUES (35, 12, 451);
INSERT INTO public.games VALUES (36, 14, 993);
INSERT INTO public.games VALUES (37, 14, 731);
INSERT INTO public.games VALUES (38, 15, 218);
INSERT INTO public.games VALUES (39, 15, 660);
INSERT INTO public.games VALUES (40, 14, 710);
INSERT INTO public.games VALUES (41, 14, 90);
INSERT INTO public.games VALUES (42, 14, 936);
INSERT INTO public.games VALUES (43, 16, 105);
INSERT INTO public.games VALUES (44, 16, 911);
INSERT INTO public.games VALUES (45, 17, 725);
INSERT INTO public.games VALUES (46, 17, 952);
INSERT INTO public.games VALUES (47, 16, 427);
INSERT INTO public.games VALUES (48, 16, 821);
INSERT INTO public.games VALUES (49, 16, 809);
INSERT INTO public.games VALUES (50, 18, 367);
INSERT INTO public.games VALUES (51, 18, 991);
INSERT INTO public.games VALUES (52, 19, 302);
INSERT INTO public.games VALUES (53, 19, 10);
INSERT INTO public.games VALUES (54, 18, 178);
INSERT INTO public.games VALUES (55, 18, 1001);
INSERT INTO public.games VALUES (56, 18, 857);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'Tea');
INSERT INTO public.players VALUES (2, 'Dela');
INSERT INTO public.players VALUES (3, 'Beko');
INSERT INTO public.players VALUES (4, 'Dudu');
INSERT INTO public.players VALUES (5, 'Rushi');
INSERT INTO public.players VALUES (6, 'user_1667939415579');
INSERT INTO public.players VALUES (7, 'user_1667939415578');
INSERT INTO public.players VALUES (8, 'user_1667939501217');
INSERT INTO public.players VALUES (9, 'user_1667939501216');
INSERT INTO public.players VALUES (10, 'user_1667939526885');
INSERT INTO public.players VALUES (11, 'user_1667939526884');
INSERT INTO public.players VALUES (12, 'user_1667939556297');
INSERT INTO public.players VALUES (13, 'user_1667939556296');
INSERT INTO public.players VALUES (14, 'user_1667939808628');
INSERT INTO public.players VALUES (15, 'user_1667939808627');
INSERT INTO public.players VALUES (16, 'user_1667940205904');
INSERT INTO public.players VALUES (17, 'user_1667940205903');
INSERT INTO public.players VALUES (18, 'user_1667940245932');
INSERT INTO public.players VALUES (19, 'user_1667940245931');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 19, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

