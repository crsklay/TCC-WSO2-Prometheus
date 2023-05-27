--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-17 10:54:50

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
-- TOC entry 215 (class 1259 OID 16434)
-- Name: tb_comorbidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_comorbidade (
    cid character varying(10) NOT NULL,
    nome character varying(50) NOT NULL
);

--
-- TOC entry 216 (class 1259 OID 16439)
-- Name: tb_medicamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_medicamento (
    gtin character varying(14) NOT NULL,
    nome character varying(50) NOT NULL,
    principio_ativo character varying(50) NOT NULL,
    fabricante character varying(30) NOT NULL,
    dosagem character varying(20) NOT NULL
);

--
-- TOC entry 214 (class 1259 OID 16429)
-- Name: tb_militar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_militar (
    cpf character(11) NOT NULL,
    nome_guerra character varying(25) NOT NULL,
    nome character varying(50) NOT NULL,
    nascimento date NOT NULL,
    graduacao character varying(20) NOT NULL,
    genero character(9) NOT NULL,
    status character varying(10) NOT NULL,
    rg character varying(10) NOT NULL,
    forca character varying(20) NOT NULL,
    tipo_sanguineo character varying(3) NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 16459)
-- Name: tb_militar_comorbidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_militar_comorbidade (
    cid_comorbidade character varying(10) NOT NULL,
    cpf_militar character(11) NOT NULL,
    status boolean NOT NULL
);

--
-- TOC entry 217 (class 1259 OID 16444)
-- Name: tb_militar_medicamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_militar_medicamento (
    gtin_medicamento character varying(14) NOT NULL,
    cpf_militar character(11) NOT NULL,
    prescricao character varying(50) NOT NULL
);

--
-- TOC entry 3345 (class 0 OID 16434)
-- Dependencies: 215
-- Data for Name: tb_comorbidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_comorbidade (cid, nome) FROM stdin;
C00	Câncer de lábio
C16	Câncer de estômago
C34	Câncer de brônquios e pulmões
I10	Hipertensão essencial (primária)
I25	Doença cardíaca isquêmica
E10	Diabetes mellitus tipo 1
E78	Distúrbios do metabolismo lipídico
G40	Epilepsia
M54	Dor nas costas
J45	Asma
F32	Episódio depressivo
N18	Doença renal crônica
K25	Úlcera gástrica
R10	Dor abdominal
S72	Fratura do fêmur
M75	Lesão do ombro
K29	Gastrite
J44	Doença pulmonar obstrutiva crônica
B20	HIV/AIDS
G30	Doença de Alzheimer
\.


--
-- TOC entry 3346 (class 0 OID 16439)
-- Dependencies: 216
-- Data for Name: tb_medicamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_medicamento (gtin, nome, principio_ativo, fabricante, dosagem) FROM stdin;
7891234567890	Medicamento A	Ativo A	Fabricante A	10mg
9876543210987	Medicamento B	Ativo B	Fabricante B	20mg
6543210987654	Medicamento C	Ativo C	Fabricante C	30mg
1234567890123	Medicamento D	Ativo D	Fabricante D	40mg
4567890123456	Medicamento E	Ativo E	Fabricante E	50mg
7890123456789	Medicamento F	Ativo F	Fabricante F	60mg
3456789012345	Medicamento G	Ativo G	Fabricante G	70mg
9012345678901	Medicamento H	Ativo H	Fabricante H	80mg
2345678901234	Medicamento I	Ativo I	Fabricante I	90mg
5678901234567	Medicamento J	Ativo J	Fabricante J	100mg
\.


--
-- TOC entry 3344 (class 0 OID 16429)
-- Dependencies: 214
-- Data for Name: tb_militar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_militar (cpf, nome_guerra, nome, nascimento, graduacao, genero, status, rg, forca, tipo_sanguineo) FROM stdin;
12345678901	da Silva	João da Silva Santos	1990-05-10	Soldado	Masculino	Ativo	1234567	Exército	A+
23456789012	Oliveira	Maria dos Santos Oliveira	1992-09-15	Sargento	Feminino 	Ativo	2345678	Marinha	B-
34567890123	Pereira	José da Silva Pereira	1988-07-20	Soldado	Masculino	Ativo	3456789	Aeronáutica	O+
45678901234	Almeida	Ana Maria Fernandes Almeida	1995-02-28	Tenente	Feminino 	Ativo	4567890	Exército	AB+
56789012345	Neto	Carlos Almeida Costa Neto	1991-11-05	Soldado	Masculino	Ativo	5678901	Aeronáutica	O-
67890123456	Mariana	Mariana Costa Oliveira Souza	1993-04-17	Capitão	Feminino 	Ativo	6789012	Marinha	A+
78901234567	Santos	Pedro Souza Lima Santos	1989-08-23	Soldado	Masculino	Ativo	7890123	Exército	B+
89012345678	Lima	Sandra Lima Oliveira Silva	1994-06-12	Sargento	Feminino 	Ativo	8901234	Marinha	AB-
90123456789	Ferreira	Lucas Ferreira Almeida Santos	1997-03-08	Soldado	Masculino	Ativo	9012345	Aeronáutica	O+
01234567890	Mendes	Juliana Mendes Oliveira Pereira	1996-09-02	Cabo	Feminino 	Ativo	0123456	Exército	A-
99999999999	Sauro	Silva Sauro	1000-01-01	Sub Tenente	Masculino	Reserva	1234567	EB	O+
\.


