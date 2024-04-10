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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description character varying(60),
    age_in_millions_of_years integer NOT NULL,
    lightyear_distance_from_earth integer NOT NULL
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    description character varying(60),
    conquered boolean,
    factions integer NOT NULL,
    name character varying(30),
    size numeric
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    description character varying(60),
    age_in_millions_of_years integer NOT NULL,
    lightyear_distance_from_earth integer NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description character varying(60),
    age_in_millions_of_years integer NOT NULL,
    lightyear_distance_from_earth integer NOT NULL,
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description character varying(60),
    age_in_millions_of_years integer NOT NULL,
    lightyear_distance_from_earth integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: zone; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.zone (
    zone_id integer NOT NULL,
    name character varying(30) NOT NULL,
    coords double precision,
    description character varying(60),
    age_in_millions_of_years integer NOT NULL,
    lightyear_distance_from_earth integer NOT NULL,
    color text,
    size numeric
);


ALTER TABLE public.zone OWNER TO freecodecamp;

--
-- Name: zone_zone_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.zone_zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zone_zone_id_seq OWNER TO freecodecamp;

--
-- Name: zone_zone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.zone_zone_id_seq OWNED BY public.zone.zone_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


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
-- Name: zone zone_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zone ALTER COLUMN zone_id SET DEFAULT nextval('public.zone_zone_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Thruski', true, 'Home to like 6 planets lmao', 14000, 98487);
INSERT INTO public.galaxy VALUES (2, 'Phisheye', true, 'Like, nothing can live here bro', 2000, 3487);
INSERT INTO public.galaxy VALUES (3, '110-Montauk', false, '[REDACTED]', 0, 1);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', true, 'Ahh, our good old Milky', 122343, 0);
INSERT INTO public.galaxy VALUES (5, 'Brrreow', true, 'The cat galaxy', 14444, 3453);
INSERT INTO public.galaxy VALUES (6, 'Overcrow', false, 'Try not to go near this one', 777, 99999);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Part of the Monarchic Federation', true, 1, NULL, NULL);
INSERT INTO public.galaxy_types VALUES (2, 'Cat Galaxy, conquered by the 9 Lives', false, 9, NULL, NULL);
INSERT INTO public.galaxy_types VALUES (3, 'Wild, wild universe', false, 150, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Calliope', NULL, false, 'Tired', 2344, 4432, 1);
INSERT INTO public.moon VALUES (2, 'Trytant', NULL, true, 'Gross', 24, 42, 1);
INSERT INTO public.moon VALUES (3, 'Illinois', NULL, true, 'Home', 543, 402, 2);
INSERT INTO public.moon VALUES (4, 'Hellmire', NULL, true, 'It burns', 53343, 404, 2);
INSERT INTO public.moon VALUES (5, 'They/Them', NULL, false, 'Non-moonary', 343, 44, 3);
INSERT INTO public.moon VALUES (6, 'Love', NULL, false, 'It died some time ago', 1, 1, 3);
INSERT INTO public.moon VALUES (7, 'Dude', NULL, true, 'It lives and loves', 4343, 31, 4);
INSERT INTO public.moon VALUES (8, 'Song', NULL, false, 'Actually silent', 23525, 334444, 4);
INSERT INTO public.moon VALUES (9, 'Boot', NULL, NULL, NULL, 344, 3434, 5);
INSERT INTO public.moon VALUES (10, 'Coot', NULL, NULL, NULL, 412, 251, 5);
INSERT INTO public.moon VALUES (11, 'Soot', NULL, NULL, NULL, 87, 2, 6);
INSERT INTO public.moon VALUES (12, 'Moot', NULL, NULL, NULL, 986, 1855, 6);
INSERT INTO public.moon VALUES (13, 'Poot', NULL, NULL, NULL, 6, 677, 7);
INSERT INTO public.moon VALUES (14, 'Yeet', NULL, NULL, NULL, 7, 7, 7);
INSERT INTO public.moon VALUES (15, 'Peet', NULL, NULL, NULL, 35434, 323, 8);
INSERT INTO public.moon VALUES (16, 'Deet', NULL, NULL, NULL, 99834, 3923, 8);
INSERT INTO public.moon VALUES (17, 'Hoss', NULL, NULL, NULL, 350, 65468, 9);
INSERT INTO public.moon VALUES (18, 'Gcdess', NULL, NULL, NULL, 33350, 22, 9);
INSERT INTO public.moon VALUES (19, 'Kareed', NULL, NULL, NULL, 3450, 212, 10);
INSERT INTO public.moon VALUES (20, 'Hahjsirre', NULL, NULL, NULL, 4, 12333, 10);
INSERT INTO public.moon VALUES (21, 'Watch me Whip', NULL, NULL, 'Watch me Naenae', 4567, 2993, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Undies', true, 'Good temperature', 234234, 33, 1);
INSERT INTO public.planet VALUES (2, 'Blackhearth', NULL, NULL, 123, 22, 1);
INSERT INTO public.planet VALUES (3, 'Christopher', NULL, NULL, 234, 44, 1);
INSERT INTO public.planet VALUES (4, 'Silly bug', true, 'The one from the bug movie', 234, 345, 2);
INSERT INTO public.planet VALUES (5, 'Five Guys', false, 'Nahh bro', 34443, 3, 2);
INSERT INTO public.planet VALUES (6, 'Charlie', false, 'How could they [REDACTED]', 2345, 4, 3);
INSERT INTO public.planet VALUES (7, 'Alan', false, '[REDACTED] will be pissed', 444, 33, 3);
INSERT INTO public.planet VALUES (8, 'Earth', true, 'Blue and Green, not Super', 2423424, 0, 4);
INSERT INTO public.planet VALUES (9, 'Uranus', true, 'Someone is always trying to get in', 3453, 1112, 4);
INSERT INTO public.planet VALUES (10, 'Becky', true, 'Home to the Beckysters', 2324324, 33444, 5);
INSERT INTO public.planet VALUES (11, 'Food Bowl', false, 'No onw knows why they call it that', 2, 33445, 5);
INSERT INTO public.planet VALUES (12, 'Prick', false, NULL, 32465, 3, 6);
INSERT INTO public.planet VALUES (13, 'Duck', false, 'HONK', 33, 444444, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Twinly', true, 'Lala', 6598, 6525, 1);
INSERT INTO public.star VALUES (2, 'Becky', true, 'Meowzies', 18, 22, 2);
INSERT INTO public.star VALUES (3, 'Manly Men', false, 'Meeeeeen', 133344, 4534543, 3);
INSERT INTO public.star VALUES (4, 'Sun', true, 'That yeller feller', 4600, 149, 4);
INSERT INTO public.star VALUES (5, 'Brightey Whitey', true, 'It´s kinda blue actually', 4600, 149, 5);
INSERT INTO public.star VALUES (6, '237', false, 'Fuhgettaboudit', 25, 11, 6);


--
-- Data for Name: zone; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.zone VALUES (1, 'Zone 1', 6684.52, 'A damn mess', 56851, 65599, NULL, NULL);
INSERT INTO public.zone VALUES (2, 'Zone 2', 852.52, 'Mostly peaceful', 2996, 26586, NULL, NULL);
INSERT INTO public.zone VALUES (3, 'Zone 3', 101.69, 'Peaceful', 299, 586, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: zone_zone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.zone_zone_id_seq', 3, true);


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
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_size_key UNIQUE (size);


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
-- Name: zone zone_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zone
    ADD CONSTRAINT zone_color_key UNIQUE (color);


--
-- Name: zone zone_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zone
    ADD CONSTRAINT zone_pkey PRIMARY KEY (zone_id);


--
-- Name: zone zone_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zone
    ADD CONSTRAINT zone_size_key UNIQUE (size);


--
-- Name: zone zone_zone_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zone
    ADD CONSTRAINT zone_zone_id_key UNIQUE (zone_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

