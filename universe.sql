--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    galaxy_id integer NOT NULL,
    black_hole_num integer,
    name character varying(250),
    description text,
    black_holes_id integer NOT NULL
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_hole_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: black_holes_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_galaxy_id_seq OWNED BY public.black_holes.galaxy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(250),
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(250),
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(250),
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(250),
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: warm_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.warm_holes (
    galaxy_id integer NOT NULL,
    warm_holes_id integer NOT NULL,
    name character varying(250),
    description text
);


ALTER TABLE public.warm_holes OWNER TO freecodecamp;

--
-- Name: warm_holes_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.warm_holes_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warm_holes_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: warm_holes_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.warm_holes_galaxy_id_seq OWNED BY public.warm_holes.galaxy_id;


--
-- Name: black_holes galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN galaxy_id SET DEFAULT nextval('public.black_holes_galaxy_id_seq'::regclass);


--
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: warm_holes galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.warm_holes ALTER COLUMN galaxy_id SET DEFAULT nextval('public.warm_holes_galaxy_id_seq'::regclass);


--
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 1, 'qara', 'really big', 1);
INSERT INTO public.black_holes VALUES (2, 2, 'qara1', 'really big', 2);
INSERT INTO public.black_holes VALUES (2, 3, 'qara2', 'really big', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andramedo', 'galaxy closest to eartth', true, false, 13000, 20);
INSERT INTO public.galaxy VALUES (2, 'tundramedo', 'galaxy far to eartth', true, true, 15000, 30);
INSERT INTO public.galaxy VALUES (3, 'hundramedo', 'galaxy not visible', true, true, 15000, 30);
INSERT INTO public.galaxy VALUES (4, 'ramedo', 'galaxy not visible', true, true, 15000, 30);
INSERT INTO public.galaxy VALUES (5, 'medo', 'galaxy not visible', true, true, 15000, 30);
INSERT INTO public.galaxy VALUES (6, 'medolion', 'galaxy not visible', true, true, 15000, 30);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'MN1', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (2, 'MN2', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (3, 'MN4', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (4, 'MN3', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (5, 'MN5', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (6, 'MN6', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (7, 'MN7', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (8, 'MN8', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (9, 'MN9', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (10, 'MN10', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (11, 'MN11', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (12, 'MN12', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (13, 'MN13', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (14, 'MN14', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (15, 'MN15', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (16, 'MN16', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (17, 'MN17', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (18, 'MN18', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (19, 'MN19', 'close to earth', false, false, 20, NULL, 1);
INSERT INTO public.moon VALUES (20, 'MN20', 'close to earth', false, false, 20, NULL, 5);
INSERT INTO public.moon VALUES (21, 'MN21', 'close to earth', false, false, 20, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'venera', ' tiny', false, true, 2, 20, 1);
INSERT INTO public.planet VALUES (2, 'uranium', ' tiny', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (3, 'earth', ' shiny', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (4, 'mars', ' shiny', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (5, 'yupiter', ' shiny', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (6, 'pluto', ' shiny', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (7, 'neptun', ' shiny', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (8, 'mercury', 'gas giant ', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (9, 'saturn', 'gas giant ', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (10, 'moon', 'satelite of earth ', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (11, 'sun', 'satelite of earth ', false, true, 2, 20, 2);
INSERT INTO public.planet VALUES (12, 'comet', 'satelite of earth ', false, true, 2, 20, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'bt2', 'really big', true, true, 30, 20, 1);
INSERT INTO public.star VALUES (2, 'bt3', 'really big', true, true, 30, 20, 2);
INSERT INTO public.star VALUES (3, 'bt4', 'really big', true, true, 30, 20, 2);
INSERT INTO public.star VALUES (4, 'bt45', 'really small', true, true, 30, 20, 4);
INSERT INTO public.star VALUES (5, 'ct45', 'really small', true, true, 30, 20, 4);
INSERT INTO public.star VALUES (6, 'ct457', 'really small', true, true, 30, 20, 4);


--
-- Data for Name: warm_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.warm_holes VALUES (1, 1, 'WH1', 'something');
INSERT INTO public.warm_holes VALUES (3, 2, 'WH2', 'something');
INSERT INTO public.warm_holes VALUES (4, 5, 'sogulcan', NULL);


--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_hole_id_seq', 3, true);


--
-- Name: black_holes_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_galaxy_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: warm_holes_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.warm_holes_galaxy_id_seq', 1, false);


--
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: warm_holes warm_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.warm_holes
    ADD CONSTRAINT warm_holes_name_key UNIQUE (name);


--
-- Name: warm_holes warm_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.warm_holes
    ADD CONSTRAINT warm_holes_pkey PRIMARY KEY (warm_holes_id);


--
-- Name: moon fk_moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

