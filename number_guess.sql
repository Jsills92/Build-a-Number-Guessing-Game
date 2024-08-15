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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    username character varying(22),
    secret_number integer,
    guess_number integer
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES ('Jake', 748, 11);
INSERT INTO public.guesses VALUES ('Jake', 72, 9);
INSERT INTO public.guesses VALUES ('Jake', 62, 9);
INSERT INTO public.guesses VALUES ('user_1723748553463', 862, 863);
INSERT INTO public.guesses VALUES ('user_1723748553463', 196, 197);
INSERT INTO public.guesses VALUES ('user_1723748553462', 889, 890);
INSERT INTO public.guesses VALUES ('user_1723748553462', 890, 891);
INSERT INTO public.guesses VALUES ('user_1723748553463', 585, 588);
INSERT INTO public.guesses VALUES ('user_1723748553463', 590, 591);
INSERT INTO public.guesses VALUES ('user_1723748553463', 502, 503);
INSERT INTO public.guesses VALUES ('user_1723748619465', 235, 236);
INSERT INTO public.guesses VALUES ('user_1723748619465', 265, 266);
INSERT INTO public.guesses VALUES ('user_1723748619464', 148, 149);
INSERT INTO public.guesses VALUES ('user_1723748619464', 940, 941);
INSERT INTO public.guesses VALUES ('user_1723748619465', 286, 289);
INSERT INTO public.guesses VALUES ('user_1723748619465', 944, 945);
INSERT INTO public.guesses VALUES ('user_1723748619465', 223, 224);
INSERT INTO public.guesses VALUES ('user_1723749016472', 117, 118);
INSERT INTO public.guesses VALUES ('user_1723749016472', 163, 164);
INSERT INTO public.guesses VALUES ('user_1723749016471', 589, 590);
INSERT INTO public.guesses VALUES ('user_1723749016471', 709, 710);
INSERT INTO public.guesses VALUES ('user_1723749016472', 399, 402);
INSERT INTO public.guesses VALUES ('user_1723749016472', 217, 218);
INSERT INTO public.guesses VALUES ('user_1723749016472', 316, 317);
INSERT INTO public.guesses VALUES ('Jay', 188, 11);
INSERT INTO public.guesses VALUES ('user_1723749099089', 937, 938);
INSERT INTO public.guesses VALUES ('user_1723749099089', 232, 233);
INSERT INTO public.guesses VALUES ('user_1723749099088', 450, 451);
INSERT INTO public.guesses VALUES ('user_1723749099088', 62, 63);
INSERT INTO public.guesses VALUES ('user_1723749099089', 352, 355);
INSERT INTO public.guesses VALUES ('user_1723749099089', 874, 875);
INSERT INTO public.guesses VALUES ('user_1723749099089', 927, 928);
INSERT INTO public.guesses VALUES ('user_1723749153211', 596, 597);
INSERT INTO public.guesses VALUES ('user_1723749153211', 483, 484);
INSERT INTO public.guesses VALUES ('user_1723749153210', 856, 857);
INSERT INTO public.guesses VALUES ('user_1723749153210', 749, 750);
INSERT INTO public.guesses VALUES ('user_1723749153211', 878, 881);
INSERT INTO public.guesses VALUES ('user_1723749153211', 849, 850);
INSERT INTO public.guesses VALUES ('user_1723749153211', 418, 419);
INSERT INTO public.guesses VALUES ('user_1723749183138', 140, 141);
INSERT INTO public.guesses VALUES ('user_1723749183138', 718, 719);
INSERT INTO public.guesses VALUES ('user_1723749183137', 511, 512);
INSERT INTO public.guesses VALUES ('user_1723749183137', 265, 266);
INSERT INTO public.guesses VALUES ('user_1723749183138', 120, 123);
INSERT INTO public.guesses VALUES ('user_1723749183138', 106, 107);
INSERT INTO public.guesses VALUES ('user_1723749183138', 350, 351);
INSERT INTO public.guesses VALUES ('user_1723749191136', 445, 446);
INSERT INTO public.guesses VALUES ('user_1723749191136', 103, 104);
INSERT INTO public.guesses VALUES ('user_1723749191135', 390, 391);
INSERT INTO public.guesses VALUES ('user_1723749191135', 199, 200);
INSERT INTO public.guesses VALUES ('user_1723749191136', 156, 159);
INSERT INTO public.guesses VALUES ('user_1723749191136', 899, 900);
INSERT INTO public.guesses VALUES ('user_1723749191136', 926, 927);
INSERT INTO public.guesses VALUES ('user_1723749217940', 972, 973);
INSERT INTO public.guesses VALUES ('user_1723749217940', 295, 296);
INSERT INTO public.guesses VALUES ('user_1723749217939', 651, 652);
INSERT INTO public.guesses VALUES ('user_1723749217939', 444, 445);
INSERT INTO public.guesses VALUES ('user_1723749217940', 882, 885);
INSERT INTO public.guesses VALUES ('user_1723749217940', 917, 918);
INSERT INTO public.guesses VALUES ('user_1723749217940', 136, 137);
INSERT INTO public.guesses VALUES ('Jake', 971, 8);
INSERT INTO public.guesses VALUES ('user_1723749584790', 830, 831);
INSERT INTO public.guesses VALUES ('user_1723749584790', 15, 16);
INSERT INTO public.guesses VALUES ('user_1723749584789', 85, 86);
INSERT INTO public.guesses VALUES ('user_1723749584789', 309, 310);
INSERT INTO public.guesses VALUES ('user_1723749584790', 469, 472);
INSERT INTO public.guesses VALUES ('user_1723749584790', 902, 904);
INSERT INTO public.guesses VALUES ('user_1723749584790', 868, 869);
INSERT INTO public.guesses VALUES ('user_1723749643859', 985, 986);
INSERT INTO public.guesses VALUES ('user_1723749643859', 216, 217);
INSERT INTO public.guesses VALUES ('user_1723749643858', 476, 477);
INSERT INTO public.guesses VALUES ('user_1723749643858', 878, 879);
INSERT INTO public.guesses VALUES ('user_1723749643859', 2, 5);
INSERT INTO public.guesses VALUES ('user_1723749643859', 168, 170);
INSERT INTO public.guesses VALUES ('user_1723749643859', 545, 546);
INSERT INTO public.guesses VALUES ('user_1723749731022', 230, 231);
INSERT INTO public.guesses VALUES ('user_1723749731022', 773, 774);
INSERT INTO public.guesses VALUES ('user_1723749731021', 248, 249);
INSERT INTO public.guesses VALUES ('user_1723749731021', 146, 147);
INSERT INTO public.guesses VALUES ('user_1723749731022', 325, 328);
INSERT INTO public.guesses VALUES ('user_1723749731022', 74, 76);
INSERT INTO public.guesses VALUES ('user_1723749731022', 621, 622);
INSERT INTO public.guesses VALUES ('user_1723749771110', 840, 841);
INSERT INTO public.guesses VALUES ('user_1723749771110', 956, 957);
INSERT INTO public.guesses VALUES ('user_1723749771109', 369, 370);
INSERT INTO public.guesses VALUES ('user_1723749771109', 472, 473);
INSERT INTO public.guesses VALUES ('user_1723749771110', 244, 247);
INSERT INTO public.guesses VALUES ('user_1723749771110', 466, 468);
INSERT INTO public.guesses VALUES ('user_1723749771110', 269, 270);
INSERT INTO public.guesses VALUES ('Jake', 2, 8);
INSERT INTO public.guesses VALUES ('user_1723749813958', 383, 384);
INSERT INTO public.guesses VALUES ('user_1723749813958', 835, 836);
INSERT INTO public.guesses VALUES ('user_1723749813957', 339, 340);
INSERT INTO public.guesses VALUES ('user_1723749813957', 436, 437);
INSERT INTO public.guesses VALUES ('user_1723749813958', 586, 589);
INSERT INTO public.guesses VALUES ('user_1723749813958', 669, 671);
INSERT INTO public.guesses VALUES ('user_1723749813958', 148, 149);
INSERT INTO public.guesses VALUES ('user_1723749837745', 551, 552);
INSERT INTO public.guesses VALUES ('user_1723749837745', 546, 547);
INSERT INTO public.guesses VALUES ('user_1723749837744', 64, 65);
INSERT INTO public.guesses VALUES ('user_1723749837744', 591, 592);
INSERT INTO public.guesses VALUES ('user_1723749837745', 643, 646);
INSERT INTO public.guesses VALUES ('user_1723749837745', 941, 943);
INSERT INTO public.guesses VALUES ('user_1723749837745', 25, 26);
INSERT INTO public.guesses VALUES ('user_1723749845103', 326, 327);
INSERT INTO public.guesses VALUES ('user_1723749845103', 87, 88);
INSERT INTO public.guesses VALUES ('user_1723749845102', 805, 806);
INSERT INTO public.guesses VALUES ('user_1723749845102', 558, 559);
INSERT INTO public.guesses VALUES ('user_1723749845103', 240, 243);
INSERT INTO public.guesses VALUES ('user_1723749845103', 177, 179);
INSERT INTO public.guesses VALUES ('user_1723749845103', 324, 325);
INSERT INTO public.guesses VALUES ('user_1723750212196', 106, 107);
INSERT INTO public.guesses VALUES ('user_1723750212196', 135, 136);
INSERT INTO public.guesses VALUES ('user_1723750212195', 10, 11);
INSERT INTO public.guesses VALUES ('user_1723750212195', 344, 345);
INSERT INTO public.guesses VALUES ('user_1723750212196', 345, 348);
INSERT INTO public.guesses VALUES ('user_1723750212196', 266, 268);
INSERT INTO public.guesses VALUES ('user_1723750212196', 622, 623);
INSERT INTO public.guesses VALUES ('user_1723750271149', 85, 86);
INSERT INTO public.guesses VALUES ('user_1723750271149', 471, 472);
INSERT INTO public.guesses VALUES ('user_1723750271148', 123, 124);
INSERT INTO public.guesses VALUES ('user_1723750271148', 737, 738);
INSERT INTO public.guesses VALUES ('user_1723750271149', 954, 957);
INSERT INTO public.guesses VALUES ('user_1723750271149', 366, 368);
INSERT INTO public.guesses VALUES ('user_1723750271149', 962, 963);
INSERT INTO public.guesses VALUES ('user_1723750283481', 738, 739);
INSERT INTO public.guesses VALUES ('user_1723750283481', 717, 718);
INSERT INTO public.guesses VALUES ('user_1723750283480', 606, 607);
INSERT INTO public.guesses VALUES ('user_1723750283480', 767, 768);
INSERT INTO public.guesses VALUES ('user_1723750283481', 689, 692);
INSERT INTO public.guesses VALUES ('user_1723750283481', 647, 649);
INSERT INTO public.guesses VALUES ('user_1723750283481', 215, 216);
INSERT INTO public.guesses VALUES ('user_1723750306053', 358, 359);
INSERT INTO public.guesses VALUES ('user_1723750306053', 359, 360);
INSERT INTO public.guesses VALUES ('user_1723750306052', 579, 580);
INSERT INTO public.guesses VALUES ('user_1723750306052', 189, 190);
INSERT INTO public.guesses VALUES ('user_1723750306053', 228, 231);
INSERT INTO public.guesses VALUES ('user_1723750306053', 423, 425);
INSERT INTO public.guesses VALUES ('user_1723750306053', 921, 922);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1723749217939', 2, 445);
INSERT INTO public.users VALUES ('user_1723747509767', 2, 0);
INSERT INTO public.users VALUES ('user_1723749217940', 5, 137);
INSERT INTO public.users VALUES ('user_1723747509768', 5, 0);
INSERT INTO public.users VALUES ('user_1723750212195', 2, 11);
INSERT INTO public.users VALUES ('user_1723748553462', 2, 890);
INSERT INTO public.users VALUES ('user_1723750212196', 5, 107);
INSERT INTO public.users VALUES ('user_1723748553463', 5, 197);
INSERT INTO public.users VALUES ('user_1723748619464', 2, 149);
INSERT INTO public.users VALUES ('user_1723749584789', 2, 86);
INSERT INTO public.users VALUES ('user_1723748619465', 5, 224);
INSERT INTO public.users VALUES ('Brady', 0, NULL);
INSERT INTO public.users VALUES ('user_1723749584790', 5, 16);
INSERT INTO public.users VALUES ('user_1723749016471', 2, 590);
INSERT INTO public.users VALUES ('user_1723750271148', 2, 124);
INSERT INTO public.users VALUES ('user_1723749016472', 5, 118);
INSERT INTO public.users VALUES ('Jay', 1, 11);
INSERT INTO public.users VALUES ('user_1723749099088', 2, 63);
INSERT INTO public.users VALUES ('user_1723749643858', 2, 477);
INSERT INTO public.users VALUES ('user_1723750271149', 5, 86);
INSERT INTO public.users VALUES ('user_1723749099089', 5, 233);
INSERT INTO public.users VALUES ('user_1723749153210', 2, 750);
INSERT INTO public.users VALUES ('user_1723749643859', 5, 5);
INSERT INTO public.users VALUES ('user_1723749153211', 5, 419);
INSERT INTO public.users VALUES ('user_1723749183137', 2, 266);
INSERT INTO public.users VALUES ('user_1723749183138', 5, 107);
INSERT INTO public.users VALUES ('user_1723749731021', 2, 147);
INSERT INTO public.users VALUES ('user_1723750283480', 2, 607);
INSERT INTO public.users VALUES ('user_1723749191135', 2, 200);
INSERT INTO public.users VALUES ('user_1723749191136', 5, 104);
INSERT INTO public.users VALUES ('user_1723749731022', 5, 76);
INSERT INTO public.users VALUES ('user_1723749771109', 2, 370);
INSERT INTO public.users VALUES ('user_1723750283481', 5, 216);
INSERT INTO public.users VALUES ('user_1723749771110', 5, 247);
INSERT INTO public.users VALUES ('Jake', 7, 8);
INSERT INTO public.users VALUES ('user_1723749813957', 2, 340);
INSERT INTO public.users VALUES ('user_1723750306052', 2, 190);
INSERT INTO public.users VALUES ('user_1723749813958', 5, 149);
INSERT INTO public.users VALUES ('user_1723750306053', 5, 231);
INSERT INTO public.users VALUES ('user_1723749837744', 2, 65);
INSERT INTO public.users VALUES ('user_1723749837745', 5, 26);
INSERT INTO public.users VALUES ('user_1723749845102', 2, 559);
INSERT INTO public.users VALUES ('user_1723749845103', 5, 88);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: guesses guesses_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- PostgreSQL database dump complete
--

