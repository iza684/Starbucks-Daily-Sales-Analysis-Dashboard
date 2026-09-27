--
-- PostgreSQL database dump
--

\restrict e4CDcD29gTMNLRiqU3A7QraExkGJkmOyxgv60kpL1mxQ0WysIYPn6kTrhdnEoC3

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2026-09-27 12:41:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 219 (class 1259 OID 16851)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id text NOT NULL,
    customer_name text,
    customer_email text,
    customer_phone text,
    customer_age integer,
    customer_gender text
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16859)
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id integer NOT NULL,
    item text,
    calories integer,
    fat double precision,
    carb integer,
    fiber integer,
    protein integer,
    type text
);


ALTER TABLE public.items OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16867)
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    transaction_id text NOT NULL,
    store_id integer,
    datetime timestamp without time zone,
    customer_id text,
    item_id integer,
    quantity integer,
    price double precision,
    total_amount double precision,
    payment_mode text,
    customer_type text
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- TOC entry 4971 (class 0 OID 16851)
-- Dependencies: 219
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, customer_name, customer_email, customer_phone, customer_age, customer_gender) FROM stdin;
C001	Ayan Khan	ayan@gmail.com	9876543210	25	Male
C002	Riya Sharma	riya@gmail.com	9123456780	23	Female
C003	Arjun Verma	arjun@gmail.com	9988776655	30	Male
C004	Sneha Gupta	sneha@gmail.com	9871234567	28	Female
C005	Rahul Mehta	rahul@gmail.com	9012345678	35	Male
C006	Neha Singh	neha@gmail.com	9001112233	26	Female
C007	Vikram Patel	vikram@gmail.com	9112233445	32	Male
C008	Amit Yadav	amit@gmail.com	9223344556	29	Male
C009	Pooja Verma	pooja@gmail.com	9334455667	24	Female
C010	Rohit Sharma	rohit@gmail.com	9445566778	31	Male
C011	Anjali Mehra	anjali@gmail.com	9556677889	27	Female
C012	Karan Malhotra	karan@gmail.com	9667788990	34	Male
C013	Simran Kaur	simran@gmail.com	9778899001	22	Female
C014	Manish Jain	manish@gmail.com	9889900112	36	Male
C015	Priya Nair	priya@gmail.com	9990011223	28	Female
C016	Saurabh Mishra	saurabh@gmail.com	9001122334	33	Male
C017	Kavya Reddy	kavya@gmail.com	9112233446	26	Female
C018	Nikhil Kapoor	nikhil@gmail.com	9223344557	29	Male
C019	Meera Iyer	meera@gmail.com	9334455668	27	Female
C020	Aditya Roy	aditya@gmail.com	9445566779	30	Male
C021	Izaan	izaan@gmail.com	9876543210	21	Male
C022	piyush	piyush@gmail.com	0021843210	22	Male
\.


--
-- TOC entry 4972 (class 0 OID 16859)
-- Dependencies: 220
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (id, item, calories, fat, carb, fiber, protein, type) FROM stdin;
1	Caffe Latte	190	7	19	0	12	Beverage
2	Cappuccino	120	4.5	12	0	8	Beverage
3	Espresso	5	0.2	1	0	1	Beverage
4	Americano	15	0.1	3	0	1	Beverage
5	Mocha	290	10	35	1	9	Beverage
6	Caramel Macchiato	250	10	34	1	8	Beverage
7	Vanilla Latte	210	8	27	0	9	Beverage
8	Iced Coffee	120	3.5	20	0	2	Beverage
9	Cold Brew	5	0.1	2	0	1	Beverage
10	Frappuccino	300	12	40	1	6	Beverage
11	Blueberry Muffin	320	14	45	2	5	Food
12	Chocolate Croissant	300	18	30	2	6	Food
13	Veg Sandwich	350	12	40	4	10	Food
14	Chicken Sandwich	380	14	35	2	18	Food
15	Paneer Wrap	400	15	45	3	12	Food
16	Cheese Burger	450	20	38	2	15	Food
17	Grilled Chicken Wrap	420	16	30	2	20	Food
18	Veg Puff	280	13	32	2	6	Food
19	Brownie	350	18	42	2	5	Food
20	Chocolate Donut	270	14	33	1	4	Food
21	caffe latte	190	7	19	0	12	Beverage
22	sandwich	190	7	19	0	12	food
\.