--
-- TOC entry 3348 (class 0 OID 16459)
-- Dependencies: 218
-- Data for Name: tb_militar_comorbidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_militar_comorbidade (cid_comorbidade, cpf_militar, status) FROM stdin;
C00	12345678901	t
I10	12345678901	f
C16	23456789012	t
I25	23456789012	t
E10	23456789012	f
C34	34567890123	t
E78	34567890123	t
I10	45678901234	t
G40	45678901234	f
M54	56789012345	t
J45	56789012345	t
F32	56789012345	f
N18	67890123456	t
K25	67890123456	t
R10	78901234567	t
S72	78901234567	t
M75	78901234567	f
K29	89012345678	t
J44	89012345678	t
B20	89012345678	f
\.


--
-- TOC entry 3347 (class 0 OID 16444)
-- Dependencies: 217
-- Data for Name: tb_militar_medicamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_militar_medicamento (gtin_medicamento, cpf_militar, prescricao) FROM stdin;
7891234567890	12345678901	Prescrição A
9876543210987	12345678901	Prescrição B
6543210987654	12345678901	Prescrição C
1234567890123	12345678901	Prescrição D
4567890123456	23456789012	Prescrição E
7890123456789	23456789012	Prescrição F
3456789012345	23456789012	Prescrição G
9012345678901	23456789012	Prescrição H
2345678901234	34567890123	Prescrição I
5678901234567	34567890123	Prescrição J
9012345678901	45678901234	Prescrição M
7890123456789	56789012345	Prescrição N
2345678901234	56789012345	Prescrição O
4567890123456	56789012345	Prescrição P
3456789012345	67890123456	Prescrição Q
5678901234567	67890123456	Prescrição R
\.


--
-- TOC entry 3191 (class 2606 OID 16438)
-- Name: tb_comorbidade tb_comorbidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_comorbidade
    ADD CONSTRAINT tb_comorbidade_pkey PRIMARY KEY (cid);


--
-- TOC entry 3193 (class 2606 OID 16443)
-- Name: tb_medicamento tb_medicamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_medicamento
    ADD CONSTRAINT tb_medicamento_pkey PRIMARY KEY (gtin);


--
-- TOC entry 3197 (class 2606 OID 16463)
-- Name: tb_militar_comorbidade tb_militar_comorbidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_militar_comorbidade
    ADD CONSTRAINT tb_militar_comorbidade_pkey PRIMARY KEY (cid_comorbidade, cpf_militar);


--
-- TOC entry 3195 (class 2606 OID 16448)
-- Name: tb_militar_medicamento tb_militar_medicamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_militar_medicamento
    ADD CONSTRAINT tb_militar_medicamento_pkey PRIMARY KEY (gtin_medicamento, cpf_militar);


--
-- TOC entry 3189 (class 2606 OID 16433)
-- Name: tb_militar tb_militar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_militar
    ADD CONSTRAINT tb_militar_pkey PRIMARY KEY (cpf);


--
-- TOC entry 3200 (class 2606 OID 16469)
-- Name: tb_militar_comorbidade fk_comorbidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_militar_comorbidade
    ADD CONSTRAINT fk_comorbidade FOREIGN KEY (cid_comorbidade) REFERENCES public.tb_comorbidade(cid);


--
-- TOC entry 3198 (class 2606 OID 16454)
-- Name: tb_militar_medicamento fk_medicamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_militar_medicamento
    ADD CONSTRAINT fk_medicamento FOREIGN KEY (gtin_medicamento) REFERENCES public.tb_medicamento(gtin);


--
-- TOC entry 3199 (class 2606 OID 16449)
-- Name: tb_militar_medicamento fk_militar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_militar_medicamento
    ADD CONSTRAINT fk_militar FOREIGN KEY (cpf_militar) REFERENCES public.tb_militar(cpf);


--
-- TOC entry 3201 (class 2606 OID 16464)
-- Name: tb_militar_comorbidade fk_militar_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_militar_comorbidade
    ADD CONSTRAINT fk_militar_c FOREIGN KEY (cpf_militar) REFERENCES public.tb_militar(cpf);


-- Completed on 2023-05-17 10:54:50

--
-- PostgreSQL database dump complete
--

