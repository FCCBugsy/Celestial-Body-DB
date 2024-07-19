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
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer NOT NULL,
    population numeric(18,1) NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    planet_id integer,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer NOT NULL,
    population numeric(10,1) NOT NULL
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
    description text,
    star_id integer,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer NOT NULL,
    population numeric(18,1) NOT NULL
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
-- Name: product; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.product (
    product_id integer NOT NULL,
    name character varying(30) NOT NULL,
    quantity integer NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.product OWNER TO freecodecamp;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO freecodecamp;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_id integer,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer NOT NULL,
    population numeric(10,1) NOT NULL
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
-- Name: product product_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, true, 136000, 10000.0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy', false, true, 1000, 10000000.0);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A small spiral galaxy', false, true, 120000, 40.0);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'A classic spiral galaxy', false, true, 80000, 100000.0);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 'A spiral galaxy in Ursa Major', false, true, 12000, 25000.0);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'A galaxy with a bright nucleus', false, true, 13000, 800000.0);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel', 'A lenticular and ring galaxy', false, true, 140000, 1000000.0);
INSERT INTO public.galaxy VALUES (8, 'Sculptor', 'A spiral galaxy in the Sculptor Group', false, true, 900000, 70000.0);
INSERT INTO public.galaxy VALUES (9, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way', true, false, 1300000, 30000.0);
INSERT INTO public.galaxy VALUES (10, 'Small Magellanic Cloud', 'A dwarf galaxy near the Milky Way', true, false, 130000, 3000.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (33, 'Moon', 'The natural satellite of Earth', 8, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (34, 'Phobos', 'A moon of Mars', 8, false, true, 4500, 0.0);
INSERT INTO public.moon VALUES (35, 'Deimos', 'A moon of Mars', 9, false, true, 4500, 0.0);
INSERT INTO public.moon VALUES (36, 'Europa', 'A moon of Jupiter', 10, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (37, 'Ganymede', 'The largest moon in the Solar System', 10, false, true, 4500, 0.0);
INSERT INTO public.moon VALUES (38, 'Titan', 'A moon of Saturn', 10, false, true, 4500, 0.0);
INSERT INTO public.moon VALUES (42, 'Gamede', 'The largest moon in the Solar System', 10, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (43, 'Titanos', 'A moon of Saturn', 10, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (44, 'Enceladus', 'A moon of Saturn', 10, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (45, 'Callisto', 'A moon of Jupiter', 10, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (46, 'Io', 'A moon of Jupiter', 10, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (47, 'Triton', 'A moon of Neptne', 10, false, true, 4500, 0.0);
INSERT INTO public.moon VALUES (48, 'Oberon', 'A moon of Uranus', 8, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (49, 'Titania', 'The largest moon of Uranus', 8, false, true, 450000, 0.0);
INSERT INTO public.moon VALUES (50, 'Rhea', 'A moon of Saturn', 9, false, true, 450000, 0.0);
INSERT INTO public.moon VALUES (51, 'Iapetus', 'A moon of Saturn', 9, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (52, 'Charon', 'A moon of Pluto', 10, false, true, 450000, 0.0);
INSERT INTO public.moon VALUES (53, 'Nix', 'A moon of Pluto', 10, false, true, 450000, 0.0);
INSERT INTO public.moon VALUES (54, 'Hydra', 'A moon of Pluto', 10, false, true, 4500000, 0.0);
INSERT INTO public.moon VALUES (55, 'Miranda', 'A moon of Uranus', 11, false, true, 450, 0.0);
INSERT INTO public.moon VALUES (56, 'Ariel', 'A moon of Uranus', 11, false, true, 45000, 0.0);
INSERT INTO public.moon VALUES (57, 'Umbriel', 'A moon of Uranus', 12, false, true, 45000, 0.0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (8, 'Earth', 'Our home planet', 1, true, true, 4500, 78000.0);
INSERT INTO public.planet VALUES (9, 'Mars', 'The Red Planet', 1, false, true, 4500, 0.0);
INSERT INTO public.planet VALUES (10, 'Venus', 'The hottest planet', 1, false, true, 45000, 0.0);
INSERT INTO public.planet VALUES (11, 'Jupiter', 'The largest planet', 1, false, true, 450000, 0.0);
INSERT INTO public.planet VALUES (12, 'Saturn', 'Known for its rings', 1, false, true, 450000, 0.0);
INSERT INTO public.planet VALUES (13, 'Proxima b', 'Closest exoplanet', 2, true, true, 450000, 0.0);
INSERT INTO public.planet VALUES (14, 'HD 209458 b', 'First exoplanet discovered by transit', 6, false, true, 5000, 0.0);
INSERT INTO public.planet VALUES (19, 'Gliese 667 Cc', 'A potentially habitable exoplanet', 1, false, true, 600000, 0.0);
INSERT INTO public.planet VALUES (20, 'HD 189733 b', 'A well-studied exoplanet', 2, false, true, 50000, 0.0);
INSERT INTO public.planet VALUES (21, 'Kepler-22b', 'First potentially habitable exoplanet', 3, false, true, 70000, 0.0);
INSERT INTO public.planet VALUES (22, 'Gliese 581d', 'A potentially habitable exoplanet', 5, false, true, 800000, 0.0);
INSERT INTO public.planet VALUES (23, 'Tau Ceti e', 'A potentially habitable exoplanet', 6, false, true, 900000, 0.0);
INSERT INTO public.planet VALUES (24, '55 Cancri e', 'A super-Earth exoplanet', 7, false, true, 60000, 0.0);
INSERT INTO public.planet VALUES (25, 'Kepler-186f', 'A potentially habitable exoplanet', 8, false, true, 700000, 0.0);
INSERT INTO public.planet VALUES (26, 'Kepler-62f', 'A potentially habitable exoplanet', 9, false, true, 70000, 0.0);
INSERT INTO public.planet VALUES (27, 'LHS 1140 b', 'A super-Earth exoplanet', 1, false, true, 60000, 0.0);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.product VALUES (1, 'Laptop', 10, 1000);
INSERT INTO public.product VALUES (2, 'Smartphone', 25, 700);
INSERT INTO public.product VALUES (3, 'Tablet', 15, 500);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our home star', 1, true, true, 4500, 1.0);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Nearest known star to the Sun', 2, false, true, 4700, 1.0);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Part of the Alpha Centauri system', 2, false, true, 5000, 1.0);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'Part of the Alpha Centauri system', 2, false, true, 500000, 1.0);
INSERT INTO public.star VALUES (5, 'Wolf 359', 'A red dwarf star in the constellation Leo', 4, false, true, 8000, 1.0);
INSERT INTO public.star VALUES (6, 'Sirius A', 'The brightest star in the night sky', 5, false, true, 240, 1.0);
INSERT INTO public.star VALUES (7, 'Sirius B', 'A white dwarf companion to Sirius A', 5, false, true, 2400, 1.0);
INSERT INTO public.star VALUES (8, 'Vega', 'A star in the constellation Lyra', 6, false, true, 45500, 1.0);
INSERT INTO public.star VALUES (9, 'Betelgeuse', 'A red supergiant in the constellation Orion', 7, false, true, 8700, 1.0);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 57, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 27, true);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.product_product_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: product product_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_name_key UNIQUE (name);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


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

