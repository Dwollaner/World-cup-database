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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    round character varying NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 'Final', 2018, 894, 895, 4, 2);
INSERT INTO public.games VALUES (34, 'Third Place', 2018, 896, 897, 2, 0);
INSERT INTO public.games VALUES (35, 'Semi-Final', 2018, 895, 897, 2, 1);
INSERT INTO public.games VALUES (36, 'Semi-Final', 2018, 894, 896, 1, 0);
INSERT INTO public.games VALUES (37, 'Quarter-Final', 2018, 895, 903, 3, 2);
INSERT INTO public.games VALUES (38, 'Quarter-Final', 2018, 897, 905, 2, 0);
INSERT INTO public.games VALUES (39, 'Quarter-Final', 2018, 896, 907, 2, 1);
INSERT INTO public.games VALUES (40, 'Quarter-Final', 2018, 894, 909, 2, 0);
INSERT INTO public.games VALUES (41, 'Eighth-Final', 2018, 897, 911, 2, 1);
INSERT INTO public.games VALUES (42, 'Eighth-Final', 2018, 905, 913, 1, 0);
INSERT INTO public.games VALUES (43, 'Eighth-Final', 2018, 896, 915, 3, 2);
INSERT INTO public.games VALUES (44, 'Eighth-Final', 2018, 907, 917, 2, 0);
INSERT INTO public.games VALUES (45, 'Eighth-Final', 2018, 895, 919, 2, 1);
INSERT INTO public.games VALUES (46, 'Eighth-Final', 2018, 903, 921, 2, 1);
INSERT INTO public.games VALUES (47, 'Eighth-Final', 2018, 909, 923, 2, 1);
INSERT INTO public.games VALUES (48, 'Eighth-Final', 2018, 894, 925, 4, 3);
INSERT INTO public.games VALUES (49, 'Final', 2014, 926, 925, 1, 0);
INSERT INTO public.games VALUES (50, 'Third Place', 2014, 928, 907, 3, 0);
INSERT INTO public.games VALUES (51, 'Semi-Final', 2014, 925, 928, 1, 0);
INSERT INTO public.games VALUES (52, 'Semi-Final', 2014, 926, 907, 7, 1);
INSERT INTO public.games VALUES (53, 'Quarter-Final', 2014, 928, 935, 1, 0);
INSERT INTO public.games VALUES (54, 'Quarter-Final', 2014, 925, 896, 1, 0);
INSERT INTO public.games VALUES (55, 'Quarter-Final', 2014, 907, 911, 2, 1);
INSERT INTO public.games VALUES (56, 'Quarter-Final', 2014, 926, 894, 1, 0);
INSERT INTO public.games VALUES (57, 'Eighth-Final', 2014, 907, 943, 2, 1);
INSERT INTO public.games VALUES (58, 'Eighth-Final', 2014, 911, 909, 2, 0);
INSERT INTO public.games VALUES (59, 'Eighth-Final', 2014, 894, 947, 2, 0);
INSERT INTO public.games VALUES (60, 'Eighth-Final', 2014, 926, 949, 2, 1);
INSERT INTO public.games VALUES (61, 'Eighth-Final', 2014, 928, 917, 2, 1);
INSERT INTO public.games VALUES (62, 'Eighth-Final', 2014, 935, 953, 2, 1);
INSERT INTO public.games VALUES (63, 'Eighth-Final', 2014, 925, 913, 1, 0);
INSERT INTO public.games VALUES (64, 'Eighth-Final', 2014, 896, 957, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (894, 'France');
INSERT INTO public.teams VALUES (895, 'Croatia');
INSERT INTO public.teams VALUES (896, 'Belgium');
INSERT INTO public.teams VALUES (897, 'England');
INSERT INTO public.teams VALUES (903, 'Russia');
INSERT INTO public.teams VALUES (905, 'Sweden');
INSERT INTO public.teams VALUES (907, 'Brazil');
INSERT INTO public.teams VALUES (909, 'Uruguay');
INSERT INTO public.teams VALUES (911, 'Colombia');
INSERT INTO public.teams VALUES (913, 'Switzerland');
INSERT INTO public.teams VALUES (915, 'Japan');
INSERT INTO public.teams VALUES (917, 'Mexico');
INSERT INTO public.teams VALUES (919, 'Denmark');
INSERT INTO public.teams VALUES (921, 'Spain');
INSERT INTO public.teams VALUES (923, 'Portugal');
INSERT INTO public.teams VALUES (925, 'Argentina');
INSERT INTO public.teams VALUES (926, 'Germany');
INSERT INTO public.teams VALUES (928, 'Netherlands');
INSERT INTO public.teams VALUES (935, 'Costa Rica');
INSERT INTO public.teams VALUES (943, 'Chile');
INSERT INTO public.teams VALUES (947, 'Nigeria');
INSERT INTO public.teams VALUES (949, 'Algeria');
INSERT INTO public.teams VALUES (953, 'Greece');
INSERT INTO public.teams VALUES (957, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 957, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