--
-- TOC entry 4973 (class 0 OID 16867)
-- Dependencies: 221
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales (transaction_id, store_id, datetime, customer_id, item_id, quantity, price, total_amount, payment_mode, customer_type) FROM stdin;
T200	101	2025-04-19 08:10:00	C001	1	2	250	500	UPI	Regular
T201	102	2025-04-19 09:20:00	C002	2	1	200	200	Card	New
T202	103	2025-04-19 10:30:00	C003	3	3	100	300	Cash	Regular
T203	101	2025-04-19 11:15:00	C004	4	2	150	300	UPI	Regular
T204	102	2025-04-19 12:40:00	C005	5	1	180	180	Card	New
T205	103	2025-04-19 13:10:00	C006	6	2	300	600	UPI	Regular
T206	101	2025-04-19 14:25:00	C007	7	1	220	220	Cash	New
T207	102	2025-04-19 15:35:00	C008	8	3	150	450	UPI	Regular
T208	103	2025-04-19 16:50:00	C009	9	2	200	400	Card	Regular
T209	101	2025-04-19 17:15:00	C010	10	1	320	320	UPI	New
T210	102	2025-04-19 18:20:00	C011	11	2	250	500	Cash	Regular
T211	103	2025-04-19 19:40:00	C012	12	1	180	180	UPI	New
T212	101	2025-04-19 20:10:00	C013	13	2	240	480	Card	Regular
T213	102	2025-04-19 21:30:00	C014	14	1	260	260	Cash	New
T214	103	2025-04-19 22:00:00	C015	15	2	280	560	UPI	Regular
T215	101	2025-04-19 08:45:00	C016	16	1	300	300	Card	New
T216	102	2025-04-19 09:55:00	C017	17	2	270	540	UPI	Regular
T217	103	2025-04-19 10:05:00	C018	18	3	120	360	Cash	New
T218	101	2025-04-19 11:50:00	C019	19	1	150	150	UPI	Regular
T219	102	2025-04-19 12:20:00	C020	20	2	130	260	Card	Regular
T220	103	2025-04-19 13:30:00	C001	1	1	250	250	Cash	New
T221	101	2025-04-19 14:10:00	C002	2	2	200	400	UPI	Regular
T222	102	2025-04-19 15:25:00	C003	3	1	100	100	Card	New
T223	103	2025-04-19 16:35:00	C004	4	2	150	300	Cash	Regular
T224	101	2025-04-19 17:45:00	C005	5	1	180	180	UPI	New
T225	101	2025-04-20 08:15:00	C006	6	2	300	600	Card	Regular
T226	102	2025-04-20 09:25:00	C007	7	1	220	220	UPI	New
T227	103	2025-04-20 10:40:00	C008	8	2	150	300	Cash	Regular
T228	101	2025-04-20 11:55:00	C009	9	1	200	200	UPI	New
T229	102	2025-04-20 12:10:00	C010	10	3	320	960	Card	Regular
T230	103	2025-04-20 13:20:00	C011	11	2	250	500	Cash	New
T231	101	2025-04-20 14:30:00	C012	12	1	180	180	UPI	Regular
T232	102	2025-04-20 15:45:00	C013	13	2	240	480	Card	Regular
T233	103	2025-04-20 16:10:00	C014	14	3	260	780	Cash	New
T234	101	2025-04-20 17:25:00	C015	15	1	280	280	UPI	Regular
T235	102	2025-04-20 18:35:00	C016	16	2	300	600	Card	New
T236	103	2025-04-20 19:50:00	C017	17	1	270	270	Cash	Regular
T237	101	2025-04-20 20:05:00	C018	18	2	120	240	UPI	New
T238	102	2025-04-20 21:20:00	C019	19	1	150	150	Card	Regular
T239	103	2025-04-20 22:10:00	C020	20	2	130	260	Cash	New
T240	101	2025-04-20 08:35:00	C001	1	2	250	500	UPI	Regular
T241	102	2025-04-20 09:45:00	C002	2	1	200	200	Card	New
T242	103	2025-04-20 10:55:00	C003	3	2	100	200	Cash	Regular
T243	101	2025-04-20 11:05:00	C004	4	1	150	150	UPI	New
T244	102	2025-04-20 12:15:00	C005	5	2	180	360	Card	Regular
T245	103	2025-04-20 13:25:00	C006	6	1	300	300	Cash	New
T246	101	2025-04-20 14:35:00	C007	7	2	220	440	UPI	Regular
T247	102	2025-04-20 15:50:00	C008	8	1	150	150	Card	New
T248	103	2025-04-20 16:20:00	C009	9	2	200	400	Cash	Regular
T249	101	2025-04-20 17:30:00	C010	10	1	320	320	UPI	New
T300	121	2025-04-19 08:10:00	C021	1	2	250	500	UPI	Regular
T301	122	2026-10-27 12:11:00	C022	1	2	250	500	UPI	Regular
\.


--
-- TOC entry 4817 (class 2606 OID 16858)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4819 (class 2606 OID 16866)
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- TOC entry 4821 (class 2606 OID 16874)
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (transaction_id);


--
-- TOC entry 4822 (class 2606 OID 16875)
-- Name: sales fk_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 4823 (class 2606 OID 16880)
-- Name: sales fk_item; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT fk_item FOREIGN KEY (item_id) REFERENCES public.items(id);


-- Completed on 2026-09-27 12:41:45

--
-- PostgreSQL database dump complete
--

\unrestrict e4CDcD29gTMNLRiqU3A7QraExkGJkmOyxgv60kpL1mxQ0WysIYPn6kTrhdnEoC3

