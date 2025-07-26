--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

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

--
-- Name: timescaledb; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS timescaledb WITH SCHEMA public;


--
-- Name: EXTENSION timescaledb; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION timescaledb IS 'Enables scalable inserts and complex queries for time-series data (Community Edition)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: sensor_temperature; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_temperature (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    temperature double precision,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_temperature OWNER TO admin;

--
-- Name: _hyper_1_16_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_1_16_chunk (
    CONSTRAINT constraint_16 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_temperature);


ALTER TABLE _timescaledb_internal._hyper_1_16_chunk OWNER TO admin;

--
-- Name: _hyper_1_22_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_1_22_chunk (
    CONSTRAINT constraint_22 CHECK ((("time" >= '2025-07-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_temperature);


ALTER TABLE _timescaledb_internal._hyper_1_22_chunk OWNER TO admin;

--
-- Name: _hyper_1_29_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_1_29_chunk (
    CONSTRAINT constraint_29 CHECK ((("time" >= '2025-07-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_temperature);


ALTER TABLE _timescaledb_internal._hyper_1_29_chunk OWNER TO admin;

--
-- Name: _hyper_1_5_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_1_5_chunk (
    CONSTRAINT constraint_5 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_temperature);


ALTER TABLE _timescaledb_internal._hyper_1_5_chunk OWNER TO admin;

--
-- Name: _hyper_1_9_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_1_9_chunk (
    CONSTRAINT constraint_9 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_temperature);


ALTER TABLE _timescaledb_internal._hyper_1_9_chunk OWNER TO admin;

--
-- Name: sensor_humidity; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_humidity (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    humidity double precision,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_humidity OWNER TO admin;

--
-- Name: _hyper_2_17_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_2_17_chunk (
    CONSTRAINT constraint_17 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_humidity);


ALTER TABLE _timescaledb_internal._hyper_2_17_chunk OWNER TO admin;

--
-- Name: _hyper_2_24_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_2_24_chunk (
    CONSTRAINT constraint_24 CHECK ((("time" >= '2025-07-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_humidity);


ALTER TABLE _timescaledb_internal._hyper_2_24_chunk OWNER TO admin;

--
-- Name: _hyper_2_2_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_2_2_chunk (
    CONSTRAINT constraint_2 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_humidity);


ALTER TABLE _timescaledb_internal._hyper_2_2_chunk OWNER TO admin;

--
-- Name: _hyper_2_31_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_2_31_chunk (
    CONSTRAINT constraint_31 CHECK ((("time" >= '2025-07-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_humidity);


ALTER TABLE _timescaledb_internal._hyper_2_31_chunk OWNER TO admin;

--
-- Name: _hyper_2_8_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_2_8_chunk (
    CONSTRAINT constraint_8 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_humidity);


ALTER TABLE _timescaledb_internal._hyper_2_8_chunk OWNER TO admin;

--
-- Name: sensor_motion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_motion (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    state text,
    move_duration integer,
    move_number integer,
    x_axis integer,
    y_axis integer,
    z_axis integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_motion OWNER TO admin;

--
-- Name: _hyper_3_10_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_3_10_chunk (
    CONSTRAINT constraint_10 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_motion);


ALTER TABLE _timescaledb_internal._hyper_3_10_chunk OWNER TO admin;

--
-- Name: _hyper_3_15_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_3_15_chunk (
    CONSTRAINT constraint_15 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_motion);


ALTER TABLE _timescaledb_internal._hyper_3_15_chunk OWNER TO admin;

--
-- Name: _hyper_3_1_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_3_1_chunk (
    CONSTRAINT constraint_1 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_motion);


ALTER TABLE _timescaledb_internal._hyper_3_1_chunk OWNER TO admin;

--
-- Name: _hyper_3_23_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_3_23_chunk (
    CONSTRAINT constraint_23 CHECK ((("time" >= '2025-07-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_motion);


ALTER TABLE _timescaledb_internal._hyper_3_23_chunk OWNER TO admin;

--
-- Name: _hyper_3_30_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_3_30_chunk (
    CONSTRAINT constraint_30 CHECK ((("time" >= '2025-07-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_motion);


ALTER TABLE _timescaledb_internal._hyper_3_30_chunk OWNER TO admin;

--
-- Name: sensor_neighbors_count; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_neighbors_count (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    neighbors integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_neighbors_count OWNER TO admin;

--
-- Name: _hyper_4_13_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_4_13_chunk (
    CONSTRAINT constraint_13 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_count);


ALTER TABLE _timescaledb_internal._hyper_4_13_chunk OWNER TO admin;

--
-- Name: _hyper_4_18_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_4_18_chunk (
    CONSTRAINT constraint_18 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_count);


ALTER TABLE _timescaledb_internal._hyper_4_18_chunk OWNER TO admin;

--
-- Name: _hyper_4_27_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_4_27_chunk (
    CONSTRAINT constraint_27 CHECK ((("time" >= '2025-07-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_count);


ALTER TABLE _timescaledb_internal._hyper_4_27_chunk OWNER TO admin;

--
-- Name: _hyper_4_33_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_4_33_chunk (
    CONSTRAINT constraint_33 CHECK ((("time" >= '2025-07-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_count);


ALTER TABLE _timescaledb_internal._hyper_4_33_chunk OWNER TO admin;

--
-- Name: _hyper_4_3_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_4_3_chunk (
    CONSTRAINT constraint_3 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_count);


ALTER TABLE _timescaledb_internal._hyper_4_3_chunk OWNER TO admin;

--
-- Name: sensor_neighbors_detail; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_neighbors_detail (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    neighbor_address text,
    rssi integer,
    tx_power integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_neighbors_detail OWNER TO admin;

--
-- Name: _hyper_5_14_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_5_14_chunk (
    CONSTRAINT constraint_14 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_detail);


ALTER TABLE _timescaledb_internal._hyper_5_14_chunk OWNER TO admin;

--
-- Name: _hyper_5_19_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_5_19_chunk (
    CONSTRAINT constraint_19 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_detail);


ALTER TABLE _timescaledb_internal._hyper_5_19_chunk OWNER TO admin;

--
-- Name: _hyper_5_28_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_5_28_chunk (
    CONSTRAINT constraint_28 CHECK ((("time" >= '2025-07-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_detail);


ALTER TABLE _timescaledb_internal._hyper_5_28_chunk OWNER TO admin;

--
-- Name: _hyper_5_34_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_5_34_chunk (
    CONSTRAINT constraint_34 CHECK ((("time" >= '2025-07-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_detail);


ALTER TABLE _timescaledb_internal._hyper_5_34_chunk OWNER TO admin;

--
-- Name: _hyper_5_4_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_5_4_chunk (
    CONSTRAINT constraint_4 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_detail);


ALTER TABLE _timescaledb_internal._hyper_5_4_chunk OWNER TO admin;

--
-- Name: sensor_pressure; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_pressure (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    atmospheric_pressure integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_pressure OWNER TO admin;

--
-- Name: _hyper_6_12_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_6_12_chunk (
    CONSTRAINT constraint_12 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_pressure);


ALTER TABLE _timescaledb_internal._hyper_6_12_chunk OWNER TO admin;

--
-- Name: _hyper_6_20_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_6_20_chunk (
    CONSTRAINT constraint_20 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_pressure);


ALTER TABLE _timescaledb_internal._hyper_6_20_chunk OWNER TO admin;

--
-- Name: _hyper_6_25_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_6_25_chunk (
    CONSTRAINT constraint_25 CHECK ((("time" >= '2025-07-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_pressure);


ALTER TABLE _timescaledb_internal._hyper_6_25_chunk OWNER TO admin;

--
-- Name: _hyper_6_32_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_6_32_chunk (
    CONSTRAINT constraint_32 CHECK ((("time" >= '2025-07-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_pressure);


ALTER TABLE _timescaledb_internal._hyper_6_32_chunk OWNER TO admin;

--
-- Name: _hyper_6_6_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_6_6_chunk (
    CONSTRAINT constraint_6 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_pressure);


ALTER TABLE _timescaledb_internal._hyper_6_6_chunk OWNER TO admin;

--
-- Name: sensor_voltage; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_voltage (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    voltage double precision,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_voltage OWNER TO admin;

--
-- Name: _hyper_7_11_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_7_11_chunk (
    CONSTRAINT constraint_11 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_voltage);


ALTER TABLE _timescaledb_internal._hyper_7_11_chunk OWNER TO admin;

--
-- Name: _hyper_7_21_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_7_21_chunk (
    CONSTRAINT constraint_21 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_voltage);


ALTER TABLE _timescaledb_internal._hyper_7_21_chunk OWNER TO admin;

--
-- Name: _hyper_7_26_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_7_26_chunk (
    CONSTRAINT constraint_26 CHECK ((("time" >= '2025-07-17 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_voltage);


ALTER TABLE _timescaledb_internal._hyper_7_26_chunk OWNER TO admin;

--
-- Name: _hyper_7_35_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_7_35_chunk (
    CONSTRAINT constraint_35 CHECK ((("time" >= '2025-07-24 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-31 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_voltage);


ALTER TABLE _timescaledb_internal._hyper_7_35_chunk OWNER TO admin;

--
-- Name: _hyper_7_7_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_7_7_chunk (
    CONSTRAINT constraint_7 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_voltage);


ALTER TABLE _timescaledb_internal._hyper_7_7_chunk OWNER TO admin;

--
-- Name: all_source_addresses; Type: VIEW; Schema: public; Owner: admin
--

CREATE VIEW public.all_source_addresses AS
 SELECT DISTINCT sensor_humidity.source_address
   FROM public.sensor_humidity
UNION
 SELECT DISTINCT sensor_motion.source_address
   FROM public.sensor_motion
UNION
 SELECT DISTINCT sensor_neighbors_count.source_address
   FROM public.sensor_neighbors_count
UNION
 SELECT DISTINCT sensor_neighbors_detail.source_address
   FROM public.sensor_neighbors_detail
UNION
 SELECT DISTINCT sensor_pressure.source_address
   FROM public.sensor_pressure
UNION
 SELECT DISTINCT sensor_temperature.source_address
   FROM public.sensor_temperature
UNION
 SELECT DISTINCT sensor_voltage.source_address
   FROM public.sensor_voltage;


ALTER VIEW public.all_source_addresses OWNER TO admin;

--
-- Name: mqtt_consumer; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.mqtt_consumer (
    "time" timestamp without time zone,
    host text,
    event_id double precision,
    optional_periods_0 double precision,
    optional_periods_1 double precision,
    optional_periods_2 double precision,
    sensor_id double precision,
    sensor_period double precision,
    source_address text
);


ALTER TABLE public.mqtt_consumer OWNER TO admin;

--
-- Name: COLUMN mqtt_consumer.host; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.mqtt_consumer.host IS 'tag';


--
-- Name: sensor_button; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_button (
    "time" timestamp without time zone,
    host text,
    button bigint,
    event_id double precision,
    sensor_id double precision,
    source_address text
);


ALTER TABLE public.sensor_button OWNER TO admin;

--
-- Name: COLUMN sensor_button.host; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.sensor_button.host IS 'tag';


--
-- Name: _hyper_1_16_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_16_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_1_22_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_22_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_1_29_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_29_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_1_5_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_5_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_1_9_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_9_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_2_17_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_2_17_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_2_24_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_2_24_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_2_2_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_2_2_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_2_31_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_2_31_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_2_8_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_2_8_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_3_10_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_3_10_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_3_15_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_3_15_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_3_1_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_3_1_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_3_23_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_3_23_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_3_30_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_3_30_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_4_13_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_4_13_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_4_18_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_4_18_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_4_27_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_4_27_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_4_33_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_4_33_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_4_3_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_4_3_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_5_14_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_5_14_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_5_19_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_5_19_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_5_28_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_5_28_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_5_34_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_5_34_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_5_4_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_5_4_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_6_12_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_6_12_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_6_20_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_6_20_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_6_25_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_6_25_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_6_32_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_6_32_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_6_6_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_6_6_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_7_11_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_7_11_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_7_21_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_7_21_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_7_26_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_7_26_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_7_35_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_7_35_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_7_7_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_7_7_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Data for Name: hypertable; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.hypertable (id, schema_name, table_name, associated_schema_name, associated_table_prefix, num_dimensions, chunk_sizing_func_schema, chunk_sizing_func_name, chunk_target_size, compression_state, compressed_hypertable_id, status) FROM stdin;
1	public	sensor_temperature	_timescaledb_internal	_hyper_1	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
2	public	sensor_humidity	_timescaledb_internal	_hyper_2	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
3	public	sensor_motion	_timescaledb_internal	_hyper_3	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
4	public	sensor_neighbors_count	_timescaledb_internal	_hyper_4	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
5	public	sensor_neighbors_detail	_timescaledb_internal	_hyper_5	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
6	public	sensor_pressure	_timescaledb_internal	_hyper_6	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
7	public	sensor_voltage	_timescaledb_internal	_hyper_7	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
\.


--
-- Data for Name: chunk; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.chunk (id, hypertable_id, schema_name, table_name, compressed_chunk_id, dropped, status, osm_chunk, creation_time) FROM stdin;
1	3	_timescaledb_internal	_hyper_3_1_chunk	\N	f	0	f	2025-06-28 12:23:15.839661+00
2	2	_timescaledb_internal	_hyper_2_2_chunk	\N	f	0	f	2025-06-28 12:24:03.589717+00
3	4	_timescaledb_internal	_hyper_4_3_chunk	\N	f	0	f	2025-06-28 12:28:27.107703+00
4	5	_timescaledb_internal	_hyper_5_4_chunk	\N	f	0	f	2025-06-28 12:28:27.125133+00
5	1	_timescaledb_internal	_hyper_1_5_chunk	\N	f	0	f	2025-06-28 12:37:02.591792+00
6	6	_timescaledb_internal	_hyper_6_6_chunk	\N	f	0	f	2025-06-28 12:39:30.493631+00
7	7	_timescaledb_internal	_hyper_7_7_chunk	\N	f	0	f	2025-06-28 13:09:20.450376+00
8	2	_timescaledb_internal	_hyper_2_8_chunk	\N	f	0	f	2025-07-03 00:01:09.826729+00
9	1	_timescaledb_internal	_hyper_1_9_chunk	\N	f	0	f	2025-07-03 00:01:30.72782+00
10	3	_timescaledb_internal	_hyper_3_10_chunk	\N	f	0	f	2025-07-03 00:05:09.152302+00
11	7	_timescaledb_internal	_hyper_7_11_chunk	\N	f	0	f	2025-07-03 07:39:41.930067+00
12	6	_timescaledb_internal	_hyper_6_12_chunk	\N	f	0	f	2025-07-03 07:56:06.863664+00
13	4	_timescaledb_internal	_hyper_4_13_chunk	\N	f	0	f	2025-07-03 15:53:04.506924+00
14	5	_timescaledb_internal	_hyper_5_14_chunk	\N	f	0	f	2025-07-03 15:53:04.541284+00
15	3	_timescaledb_internal	_hyper_3_15_chunk	\N	f	0	f	2025-07-10 07:25:12.718486+00
16	1	_timescaledb_internal	_hyper_1_16_chunk	\N	f	0	f	2025-07-10 07:25:44.722977+00
17	2	_timescaledb_internal	_hyper_2_17_chunk	\N	f	0	f	2025-07-10 07:25:44.744325+00
18	4	_timescaledb_internal	_hyper_4_18_chunk	\N	f	0	f	2025-07-10 07:26:11.760203+00
19	5	_timescaledb_internal	_hyper_5_19_chunk	\N	f	0	f	2025-07-10 07:26:11.766388+00
20	6	_timescaledb_internal	_hyper_6_20_chunk	\N	f	0	f	2025-07-10 07:29:05.815754+00
21	7	_timescaledb_internal	_hyper_7_21_chunk	\N	f	0	f	2025-07-10 08:39:04.678758+00
22	1	_timescaledb_internal	_hyper_1_22_chunk	\N	f	0	f	2025-07-17 05:34:08.914285+00
23	3	_timescaledb_internal	_hyper_3_23_chunk	\N	f	0	f	2025-07-17 05:36:44.657254+00
24	2	_timescaledb_internal	_hyper_2_24_chunk	\N	f	0	f	2025-07-17 05:37:22.568706+00
25	6	_timescaledb_internal	_hyper_6_25_chunk	\N	f	0	f	2025-07-17 05:54:52.775341+00
26	7	_timescaledb_internal	_hyper_7_26_chunk	\N	f	0	f	2025-07-17 06:41:49.949092+00
27	4	_timescaledb_internal	_hyper_4_27_chunk	\N	f	0	f	2025-07-17 15:29:05.943121+00
28	5	_timescaledb_internal	_hyper_5_28_chunk	\N	f	0	f	2025-07-17 15:29:05.978007+00
29	1	_timescaledb_internal	_hyper_1_29_chunk	\N	f	0	f	2025-07-25 12:04:21.562142+00
30	3	_timescaledb_internal	_hyper_3_30_chunk	\N	f	0	f	2025-07-25 12:05:35.192981+00
31	2	_timescaledb_internal	_hyper_2_31_chunk	\N	f	0	f	2025-07-25 12:07:46.777789+00
32	6	_timescaledb_internal	_hyper_6_32_chunk	\N	f	0	f	2025-07-25 12:08:28.154099+00
33	4	_timescaledb_internal	_hyper_4_33_chunk	\N	f	0	f	2025-07-25 12:08:42.112538+00
34	5	_timescaledb_internal	_hyper_5_34_chunk	\N	f	0	f	2025-07-25 12:08:42.119053+00
35	7	_timescaledb_internal	_hyper_7_35_chunk	\N	f	0	f	2025-07-25 13:08:37.457236+00
\.


--
-- Data for Name: chunk_column_stats; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.chunk_column_stats (id, hypertable_id, chunk_id, column_name, range_start, range_end, valid) FROM stdin;
\.


--
-- Data for Name: dimension; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.dimension (id, hypertable_id, column_name, column_type, aligned, num_slices, partitioning_func_schema, partitioning_func, interval_length, compress_interval_length, integer_now_func_schema, integer_now_func) FROM stdin;
1	1	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
2	2	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
3	3	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
4	4	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
5	5	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
6	6	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
7	7	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
\.


--
-- Data for Name: dimension_slice; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.dimension_slice (id, dimension_id, range_start, range_end) FROM stdin;
1	3	1750896000000000	1751500800000000
2	2	1750896000000000	1751500800000000
3	4	1750896000000000	1751500800000000
4	5	1750896000000000	1751500800000000
5	1	1750896000000000	1751500800000000
6	6	1750896000000000	1751500800000000
7	7	1750896000000000	1751500800000000
8	2	1751500800000000	1752105600000000
9	1	1751500800000000	1752105600000000
10	3	1751500800000000	1752105600000000
11	7	1751500800000000	1752105600000000
12	6	1751500800000000	1752105600000000
13	4	1751500800000000	1752105600000000
14	5	1751500800000000	1752105600000000
15	3	1752105600000000	1752710400000000
16	1	1752105600000000	1752710400000000
17	2	1752105600000000	1752710400000000
18	4	1752105600000000	1752710400000000
19	5	1752105600000000	1752710400000000
20	6	1752105600000000	1752710400000000
21	7	1752105600000000	1752710400000000
22	1	1752710400000000	1753315200000000
23	3	1752710400000000	1753315200000000
24	2	1752710400000000	1753315200000000
25	6	1752710400000000	1753315200000000
26	7	1752710400000000	1753315200000000
27	4	1752710400000000	1753315200000000
28	5	1752710400000000	1753315200000000
29	1	1753315200000000	1753920000000000
30	3	1753315200000000	1753920000000000
31	2	1753315200000000	1753920000000000
32	6	1753315200000000	1753920000000000
33	4	1753315200000000	1753920000000000
34	5	1753315200000000	1753920000000000
35	7	1753315200000000	1753920000000000
\.


--
-- Data for Name: chunk_constraint; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.chunk_constraint (chunk_id, dimension_slice_id, constraint_name, hypertable_constraint_name) FROM stdin;
1	1	constraint_1	\N
2	2	constraint_2	\N
3	3	constraint_3	\N
4	4	constraint_4	\N
5	5	constraint_5	\N
6	6	constraint_6	\N
7	7	constraint_7	\N
8	8	constraint_8	\N
9	9	constraint_9	\N
10	10	constraint_10	\N
11	11	constraint_11	\N
12	12	constraint_12	\N
13	13	constraint_13	\N
14	14	constraint_14	\N
15	15	constraint_15	\N
16	16	constraint_16	\N
17	17	constraint_17	\N
18	18	constraint_18	\N
19	19	constraint_19	\N
20	20	constraint_20	\N
21	21	constraint_21	\N
22	22	constraint_22	\N
23	23	constraint_23	\N
24	24	constraint_24	\N
25	25	constraint_25	\N
26	26	constraint_26	\N
27	27	constraint_27	\N
28	28	constraint_28	\N
29	29	constraint_29	\N
30	30	constraint_30	\N
31	31	constraint_31	\N
32	32	constraint_32	\N
33	33	constraint_33	\N
34	34	constraint_34	\N
35	35	constraint_35	\N
\.


--
-- Data for Name: chunk_index; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.chunk_index (chunk_id, index_name, hypertable_id, hypertable_index_name) FROM stdin;
1	_hyper_3_1_chunk_sensor_motion_time_idx	3	sensor_motion_time_idx
2	_hyper_2_2_chunk_sensor_humidity_time_idx	2	sensor_humidity_time_idx
3	_hyper_4_3_chunk_sensor_neighbors_count_time_idx	4	sensor_neighbors_count_time_idx
4	_hyper_5_4_chunk_sensor_neighbors_detail_time_idx	5	sensor_neighbors_detail_time_idx
5	_hyper_1_5_chunk_sensor_temperature_time_idx	1	sensor_temperature_time_idx
6	_hyper_6_6_chunk_sensor_pressure_time_idx	6	sensor_pressure_time_idx
7	_hyper_7_7_chunk_sensor_voltage_time_idx	7	sensor_voltage_time_idx
8	_hyper_2_8_chunk_sensor_humidity_time_idx	2	sensor_humidity_time_idx
9	_hyper_1_9_chunk_sensor_temperature_time_idx	1	sensor_temperature_time_idx
10	_hyper_3_10_chunk_sensor_motion_time_idx	3	sensor_motion_time_idx
11	_hyper_7_11_chunk_sensor_voltage_time_idx	7	sensor_voltage_time_idx
12	_hyper_6_12_chunk_sensor_pressure_time_idx	6	sensor_pressure_time_idx
13	_hyper_4_13_chunk_sensor_neighbors_count_time_idx	4	sensor_neighbors_count_time_idx
14	_hyper_5_14_chunk_sensor_neighbors_detail_time_idx	5	sensor_neighbors_detail_time_idx
15	_hyper_3_15_chunk_sensor_motion_time_idx	3	sensor_motion_time_idx
16	_hyper_1_16_chunk_sensor_temperature_time_idx	1	sensor_temperature_time_idx
17	_hyper_2_17_chunk_sensor_humidity_time_idx	2	sensor_humidity_time_idx
18	_hyper_4_18_chunk_sensor_neighbors_count_time_idx	4	sensor_neighbors_count_time_idx
19	_hyper_5_19_chunk_sensor_neighbors_detail_time_idx	5	sensor_neighbors_detail_time_idx
20	_hyper_6_20_chunk_sensor_pressure_time_idx	6	sensor_pressure_time_idx
21	_hyper_7_21_chunk_sensor_voltage_time_idx	7	sensor_voltage_time_idx
22	_hyper_1_22_chunk_sensor_temperature_time_idx	1	sensor_temperature_time_idx
23	_hyper_3_23_chunk_sensor_motion_time_idx	3	sensor_motion_time_idx
24	_hyper_2_24_chunk_sensor_humidity_time_idx	2	sensor_humidity_time_idx
25	_hyper_6_25_chunk_sensor_pressure_time_idx	6	sensor_pressure_time_idx
26	_hyper_7_26_chunk_sensor_voltage_time_idx	7	sensor_voltage_time_idx
27	_hyper_4_27_chunk_sensor_neighbors_count_time_idx	4	sensor_neighbors_count_time_idx
28	_hyper_5_28_chunk_sensor_neighbors_detail_time_idx	5	sensor_neighbors_detail_time_idx
29	_hyper_1_29_chunk_sensor_temperature_time_idx	1	sensor_temperature_time_idx
30	_hyper_3_30_chunk_sensor_motion_time_idx	3	sensor_motion_time_idx
31	_hyper_2_31_chunk_sensor_humidity_time_idx	2	sensor_humidity_time_idx
32	_hyper_6_32_chunk_sensor_pressure_time_idx	6	sensor_pressure_time_idx
33	_hyper_4_33_chunk_sensor_neighbors_count_time_idx	4	sensor_neighbors_count_time_idx
34	_hyper_5_34_chunk_sensor_neighbors_detail_time_idx	5	sensor_neighbors_detail_time_idx
35	_hyper_7_35_chunk_sensor_voltage_time_idx	7	sensor_voltage_time_idx
\.


--
-- Data for Name: compression_chunk_size; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.compression_chunk_size (chunk_id, compressed_chunk_id, uncompressed_heap_size, uncompressed_toast_size, uncompressed_index_size, compressed_heap_size, compressed_toast_size, compressed_index_size, numrows_pre_compression, numrows_post_compression, numrows_frozen_immediately) FROM stdin;
\.


--
-- Data for Name: compression_settings; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.compression_settings (relid, compress_relid, segmentby, orderby, orderby_desc, orderby_nullsfirst) FROM stdin;
\.


--
-- Data for Name: continuous_agg; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_agg (mat_hypertable_id, raw_hypertable_id, parent_mat_hypertable_id, user_view_schema, user_view_name, partial_view_schema, partial_view_name, direct_view_schema, direct_view_name, materialized_only, finalized) FROM stdin;
\.


--
-- Data for Name: continuous_agg_migrate_plan; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_agg_migrate_plan (mat_hypertable_id, start_ts, end_ts, user_view_definition) FROM stdin;
\.


--
-- Data for Name: continuous_agg_migrate_plan_step; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_agg_migrate_plan_step (mat_hypertable_id, step_id, status, start_ts, end_ts, type, config) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_bucket_function; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_bucket_function (mat_hypertable_id, bucket_func, bucket_width, bucket_origin, bucket_offset, bucket_timezone, bucket_fixed_width) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_hypertable_invalidation_log; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_hypertable_invalidation_log (hypertable_id, lowest_modified_value, greatest_modified_value) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_invalidation_threshold; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_invalidation_threshold (hypertable_id, watermark) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_materialization_invalidation_log; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_materialization_invalidation_log (materialization_id, lowest_modified_value, greatest_modified_value) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_watermark; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_watermark (mat_hypertable_id, watermark) FROM stdin;
\.


--
-- Data for Name: metadata; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.metadata (key, value, include_in_telemetry) FROM stdin;
install_timestamp	2025-06-28 12:21:43.64726+00	t
timescaledb_version	2.19.3	f
exported_uuid	dd0b99b0-23a3-4415-91a2-6bbe8eadb1f6	t
\.


--
-- Data for Name: tablespace; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.tablespace (id, hypertable_id, tablespace_name) FROM stdin;
\.


--
-- Data for Name: bgw_job; Type: TABLE DATA; Schema: _timescaledb_config; Owner: admin
--

COPY _timescaledb_config.bgw_job (id, application_name, schedule_interval, max_runtime, max_retries, retry_period, proc_schema, proc_name, owner, scheduled, fixed_schedule, initial_start, hypertable_id, config, check_schema, check_name, timezone) FROM stdin;
\.


--
-- Data for Name: _hyper_1_16_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_1_16_chunk ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
2025-07-10 07:25:35.285+00	112	telegraf	978202981	23.71	17	1
2025-07-10 07:26:05.55+00	112	telegraf	978202981	23.96	19	1
2025-07-10 07:26:35.812+00	112	telegraf	978202981	24.85	31	1
2025-07-10 07:27:06.08+00	112	telegraf	978202981	25.13	35	1
2025-07-10 07:28:57.083+00	112	telegraf	1041420528	23.73	50	1
2025-07-10 07:33:09.235+00	112	telegraf	978202981	24.61	64	1
2025-07-10 07:39:04.842+00	112	telegraf	1126982881	23.75	69	1
2025-07-10 07:41:13.431+00	112	telegraf	978202981	24.36	72	1
2025-07-10 08:09:50.93+00	112	telegraf	1126982881	23.92	106	1
2025-07-10 08:11:59.491+00	112	telegraf	978202981	24.29	107	1
2025-07-10 08:30:59.449+00	112	telegraf	1041420528	24.17	119	1
2025-07-10 08:40:36.961+00	112	telegraf	1126982881	23.93	147	1
2025-07-10 08:42:45.594+00	112	telegraf	978202981	24.13	148	1
2025-07-10 08:57:15.628+00	112	telegraf	1126982881	24.18	158	1
2025-07-10 09:01:45.467+00	112	telegraf	1041420528	24.36	164	1
2025-07-10 09:13:31.67+00	112	telegraf	978202981	24.36	173	1
2025-07-10 09:22:28.75+00	112	telegraf	1126982881	24.45	179	1
2025-07-10 09:26:28.322+00	112	telegraf	1041420528	24.62	180	1
2025-07-10 09:41:16.14+00	112	telegraf	978202981	24.61	189	1
2025-07-10 09:44:10.058+00	112	telegraf	1126982881	24.7	192	1
2025-07-10 09:57:14.371+00	112	telegraf	1041420528	24.85	204	1
2025-07-10 10:12:02.238+00	112	telegraf	978202981	24.83	213	1
2025-07-10 10:14:56.1+00	112	telegraf	1126982881	24.85	215	1
2025-07-10 11:44:20.415+00	112	telegraf	978202981	24.91	271	1
2025-07-10 11:47:14.2+00	112	telegraf	1126982881	25	273	1
2025-07-10 11:55:15.872+00	112	telegraf	1041420528	25.11	276	1
2025-07-10 12:01:59.65+00	112	telegraf	978202981	25.16	281	1
2025-07-10 12:07:55.004+00	112	telegraf	1126982881	25.25	291	1
2025-07-10 12:30:14.426+00	112	telegraf	978202981	25.43	300	1
2025-07-10 12:33:05.619+00	112	telegraf	1041420528	25.61	303	1
2025-07-10 12:35:09.213+00	112	telegraf	1126982881	25.51	304	1
2025-07-10 13:01:00.452+00	112	telegraf	978202981	25.61	320	1
2025-07-10 13:03:51.669+00	112	telegraf	1041420528	25.76	323	1
2025-07-10 13:05:55.237+00	112	telegraf	1126982881	25.63	324	1
2025-07-10 14:05:23.739+00	112	telegraf	1041420528	25.63	360	1
2025-07-10 14:07:27.341+00	112	telegraf	1126982881	25.52	362	1
2025-07-10 14:33:18.642+00	112	telegraf	978202981	25.48	377	1
2025-07-10 14:36:09.774+00	112	telegraf	1041420528	25.53	378	1
2025-07-10 14:38:13.374+00	112	telegraf	1126982881	25.48	380	1
2025-07-10 15:04:04.713+00	112	telegraf	978202981	25.57	405	1
2025-07-10 15:06:55.8+00	112	telegraf	1041420528	25.72	406	1
2025-07-10 15:08:59.442+00	112	telegraf	1126982881	25.56	408	1
2025-07-10 15:37:41.886+00	112	telegraf	1041420528	25.9	426	1
2025-07-10 16:08:27.941+00	112	telegraf	1041420528	26	448	1
2025-07-10 16:39:14.004+00	112	telegraf	1041420528	26.01	474	1
2025-07-10 16:41:17.552+00	112	telegraf	1126982881	25.85	477	1
2025-07-10 17:07:09.018+00	112	telegraf	978202981	25.86	490	1
2025-07-10 17:12:03.561+00	112	telegraf	1126982881	25.84	497	1
2025-07-10 17:37:55.071+00	112	telegraf	978202981	25.83	508	1
2025-07-10 17:40:46.066+00	112	telegraf	1041420528	25.87	513	1
2025-07-10 17:42:49.605+00	112	telegraf	1126982881	25.81	515	1
2025-07-11 06:55:40.554+00	112	telegraf	1041420528	23.91	6	1
2025-07-11 06:57:52.353+00	112	telegraf	978202981	23.98	7	1
2025-07-11 07:02:46.693+00	112	telegraf	1126982881	24.16	12	1
2025-07-11 07:07:16.639+00	112	telegraf	1041420528	24.16	16	1
2025-07-11 07:13:00.305+00	112	telegraf	978202981	24.23	20	1
2025-07-11 07:22:54.747+00	112	telegraf	1041420528	24.41	25	1
2025-07-11 07:24:28+00	112	telegraf	1126982881	24.41	27	1
2025-07-11 07:37:43.12+00	112	telegraf	978202981	24.49	35	1
2025-07-11 07:40:33.938+00	112	telegraf	1041420528	24.68	38	1
2025-07-11 07:48:10.357+00	112	telegraf	1126982881	24.67	42	1
2025-07-11 09:02:57.57+00	112	telegraf	978202981	25.13	102	1
2025-07-11 09:08:22.165+00	112	telegraf	1126982881	25.24	109	1
2025-07-11 09:22:37.869+00	112	telegraf	978202981	25.38	117	1
2025-07-11 09:29:02.954+00	112	telegraf	1126982881	25.5	123	1
2025-07-12 06:12:18.806+00	112	telegraf	1041420528	23.07	24	1
2025-07-12 06:20:25.326+00	112	telegraf	1126982881	23.23	31	1
2025-07-12 06:28:27.226+00	112	telegraf	1041420528	23.32	36	1
2025-07-12 06:30:39.168+00	112	telegraf	978202981	23.35	39	1
2025-07-12 06:32:01.373+00	112	telegraf	1126982881	23.48	41	1
2025-07-12 06:42:34.583+00	112	telegraf	1041420528	23.58	46	1
2025-07-12 06:49:49.175+00	112	telegraf	978202981	23.6	51	1
2025-07-12 06:57:12.23+00	112	telegraf	1041420528	23.83	57	1
2025-07-12 07:06:19.253+00	112	telegraf	1126982881	24	62	1
2025-07-12 07:20:35.188+00	112	telegraf	978202981	23.8	69	1
2025-07-12 07:27:58.248+00	112	telegraf	1041420528	23.86	75	1
2025-07-12 07:51:21.224+00	112	telegraf	978202981	23.87	88	1
2025-07-12 08:18:35.429+00	112	telegraf	978202981	24.13	102	1
2025-07-12 08:28:01.879+00	112	telegraf	1126982881	24.44	108	1
2025-07-12 08:49:21.492+00	112	telegraf	978202981	24.33	120	1
2025-07-12 08:58:47.954+00	112	telegraf	1126982881	24.62	126	1
2025-07-12 09:00:16.382+00	112	telegraf	1041420528	24.51	132	1
2025-07-12 10:21:39.657+00	112	telegraf	978202981	24.47	182	1
2025-07-12 14:06:28.44+00	112	telegraf	1126982881	24.36	320	1
2025-07-12 14:06:56.289+00	112	telegraf	1041420528	24.44	321	1
2025-07-12 14:17:12.504+00	112	telegraf	978202981	24.59	331	1
2025-07-12 14:18:04.533+00	112	telegraf	1126982881	24.61	332	1
2025-07-12 14:23:34.954+00	112	telegraf	1041420528	24.71	336	1
2025-07-12 14:31:11.372+00	112	telegraf	1126982881	24.88	340	1
2025-07-12 14:33:20.916+00	112	telegraf	978202981	24.85	342	1
2025-07-12 14:39:13.1+00	112	telegraf	1041420528	24.98	347	1
2025-07-12 14:43:17.676+00	112	telegraf	1126982881	25.13	352	1
2025-07-12 14:48:59.066+00	112	telegraf	978202981	25.1	354	1
2025-07-12 14:52:19.931+00	112	telegraf	1041420528	25.25	358	1
2025-07-12 14:57:55.3+00	112	telegraf	1126982881	25.38	359	1
2025-07-12 15:06:08.011+00	112	telegraf	978202981	25.37	363	1
2025-07-12 15:11:32.394+00	112	telegraf	1126982881	25.63	372	1
2025-07-12 15:13:30.98+00	112	telegraf	1041420528	25.51	374	1
2025-07-12 16:40:18.758+00	112	telegraf	1126982881	25.3	422	1
2025-07-12 16:45:49.091+00	112	telegraf	1041420528	25.33	428	1
2025-07-12 17:09:12.163+00	112	telegraf	978202981	25.49	439	1
2025-07-12 17:33:55.077+00	112	telegraf	978202981	25.75	456	1
2025-07-12 17:39:47.211+00	112	telegraf	1041420528	25.8	461	1
2025-07-12 17:50:25.321+00	112	telegraf	1126982881	26.02	469	1
2025-07-12 18:03:29.599+00	112	telegraf	1041420528	26.05	475	1
2025-07-12 18:04:41.122+00	112	telegraf	978202981	25.94	476	1
2025-07-12 18:14:07.658+00	112	telegraf	1126982881	26.27	485	1
2025-07-12 18:34:15.635+00	112	telegraf	1041420528	26.28	495	1
2025-07-12 18:39:51.09+00	112	telegraf	1126982881	26.54	501	1
2025-07-12 19:06:13.218+00	112	telegraf	978202981	26.33	515	1
2025-07-12 20:07:45.284+00	112	telegraf	978202981	25.87	554	1
2025-07-12 20:23:14.966+00	112	telegraf	1126982881	26.1	564	1
2025-07-12 20:29:15.586+00	112	telegraf	1041420528	26.03	565	1
2025-07-12 20:38:31.354+00	112	telegraf	978202981	26	572	1
2025-07-12 20:54:01.05+00	112	telegraf	1126982881	26.35	582	1
2025-07-12 21:00:01.626+00	112	telegraf	1041420528	26.28	585	1
2025-07-12 21:09:17.386+00	112	telegraf	978202981	26.17	590	1
2025-07-12 21:30:47.67+00	112	telegraf	1041420528	26.44	605	1
2025-07-12 21:40:03.415+00	112	telegraf	978202981	26.32	612	1
2025-07-12 22:01:33.698+00	112	telegraf	1041420528	26.41	624	1
2025-07-12 22:10:49.462+00	112	telegraf	978202981	26.2	631	1
2025-07-12 22:18:14.972+00	112	telegraf	1126982881	26.41	633	1
2025-07-13 06:23:55.598+00	112	telegraf	1041420528	24.76	933	1
2025-07-13 06:33:33.359+00	112	telegraf	1126982881	24.95	940	1
2025-07-13 06:34:42.236+00	112	telegraf	978202981	24.92	941	1
2025-07-13 06:43:38.615+00	112	telegraf	1126982881	25.21	947	1
2025-07-13 06:51:51.202+00	112	telegraf	978202981	25.17	954	1
2025-07-13 07:16:22.948+00	112	telegraf	1041420528	25.52	966	1
2025-07-13 07:17:04.337+00	112	telegraf	978202981	25.42	969	1
2025-07-13 09:50:54.622+00	112	telegraf	978202981	25.35	1063	1
2025-07-13 10:06:21.59+00	112	telegraf	1041420528	25.58	1071	1
2025-07-13 10:08:25.49+00	112	telegraf	1126982881	25.66	1076	1
2025-07-13 10:11:35.387+00	112	telegraf	978202981	25.6	1080	1
2025-07-13 10:24:33.893+00	112	telegraf	1126982881	25.93	1086	1
2025-07-13 10:24:31.048+00	112	telegraf	1041420528	25.85	1087	1
2025-07-13 10:42:13.112+00	112	telegraf	1126982881	26.18	1102	1
2025-07-13 10:44:11.303+00	112	telegraf	1041420528	26.11	1103	1
2025-07-13 10:53:27.22+00	112	telegraf	978202981	26.11	1107	1
2025-07-13 11:04:24.697+00	112	telegraf	1126982881	26.43	1111	1
2025-07-13 11:09:24.461+00	112	telegraf	1041420528	26.36	1117	1
2025-07-13 11:18:40.369+00	112	telegraf	978202981	26.36	1122	1
2025-07-13 11:28:37.319+00	112	telegraf	1126982881	26.68	1126	1
2025-07-13 11:34:07.342+00	112	telegraf	1041420528	26.63	1130	1
2025-07-13 12:20:12.478+00	112	telegraf	978202981	26.39	1160	1
2025-07-13 13:00:55.444+00	112	telegraf	1126982881	26.58	1187	1
2025-07-13 13:06:25.574+00	112	telegraf	1041420528	26.4	1189	1
2025-07-13 13:21:44.581+00	112	telegraf	978202981	26.35	1203	1
2025-07-13 13:31:41.483+00	112	telegraf	1126982881	26.71	1210	1
2025-07-13 13:37:11.622+00	112	telegraf	1041420528	26.6	1214	1
2025-07-13 14:23:16.66+00	112	telegraf	978202981	26.44	1242	1
2025-07-13 14:33:13.568+00	112	telegraf	1126982881	26.71	1249	1
2025-07-13 14:38:43.728+00	112	telegraf	1041420528	26.63	1251	1
2025-07-13 14:54:02.701+00	112	telegraf	978202981	26.64	1261	1
2025-07-14 08:04:49.285+00	112	telegraf	1041420528	25.93	1907	1
2025-07-14 08:05:22.488+00	112	telegraf	1126982881	26.02	1908	1
2025-07-14 08:06:31.391+00	112	telegraf	978202981	25.98	1909	1
2025-07-14 08:17:56.121+00	112	telegraf	1041420528	26.18	1918	1
2025-07-15 08:54:46.29+00	112	telegraf	1041420528	26.04	2820	1
2025-07-15 08:56:59.103+00	112	telegraf	978202981	26.07	2823	1
2025-07-15 09:25:32.323+00	112	telegraf	1041420528	26.13	2841	1
2025-07-15 09:27:45.15+00	112	telegraf	978202981	26.11	2844	1
2025-07-16 07:14:58.412+00	112	telegraf	1126982881	24.66	3746	1
2025-07-16 08:48:47.385+00	112	telegraf	1126982881	25.17	3808	1
2025-07-16 08:50:26.836+00	112	telegraf	978202981	24.82	3810	1
2025-07-16 12:20:04.366+00	112	telegraf	1041420528	24.44	3938	1
2025-07-16 12:25:49.124+00	112	telegraf	978202981	24.43	3940	1
2025-07-16 12:53:55.325+00	112	telegraf	1126982881	24.4	3957	1
2025-07-16 12:56:35.166+00	112	telegraf	978202981	24.55	3958	1
2025-07-16 13:21:36.441+00	112	telegraf	1041420528	24.54	3974	1
2025-07-16 13:24:41.353+00	112	telegraf	1126982881	24.51	3975	1
2025-07-16 13:27:21.208+00	112	telegraf	978202981	24.53	3977	1
2025-07-16 13:52:22.473+00	112	telegraf	1041420528	24.54	3992	1
2025-07-16 14:23:08.531+00	112	telegraf	1041420528	24.6	4010	1
2025-07-16 14:26:13.474+00	112	telegraf	1126982881	24.59	4011	1
2025-07-16 14:28:53.311+00	112	telegraf	978202981	24.63	4014	1
2025-07-16 14:53:54.571+00	112	telegraf	1041420528	24.7	4030	1
2025-07-16 14:56:59.541+00	112	telegraf	1126982881	24.63	4031	1
2025-07-16 14:59:39.397+00	112	telegraf	978202981	24.7	4035	1
2025-07-16 15:27:45.659+00	112	telegraf	1126982881	24.67	4051	1
2025-07-16 15:30:25.445+00	112	telegraf	978202981	24.75	4054	1
2025-07-16 15:58:31.68+00	112	telegraf	1126982881	24.7	4071	1
2025-07-16 16:01:11.479+00	112	telegraf	978202981	24.82	4073	1
2025-07-16 16:26:12.701+00	112	telegraf	1041420528	24.79	4086	1
2025-07-16 17:53:31.67+00	112	telegraf	1126982881	25.28	4143	1
2025-07-16 17:58:30.825+00	112	telegraf	1041420528	25.3	4146	1
2025-07-16 18:02:14.687+00	112	telegraf	978202981	25.35	4148	1
2025-07-16 18:07:39.037+00	112	telegraf	1126982881	25.55	4155	1
2025-07-16 18:13:08.461+00	112	telegraf	1041420528	25.57	4159	1
2025-07-16 18:38:25.124+00	112	telegraf	1126982881	25.73	4176	1
2025-07-16 18:43:54.516+00	112	telegraf	1041420528	25.73	4179	1
2025-07-16 19:00:06.438+00	112	telegraf	1126982881	25.99	4188	1
2025-07-16 19:01:45.754+00	112	telegraf	978202981	25.84	4189	1
2025-07-16 19:02:03.976+00	112	telegraf	1041420528	25.98	4190	1
2025-07-16 19:22:26.57+00	112	telegraf	978202981	26.1	4204	1
2025-07-16 19:23:15.054+00	112	telegraf	1041420528	26.23	4206	1
2025-07-16 19:53:12.615+00	112	telegraf	978202981	26.15	4230	1
2025-07-16 19:54:01.096+00	112	telegraf	1041420528	26.27	4231	1
2025-07-16 20:04:40.14+00	112	telegraf	1126982881	26.22	4238	1
2025-07-16 20:19:44.505+00	112	telegraf	1041420528	25.99	4248	1
\.


--
-- Data for Name: _hyper_1_22_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_1_22_chunk ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
2025-07-17 05:34:03.466+00	112	telegraf	1041420528	24.59	4593	1
2025-07-17 05:48:14.801+00	112	telegraf	1126982881	24.85	4600	1
2025-07-17 05:51:12.411+00	112	telegraf	1041420528	24.84	4603	1
2025-07-17 05:51:55.013+00	112	telegraf	978202981	24.83	4604	1
2025-07-17 06:02:18.196+00	112	telegraf	1041420528	25.09	4613	1
2025-07-17 06:07:33.16+00	112	telegraf	978202981	25.08	4615	1
2025-07-17 06:19:57.397+00	112	telegraf	1041420528	25.35	4624	1
2025-07-17 06:23:11.356+00	112	telegraf	978202981	25.33	4625	1
2025-07-17 06:37:36.584+00	112	telegraf	1041420528	25.6	4637	1
2025-07-17 06:51:17.661+00	112	telegraf	1126982881	25.92	4647	1
2025-07-17 07:08:22.63+00	112	telegraf	1041420528	25.81	4658	1
2025-07-17 07:18:10.02+00	112	telegraf	978202981	25.65	4661	1
2025-07-17 07:22:03.686+00	112	telegraf	1126982881	25.89	4666	1
2025-07-17 07:39:08.651+00	112	telegraf	1041420528	25.92	4677	1
2025-07-17 07:44:15.305+00	112	telegraf	1126982881	26.14	4679	1
2025-07-17 07:48:56.065+00	112	telegraf	978202981	25.86	4683	1
2025-07-17 08:09:54.71+00	112	telegraf	1041420528	26.15	4697	1
2025-07-17 08:15:01.348+00	112	telegraf	1126982881	26.32	4698	1
2025-07-17 08:19:42.109+00	112	telegraf	978202981	26.04	4702	1
2025-07-17 08:50:28.176+00	112	telegraf	978202981	26.27	4720	1
2025-07-17 09:11:26.799+00	112	telegraf	1041420528	26.46	4733	1
2025-07-17 09:16:33.434+00	112	telegraf	1126982881	26.6	4735	1
2025-07-17 09:21:14.205+00	112	telegraf	978202981	26.38	4738	1
2025-07-17 09:42:12.832+00	112	telegraf	1041420528	26.59	4751	1
2025-07-17 09:47:19.518+00	112	telegraf	1126982881	26.73	4753	1
2025-07-17 09:52:00.236+00	112	telegraf	978202981	26.47	4756	1
2025-07-17 10:12:58.869+00	112	telegraf	1041420528	26.68	4769	1
2025-07-17 10:18:05.544+00	112	telegraf	1126982881	26.77	4771	1
2025-07-17 10:22:46.291+00	112	telegraf	978202981	26.56	4774	1
2025-07-17 10:43:44.898+00	112	telegraf	1041420528	26.78	4790	1
2025-07-17 10:48:51.617+00	112	telegraf	1126982881	26.9	4795	1
2025-07-17 10:53:32.325+00	112	telegraf	978202981	26.68	4797	1
2025-07-17 11:14:30.941+00	112	telegraf	1041420528	26.8	4810	1
2025-07-17 11:19:37.657+00	112	telegraf	1126982881	26.89	4814	1
2025-07-17 12:48:54.282+00	112	telegraf	1126982881	26.12	4870	1
2025-07-17 12:51:03.643+00	112	telegraf	978202981	26.09	4872	1
2025-07-17 13:02:57.49+00	112	telegraf	1041420528	26.23	4876	1
2025-07-17 13:09:04.789+00	112	telegraf	1126982881	26.37	4882	1
2025-07-17 13:18:48.107+00	112	telegraf	978202981	26.34	4889	1
2025-07-17 13:24:08.519+00	112	telegraf	1041420528	26.48	4891	1
2025-07-17 13:27:44.526+00	112	telegraf	1126982881	26.62	4893	1
2025-07-17 13:55:59.273+00	112	telegraf	1126982881	26.88	4910	1
2025-07-17 15:22:13.637+00	112	telegraf	527134251	27.69	92	1
2025-07-17 15:34:57.169+00	112	telegraf	1523842139	27.47	108	1
2025-07-17 15:37:21.534+00	112	telegraf	527134251	28	128	1
2025-07-17 15:37:19.2+00	112	telegraf	840973111	27.87	129	1
2025-07-17 15:37:49.466+00	112	telegraf	840973111	28.12	130	1
2025-07-17 15:37:51.803+00	112	telegraf	527134251	28.27	131	1
2025-07-17 15:37:58.737+00	112	telegraf	1523842139	28.17	132	1
2025-07-17 15:41:53.906+00	112	telegraf	527134251	28.02	144	1
2025-07-17 15:41:50.473+00	112	telegraf	1041420528	26.46	4977	1
2025-07-17 15:42:33.059+00	112	telegraf	978202981	26.41	4978	1
2025-07-17 15:44:25.888+00	112	telegraf	1126982881	26.54	4980	1
2025-07-17 15:45:23.414+00	112	telegraf	840973111	27.86	145	1
2025-07-17 15:49:04.533+00	112	telegraf	1523842139	27.88	160	1
2025-07-17 15:55:31.035+00	112	telegraf	527134251	27.77	174	1
2025-07-17 15:58:30.255+00	112	telegraf	840973111	27.6	182	1
2025-07-17 16:01:00.466+00	112	telegraf	1041420528	26.71	4990	1
2025-07-17 16:04:42.755+00	112	telegraf	1523842139	27.63	187	1
2025-07-17 16:05:36.921+00	112	telegraf	1126982881	26.79	4991	1
2025-07-17 16:11:18.09+00	112	telegraf	978202981	26.68	4998	1
2025-07-17 16:19:11.034+00	112	telegraf	840973111	27.35	207	1
2025-07-17 16:22:14.978+00	112	telegraf	527134251	27.52	210	1
2025-07-17 16:22:52.27+00	112	telegraf	1523842139	27.35	211	1
2025-07-17 16:29:45.474+00	112	telegraf	1041420528	26.98	5009	1
2025-07-17 16:38:02.021+00	112	telegraf	978202981	26.93	5011	1
2025-07-17 17:08:48.092+00	112	telegraf	978202981	27.12	5030	1
2025-07-17 17:31:17.577+00	112	telegraf	1041420528	27.35	5045	1
2025-07-17 17:39:34.144+00	112	telegraf	978202981	27.29	5049	1
2025-07-17 18:10:20.19+00	112	telegraf	978202981	27.38	5074	1
2025-07-17 18:41:06.234+00	112	telegraf	978202981	27.31	5092	1
2025-07-17 19:00:08.076+00	112	telegraf	1126982881	27.46	5106	1
2025-07-17 19:03:35.753+00	112	telegraf	1041420528	27.33	5108	1
2025-07-17 19:30:54.149+00	112	telegraf	1126982881	27.56	5124	1
2025-07-17 19:34:21.794+00	112	telegraf	1041420528	27.44	5127	1
2025-07-17 19:42:38.285+00	112	telegraf	978202981	27.33	5131	1
2025-07-17 20:01:40.19+00	112	telegraf	1126982881	27.69	5143	1
2025-07-17 20:05:07.844+00	112	telegraf	1041420528	27.41	5148	1
2025-07-17 20:07:43.337+00	112	telegraf	1126982881	27.43	5149	1
2025-07-17 20:20:58.289+00	112	telegraf	978202981	27.01	5165	1
2025-07-17 20:24:52.284+00	112	telegraf	1126982881	26.89	5169	1
2025-07-17 20:25:18.379+00	112	telegraf	1041420528	26.88	5170	1
2025-07-17 20:29:32.757+00	112	telegraf	978202981	26.76	5174	1
2025-07-17 20:33:57.018+00	112	telegraf	1126982881	26.64	5175	1
2025-07-17 20:35:23.655+00	112	telegraf	1041420528	26.63	5176	1
2025-07-17 20:43:40.125+00	112	telegraf	978202981	26.48	5181	1
2025-07-17 20:46:03.314+00	112	telegraf	1126982881	26.38	5184	1
2025-07-17 20:52:14.59+00	112	telegraf	978202981	26.23	5192	1
2025-07-17 20:55:08.048+00	112	telegraf	1126982881	26.12	5193	1
2025-07-17 21:02:11.738+00	112	telegraf	1126982881	25.87	5199	1
2025-07-17 21:27:51.057+00	112	telegraf	1041420528	26.02	5214	1
2025-07-17 21:30:34.607+00	112	telegraf	978202981	25.86	5219	1
2025-07-17 21:47:05.134+00	112	telegraf	1126982881	26.11	5227	1
2025-07-18 06:07:03.986+00	112	telegraf	978202981	24.34	5533	1
2025-07-18 06:10:23.627+00	112	telegraf	1041420528	24.33	5537	1
2025-07-18 06:37:50.059+00	112	telegraf	978202981	24.4	5551	1
2025-07-18 06:45:15.918+00	112	telegraf	1126982881	24.68	5556	1
2025-07-18 06:52:45.683+00	112	telegraf	1041420528	24.74	5560	1
2025-07-18 06:52:57.947+00	112	telegraf	978202981	24.65	5561	1
2025-07-18 07:12:07.938+00	112	telegraf	978202981	24.9	5578	1
2025-07-18 07:14:31.201+00	112	telegraf	1126982881	25.21	5579	1
2025-07-18 07:25:32.783+00	112	telegraf	1041420528	25.24	5583	1
2025-07-18 07:33:18.972+00	112	telegraf	978202981	25.16	5593	1
2025-07-18 07:38:13.571+00	112	telegraf	1126982881	25.48	5594	1
2025-07-18 07:47:44.346+00	112	telegraf	1041420528	25.5	5599	1
2025-07-18 07:56:00.798+00	112	telegraf	978202981	25.41	5613	1
2025-07-18 07:58:54.356+00	112	telegraf	1126982881	25.75	5615	1
2025-07-18 08:10:26.178+00	112	telegraf	1041420528	25.75	5624	1
2025-07-18 08:29:40.395+00	112	telegraf	1126982881	25.91	5634	1
2025-07-18 08:41:12.243+00	112	telegraf	1041420528	25.88	5644	1
2025-07-18 09:00:26.42+00	112	telegraf	1126982881	26.06	5652	1
2025-07-18 09:11:58.302+00	112	telegraf	1041420528	26.02	5662	1
2025-07-18 09:23:16.336+00	112	telegraf	978202981	26	5666	1
2025-07-18 09:31:12.481+00	112	telegraf	1126982881	26.24	5672	1
2025-07-18 09:42:44.343+00	112	telegraf	1041420528	26.19	5680	1
2025-07-18 09:54:02.408+00	112	telegraf	978202981	26.11	5684	1
2025-07-18 10:13:30.38+00	112	telegraf	1041420528	26.31	5698	1
2025-07-18 10:32:44.544+00	112	telegraf	1126982881	26.59	5708	1
2025-07-18 10:44:16.423+00	112	telegraf	1041420528	26.43	5716	1
2025-07-18 10:55:34.516+00	112	telegraf	978202981	26.35	5720	1
2025-07-18 11:03:30.568+00	112	telegraf	1126982881	26.46	5728	1
2025-07-18 11:15:02.467+00	112	telegraf	1041420528	26.33	5737	1
2025-07-18 11:26:20.588+00	112	telegraf	978202981	26.24	5741	1
2025-07-18 11:34:16.605+00	112	telegraf	1126982881	26.3	5746	1
2025-07-18 11:45:48.508+00	112	telegraf	1041420528	26.26	5756	1
2025-07-18 11:57:06.633+00	112	telegraf	978202981	26.26	5760	1
2025-07-18 12:05:02.668+00	112	telegraf	1126982881	26.54	5765	1
2025-07-18 12:16:34.565+00	112	telegraf	1041420528	26.42	5775	1
2025-07-18 12:27:52.689+00	112	telegraf	978202981	26.38	5779	1
2025-07-18 12:35:48.762+00	112	telegraf	1126982881	26.58	5784	1
2025-07-18 13:45:20.851+00	112	telegraf	1041420528	25.96	5829	1
2025-07-18 13:51:28.236+00	112	telegraf	1126982881	25.98	5833	1
2025-07-18 14:00:10.876+00	112	telegraf	978202981	26.04	5837	1
2025-07-18 14:07:36.65+00	112	telegraf	1126982881	26.23	5841	1
2025-07-19 16:37:51.762+00	112	telegraf	1041420528	27.45	7021	1
2025-07-19 16:39:05.026+00	112	telegraf	978202981	26.07	7026	1
2025-07-19 16:43:54.926+00	112	telegraf	1041420528	27.14	7047	1
2025-07-19 16:51:33.571+00	112	telegraf	1126982881	26.35	7071	1
2025-07-19 16:52:59.649+00	112	telegraf	1041420528	26.6	7073	1
2025-07-19 16:57:32.013+00	112	telegraf	1041420528	26.35	7076	1
2025-07-19 17:09:08.058+00	112	telegraf	1041420528	26.1	7084	1
2025-07-19 17:20:56.856+00	112	telegraf	978202981	26.3	7092	1
2025-07-19 17:22:19.623+00	112	telegraf	1126982881	26.3	7094	1
2025-07-19 17:39:54.117+00	112	telegraf	1041420528	26.03	7102	1
2025-07-19 17:51:42.9+00	112	telegraf	978202981	26.32	7111	1
2025-07-19 18:10:40.159+00	112	telegraf	1041420528	25.99	7120	1
2025-07-19 18:42:26.727+00	112	telegraf	1041420528	26	7147	1
2025-07-19 18:53:14.991+00	112	telegraf	978202981	26.1	7155	1
2025-07-19 18:54:37.782+00	112	telegraf	1126982881	26.12	7156	1
2025-07-19 19:24:01.029+00	112	telegraf	978202981	26.02	7173	1
2025-07-19 19:25:23.842+00	112	telegraf	1126982881	26.24	7174	1
2025-07-19 19:43:58.796+00	112	telegraf	1041420528	26.06	7186	1
2025-07-20 08:08:57.406+00	112	telegraf	1041420528	24.1	7645	1
2025-07-20 08:10:40.99+00	112	telegraf	978202981	24.13	7647	1
2025-07-20 08:26:11.454+00	112	telegraf	1126982881	24.24	7658	1
2025-07-20 08:31:39.244+00	112	telegraf	1041420528	24.36	7660	1
2025-07-20 08:34:23.349+00	112	telegraf	978202981	24.39	7663	1
2025-07-20 08:36:16.701+00	112	telegraf	1126982881	24.5	7665	1
2025-07-20 08:42:14.761+00	112	telegraf	1041420528	24.61	7672	1
2025-07-20 08:49:31.276+00	112	telegraf	978202981	24.67	7682	1
2025-07-20 08:50:54.356+00	112	telegraf	1126982881	24.77	7686	1
2025-07-20 09:13:36.206+00	112	telegraf	1126982881	25.02	7699	1
2025-07-20 09:15:14.676+00	112	telegraf	978202981	24.92	7701	1
2025-07-20 09:18:33.729+00	112	telegraf	1041420528	25.14	7704	1
2025-07-20 09:27:13.295+00	112	telegraf	1126982881	25.27	7708	1
2025-07-20 09:39:14.5+00	112	telegraf	1041420528	25.39	7716	1
2025-07-20 09:46:53.548+00	112	telegraf	1126982881	25.52	7722	1
2025-07-20 09:57:36.83+00	112	telegraf	978202981	25.44	7728	1
2025-07-20 10:01:56.339+00	112	telegraf	1041420528	25.67	7731	1
2025-07-20 10:07:34.336+00	112	telegraf	1126982881	25.77	7734	1
2025-07-20 10:25:38.709+00	112	telegraf	1041420528	25.92	7748	1
2025-07-20 10:33:48.027+00	112	telegraf	1126982881	26.02	7752	1
2025-07-20 10:50:04.167+00	112	telegraf	978202981	25.9	7763	1
2025-07-20 10:56:24.778+00	112	telegraf	1041420528	26.14	7766	1
2025-07-20 10:58:30.936+00	112	telegraf	1126982881	26.28	7769	1
2025-07-20 11:56:31.221+00	112	telegraf	1126982881	25.84	7804	1
2025-07-20 11:57:56.882+00	112	telegraf	1041420528	25.9	7806	1
2025-07-20 12:22:22.291+00	112	telegraf	978202981	25.91	7822	1
2025-07-20 12:32:54.169+00	112	telegraf	1523842139	27.45	14	1
2025-07-20 12:33:16.133+00	112	telegraf	527134251	27.81	15	1
2025-07-20 12:35:45.94+00	112	telegraf	840973111	27.56	29	1
2025-07-20 12:36:26.025+00	112	telegraf	1523842139	27.14	30	1
2025-07-20 12:39:19.314+00	112	telegraf	527134251	27.47	57	1
2025-07-20 12:40:18.311+00	112	telegraf	840973111	27.22	66	1
2025-07-20 12:40:19.832+00	112	telegraf	527134251	27.15	67	1
2025-07-20 12:41:20.359+00	112	telegraf	527134251	26.82	77	1
2025-07-20 12:41:49.097+00	112	telegraf	840973111	26.94	78	1
2025-07-20 12:43:59.977+00	112	telegraf	1523842139	26.54	91	1
2025-07-20 12:45:34.378+00	112	telegraf	978202981	26.18	7837	1
2025-07-20 12:46:22.979+00	112	telegraf	527134251	26.56	101	1
2025-07-20 12:46:51.731+00	112	telegraf	840973111	26.68	103	1
2025-07-20 12:48:02.087+00	112	telegraf	1523842139	26.26	104	1
2025-07-20 12:48:28.331+00	112	telegraf	1126982881	26.33	7840	1
2025-07-20 12:50:03.136+00	112	telegraf	1523842139	26.64	113	1
2025-07-20 12:53:34.98+00	112	telegraf	1523842139	26.89	121	1
2025-07-20 12:54:27.207+00	112	telegraf	527134251	26.29	122	1
2025-07-20 12:56:27.403+00	112	telegraf	1041420528	26.35	7843	1
2025-07-20 12:56:57.004+00	112	telegraf	840973111	26.43	123	1
2025-07-20 12:59:29.835+00	112	telegraf	527134251	26.01	124	1
2025-07-20 13:03:00.153+00	112	telegraf	840973111	26.18	129	1
2025-07-20 13:04:40.757+00	112	telegraf	1523842139	26.61	136	1
2025-07-20 13:07:42.339+00	112	telegraf	1523842139	26.3	154	1
2025-07-20 13:09:33.575+00	112	telegraf	840973111	25.92	165	1
2025-07-20 13:10:09.65+00	112	telegraf	1126982881	26.59	7850	1
2025-07-20 13:11:14.177+00	112	telegraf	1523842139	26.04	173	1
2025-07-20 13:12:36.74+00	112	telegraf	527134251	25.51	177	1
2025-07-20 13:14:46.008+00	112	telegraf	1523842139	25.77	186	1
2025-07-20 13:15:36.714+00	112	telegraf	840973111	25.67	187	1
2025-07-20 13:16:20.442+00	112	telegraf	978202981	26.39	7856	1
2025-07-20 13:21:49.684+00	112	telegraf	1523842139	25.52	192	1
2025-07-20 13:24:11.178+00	112	telegraf	840973111	25.41	195	1
2025-07-20 13:27:13.455+00	112	telegraf	1041420528	26.61	7861	1
2025-07-20 14:17:52.587+00	112	telegraf	978202981	26.25	7893	1
2025-07-20 14:18:39.643+00	112	telegraf	840973111	25.65	324	1
2025-07-20 14:20:10.431+00	112	telegraf	840973111	26.38	328	1
2025-07-20 14:20:40.698+00	112	telegraf	840973111	26.91	331	1
2025-07-20 14:21:10.958+00	112	telegraf	840973111	27.25	332	1
2025-07-20 14:21:41.219+00	112	telegraf	840973111	27.67	339	1
2025-07-20 14:23:21.832+00	112	telegraf	1523842139	25.78	348	1
2025-07-20 14:23:52.099+00	112	telegraf	1523842139	26.1	351	1
2025-07-20 14:24:42.801+00	112	telegraf	840973111	27.38	357	1
2025-07-20 14:24:52.618+00	112	telegraf	1523842139	26.39	358	1
2025-07-20 14:25:43.32+00	112	telegraf	840973111	27.1	367	1
2025-07-20 14:26:43.855+00	112	telegraf	840973111	26.81	368	1
2025-07-20 14:28:14.641+00	112	telegraf	840973111	26.48	372	1
2025-07-20 14:28:45.541+00	112	telegraf	1041420528	26.32	7898	1
2025-07-20 14:29:55.258+00	112	telegraf	1523842139	26.14	382	1
2025-07-20 14:30:45.965+00	112	telegraf	840973111	26.22	383	1
2025-07-20 14:31:48.052+00	112	telegraf	527134251	25.74	384	1
2025-07-20 14:34:19.355+00	112	telegraf	527134251	26.07	388	1
2025-07-20 14:34:49.617+00	112	telegraf	527134251	26.36	389	1
2025-07-20 14:34:57.893+00	112	telegraf	1523842139	26.59	391	1
2025-07-20 14:35:18.333+00	112	telegraf	840973111	26.67	392	1
2025-07-20 14:35:50.149+00	112	telegraf	527134251	26.7	394	1
2025-07-20 14:36:49.125+00	112	telegraf	840973111	27.08	395	1
2025-07-20 14:36:58.958+00	112	telegraf	1523842139	26.98	396	1
2025-07-20 14:37:49.651+00	112	telegraf	840973111	27.37	397	1
2025-07-20 14:37:51.202+00	112	telegraf	527134251	27.14	398	1
2025-07-20 14:40:22.507+00	112	telegraf	527134251	27.39	415	1
2025-07-20 14:42:52.269+00	112	telegraf	840973111	27.94	433	1
2025-07-20 14:42:53.828+00	112	telegraf	527134251	28.08	434	1
2025-07-20 14:43:02.126+00	112	telegraf	1523842139	28.04	436	1
2025-07-20 14:44:23.065+00	112	telegraf	840973111	28.26	439	1
2025-07-20 14:44:24.617+00	112	telegraf	527134251	28.42	440	1
2025-07-20 14:46:25.684+00	112	telegraf	527134251	28.78	447	1
2025-07-20 14:48:04.774+00	112	telegraf	1523842139	28.7	450	1
2025-07-20 14:48:55.467+00	112	telegraf	840973111	28.52	455	1
2025-07-20 14:50:56.524+00	112	telegraf	840973111	28.82	460	1
2025-07-20 14:51:06.352+00	112	telegraf	1523842139	29.09	465	1
2025-07-20 14:53:27.83+00	112	telegraf	840973111	29.1	469	1
2025-07-20 14:54:34.098+00	112	telegraf	1126982881	26.57	7915	1
2025-07-20 14:56:08.983+00	112	telegraf	1523842139	28.83	484	1
2025-07-20 14:57:31.46+00	112	telegraf	527134251	28.79	488	1
2025-07-20 14:57:39.775+00	112	telegraf	1523842139	28.58	489	1
2025-07-20 14:59:02.253+00	112	telegraf	527134251	28.52	490	1
2025-07-20 14:59:30.985+00	112	telegraf	840973111	28.5	492	1
2025-07-20 14:59:31.564+00	112	telegraf	1041420528	26.51	7917	1
2025-07-20 15:00:33.04+00	112	telegraf	527134251	28.24	494	1
2025-07-20 15:01:11.616+00	112	telegraf	1523842139	28.02	495	1
2025-07-20 15:01:32.04+00	112	telegraf	840973111	28.23	497	1
2025-07-20 15:04:13.138+00	112	telegraf	1523842139	28.27	2	1
2025-07-20 15:09:15.652+00	112	telegraf	1523842139	29.01	34	1
2025-07-20 15:09:45.891+00	112	telegraf	1523842139	29.52	43	1
2025-07-20 15:10:16.322+00	112	telegraf	1523842139	29.98	47	1
2025-07-20 15:10:46.176+00	112	telegraf	1523842139	30.46	52	1
2025-07-20 15:11:15.775+00	112	telegraf	527134251	29.31	58	1
2025-07-20 15:11:16.468+00	112	telegraf	840973111	28.43	60	1
2025-07-20 15:12:16.281+00	112	telegraf	527134251	29.03	63	1
2025-07-20 15:12:47.198+00	112	telegraf	1523842139	30.18	65	1
2025-07-20 15:13:08.688+00	112	telegraf	1523842139	30.2	70	1
2025-07-20 15:13:38.943+00	112	telegraf	1523842139	30.47	75	1
2025-07-20 15:13:47.746+00	112	telegraf	840973111	28.83	77	1
2025-07-20 15:16:40.542+00	112	telegraf	1523842139	29.82	101	1
2025-07-20 15:17:41.09+00	112	telegraf	1523842139	29.54	105	1
2025-07-20 15:17:49.898+00	112	telegraf	840973111	28.52	115	1
2025-07-20 15:18:19.447+00	112	telegraf	527134251	28.76	119	1
2025-07-20 15:18:41.621+00	112	telegraf	1523842139	29.29	120	1
2025-07-20 15:19:26.562+00	112	telegraf	1523842139	29.25	123	1
2025-07-20 15:19:50.238+00	112	telegraf	527134251	28.43	134	1
2025-07-20 15:19:56.822+00	112	telegraf	1523842139	29.6	135	1
2025-07-20 15:20:21.226+00	112	telegraf	840973111	28.24	137	1
2025-07-20 15:21:21.026+00	112	telegraf	527134251	28.15	145	1
2025-07-20 15:21:57.888+00	112	telegraf	1523842139	29.19	148	1
2025-07-20 15:22:10.633+00	112	telegraf	840973111	28.32	151	1
2025-07-20 15:22:40.892+00	112	telegraf	840973111	28.73	156	1
2025-07-20 15:22:58.407+00	112	telegraf	1523842139	28.81	159	1
2025-07-20 15:23:58.943+00	112	telegraf	1523842139	28.54	169	1
2025-07-20 15:25:20.165+00	112	telegraf	1126982881	26.67	7936	1
2025-07-20 15:26:00.004+00	112	telegraf	1523842139	28.27	193	1
2025-07-20 15:26:12.747+00	112	telegraf	840973111	28.45	195	1
2025-07-20 15:29:14.33+00	112	telegraf	840973111	28.14	209	1
2025-07-20 15:30:02.114+00	112	telegraf	1523842139	27.97	213	1
2025-07-20 15:30:17.594+00	112	telegraf	1041420528	26.67	7939	1
2025-07-20 15:30:45.125+00	112	telegraf	840973111	27.86	214	1
2025-07-20 15:32:15.913+00	112	telegraf	840973111	27.6	221	1
2025-07-20 15:34:34.429+00	112	telegraf	1523842139	27.68	223	1
2025-07-20 15:34:58.098+00	112	telegraf	527134251	27.61	224	1
2025-07-20 15:37:57.498+00	112	telegraf	527134251	28.31	235	1
2025-07-20 15:39:19.456+00	112	telegraf	840973111	27.3	243	1
2025-07-20 15:41:29.348+00	112	telegraf	527134251	28.03	257	1
2025-07-20 15:54:57.64+00	112	telegraf	840973111	27.04	314	1
2025-07-20 15:56:06.194+00	112	telegraf	1126982881	26.66	7956	1
2025-07-20 15:56:37.223+00	112	telegraf	527134251	27.19	315	1
2025-07-20 15:58:16.741+00	112	telegraf	1523842139	26.78	316	1
2025-07-20 16:01:03.656+00	112	telegraf	1041420528	26.59	7967	1
2025-07-20 16:01:31.056+00	112	telegraf	840973111	26.78	318	1
2025-07-20 16:02:10.092+00	112	telegraf	527134251	26.9	320	1
2025-07-20 16:07:42.249+00	112	telegraf	1126982881	26.38	7969	1
2025-07-20 16:08:20.245+00	112	telegraf	978202981	26.25	7970	1
2025-07-20 16:09:52.802+00	112	telegraf	1523842139	26.53	1	1
2025-07-20 16:10:08.383+00	112	telegraf	1041420528	26.32	7972	1
2025-07-20 16:10:44.609+00	112	telegraf	527134251	26.63	3	1
2025-07-20 16:14:46.716+00	112	telegraf	527134251	27.01	12	1
2025-07-20 16:14:55.493+00	112	telegraf	1523842139	26.87	16	1
2025-07-20 16:15:08.201+00	112	telegraf	840973111	26.78	17	1
2025-07-20 16:39:06.299+00	112	telegraf	978202981	26.16	7989	1
2025-07-20 16:40:54.402+00	112	telegraf	1041420528	26.27	7992	1
2025-07-20 17:27:54.062+00	112	telegraf	1126982881	25.95	8029	1
2025-07-20 17:55:03.065+00	112	telegraf	1041420528	25.36	8054	1
2025-07-20 18:12:42.277+00	112	telegraf	1041420528	25.11	8063	1
2025-07-20 18:14:48.499+00	112	telegraf	1126982881	25.18	8066	1
2025-07-20 18:32:35.501+00	112	telegraf	978202981	24.71	8083	1
2025-07-20 18:58:11.18+00	112	telegraf	1126982881	24.8	8102	1
2025-07-20 18:58:36.221+00	112	telegraf	1041420528	24.73	8103	1
2025-07-20 19:03:21.568+00	112	telegraf	978202981	24.58	8105	1
2025-07-20 19:28:57.243+00	112	telegraf	1126982881	24.81	8122	1
2025-07-20 19:29:22.239+00	112	telegraf	1041420528	24.74	8123	1
2025-07-20 19:34:07.627+00	112	telegraf	978202981	24.65	8130	1
2025-07-20 19:43:34.861+00	112	telegraf	1126982881	25.29	8137	1
2025-07-20 19:44:05.122+00	112	telegraf	1126982881	25.61	8140	1
2025-07-20 19:44:35.387+00	112	telegraf	1126982881	26.17	8143	1
2025-07-20 19:45:05.65+00	112	telegraf	1126982881	26.68	8148	1
2025-07-20 19:46:31.178+00	112	telegraf	1041420528	25.01	8155	1
2025-07-20 19:48:37.523+00	112	telegraf	1126982881	26.38	8159	1
2025-07-20 19:51:39.099+00	112	telegraf	1126982881	26.11	8162	1
2025-07-20 20:00:43.833+00	112	telegraf	1126982881	25.85	8181	1
2025-07-20 20:02:39.593+00	112	telegraf	1041420528	25.26	8183	1
2025-07-20 21:52:42.274+00	112	telegraf	1126982881	25.08	42	1
2025-07-20 21:55:51.548+00	112	telegraf	978202981	25.28	47	1
2025-07-20 22:03:55.753+00	112	telegraf	978202981	25.03	49	1
2025-07-20 22:11:21.99+00	112	telegraf	1126982881	24.8	55	1
2025-07-20 22:42:08.064+00	112	telegraf	1126982881	24.79	76	1
2025-07-21 06:46:58.49+00	112	telegraf	978202981	24.34	395	1
2025-07-21 06:47:21.301+00	112	telegraf	1126982881	24.69	396	1
2025-07-21 06:47:51.563+00	112	telegraf	1126982881	25.35	398	1
2025-07-21 06:48:21.832+00	112	telegraf	1126982881	25.79	400	1
2025-07-21 06:51:53.691+00	112	telegraf	1126982881	25.45	411	1
2025-07-21 06:54:25.017+00	112	telegraf	1126982881	25.15	414	1
2025-07-21 06:58:57.384+00	112	telegraf	1126982881	24.86	419	1
2025-07-21 07:08:57.205+00	112	telegraf	1041420528	24.45	426	1
2025-07-21 07:10:33.447+00	112	telegraf	1126982881	24.61	429	1
2025-07-21 07:17:44.553+00	112	telegraf	978202981	24.33	442	1
2025-07-21 07:39:43.234+00	112	telegraf	1041420528	24.48	451	1
2025-07-21 07:41:19.47+00	112	telegraf	1126982881	24.49	453	1
2025-07-21 08:10:29.275+00	112	telegraf	1041420528	24.48	473	1
2025-07-21 08:12:05.511+00	112	telegraf	1126982881	24.47	475	1
2025-07-21 17:39:52.005+00	112	telegraf	527134251	25.77	608	1
2025-07-21 17:45:29.04+00	112	telegraf	1523842139	25.68	621	1
2025-07-21 17:49:58.212+00	112	telegraf	840973111	25.7	625	1
2025-07-21 19:17:12.68+00	112	telegraf	527134251	25.96	761	1
2025-07-21 19:17:47.147+00	112	telegraf	1523842139	25.88	771	1
2025-07-21 21:25:29.425+00	112	telegraf	1126982881	25.07	116	1
2025-07-21 21:25:36.752+00	112	telegraf	978202981	24.14	118	1
2025-07-21 21:25:59.701+00	112	telegraf	1126982881	25.82	119	1
2025-07-21 21:28:31.02+00	112	telegraf	1126982881	25.57	135	1
2025-07-21 21:29:06.946+00	112	telegraf	840973111	26.23	1083	1
2025-07-21 21:30:01.809+00	112	telegraf	1126982881	25.28	137	1
2025-07-21 21:30:56.602+00	112	telegraf	1041420528	23.84	138	1
2025-07-21 21:31:32.598+00	112	telegraf	1126982881	25.03	139	1
2025-07-21 21:34:03.915+00	112	telegraf	1126982881	24.77	144	1
2025-07-21 21:34:58.76+00	112	telegraf	1523842139	26.78	1109	1
2025-07-21 21:39:36.8+00	112	telegraf	1126982881	24.49	149	1
2025-07-21 21:41:32.168+00	112	telegraf	1523842139	26.53	1120	1
2025-07-21 21:42:21.217+00	112	telegraf	527134251	26.5	1128	1
2025-07-21 21:42:51.468+00	112	telegraf	527134251	27.05	1129	1
2025-07-21 21:43:21.733+00	112	telegraf	527134251	27.57	1130	1
2025-07-22 08:11:43.648+00	112	telegraf	978202981	23.69	533	1
2025-07-22 08:17:03.706+00	112	telegraf	1041420528	23.73	538	1
2025-07-22 08:42:22.519+00	112	telegraf	1126982881	23.79	551	1
2025-07-22 08:42:29.702+00	112	telegraf	978202981	23.8	552	1
2025-07-22 08:47:49.744+00	112	telegraf	1041420528	23.81	557	1
2025-07-22 11:16:12.842+00	112	telegraf	1126982881	23.94	642	1
2025-07-22 11:16:19.954+00	112	telegraf	978202981	24.05	643	1
2025-07-22 11:21:39.94+00	112	telegraf	1041420528	24.06	649	1
2025-07-22 11:46:58.894+00	112	telegraf	1126982881	24.13	663	1
2025-07-22 11:47:05.985+00	112	telegraf	978202981	24.16	664	1
2025-07-22 11:52:25.971+00	112	telegraf	1041420528	24.2	667	1
2025-07-22 12:17:44.949+00	112	telegraf	1126982881	24.28	683	1
2025-07-22 12:17:52.076+00	112	telegraf	978202981	24.27	684	1
2025-07-22 12:23:12.051+00	112	telegraf	1041420528	24.27	688	1
2025-07-22 12:48:30.977+00	112	telegraf	1126982881	24.34	702	1
2025-07-22 12:48:38.126+00	112	telegraf	978202981	24.36	703	1
2025-07-22 12:53:58.11+00	112	telegraf	1041420528	24.33	706	1
2025-07-22 13:19:17.024+00	112	telegraf	1126982881	24.43	720	1
2025-07-22 13:19:24.151+00	112	telegraf	978202981	24.53	721	1
2025-07-22 13:24:44.147+00	112	telegraf	1041420528	24.45	725	1
2025-07-22 13:50:03.101+00	112	telegraf	1126982881	24.53	739	1
2025-07-22 13:50:10.201+00	112	telegraf	978202981	24.57	740	1
2025-07-22 13:51:33.9+00	112	telegraf	1126982881	25.33	750	1
2025-07-22 13:52:04.16+00	112	telegraf	1126982881	25.83	755	1
2025-07-22 13:55:30.191+00	112	telegraf	1041420528	24.53	766	1
2025-07-22 13:56:06.266+00	112	telegraf	1126982881	25.52	767	1
2025-07-22 13:59:07.843+00	112	telegraf	1126982881	25.27	771	1
2025-07-22 15:16:48.354+00	112	telegraf	1126982881	24.52	817	1
2025-07-22 15:19:19.673+00	112	telegraf	1126982881	24.87	819	1
2025-07-22 15:19:49.94+00	112	telegraf	1126982881	25.2	821	1
2025-07-22 15:22:28.336+00	112	telegraf	978202981	24.58	836	1
2025-07-22 17:09:17.042+00	112	telegraf	1126982881	27.3	1040	1
2025-07-22 17:11:18.091+00	112	telegraf	1126982881	26.97	1049	1
2025-07-22 17:21:23.341+00	112	telegraf	1126982881	27.12	1061	1
2025-07-22 17:21:53.605+00	112	telegraf	1126982881	27.48	1065	1
2025-07-22 17:23:24.399+00	112	telegraf	1126982881	27.19	1071	1
2025-07-22 17:29:27.569+00	112	telegraf	1126982881	27.03	1103	1
2025-07-22 17:30:52.48+00	112	telegraf	1041420528	24.8	1106	1
2025-07-22 17:33:29.665+00	112	telegraf	1126982881	27.32	1117	1
2025-07-22 17:35:30.708+00	112	telegraf	1126982881	26.95	1123	1
2025-07-22 17:39:32.816+00	112	telegraf	1126982881	26.99	1138	1
2025-07-22 17:48:07.325+00	112	telegraf	1126982881	26.69	1162	1
2025-07-22 17:55:41.263+00	112	telegraf	1126982881	27	1182	1
2025-07-22 17:56:11.527+00	112	telegraf	1126982881	27.37	1185	1
2025-07-22 17:56:18.575+00	112	telegraf	978202981	24.89	1187	1
2025-07-22 17:58:12.582+00	112	telegraf	1126982881	27.04	1194	1
2025-07-22 18:00:13.664+00	112	telegraf	1126982881	26.78	1197	1
2025-07-22 18:01:38.572+00	112	telegraf	1041420528	24.85	1198	1
2025-07-22 18:05:46.552+00	112	telegraf	1126982881	26.52	1202	1
2025-07-22 19:28:29.702+00	112	telegraf	1126982881	25.51	1272	1
2025-07-22 19:28:36.763+00	112	telegraf	978202981	24.71	1274	1
2025-07-22 19:31:01.02+00	112	telegraf	1126982881	25.76	1286	1
2025-07-22 20:04:42.796+00	112	telegraf	1041420528	24.52	1349	1
2025-07-22 20:05:18.925+00	112	telegraf	1126982881	25.78	1351	1
2025-07-22 20:05:49.192+00	112	telegraf	1126982881	26.04	1353	1
2025-07-22 20:25:59.702+00	112	telegraf	1126982881	25.83	1418	1
2025-07-22 20:27:30.49+00	112	telegraf	1126982881	25.57	1419	1
2025-07-22 20:29:31.541+00	112	telegraf	1126982881	25.31	1421	1
2025-07-22 20:30:08.861+00	112	telegraf	978202981	24.39	1422	1
2025-07-22 20:35:34.72+00	112	telegraf	1126982881	25.05	1438	1
2025-07-22 20:35:28.832+00	112	telegraf	1041420528	24.31	1439	1
2025-07-22 20:39:06.553+00	112	telegraf	1126982881	24.8	1443	1
2025-07-22 20:47:10.77+00	112	telegraf	1126982881	24.54	1447	1
2025-07-22 21:00:54.9+00	112	telegraf	978202981	24.28	1452	1
2025-07-22 21:03:19.202+00	112	telegraf	1126982881	24.29	1458	1
2025-07-22 21:06:14.888+00	112	telegraf	1041420528	24.17	1459	1
2025-07-22 21:25:37.212+00	112	telegraf	840973111	24.72	10	1
2025-07-22 21:27:13.344+00	112	telegraf	527134251	25.14	12	1
2025-07-22 21:27:25.335+00	112	telegraf	1523842139	24.79	13	1
2025-07-22 21:31:03.721+00	112	telegraf	1126982881	24.04	1471	1
2025-07-22 21:31:40.947+00	112	telegraf	978202981	24.17	1472	1
2025-07-22 21:35:29.533+00	112	telegraf	1523842139	25.05	23	1
2025-07-22 21:36:12.728+00	112	telegraf	840973111	25.01	33	1
2025-07-22 21:36:18.112+00	112	telegraf	527134251	25.39	34	1
2025-07-22 21:37:00.934+00	112	telegraf	1041420528	24.03	1478	1
2025-07-22 21:43:33.737+00	112	telegraf	1523842139	25.39	40	1
2025-07-22 21:43:46.659+00	112	telegraf	840973111	25.32	42	1
2025-07-22 21:44:22.311+00	112	telegraf	527134251	25.65	45	1
2025-07-22 21:44:34.263+00	112	telegraf	1523842139	25.72	46	1
2025-07-22 21:46:17.98+00	112	telegraf	840973111	25.67	60	1
2025-07-22 21:52:08.183+00	112	telegraf	1523842139	25.47	98	1
2025-07-22 21:54:57.844+00	112	telegraf	527134251	25.37	101	1
2025-07-22 21:59:24.793+00	112	telegraf	840973111	25.4	111	1
2025-07-22 22:01:49.777+00	112	telegraf	1126982881	23.94	1489	1
2025-07-22 22:02:27.002+00	112	telegraf	978202981	24.07	1490	1
2025-07-22 22:07:46.996+00	112	telegraf	1041420528	23.95	1496	1
2025-07-22 22:13:19.174+00	112	telegraf	1523842139	25.22	132	1
2025-07-22 22:19:10.465+00	112	telegraf	527134251	25.12	135	1
2025-07-22 22:28:57.385+00	112	telegraf	1523842139	25.47	145	1
2025-07-22 22:29:15.792+00	112	telegraf	527134251	25.59	146	1
2025-07-22 22:29:27.642+00	112	telegraf	1523842139	25.75	148	1
2025-07-22 22:29:40.612+00	112	telegraf	840973111	25.66	149	1
2025-07-22 22:30:16.319+00	112	telegraf	527134251	25.88	159	1
2025-07-22 22:32:35.851+00	112	telegraf	1126982881	23.93	1507	1
2025-07-22 22:33:13.03+00	112	telegraf	978202981	24.02	1511	1
2025-07-22 22:36:14.03+00	112	telegraf	840973111	25.91	200	1
2025-07-22 22:38:33.023+00	112	telegraf	1041420528	23.96	1514	1
2025-07-22 22:42:22.634+00	112	telegraf	527134251	25.63	213	1
2025-07-22 22:43:17.722+00	112	telegraf	840973111	25.62	217	1
2025-07-22 22:45:24.207+00	112	telegraf	527134251	25.88	224	1
2025-07-22 22:45:36.067+00	112	telegraf	1523842139	26.21	225	1
2025-07-22 22:45:49.03+00	112	telegraf	840973111	26.03	226	1
2025-07-22 22:46:54.988+00	112	telegraf	527134251	26.14	227	1
2025-07-22 22:47:19.817+00	112	telegraf	840973111	26.28	239	1
2025-07-22 22:50:21.396+00	112	telegraf	840973111	26.02	240	1
2025-07-22 22:50:38.701+00	112	telegraf	1523842139	25.92	241	1
2025-07-22 22:54:28.941+00	112	telegraf	527134251	25.87	243	1
2025-07-22 22:56:41.867+00	112	telegraf	1523842139	25.66	256	1
2025-07-22 22:57:55.35+00	112	telegraf	840973111	25.74	258	1
2025-07-22 23:03:21.892+00	112	telegraf	1126982881	23.97	1528	1
2025-07-22 23:03:59.107+00	112	telegraf	978202981	23.99	1529	1
2025-07-22 23:09:19.062+00	112	telegraf	1041420528	23.93	1532	1
2025-07-22 23:34:07.933+00	112	telegraf	1126982881	23.86	1546	1
2025-07-22 23:34:45.19+00	112	telegraf	978202981	23.91	1547	1
2025-07-22 23:40:05.091+00	112	telegraf	1041420528	23.84	1550	1
2025-07-23 07:15:38.784+00	112	telegraf	1126982881	22.77	1829	1
2025-07-23 07:16:15.87+00	112	telegraf	978202981	22.83	1830	1
2025-07-23 07:21:35.751+00	112	telegraf	1041420528	22.88	1832	1
2025-07-23 07:41:22.23+00	112	telegraf	1126982881	23.04	1845	1
2025-07-23 07:42:22.758+00	112	telegraf	1126982881	23.63	1852	1
2025-07-23 07:42:53.027+00	112	telegraf	1126982881	23.89	1856	1
2025-07-23 07:47:01.932+00	112	telegraf	978202981	23.09	1872	1
2025-07-23 07:47:55.657+00	112	telegraf	1126982881	23.64	1873	1
2025-07-23 07:52:21.781+00	112	telegraf	1041420528	23.08	1875	1
2025-07-23 07:54:59.344+00	112	telegraf	1126982881	23.37	1881	1
2025-07-23 07:59:31.714+00	112	telegraf	1126982881	23.79	1889	1
2025-07-23 08:00:32.277+00	112	telegraf	1126982881	24.05	1899	1
2025-07-23 08:03:33.844+00	112	telegraf	1126982881	23.8	1905	1
2025-07-23 08:08:06.254+00	112	telegraf	1126982881	24.15	1915	1
2025-07-23 08:10:07.296+00	112	telegraf	1126982881	24.59	1926	1
2025-07-23 08:17:47.982+00	112	telegraf	978202981	23.24	1939	1
2025-07-23 08:23:07.858+00	112	telegraf	1041420528	23.26	1951	1
2025-07-23 08:40:53.326+00	112	telegraf	1126982881	24.69	1980	1
2025-07-23 08:48:34.049+00	112	telegraf	978202981	23.37	1984	1
2025-07-23 09:19:20.117+00	112	telegraf	978202981	23.38	2002	1
2025-07-23 09:24:39.914+00	112	telegraf	1041420528	23.35	2010	1
2025-07-23 09:39:54.138+00	112	telegraf	1126982881	24.47	2021	1
2025-07-23 09:50:06.151+00	112	telegraf	978202981	23.44	2028	1
2025-07-23 09:55:25.944+00	112	telegraf	1041420528	23.48	2032	1
2025-07-23 10:01:05.201+00	112	telegraf	1126982881	24.22	2040	1
2025-07-23 10:04:37.035+00	112	telegraf	1126982881	23.97	2042	1
2025-07-23 11:16:14.406+00	112	telegraf	1126982881	23.59	2091	1
2025-07-23 11:22:24.28+00	112	telegraf	978202981	23.65	2096	1
2025-07-23 11:27:44.081+00	112	telegraf	1041420528	23.67	2098	1
2025-07-23 12:17:46.527+00	112	telegraf	1126982881	23.71	2129	1
2025-07-23 12:54:42.417+00	112	telegraf	978202981	23.85	2172	1
2025-07-23 13:00:02.226+00	112	telegraf	1041420528	23.87	2173	1
2025-07-23 13:19:18.649+00	112	telegraf	1126982881	23.82	2186	1
2025-07-23 13:25:28.454+00	112	telegraf	978202981	23.95	2192	1
2025-07-23 13:30:48.257+00	112	telegraf	1041420528	23.89	2193	1
2025-07-23 13:50:04.695+00	112	telegraf	1126982881	23.81	2206	1
2025-07-23 13:56:14.499+00	112	telegraf	978202981	23.96	2211	1
2025-07-23 14:01:34.302+00	112	telegraf	1041420528	23.91	2212	1
2025-07-23 14:32:20.327+00	112	telegraf	1041420528	23.67	2239	1
2025-07-23 14:38:06.366+00	112	telegraf	978202981	23.46	2247	1
2025-07-23 14:39:30.468+00	112	telegraf	1126982881	23.29	2248	1
2025-07-23 14:45:57.425+00	112	telegraf	1041420528	23.42	2252	1
2025-07-23 14:55:38.892+00	112	telegraf	1126982881	23.04	2259	1
2025-07-23 15:05:50.855+00	112	telegraf	978202981	23.21	2266	1
2025-07-23 15:16:43.486+00	112	telegraf	1041420528	23.25	2271	1
2025-07-23 15:26:24.965+00	112	telegraf	1126982881	23.01	2279	1
2025-07-23 15:36:36.955+00	112	telegraf	978202981	23.18	2287	1
2025-07-23 17:36:26.428+00	112	telegraf	1041420528	22.47	2386	1
2025-07-23 17:38:40.623+00	112	telegraf	978202981	22.33	2387	1
2025-07-23 17:40:34.957+00	112	telegraf	1126982881	22.06	2388	1
2025-07-23 18:07:12.509+00	112	telegraf	1041420528	22.44	2406	1
2025-07-23 18:09:26.661+00	112	telegraf	978202981	22.38	2408	1
2025-07-23 18:11:21.015+00	112	telegraf	1126982881	22.28	2409	1
2025-07-23 18:37:58.554+00	112	telegraf	1041420528	22.54	2424	1
2025-07-23 18:40:12.709+00	112	telegraf	978202981	22.49	2426	1
\.


--
-- Data for Name: _hyper_1_29_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_1_29_chunk ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
2025-07-25 12:04:18.562+00	112	telegraf	978202981	22.35	3967	1
2025-07-25 12:07:44.369+00	112	telegraf	1126982881	23.14	3974	1
2025-07-25 12:08:14.625+00	112	telegraf	1126982881	23.7	3977	1
2025-07-25 12:10:08.304+00	112	telegraf	1041420528	22.38	3993	1
2025-07-25 12:10:45.946+00	112	telegraf	1126982881	23.43	3995	1
2025-07-25 12:13:17.253+00	112	telegraf	1126982881	23.16	4001	1
2025-07-25 12:54:38.837+00	112	telegraf	1126982881	23.58	4044	1
2025-07-25 12:55:09.104+00	112	telegraf	1126982881	23.88	4050	1
2025-07-25 13:00:41.998+00	112	telegraf	1126982881	23.57	4062	1
2025-07-25 13:04:44.101+00	112	telegraf	1126982881	23.32	4065	1
2025-07-25 13:05:50.665+00	112	telegraf	978202981	22.8	4066	1
2025-07-25 13:11:40.364+00	112	telegraf	1041420528	22.75	4074	1
2025-07-25 13:15:19.628+00	112	telegraf	1126982881	23.07	4077	1
2025-07-25 13:36:36.699+00	112	telegraf	978202981	22.88	4089	1
2025-07-25 13:42:26.417+00	112	telegraf	1041420528	22.83	4093	1
2025-07-25 13:46:05.711+00	112	telegraf	1126982881	22.97	4098	1
2025-07-25 14:07:22.751+00	112	telegraf	978202981	22.84	4109	1
2025-07-25 14:13:12.459+00	112	telegraf	1041420528	22.83	4112	1
2025-07-25 14:16:51.791+00	112	telegraf	1126982881	22.84	4118	1
2025-07-25 14:38:08.783+00	112	telegraf	978202981	22.96	4132	1
2025-07-25 14:43:58.462+00	112	telegraf	1041420528	22.91	4136	1
2025-07-25 14:47:37.832+00	112	telegraf	1126982881	22.92	4140	1
2025-07-25 15:08:54.832+00	112	telegraf	978202981	22.74	4156	1
2025-07-25 15:14:44.494+00	112	telegraf	1041420528	22.73	4161	1
2025-07-25 15:18:23.865+00	112	telegraf	1126982881	22.75	4164	1
2025-07-25 15:39:40.871+00	112	telegraf	978202981	22.74	4179	1
2025-07-25 15:45:30.519+00	112	telegraf	1041420528	22.63	4184	1
2025-07-25 15:49:09.915+00	112	telegraf	1126982881	22.6	4187	1
2025-07-25 16:10:26.954+00	112	telegraf	978202981	22.67	4200	1
2025-07-25 16:16:16.612+00	112	telegraf	1041420528	22.65	4206	1
2025-07-25 16:19:55.976+00	112	telegraf	1126982881	22.54	4207	1
2025-07-25 16:41:12.982+00	112	telegraf	978202981	22.54	4221	1
2025-07-25 16:47:02.662+00	112	telegraf	1041420528	22.54	4228	1
2025-07-25 16:50:42.03+00	112	telegraf	1126982881	22.44	4229	1
2025-07-25 17:11:59.025+00	112	telegraf	978202981	22.37	4241	1
2025-07-25 17:17:48.706+00	112	telegraf	1041420528	22.43	4248	1
2025-07-25 17:21:28.071+00	112	telegraf	1126982881	22.3	4250	1
2025-07-25 17:42:45.066+00	112	telegraf	978202981	22.4	4260	1
2025-07-25 17:48:34.738+00	112	telegraf	1041420528	22.47	4267	1
2025-07-25 17:52:14.138+00	112	telegraf	1126982881	22.29	4268	1
2025-07-25 18:13:31.119+00	112	telegraf	978202981	22.33	4278	1
2025-07-25 18:19:20.8+00	112	telegraf	1041420528	22.37	4286	1
2025-07-25 18:23:00.212+00	112	telegraf	1126982881	22.2	4287	1
2025-07-25 18:44:17.158+00	112	telegraf	978202981	22.16	4297	1
2025-07-25 18:50:06.819+00	112	telegraf	1041420528	22.25	4304	1
2025-07-25 18:53:46.309+00	112	telegraf	1126982881	22.01	4305	1
2025-07-25 19:11:31.348+00	112	telegraf	978202981	21.89	4313	1
2025-07-25 19:20:52.885+00	112	telegraf	1041420528	22.02	4322	1
2025-07-25 19:24:32.368+00	112	telegraf	1126982881	21.78	4323	1
2025-07-25 19:42:17.426+00	112	telegraf	978202981	21.99	4333	1
2025-07-25 19:51:38.915+00	112	telegraf	1041420528	22.13	4340	1
2025-07-25 19:54:17.898+00	112	telegraf	1126982881	22.07	4341	1
2025-07-25 20:03:28.489+00	112	telegraf	978202981	22.27	4346	1
2025-07-25 20:22:24.979+00	112	telegraf	1041420528	22.3	4358	1
2025-07-25 20:25:03.955+00	112	telegraf	1126982881	22.25	4360	1
2025-07-25 20:34:14.529+00	112	telegraf	978202981	22.35	4364	1
2025-07-25 20:53:10.994+00	112	telegraf	1041420528	22.39	4376	1
2025-07-25 20:55:49.992+00	112	telegraf	1126982881	22.36	4378	1
2025-07-25 21:05:00.57+00	112	telegraf	978202981	22.46	4383	1
2025-07-25 21:23:57.019+00	112	telegraf	1041420528	22.46	4397	1
2025-07-25 21:26:36.083+00	112	telegraf	1126982881	22.42	4401	1
2025-07-25 21:35:46.614+00	112	telegraf	978202981	22.52	4404	1
2025-07-25 21:54:43.076+00	112	telegraf	1041420528	22.52	4416	1
2025-07-25 21:57:22.12+00	112	telegraf	1126982881	22.49	4419	1
2025-07-25 22:06:32.638+00	112	telegraf	978202981	22.52	4424	1
2025-07-25 22:25:29.143+00	112	telegraf	1041420528	22.58	4435	1
2025-07-25 22:28:08.166+00	112	telegraf	1126982881	22.51	4438	1
2025-07-25 22:37:18.691+00	112	telegraf	978202981	22.58	4443	1
2025-07-25 22:56:15.187+00	112	telegraf	1041420528	22.55	4455	1
2025-07-25 22:58:54.213+00	112	telegraf	1126982881	22.53	4456	1
2025-07-25 23:08:04.72+00	112	telegraf	978202981	22.57	4461	1
2025-07-25 23:27:01.255+00	112	telegraf	1041420528	22.6	4473	1
2025-07-25 23:29:40.259+00	112	telegraf	1126982881	22.5	4474	1
2025-07-25 23:38:50.757+00	112	telegraf	978202981	22.57	4479	1
2025-07-25 23:57:47.278+00	112	telegraf	1041420528	22.57	4491	1
2025-07-26 00:00:26.296+00	112	telegraf	1126982881	22.55	4492	1
2025-07-26 00:09:36.795+00	112	telegraf	978202981	22.57	4497	1
2025-07-26 00:28:33.325+00	112	telegraf	1041420528	22.55	4509	1
2025-07-26 00:31:12.362+00	112	telegraf	1126982881	22.52	4510	1
2025-07-26 00:40:22.842+00	112	telegraf	978202981	22.55	4515	1
2025-07-26 00:59:19.373+00	112	telegraf	1041420528	22.55	4527	1
2025-07-26 01:01:58.423+00	112	telegraf	1126982881	22.45	4528	1
2025-07-26 01:11:08.885+00	112	telegraf	978202981	22.55	4533	1
2025-07-26 01:30:05.389+00	112	telegraf	1041420528	22.54	4548	1
2025-07-26 01:32:44.515+00	112	telegraf	1126982881	22.47	4549	1
2025-07-26 01:41:54.987+00	112	telegraf	978202981	22.56	4554	1
2025-07-26 02:00:51.439+00	112	telegraf	1041420528	22.54	4566	1
2025-07-26 02:03:30.564+00	112	telegraf	1126982881	22.41	4567	1
2025-07-26 02:12:41.029+00	112	telegraf	978202981	22.5	4572	1
2025-07-26 02:31:37.479+00	112	telegraf	1041420528	22.48	4585	1
2025-07-26 02:34:16.627+00	112	telegraf	1126982881	22.39	4586	1
2025-07-26 02:43:27.074+00	112	telegraf	978202981	22.52	4591	1
2025-07-26 03:02:23.558+00	112	telegraf	1041420528	22.49	4603	1
2025-07-26 03:05:02.69+00	112	telegraf	1126982881	22.36	4605	1
2025-07-26 03:14:13.114+00	112	telegraf	978202981	22.47	4609	1
2025-07-26 03:33:09.597+00	112	telegraf	1041420528	22.47	4621	1
2025-07-26 03:35:48.741+00	112	telegraf	1126982881	22.35	4623	1
2025-07-26 03:44:59.165+00	112	telegraf	978202981	22.44	4628	1
2025-07-26 04:03:55.644+00	112	telegraf	1041420528	22.4	4639	1
2025-07-26 04:06:34.797+00	112	telegraf	1126982881	22.32	4643	1
2025-07-26 04:15:45.191+00	112	telegraf	978202981	22.39	4646	1
2025-07-26 04:34:41.677+00	112	telegraf	1041420528	22.38	4657	1
2025-07-26 04:37:20.832+00	112	telegraf	1126982881	22.33	4661	1
2025-07-26 04:46:31.23+00	112	telegraf	978202981	22.39	4666	1
2025-07-26 05:05:27.708+00	112	telegraf	1041420528	22.34	4676	1
2025-07-26 05:08:06.911+00	112	telegraf	1126982881	22.31	4679	1
2025-07-26 05:17:17.27+00	112	telegraf	978202981	22.37	4684	1
2025-07-26 05:36:13.742+00	112	telegraf	1041420528	22.33	4699	1
2025-07-26 05:38:52.952+00	112	telegraf	1126982881	22.3	4700	1
2025-07-26 05:48:03.317+00	112	telegraf	978202981	22.35	4705	1
2025-07-26 06:06:59.787+00	112	telegraf	1041420528	22.33	4717	1
2025-07-26 06:09:38.998+00	112	telegraf	1126982881	22.28	4718	1
2025-07-26 06:18:49.363+00	112	telegraf	978202981	22.35	4723	1
2025-07-26 06:37:45.812+00	112	telegraf	1041420528	22.34	4736	1
2025-07-26 06:40:25.044+00	112	telegraf	1126982881	22.29	4737	1
2025-07-26 06:49:35.4+00	112	telegraf	978202981	22.35	4742	1
2025-07-26 07:08:31.856+00	112	telegraf	1041420528	22.34	4754	1
2025-07-26 07:11:11.066+00	112	telegraf	1126982881	22.29	4755	1
2025-07-26 07:20:21.428+00	112	telegraf	978202981	22.39	4760	1
2025-07-26 07:39:17.88+00	112	telegraf	1041420528	22.36	4772	1
2025-07-26 07:41:57.126+00	112	telegraf	1126982881	22.32	4773	1
2025-07-26 07:51:07.455+00	112	telegraf	978202981	22.44	4778	1
2025-07-26 08:10:03.931+00	112	telegraf	1041420528	22.46	4790	1
2025-07-26 08:12:43.192+00	112	telegraf	1126982881	22.51	4791	1
2025-07-26 08:21:53.545+00	112	telegraf	978202981	22.58	4796	1
2025-07-26 08:40:49.971+00	112	telegraf	1041420528	22.66	4808	1
2025-07-26 08:43:29.256+00	112	telegraf	1126982881	22.68	4809	1
2025-07-26 08:52:39.593+00	112	telegraf	978202981	22.75	4814	1
2025-07-26 09:11:36.009+00	112	telegraf	1041420528	22.65	4826	1
2025-07-26 09:14:15.334+00	112	telegraf	1126982881	22.61	4827	1
2025-07-26 09:23:25.626+00	112	telegraf	978202981	22.69	4832	1
2025-07-26 09:41:04.839+00	112	telegraf	978202981	22.43	4848	1
2025-07-26 09:42:22.041+00	112	telegraf	1041420528	22.52	4849	1
2025-07-26 09:45:01.384+00	112	telegraf	1126982881	22.38	4853	1
2025-07-26 10:11:50.927+00	112	telegraf	978202981	22.53	4866	1
2025-07-26 10:13:08.083+00	112	telegraf	1041420528	22.52	4867	1
2025-07-26 10:15:47.469+00	112	telegraf	1126982881	22.45	4871	1
2025-07-26 10:42:36.969+00	112	telegraf	978202981	22.57	4885	1
2025-07-26 10:43:54.129+00	112	telegraf	1041420528	22.58	4886	1
2025-07-26 10:46:33.501+00	112	telegraf	1126982881	22.49	4892	1
2025-07-26 11:13:23.005+00	112	telegraf	978202981	22.57	4903	1
2025-07-26 11:14:40.159+00	112	telegraf	1041420528	22.56	4904	1
2025-07-26 11:17:19.565+00	112	telegraf	1126982881	22.52	4910	1
2025-07-26 11:44:09.05+00	112	telegraf	978202981	22.58	4921	1
2025-07-26 11:45:26.249+00	112	telegraf	1041420528	22.58	4923	1
2025-07-26 11:48:05.627+00	112	telegraf	1126982881	22.53	4928	1
2025-07-26 12:14:55.097+00	112	telegraf	978202981	22.66	4940	1
2025-07-26 12:16:12.313+00	112	telegraf	1041420528	22.67	4943	1
2025-07-26 12:18:51.679+00	112	telegraf	1126982881	22.61	4946	1
2025-07-26 12:45:41.143+00	112	telegraf	978202981	22.62	4959	1
2025-07-26 12:46:58.343+00	112	telegraf	1041420528	22.68	4962	1
2025-07-26 12:49:37.741+00	112	telegraf	1126982881	22.61	4965	1
2025-07-26 13:16:27.177+00	112	telegraf	978202981	22.86	4980	1
2025-07-26 13:17:44.375+00	112	telegraf	1041420528	22.8	4981	1
2025-07-26 13:20:23.821+00	112	telegraf	1126982881	22.86	4983	1
2025-07-26 13:47:13.208+00	112	telegraf	978202981	22.97	5001	1
2025-07-26 13:48:30.432+00	112	telegraf	1041420528	22.9	5003	1
2025-07-26 13:51:09.857+00	112	telegraf	1126982881	23	5008	1
2025-07-26 14:17:59.253+00	112	telegraf	978202981	23.17	5022	1
2025-07-26 14:19:16.522+00	112	telegraf	1041420528	23.05	5024	1
2025-07-26 14:21:55.906+00	112	telegraf	1126982881	23.1	5026	1
2025-07-26 14:43:06.984+00	112	telegraf	1126982881	23.6	5038	1
2025-07-26 14:43:37.243+00	112	telegraf	1126982881	23.85	5041	1
2025-07-26 14:48:45.298+00	112	telegraf	978202981	23.31	5057	1
2025-07-26 14:50:02.553+00	112	telegraf	1041420528	23.2	5058	1
2025-07-26 14:51:11.188+00	112	telegraf	1126982881	23.6	5059	1
2025-07-26 15:06:19.092+00	112	telegraf	1126982881	23.34	5066	1
2025-07-26 15:19:31.349+00	112	telegraf	978202981	23.44	5076	1
2025-07-26 15:20:48.634+00	112	telegraf	1041420528	23.29	5077	1
2025-07-26 15:37:05.135+00	112	telegraf	1126982881	23.33	5084	1
2025-07-26 15:50:17.393+00	112	telegraf	978202981	23.5	5094	1
2025-07-26 15:51:34.675+00	112	telegraf	1041420528	23.37	5095	1
2025-07-26 16:07:51.181+00	112	telegraf	1126982881	23.35	5102	1
2025-07-26 16:21:03.438+00	112	telegraf	978202981	23.55	5112	1
2025-07-26 16:22:20.749+00	112	telegraf	1041420528	23.46	5113	1
2025-07-26 16:38:37.204+00	112	telegraf	1126982881	23.49	5121	1
2025-07-26 16:51:49.469+00	112	telegraf	978202981	23.64	5130	1
2025-07-26 16:53:06.771+00	112	telegraf	1041420528	23.53	5131	1
2025-07-26 17:09:23.284+00	112	telegraf	1126982881	23.52	5139	1
2025-07-26 17:22:35.499+00	112	telegraf	978202981	23.67	5148	1
2025-07-26 17:23:52.82+00	112	telegraf	1041420528	23.56	5149	1
2025-07-26 17:40:09.339+00	112	telegraf	1126982881	23.56	5160	1
2025-07-26 17:53:21.552+00	112	telegraf	978202981	23.81	5169	1
2025-07-26 17:54:38.855+00	112	telegraf	1041420528	23.68	5172	1
2025-07-26 18:10:55.387+00	112	telegraf	1126982881	23.67	5178	1
2025-07-26 18:24:07.597+00	112	telegraf	978202981	23.85	5187	1
2025-07-26 18:25:24.899+00	112	telegraf	1041420528	23.72	5190	1
2025-07-26 18:41:41.411+00	112	telegraf	1126982881	23.71	5204	1
2025-07-26 18:54:53.629+00	112	telegraf	978202981	23.83	5214	1
2025-07-26 18:56:10.947+00	112	telegraf	1041420528	23.77	5215	1
2025-07-26 19:12:27.486+00	112	telegraf	1126982881	23.73	5222	1
2025-07-26 19:25:39.658+00	112	telegraf	978202981	23.86	5232	1
2025-07-26 19:26:56.992+00	112	telegraf	1041420528	23.8	5233	1
2025-07-26 19:43:13.558+00	112	telegraf	1126982881	23.69	5241	1
2025-07-26 19:56:25.696+00	112	telegraf	978202981	23.83	5252	1
2025-07-26 19:57:43.025+00	112	telegraf	1041420528	23.76	5253	1
2025-07-26 20:13:59.609+00	112	telegraf	1126982881	23.69	5259	1
2025-07-26 20:27:11.735+00	112	telegraf	978202981	23.87	5270	1
2025-07-26 20:28:29.089+00	112	telegraf	1041420528	23.8	5273	1
2025-07-26 20:44:45.639+00	112	telegraf	1126982881	23.72	5278	1
2025-07-26 20:57:57.821+00	112	telegraf	978202981	23.87	5292	1
2025-07-26 20:59:15.122+00	112	telegraf	1041420528	23.8	5294	1
2025-07-26 21:15:31.698+00	112	telegraf	1126982881	23.72	5300	1
2025-07-26 21:28:43.858+00	112	telegraf	978202981	23.92	5311	1
2025-07-26 21:30:01.168+00	112	telegraf	1041420528	23.82	5312	1
2025-07-26 21:46:17.762+00	112	telegraf	1126982881	23.78	5321	1
2025-07-26 21:59:29.926+00	112	telegraf	978202981	23.88	5335	1
\.


--
-- Data for Name: _hyper_1_5_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_1_5_chunk ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
2025-06-28 12:36:56.568+00	112	\N	1041420528	28.04	82	0.9
2025-06-28 12:38:01.295+00	112	\N	1126982881	28.28	85	0.9
2025-06-28 12:48:06.566+00	112	\N	1126982881	28.53	96	0.9
2025-06-28 12:49:02.884+00	112	\N	1041420528	28.29	99	0.9
2025-06-28 12:55:12.176+00	112	\N	978202981	28.45	103	0.9
2025-06-28 13:18:52.568+00	112	\N	1126982881	28.61	119	0.9
2025-06-28 13:19:48.916+00	112	\N	1041420528	28.32	120	0.9
2025-06-28 13:25:58.147+00	112	\N	978202981	28.55	123	0.9
2025-06-28 13:49:38.652+00	112	\N	1126982881	28.47	143	0.9
2025-06-28 13:50:35.004+00	112	\N	1041420528	28.28	144	0.9
2025-06-28 13:56:44.275+00	112	\N	978202981	28.53	147	0.9
2025-06-28 14:17:23.11+00	112	\N	1126982881	28.78	164	0.9
2025-06-28 14:17:49.181+00	112	\N	1041420528	28.56	174	0.9
2025-06-28 14:17:55.321+00	112	\N	978202981	28.79	177	0.9
2025-06-28 14:48:09.143+00	112	\N	1126982881	28.82	191	0.9
2025-06-28 14:48:35.204+00	112	\N	1041420528	28.81	192	0.9
2025-06-28 14:48:41.382+00	112	\N	978202981	28.88	195	0.9
2025-06-28 15:18:55.178+00	112	\N	1126982881	29.01	210	0.9
2025-06-28 15:19:21.258+00	112	\N	1041420528	29.02	212	0.9
2025-06-28 15:19:27.415+00	112	\N	978202981	29.11	214	0.9
2025-06-28 15:49:41.175+00	112	\N	1126982881	29.16	228	0.9
2025-06-28 15:49:36.985+00	112	\N	1041420528	29.27	229	0.9
2025-06-28 15:50:13.467+00	112	\N	978202981	29.31	231	0.9
2025-06-28 16:20:27.25+00	112	\N	1126982881	29.3	249	0.9
2025-06-28 16:20:23.046+00	112	\N	1041420528	29.41	250	0.9
2025-06-28 16:20:59.555+00	112	\N	978202981	29.42	254	0.9
2025-06-28 16:51:09.086+00	112	\N	1041420528	29.49	268	0.9
2025-06-28 16:51:13.262+00	112	\N	1126982881	29.34	269	0.9
2025-06-28 16:51:45.582+00	112	\N	978202981	29.52	272	0.9
2025-06-28 17:21:59.316+00	112	\N	1126982881	29.46	296	0.9
2025-06-28 17:21:55.122+00	112	\N	1041420528	29.49	297	0.9
2025-06-28 17:22:31.687+00	112	\N	978202981	29.53	302	0.9
2025-06-28 17:35:36.421+00	112	\N	1126982881	29.21	311	0.9
2025-06-28 17:36:08.785+00	112	\N	978202981	29.25	312	0.9
2025-06-28 17:46:07.765+00	112	\N	1041420528	29.23	320	0.9
2025-06-28 18:06:22.492+00	112	\N	1126982881	29	337	0.9
2025-06-28 18:06:54.901+00	112	\N	978202981	29.08	338	0.9
2025-06-28 18:16:53.812+00	112	\N	1041420528	29.04	342	0.9
2025-06-28 18:37:08.568+00	112	\N	1126982881	28.94	359	0.9
2025-06-28 18:37:40.954+00	112	\N	978202981	29.08	360	0.9
2025-06-28 18:47:39.872+00	112	\N	1041420528	29.05	364	0.9
2025-06-28 19:07:54.569+00	112	\N	1126982881	28.81	377	0.9
2025-06-28 19:08:26.958+00	112	\N	978202981	28.85	378	0.9
2025-06-28 19:18:25.865+00	112	\N	1041420528	28.84	382	0.9
2025-06-28 19:38:40.588+00	112	\N	1126982881	28.75	397	0.9
2025-06-28 19:39:13.014+00	112	\N	978202981	28.81	398	0.9
2025-06-28 19:49:11.968+00	112	\N	1041420528	28.77	402	0.9
2025-06-30 14:54:40.114+00	112	\N	1041420528	28.82	766	0.9
2025-06-30 15:02:21.836+00	112	\N	978202981	29.35	772	0.9
2025-06-30 15:03:18.603+00	112	\N	1126982881	34.13	773	0.9
2025-06-30 15:19:27.025+00	112	\N	1126982881	34.38	780	0.9
2025-06-30 15:25:03.677+00	112	\N	978202981	29.6	786	0.9
2025-06-30 15:25:26.156+00	112	\N	1041420528	28.83	788	0.9
2025-06-30 15:32:03.587+00	112	\N	1126982881	34.64	793	0.9
2025-06-30 15:52:17.905+00	112	\N	978202981	29.86	805	0.9
2025-06-30 15:56:12.191+00	112	\N	1041420528	28.88	809	0.9
2025-06-30 16:00:18.303+00	112	\N	1126982881	34.89	812	0.9
2025-06-30 16:02:53.42+00	112	\N	978202981	30.12	815	0.9
2025-06-30 16:23:30.406+00	112	\N	1126982881	35.14	833	0.9
2025-06-30 16:26:58.257+00	112	\N	1041420528	28.94	840	0.9
2025-06-30 16:33:39.48+00	112	\N	978202981	30.11	844	0.9
2025-06-30 16:54:16.464+00	112	\N	1126982881	35.23	854	0.9
2025-06-30 16:57:44.286+00	112	\N	1041420528	28.97	860	0.9
2025-06-30 17:04:25.546+00	112	\N	978202981	30.31	864	0.9
2025-06-30 17:23:31.716+00	112	\N	1126982881	34.96	871	0.9
2025-06-30 17:28:30.362+00	112	\N	1041420528	29.03	877	0.9
2025-06-30 17:35:11.581+00	112	\N	978202981	30.46	883	0.9
2025-06-30 17:36:38.545+00	112	\N	1126982881	34.67	884	0.9
2025-06-30 17:43:11.96+00	112	\N	1126982881	34.4	886	0.9
2025-06-30 17:56:18.814+00	112	\N	1126982881	34.14	898	0.9
2025-06-30 17:59:16.372+00	112	\N	1041420528	29.05	901	0.9
2025-06-30 18:02:52.232+00	112	\N	1126982881	33.87	905	0.9
2025-06-30 18:05:57.624+00	112	\N	978202981	30.58	908	0.9
2025-06-30 18:16:29.319+00	112	\N	1126982881	33.6	913	0.9
2025-06-30 18:19:30.891+00	112	\N	1126982881	33.34	915	0.9
2025-06-30 18:28:35.628+00	112	\N	1126982881	33.08	921	0.9
2025-06-30 18:30:02.427+00	112	\N	1041420528	29.13	923	0.9
2025-06-30 18:36:43.698+00	112	\N	978202981	30.67	930	0.9
2025-06-30 18:39:41.411+00	112	\N	1126982881	32.8	932	0.9
2025-06-30 19:00:48.465+00	112	\N	1041420528	29.14	948	0.9
2025-06-30 19:02:23.274+00	112	\N	1126982881	32.25	952	0.9
2025-06-30 19:06:25.379+00	112	\N	1126982881	31.97	956	0.9
2025-06-30 19:07:29.767+00	112	\N	978202981	30.53	957	0.9
2025-06-30 19:12:58.788+00	112	\N	1126982881	31.71	960	0.9
2025-06-30 19:19:01.94+00	112	\N	1126982881	31.45	964	0.9
2025-06-30 19:28:06.674+00	112	\N	1126982881	31.2	973	0.9
2025-06-30 19:30:07.733+00	112	\N	1126982881	30.94	975	0.9
2025-06-30 19:31:34.498+00	112	\N	1041420528	29.17	979	0.9
2025-06-30 19:32:08.782+00	112	\N	1126982881	30.68	981	0.9
2025-06-30 19:33:39.56+00	112	\N	1126982881	30.41	984	0.9
2025-06-30 19:38:15.859+00	112	\N	978202981	30.54	1000	0.9
2025-06-30 19:44:49.308+00	112	\N	978202981	30.26	1008	0.9
2025-06-30 19:45:45.876+00	112	\N	1126982881	30.13	1009	0.9
2025-06-30 19:46:42.405+00	112	\N	1041420528	28.87	1015	0.9
2025-06-30 19:48:21.151+00	112	\N	978202981	29.96	1016	0.9
2025-06-30 19:49:17.725+00	112	\N	1126982881	29.87	1017	0.9
2025-06-30 19:50:44.501+00	112	\N	1041420528	28.59	1021	0.9
2025-06-30 19:53:23.77+00	112	\N	978202981	29.69	1031	0.9
2025-06-30 19:54:20.357+00	112	\N	1126982881	29.57	1032	0.9
2025-06-30 19:55:24.826+00	112	\N	978202981	29.44	1035	0.9
2025-06-30 19:56:21.397+00	112	\N	1126982881	29.31	1036	0.9
2025-06-30 19:54:46.597+00	112	\N	1041420528	28.32	1037	0.9
2025-06-30 19:59:18.97+00	112	\N	1041420528	28.05	1038	0.9
2025-06-30 19:59:26.943+00	112	\N	978202981	29.18	1039	0.9
2025-06-30 20:00:23.501+00	112	\N	1126982881	29.03	1042	0.9
2025-06-30 20:02:28.531+00	112	\N	978202981	28.93	1049	0.9
2025-06-30 20:23:09.314+00	112	\N	978202981	27.85	1067	0.9
2025-06-30 20:24:32.106+00	112	\N	1041420528	27.02	1068	0.9
2025-06-30 20:26:37.188+00	112	\N	1126982881	27.72	1070	0.9
2025-06-30 20:29:42.72+00	112	\N	978202981	27.59	1072	0.9
2025-06-30 20:30:04.992+00	112	\N	1041420528	26.74	1073	0.9
2025-06-30 20:33:10.614+00	112	\N	1126982881	27.47	1080	0.9
2025-06-30 20:35:37.894+00	112	\N	1041420528	26.47	1082	0.9
2025-06-30 20:37:16.685+00	112	\N	978202981	27.33	1083	0.9
2025-06-30 20:40:10.274+00	112	\N	1041420528	26.18	1084	0.9
2025-06-30 20:45:12.897+00	112	\N	1041420528	25.92	1088	0.9
2025-06-30 20:51:20.057+00	112	\N	1126982881	27.19	1096	0.9
2025-06-30 20:53:25.095+00	112	\N	978202981	27.08	1099	0.9
2025-06-30 20:56:48.952+00	112	\N	1041420528	25.64	1104	0.9
2025-06-30 21:05:57.684+00	112	\N	1126982881	26.94	1114	0.9
2025-06-30 21:06:31.976+00	112	\N	978202981	26.82	1117	0.9
2025-06-30 21:27:34.984+00	112	\N	1041420528	25.84	1129	0.9
2025-06-30 21:36:43.742+00	112	\N	1126982881	26.94	1136	0.9
2025-06-30 21:37:18.03+00	112	\N	978202981	26.83	1138	0.9
2025-06-30 21:46:44.98+00	112	\N	1041420528	26.1	1142	0.9
2025-06-30 22:02:27.141+00	112	\N	1126982881	27.2	1152	0.9
2025-06-30 22:08:04.106+00	112	\N	978202981	27.07	1158	0.9
2025-06-30 22:17:31.035+00	112	\N	1041420528	26.18	1163	0.9
2025-07-01 05:38:51.192+00	112	\N	1041420528	25.11	1472	0.9
2025-07-01 05:38:59.349+00	112	\N	978202981	23.55	1473	0.9
2025-07-01 05:39:55.605+00	112	\N	1126982881	23.69	1474	0.9
2025-07-01 05:46:03.041+00	112	\N	978202981	24.53	1494	0.9
2025-07-01 05:47:33.834+00	112	\N	978202981	24.78	1498	0.9
2025-07-01 05:48:30.072+00	112	\N	1126982881	23.44	1500	0.9
2025-07-01 05:50:35.411+00	112	\N	978202981	25.06	1501	0.9
2025-07-01 05:51:31.654+00	112	\N	1126982881	23.14	1503	0.9
2025-07-01 05:54:59.613+00	112	\N	1041420528	25.37	1506	0.9
2025-07-01 05:55:07.768+00	112	\N	978202981	25.32	1508	0.9
2025-07-01 05:57:04.542+00	112	\N	1126982881	22.89	1510	0.9
2025-07-01 06:06:43.814+00	112	\N	978202981	25.59	1518	0.9
2025-07-01 06:13:09.062+00	112	\N	1041420528	25.62	1522	0.9
2025-07-01 06:18:15.579+00	112	\N	1126982881	23.14	1528	0.9
2025-07-01 06:29:55.912+00	112	\N	978202981	25.84	1534	0.9
2025-07-01 06:36:25.048+00	112	\N	1126982881	23.44	1538	0.9
2025-07-01 06:43:55.136+00	112	\N	1041420528	25.84	1541	0.9
2025-07-01 06:53:03.729+00	112	\N	1126982881	23.71	1549	0.9
2025-07-01 07:00:41.961+00	112	\N	978202981	25.91	1553	0.9
2025-07-01 07:05:10.071+00	112	\N	1126982881	23.96	1557	0.9
2025-07-01 07:13:14.264+00	112	\N	1126982881	24.21	1560	0.9
2025-07-01 07:14:41.203+00	112	\N	1041420528	25.95	1562	0.9
2025-07-01 07:28:22.158+00	112	\N	1126982881	24.47	1573	0.9
2025-07-01 07:31:28.031+00	112	\N	978202981	26.02	1575	0.9
2025-07-01 07:38:27.427+00	112	\N	1126982881	24.72	1578	0.9
2025-07-01 07:45:27.247+00	112	\N	1041420528	26.07	1582	0.9
2025-07-01 07:52:04.538+00	112	\N	1126982881	24.97	1589	0.9
2025-07-01 08:16:13.303+00	112	\N	1041420528	26.14	1602	0.9
2025-07-01 08:17:17.672+00	112	\N	1126982881	25.48	1604	0.9
2025-07-01 08:24:21.351+00	112	\N	1126982881	25.74	1609	0.9
2025-07-01 08:33:00.133+00	112	\N	978202981	26.21	1614	0.9
2025-07-01 08:37:28.203+00	112	\N	1126982881	25.99	1617	0.9
2025-07-01 08:46:59.384+00	112	\N	1041420528	26.19	1624	0.9
2025-07-01 08:49:04.249+00	112	\N	1126982881	26.25	1625	0.9
2025-07-01 09:03:11.639+00	112	\N	1126982881	26.5	1636	0.9
2025-07-01 09:03:46.166+00	112	\N	978202981	26.3	1637	0.9
2025-07-01 09:14:47.68+00	112	\N	1126982881	26.76	1642	0.9
2025-07-01 09:17:45.415+00	112	\N	1041420528	26.26	1646	0.9
2025-07-01 09:26:23.709+00	112	\N	1126982881	27.03	1653	0.9
2025-07-01 09:34:32.222+00	112	\N	978202981	26.35	1657	0.9
2025-07-01 09:35:58.707+00	112	\N	1126982881	27.28	1660	0.9
2025-07-01 09:46:34.22+00	112	\N	1126982881	27.53	1664	0.9
2025-07-01 09:48:31.457+00	112	\N	1041420528	26.32	1666	0.9
2025-07-01 09:55:08.687+00	112	\N	1126982881	27.79	1672	0.9
2025-07-01 10:04:13.429+00	112	\N	1126982881	28.05	1679	0.9
2025-07-01 10:05:18.285+00	112	\N	978202981	26.42	1681	0.9
2025-07-01 10:12:17.642+00	112	\N	1126982881	28.3	1685	0.9
2025-07-01 10:19:17.513+00	112	\N	1041420528	26.38	1690	0.9
2025-07-01 10:20:52.11+00	112	\N	1126982881	28.55	1691	0.9
2025-07-01 10:29:26.576+00	112	\N	1126982881	28.81	1698	0.9
2025-07-01 10:36:04.344+00	112	\N	978202981	26.56	1703	0.9
2025-07-01 10:39:01.57+00	112	\N	1126982881	29.06	1705	0.9
2025-07-01 11:16:51.305+00	112	\N	1126982881	30.12	1734	0.9
2025-07-01 11:20:49.608+00	112	\N	1041420528	26.56	1736	0.9
2025-07-01 11:25:25.772+00	112	\N	1126982881	30.37	1744	0.9
2025-07-01 11:31:59.186+00	112	\N	1126982881	30.66	1748	0.9
2025-07-01 11:37:36.438+00	112	\N	978202981	26.81	1755	0.9
2025-07-01 11:42:34.701+00	112	\N	1126982881	30.92	1759	0.9
2025-07-01 11:51:35.641+00	112	\N	1041420528	26.69	1766	0.9
2025-07-01 11:52:39.966+00	112	\N	1126982881	31.17	1767	0.9
2025-07-01 12:00:13.916+00	112	\N	1126982881	31.46	1773	0.9
2025-07-01 12:08:22.461+00	112	\N	978202981	26.87	1783	0.9
2025-07-01 12:10:49.449+00	112	\N	1126982881	31.72	1784	0.9
2025-07-01 12:20:54.7+00	112	\N	1126982881	31.98	1789	0.9
2025-07-01 12:22:21.689+00	112	\N	1041420528	26.76	1792	0.9
2025-07-01 12:26:57.861+00	112	\N	1126982881	32.24	1798	0.9
2025-07-01 12:39:08.518+00	112	\N	978202981	26.94	1805	0.9
2025-07-01 12:41:05.211+00	112	\N	1126982881	32.5	1806	0.9
2025-07-01 12:50:09.936+00	112	\N	1126982881	32.77	1810	0.9
2025-07-01 12:53:07.745+00	112	\N	1041420528	26.83	1813	0.9
2025-07-01 13:04:17.313+00	112	\N	1126982881	33.02	1821	0.9
2025-07-01 13:09:54.586+00	112	\N	978202981	27.11	1827	0.9
2025-07-01 13:21:26.256+00	112	\N	1126982881	33.27	1832	0.9
2025-07-01 13:23:53.802+00	112	\N	1041420528	26.93	1834	0.9
2025-07-01 13:31:31.524+00	112	\N	1126982881	33.53	1842	0.9
2025-07-01 13:40:40.656+00	112	\N	978202981	27.24	1846	0.9
2025-07-01 13:45:38.876+00	112	\N	1126982881	33.78	1850	0.9
2025-07-01 13:54:39.826+00	112	\N	1041420528	27.05	1855	0.9
2025-07-01 14:11:26.691+00	112	\N	978202981	27.31	1868	0.9
2025-07-01 15:26:57.988+00	112	\N	1041420528	27.3	1920	0.9
2025-07-01 15:38:37.802+00	112	\N	1126982881	34.77	1928	0.9
2025-07-01 15:43:44.882+00	112	\N	978202981	27.62	1931	0.9
2025-07-01 16:08:23.313+00	112	\N	1126982881	35.02	1947	0.9
2025-07-01 16:14:30.909+00	112	\N	978202981	27.77	1952	0.9
2025-07-01 16:28:30.062+00	112	\N	1041420528	27.51	1959	0.9
2025-07-01 16:39:09.36+00	112	\N	1126982881	34.84	1966	0.9
2025-07-01 16:45:16.964+00	112	\N	978202981	27.87	1971	0.9
2025-07-01 16:55:17.776+00	112	\N	1126982881	34.58	1975	0.9
2025-07-01 16:59:16.102+00	112	\N	1041420528	27.6	1978	0.9
2025-07-01 17:30:02.144+00	112	\N	1041420528	27.72	1998	0.9
2025-07-01 17:38:10.136+00	112	\N	1126982881	34.96	2005	0.9
2025-07-01 17:46:49.051+00	112	\N	978202981	28.11	2011	0.9
2025-07-01 18:00:48.174+00	112	\N	1041420528	27.79	2018	0.9
2025-07-01 18:08:56.177+00	112	\N	1126982881	34.79	2029	0.9
2025-07-01 18:28:36.452+00	112	\N	1126982881	34.54	2040	0.9
2025-07-01 18:31:34.22+00	112	\N	1041420528	27.87	2043	0.9
2025-07-01 18:38:41.707+00	112	\N	1126982881	34.27	2049	0.9
2025-07-01 18:42:43.807+00	112	\N	1126982881	34.02	2051	0.9
2025-07-01 18:48:16.697+00	112	\N	1126982881	33.76	2055	0.9
2025-07-01 18:48:21.163+00	112	\N	978202981	28.34	2056	0.9
2025-07-01 18:51:48.544+00	112	\N	1126982881	33.42	2059	0.9
2025-07-01 18:56:51.164+00	112	\N	1126982881	33.13	2062	0.9
2025-07-01 19:02:20.286+00	112	\N	1041420528	27.99	2066	0.9
2025-07-01 19:02:54.312+00	112	\N	1126982881	32.85	2067	0.9
2025-07-01 19:05:25.663+00	112	\N	1126982881	32.56	2071	0.9
2025-07-01 19:10:58.536+00	112	\N	1126982881	32.3	2075	0.9
2025-07-01 19:13:29.851+00	112	\N	1126982881	32.02	2078	0.9
2025-07-01 19:17:01.689+00	112	\N	1126982881	31.77	2083	0.9
2025-07-01 19:19:07.205+00	112	\N	978202981	28.39	2084	0.9
2025-07-01 19:24:35.641+00	112	\N	1126982881	31.5	2087	0.9
2025-07-01 19:19:07.205+00	112	\N	978202981	28.39	2084	0.9
2025-07-01 19:19:07.205+00	112	\N	978202981	28.39	2084	0.9
2025-07-01 19:19:07.205+00	112	\N	la croisière s'amuse	28.39	2084	0.9
2025-07-01 19:19:07.205+00	112	\N	la croisière s'amuse	1000	2084	0.9
2025-07-01 19:30:08.538+00	112	\N	1126982881	31.24	2090	0.9
2025-07-01 19:33:06.364+00	112	\N	1041420528	28.04	2093	0.9
2025-07-01 19:38:43.004+00	112	\N	1126982881	30.97	2099	0.9
2025-07-01 19:45:46.676+00	112	\N	1126982881	30.7	2103	0.9
2025-07-01 19:49:18.521+00	112	\N	1126982881	30.45	2107	0.9
2025-07-01 19:49:53.268+00	112	\N	978202981	28.42	2108	0.9
2025-07-01 19:52:50.361+00	112	\N	1126982881	30.14	2110	0.9
2025-07-01 19:58:23.245+00	112	\N	1126982881	29.89	2114	0.9
2025-07-01 20:03:52.398+00	112	\N	1041420528	28.08	2119	0.9
2025-07-01 20:05:57.194+00	112	\N	1126982881	29.57	2126	0.9
2025-07-01 20:07:27.985+00	112	\N	1126982881	29.3	2130	0.9
2025-07-01 20:09:29.041+00	112	\N	1126982881	29.03	2135	0.9
2025-07-01 20:12:30.628+00	112	\N	1126982881	28.78	2139	0.9
2025-07-01 20:14:27.924+00	112	\N	1041420528	27.82	2141	0.9
2025-07-01 20:15:32.205+00	112	\N	1126982881	28.51	2144	0.9
2025-07-01 20:15:36.665+00	112	\N	978202981	28.17	2145	0.9
2025-07-01 20:19:34.297+00	112	\N	1126982881	28.24	2148	0.9
2025-07-01 20:24:06.662+00	112	\N	1126982881	27.98	2156	0.9
2025-07-01 20:25:03.455+00	112	\N	1041420528	27.57	2158	0.9
2025-07-01 20:27:42.978+00	112	\N	978202981	27.9	2160	0.9
2025-07-01 20:31:40.617+00	112	\N	1126982881	27.72	2166	0.9
2025-07-01 20:39:44.84+00	112	\N	1126982881	27.44	2172	0.9
2025-07-01 20:40:41.61+00	112	\N	1041420528	27.31	2174	0.9
2025-07-01 20:54:57.199+00	112	\N	978202981	27.65	2182	0.9
2025-07-01 20:56:53.791+00	112	\N	1126982881	27.13	2184	0.9
2025-07-01 21:10:00.628+00	112	\N	1126982881	26.85	2191	0.9
2025-07-01 21:11:27.644+00	112	\N	1041420528	27.13	2195	0.9
2025-07-01 21:16:08.261+00	112	\N	978202981	27.4	2199	0.9
2025-07-01 21:21:06.426+00	112	\N	1126982881	26.54	2202	0.9
2025-07-01 21:24:38.265+00	112	\N	1126982881	26.8	2206	0.9
2025-07-01 21:25:08.522+00	112	\N	1126982881	27.1	2208	0.9
2025-07-01 21:27:09.576+00	112	\N	1126982881	26.85	2215	0.9
2025-07-01 21:32:42.488+00	112	\N	1126982881	26.6	2217	0.9
2025-07-01 21:37:14.866+00	112	\N	1126982881	27.36	2222	0.9
2025-07-01 21:37:45.13+00	112	\N	1126982881	27.71	2224	0.9
2025-07-01 21:39:15.92+00	112	\N	1126982881	27.32	2231	0.9
2025-07-01 21:40:46.709+00	112	\N	1126982881	27.04	2232	0.9
2025-07-01 21:42:13.686+00	112	\N	1041420528	26.91	2236	0.9
2025-07-01 21:43:22.498+00	112	\N	978202981	27.15	2237	0.9
2025-07-01 21:43:48.277+00	112	\N	1126982881	26.78	2238	0.9
2025-07-01 22:01:27.471+00	112	\N	1126982881	26.51	2247	0.9
2025-07-01 22:01:31.955+00	112	\N	978202981	26.9	2248	0.9
2025-07-01 22:11:32.727+00	112	\N	1126982881	26.26	2256	0.9
2025-07-02 07:04:10.403+00	112	\N	1126982881	25.55	2649	0.9
2025-07-02 07:04:06.627+00	112	\N	1041420528	26.12	2650	0.9
2025-07-02 07:04:15.241+00	112	\N	978202981	26.08	2652	0.9
2025-07-02 07:04:40.666+00	112	\N	1126982881	25.81	2654	0.9
2025-07-02 07:05:07.15+00	112	\N	1041420528	26.42	2664	0.9
2025-07-02 07:09:39.514+00	112	\N	1041420528	26.13	2668	0.9
2025-07-02 07:10:48.657+00	112	\N	978202981	25.83	2669	0.9
2025-07-02 07:35:26.718+00	112	\N	1126982881	25.71	2686	0.9
2025-07-02 07:40:25.599+00	112	\N	1041420528	26.01	2688	0.9
2025-07-02 07:41:34.743+00	112	\N	978202981	25.64	2689	0.9
2025-07-02 08:06:12.757+00	112	\N	1126982881	25.81	2704	0.9
2025-07-02 08:11:11.626+00	112	\N	1041420528	26.15	2706	0.9
2025-07-02 08:12:20.838+00	112	\N	978202981	25.75	2707	0.9
2025-07-02 08:36:58.797+00	112	\N	1126982881	25.87	2722	0.9
2025-07-02 08:41:57.674+00	112	\N	1041420528	26.3	2724	0.9
2025-07-02 08:43:06.905+00	112	\N	978202981	25.84	2725	0.9
2025-07-02 09:07:44.868+00	112	\N	1126982881	26.04	2740	0.9
2025-07-02 09:12:43.706+00	112	\N	1041420528	26.48	2742	0.9
2025-07-02 09:13:52.97+00	112	\N	978202981	25.94	2743	0.9
2025-07-02 09:17:19.871+00	112	\N	1126982881	26.31	2749	0.9
2025-07-02 09:17:50.135+00	112	\N	1126982881	26.77	2751	0.9
2025-07-02 09:18:20.393+00	112	\N	1126982881	27.05	2753	0.9
2025-07-02 09:19:20.916+00	112	\N	1126982881	27.36	2759	0.9
2025-07-02 09:20:21.446+00	112	\N	1126982881	27.66	2761	0.9
2025-07-02 09:22:22.49+00	112	\N	1126982881	27.91	2764	0.9
2025-07-02 09:27:25.122+00	112	\N	1126982881	28.16	2776	0.9
2025-07-02 09:28:55.914+00	112	\N	1126982881	28.49	2784	0.9
2025-07-02 09:30:26.697+00	112	\N	1126982881	28.82	2791	0.9
2025-07-02 09:36:29.867+00	112	\N	1126982881	29.12	2795	0.9
2025-07-02 09:42:33.027+00	112	\N	1126982881	28.52	2814	0.9
2025-07-02 09:43:03.288+00	112	\N	1126982881	28.16	2816	0.9
2025-07-02 09:43:29.723+00	112	\N	1041420528	26.66	2821	0.9
2025-07-02 09:43:33.551+00	112	\N	1126982881	27.78	2822	0.9
2025-07-02 09:44:34.077+00	112	\N	1126982881	27.36	2823	0.9
2025-07-02 09:44:39.035+00	112	\N	978202981	26.04	2824	0.9
2025-07-02 09:45:34.591+00	112	\N	1126982881	27.09	2828	0.9
2025-07-02 09:46:35.129+00	112	\N	1126982881	26.83	2830	0.9
2025-07-02 09:49:06.445+00	112	\N	1126982881	26.57	2839	0.9
2025-07-02 09:55:39.852+00	112	\N	1126982881	27.21	2857	0.9
2025-07-02 10:01:12.753+00	112	\N	1126982881	28.82	2868	0.9
2025-07-02 10:05:14.861+00	112	\N	1126982881	28.56	2879	0.9
2025-07-02 10:11:18.012+00	112	\N	1126982881	28.98	2885	0.9
2025-07-02 10:11:48.281+00	112	\N	1126982881	29.45	2887	0.9
2025-07-02 10:12:18.54+00	112	\N	1126982881	29.73	2889	0.9
2025-07-02 10:12:48.8+00	112	\N	1126982881	29.48	2891	0.9
2025-07-02 10:13:49.325+00	112	\N	1126982881	29.08	2894	0.9
2025-07-02 10:14:15.766+00	112	\N	1041420528	26.82	2898	0.9
2025-07-02 10:14:49.853+00	112	\N	1126982881	28.83	2899	0.9
2025-07-02 10:15:25.091+00	112	\N	978202981	26.15	2903	0.9
2025-07-02 10:16:50.911+00	112	\N	1126982881	28.53	2905	0.9
2025-07-02 10:19:52.498+00	112	\N	1126982881	28.28	2909	0.9
2025-07-02 10:24:55.121+00	112	\N	1126982881	28	2911	0.9
2025-07-02 10:36:00.9+00	112	\N	1126982881	27.68	2925	0.9
2025-07-02 10:38:01.952+00	112	\N	1126982881	27.43	2926	0.9
2025-07-02 10:45:01.794+00	112	\N	1041420528	27.03	2934	0.9
2025-07-02 10:45:05.632+00	112	\N	1126982881	27.12	2935	0.9
2025-07-02 10:46:11.139+00	112	\N	978202981	26.3	2937	0.9
2025-07-02 10:51:08.788+00	112	\N	1126982881	26.86	2939	0.9
2025-07-02 11:40:34.568+00	112	\N	1126982881	27.09	2970	0.9
2025-07-02 11:41:04.826+00	112	\N	1126982881	27.57	2971	0.9
2025-07-02 11:43:05.88+00	112	\N	1126982881	27.87	2979	0.9
2025-07-02 11:45:06.922+00	112	\N	1126982881	28.24	2985	0.9
2025-07-02 11:46:33.878+00	112	\N	1041420528	27.4	2993	0.9
2025-07-02 11:47:43.255+00	112	\N	978202981	26.5	2998	0.9
2025-07-02 11:54:11.653+00	112	\N	1126982881	27.98	3002	0.9
2025-07-02 12:16:23.247+00	112	\N	1126982881	28.54	3020	0.9
2025-07-02 12:16:53.51+00	112	\N	1126982881	29.11	3022	0.9
2025-07-02 12:17:23.772+00	112	\N	1126982881	29.59	3023	0.9
2025-07-02 12:17:19.946+00	112	\N	1041420528	27.52	3024	0.9
2025-07-02 12:17:54.033+00	112	\N	1126982881	29.93	3025	0.9
2025-07-02 12:18:24.297+00	112	\N	1126982881	30.3	3026	0.9
2025-07-02 12:18:29.283+00	112	\N	978202981	26.65	3027	0.9
2025-07-02 12:19:55.088+00	112	\N	1126982881	29.85	3033	0.9
2025-07-02 12:21:25.872+00	112	\N	1126982881	29.52	3034	0.9
2025-07-02 12:22:56.658+00	112	\N	1126982881	29.26	3036	0.9
2025-07-02 12:24:57.719+00	112	\N	1126982881	29	3037	0.9
2025-07-02 12:28:29.549+00	112	\N	1126982881	28.74	3040	0.9
2025-07-02 12:32:31.658+00	112	\N	1126982881	28.49	3043	0.9
2025-07-02 12:42:36.938+00	112	\N	1126982881	28.24	3049	0.9
2025-07-02 12:43:03.361+00	112	\N	1041420528	27.77	3050	0.9
2025-07-02 12:49:15.354+00	112	\N	978202981	26.79	3055	0.9
2025-07-02 13:13:22.965+00	112	\N	1126982881	28.21	3067	0.9
2025-07-02 13:13:49.408+00	112	\N	1041420528	27.85	3068	0.9
2025-07-02 13:20:01.399+00	112	\N	978202981	26.87	3073	0.9
2025-07-02 13:22:57.968+00	112	\N	1126982881	28.56	3076	0.9
2025-07-02 13:23:58.524+00	112	\N	1126982881	28.84	3078	0.9
2025-07-02 13:41:07.457+00	112	\N	1126982881	28.59	3093	0.9
2025-07-02 13:44:35.481+00	112	\N	1041420528	28.04	3094	0.9
2025-07-02 13:50:47.447+00	112	\N	978202981	27.01	3099	0.9
2025-07-02 13:53:13.778+00	112	\N	1126982881	29.06	3103	0.9
2025-07-02 13:53:44.043+00	112	\N	1126982881	29.34	3105	0.9
2025-07-02 13:54:44.566+00	112	\N	1126982881	29.76	3110	0.9
2025-07-02 13:55:45.09+00	112	\N	1126982881	30.2	3115	0.9
2025-07-02 13:58:16.421+00	112	\N	1126982881	29.8	3117	0.9
2025-07-02 13:58:46.689+00	112	\N	1126982881	29.47	3118	0.9
2025-07-02 13:59:47.212+00	112	\N	1126982881	29.22	3120	0.9
2025-07-02 14:03:19.049+00	112	\N	1126982881	28.96	3130	0.9
2025-07-02 14:10:22.731+00	112	\N	1126982881	28.68	3138	0.9
2025-07-02 14:15:21.506+00	112	\N	1041420528	28.18	3142	0.9
2025-07-02 14:21:33.483+00	112	\N	978202981	27.18	3147	0.9
2025-07-02 14:41:08.788+00	112	\N	1126982881	28.61	3158	0.9
2025-07-02 14:46:07.558+00	112	\N	1041420528	28.27	3162	0.9
2025-07-02 14:52:19.548+00	112	\N	978202981	27.29	3165	0.9
2025-07-02 15:11:54.842+00	112	\N	1126982881	28.77	3176	0.9
2025-07-02 15:16:53.576+00	112	\N	1041420528	28.36	3180	0.9
2025-07-02 15:23:05.631+00	112	\N	978202981	27.39	3184	0.9
2025-07-02 15:35:06.927+00	112	\N	1126982881	29.1	3192	0.9
2025-07-02 15:36:07.456+00	112	\N	1126982881	29.62	3197	0.9
2025-07-02 15:37:07.989+00	112	\N	1126982881	29.98	3200	0.9
2025-07-02 15:40:09.581+00	112	\N	1126982881	30.45	3210	0.9
2025-07-02 15:45:42.476+00	112	\N	1126982881	30.15	3221	0.9
2025-07-02 15:47:39.653+00	112	\N	1041420528	28.49	3227	0.9
2025-07-02 15:48:44.052+00	112	\N	1126982881	29.85	3232	0.9
2025-07-02 15:53:46.682+00	112	\N	1126982881	29.59	3239	0.9
2025-07-02 15:53:51.664+00	112	\N	978202981	27.52	3240	0.9
2025-07-02 15:58:49.31+00	112	\N	1126982881	29.34	3248	0.9
2025-07-02 16:18:25.708+00	112	\N	1041420528	28.62	3273	0.9
2025-07-02 16:24:37.713+00	112	\N	978202981	27.61	3279	0.9
2025-07-02 16:29:35.342+00	112	\N	1126982881	29.49	3283	0.9
2025-07-02 16:49:11.745+00	112	\N	1041420528	28.73	3298	0.9
2025-07-02 16:55:23.769+00	112	\N	978202981	27.8	3302	0.9
2025-07-02 17:00:21.381+00	112	\N	1126982881	29.51	3310	0.9
2025-07-02 17:26:09.864+00	112	\N	978202981	27.87	3336	0.9
2025-07-02 17:31:07.419+00	112	\N	1126982881	29.47	3339	0.9
2025-07-02 17:50:43.811+00	112	\N	1041420528	28.84	3350	0.9
2025-07-02 17:56:55.93+00	112	\N	978202981	27.96	3355	0.9
2025-07-02 18:01:53.463+00	112	\N	1126982881	29.57	3357	0.9
2025-07-02 18:21:29.862+00	112	\N	1041420528	28.96	3368	0.9
2025-07-02 18:27:41.989+00	112	\N	978202981	28.08	3375	0.9
2025-07-02 18:32:39.509+00	112	\N	1126982881	29.76	3377	0.9
2025-07-02 18:52:15.904+00	112	\N	1041420528	29.02	3388	0.9
2025-07-02 18:58:28.023+00	112	\N	978202981	28.18	3393	0.9
2025-07-02 19:03:25.545+00	112	\N	1126982881	29.8	3395	0.9
2025-07-02 19:23:01.947+00	112	\N	1041420528	29.13	3406	0.9
2025-07-02 19:29:14.09+00	112	\N	978202981	28.3	3414	0.9
2025-07-02 19:34:11.593+00	112	\N	1126982881	29.82	3417	0.9
2025-07-02 19:53:47.976+00	112	\N	1041420528	29.1	3432	0.9
2025-07-02 20:00:00.171+00	112	\N	978202981	28.33	3438	0.9
2025-07-02 20:03:57.096+00	112	\N	1126982881	29.57	3440	0.9
2025-07-02 20:24:07.623+00	112	\N	1126982881	29.32	3453	0.9
2025-07-02 20:24:34.028+00	112	\N	1041420528	29.12	3454	0.9
2025-07-02 20:30:46.238+00	112	\N	978202981	28.33	3459	0.9
2025-07-02 21:24:08.91+00	112	\N	1126982881	28.36	3492	0.9
2025-07-02 21:26:06.112+00	112	\N	1041420528	29	3495	0.9
2025-07-02 21:29:41.821+00	112	\N	1126982881	28.11	3498	0.9
2025-07-02 21:32:18.335+00	112	\N	978202981	28.22	3500	0.9
2025-07-02 21:33:43.917+00	112	\N	1126982881	27.81	3501	0.9
2025-07-02 21:39:47.079+00	112	\N	1126982881	27.55	3506	0.9
2025-07-02 21:56:52.191+00	112	\N	1041420528	28.87	3518	0.9
2025-07-02 22:03:04.393+00	112	\N	978202981	28.16	3521	0.9
2025-07-02 22:10:02.842+00	112	\N	1126982881	27.3	3525	0.9
2025-07-02 22:15:05.461+00	112	\N	1126982881	27.04	3530	0.9
2025-07-02 22:27:38.227+00	112	\N	1041420528	28.86	3539	0.9
2025-07-02 22:29:12.823+00	112	\N	1126982881	27.29	3541	0.9
2025-07-02 22:33:50.458+00	112	\N	978202981	28.06	3544	0.9
2025-07-02 22:58:24.28+00	112	\N	1041420528	28.78	3563	0.9
2025-07-02 22:59:58.893+00	112	\N	1126982881	27.29	3565	0.9
2025-07-02 23:04:36.51+00	112	\N	978202981	27.94	3567	0.9
2025-07-02 23:29:10.297+00	112	\N	1041420528	28.69	3585	0.9
2025-07-02 23:30:44.929+00	112	\N	1126982881	27.28	3587	0.9
2025-07-02 23:35:22.546+00	112	\N	978202981	27.89	3592	0.9
2025-07-02 23:59:56.359+00	112	\N	1041420528	28.54	3604	0.9
\.


--
-- Data for Name: _hyper_1_9_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_1_9_chunk ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
2025-07-03 00:01:31.017+00	112	\N	1126982881	27.35	3606	0.9
2025-07-03 00:06:08.613+00	112	\N	978202981	27.88	3610	0.9
2025-07-03 07:01:40.085+00	112	\N	1126982881	25.87	3912	0.9
2025-07-03 07:06:38.978+00	112	\N	1041420528	26.08	3915	0.9
2025-07-03 07:30:55.353+00	112	\N	1126982881	25.53	3935	0.9
2025-07-03 07:31:55.884+00	112	\N	1126982881	25.28	3936	0.9
2025-07-03 07:33:26.671+00	112	\N	1126982881	24.95	3937	0.9
2025-07-03 07:35:57.988+00	112	\N	1126982881	24.63	3941	0.9
2025-07-03 07:37:25.009+00	112	\N	1041420528	26.28	3943	0.9
2025-07-03 07:39:29.828+00	112	\N	1126982881	24.36	3944	0.9
2025-07-03 07:49:35.075+00	112	\N	1126982881	24.11	3952	0.9
2025-07-03 07:51:41.477+00	112	\N	978202981	26.17	3955	0.9
2025-07-03 08:08:11.11+00	112	\N	1041420528	26.47	3967	0.9
2025-07-03 08:20:21.131+00	112	\N	1126982881	24.02	3974	0.9
2025-07-03 08:22:27.537+00	112	\N	978202981	26.32	3975	0.9
2025-07-03 08:38:57.156+00	112	\N	1041420528	26.67	3986	0.9
2025-07-03 08:51:07.155+00	112	\N	1126982881	24.13	3993	0.9
2025-07-03 08:53:13.59+00	112	\N	978202981	26.47	3994	0.9
2025-07-03 09:03:13.463+00	112	\N	1126982881	24.42	4003	0.9
2025-07-03 09:09:43.196+00	112	\N	1041420528	26.81	4007	0.9
2025-07-03 09:13:18.72+00	112	\N	1126982881	24.67	4008	0.9
2025-07-03 09:23:59.623+00	112	\N	978202981	26.61	4013	0.9
2025-07-03 09:25:25.04+00	112	\N	1126982881	24.92	4016	0.9
2025-07-03 09:33:29.239+00	112	\N	1126982881	25.17	4022	0.9
2025-07-03 09:40:29.263+00	112	\N	1041420528	27	4028	0.9
2025-07-03 09:41:33.441+00	112	\N	1126982881	25.44	4029	0.9
2025-07-03 09:51:08.432+00	112	\N	1126982881	25.69	4034	0.9
2025-07-03 09:54:45.689+00	112	\N	978202981	26.75	4035	0.9
2025-07-03 10:11:15.289+00	112	\N	1041420528	27.18	4048	0.9
2025-07-03 10:21:54.471+00	112	\N	1126982881	25.84	4053	0.9
2025-07-03 10:25:31.739+00	112	\N	978202981	26.82	4056	0.9
2025-07-03 10:42:01.318+00	112	\N	1041420528	27.3	4068	0.9
2025-07-03 10:44:36.312+00	112	\N	1126982881	26.11	4069	0.9
2025-07-03 10:56:17.79+00	112	\N	978202981	26.93	4076	0.9
2025-07-03 11:01:14.987+00	112	\N	1126982881	26.37	4082	0.9
2025-07-03 11:12:47.367+00	112	\N	1041420528	27.45	4088	0.9
2025-07-03 11:18:54.185+00	112	\N	1126982881	26.62	4091	0.9
2025-07-03 11:27:03.839+00	112	\N	978202981	27.08	4096	0.9
2025-07-03 11:34:32.323+00	112	\N	1126982881	26.89	4102	0.9
2025-07-03 11:43:33.4+00	112	\N	1041420528	27.61	4108	0.9
2025-07-03 11:44:37.586+00	112	\N	1126982881	27.22	4109	0.9
2025-07-03 11:57:49.891+00	112	\N	978202981	27.19	4117	0.9
2025-07-03 11:57:49.885+00	112	\N	978202981	27.19	4118	0.9
2025-07-03 12:09:50.735+00	112	\N	1126982881	27.48	4127	0.9
2025-07-03 12:14:19.453+00	112	\N	1041420528	27.76	4128	0.9
2025-07-03 12:16:24.146+00	112	\N	1126982881	27.73	4131	0.9
2025-07-03 12:28:35.95+00	112	\N	978202981	27.32	4137	0.9
2025-07-03 12:42:07.57+00	112	\N	1126982881	27.98	4147	0.9
2025-07-03 12:45:05.482+00	112	\N	1041420528	27.89	4148	0.9
2025-07-03 14:48:09.651+00	112	\N	1041420528	28.31	4226	0.9
2025-07-03 15:02:26.17+00	112	\N	978202981	27.72	4233	0.9
2025-07-03 15:07:23.286+00	112	\N	1126982881	28.87	4239	0.9
2025-07-03 15:18:55.693+00	112	\N	1041420528	28.39	4244	0.9
2025-07-03 15:33:12.222+00	112	\N	978202981	27.83	4251	0.9
2025-07-03 15:38:09.323+00	112	\N	1126982881	28.77	4257	0.9
2025-07-03 15:49:41.741+00	112	\N	1041420528	28.49	4264	0.9
2025-07-03 15:55:18.272+00	112	\N	1126982881	28.51	4279	0.9
2025-07-03 15:56:15.163+00	112	\N	1041420528	28.23	4281	0.9
2025-07-03 15:59:47.008+00	112	\N	1041420528	27.98	4282	0.9
2025-07-03 16:03:22.478+00	112	\N	1126982881	28.22	4284	0.9
2025-07-03 16:03:58.281+00	112	\N	978202981	27.88	4287	0.9
2025-07-03 16:08:21.484+00	112	\N	1041420528	27.73	4290	0.9
2025-07-03 16:18:00.097+00	112	\N	1126982881	27.96	4298	0.9
2025-07-03 16:29:02.26+00	112	\N	1041420528	27.48	4303	0.9
2025-07-03 16:34:38.808+00	112	\N	1126982881	27.71	4307	0.9
2025-07-03 16:34:44.327+00	112	\N	978202981	27.83	4308	0.9
2025-07-03 16:57:20.64+00	112	\N	1126982881	27.43	4321	0.9
2025-07-03 16:59:48.303+00	112	\N	1041420528	27.46	4322	0.9
2025-07-03 17:05:30.364+00	112	\N	978202981	27.85	4326	0.9
2025-07-03 17:28:06.673+00	112	\N	1126982881	27.52	4339	0.9
2025-07-03 17:30:34.378+00	112	\N	1041420528	27.54	4340	0.9
2025-07-03 17:36:16.404+00	112	\N	978202981	27.84	4344	0.9
2025-07-03 17:58:52.717+00	112	\N	1126982881	27.3	4358	0.9
2025-07-03 18:01:20.428+00	112	\N	1041420528	27.54	4359	0.9
2025-07-03 18:07:02.446+00	112	\N	978202981	27.85	4363	0.9
2025-07-03 18:11:59.554+00	112	\N	1126982881	27.04	4368	0.9
2025-07-03 18:26:37.183+00	112	\N	1126982881	27.34	4378	0.9
2025-07-03 18:27:07.451+00	112	\N	1126982881	27.84	4380	0.9
2025-07-03 18:27:37.71+00	112	\N	1126982881	28.23	4382	0.9
2025-07-03 18:29:08.499+00	112	\N	1126982881	28.48	4388	0.9
2025-07-03 18:32:06.47+00	112	\N	1041420528	27.33	4394	0.9
2025-07-03 18:35:11.647+00	112	\N	1126982881	28.79	4403	0.9
2025-07-03 18:37:48.493+00	112	\N	978202981	27.75	4405	0.9
2025-07-03 18:42:45.593+00	112	\N	1126982881	28.53	4412	0.9
2025-07-03 19:02:25.861+00	112	\N	1126982881	28.28	4425	0.9
2025-07-03 19:02:52.518+00	112	\N	1041420528	27.15	4427	0.9
2025-07-03 19:08:34.535+00	112	\N	978202981	27.51	4434	0.9
2025-07-03 19:33:11.902+00	112	\N	1126982881	28.19	4454	0.9
2025-07-03 19:33:38.556+00	112	\N	1041420528	27.07	4455	0.9
2025-07-03 19:38:44.795+00	112	\N	1126982881	27.94	4462	0.9
2025-07-03 19:39:20.561+00	112	\N	978202981	27.34	4463	0.9
2025-07-03 19:49:50.568+00	112	\N	1126982881	27.66	4473	0.9
2025-07-03 20:03:54.325+00	112	\N	1041420528	26.81	4480	0.9
2025-07-03 20:04:28.186+00	112	\N	1126982881	27.41	4481	0.9
2025-07-03 20:10:06.599+00	112	\N	978202981	27.22	4483	0.9
2025-07-03 20:11:58.544+00	112	\N	1041420528	26.55	4484	0.9
2025-07-03 20:24:38.698+00	112	\N	1126982881	27.14	4495	0.9
2025-07-03 20:32:09.05+00	112	\N	1041420528	26.29	4498	0.9
2025-07-03 20:35:50.002+00	112	\N	978202981	26.96	4507	0.9
2025-07-03 20:38:15.786+00	112	\N	1126982881	27.7	4509	0.9
2025-07-03 20:46:20.003+00	112	\N	1126982881	27.45	4525	0.9
2025-07-03 20:53:23.676+00	112	\N	1126982881	27.2	4529	0.9
2025-07-03 21:02:55.093+00	112	\N	1041420528	26.49	4534	0.9
2025-07-03 21:06:36.043+00	112	\N	978202981	26.87	4540	0.9
2025-07-03 21:11:02.875+00	112	\N	1126982881	27.5	4550	0.9
2025-07-03 21:29:12.354+00	112	\N	1126982881	27.25	4574	0.9
2025-07-03 21:33:41.141+00	112	\N	1041420528	26.47	4580	0.9
2025-07-03 21:37:22.103+00	112	\N	978202981	26.76	4587	0.9
2025-07-03 21:59:58.393+00	112	\N	1126982881	27.02	4611	0.9
2025-07-03 22:04:27.176+00	112	\N	1041420528	26.37	4615	0.9
2025-07-03 22:05:01.028+00	112	\N	1126982881	26.76	4616	0.9
2025-07-03 22:08:08.151+00	112	\N	978202981	26.6	4618	0.9
2025-07-03 22:18:07.855+00	112	\N	1126982881	27.03	4630	0.9
2025-07-03 22:21:09.432+00	112	\N	1126982881	27.56	4632	0.9
2025-07-03 22:22:09.961+00	112	\N	1126982881	27.84	4637	0.9
2025-07-03 22:24:11.006+00	112	\N	1126982881	27.59	4647	0.9
2025-07-03 22:25:41.796+00	112	\N	1126982881	27.31	4648	0.9
2025-07-03 22:33:15.737+00	112	\N	1126982881	27.63	4659	0.9
2025-07-03 22:35:13.236+00	112	\N	1041420528	26.3	4669	0.9
2025-07-03 22:38:48.626+00	112	\N	1126982881	27.38	4674	0.9
2025-07-03 22:38:54.185+00	112	\N	978202981	26.46	4675	0.9
2025-07-03 22:42:20.471+00	112	\N	1126982881	27.11	4678	0.9
2025-07-03 23:05:59.261+00	112	\N	1041420528	26.49	4705	0.9
2025-07-03 23:09:40.213+00	112	\N	978202981	26.57	4707	0.9
2025-07-03 23:13:06.519+00	112	\N	1126982881	27.31	4713	0.9
2025-07-03 23:18:09.15+00	112	\N	1126982881	27.66	4722	0.9
2025-07-03 23:20:40.462+00	112	\N	1126982881	28.36	4730	0.9
2025-07-03 23:21:10.724+00	112	\N	1126982881	28.77	4732	0.9
2025-07-03 23:24:12.299+00	112	\N	1126982881	29.03	4744	0.9
2025-07-03 23:26:13.35+00	112	\N	1126982881	28.78	4752	0.9
2025-07-03 23:28:14.405+00	112	\N	1126982881	28.5	4754	0.9
2025-07-03 23:31:46.241+00	112	\N	1126982881	28.79	4758	0.9
2025-07-03 23:32:46.764+00	112	\N	1126982881	29.28	4760	0.9
2025-07-03 23:34:17.555+00	112	\N	1126982881	29.56	4763	0.9
2025-07-03 23:36:18.607+00	112	\N	1126982881	29.22	4769	0.9
2025-07-03 23:36:45.317+00	112	\N	1041420528	26.49	4770	0.9
2025-07-03 23:37:49.391+00	112	\N	1126982881	28.92	4771	0.9
2025-07-03 23:40:26.259+00	112	\N	978202981	26.61	4779	0.9
2025-07-03 23:44:22.805+00	112	\N	1126982881	28.63	4788	0.9
2025-07-03 23:47:24.384+00	112	\N	1126982881	28.91	4792	0.9
2025-07-03 23:48:55.179+00	112	\N	1126982881	29.25	4793	0.9
2025-07-03 23:51:56.752+00	112	\N	1126982881	29	4804	0.9
2025-07-03 23:54:58.327+00	112	\N	1126982881	28.73	4812	0.9
2025-07-03 23:56:29.123+00	112	\N	1126982881	28.48	4815	0.9
2025-07-03 23:59:30.706+00	112	\N	1126982881	28.22	4816	0.9
2025-07-04 00:03:02.55+00	112	\N	1126982881	27.97	4817	0.9
2025-07-04 00:07:31.366+00	112	\N	1041420528	26.5	4821	0.9
2025-07-04 00:09:05.7+00	112	\N	1126982881	27.69	4822	0.9
2025-07-04 00:11:12.288+00	112	\N	978202981	26.64	4823	0.9
2025-07-04 00:19:10.971+00	112	\N	1126982881	27.43	4828	0.9
2025-07-04 05:27:57.521+00	112	\N	978202981	24.59	5040	0.9
2025-07-04 05:28:27.786+00	112	\N	978202981	24.34	5044	0.9
2025-07-04 05:29:22.668+00	112	\N	1126982881	23.86	5045	0.9
2025-07-04 05:29:28.317+00	112	\N	978202981	23.88	5046	0.9
2025-07-04 05:30:28.831+00	112	\N	978202981	23.51	5047	0.9
2025-07-04 05:31:29.361+00	112	\N	978202981	23.22	5048	0.9
2025-07-04 05:32:29.889+00	112	\N	978202981	22.91	5049	0.9
2025-07-04 05:34:00.682+00	112	\N	978202981	22.62	5053	0.9
2025-07-04 09:52:09.632+00	112	\N	1126982881	23.56	5230	0.9
2025-07-04 09:52:15.352+00	112	\N	978202981	23.15	5231	0.9
2025-07-04 09:55:38.035+00	112	\N	1041420528	24.59	5241	0.9
2025-07-04 09:58:12.792+00	112	\N	1126982881	23.91	5244	0.9
2025-07-04 10:00:49.81+00	112	\N	978202981	23.4	5253	0.9
2025-07-04 10:01:44.616+00	112	\N	1126982881	24.2	5255	0.9
2025-07-04 10:07:17.512+00	112	\N	1126982881	24.48	5265	0.9
2025-07-04 10:08:48.306+00	112	\N	1126982881	24.76	5268	0.9
2025-07-04 10:09:18.565+00	112	\N	1126982881	25.1	5269	0.9
2025-07-04 10:09:48.833+00	112	\N	1126982881	25.5	5271	0.9
2025-07-04 10:10:19.087+00	112	\N	1126982881	25.75	5272	0.9
2025-07-04 10:10:49.349+00	112	\N	1126982881	26.07	5273	0.9
2025-07-04 10:11:19.615+00	112	\N	1126982881	26.33	5274	0.9
2025-07-04 10:14:57.174+00	112	\N	978202981	23.65	5285	0.9
2025-07-04 10:15:51.978+00	112	\N	1126982881	26.03	5286	0.9
2025-07-04 10:17:53.028+00	112	\N	1126982881	25.75	5288	0.9
2025-07-04 10:20:24.337+00	112	\N	1126982881	25.48	5289	0.9
2025-07-04 10:24:26.453+00	112	\N	1126982881	25.21	5295	0.9
2025-07-04 10:26:24.057+00	112	\N	1041420528	24.55	5297	0.9
2025-07-04 11:01:45.934+00	112	\N	1126982881	25.12	5328	0.9
2025-07-04 11:07:54.819+00	112	\N	978202981	24.74	5339	0.9
2025-07-04 11:07:49.081+00	112	\N	1126982881	26.29	5340	0.9
2025-07-04 11:08:19.346+00	112	\N	1126982881	26.69	5342	0.9
2025-07-04 11:10:20.406+00	112	\N	1126982881	26.44	5349	0.9
2025-07-04 11:11:51.184+00	112	\N	1126982881	26.71	5354	0.9
2025-07-04 11:12:21.447+00	112	\N	1126982881	27.26	5357	0.9
2025-07-04 11:14:22.515+00	112	\N	1126982881	26.99	5369	0.9
2025-07-04 11:15:23.038+00	112	\N	1126982881	26.71	5371	0.9
2025-07-04 11:16:53.829+00	112	\N	1126982881	26.36	5375	0.9
2025-07-04 11:19:55.408+00	112	\N	1126982881	26.08	5381	0.9
2025-07-04 11:21:31.908+00	112	\N	978202981	24.99	5383	0.9
2025-07-04 11:23:57.511+00	112	\N	1126982881	25.8	5389	0.9
2025-07-04 11:27:56.14+00	112	\N	1041420528	24.74	5391	0.9
2025-07-04 11:30:00.658+00	112	\N	1126982881	25.55	5392	0.9
2025-07-04 11:30:06.376+00	112	\N	978202981	25.24	5393	0.9
2025-07-04 11:40:41.902+00	112	\N	978202981	25.52	5401	0.9
2025-07-04 11:55:49.791+00	112	\N	978202981	25.77	5411	0.9
2025-07-04 11:58:42.181+00	112	\N	1041420528	24.85	5412	0.9
2025-07-04 12:00:46.711+00	112	\N	1126982881	25.54	5414	0.9
2025-07-04 12:07:25.837+00	112	\N	978202981	26.02	5419	0.9
2025-07-04 13:25:00.628+00	112	\N	1126982881	26.29	5481	0.9
2025-07-04 13:25:57.67+00	112	\N	1041420528	25.53	5483	0.9
2025-07-04 13:28:38.21+00	112	\N	978202981	27.81	5492	0.9
2025-07-04 13:43:46.113+00	112	\N	978202981	28.06	5520	0.9
2025-07-04 13:48:48.735+00	112	\N	978202981	28.34	5523	0.9
2025-07-04 13:51:14.291+00	112	\N	1126982881	27.8	5526	0.9
2025-07-04 13:52:14.814+00	112	\N	1126982881	28.15	5529	0.9
2025-07-04 13:53:15.343+00	112	\N	1126982881	28.44	5532	0.9
2025-07-04 13:58:17.974+00	112	\N	1126982881	29.04	5543	0.9
2025-07-04 14:00:19.028+00	112	\N	1126982881	28.76	5550	0.9
2025-07-04 14:01:49.807+00	112	\N	1126982881	28.49	5556	0.9
2025-07-04 14:03:56.625+00	112	\N	978202981	28.59	5562	0.9
2025-07-04 14:04:51.382+00	112	\N	1126982881	28.24	5563	0.9
2025-07-04 14:09:23.753+00	112	\N	1126982881	27.97	5574	0.9
2025-07-04 14:09:50.572+00	112	\N	1041420528	25.9	5576	0.9
2025-07-04 14:19:29.006+00	112	\N	1126982881	27.71	5584	0.9
2025-07-04 14:22:06.103+00	112	\N	978202981	28.85	5585	0.9
2025-07-04 14:40:36.632+00	112	\N	1041420528	26.07	5600	0.9
2025-07-04 14:42:46.889+00	112	\N	978202981	29.1	5606	0.9
2025-07-04 14:49:44.768+00	112	\N	1126982881	28.02	5614	0.9
2025-07-04 14:51:15.55+00	112	\N	1126982881	28.34	5622	0.9
2025-07-04 14:52:16.08+00	112	\N	1126982881	28.67	5625	0.9
2025-07-04 15:19:30.292+00	112	\N	1126982881	28.6	5663	0.9
2025-07-04 15:26:00.31+00	112	\N	1041420528	26.51	5694	0.9
2025-07-04 15:27:00.826+00	112	\N	1041420528	26.81	5699	0.9
2025-07-04 15:28:01.351+00	112	\N	1041420528	27.06	5701	0.9
2025-07-04 15:28:04.762+00	112	\N	1126982881	28.34	5702	0.9
2025-07-04 15:30:02.422+00	112	\N	1041420528	27.34	5705	0.9
2025-07-04 15:33:03.992+00	112	\N	1041420528	27.59	5711	0.9
2025-07-04 15:38:36.885+00	112	\N	1041420528	27.85	5717	0.9
2025-07-04 18:24:42.602+00	112	telegraf	978202981	27.24	6110	1
2025-07-04 19:39:46.023+00	112	telegraf	1126982881	28.71	6205	1
2025-07-04 19:44:14.992+00	112	telegraf	1041420528	28.46	6218	1
2025-07-04 19:44:24.191+00	112	telegraf	978202981	26.02	6219	1
2025-07-04 19:48:50.746+00	112	telegraf	1126982881	28.46	6222	1
2025-07-04 20:09:37.35+00	112	telegraf	978202981	25.51	6247	1
2025-07-04 20:15:01.04+00	112	telegraf	1041420528	28.52	6256	1
2025-07-04 20:19:36.824+00	112	telegraf	1126982881	28.33	6264	1
2025-07-04 20:20:43.131+00	112	telegraf	978202981	25.85	6275	1
2025-07-04 20:21:43.657+00	112	telegraf	978202981	26.11	6279	1
2025-07-04 20:22:38.397+00	112	telegraf	1126982881	28.06	6282	1
2025-07-04 20:23:44.705+00	112	telegraf	978202981	26.46	6287	1
2025-07-04 20:26:46.299+00	112	telegraf	978202981	26.77	6304	1
2025-07-04 20:32:40.235+00	112	telegraf	1041420528	28.02	6311	1
2025-07-04 20:40:47.856+00	112	telegraf	1126982881	27.56	6331	1
2025-07-04 20:44:46.553+00	112	telegraf	1041420528	27.77	6344	1
2025-07-04 20:49:58.386+00	112	telegraf	978202981	26.51	6352	1
2025-07-04 20:50:49.697+00	112	telegraf	1041420528	27.47	6354	1
2025-07-04 20:51:29.184+00	112	telegraf	978202981	26.12	6357	1
2025-07-04 20:52:23.901+00	112	telegraf	1126982881	26.96	6358	1
2025-07-04 20:52:59.975+00	112	telegraf	978202981	25.83	6359	1
2025-07-04 21:00:24.696+00	112	telegraf	1041420528	27.2	6371	1
2025-07-04 21:05:36.541+00	112	telegraf	978202981	26.08	6376	1
2025-07-04 21:12:00.744+00	112	telegraf	1041420528	26.92	6384	1
2025-07-04 21:14:05.206+00	112	telegraf	1126982881	26.7	6388	1
2025-07-04 21:26:41.77+00	112	telegraf	1126982881	26.44	6405	1
2025-07-04 21:27:08.655+00	112	telegraf	1041420528	26.66	6406	1
2025-07-04 21:28:48.633+00	112	telegraf	978202981	25.82	6407	1
2025-07-04 21:37:53.373+00	112	telegraf	978202981	25.55	6414	1
2025-07-04 21:38:17.821+00	112	telegraf	1126982881	26.18	6415	1
2025-07-04 21:38:44.721+00	112	telegraf	1041420528	26.4	6416	1
2025-07-04 21:41:25.231+00	112	telegraf	978202981	25.3	6423	1
2025-07-04 21:45:51.776+00	112	telegraf	1126982881	25.93	6429	1
2025-07-04 21:46:27.852+00	112	telegraf	978202981	25.04	6430	1
2025-07-04 21:54:22.866+00	112	telegraf	1041420528	25.9	6440	1
2025-07-04 22:09:34.138+00	112	telegraf	1126982881	25.66	6459	1
2025-07-04 22:17:13.91+00	112	telegraf	978202981	24.97	6467	1
2025-07-04 22:24:17.587+00	112	telegraf	978202981	24.71	6474	1
2025-07-04 22:30:41.783+00	112	telegraf	1041420528	25.37	6477	1
2025-07-04 22:33:52.586+00	112	telegraf	978202981	24.46	6481	1
2025-07-04 22:36:18.094+00	112	telegraf	1126982881	25.12	6487	1
2025-07-04 22:36:54.161+00	112	telegraf	978202981	24.21	6489	1
2025-07-04 22:38:24.942+00	112	telegraf	978202981	23.96	6491	1
2025-07-04 22:42:48.087+00	112	telegraf	1041420528	25.08	6493	1
2025-07-04 22:51:31.79+00	112	telegraf	978202981	24.24	6503	1
2025-07-04 23:01:00.961+00	112	telegraf	1126982881	24.82	6517	1
2025-07-04 23:04:38.632+00	112	telegraf	978202981	23.91	6526	1
2025-07-04 23:05:03.075+00	112	telegraf	1126982881	24.57	6527	1
2025-07-04 23:07:09.953+00	112	telegraf	978202981	23.66	6531	1
2025-07-04 23:09:11.004+00	112	telegraf	978202981	23.38	6543	1
2025-07-04 23:11:02.825+00	112	telegraf	1041420528	24.56	6545	1
2025-07-04 23:14:38.066+00	112	telegraf	1126982881	24.31	6547	1
2025-07-05 07:34:04.413+00	112	telegraf	978202981	23.83	6913	1
2025-07-05 07:37:26.828+00	112	telegraf	1041420528	24.11	6918	1
2025-07-05 07:42:02.614+00	112	telegraf	1126982881	24.06	6921	1
2025-07-05 07:45:40.466+00	112	telegraf	978202981	24.09	6923	1
2025-07-05 07:54:35.784+00	112	telegraf	1041420528	24.36	6929	1
2025-07-05 08:56:07.852+00	112	telegraf	1041420528	24.69	6969	1
2025-07-05 09:13:47.072+00	112	telegraf	1041420528	24.94	6980	1
2025-07-05 09:25:23.109+00	112	telegraf	1041420528	25.2	6989	1
2025-07-05 09:29:04.409+00	112	telegraf	978202981	25.21	6993	1
2025-07-05 09:35:01.509+00	112	telegraf	1126982881	25.36	6995	1
2025-07-05 09:49:14.947+00	112	telegraf	978202981	25.46	7007	1
2025-07-05 09:54:11.503+00	112	telegraf	1126982881	25.64	7009	1
2025-07-05 10:17:20.185+00	112	telegraf	1041420528	25.61	7026	1
2025-07-05 10:20:01.006+00	112	telegraf	978202981	25.68	7029	1
2025-07-05 10:41:32.799+00	112	telegraf	1041420528	25.87	7038	1
2025-07-05 12:29:32.512+00	112	telegraf	1126982881	25.46	7111	1
2025-07-05 12:31:39.67+00	112	telegraf	978202981	25.45	7112	1
2025-07-05 12:40:08.022+00	112	telegraf	1126982881	25.72	7117	1
2025-07-05 12:46:17.296+00	112	telegraf	978202981	25.71	7124	1
2025-07-05 12:47:08.276+00	112	telegraf	1041420528	25.78	7125	1
2025-07-05 13:00:18.55+00	112	telegraf	1126982881	25.97	7132	1
2025-07-05 13:06:58.073+00	112	telegraf	978202981	25.98	7136	1
2025-07-05 13:18:58.27+00	112	telegraf	1126982881	26.22	7145	1
2025-07-05 13:29:09.653+00	112	telegraf	978202981	26.26	7151	1
2025-07-05 13:34:02.748+00	112	telegraf	1041420528	26.28	7152	1
2025-07-05 13:46:12.475+00	112	telegraf	1126982881	26.48	7162	1
2025-07-05 13:59:55.7+00	112	telegraf	978202981	26.44	7170	1
2025-07-05 14:16:58.516+00	112	telegraf	1126982881	26.62	7180	1
2025-07-05 14:30:41.74+00	112	telegraf	978202981	26.66	7189	1
2025-07-05 14:35:34.819+00	112	telegraf	1041420528	26.7	7190	1
2025-07-05 14:47:44.548+00	112	telegraf	1126982881	26.81	7199	1
2025-07-05 15:01:27.799+00	112	telegraf	978202981	26.83	7208	1
2025-07-05 15:18:30.598+00	112	telegraf	1126982881	26.9	7219	1
2025-07-05 15:32:13.878+00	112	telegraf	978202981	26.94	7228	1
2025-07-05 15:37:06.924+00	112	telegraf	1041420528	27.01	7232	1
2025-07-05 16:02:59.943+00	112	telegraf	978202981	26.93	7246	1
2025-07-05 16:07:52.974+00	112	telegraf	1041420528	26.97	7250	1
2025-07-05 16:50:48.699+00	112	telegraf	1126982881	26.72	7275	1
2025-07-05 17:03:31.517+00	112	telegraf	978202981	26.76	7285	1
2025-07-05 18:03:23.216+00	112	telegraf	1041420528	26.93	7324	1
2025-07-05 18:05:03.594+00	112	telegraf	978202981	26.9	7325	1
2025-07-05 19:23:38.368+00	112	telegraf	1126982881	25.76	7401	1
2025-07-05 19:25:45.679+00	112	telegraf	978202981	25.6	7405	1
2025-07-05 19:26:39.94+00	112	telegraf	1126982881	25.46	7408	1
2025-07-05 19:27:37.12+00	112	telegraf	1041420528	25.37	7409	1
2025-07-05 19:29:41.527+00	112	telegraf	1126982881	25.2	7412	1
2025-07-05 19:30:18.045+00	112	telegraf	978202981	25.07	7413	1
2025-07-05 19:30:38.696+00	112	telegraf	1041420528	25.11	7414	1
2025-07-05 19:32:43.101+00	112	telegraf	1126982881	24.93	7415	1
2025-07-05 19:33:10.014+00	112	telegraf	1041420528	24.84	7416	1
2025-07-05 19:42:45.006+00	112	telegraf	1041420528	24.59	7425	1
2025-07-05 19:42:48.369+00	112	telegraf	1126982881	24.67	7426	1
2025-07-05 19:43:24.882+00	112	telegraf	978202981	24.48	7427	1
2025-07-05 19:44:49.419+00	112	telegraf	1126982881	24.41	7428	1
2025-07-05 19:45:16.321+00	112	telegraf	1041420528	24.3	7429	1
2025-07-05 19:47:26.991+00	112	telegraf	978202981	24.22	7434	1
2025-07-05 19:59:53.935+00	112	telegraf	1041420528	24.03	7443	1
2025-07-05 20:00:27.573+00	112	telegraf	1126982881	24.08	7444	1
2025-07-05 20:02:04.615+00	112	telegraf	978202981	23.87	7445	1
2025-07-05 20:02:55.527+00	112	telegraf	1041420528	23.74	7446	1
2025-07-05 20:02:58.89+00	112	telegraf	1126982881	23.79	7447	1
2025-07-05 20:04:05.664+00	112	telegraf	978202981	23.6	7449	1
2025-07-05 20:04:26.318+00	112	telegraf	1041420528	23.49	7450	1
2025-07-05 20:06:06.719+00	112	telegraf	978202981	23.29	7455	1
2025-07-05 20:06:57.632+00	112	telegraf	1041420528	23.24	7458	1
2025-07-05 20:09:02.053+00	112	telegraf	1126982881	23.26	7460	1
2025-07-05 20:22:45.386+00	112	telegraf	978202981	23.03	7465	1
2025-07-05 20:23:06.041+00	112	telegraf	1041420528	22.97	7466	1
2025-07-05 20:24:40.183+00	112	telegraf	1126982881	22.98	7468	1
2025-07-05 20:47:58.534+00	112	telegraf	978202981	22.78	7483	1
2025-07-05 20:49:19.719+00	112	telegraf	1041420528	22.68	7485	1
2025-07-05 20:49:53.332+00	112	telegraf	1126982881	22.73	7486	1
2025-07-05 20:55:22.875+00	112	telegraf	1041420528	22.43	7490	1
2025-07-05 20:58:27.797+00	112	telegraf	1126982881	22.48	7495	1
2025-07-05 21:10:00.518+00	112	telegraf	1041420528	22.69	7502	1
2025-07-05 21:10:34.117+00	112	telegraf	1126982881	22.77	7503	1
2025-07-05 21:16:33.93+00	112	telegraf	1041420528	22.43	7506	1
2025-07-05 21:16:37.277+00	112	telegraf	1126982881	22.48	7507	1
2025-07-05 21:21:15.887+00	112	telegraf	978202981	22.27	7509	1
2025-07-05 21:22:06.812+00	112	telegraf	1041420528	22.16	7510	1
2025-07-05 21:23:10.698+00	112	telegraf	1126982881	22.17	7511	1
2025-07-05 21:24:17.474+00	112	telegraf	978202981	22.02	7513	1
2025-07-05 21:25:08.397+00	112	telegraf	1041420528	21.91	7514	1
2025-07-05 21:28:13.316+00	112	telegraf	1126982881	21.92	7519	1
2025-07-05 21:34:16.465+00	112	telegraf	1126982881	22.18	7527	1
2025-07-05 21:35:13.651+00	112	telegraf	1041420528	22.2	7528	1
2025-07-05 21:36:23.786+00	112	telegraf	978202981	22.29	7532	1
2025-07-05 21:39:49.372+00	112	telegraf	1126982881	22.44	7535	1
2025-07-05 21:40:46.544+00	112	telegraf	1041420528	22.46	7536	1
2025-07-05 21:42:57.204+00	112	telegraf	978202981	22.54	7538	1
2025-07-05 21:45:22.255+00	112	telegraf	1126982881	22.7	7539	1
2025-07-05 21:49:00.362+00	112	telegraf	978202981	22.81	7544	1
2025-07-05 21:53:56.73+00	112	telegraf	1126982881	22.95	7545	1
2025-07-05 21:54:23.639+00	112	telegraf	1041420528	22.97	7546	1
2025-07-05 21:57:34.829+00	112	telegraf	978202981	23.09	7549	1
2025-07-05 21:59:59.881+00	112	telegraf	1126982881	23.2	7553	1
2025-07-05 22:01:27.323+00	112	telegraf	1041420528	23.23	7554	1
2025-07-05 22:07:40.089+00	112	telegraf	978202981	23.35	7560	1
2025-07-05 22:10:05.15+00	112	telegraf	1126982881	23.5	7562	1
2025-07-05 22:11:02.31+00	112	telegraf	1041420528	23.5	7563	1
2025-07-05 22:16:44.825+00	112	telegraf	978202981	23.6	7567	1
2025-07-05 22:22:11.454+00	112	telegraf	1126982881	23.77	7569	1
2025-07-05 22:23:08.64+00	112	telegraf	1041420528	23.75	7570	1
2025-07-05 22:27:50.605+00	112	telegraf	978202981	23.85	7575	1
2025-07-05 22:36:18.797+00	112	telegraf	1126982881	24.03	7582	1
2025-07-05 22:37:16.021+00	112	telegraf	1041420528	24.02	7583	1
2025-07-05 22:40:57.443+00	112	telegraf	978202981	24.11	7586	1
2025-07-05 22:45:23.543+00	112	telegraf	1126982881	24.28	7588	1
2025-07-05 22:50:53.131+00	112	telegraf	1041420528	24.27	7593	1
2025-07-05 22:52:33.488+00	112	telegraf	978202981	24.36	7594	1
2025-07-05 23:10:03.116+00	112	telegraf	1041420528	24.53	7607	1
2025-07-05 23:13:14.263+00	112	telegraf	978202981	24.61	7608	1
2025-07-05 23:27:12.048+00	112	telegraf	1041420528	24.78	7618	1
2025-07-05 23:27:15.372+00	112	telegraf	1126982881	24.8	7619	1
2025-07-07 09:05:25.088+00	112	telegraf	527134251	25.87	112	1
2025-07-07 09:06:14.837+00	112	telegraf	1041420528	24.56	10	1
2025-07-07 09:07:25.215+00	112	telegraf	978202981	24.61	13	1
2025-07-07 09:19:05.166+00	112	telegraf	1523842139	26.03	181	1
2025-07-07 09:19:02.174+00	112	telegraf	527134251	26.22	182	1
2025-07-07 09:22:03.643+00	112	telegraf	527134251	25.95	187	1
2025-07-07 09:24:34.949+00	112	telegraf	527134251	26.58	191	1
2025-07-07 09:25:09.148+00	112	telegraf	840973111	25.91	193	1
2025-07-07 09:26:09.673+00	112	telegraf	840973111	26.21	199	1
2025-07-07 09:26:39.925+00	112	telegraf	840973111	27.05	202	1
2025-07-07 09:27:10.193+00	112	telegraf	840973111	27.85	206	1
2025-07-07 09:27:36.5+00	112	telegraf	527134251	26.3	208	1
2025-07-07 09:28:40.964+00	112	telegraf	840973111	27.51	214	1
2025-07-07 09:28:37.009+00	112	telegraf	527134251	25.99	216	1
2025-07-07 09:29:41.488+00	112	telegraf	840973111	27.15	222	1
2025-07-07 09:30:11.746+00	112	telegraf	840973111	26.88	223	1
2025-07-07 09:31:12.367+00	112	telegraf	840973111	26.61	233	1
2025-07-07 09:32:12.922+00	112	telegraf	840973111	26.35	235	1
2025-07-07 09:33:42.726+00	112	telegraf	1523842139	25.78	237	1
2025-07-07 09:33:32.31+00	112	telegraf	1126982881	24.79	54	1
2025-07-07 09:34:13.895+00	112	telegraf	840973111	26.09	238	1
2025-07-07 09:35:44.68+00	112	telegraf	840973111	25.76	246	1
2025-07-07 09:37:15.505+00	112	telegraf	840973111	25.48	250	1
2025-07-07 09:38:45.365+00	112	telegraf	1523842139	25.48	263	1
2025-07-07 09:47:16.778+00	112	telegraf	527134251	26.73	1	1
2025-07-07 09:48:47.57+00	112	telegraf	527134251	26.31	5	1
2025-07-07 09:49:48.098+00	112	telegraf	527134251	25.81	10	1
2025-07-07 09:50:48.63+00	112	telegraf	527134251	25.37	11	1
2025-07-07 09:51:49.159+00	112	telegraf	527134251	25.03	13	1
2025-07-07 09:51:53.112+00	112	telegraf	840973111	29.22	14	1
2025-07-07 09:52:49.68+00	112	telegraf	527134251	24.76	17	1
2025-07-07 09:52:53.634+00	112	telegraf	840973111	29.55	18	1
2025-07-07 09:54:20.464+00	112	telegraf	527134251	24.49	20	1
2025-07-07 09:56:21.526+00	112	telegraf	527134251	24.22	25	1
2025-07-07 09:56:25.478+00	112	telegraf	840973111	29.82	27	1
2025-07-07 09:57:25.151+00	112	telegraf	1523842139	29.3	31	1
2025-07-07 09:58:52.849+00	112	telegraf	527134251	23.9	36	1
2025-07-07 09:58:55.937+00	112	telegraf	1523842139	29.65	37	1
2025-07-07 09:59:27.069+00	112	telegraf	840973111	29.44	38	1
2025-07-07 09:59:49.074+00	112	telegraf	840973111	28.09	42	1
2025-07-07 10:03:14.509+00	112	telegraf	1041420528	24.8	91	1
2025-07-07 10:08:57.18+00	112	telegraf	978202981	24.91	108	1
2025-07-07 11:08:18.505+00	112	telegraf	1041420528	25.19	43	1
2025-07-07 11:10:29.372+00	112	telegraf	978202981	25.16	49	1
2025-07-07 11:32:34.276+00	112	telegraf	1126982881	25.39	72	1
2025-07-07 11:39:04.56+00	112	telegraf	1041420528	25.19	80	1
2025-07-07 11:54:00.812+00	112	telegraf	632461688	23.49	119	1
2025-07-07 12:09:50.585+00	112	telegraf	1041420528	25.18	138	1
2025-07-07 12:12:01.499+00	112	telegraf	978202981	25.25	144	1
2025-07-07 12:24:46.889+00	112	telegraf	632461688	23.67	174	1
2025-07-07 12:30:34.529+00	112	telegraf	1126982881	25.52	196	1
2025-07-07 12:30:31.416+00	112	telegraf	1041420528	25.44	198	1
2025-07-07 12:43:23.976+00	112	telegraf	3839865	23.81	223	1
2025-07-07 12:54:02.189+00	112	telegraf	632461688	23.92	239	1
2025-07-07 12:55:20.583+00	112	telegraf	840973111	28.66	264	1
2025-07-07 12:58:22.169+00	112	telegraf	840973111	28.38	270	1
2025-07-07 13:00:23.225+00	112	telegraf	840973111	28.12	272	1
2025-07-07 12:56:58.801+00	112	telegraf	1523842139	28.35	277	1
2025-07-07 12:59:30.13+00	112	telegraf	1523842139	28.05	279	1
2025-07-07 13:01:17.435+00	112	telegraf	1041420528	25.6	285	1
2025-07-07 13:03:59.336+00	112	telegraf	527134251	27.13	349	1
2025-07-07 13:04:25.344+00	112	telegraf	840973111	27.61	354	1
2025-07-07 13:06:00.377+00	112	telegraf	527134251	26.81	366	1
2025-07-07 13:06:26.393+00	112	telegraf	840973111	27.36	367	1
2025-07-07 13:06:33.795+00	112	telegraf	1523842139	27.24	369	1
2025-07-07 13:09:01.952+00	112	telegraf	527134251	26.55	386	1
2025-07-07 13:10:07.872+00	112	telegraf	3839865	24.06	389	1
2025-07-07 13:11:29.006+00	112	telegraf	840973111	26.82	393	1
2025-07-07 13:11:33.26+00	112	telegraf	527134251	26.3	394	1
2025-07-07 13:12:53.674+00	112	telegraf	333419537	25.14	395	1
2025-07-07 13:13:33.627+00	112	telegraf	978202981	25.55	398	1
2025-07-07 13:14:30.58+00	112	telegraf	840973111	26.57	410	1
2025-07-07 13:15:35.36+00	112	telegraf	527134251	26.05	412	1
2025-07-07 13:17:09.31+00	112	telegraf	1523842139	26.35	425	1
2025-07-07 13:20:37.972+00	112	telegraf	527134251	25.79	454	1
2025-07-07 13:23:12.457+00	112	telegraf	1523842139	26.09	494	1
2025-07-07 13:31:18.895+00	112	telegraf	3839865	24.33	510	1
2025-07-07 13:32:06.566+00	112	telegraf	1126982881	25.5	514	1
2025-07-07 13:36:21.526+00	112	telegraf	3839865	24.58	531	1
2025-07-07 13:38:08.003+00	112	telegraf	305822513	24.55	536	1
2025-07-07 13:34:41.187+00	112	telegraf	840973111	25.54	537	1
2025-07-07 13:28:45.363+00	112	telegraf	1523842139	25.84	550	1
2025-07-07 13:27:11.437+00	112	telegraf	527134251	25.53	551	1
2025-07-07 13:40:23.62+00	112	telegraf	3839865	24.84	572	1
2025-07-07 13:37:50.124+00	112	telegraf	1523842139	25.57	603	1
2025-07-07 13:41:18.906+00	112	telegraf	527134251	26.09	631	1
2025-07-07 13:42:15.13+00	112	telegraf	840973111	26.2	637	1
2025-07-07 13:44:19.679+00	112	telegraf	978202981	25.59	653	1
2025-07-07 13:43:09.452+00	112	telegraf	333419537	24.87	664	1
2025-07-07 13:48:30.605+00	112	telegraf	632461688	24.73	676	1
2025-07-07 13:48:31.189+00	112	telegraf	677224097	24.78	690	1
2025-07-07 13:50:14.303+00	112	telegraf	305822513	24.8	696	1
2025-07-07 13:49:26.175+00	112	telegraf	1523842139	26.07	705	1
2025-07-07 13:56:04.593+00	112	telegraf	632461688	24.98	742	1
2025-07-07 13:58:41.294+00	112	telegraf	791308911	24.74	773	1
2025-07-07 13:59:01.16+00	112	telegraf	1523842139	25.79	785	1
2025-07-07 14:02:49.494+00	112	telegraf	1041420528	25.68	804	1
2025-07-07 14:02:52.619+00	112	telegraf	1126982881	25.61	805	1
2025-07-07 14:11:04.459+00	112	telegraf	527134251	26.54	853	1
2025-07-07 14:11:07.502+00	112	telegraf	1523842139	26.48	854	1
2025-07-07 14:12:25.909+00	112	telegraf	305822513	25.08	863	1
2025-07-07 14:11:34.719+00	112	telegraf	527134251	26.79	866	1
2025-07-07 14:12:00.7+00	112	telegraf	840973111	26.63	869	1
2025-07-07 14:12:08.021+00	112	telegraf	1523842139	26.78	871	1
2025-07-07 14:08:25.778+00	112	telegraf	517905260	23.55	891	1
2025-07-07 14:05:51.189+00	112	telegraf	2045592530	24	896	1
2025-07-07 14:13:55.473+00	112	telegraf	333419537	24.8	924	1
2025-07-07 14:15:05.774+00	112	telegraf	978202981	25.78	936	1
2025-07-07 14:19:04.383+00	112	telegraf	840973111	26.38	976	1
2025-07-07 14:19:17.272+00	112	telegraf	677224097	24.7	984	1
2025-07-07 14:28:18.621+00	112	telegraf	3839865	25.32	1034	1
2025-07-07 14:29:27.37+00	112	telegraf	791308911	24.65	1039	1
2025-07-07 14:33:35.585+00	112	telegraf	1041420528	25.77	1055	1
2025-07-07 14:33:38.679+00	112	telegraf	1126982881	25.72	1058	1
2025-07-07 14:43:12.037+00	112	telegraf	305822513	25.15	1124	1
2025-07-07 14:45:51.846+00	112	telegraf	978202981	25.85	1142	1
2025-07-07 14:51:33.554+00	112	telegraf	632461688	25.08	1192	1
2025-07-07 14:52:00.977+00	112	telegraf	3839865	25.07	1194	1
2025-07-07 14:53:34.606+00	112	telegraf	632461688	24.75	1197	1
2025-07-08 08:01:52.116+00	112	telegraf	978202981	23.64	43	1
2025-07-08 08:01:52.282+00	112	telegraf	527134251	23.3	44	1
2025-07-08 08:02:45.696+00	112	telegraf	1126982881	23.61	48	1
2025-07-08 08:04:43.56+00	112	telegraf	1041420528	23.91	58	1
2025-07-08 08:04:32.622+00	112	telegraf	677224097	24.15	59	1
2025-07-08 08:05:27.412+00	112	telegraf	1523842139	23.51	60	1
2025-07-08 08:05:43.293+00	112	telegraf	333419537	24.14	61	1
2025-07-08 08:05:38.04+00	112	telegraf	791308911	23.85	62	1
2025-07-08 08:09:56.319+00	112	telegraf	978202981	23.89	76	1
2025-07-08 08:09:52.288+00	112	telegraf	840973111	23.46	77	1
2025-07-08 08:27:55.632+00	112	telegraf	1041420528	24.66	134	1
2025-07-08 08:28:25.893+00	112	telegraf	1041420528	25.22	137	1
2025-07-08 08:29:26.451+00	112	telegraf	1041420528	25.48	148	1
2025-07-08 08:29:25.557+00	112	telegraf	333419537	24.91	150	1
2025-07-08 08:30:15.989+00	112	telegraf	677224097	24.93	152	1
2025-07-08 08:30:37.053+00	112	telegraf	978202981	24.39	153	1
2025-07-08 08:30:57.244+00	112	telegraf	1041420528	25.18	157	1
2025-07-08 08:32:28.028+00	112	telegraf	1041420528	24.84	163	1
2025-07-08 08:32:52.237+00	112	telegraf	791308911	24.6	166	1
2025-07-08 08:33:42.121+00	112	telegraf	1523842139	23.76	169	1
2025-07-08 08:38:00.902+00	112	telegraf	1041420528	24.3	171	1
2025-07-08 08:40:51.488+00	112	telegraf	677224097	25.19	185	1
2025-07-08 08:41:31.829+00	112	telegraf	333419537	25.19	191	1
2025-07-08 08:42:13.077+00	112	telegraf	978202981	24.13	192	1
2025-07-08 08:42:33.259+00	112	telegraf	1041420528	24.02	195	1
2025-07-08 08:42:36.448+00	112	telegraf	1126982881	23.77	196	1
2025-07-08 08:44:44.571+00	112	telegraf	527134251	23.81	202	1
2025-07-08 08:44:58.517+00	112	telegraf	791308911	24.85	203	1
2025-07-08 08:48:42.622+00	112	telegraf	840973111	23.96	208	1
2025-07-08 08:50:37.704+00	112	telegraf	1041420528	23.74	222	1
2025-07-08 08:50:56.865+00	112	telegraf	677224097	25.45	224	1
2025-07-08 08:48:21.941+00	112	telegraf	3839865	22.28	227	1
2025-07-08 08:52:37.703+00	112	telegraf	333419537	25.44	230	1
2025-07-08 08:57:04.951+00	112	telegraf	791308911	25.1	237	1
2025-07-08 08:57:54.885+00	112	telegraf	1523842139	24.01	238	1
2025-07-08 09:00:46.046+00	112	telegraf	1126982881	23.52	245	1
2025-07-08 09:03:14.157+00	112	telegraf	1041420528	23.49	259	1
2025-07-08 09:04:24.767+00	112	telegraf	978202981	23.63	262	1
2025-07-08 09:04:24.99+00	112	telegraf	527134251	24.06	263	1
2025-07-08 09:05:04.238+00	112	telegraf	677224097	25.71	264	1
2025-07-08 09:05:14.323+00	112	telegraf	333419537	25.72	265	1
2025-07-08 09:07:52.586+00	112	telegraf	840973111	24.21	268	1
2025-07-08 09:12:38.184+00	112	telegraf	677224097	25.96	282	1
2025-07-08 09:13:18.537+00	112	telegraf	333419537	25.98	285	1
2025-07-08 09:13:43.632+00	112	telegraf	791308911	25.6	286	1
2025-07-08 09:18:41.335+00	112	telegraf	677224097	26.22	300	1
2025-07-08 09:19:05.926+00	112	telegraf	1523842139	24.26	302	1
2025-07-09 09:28:28.604+00	112	telegraf	1041420528	24.46	13	1
2025-07-09 09:34:34.383+00	112	telegraf	1126982881	24.43	18	1
2025-07-09 09:35:18.685+00	112	telegraf	207892874	28.96	27	1
2025-07-09 09:36:19.215+00	112	telegraf	207892874	29.3	29	1
2025-07-09 09:37:12.91+00	112	telegraf	978202981	24.52	30	1
2025-07-09 09:43:36.353+00	112	telegraf	1041420528	24.71	34	1
2025-07-09 09:48:41.733+00	112	telegraf	1126982881	24.69	42	1
2025-07-09 09:50:50.009+00	112	telegraf	978202981	24.77	50	1
2025-07-09 10:06:48.474+00	112	telegraf	1041420528	24.98	63	1
2025-07-09 10:08:52.284+00	112	telegraf	1126982881	24.94	66	1
2025-07-09 10:27:32.016+00	112	telegraf	1126982881	25.21	120	1
\.


--
-- Data for Name: _hyper_2_17_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_2_17_chunk ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
2025-07-10 07:25:35.289+00	114	telegraf	978202981	60.23	18	1
2025-07-10 07:26:35.816+00	114	telegraf	978202981	68.48	32	1
2025-07-10 07:27:06.076+00	114	telegraf	978202981	56.92	36	1
2025-07-10 07:27:36.342+00	114	telegraf	978202981	54.86	37	1
2025-07-10 07:28:06.606+00	114	telegraf	978202981	54.04	47	1
2025-07-10 07:28:29.332+00	114	telegraf	1126982881	52.88	48	1
2025-07-10 07:29:07.137+00	114	telegraf	978202981	53.36	52	1
2025-07-10 07:32:28.912+00	114	telegraf	1041420528	50.47	63	1
2025-07-10 07:34:02.218+00	114	telegraf	1126982881	53.38	65	1
2025-07-10 07:38:01.792+00	114	telegraf	1041420528	49.97	68	1
2025-07-10 07:45:07.99+00	114	telegraf	1126982881	53.88	73	1
2025-07-10 07:50:08.094+00	114	telegraf	1041420528	49.44	83	1
2025-07-10 07:59:53.166+00	114	telegraf	978202981	53.15	87	1
2025-07-10 08:08:27.649+00	114	telegraf	978202981	52.65	105	1
2025-07-10 08:15:54.094+00	114	telegraf	1126982881	54.13	111	1
2025-07-10 08:20:23.925+00	114	telegraf	1041420528	48.92	112	1
2025-07-10 08:37:02.589+00	114	telegraf	1041420528	49.66	129	1
2025-07-10 08:39:13.762+00	114	telegraf	978202981	52.89	142	1
2025-07-10 08:39:33.909+00	114	telegraf	1041420528	50.17	143	1
2025-07-10 08:43:36.001+00	114	telegraf	1041420528	50.71	149	1
2025-07-10 08:46:40.126+00	114	telegraf	1126982881	54.59	150	1
2025-07-10 08:48:38.641+00	114	telegraf	1041420528	51.22	153	1
2025-07-10 08:49:19.006+00	114	telegraf	978202981	53.4	154	1
2025-07-10 09:00:14.672+00	114	telegraf	1041420528	51.75	160	1
2025-07-10 09:12:23.497+00	114	telegraf	1126982881	55.1	172	1
2025-07-10 09:17:03.504+00	114	telegraf	978202981	53.92	174	1
2025-07-10 09:17:53.862+00	114	telegraf	1041420528	52.27	177	1
2025-07-10 09:43:09.525+00	114	telegraf	1126982881	55.48	191	1
2025-07-10 09:47:49.564+00	114	telegraf	978202981	54.24	196	1
2025-07-10 09:48:39.901+00	114	telegraf	1041420528	52.72	198	1
2025-07-10 10:13:55.589+00	114	telegraf	1126982881	55.69	214	1
2025-07-10 10:18:35.633+00	114	telegraf	978202981	54.42	217	1
2025-07-10 10:19:25.931+00	114	telegraf	1041420528	53	218	1
2025-07-10 11:39:40.267+00	114	telegraf	1126982881	55.01	269	1
2025-07-10 12:04:50.899+00	114	telegraf	1041420528	52.14	285	1
2025-07-10 12:05:01.233+00	114	telegraf	978202981	53.49	286	1
2025-07-10 12:10:26.327+00	114	telegraf	1126982881	55.19	292	1
2025-07-10 12:35:36.931+00	114	telegraf	1041420528	52.14	305	1
2025-07-10 12:35:47.309+00	114	telegraf	978202981	53.51	306	1
2025-07-10 12:41:12.364+00	114	telegraf	1126982881	55.23	311	1
2025-07-10 13:06:22.986+00	114	telegraf	1041420528	51.95	325	1
2025-07-10 13:06:33.372+00	114	telegraf	978202981	53.37	326	1
2025-07-10 13:11:58.392+00	114	telegraf	1126982881	55.12	331	1
2025-07-10 13:37:09.025+00	114	telegraf	1041420528	51.98	343	1
2025-07-10 13:37:19.411+00	114	telegraf	978202981	53.33	345	1
2025-07-10 13:42:44.457+00	114	telegraf	1126982881	55.09	351	1
2025-07-10 14:07:55.061+00	114	telegraf	1041420528	51.95	363	1
2025-07-10 14:08:05.495+00	114	telegraf	978202981	53.31	364	1
2025-07-10 14:13:30.494+00	114	telegraf	1126982881	55.07	370	1
2025-07-10 14:38:41.081+00	114	telegraf	1041420528	52.12	381	1
2025-07-10 14:44:16.518+00	114	telegraf	1126982881	55.23	388	1
2025-07-10 15:09:27.134+00	114	telegraf	1041420528	52.44	411	1
2025-07-10 15:09:37.61+00	114	telegraf	978202981	53.79	412	1
2025-07-10 15:15:02.597+00	114	telegraf	1126982881	55.51	417	1
2025-07-10 15:40:13.2+00	114	telegraf	1041420528	52.55	430	1
2025-07-10 15:40:23.684+00	114	telegraf	978202981	53.92	431	1
2025-07-10 15:45:48.626+00	114	telegraf	1126982881	55.61	435	1
2025-07-10 16:05:06.622+00	114	telegraf	978202981	53.38	442	1
2025-07-10 16:05:56.631+00	114	telegraf	1041420528	51.98	444	1
2025-07-10 16:07:37.927+00	114	telegraf	978202981	52.79	446	1
2025-07-10 16:08:00.201+00	114	telegraf	1126982881	55.1	447	1
2025-07-10 16:36:42.682+00	114	telegraf	1041420528	52.12	471	1
2025-07-10 16:38:46.232+00	114	telegraf	1126982881	55.23	472	1
2025-07-10 16:40:55.322+00	114	telegraf	978202981	53.53	476	1
2025-07-10 17:07:28.713+00	114	telegraf	1041420528	52.24	491	1
2025-07-10 17:09:32.257+00	114	telegraf	1126982881	55.33	494	1
2025-07-10 17:11:41.388+00	114	telegraf	978202981	53.66	496	1
2025-07-10 17:38:14.745+00	114	telegraf	1041420528	52.48	509	1
2025-07-10 17:40:18.296+00	114	telegraf	1126982881	55.56	512	1
2025-07-10 17:42:27.463+00	114	telegraf	978202981	53.9	514	1
2025-07-11 06:52:19.336+00	114	telegraf	978202981	58.29	4	1
2025-07-11 07:18:22.385+00	114	telegraf	1041420528	57.4	21	1
2025-07-11 07:23:05.482+00	114	telegraf	978202981	58.5	26	1
2025-07-11 07:29:00.366+00	114	telegraf	1126982881	59.99	30	1
2025-07-11 07:49:08.398+00	114	telegraf	1041420528	56.94	50	1
2025-07-11 08:58:55.464+00	114	telegraf	978202981	57.8	99	1
2025-07-11 09:01:18.5+00	114	telegraf	1126982881	59.48	100	1
2025-07-11 09:20:06.555+00	114	telegraf	978202981	58.32	115	1
2025-07-12 06:03:24.96+00	114	telegraf	978202981	55.31	20	1
2025-07-12 06:16:23.213+00	114	telegraf	1126982881	57.32	26	1
2025-07-12 06:19:52.747+00	114	telegraf	1041420528	55.09	30	1
2025-07-12 06:34:11.014+00	114	telegraf	978202981	55.81	42	1
2025-07-12 06:50:38.808+00	114	telegraf	1041420528	54.99	52	1
2025-07-12 07:04:57.053+00	114	telegraf	978202981	56.05	61	1
2025-07-12 07:17:55.29+00	114	telegraf	1126982881	57.59	66	1
2025-07-12 07:35:43.081+00	114	telegraf	978202981	56.03	79	1
2025-07-12 08:06:29.126+00	114	telegraf	978202981	55.87	98	1
2025-07-12 08:19:27.424+00	114	telegraf	1126982881	57.35	103	1
2025-07-12 08:37:15.144+00	114	telegraf	978202981	55.55	116	1
2025-07-12 08:50:13.481+00	114	telegraf	1126982881	57.06	123	1
2025-07-12 08:53:42.969+00	114	telegraf	1041420528	54.37	125	1
2025-07-12 09:08:01.231+00	114	telegraf	978202981	55.56	134	1
2025-07-12 09:20:59.532+00	114	telegraf	1126982881	57.29	143	1
2025-07-12 09:24:29.033+00	114	telegraf	1041420528	54.73	145	1
2025-07-12 10:09:33.345+00	114	telegraf	978202981	56.56	176	1
2025-07-12 10:22:31.627+00	114	telegraf	1126982881	57.86	183	1
2025-07-12 14:08:59.77+00	114	telegraf	1126982881	59.01	325	1
2025-07-12 14:10:58.382+00	114	telegraf	1041420528	56.05	328	1
2025-07-12 14:13:40.666+00	114	telegraf	978202981	56.88	330	1
2025-07-12 14:35:41.26+00	114	telegraf	1041420528	55.55	343	1
2025-07-12 14:39:45.837+00	114	telegraf	1126982881	58.54	350	1
2025-07-12 14:44:26.693+00	114	telegraf	978202981	56.56	353	1
2025-07-12 15:06:27.308+00	114	telegraf	1041420528	55.15	364	1
2025-07-12 15:07:30.283+00	114	telegraf	1126982881	58.02	365	1
2025-07-12 15:13:11.676+00	114	telegraf	978202981	56.05	373	1
2025-07-12 16:45:29.819+00	114	telegraf	978202981	56.15	427	1
2025-07-12 17:05:31.88+00	114	telegraf	1126982881	57.86	437	1
2025-07-12 17:16:15.881+00	114	telegraf	978202981	55.93	446	1
2025-07-12 17:34:44.582+00	114	telegraf	1041420528	54.54	457	1
2025-07-12 17:47:01.912+00	114	telegraf	978202981	55.57	466	1
2025-07-12 18:05:30.648+00	114	telegraf	1041420528	54.4	477	1
2025-07-12 18:17:47.96+00	114	telegraf	978202981	55.47	486	1
2025-07-12 18:34:15.644+00	114	telegraf	1041420528	54.92	496	1
2025-07-12 18:37:50.045+00	114	telegraf	1126982881	57.7	498	1
2025-07-12 18:54:06.903+00	114	telegraf	978202981	56.49	509	1
2025-07-12 19:10:15.313+00	114	telegraf	978202981	55.99	519	1
2025-07-12 20:02:31.649+00	114	telegraf	1041420528	55.21	551	1
2025-07-12 20:04:13.444+00	114	telegraf	978202981	56.53	552	1
2025-07-12 20:05:35.774+00	114	telegraf	1126982881	58.06	553	1
2025-07-12 20:33:17.684+00	114	telegraf	1041420528	55.44	569	1
2025-07-12 20:34:59.514+00	114	telegraf	978202981	56.7	570	1
2025-07-12 20:36:21.799+00	114	telegraf	1126982881	58.27	571	1
2025-07-12 21:04:03.721+00	114	telegraf	1041420528	55.27	587	1
2025-07-12 21:05:45.539+00	114	telegraf	978202981	56.49	588	1
2025-07-12 21:34:49.767+00	114	telegraf	1041420528	54.95	607	1
2025-07-12 21:36:31.583+00	114	telegraf	978202981	56.17	608	1
2025-07-12 22:05:35.805+00	114	telegraf	1041420528	54.76	626	1
2025-07-12 22:08:39.982+00	114	telegraf	1126982881	57.51	628	1
2025-07-13 06:15:01.965+00	114	telegraf	978202981	59.75	927	1
2025-07-13 06:15:21.131+00	114	telegraf	1041420528	58.76	928	1
2025-07-13 06:45:48.044+00	114	telegraf	978202981	59.65	948	1
2025-07-13 06:46:07.16+00	114	telegraf	1041420528	58.67	949	1
2025-07-13 06:50:42.302+00	114	telegraf	1126982881	61.17	952	1
2025-07-13 07:16:34.08+00	114	telegraf	978202981	59.4	967	1
2025-07-13 07:30:11.179+00	114	telegraf	978202981	58.9	977	1
2025-07-13 10:04:01.45+00	114	telegraf	978202981	59.46	1070	1
2025-07-13 10:06:51.853+00	114	telegraf	1041420528	58.41	1072	1
2025-07-13 10:22:32.839+00	114	telegraf	1126982881	61.22	1085	1
2025-07-13 10:34:47.48+00	114	telegraf	978202981	59.05	1092	1
2025-07-13 10:37:37.882+00	114	telegraf	1041420528	57.89	1093	1
2025-07-13 10:39:41.798+00	114	telegraf	1126982881	60.72	1098	1
2025-07-13 11:05:33.53+00	114	telegraf	978202981	58.69	1112	1
2025-07-13 11:08:23.931+00	114	telegraf	1041420528	57.44	1113	1
2025-07-13 11:10:27.855+00	114	telegraf	1126982881	60.32	1120	1
2025-07-13 11:39:09.992+00	114	telegraf	1041420528	56.95	1132	1
2025-07-13 11:40:43.643+00	114	telegraf	1126982881	59.82	1138	1
2025-07-13 12:11:29.679+00	114	telegraf	1126982881	59.54	1157	1
2025-07-13 13:09:27.15+00	114	telegraf	1041420528	55.83	1193	1
2025-07-13 13:12:01.239+00	114	telegraf	1126982881	58.75	1197	1
2025-07-13 13:22:14.839+00	114	telegraf	978202981	56.45	1204	1
2025-07-13 13:30:40.95+00	114	telegraf	1126982881	58.24	1209	1
2025-07-13 14:23:46.932+00	114	telegraf	978202981	56.74	1243	1
2025-07-13 14:32:13.048+00	114	telegraf	1126982881	58.65	1248	1
2025-07-13 14:54:32.975+00	114	telegraf	978202981	56.4	1262	1
2025-07-13 14:55:22.404+00	114	telegraf	1041420528	55.29	1263	1
2025-07-14 07:53:24.547+00	114	telegraf	978202981	60.64	1902	1
2025-07-14 07:54:13.771+00	114	telegraf	1041420528	59.67	1903	1
2025-07-14 08:14:27.226+00	114	telegraf	1126982881	62.13	1916	1
2025-07-15 08:40:11.605+00	114	telegraf	1126982881	61.78	2809	1
2025-07-15 08:41:20.964+00	114	telegraf	978202981	59.93	2811	1
2025-07-15 08:42:09.706+00	114	telegraf	1041420528	58.96	2812	1
2025-07-15 09:41:43.693+00	114	telegraf	1126982881	61.67	2849	1
2025-07-15 09:42:53.039+00	114	telegraf	978202981	59.91	2850	1
2025-07-16 08:35:37.325+00	114	telegraf	1041420528	52.86	3800	1
2025-07-16 08:39:42.621+00	114	telegraf	1126982881	55.66	3804	1
2025-07-16 12:40:14.875+00	114	telegraf	1041420528	54.81	3950	1
2025-07-16 12:40:26.747+00	114	telegraf	978202981	55.9	3951	1
2025-07-16 13:11:00.918+00	114	telegraf	1041420528	54.74	3968	1
2025-07-16 13:11:12.8+00	114	telegraf	978202981	55.83	3969	1
2025-07-16 13:15:06.368+00	114	telegraf	1126982881	57.8	3970	1
2025-07-16 13:41:46.948+00	114	telegraf	1041420528	54.89	3986	1
2025-07-16 13:41:58.843+00	114	telegraf	978202981	56.03	3987	1
2025-07-16 13:45:52.404+00	114	telegraf	1126982881	58	3988	1
2025-07-16 14:12:33.012+00	114	telegraf	1041420528	54.94	4004	1
2025-07-16 14:16:38.48+00	114	telegraf	1126982881	58.03	4006	1
2025-07-16 14:43:19.046+00	114	telegraf	1041420528	54.84	4024	1
2025-07-16 14:43:30.956+00	114	telegraf	978202981	55.91	4025	1
2025-07-16 14:47:24.536+00	114	telegraf	1126982881	57.99	4027	1
2025-07-16 15:14:05.108+00	114	telegraf	1041420528	54.84	4043	1
2025-07-16 15:14:17.024+00	114	telegraf	978202981	55.9	4044	1
2025-07-16 15:18:10.63+00	114	telegraf	1126982881	57.94	4046	1
2025-07-16 15:44:51.127+00	114	telegraf	1041420528	54.74	4062	1
2025-07-16 15:45:03.073+00	114	telegraf	978202981	55.77	4063	1
2025-07-16 15:48:56.693+00	114	telegraf	1126982881	57.88	4066	1
2025-07-16 16:15:37.172+00	114	telegraf	1041420528	54.65	4080	1
2025-07-16 16:15:49.127+00	114	telegraf	978202981	55.71	4081	1
2025-07-16 16:46:23.204+00	114	telegraf	1041420528	54.92	4098	1
2025-07-16 17:47:55.303+00	114	telegraf	1041420528	55.22	4138	1
2025-07-16 17:52:00.878+00	114	telegraf	1126982881	58.31	4142	1
2025-07-16 18:03:15.221+00	114	telegraf	978202981	55.76	4149	1
2025-07-16 18:09:09.823+00	114	telegraf	1126982881	57.81	4157	1
2025-07-16 18:39:55.915+00	114	telegraf	1126982881	57.52	4178	1
2025-07-16 18:45:07.057+00	114	telegraf	978202981	55.84	4180	1
2025-07-16 18:51:58.72+00	114	telegraf	1041420528	54.73	4184	1
2025-07-16 19:10:41.981+00	114	telegraf	1126982881	57.82	4197	1
2025-07-16 19:22:44.785+00	114	telegraf	1041420528	54.63	4205	1
2025-07-16 19:39:57.246+00	114	telegraf	1126982881	57.27	4217	1
2025-07-16 19:40:05.762+00	114	telegraf	978202981	55.2	4219	1
2025-07-16 19:40:24.011+00	114	telegraf	1041420528	54.03	4220	1
2025-07-16 19:42:06.821+00	114	telegraf	978202981	54.7	4221	1
2025-07-16 19:42:58.824+00	114	telegraf	1126982881	56.74	4222	1
2025-07-16 19:42:55.322+00	114	telegraf	1041420528	53.53	4223	1
2025-07-16 19:46:08.927+00	114	telegraf	978202981	54.16	4224	1
2025-07-16 19:48:01.448+00	114	telegraf	1126982881	56.23	4227	1
2025-07-16 20:01:35.056+00	114	telegraf	1041420528	52.47	4235	1
2025-07-16 20:01:38.565+00	114	telegraf	1126982881	55.73	4236	1
2025-07-16 20:03:48.133+00	114	telegraf	978202981	53.65	4237	1
2025-07-16 20:25:59.711+00	114	telegraf	978202981	53.14	4250	1
2025-07-16 20:27:48.726+00	114	telegraf	1041420528	51.91	4254	1
2025-07-16 21:31:03.664+00	114	telegraf	978202981	55.26	4299	1
\.


--
-- Data for Name: _hyper_2_24_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_2_24_chunk ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
2025-07-17 05:37:17.344+00	114	telegraf	978202981	57.84	4595	1
2025-07-17 05:37:35.321+00	114	telegraf	1041420528	56.71	4596	1
2025-07-17 06:00:21.103+00	114	telegraf	1126982881	59.68	4612	1
2025-07-17 06:08:03.429+00	114	telegraf	978202981	57.72	4616	1
2025-07-17 06:08:21.352+00	114	telegraf	1041420528	56.58	4618	1
2025-07-17 06:25:34.24+00	114	telegraf	1126982881	59.18	4627	1
2025-07-17 06:32:33.959+00	114	telegraf	1041420528	56.06	4634	1
2025-07-17 06:33:46.873+00	114	telegraf	978202981	57.21	4635	1
2025-07-17 06:49:16.582+00	114	telegraf	1126982881	58.68	4645	1
2025-07-17 07:03:02.139+00	114	telegraf	978202981	56.71	4655	1
2025-07-17 07:20:02.638+00	114	telegraf	1126982881	58.46	4664	1
2025-07-17 07:26:32.081+00	114	telegraf	1041420528	55.53	4668	1
2025-07-17 07:50:48.728+00	114	telegraf	1126982881	58.23	4685	1
2025-07-17 07:57:18.13+00	114	telegraf	1041420528	55.2	4687	1
2025-07-17 08:04:34.235+00	114	telegraf	978202981	56.39	4693	1
2025-07-17 08:21:34.767+00	114	telegraf	1126982881	57.94	4703	1
2025-07-17 08:28:04.155+00	114	telegraf	1041420528	54.91	4705	1
2025-07-17 08:35:20.286+00	114	telegraf	978202981	56.09	4711	1
2025-07-17 08:52:20.809+00	114	telegraf	1126982881	57.71	4721	1
2025-07-17 08:58:50.231+00	114	telegraf	1041420528	54.64	4724	1
2025-07-17 09:06:06.327+00	114	telegraf	978202981	55.85	4729	1
2025-07-17 09:23:06.852+00	114	telegraf	1126982881	57.46	4739	1
2025-07-17 09:29:36.265+00	114	telegraf	1041420528	54.4	4743	1
2025-07-17 09:36:52.358+00	114	telegraf	978202981	55.6	4748	1
2025-07-17 10:00:22.292+00	114	telegraf	1041420528	54.28	4761	1
2025-07-17 10:07:38.384+00	114	telegraf	978202981	55.49	4766	1
2025-07-17 10:24:38.954+00	114	telegraf	1126982881	57.39	4775	1
2025-07-17 10:31:08.325+00	114	telegraf	1041420528	54.48	4779	1
2025-07-17 10:42:44.371+00	114	telegraf	1041420528	55	4787	1
2025-07-17 10:43:48.966+00	114	telegraf	1126982881	57.91	4789	1
2025-07-17 11:13:30.421+00	114	telegraf	1041420528	54.99	4807	1
2025-07-17 11:14:13.119+00	114	telegraf	978202981	56.27	4808	1
2025-07-17 11:14:35.02+00	114	telegraf	1126982881	57.93	4809	1
2025-07-17 12:45:48.542+00	114	telegraf	1041420528	55.53	4866	1
2025-07-17 12:46:31.272+00	114	telegraf	978202981	56.67	4868	1
2025-07-17 13:15:38.195+00	114	telegraf	1126982881	58.44	4884	1
2025-07-17 13:17:17.308+00	114	telegraf	978202981	56.63	4887	1
2025-07-17 13:46:24.283+00	114	telegraf	1126982881	57.98	4904	1
2025-07-17 13:46:50.39+00	114	telegraf	1041420528	54.89	4906	1
2025-07-17 13:48:03.355+00	114	telegraf	978202981	56.15	4907	1
2025-07-17 15:36:48.946+00	114	telegraf	840973111	62.99	124	1
2025-07-17 15:36:51.278+00	114	telegraf	527134251	60.44	125	1
2025-07-17 15:38:22.065+00	114	telegraf	527134251	59.88	139	1
2025-07-17 15:38:49.994+00	114	telegraf	840973111	62.44	143	1
2025-07-17 15:43:33.594+00	114	telegraf	978202981	56.69	4979	1
2025-07-17 15:44:21.783+00	114	telegraf	1041420528	55.51	4981	1
2025-07-17 15:47:57.727+00	114	telegraf	1126982881	58.72	4983	1
2025-07-17 15:48:27.324+00	114	telegraf	527134251	59.36	158	1
2025-07-17 15:48:34.264+00	114	telegraf	1523842139	62.07	159	1
2025-07-17 16:09:36.04+00	114	telegraf	840973111	62.22	190	1
2025-07-17 16:14:19.669+00	114	telegraf	978202981	56.39	4999	1
2025-07-17 16:17:43.255+00	114	telegraf	1126982881	58.22	5002	1
2025-07-17 16:19:20.434+00	114	telegraf	1523842139	62.17	208	1
2025-07-17 16:19:13.4+00	114	telegraf	527134251	59.4	209	1
2025-07-17 16:45:05.698+00	114	telegraf	978202981	56.04	5017	1
2025-07-17 17:15:51.784+00	114	telegraf	978202981	56.27	5035	1
2025-07-17 17:16:39.939+00	114	telegraf	1041420528	55.02	5037	1
2025-07-17 17:41:35.196+00	114	telegraf	978202981	55.77	5050	1
2025-07-17 17:44:24.416+00	114	telegraf	1041420528	54.49	5054	1
2025-07-17 17:54:11.774+00	114	telegraf	978202981	55.27	5059	1
2025-07-17 18:30:52.824+00	114	telegraf	1126982881	56.92	5087	1
2025-07-17 18:55:43.848+00	114	telegraf	978202981	55.32	5101	1
2025-07-17 19:00:03.914+00	114	telegraf	1041420528	54.06	5105	1
2025-07-17 19:01:38.874+00	114	telegraf	1126982881	57.13	5107	1
2025-07-17 19:26:29.885+00	114	telegraf	978202981	55.19	5119	1
2025-07-17 19:30:49.95+00	114	telegraf	1041420528	54	5125	1
2025-07-17 19:32:24.942+00	114	telegraf	1126982881	56.99	5126	1
2025-07-17 19:57:15.93+00	114	telegraf	978202981	54.88	5139	1
2025-07-17 20:01:35.996+00	114	telegraf	1041420528	53.56	5144	1
2025-07-17 20:02:40.715+00	114	telegraf	1126982881	56.44	5145	1
2025-07-17 20:03:49.349+00	114	telegraf	978202981	54.29	5146	1
2025-07-17 20:04:07.31+00	114	telegraf	1041420528	53.06	5147	1
2025-07-17 20:07:43.341+00	114	telegraf	1126982881	55.93	5150	1
2025-07-17 20:10:53.038+00	114	telegraf	978202981	53.78	5154	1
2025-07-17 20:11:41.256+00	114	telegraf	1041420528	52.56	5155	1
2025-07-17 20:22:51.237+00	114	telegraf	1126982881	55.39	5166	1
2025-07-17 20:23:17.321+00	114	telegraf	1041420528	52.05	5167	1
2025-07-17 20:40:08.279+00	114	telegraf	978202981	52.71	5180	1
2025-07-17 20:44:28.392+00	114	telegraf	1041420528	51.53	5182	1
2025-07-17 20:44:32.526+00	114	telegraf	1126982881	54.89	5183	1
2025-07-17 21:10:42.098+00	114	telegraf	1041420528	52.04	5203	1
2025-07-17 21:10:54.336+00	114	telegraf	978202981	53.14	5204	1
2025-07-17 21:15:18.563+00	114	telegraf	1126982881	55.38	5206	1
2025-07-17 21:19:28.799+00	114	telegraf	978202981	53.66	5213	1
2025-07-17 21:29:03.82+00	114	telegraf	978202981	53.16	5217	1
2025-07-17 21:41:28.16+00	114	telegraf	1041420528	52.42	5224	1
2025-07-17 21:43:41.446+00	114	telegraf	978202981	53.66	5225	1
2025-07-17 21:46:04.618+00	114	telegraf	1126982881	55.61	5226	1
2025-07-18 06:55:17.004+00	114	telegraf	1041420528	54.85	5562	1
2025-07-18 06:57:30.313+00	114	telegraf	978202981	55.95	5563	1
2025-07-18 07:26:03.044+00	114	telegraf	1041420528	54.38	5584	1
2025-07-18 07:28:16.341+00	114	telegraf	978202981	55.63	5585	1
2025-07-18 07:30:39.633+00	114	telegraf	1126982881	57.34	5589	1
2025-07-18 07:54:48.025+00	114	telegraf	1041420528	53.88	5612	1
2025-07-18 08:01:25.664+00	114	telegraf	1126982881	56.84	5618	1
2025-07-18 08:25:34.096+00	114	telegraf	1041420528	53.47	5632	1
2025-07-18 08:32:11.704+00	114	telegraf	1126982881	56.51	5637	1
2025-07-18 08:55:31.834+00	114	telegraf	978202981	54.47	5649	1
2025-07-18 09:02:57.74+00	114	telegraf	1126982881	56.29	5655	1
2025-07-18 09:26:17.918+00	114	telegraf	978202981	54.29	5667	1
2025-07-18 09:27:06.191+00	114	telegraf	1041420528	53.1	5668	1
2025-07-18 09:33:43.792+00	114	telegraf	1126982881	56.16	5673	1
2025-07-18 09:57:52.237+00	114	telegraf	1041420528	52.99	5686	1
2025-07-18 10:04:29.816+00	114	telegraf	1126982881	56.02	5691	1
2025-07-18 10:27:50.054+00	114	telegraf	978202981	54.15	5703	1
2025-07-18 10:28:38.269+00	114	telegraf	1041420528	52.9	5705	1
2025-07-18 10:35:15.861+00	114	telegraf	1126982881	55.92	5709	1
2025-07-18 10:58:36.089+00	114	telegraf	978202981	54.2	5722	1
2025-07-18 10:59:24.319+00	114	telegraf	1041420528	52.98	5723	1
2025-07-18 11:06:01.876+00	114	telegraf	1126982881	56.2	5729	1
2025-07-18 11:12:13.227+00	114	telegraf	978202981	54.7	5736	1
2025-07-18 11:30:10.346+00	114	telegraf	1041420528	53.42	5743	1
2025-07-18 11:36:47.949+00	114	telegraf	1126982881	56.48	5747	1
2025-07-18 11:42:59.258+00	114	telegraf	978202981	54.79	5755	1
2025-07-18 12:00:56.402+00	114	telegraf	1041420528	53.57	5762	1
2025-07-18 12:07:33.986+00	114	telegraf	1126982881	56.52	5766	1
2025-07-18 12:13:45.313+00	114	telegraf	978202981	54.68	5774	1
2025-07-18 12:31:42.447+00	114	telegraf	1041420528	53.33	5783	1
2025-07-18 13:58:40.096+00	114	telegraf	978202981	54.18	5835	1
2025-07-18 14:03:04.274+00	114	telegraf	1126982881	56.23	5840	1
2025-07-19 16:37:21.499+00	114	telegraf	1041420528	59.28	7019	1
2025-07-19 16:38:22.027+00	114	telegraf	1041420528	59.95	7022	1
2025-07-19 16:39:22.548+00	114	telegraf	1041420528	58.61	7027	1
2025-07-19 16:39:52.806+00	114	telegraf	1041420528	59.11	7028	1
2025-07-19 16:41:23.606+00	114	telegraf	1041420528	65.31	7032	1
2025-07-19 16:41:53.874+00	114	telegraf	1041420528	63.27	7034	1
2025-07-19 16:42:06.603+00	114	telegraf	978202981	61.17	7039	1
2025-07-19 16:46:56.492+00	114	telegraf	1041420528	70.1	7056	1
2025-07-19 16:47:09.225+00	114	telegraf	978202981	61.92	7057	1
2025-07-19 16:47:26.757+00	114	telegraf	1041420528	67.28	7058	1
2025-07-19 16:47:57.021+00	114	telegraf	1041420528	65.25	7065	1
2025-07-19 16:48:27.295+00	114	telegraf	1041420528	64.28	7066	1
2025-07-19 16:48:57.55+00	114	telegraf	1041420528	63.69	7067	1
2025-07-19 16:49:58.081+00	114	telegraf	1041420528	62.95	7068	1
2025-07-19 16:51:28.873+00	114	telegraf	1041420528	62.26	7070	1
2025-07-19 16:53:29.922+00	114	telegraf	1041420528	61.69	7074	1
2025-07-19 16:56:31.488+00	114	telegraf	1041420528	61.18	7075	1
2025-07-19 17:01:16.606+00	114	telegraf	978202981	61.4	7080	1
2025-07-19 17:16:11.74+00	114	telegraf	1041420528	60.65	7088	1
2025-07-19 17:28:53.037+00	114	telegraf	1126982881	62.73	7097	1
2025-07-19 17:47:02.493+00	114	telegraf	1126982881	63.23	7105	1
2025-07-19 17:46:57.8+00	114	telegraf	1041420528	61.14	7107	1
2025-07-19 18:02:48.689+00	114	telegraf	978202981	61.36	7117	1
2025-07-19 18:33:34.73+00	114	telegraf	978202981	61.58	7142	1
2025-07-19 18:38:37.355+00	114	telegraf	978202981	62.16	7144	1
2025-07-19 18:42:01.214+00	114	telegraf	1126982881	64.01	7145	1
2025-07-19 19:02:37.247+00	114	telegraf	1041420528	61.62	7159	1
2025-07-19 19:29:33.918+00	114	telegraf	978202981	63	7178	1
2025-07-19 19:33:23.277+00	114	telegraf	1041420528	61.87	7181	1
2025-07-20 08:15:30.827+00	114	telegraf	1041420528	63.1	7650	1
2025-07-20 08:35:23.874+00	114	telegraf	978202981	64.24	7664	1
2025-07-20 08:39:18.284+00	114	telegraf	1126982881	65.84	7668	1
2025-07-20 09:06:09.951+00	114	telegraf	978202981	63.9	7692	1
2025-07-20 09:10:04.37+00	114	telegraf	1126982881	65.49	7696	1
2025-07-20 09:17:02.951+00	114	telegraf	1041420528	62.65	7702	1
2025-07-20 09:25:19.932+00	114	telegraf	978202981	63.36	7707	1
2025-07-20 09:31:15.394+00	114	telegraf	1126982881	64.99	7711	1
2025-07-20 09:34:11.872+00	114	telegraf	1041420528	62.14	7714	1
2025-07-20 09:48:32.06+00	114	telegraf	978202981	62.86	7724	1
2025-07-20 09:54:57.758+00	114	telegraf	1126982881	64.49	7727	1
2025-07-20 10:04:57.928+00	114	telegraf	1041420528	61.68	7733	1
2025-07-20 10:31:24.441+00	114	telegraf	978202981	61.82	7751	1
2025-07-20 10:45:49.219+00	114	telegraf	1041420528	60.67	7761	1
2025-07-20 11:03:33.561+00	114	telegraf	1126982881	62.98	7771	1
2025-07-20 11:58:39.936+00	114	telegraf	978202981	61.13	7807	1
2025-07-20 12:05:05.721+00	114	telegraf	1126982881	62.96	7810	1
2025-07-20 12:09:02.666+00	114	telegraf	1041420528	60.06	7812	1
2025-07-20 12:29:25.976+00	114	telegraf	978202981	61.03	7826	1
2025-07-18 22:28:13.976+00	114	telegraf	1523842139	62.19	6	1
2025-07-20 12:31:45.351+00	114	telegraf	527134251	58.65	10	1
2025-07-20 12:33:54.707+00	114	telegraf	1523842139	61.57	16	1
2025-07-20 12:35:51.742+00	114	telegraf	1126982881	62.73	7829	1
2025-07-20 12:38:47.535+00	114	telegraf	840973111	62.89	52	1
2025-07-20 12:39:48.69+00	114	telegraf	1041420528	59.88	7831	1
2025-07-20 12:41:50.624+00	114	telegraf	527134251	59.24	79	1
2025-07-20 12:43:21.404+00	114	telegraf	527134251	58.74	90	1
2025-07-20 12:48:54.301+00	114	telegraf	527134251	59.63	108	1
2025-07-20 12:49:02.62+00	114	telegraf	1523842139	62.67	109	1
2025-07-20 12:50:55.371+00	114	telegraf	527134251	59.12	120	1
2025-07-20 13:00:12.016+00	114	telegraf	978202981	60.74	7845	1
2025-07-20 13:03:01.673+00	114	telegraf	527134251	59.64	130	1
2025-07-20 13:04:40.754+00	114	telegraf	1523842139	62.17	137	1
2025-07-20 13:06:37.812+00	114	telegraf	1126982881	62.44	7848	1
2025-07-20 13:06:41.805+00	114	telegraf	1523842139	61.56	151	1
2025-07-20 13:09:33.576+00	114	telegraf	840973111	62.69	166	1
2025-07-20 13:09:35.166+00	114	telegraf	527134251	60.15	167	1
2025-07-20 13:10:34.769+00	114	telegraf	1041420528	59.53	7851	1
2025-07-20 13:30:58.083+00	114	telegraf	978202981	60.41	7864	1
2025-07-20 13:33:17.494+00	114	telegraf	527134251	60.65	213	1
2025-07-20 14:19:40.169+00	114	telegraf	840973111	64.01	327	1
2025-07-20 14:23:52.096+00	114	telegraf	1523842139	62.57	352	1
2025-07-20 14:24:52.615+00	114	telegraf	1523842139	61.89	359	1
2025-07-20 14:32:30.218+00	114	telegraf	978202981	60.59	7901	1
2025-07-20 14:34:49.63+00	114	telegraf	527134251	60.74	390	1
2025-07-20 14:35:19.885+00	114	telegraf	527134251	60.04	393	1
2025-07-20 14:38:29.748+00	114	telegraf	1523842139	61.21	400	1
2025-07-20 14:38:50.17+00	114	telegraf	840973111	62.08	401	1
2025-07-20 14:38:55.932+00	114	telegraf	1126982881	62.42	7904	1
2025-07-20 14:38:51.733+00	114	telegraf	527134251	59.14	408	1
2025-07-20 14:41:53.304+00	114	telegraf	527134251	59.87	428	1
2025-07-20 14:42:52.898+00	114	telegraf	1041420528	59.44	7906	1
2025-07-20 14:42:53.825+00	114	telegraf	527134251	59.4	435	1
2025-07-20 14:43:24.083+00	114	telegraf	527134251	58.76	437	1
2025-07-20 14:43:32.407+00	114	telegraf	1523842139	61.23	438	1
2025-07-20 14:44:53.324+00	114	telegraf	840973111	61.39	442	1
2025-07-20 14:44:54.884+00	114	telegraf	527134251	57.88	443	1
2025-07-20 14:45:03.201+00	114	telegraf	1523842139	60.65	444	1
2025-07-20 14:45:25.147+00	114	telegraf	527134251	59.29	445	1
2025-07-20 14:45:55.412+00	114	telegraf	527134251	58.55	446	1
2025-07-20 14:46:55.942+00	114	telegraf	527134251	59.2	448	1
2025-07-20 14:48:04.786+00	114	telegraf	1523842139	60.06	451	1
2025-07-20 14:49:57.533+00	114	telegraf	527134251	57.28	458	1
2025-07-20 14:50:27.782+00	114	telegraf	527134251	57.94	459	1
2025-07-20 14:50:58.046+00	114	telegraf	527134251	58.44	461	1
2025-07-20 14:51:28.312+00	114	telegraf	527134251	57.34	464	1
2025-07-20 14:51:36.619+00	114	telegraf	1523842139	59.48	467	1
2025-07-20 14:52:59.102+00	114	telegraf	527134251	57.86	468	1
2025-07-20 14:53:27.842+00	114	telegraf	840973111	60.66	470	1
2025-07-20 14:55:30.41+00	114	telegraf	527134251	56.95	483	1
2025-07-20 14:56:39.245+00	114	telegraf	1523842139	58.93	485	1
2025-07-20 14:56:59.67+00	114	telegraf	840973111	60.04	486	1
2025-07-20 15:00:02.772+00	114	telegraf	527134251	56.38	493	1
2025-07-20 15:01:11.62+00	114	telegraf	1523842139	58.38	496	1
2025-07-20 15:03:16.294+00	114	telegraf	978202981	60.47	7919	1
2025-07-20 14:17:29.321+00	114	telegraf	840973111	60.04	1	1
2025-07-20 15:04:43.465+00	114	telegraf	1523842139	58.5	4	1
2025-07-20 15:09:14.573+00	114	telegraf	527134251	54.27	33	1
2025-07-20 15:09:15.648+00	114	telegraf	1523842139	59.89	35	1
2025-07-20 15:09:42.006+00	114	telegraf	1126982881	62.26	7926	1
2025-07-20 15:09:45.897+00	114	telegraf	1523842139	57.1	44	1
2025-07-20 15:10:15.208+00	114	telegraf	527134251	53.74	46	1
2025-07-20 15:10:16.327+00	114	telegraf	1523842139	56.03	48	1
2025-07-20 15:10:46.189+00	114	telegraf	1523842139	62.21	53	1
2025-07-20 15:11:16.439+00	114	telegraf	1523842139	56.21	59	1
2025-07-20 15:11:46.684+00	114	telegraf	1523842139	55.3	62	1
2025-07-20 15:12:16.976+00	114	telegraf	840973111	58.53	64	1
2025-07-20 15:13:16.793+00	114	telegraf	527134251	55.66	66	1
2025-07-20 15:13:17.493+00	114	telegraf	840973111	59.94	67	1
2025-07-20 15:13:08.677+00	114	telegraf	1523842139	59.15	71	1
2025-07-20 15:13:38.947+00	114	telegraf	1523842139	56.25	76	1
2025-07-20 15:13:38.928+00	114	telegraf	1041420528	59.42	7927	1
2025-07-20 15:13:47.759+00	114	telegraf	840973111	59.1	78	1
2025-07-20 15:15:17.858+00	114	telegraf	527134251	55.14	88	1
2025-07-20 15:15:48.817+00	114	telegraf	840973111	58.29	89	1
2025-07-20 15:19:26.55+00	114	telegraf	1523842139	57.92	124	1
2025-07-20 15:19:56.818+00	114	telegraf	1523842139	55.85	136	1
2025-07-20 15:20:57.351+00	114	telegraf	1523842139	55.26	144	1
2025-07-20 15:21:21.748+00	114	telegraf	840973111	58.86	146	1
2025-07-20 15:21:51.293+00	114	telegraf	527134251	55.29	147	1
2025-07-20 15:22:10.637+00	114	telegraf	840973111	61.02	152	1
2025-07-20 15:22:40.89+00	114	telegraf	840973111	58.69	157	1
2025-07-20 15:24:41.946+00	114	telegraf	840973111	58.17	179	1
2025-07-20 15:25:59.994+00	114	telegraf	1523842139	55.78	194	1
2025-07-20 15:27:30.789+00	114	telegraf	1523842139	56.62	199	1
2025-07-20 15:33:03.711+00	114	telegraf	1523842139	57.13	222	1
2025-07-20 15:34:02.34+00	114	telegraf	978202981	60.49	7940	1
2025-07-20 15:37:57.495+00	114	telegraf	527134251	55.08	236	1
2025-07-20 15:38:58.006+00	114	telegraf	527134251	54.42	242	1
2025-07-20 15:40:28.043+00	114	telegraf	1126982881	62.38	7944	1
2025-07-20 15:51:56.069+00	114	telegraf	840973111	59.17	300	1
2025-07-20 15:57:14.458+00	114	telegraf	978202981	60.99	7957	1
2025-07-20 16:10:05.56+00	114	telegraf	840973111	59.68	2	1
2025-07-20 16:11:14.101+00	114	telegraf	1126982881	62.6	7974	1
2025-07-20 16:13:54.944+00	114	telegraf	1523842139	57.53	8	1
2025-07-20 16:15:11.011+00	114	telegraf	1041420528	59.78	7976	1
2025-07-20 16:23:58.422+00	114	telegraf	978202981	61.49	7980	1
2025-07-20 16:40:54.406+00	114	telegraf	1041420528	60.31	7993	1
2025-07-20 16:42:00.114+00	114	telegraf	1126982881	63.05	7994	1
2025-07-20 16:45:39.717+00	114	telegraf	978202981	62.06	7996	1
2025-07-20 17:05:07.05+00	114	telegraf	1041420528	60.81	8011	1
2025-07-20 17:58:40.081+00	114	telegraf	1126982881	65.09	8056	1
2025-07-20 17:59:05.174+00	114	telegraf	1041420528	62.38	8058	1
2025-07-20 17:59:18.136+00	114	telegraf	978202981	64.29	8059	1
2025-07-20 18:32:35.49+00	114	telegraf	978202981	65.37	8084	1
2025-07-20 18:38:00.622+00	114	telegraf	1126982881	66.62	8090	1
2025-07-20 18:51:15.225+00	114	telegraf	978202981	65.93	8095	1
2025-07-20 18:55:04.376+00	114	telegraf	1041420528	64.49	8098	1
2025-07-20 19:18:29.45+00	114	telegraf	978202981	65.43	8115	1
2025-07-20 19:23:54.613+00	114	telegraf	1126982881	66.43	8118	1
2025-07-20 19:24:19.615+00	114	telegraf	1041420528	63.98	8120	1
2025-07-20 19:32:36.843+00	114	telegraf	978202981	64.91	8127	1
2025-07-20 19:38:01.97+00	114	telegraf	1126982881	65.92	8131	1
2025-07-20 19:38:57.233+00	114	telegraf	1041420528	63.48	8133	1
2025-07-20 19:40:10.796+00	114	telegraf	978202981	64.41	8134	1
2025-07-20 19:43:34.858+00	114	telegraf	1126982881	67.76	8138	1
2025-07-20 19:44:35.399+00	114	telegraf	1126982881	69.13	8144	1
2025-07-20 19:45:05.655+00	114	telegraf	1126982881	71.28	8149	1
2025-07-20 19:45:35.916+00	114	telegraf	1126982881	66.03	8150	1
2025-07-20 19:46:06.182+00	114	telegraf	1126982881	61.96	8151	1
2025-07-20 19:47:06.703+00	114	telegraf	1126982881	62.55	8157	1
2025-07-20 19:48:37.528+00	114	telegraf	1126982881	63.11	8160	1
2025-07-20 19:53:09.897+00	114	telegraf	1126982881	67.03	8167	1
2025-07-20 19:53:40.161+00	114	telegraf	1126982881	66.45	8177	1
2025-07-20 19:54:40.682+00	114	telegraf	1126982881	65.86	8178	1
2025-07-20 19:56:41.726+00	114	telegraf	1126982881	65.34	8179	1
2025-07-20 19:59:07.752+00	114	telegraf	1041420528	62.97	8180	1
2025-07-20 20:01:44.357+00	114	telegraf	1126982881	64.83	8182	1
2025-07-20 22:05:49.097+00	114	telegraf	1126982881	64.5	52	1
2025-07-20 22:07:57.874+00	114	telegraf	978202981	62.59	53	1
2025-07-20 22:36:35.178+00	114	telegraf	1126982881	64.72	74	1
2025-07-20 22:38:43.926+00	114	telegraf	978202981	62.97	75	1
2025-07-21 06:47:21.313+00	114	telegraf	1126982881	79.54	397	1
2025-07-21 06:47:51.568+00	114	telegraf	1126982881	78.28	399	1
2025-07-21 06:48:21.829+00	114	telegraf	1126982881	75.94	401	1
2025-07-21 06:49:22.381+00	114	telegraf	1126982881	71.78	406	1
2025-07-21 06:49:52.648+00	114	telegraf	1126982881	70.67	407	1
2025-07-21 06:50:53.172+00	114	telegraf	1126982881	69.36	409	1
2025-07-21 06:51:00.596+00	114	telegraf	978202981	61.66	410	1
2025-07-21 06:51:53.703+00	114	telegraf	1126982881	68.6	412	1
2025-07-21 06:52:54.231+00	114	telegraf	1126982881	68.02	413	1
2025-07-21 06:54:25.013+00	114	telegraf	1126982881	67.43	415	1
2025-07-21 06:58:57.381+00	114	telegraf	1126982881	66.24	420	1
2025-07-21 07:08:57.216+00	114	telegraf	1041420528	60.7	427	1
2025-07-21 07:15:05.821+00	114	telegraf	1126982881	64.69	441	1
2025-07-21 07:21:46.659+00	114	telegraf	978202981	61.75	444	1
2025-07-21 07:39:43.246+00	114	telegraf	1041420528	60.86	452	1
2025-07-21 07:41:49.735+00	114	telegraf	1126982881	64.19	455	1
2025-07-21 08:02:30.513+00	114	telegraf	1126982881	63.67	469	1
2025-07-21 08:10:29.272+00	114	telegraf	1041420528	60.36	474	1
2025-07-21 17:30:51.513+00	114	telegraf	1523842139	59.48	580	1
2025-07-21 18:01:33.259+00	114	telegraf	527134251	59.92	647	1
2025-07-21 18:04:05.553+00	114	telegraf	840973111	61.48	649	1
2025-07-21 18:57:06.361+00	114	telegraf	1523842139	60.42	724	1
2025-07-21 19:03:05.339+00	114	telegraf	527134251	59.81	727	1
2025-07-21 19:05:37.606+00	114	telegraf	840973111	61.37	731	1
2025-07-21 21:25:29.437+00	114	telegraf	1126982881	62.47	117	1
2025-07-21 21:25:54.014+00	114	telegraf	1523842139	59.85	1079	1
2025-07-21 21:25:59.689+00	114	telegraf	1126982881	64.99	120	1
2025-07-21 21:26:29.963+00	114	telegraf	1126982881	62.5	122	1
2025-07-21 21:27:00.229+00	114	telegraf	1126982881	61.35	132	1
2025-07-21 21:27:30.486+00	114	telegraf	1126982881	60.83	133	1
2025-07-21 21:27:37.81+00	114	telegraf	978202981	58.92	134	1
2025-07-21 21:29:01.283+00	114	telegraf	1126982881	60.22	136	1
2025-07-21 21:31:45.677+00	114	telegraf	527134251	58.87	1090	1
2025-07-21 21:32:08.527+00	114	telegraf	840973111	61.61	1094	1
2025-07-21 21:32:40.432+00	114	telegraf	978202981	58.37	141	1
2025-07-21 21:34:58.757+00	114	telegraf	1041420528	57.29	145	1
2025-07-21 21:43:21.745+00	114	telegraf	527134251	58.03	1131	1
2025-07-22 08:07:58.964+00	114	telegraf	1041420528	56.38	528	1
2025-07-22 08:09:05.141+00	114	telegraf	1126982881	59.64	529	1
2025-07-22 08:38:45.01+00	114	telegraf	1041420528	56.78	549	1
2025-07-22 08:39:51.207+00	114	telegraf	1126982881	59.85	550	1
2025-07-22 09:09:31.042+00	114	telegraf	1041420528	57.09	567	1
2025-07-22 09:10:37.256+00	114	telegraf	1126982881	60.12	568	1
2025-07-22 11:20:52.314+00	114	telegraf	978202981	58.58	648	1
2025-07-22 11:30:14.404+00	114	telegraf	1041420528	57.92	656	1
2025-07-22 11:49:30.216+00	114	telegraf	1126982881	61.15	665	1
2025-07-22 11:51:38.368+00	114	telegraf	978202981	58.85	666	1
2025-07-22 12:01:00.432+00	114	telegraf	1041420528	58.13	674	1
2025-07-22 12:31:46.522+00	114	telegraf	1041420528	58.35	695	1
2025-07-22 12:51:02.295+00	114	telegraf	1126982881	61.38	704	1
2025-07-22 12:53:10.491+00	114	telegraf	978202981	59.12	705	1
2025-07-22 13:02:32.572+00	114	telegraf	1041420528	58.52	713	1
2025-07-22 13:33:18.621+00	114	telegraf	1041420528	58.66	732	1
2025-07-22 13:51:03.63+00	114	telegraf	1126982881	65.86	747	1
2025-07-22 13:51:33.896+00	114	telegraf	1126982881	64.23	751	1
2025-07-22 13:52:04.156+00	114	telegraf	1126982881	63.48	756	1
2025-07-22 13:53:04.684+00	114	telegraf	1126982881	62.56	763	1
2025-07-22 13:54:05.206+00	114	telegraf	1126982881	62.05	764	1
2025-07-22 13:54:42.563+00	114	telegraf	978202981	59.28	765	1
2025-07-22 15:19:49.937+00	114	telegraf	1126982881	62.99	822	1
2025-07-22 15:20:20.206+00	114	telegraf	1126982881	60.97	829	1
2025-07-22 15:20:50.467+00	114	telegraf	1126982881	59.93	831	1
2025-07-22 15:23:21.779+00	114	telegraf	1126982881	60.51	837	1
2025-07-22 17:06:15.466+00	114	telegraf	1126982881	65.36	1027	1
2025-07-22 17:06:45.73+00	114	telegraf	1126982881	56.7	1028	1
2025-07-22 17:07:46.248+00	114	telegraf	1126982881	64.67	1034	1
2025-07-22 17:08:16.515+00	114	telegraf	1126982881	57.1	1036	1
2025-07-22 17:08:46.779+00	114	telegraf	1126982881	59.37	1038	1
2025-07-22 17:08:40.917+00	114	telegraf	1041420528	57.7	1039	1
2025-07-22 17:09:17.046+00	114	telegraf	1126982881	57.83	1041	1
2025-07-22 17:09:47.308+00	114	telegraf	1126982881	57.26	1042	1
2025-07-22 17:10:47.83+00	114	telegraf	1126982881	56.5	1045	1
2025-07-22 17:20:53.079+00	114	telegraf	1126982881	62.79	1059	1
2025-07-22 17:21:23.337+00	114	telegraf	1126982881	66.88	1062	1
2025-07-22 17:21:53.602+00	114	telegraf	1126982881	58.03	1066	1
2025-07-22 17:22:23.865+00	114	telegraf	1126982881	56.58	1067	1
2025-07-22 17:28:57.303+00	114	telegraf	1126982881	56.71	1099	1
2025-07-22 17:29:27.565+00	114	telegraf	1126982881	57.57	1104	1
2025-07-22 17:32:59.398+00	114	telegraf	1126982881	66.32	1114	1
2025-07-22 17:33:29.669+00	114	telegraf	1126982881	57.99	1118	1
2025-07-22 17:33:59.927+00	114	telegraf	1126982881	56.25	1119	1
2025-07-22 17:36:31.235+00	114	telegraf	1126982881	56.96	1125	1
2025-07-22 17:37:01.505+00	114	telegraf	1126982881	57.99	1126	1
2025-07-22 17:37:31.766+00	114	telegraf	1126982881	68.61	1129	1
2025-07-22 17:39:26.963+00	114	telegraf	1041420528	58.18	1137	1
2025-07-22 17:40:03.082+00	114	telegraf	1126982881	62.61	1140	1
2025-07-22 17:40:33.365+00	114	telegraf	1126982881	60.03	1143	1
2025-07-22 17:41:03.635+00	114	telegraf	1126982881	57.75	1144	1
2025-07-22 17:41:33.905+00	114	telegraf	1126982881	56.83	1145	1
2025-07-22 17:43:34.955+00	114	telegraf	1126982881	58	1150	1
2025-07-22 17:44:05.213+00	114	telegraf	1126982881	57.32	1151	1
2025-07-22 17:45:05.739+00	114	telegraf	1126982881	59.07	1155	1
2025-07-22 17:45:36.006+00	114	telegraf	1126982881	58.33	1156	1
2025-07-22 17:46:36.524+00	114	telegraf	1126982881	57.21	1160	1
2025-07-22 17:47:13.806+00	114	telegraf	978202981	59.48	1161	1
2025-07-22 17:49:07.848+00	114	telegraf	1126982881	58.04	1163	1
2025-07-22 17:49:38.108+00	114	telegraf	1126982881	57.4	1164	1
2025-07-22 17:52:03.532+00	114	telegraf	1041420528	58.71	1168	1
2025-07-22 17:52:09.425+00	114	telegraf	1126982881	59.92	1169	1
2025-07-22 17:52:39.686+00	114	telegraf	1126982881	58.76	1170	1
2025-07-22 17:54:10.478+00	114	telegraf	1126982881	57.99	1175	1
2025-07-22 17:54:40.746+00	114	telegraf	1126982881	59.03	1176	1
2025-07-22 17:55:41.267+00	114	telegraf	1126982881	59.76	1183	1
2025-07-22 17:56:11.531+00	114	telegraf	1126982881	61.54	1186	1
2025-07-22 17:59:13.136+00	114	telegraf	1126982881	57.47	1195	1
2025-07-22 19:27:29.172+00	114	telegraf	1126982881	58.96	1261	1
2025-07-22 19:27:59.444+00	114	telegraf	1126982881	69.03	1271	1
2025-07-22 19:28:29.699+00	114	telegraf	1126982881	57.58	1273	1
2025-07-22 19:28:59.967+00	114	telegraf	1126982881	56.83	1275	1
2025-07-22 19:30:30.755+00	114	telegraf	1126982881	59.68	1285	1
2025-07-22 19:31:01.017+00	114	telegraf	1126982881	56.63	1287	1
2025-07-22 19:32:01.542+00	114	telegraf	1126982881	59.07	1292	1
2025-07-22 19:42:06.819+00	114	telegraf	1126982881	57.15	1320	1
2025-07-22 19:43:07.349+00	114	telegraf	1126982881	57.68	1321	1
2025-07-22 19:43:37.6+00	114	telegraf	1126982881	57.15	1322	1
2025-07-22 19:48:47.29+00	114	telegraf	978202981	57	1325	1
2025-07-22 19:51:41.803+00	114	telegraf	1126982881	58.32	1329	1
2025-07-22 19:52:12.065+00	114	telegraf	1126982881	56.58	1330	1
2025-07-22 19:53:12.594+00	114	telegraf	1126982881	58.12	1334	1
2025-07-22 19:53:42.859+00	114	telegraf	1126982881	56.79	1335	1
2025-07-22 19:54:13.12+00	114	telegraf	1126982881	56.14	1336	1
2025-07-22 19:56:38.585+00	114	telegraf	1041420528	56.18	1341	1
2025-07-22 20:02:17.35+00	114	telegraf	1126982881	57.41	1347	1
2025-07-22 20:02:47.611+00	114	telegraf	1126982881	55.62	1348	1
2025-07-22 20:05:18.929+00	114	telegraf	1126982881	74.03	1352	1
2025-07-22 20:05:49.196+00	114	telegraf	1126982881	55.21	1354	1
2025-07-22 20:06:19.452+00	114	telegraf	1126982881	54.5	1355	1
2025-07-22 20:07:14.107+00	114	telegraf	1041420528	55.67	1361	1
2025-07-22 20:07:57.273+00	114	telegraf	978202981	55.99	1363	1
2025-07-22 20:19:33.324+00	114	telegraf	978202981	55.48	1389	1
2025-07-22 20:19:56.549+00	114	telegraf	1126982881	58.48	1393	1
2025-07-22 20:20:26.81+00	114	telegraf	1126982881	53.21	1394	1
2025-07-22 20:21:27.332+00	114	telegraf	1126982881	54.1	1400	1
2025-07-22 20:21:57.598+00	114	telegraf	1126982881	53.35	1401	1
2025-07-22 20:22:58.128+00	114	telegraf	1126982881	57.89	1404	1
2025-07-22 20:23:28.39+00	114	telegraf	1126982881	53.41	1405	1
2025-07-22 20:23:58.649+00	114	telegraf	1126982881	55.02	1406	1
2025-07-22 20:32:02.854+00	114	telegraf	1126982881	55.82	1427	1
2025-07-22 20:32:57.502+00	114	telegraf	1041420528	54.64	1437	1
2025-07-22 20:38:43.326+00	114	telegraf	978202981	54.97	1442	1
2025-07-22 20:55:09.096+00	114	telegraf	1041420528	54.14	1451	1
2025-07-22 21:02:48.938+00	114	telegraf	1126982881	55.95	1457	1
2025-07-22 21:09:29.368+00	114	telegraf	978202981	54.54	1462	1
2025-07-22 21:18:38.888+00	114	telegraf	527134251	57.95	2	1
2025-07-22 21:21:22.194+00	114	telegraf	1523842139	58.8	5	1
2025-07-22 21:25:37.201+00	114	telegraf	840973111	60.27	11	1
2025-07-22 21:25:55.144+00	114	telegraf	1041420528	53.94	1469	1
2025-07-22 21:33:35.039+00	114	telegraf	1126982881	56.17	1477	1
2025-07-22 21:40:15.432+00	114	telegraf	978202981	54.28	1481	1
2025-07-22 21:43:21.788+00	114	telegraf	527134251	58.82	39	1
2025-07-22 21:43:33.734+00	114	telegraf	1523842139	59.4	41	1
2025-07-22 21:43:46.663+00	114	telegraf	840973111	60.78	43	1
2025-07-22 21:43:52.042+00	114	telegraf	527134251	58.27	44	1
2025-07-22 21:44:34.272+00	114	telegraf	1523842139	58.81	47	1
2025-07-22 21:54:52.428+00	114	telegraf	840973111	60.28	100	1
2025-07-22 21:56:41.216+00	114	telegraf	1041420528	53.85	1488	1
2025-07-22 22:04:21.097+00	114	telegraf	1126982881	56.44	1495	1
2025-07-22 22:11:01.464+00	114	telegraf	978202981	54.71	1499	1
2025-07-22 22:14:38.062+00	114	telegraf	527134251	57.97	133	1
2025-07-22 22:15:20.232+00	114	telegraf	1523842139	58.57	134	1
2025-07-22 22:25:38.505+00	114	telegraf	840973111	60.27	140	1
2025-07-22 22:27:27.244+00	114	telegraf	1041420528	54.02	1506	1
2025-07-22 22:29:15.794+00	114	telegraf	527134251	58.53	147	1
2025-07-22 22:30:16.323+00	114	telegraf	527134251	57.94	160	1
2025-07-22 22:35:07.173+00	114	telegraf	1126982881	56.61	1513	1
2025-07-22 22:41:47.54+00	114	telegraf	978202981	54.65	1517	1
2025-07-22 22:44:53.941+00	114	telegraf	527134251	58.5	221	1
2025-07-22 22:45:05.805+00	114	telegraf	1523842139	59.08	222	1
2025-07-22 22:45:18.767+00	114	telegraf	840973111	61.27	223	1
2025-07-22 22:46:49.554+00	114	telegraf	840973111	60.74	228	1
2025-07-22 22:47:06.858+00	114	telegraf	1523842139	58.53	238	1
2025-07-22 22:58:13.27+00	114	telegraf	1041420528	53.92	1524	1
2025-07-22 23:02:33.155+00	114	telegraf	527134251	58	259	1
2025-07-22 23:05:53.208+00	114	telegraf	1126982881	56.57	1531	1
2025-07-22 23:12:33.589+00	114	telegraf	978202981	54.53	1535	1
2025-07-22 23:28:59.301+00	114	telegraf	1041420528	53.71	1542	1
2025-07-22 23:36:39.253+00	114	telegraf	1126982881	56.39	1549	1
2025-07-22 23:43:19.655+00	114	telegraf	978202981	54.25	1556	1
2025-07-23 07:33:55.086+00	114	telegraf	978202981	55.08	1841	1
2025-07-23 07:34:42.583+00	114	telegraf	1041420528	54.05	1842	1
2025-07-23 07:36:49.862+00	114	telegraf	1126982881	57	1843	1
2025-07-23 07:42:22.762+00	114	telegraf	1126982881	61.47	1853	1
2025-07-23 07:42:53.015+00	114	telegraf	1126982881	56.05	1857	1
2025-07-23 07:43:23.284+00	114	telegraf	1126982881	58.62	1860	1
2025-07-23 07:43:53.541+00	114	telegraf	1126982881	58.12	1861	1
2025-07-23 07:44:54.072+00	114	telegraf	1126982881	57.54	1871	1
2025-07-23 07:59:31.726+00	114	telegraf	1126982881	66.03	1890	1
2025-07-23 08:00:01.986+00	114	telegraf	1126982881	62.94	1891	1
2025-07-23 08:00:32.273+00	114	telegraf	1126982881	61.44	1900	1
2025-07-23 08:01:02.536+00	114	telegraf	1126982881	60.68	1903	1
2025-07-23 08:03:33.848+00	114	telegraf	1126982881	59.29	1906	1
2025-07-23 08:04:41.15+00	114	telegraf	978202981	55.43	1907	1
2025-07-23 08:05:28.641+00	114	telegraf	1041420528	54.45	1908	1
2025-07-23 08:06:05.153+00	114	telegraf	1126982881	58.77	1909	1
2025-07-23 08:08:06.25+00	114	telegraf	1126982881	56.7	1916	1
2025-07-23 08:09:37.034+00	114	telegraf	1126982881	58	1921	1
2025-07-23 08:10:07.307+00	114	telegraf	1126982881	76.37	1927	1
2025-07-23 08:10:37.562+00	114	telegraf	1126982881	65.77	1928	1
2025-07-23 08:11:07.824+00	114	telegraf	1126982881	63.25	1929	1
2025-07-23 08:11:38.091+00	114	telegraf	1126982881	62.02	1933	1
2025-07-23 08:12:08.352+00	114	telegraf	1126982881	61.31	1934	1
2025-07-23 08:12:38.608+00	114	telegraf	1126982881	60.81	1935	1
2025-07-23 08:13:39.137+00	114	telegraf	1126982881	60.15	1936	1
2025-07-23 08:15:09.928+00	114	telegraf	1126982881	59.6	1937	1
2025-07-23 08:17:41.244+00	114	telegraf	1126982881	59.04	1938	1
2025-07-23 08:21:43.343+00	114	telegraf	1126982881	58.49	1944	1
2025-07-23 08:27:16.231+00	114	telegraf	1126982881	57.99	1955	1
2025-07-23 08:32:55.891+00	114	telegraf	978202981	56.08	1972	1
2025-07-23 08:34:43.884+00	114	telegraf	1041420528	54.96	1976	1
2025-07-23 08:41:53.85+00	114	telegraf	1126982881	57.45	1981	1
2025-07-23 09:24:15.984+00	114	telegraf	1126982881	57	2009	1
2025-07-23 09:34:28.003+00	114	telegraf	978202981	56.26	2016	1
2025-07-23 09:36:15.96+00	114	telegraf	1041420528	55.24	2018	1
2025-07-23 09:55:02.047+00	114	telegraf	1126982881	57.01	2031	1
2025-07-23 10:05:14.035+00	114	telegraf	978202981	56.76	2043	1
2025-07-23 10:07:01.997+00	114	telegraf	1041420528	55.68	2044	1
2025-07-23 11:20:16.517+00	114	telegraf	1126982881	60.07	2094	1
2025-07-23 12:02:01.943+00	114	telegraf	1041420528	57.64	2120	1
2025-07-23 12:04:46.345+00	114	telegraf	978202981	58.66	2122	1
2025-07-23 12:16:52.675+00	114	telegraf	978202981	58.13	2127	1
2025-07-23 12:21:48.641+00	114	telegraf	1126982881	60.06	2131	1
2025-07-23 12:52:34.684+00	114	telegraf	1126982881	59.97	2168	1
2025-07-23 13:03:34.066+00	114	telegraf	1041420528	57.07	2176	1
2025-07-23 13:06:48.731+00	114	telegraf	978202981	57.5	2180	1
2025-07-23 13:15:10.124+00	114	telegraf	1041420528	56.57	2185	1
2025-07-23 13:19:18.646+00	114	telegraf	1126982881	59.47	2187	1
2025-07-23 13:24:58.178+00	114	telegraf	978202981	56.99	2191	1
2025-07-23 13:39:52.981+00	114	telegraf	1041420528	56.06	2200	1
2025-07-23 13:46:02.596+00	114	telegraf	1126982881	58.97	2205	1
2025-07-23 13:55:44.225+00	114	telegraf	978202981	56.61	2210	1
2025-07-23 14:06:19.778+00	114	telegraf	978202981	57.13	2218	1
2025-07-23 14:26:23.64+00	114	telegraf	1126982881	60.54	2236	1
2025-07-23 14:27:00.561+00	114	telegraf	978202981	59.29	2237	1
2025-07-23 14:29:49.02+00	114	telegraf	1041420528	57.91	2238	1
2025-07-23 14:32:33.444+00	114	telegraf	978202981	59.85	2240	1
2025-07-23 14:36:28.89+00	114	telegraf	1126982881	61.04	2246	1
2025-07-23 14:51:00.066+00	114	telegraf	1041420528	58.41	2254	1
2025-07-23 14:54:08.097+00	114	telegraf	1126982881	61.54	2258	1
2025-07-23 15:03:19.552+00	114	telegraf	978202981	60.09	2260	1
2025-07-23 15:12:11.122+00	114	telegraf	1041420528	58.91	2267	1
2025-07-23 15:18:27.443+00	114	telegraf	978202981	60.59	2273	1
2025-07-23 15:19:21.287+00	114	telegraf	1126982881	62.05	2274	1
2025-07-23 15:25:48.226+00	114	telegraf	1041420528	59.41	2278	1
2025-07-23 15:30:33.802+00	114	telegraf	978202981	61.17	2280	1
2025-07-23 15:32:58.383+00	114	telegraf	1126982881	62.55	2281	1
2025-07-23 17:33:07.736+00	114	telegraf	978202981	62.19	2368	1
2025-07-23 17:44:43.775+00	114	telegraf	978202981	62.69	2390	1
2025-07-23 17:47:32.227+00	114	telegraf	1041420528	61.39	2394	1
2025-07-23 17:50:09.959+00	114	telegraf	1126982881	64.55	2395	1
2025-07-23 18:04:54.301+00	114	telegraf	978202981	63.22	2400	1
2025-07-23 18:07:12.505+00	114	telegraf	1041420528	61.91	2407	1
2025-07-23 18:20:56.007+00	114	telegraf	1126982881	64.79	2413	1
2025-07-23 18:34:09.556+00	114	telegraf	978202981	63.76	2418	1
2025-07-23 18:37:58.558+00	114	telegraf	1041420528	62.4	2425	1
\.


--
-- Data for Name: _hyper_2_2_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_2_2_chunk ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
2025-06-28 12:23:55.83+00	114	\N	978202981	57.58	56	0.9
2025-06-28 12:27:57.952+00	114	\N	978202981	58.33	62	0.9
2025-06-28 12:28:58.472+00	114	\N	978202981	57.7	74	0.9
2025-06-28 12:29:52.861+00	114	\N	1041420528	56.1	76	0.9
2025-06-28 12:31:58.131+00	114	\N	1126982881	58.31	77	0.9
2025-06-28 12:32:00.062+00	114	\N	978202981	57.18	78	0.9
2025-06-28 12:37:26.838+00	114	\N	1041420528	55.54	83	0.9
2025-06-28 12:39:34.007+00	114	\N	978202981	56.66	92	0.9
2025-06-28 12:40:02.353+00	114	\N	1126982881	57.81	94	0.9
2025-06-28 12:50:07.615+00	114	\N	1126982881	57.29	100	0.9
2025-06-28 12:51:10.069+00	114	\N	978202981	56.16	101	0.9
2025-06-28 12:52:04.467+00	114	\N	1041420528	55.04	102	0.9
2025-06-28 13:13:51.853+00	114	\N	978202981	55.64	115	0.9
2025-06-28 13:20:53.608+00	114	\N	1126982881	56.84	121	0.9
2025-06-28 13:22:50.488+00	114	\N	1041420528	54.64	122	0.9
2025-06-28 13:44:37.927+00	114	\N	978202981	55.66	139	0.9
2025-06-28 13:51:39.718+00	114	\N	1126982881	57.05	145	0.9
2025-06-28 13:53:36.584+00	114	\N	1041420528	54.89	146	0.9
2025-06-28 14:15:24.012+00	114	\N	978202981	55.53	157	0.9
2025-06-28 14:16:52.845+00	114	\N	1126982881	57.65	162	0.9
2025-06-28 14:16:48.653+00	114	\N	1041420528	55.53	163	0.9
2025-06-28 14:17:49.17+00	114	\N	1041420528	54.88	175	0.9
2025-06-28 14:17:53.375+00	114	\N	1126982881	57.15	176	0.9
2025-06-28 14:46:10.07+00	114	\N	978202981	55.36	187	0.9
2025-06-28 14:48:35.2+00	114	\N	1041420528	54.42	193	0.9
2025-06-28 14:48:39.408+00	114	\N	1126982881	56.82	194	0.9
2025-06-28 15:16:56.102+00	114	\N	978202981	55.25	205	0.9
2025-06-28 15:19:25.435+00	114	\N	1126982881	56.71	211	0.9
2025-06-28 15:19:21.262+00	114	\N	1041420528	54.33	213	0.9
2025-06-28 15:47:42.151+00	114	\N	978202981	55.12	225	0.9
2025-06-28 15:50:11.442+00	114	\N	1126982881	56.61	230	0.9
2025-06-28 15:50:07.242+00	114	\N	1041420528	54.17	232	0.9
2025-06-28 16:18:28.243+00	114	\N	978202981	55.08	248	0.9
2025-06-28 16:20:53.309+00	114	\N	1041420528	54.11	252	0.9
2025-06-28 16:20:57.517+00	114	\N	1126982881	56.63	253	0.9
2025-06-28 16:49:14.259+00	114	\N	978202981	55.09	266	0.9
2025-06-28 16:51:43.522+00	114	\N	1126982881	56.71	270	0.9
2025-06-28 16:51:39.348+00	114	\N	1041420528	54.17	271	0.9
2025-06-28 17:20:00.376+00	114	\N	978202981	55.13	286	0.9
2025-06-28 17:22:29.579+00	114	\N	1126982881	56.84	301	0.9
2025-06-28 17:22:25.387+00	114	\N	1041420528	54.36	303	0.9
2025-06-28 17:50:46.456+00	114	\N	978202981	55.52	324	0.9
2025-06-28 17:53:11.451+00	114	\N	1041420528	54.39	326	0.9
2025-06-28 17:53:15.657+00	114	\N	1126982881	56.9	327	0.9
2025-06-28 18:21:32.532+00	114	\N	978202981	55.74	347	0.9
2025-06-28 18:23:57.508+00	114	\N	1041420528	54.53	349	0.9
2025-06-28 18:24:01.734+00	114	\N	1126982881	57.02	350	0.9
2025-06-28 18:52:18.556+00	114	\N	978202981	55.81	368	0.9
2025-06-28 18:54:47.746+00	114	\N	1126982881	57.1	370	0.9
2025-06-28 18:54:43.531+00	114	\N	1041420528	54.55	371	0.9
2025-06-28 19:23:04.598+00	114	\N	978202981	56.19	387	0.9
2025-06-28 19:25:33.769+00	114	\N	1126982881	57.2	391	0.9
2025-06-28 19:25:29.553+00	114	\N	1041420528	54.79	392	0.9
2025-06-28 19:33:40.119+00	114	\N	978202981	56.7	393	0.9
2025-06-28 19:56:19.851+00	114	\N	1126982881	57.31	409	0.9
2025-06-28 19:56:15.651+00	114	\N	1041420528	54.95	410	0.9
2025-06-28 20:04:26.247+00	114	\N	978202981	56.59	412	0.9
2025-06-30 14:47:13.926+00	114	\N	978202981	60.09	758	0.9
2025-06-30 14:49:11.226+00	114	\N	1126982881	51.39	759	0.9
2025-06-30 14:50:07.749+00	114	\N	1041420528	59.87	761	0.9
2025-06-30 14:58:15.983+00	114	\N	1126982881	50.87	769	0.9
2025-06-30 15:04:53.153+00	114	\N	978202981	60.61	775	0.9
2025-06-30 15:07:50.967+00	114	\N	1126982881	50.29	776	0.9
2025-06-30 15:20:31.302+00	114	\N	978202981	61.15	782	0.9
2025-06-30 15:20:53.787+00	114	\N	1041420528	59.83	784	0.9
2025-06-30 15:38:37.013+00	114	\N	1126982881	50.21	795	0.9
2025-06-30 15:49:12.529+00	114	\N	1126982881	49.68	799	0.9
2025-06-30 15:51:17.376+00	114	\N	978202981	60.87	802	0.9
2025-06-30 15:51:39.83+00	114	\N	1041420528	59.84	803	0.9
2025-06-30 15:52:14.097+00	114	\N	1126982881	49.16	804	0.9
2025-06-30 16:02:53.432+00	114	\N	978202981	61.48	816	0.9
2025-06-30 16:03:53.95+00	114	\N	978202981	60.94	817	0.9
2025-06-30 16:07:52.267+00	114	\N	1126982881	48.65	825	0.9
2025-06-30 16:10:23.577+00	114	\N	1126982881	48.14	826	0.9
2025-06-30 16:14:55.935+00	114	\N	1126982881	47.57	829	0.9
2025-06-30 16:22:25.892+00	114	\N	1041420528	59.82	832	0.9
2025-06-30 16:23:34.2+00	114	\N	978202981	60.43	834	0.9
2025-06-30 16:24:00.67+00	114	\N	1126982881	46.97	835	0.9
2025-06-30 16:33:05.408+00	114	\N	1126982881	46.45	843	0.9
2025-06-30 16:53:11.912+00	114	\N	1041420528	59.76	852	0.9
2025-06-30 16:54:20.278+00	114	\N	978202981	60.5	855	0.9
2025-06-30 17:03:51.458+00	114	\N	1126982881	46.68	862	0.9
2025-06-30 17:21:00.398+00	114	\N	1126982881	47.24	870	0.9
2025-06-30 17:23:57.979+00	114	\N	1041420528	59.75	872	0.9
2025-06-30 17:25:06.318+00	114	\N	978202981	60.48	875	0.9
2025-06-30 17:49:15.118+00	114	\N	1126982881	47.74	891	0.9
2025-06-30 17:52:46.961+00	114	\N	1126982881	48.28	893	0.9
2025-06-30 17:54:44.014+00	114	\N	1041420528	59.77	895	0.9
2025-06-30 17:55:52.362+00	114	\N	978202981	60.24	897	0.9
2025-06-30 18:02:21.969+00	114	\N	1126982881	48.8	904	0.9
2025-06-30 18:09:55.911+00	114	\N	1126982881	49.31	909	0.9
2025-06-30 18:16:59.579+00	114	\N	1126982881	49.83	914	0.9
2025-06-30 18:25:30.056+00	114	\N	1041420528	59.74	919	0.9
2025-06-30 18:26:38.406+00	114	\N	978202981	60.14	920	0.9
2025-06-30 18:35:43.165+00	114	\N	978202981	59.57	929	0.9
2025-06-30 18:39:11.146+00	114	\N	1126982881	49.31	931	0.9
2025-06-30 18:40:15.54+00	114	\N	978202981	59.07	933	0.9
2025-06-30 18:58:21.147+00	114	\N	1126982881	49.82	946	0.9
2025-06-30 19:02:27.137+00	114	\N	978202981	57.01	953	0.9
2025-06-30 19:07:56.164+00	114	\N	1126982881	50.33	958	0.9
2025-06-30 19:15:30.104+00	114	\N	1126982881	50.83	963	0.9
2025-06-30 19:22:33.778+00	114	\N	1126982881	51.37	966	0.9
2025-06-30 19:27:02.133+00	114	\N	1041420528	59.45	972	0.9
2025-06-30 19:30:41.919+00	114	\N	978202981	57.53	976	0.9
2025-06-30 19:33:09.308+00	114	\N	1126982881	52.36	983	0.9
2025-06-30 19:34:13.755+00	114	\N	978202981	56.94	989	0.9
2025-06-30 19:35:40.617+00	114	\N	1126982881	52.88	992	0.9
2025-06-30 19:36:06.871+00	114	\N	1041420528	58.85	996	0.9
2025-06-30 19:38:42.202+00	114	\N	1126982881	53.4	1001	0.9
2025-06-30 19:38:46.12+00	114	\N	978202981	56.41	1002	0.9
2025-06-30 19:38:38.193+00	114	\N	1041420528	58.32	1003	0.9
2025-06-30 19:43:14.559+00	114	\N	1126982881	53.91	1005	0.9
2025-06-30 19:43:40.827+00	114	\N	1041420528	57.8	1006	0.9
2025-06-30 19:44:41.343+00	114	\N	1041420528	57.24	1007	0.9
2025-06-30 19:46:12.137+00	114	\N	1041420528	56.72	1012	0.9
2025-06-30 19:46:20.087+00	114	\N	978202981	55.87	1013	0.9
2025-06-30 19:46:46.404+00	114	\N	1126982881	53.35	1014	0.9
2025-06-30 19:49:13.706+00	114	\N	1041420528	56.15	1018	0.9
2025-06-30 19:49:51.932+00	114	\N	978202981	55.37	1019	0.9
2025-06-30 19:52:15.281+00	114	\N	1041420528	55.59	1030	0.9
2025-06-30 19:54:20.353+00	114	\N	1126982881	52.75	1033	0.9
2025-06-30 19:54:54.563+00	114	\N	978202981	54.76	1034	0.9
2025-06-30 19:59:57.212+00	114	\N	978202981	54.24	1040	0.9
2025-06-30 20:00:19.49+00	114	\N	1041420528	55.08	1041	0.9
2025-06-30 20:25:06.4+00	114	\N	1126982881	53.1	1069	0.9
2025-06-30 20:28:34.205+00	114	\N	1041420528	53.98	1071	0.9
2025-06-30 20:30:43.261+00	114	\N	978202981	53.85	1074	0.9
2025-06-30 20:46:43.686+00	114	\N	1041420528	54.56	1090	0.9
2025-06-30 20:47:48.223+00	114	\N	1126982881	53.64	1094	0.9
2025-06-30 20:52:46.85+00	114	\N	1041420528	55.12	1098	0.9
2025-06-30 20:53:25.088+00	114	\N	978202981	54.37	1100	0.9
2025-06-30 20:54:21.636+00	114	\N	1126982881	54.16	1101	0.9
2025-06-30 20:56:18.702+00	114	\N	1041420528	55.66	1103	0.9
2025-06-30 20:59:24.267+00	114	\N	1126982881	54.73	1106	0.9
2025-06-30 20:59:58.504+00	114	\N	978202981	54.9	1107	0.9
2025-06-30 21:00:20.794+00	114	\N	1041420528	56.17	1108	0.9
2025-06-30 21:05:57.688+00	114	\N	1126982881	55.24	1115	0.9
2025-06-30 21:06:23.948+00	114	\N	1041420528	56.7	1116	0.9
2025-06-30 21:08:02.759+00	114	\N	978202981	55.43	1119	0.9
2025-06-30 21:15:02.411+00	114	\N	1126982881	55.77	1122	0.9
2025-06-30 21:18:38.283+00	114	\N	978202981	55.93	1124	0.9
2025-06-30 21:26:34.462+00	114	\N	1041420528	57.21	1127	0.9
2025-06-30 21:34:42.684+00	114	\N	1126982881	56.29	1133	0.9
2025-06-30 21:43:21.201+00	114	\N	978202981	56.44	1141	0.9
2025-06-30 21:57:20.522+00	114	\N	1041420528	57.3	1149	0.9
2025-06-30 22:05:28.73+00	114	\N	1126982881	56.69	1154	0.9
2025-06-30 22:14:07.26+00	114	\N	978202981	56.65	1161	0.9
2025-07-01 05:35:27.512+00	114	\N	978202981	61.37	1470	0.9
2025-07-01 05:40:25.866+00	114	\N	1126982881	62.7	1475	0.9
2025-07-01 05:45:32.778+00	114	\N	978202981	62.14	1490	0.9
2025-07-01 05:46:59.282+00	114	\N	1126982881	62.49	1495	0.9
2025-07-01 05:47:33.831+00	114	\N	978202981	61.62	1499	0.9
2025-07-01 05:53:06.721+00	114	\N	978202981	61.11	1504	0.9
2025-07-01 05:54:33.226+00	114	\N	1126982881	63.05	1505	0.9
2025-07-01 06:00:10.4+00	114	\N	978202981	60.58	1513	0.9
2025-07-01 06:01:06.646+00	114	\N	1126982881	63.59	1514	0.9
2025-07-01 06:10:45.919+00	114	\N	978202981	60.08	1519	0.9
2025-07-01 06:12:08.546+00	114	\N	1041420528	58.37	1521	0.9
2025-07-01 06:18:45.839+00	114	\N	1126982881	64.1	1529	0.9
2025-07-01 06:25:53.807+00	114	\N	978202981	59.58	1533	0.9
2025-07-01 06:42:54.607+00	114	\N	1041420528	58.09	1540	0.9
2025-07-01 06:49:31.884+00	114	\N	1126982881	63.92	1547	0.9
2025-07-01 06:56:39.859+00	114	\N	978202981	59.1	1552	0.9
2025-07-01 07:13:40.678+00	114	\N	1041420528	58.03	1561	0.9
2025-07-01 07:18:47.161+00	114	\N	1126982881	63.37	1566	0.9
2025-07-01 07:27:25.936+00	114	\N	978202981	58.93	1572	0.9
2025-07-01 07:44:26.71+00	114	\N	1041420528	57.97	1580	0.9
2025-07-01 07:47:01.894+00	114	\N	1126982881	62.84	1584	0.9
2025-07-01 08:15:12.788+00	114	\N	1041420528	57.94	1600	0.9
2025-07-01 08:16:47.403+00	114	\N	1126982881	63.34	1603	0.9
2025-07-01 08:28:58.032+00	114	\N	978202981	58.77	1612	0.9
2025-07-01 08:41:00.043+00	114	\N	1126982881	62.8	1618	0.9
2025-07-01 08:42:30.832+00	114	\N	1126982881	62.26	1620	0.9
2025-07-01 08:45:58.829+00	114	\N	1041420528	57.96	1623	0.9
2025-07-01 08:52:05.834+00	114	\N	1126982881	61.68	1630	0.9
2025-07-01 08:57:08.476+00	114	\N	1126982881	61.18	1633	0.9
2025-07-01 08:59:44.063+00	114	\N	978202981	58.76	1634	0.9
2025-07-01 09:16:44.9+00	114	\N	1041420528	57.97	1645	0.9
2025-07-01 09:27:54.503+00	114	\N	1126982881	60.72	1654	0.9
2025-07-01 09:30:30.114+00	114	\N	978202981	58.76	1655	0.9
2025-07-01 09:47:30.927+00	114	\N	1041420528	57.95	1665	0.9
2025-07-01 09:58:40.545+00	114	\N	1126982881	60.53	1674	0.9
2025-07-01 10:01:16.16+00	114	\N	978202981	58.79	1677	0.9
2025-07-01 10:10:46.857+00	114	\N	1126982881	60	1683	0.9
2025-07-01 10:14:48.957+00	114	\N	1126982881	59.42	1686	0.9
2025-07-01 10:18:16.988+00	114	\N	1041420528	58.01	1689	0.9
2025-07-01 10:32:02.247+00	114	\N	978202981	58.83	1700	0.9
2025-07-01 10:36:30.256+00	114	\N	1126982881	58.85	1704	0.9
2025-07-01 11:12:49.206+00	114	\N	1126982881	55.81	1731	0.9
2025-07-01 11:19:49.085+00	114	\N	1041420528	58.12	1735	0.9
2025-07-01 11:21:53.934+00	114	\N	1126982881	55.21	1738	0.9
2025-07-01 11:23:54.979+00	114	\N	1126982881	54.64	1740	0.9
2025-07-01 11:25:56.029+00	114	\N	1126982881	54.14	1746	0.9
2025-07-01 11:33:34.331+00	114	\N	978202981	58.9	1749	0.9
2025-07-01 11:35:00.758+00	114	\N	1126982881	53.54	1750	0.9
2025-07-01 11:36:01.292+00	114	\N	1126982881	53.04	1753	0.9
2025-07-01 11:36:31.544+00	114	\N	1126982881	53.8	1754	0.9
2025-07-01 11:38:02.34+00	114	\N	1126982881	54.36	1756	0.9
2025-07-01 11:41:34.173+00	114	\N	1126982881	54.86	1758	0.9
2025-07-01 11:44:05.487+00	114	\N	1126982881	54.3	1760	0.9
2025-07-01 11:49:38.39+00	114	\N	1126982881	53.79	1763	0.9
2025-07-01 11:50:35.111+00	114	\N	1041420528	58.22	1764	0.9
2025-07-01 12:01:14.431+00	114	\N	1126982881	52.92	1774	0.9
2025-07-01 12:03:15.492+00	114	\N	1126982881	52.29	1776	0.9
2025-07-01 12:04:20.364+00	114	\N	978202981	58.87	1777	0.9
2025-07-01 12:05:16.537+00	114	\N	1126982881	51.38	1779	0.9
2025-07-01 12:06:47.332+00	114	\N	1126982881	50.82	1781	0.9
2025-07-01 12:07:47.857+00	114	\N	1126982881	51.43	1782	0.9
2025-07-01 12:14:51.557+00	114	\N	1126982881	50.72	1786	0.9
2025-07-01 12:21:21.174+00	114	\N	1041420528	58.27	1791	0.9
2025-07-01 12:23:26.017+00	114	\N	1126982881	50.18	1793	0.9
2025-07-01 12:28:58.903+00	114	\N	1126982881	49.65	1800	0.9
2025-07-01 12:35:06.409+00	114	\N	978202981	58.86	1802	0.9
2025-07-01 12:52:07.216+00	114	\N	1041420528	58.28	1812	0.9
2025-07-01 12:59:44.949+00	114	\N	1126982881	49.52	1819	0.9
2025-07-01 13:05:52.457+00	114	\N	978202981	58.85	1824	0.9
2025-07-01 13:08:49.676+00	114	\N	1126982881	49.02	1826	0.9
2025-07-01 13:22:53.271+00	114	\N	1041420528	58.27	1833	0.9
2025-07-01 13:27:59.685+00	114	\N	1126982881	49.52	1838	0.9
2025-07-01 13:36:38.549+00	114	\N	978202981	58.82	1845	0.9
2025-07-01 13:44:38.354+00	114	\N	1126982881	49.01	1848	0.9
2025-07-01 13:47:09.663+00	114	\N	1126982881	48.49	1852	0.9
2025-07-01 13:53:39.305+00	114	\N	1041420528	58.29	1854	0.9
2025-07-01 13:57:45.18+00	114	\N	1126982881	48.99	1859	0.9
2025-07-01 14:07:24.585+00	114	\N	978202981	58.8	1867	0.9
2025-07-01 15:25:57.456+00	114	\N	1041420528	58.34	1919	0.9
2025-07-01 15:31:03.865+00	114	\N	1126982881	46.74	1922	0.9
2025-07-01 15:39:42.789+00	114	\N	978202981	58.76	1929	0.9
2025-07-01 15:50:13.848+00	114	\N	1126982881	46.06	1934	0.9
2025-07-01 16:09:23.84+00	114	\N	1126982881	46.05	1948	0.9
2025-07-01 16:10:28.814+00	114	\N	978202981	58.76	1949	0.9
2025-07-01 16:11:55.158+00	114	\N	1126982881	45.43	1951	0.9
2025-07-01 16:27:29.541+00	114	\N	1041420528	58.54	1958	0.9
2025-07-01 16:41:14.864+00	114	\N	978202981	58.79	1967	0.9
2025-07-01 16:42:41.199+00	114	\N	1126982881	45.1	1969	0.9
2025-07-01 16:58:15.577+00	114	\N	1041420528	58.56	1977	0.9
2025-07-01 17:42:46.947+00	114	\N	978202981	58.76	2007	0.9
2025-07-01 17:46:44.602+00	114	\N	1126982881	46.55	2010	0.9
2025-07-01 17:50:16.445+00	114	\N	1126982881	47.05	2012	0.9
2025-07-01 17:59:47.649+00	114	\N	1041420528	58.62	2016	0.9
2025-07-01 18:00:51.974+00	114	\N	1126982881	47.55	2017	0.9
2025-07-01 18:03:53.545+00	114	\N	1126982881	46.98	2021	0.9
2025-07-01 18:05:54.595+00	114	\N	1126982881	46.44	2026	0.9
2025-07-01 18:28:06.187+00	114	\N	1126982881	47.59	2039	0.9
2025-07-01 18:30:33.695+00	114	\N	1041420528	58.71	2041	0.9
2025-07-01 18:44:19.056+00	114	\N	978202981	58.92	2052	0.9
2025-07-01 18:51:18.277+00	114	\N	1126982881	48.09	2057	0.9
2025-07-01 18:59:52.743+00	114	\N	1126982881	48.63	2063	0.9
2025-07-01 19:01:19.765+00	114	\N	1041420528	58.73	2064	0.9
2025-07-01 19:04:55.378+00	114	\N	1126982881	49.2	2068	0.9
2025-07-01 19:13:29.847+00	114	\N	1126982881	49.74	2079	0.9
2025-07-01 19:15:05.085+00	114	\N	978202981	58.89	2080	0.9
2025-07-01 19:24:05.37+00	114	\N	1126982881	50.24	2086	0.9
2025-07-01 19:32:05.819+00	114	\N	1041420528	58.71	2092	0.9
2025-07-01 19:44:15.898+00	114	\N	1126982881	50.78	2101	0.9
2025-07-01 19:45:51.166+00	114	\N	978202981	58.91	2104	0.9
2025-07-01 19:48:48.259+00	114	\N	1126982881	51.3	2106	0.9
2025-07-01 19:53:20.623+00	114	\N	1126982881	51.87	2111	0.9
2025-07-01 20:02:51.875+00	114	\N	1041420528	58.71	2117	0.9
2025-07-01 20:03:25.872+00	114	\N	1126982881	52.88	2118	0.9
2025-07-01 20:04:26.408+00	114	\N	1126982881	52.28	2123	0.9
2025-07-01 20:04:52.92+00	114	\N	1041420528	58.16	2124	0.9
2025-07-01 20:05:53.443+00	114	\N	1041420528	57.53	2127	0.9
2025-07-01 20:06:31.935+00	114	\N	978202981	58.36	2128	0.9
2025-07-01 20:08:24.758+00	114	\N	1041420528	56.93	2132	0.9
2025-07-01 20:09:03.251+00	114	\N	978202981	57.85	2134	0.9
2025-07-01 20:10:56.074+00	114	\N	1041420528	56.41	2136	0.9
2025-07-01 20:12:04.832+00	114	\N	978202981	57.34	2138	0.9
2025-07-01 20:14:58.181+00	114	\N	1041420528	55.91	2142	0.9
2025-07-01 20:16:02.462+00	114	\N	1126982881	52.78	2146	0.9
2025-07-01 20:16:06.931+00	114	\N	978202981	56.81	2147	0.9
2025-07-01 20:21:35.355+00	114	\N	1126982881	53.59	2151	0.9
2025-07-01 20:23:40.876+00	114	\N	978202981	56.31	2155	0.9
2025-07-01 20:25:03.451+00	114	\N	1041420528	55.39	2159	0.9
2025-07-01 20:34:16.391+00	114	\N	978202981	55.8	2167	0.9
2025-07-01 20:41:42.133+00	114	\N	1041420528	54.86	2176	0.9
2025-07-01 20:49:24.303+00	114	\N	978202981	55.29	2178	0.9
2025-07-01 20:52:21.434+00	114	\N	1126982881	53.95	2181	0.9
2025-07-01 21:07:25.539+00	114	\N	1041420528	54.36	2188	0.9
2025-07-01 21:16:03.787+00	114	\N	1126982881	54.46	2198	0.9
2025-07-01 21:20:10.36+00	114	\N	978202981	54.93	2200	0.9
2025-07-01 21:24:07.998+00	114	\N	1126982881	56.84	2205	0.9
2025-07-01 21:24:38.261+00	114	\N	1126982881	54.73	2207	0.9
2025-07-01 21:25:08.526+00	114	\N	1126982881	56.08	2209	0.9
2025-07-01 21:25:38.789+00	114	\N	1126982881	54.77	2211	0.9
2025-07-01 21:36:44.6+00	114	\N	1126982881	57.47	2221	0.9
2025-07-01 21:37:14.863+00	114	\N	1126982881	60.11	2223	0.9
2025-07-01 21:37:45.128+00	114	\N	1126982881	54.92	2225	0.9
2025-07-01 21:38:11.588+00	114	\N	1041420528	54.16	2226	0.9
2025-07-01 21:44:48.81+00	114	\N	1126982881	54.4	2239	0.9
2025-07-01 21:50:56.436+00	114	\N	978202981	54.6	2242	0.9
2025-07-01 22:08:57.611+00	114	\N	1041420528	53.96	2251	0.9
2025-07-02 07:04:06.62+00	114	\N	1041420528	57.92	2651	0.9
2025-07-02 07:04:36.886+00	114	\N	1041420528	56.97	2653	0.9
2025-07-02 07:05:10.941+00	114	\N	1126982881	60.88	2665	0.9
2025-07-02 07:05:37.41+00	114	\N	1041420528	56.37	2666	0.9
2025-07-02 07:06:41.728+00	114	\N	1126982881	60.34	2667	0.9
2025-07-02 07:11:49.187+00	114	\N	978202981	57.43	2670	0.9
2025-07-02 07:13:45.408+00	114	\N	1126982881	59.84	2671	0.9
2025-07-02 07:24:51.203+00	114	\N	1126982881	59.34	2678	0.9
2025-07-02 07:36:23.498+00	114	\N	1041420528	56.3	2687	0.9
2025-07-02 07:42:35.272+00	114	\N	978202981	57.43	2690	0.9
2025-07-02 07:55:06.969+00	114	\N	1126982881	58.84	2698	0.9
2025-07-02 08:07:09.529+00	114	\N	1041420528	56.16	2705	0.9
2025-07-02 08:13:21.367+00	114	\N	978202981	57.55	2708	0.9
2025-07-02 08:25:53.013+00	114	\N	1126982881	58.74	2716	0.9
2025-07-02 08:37:55.546+00	114	\N	1041420528	56.02	2723	0.9
2025-07-02 08:44:07.431+00	114	\N	978202981	57.68	2726	0.9
2025-07-02 08:56:39.079+00	114	\N	1126982881	58.67	2734	0.9
2025-07-02 09:08:41.596+00	114	\N	1041420528	55.89	2741	0.9
2025-07-02 09:14:53.5+00	114	\N	978202981	57.77	2744	0.9
2025-07-02 09:17:19.861+00	114	\N	1126982881	59.28	2750	0.9
2025-07-02 09:17:50.123+00	114	\N	1126982881	60.66	2752	0.9
2025-07-02 09:18:20.394+00	114	\N	1126982881	59.64	2754	0.9
2025-07-02 09:18:50.651+00	114	\N	1126982881	59.12	2758	0.9
2025-07-02 09:19:51.172+00	114	\N	1126982881	58.32	2760	0.9
2025-07-02 09:21:21.962+00	114	\N	1126982881	57.45	2762	0.9
2025-07-02 09:23:53.278+00	114	\N	1126982881	56.91	2769	0.9
2025-07-02 09:25:24.068+00	114	\N	1126982881	57.54	2772	0.9
2025-07-02 09:26:54.854+00	114	\N	1126982881	58.13	2775	0.9
2025-07-02 09:27:25.127+00	114	\N	1126982881	57.3	2777	0.9
2025-07-02 09:28:25.647+00	114	\N	1126982881	56.6	2778	0.9
2025-07-02 09:29:26.166+00	114	\N	1126982881	58.35	2786	0.9
2025-07-02 09:29:56.428+00	114	\N	1126982881	55.97	2787	0.9
2025-07-02 09:32:27.746+00	114	\N	1126982881	55.43	2792	0.9
2025-07-02 09:38:00.653+00	114	\N	1126982881	57.82	2797	0.9
2025-07-02 09:41:02.234+00	114	\N	1126982881	57.72	2810	0.9
2025-07-02 09:41:32.497+00	114	\N	1126982881	56.86	2812	0.9
2025-07-02 09:42:02.763+00	114	\N	1126982881	60.41	2813	0.9
2025-07-02 09:42:33.025+00	114	\N	1126982881	58.69	2815	0.9
2025-07-02 09:43:03.289+00	114	\N	1126982881	59.2	2817	0.9
2025-07-02 09:45:39.553+00	114	\N	978202981	57.84	2827	0.9
2025-07-02 09:45:34.603+00	114	\N	1126982881	60.16	2829	0.9
2025-07-02 09:46:35.125+00	114	\N	1126982881	61.01	2831	0.9
2025-07-02 09:47:05.384+00	114	\N	1126982881	61.55	2833	0.9
2025-07-02 09:47:35.651+00	114	\N	1126982881	62.76	2834	0.9
2025-07-02 09:48:05.913+00	114	\N	1126982881	61.59	2835	0.9
2025-07-02 09:49:36.707+00	114	\N	1126982881	62.12	2841	0.9
2025-07-02 09:55:39.856+00	114	\N	1126982881	60.05	2858	0.9
2025-07-02 09:56:40.381+00	114	\N	1126982881	59.52	2862	0.9
2025-07-02 10:00:42.485+00	114	\N	1126982881	63.06	2867	0.9
2025-07-02 10:01:12.749+00	114	\N	1126982881	68.46	2869	0.9
2025-07-02 10:02:13.273+00	114	\N	1126982881	58.67	2870	0.9
2025-07-02 10:02:43.551+00	114	\N	1126982881	58.14	2874	0.9
2025-07-02 10:04:14.337+00	114	\N	1126982881	57.46	2875	0.9
2025-07-02 10:04:44.598+00	114	\N	1126982881	58.03	2876	0.9
2025-07-02 10:06:45.653+00	114	\N	1126982881	57	2880	0.9
2025-07-02 10:07:15.921+00	114	\N	1126982881	58.26	2881	0.9
2025-07-02 10:08:16.435+00	114	\N	1126982881	57.62	2882	0.9
2025-07-02 10:10:13.665+00	114	\N	1041420528	55.65	2883	0.9
2025-07-02 10:11:18.017+00	114	\N	1126982881	56.55	2886	0.9
2025-07-02 10:11:48.279+00	114	\N	1126982881	55.46	2888	0.9
2025-07-02 10:12:18.545+00	114	\N	1126982881	57.06	2890	0.9
2025-07-02 10:12:48.804+00	114	\N	1126982881	60.69	2892	0.9
2025-07-02 10:13:19.067+00	114	\N	1126982881	59.54	2893	0.9
2025-07-02 10:15:20.109+00	114	\N	1126982881	58.97	2902	0.9
2025-07-02 10:16:25.621+00	114	\N	978202981	57.91	2904	0.9
2025-07-02 10:17:51.427+00	114	\N	1126982881	58.42	2906	0.9
2025-07-02 10:25:55.639+00	114	\N	1126982881	57.92	2914	0.9
2025-07-02 10:40:59.697+00	114	\N	1041420528	55.52	2927	0.9
2025-07-02 10:41:33.79+00	114	\N	1126982881	58.49	2929	0.9
2025-07-02 10:47:11.674+00	114	\N	978202981	57.96	2938	0.9
2025-07-02 11:40:04.303+00	114	\N	1126982881	59.53	2969	0.9
2025-07-02 11:41:04.823+00	114	\N	1126982881	60.04	2972	0.9
2025-07-02 11:42:05.356+00	114	\N	1126982881	59.35	2973	0.9
2025-07-02 11:42:31.786+00	114	\N	1041420528	55.42	2978	0.9
2025-07-02 11:46:07.461+00	114	\N	1126982881	59.86	2991	0.9
2025-07-02 11:46:37.711+00	114	\N	1126982881	60.51	2992	0.9
2025-07-02 11:47:38.235+00	114	\N	1126982881	59.91	2997	0.9
2025-07-02 11:48:43.78+00	114	\N	978202981	57.96	2999	0.9
2025-07-02 11:49:39.285+00	114	\N	1126982881	59.35	3000	0.9
2025-07-02 11:53:41.392+00	114	\N	1126982881	58.85	3001	0.9
2025-07-02 12:08:49.297+00	114	\N	1126982881	58.35	3015	0.9
2025-07-02 12:13:17.844+00	114	\N	1041420528	55.4	3016	0.9
2025-07-02 12:16:23.244+00	114	\N	1126982881	59.3	3021	0.9
2025-07-02 12:18:54.558+00	114	\N	1126982881	58.67	3028	0.9
2025-07-02 12:19:29.814+00	114	\N	978202981	58.04	3032	0.9
2025-07-02 12:21:56.135+00	114	\N	1126982881	58.16	3035	0.9
2025-07-02 12:44:03.891+00	114	\N	1041420528	55.42	3051	0.9
2025-07-02 12:50:15.884+00	114	\N	978202981	58.09	3056	0.9
2025-07-02 12:52:42.194+00	114	\N	1126982881	57.99	3057	0.9
2025-07-02 13:14:49.931+00	114	\N	1041420528	55.42	3069	0.9
2025-07-02 13:21:01.93+00	114	\N	978202981	58.18	3074	0.9
2025-07-02 13:22:57.972+00	114	\N	1126982881	59.04	3077	0.9
2025-07-02 13:25:29.302+00	114	\N	1126982881	58.4	3084	0.9
2025-07-02 13:37:35.611+00	114	\N	1126982881	57.9	3092	0.9
2025-07-02 13:45:36.015+00	114	\N	1041420528	55.5	3098	0.9
2025-07-02 13:51:47.981+00	114	\N	978202981	58.28	3100	0.9
2025-07-02 13:52:43.522+00	114	\N	1126982881	60.3	3102	0.9
2025-07-02 13:53:13.782+00	114	\N	1126982881	61.05	3104	0.9
2025-07-02 13:54:44.57+00	114	\N	1126982881	60.36	3111	0.9
2025-07-02 13:55:14.828+00	114	\N	1126982881	61.02	3114	0.9
2025-07-02 13:56:45.634+00	114	\N	1126982881	60	3116	0.9
2025-07-02 13:58:46.683+00	114	\N	1126982881	61.36	3119	0.9
2025-07-02 14:00:17.48+00	114	\N	1126982881	60.84	3121	0.9
2025-07-02 14:01:48.26+00	114	\N	1126982881	60.23	3126	0.9
2025-07-02 14:04:19.575+00	114	\N	1126982881	59.67	3132	0.9
2025-07-02 14:08:51.938+00	114	\N	1126982881	59.15	3137	0.9
2025-07-02 14:16:22.021+00	114	\N	1041420528	55.57	3143	0.9
2025-07-02 14:17:56.669+00	114	\N	1126982881	58.65	3144	0.9
2025-07-02 14:22:34.002+00	114	\N	978202981	58.33	3148	0.9
2025-07-02 14:47:08.073+00	114	\N	1041420528	55.6	3163	0.9
2025-07-02 14:48:42.737+00	114	\N	1126982881	58.27	3164	0.9
2025-07-02 14:53:20.074+00	114	\N	978202981	58.37	3167	0.9
2025-07-02 15:17:54.106+00	114	\N	1041420528	55.67	3181	0.9
2025-07-02 15:19:28.779+00	114	\N	1126982881	58.12	3182	0.9
2025-07-02 15:24:06.159+00	114	\N	978202981	58.42	3185	0.9
2025-07-02 15:35:06.931+00	114	\N	1126982881	59.98	3193	0.9
2025-07-02 15:36:07.46+00	114	\N	1126982881	66.87	3198	0.9
2025-07-02 15:36:37.725+00	114	\N	1126982881	64.77	3199	0.9
2025-07-02 15:37:07.985+00	114	\N	1126982881	63.66	3201	0.9
2025-07-02 15:37:38.252+00	114	\N	1126982881	62.65	3203	0.9
2025-07-02 15:38:08.518+00	114	\N	1126982881	61.99	3208	0.9
2025-07-02 15:40:09.586+00	114	\N	1126982881	62.74	3211	0.9
2025-07-02 15:41:10.108+00	114	\N	1126982881	61.95	3212	0.9
2025-07-02 15:42:10.633+00	114	\N	1126982881	61.15	3216	0.9
2025-07-02 15:43:41.424+00	114	\N	1126982881	60.5	3217	0.9
2025-07-02 15:45:42.481+00	114	\N	1126982881	60	3222	0.9
2025-07-02 15:48:40.18+00	114	\N	1041420528	55.74	3231	0.9
2025-07-02 15:50:14.843+00	114	\N	1126982881	59.5	3233	0.9
2025-07-02 15:54:52.191+00	114	\N	978202981	58.44	3244	0.9
2025-07-02 15:57:48.777+00	114	\N	1126982881	58.99	3247	0.9
2025-07-02 16:06:53.519+00	114	\N	1126982881	58.48	3256	0.9
2025-07-02 16:19:26.241+00	114	\N	1041420528	55.79	3274	0.9
2025-07-02 16:25:38.242+00	114	\N	978202981	58.49	3282	0.9
2025-07-02 16:35:38.498+00	114	\N	1126982881	57.97	3287	0.9
2025-07-02 16:50:12.264+00	114	\N	1041420528	55.91	3299	0.9
2025-07-02 16:56:24.292+00	114	\N	978202981	58.58	3304	0.9
2025-07-02 17:06:24.535+00	114	\N	1126982881	57.81	3316	0.9
2025-07-02 17:27:10.396+00	114	\N	978202981	58.62	3337	0.9
2025-07-02 17:37:10.572+00	114	\N	1126982881	57.95	3343	0.9
2025-07-02 17:51:44.343+00	114	\N	1041420528	56.03	3351	0.9
2025-07-02 17:57:56.455+00	114	\N	978202981	58.65	3356	0.9
2025-07-02 18:07:56.607+00	114	\N	1126982881	57.96	3361	0.9
2025-07-02 18:22:30.38+00	114	\N	1041420528	56.13	3369	0.9
2025-07-02 18:28:42.515+00	114	\N	978202981	58.71	3376	0.9
2025-07-02 18:38:42.671+00	114	\N	1126982881	57.88	3381	0.9
2025-07-02 18:53:16.432+00	114	\N	1041420528	56.23	3389	0.9
2025-07-02 18:59:28.552+00	114	\N	978202981	58.73	3394	0.9
2025-07-02 19:09:28.689+00	114	\N	1126982881	57.92	3399	0.9
2025-07-02 19:24:02.472+00	114	\N	1041420528	56.3	3407	0.9
2025-07-02 19:30:14.614+00	114	\N	978202981	58.75	3415	0.9
2025-07-02 19:40:14.736+00	114	\N	1126982881	57.96	3421	0.9
2025-07-02 19:45:17.364+00	114	\N	1126982881	57.41	3427	0.9
2025-07-02 19:47:18.416+00	114	\N	1126982881	56.86	3429	0.9
2025-07-02 19:49:49.724+00	114	\N	1126982881	56.35	3430	0.9
2025-07-02 19:52:51.305+00	114	\N	1126982881	55.84	3431	0.9
2025-07-02 19:54:48.503+00	114	\N	1041420528	56.32	3433	0.9
2025-07-02 19:57:23.666+00	114	\N	1126982881	55.28	3437	0.9
2025-07-02 20:01:00.693+00	114	\N	978202981	58.67	3439	0.9
2025-07-02 20:08:29.459+00	114	\N	1126982881	54.76	3444	0.9
2025-07-02 20:14:32.62+00	114	\N	1126982881	54.23	3446	0.9
2025-07-02 20:22:06.572+00	114	\N	1126982881	53.69	3452	0.9
2025-07-02 20:25:34.558+00	114	\N	1041420528	55.97	3457	0.9
2025-07-02 20:31:46.756+00	114	\N	978202981	58.35	3460	0.9
2025-07-02 21:06:59.968+00	114	\N	1126982881	54.41	3484	0.9
2025-07-02 21:16:31.124+00	114	\N	1041420528	55.13	3491	0.9
2025-07-02 21:27:15.708+00	114	\N	978202981	57.54	3497	0.9
2025-07-02 21:37:46.024+00	114	\N	1126982881	54.5	3505	0.9
2025-07-02 21:46:50.761+00	114	\N	1126982881	55.01	3513	0.9
2025-07-02 21:47:17.157+00	114	\N	1041420528	54.88	3514	0.9
2025-07-02 21:58:01.761+00	114	\N	978202981	57.32	3519	0.9
2025-07-02 22:01:54.816+00	114	\N	1041420528	54.38	3520	0.9
2025-07-02 22:17:36.775+00	114	\N	1126982881	55.36	3533	0.9
2025-07-02 22:28:47.828+00	114	\N	978202981	56.87	3540	0.9
2025-07-02 22:29:43.095+00	114	\N	1126982881	55.86	3542	0.9
2025-07-02 22:32:40.862+00	114	\N	1041420528	54.58	3543	0.9
2025-07-02 22:44:50.993+00	114	\N	1126982881	56.36	3555	0.9
2025-07-02 22:51:24.405+00	114	\N	1126982881	56.86	3559	0.9
2025-07-02 22:59:33.883+00	114	\N	978202981	56.93	3564	0.9
2025-07-02 23:03:26.899+00	114	\N	1041420528	54.62	3566	0.9
2025-07-02 23:08:33.353+00	114	\N	1126982881	57.38	3571	0.9
2025-07-02 23:19:39.14+00	114	\N	1126982881	57.88	3581	0.9
2025-07-02 23:30:19.919+00	114	\N	978202981	57.12	3586	0.9
2025-07-02 23:34:12.931+00	114	\N	1041420528	55.07	3589	0.9
2025-07-02 23:43:21.486+00	114	\N	1126982881	58.4	3594	0.9
\.


--
-- Data for Name: _hyper_2_31_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_2_31_chunk ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
2025-07-25 12:07:44.373+00	114	telegraf	1126982881	83.55	3975	1
2025-07-25 12:07:50.399+00	114	telegraf	978202981	61.62	3976	1
2025-07-25 12:08:20.662+00	114	telegraf	978202981	61.12	3979	1
2025-07-25 12:08:44.889+00	114	telegraf	1126982881	82.63	3990	1
2025-07-25 12:09:15.151+00	114	telegraf	1126982881	81.7	3991	1
2025-07-25 12:09:45.428+00	114	telegraf	1126982881	80.52	3992	1
2025-07-25 12:10:15.68+00	114	telegraf	1126982881	79.27	3994	1
2025-07-25 12:10:45.95+00	114	telegraf	1126982881	78.06	3996	1
2025-07-25 12:11:16.207+00	114	telegraf	1126982881	76.98	3997	1
2025-07-25 12:11:46.473+00	114	telegraf	1126982881	76.1	3998	1
2025-07-25 12:12:16.736+00	114	telegraf	1126982881	75.3	3999	1
2025-07-25 12:12:47.003+00	114	telegraf	1126982881	74.59	4000	1
2025-07-25 12:13:17.265+00	114	telegraf	1126982881	74.02	4002	1
2025-07-25 12:54:38.848+00	114	telegraf	1126982881	66.93	4045	1
2025-07-25 12:55:09.108+00	114	telegraf	1126982881	65.64	4051	1
2025-07-25 12:56:39.896+00	114	telegraf	1126982881	65.08	4059	1
2025-07-25 12:58:10.687+00	114	telegraf	1126982881	64.58	4060	1
2025-07-25 13:00:04.325+00	114	telegraf	1041420528	60.47	4061	1
2025-07-25 13:02:43.057+00	114	telegraf	1126982881	64.07	4063	1
2025-07-25 13:09:52.77+00	114	telegraf	978202981	60.93	4072	1
2025-07-25 13:14:49.365+00	114	telegraf	1126982881	63.54	4076	1
2025-07-25 13:30:50.359+00	114	telegraf	1041420528	60.22	4085	1
2025-07-25 13:40:38.806+00	114	telegraf	978202981	60.65	4091	1
2025-07-25 13:45:35.451+00	114	telegraf	1126982881	63.03	4095	1
2025-07-25 13:50:30.648+00	114	telegraf	1041420528	59.72	4099	1
2025-07-25 13:50:44.078+00	114	telegraf	978202981	60.11	4100	1
2025-07-25 14:04:45.445+00	114	telegraf	1126982881	62.5	4106	1
2025-07-25 14:13:25.909+00	114	telegraf	978202981	60.63	4113	1
2025-07-25 14:21:16.655+00	114	telegraf	1041420528	60.06	4119	1
2025-07-25 14:21:24.145+00	114	telegraf	1126982881	63	4120	1
2025-07-25 14:21:30.115+00	114	telegraf	978202981	61.14	4121	1
2025-07-25 14:29:04.06+00	114	telegraf	978202981	61.68	4126	1
2025-07-25 14:30:21.393+00	114	telegraf	1041420528	60.56	4127	1
2025-07-25 14:32:29.962+00	114	telegraf	1126982881	63.5	4128	1
2025-07-25 14:42:10.876+00	114	telegraf	978202981	61.16	4134	1
2025-07-25 14:47:43.781+00	114	telegraf	978202981	60.66	4141	1
2025-07-25 14:49:38.89+00	114	telegraf	1126982881	62.98	4142	1
2025-07-25 14:50:01.612+00	114	telegraf	1041420528	60.05	4143	1
2025-07-25 14:52:46.396+00	114	telegraf	978202981	60.14	4144	1
2025-07-25 14:56:35.025+00	114	telegraf	1041420528	59.51	4148	1
2025-07-25 15:00:44.67+00	114	telegraf	1126982881	62.48	4150	1
2025-07-25 15:03:52.184+00	114	telegraf	978202981	59.6	4151	1
2025-07-25 15:07:10.554+00	114	telegraf	1041420528	59.01	4155	1
2025-07-25 15:10:19.651+00	114	telegraf	1126982881	61.94	4157	1
2025-07-25 15:18:29.815+00	114	telegraf	978202981	59.03	4165	1
2025-07-25 15:20:47.642+00	114	telegraf	1041420528	58.51	4166	1
2025-07-25 15:23:32.442+00	114	telegraf	978202981	58.48	4167	1
2025-07-25 15:23:56.747+00	114	telegraf	1126982881	61.44	4168	1
2025-07-25 15:27:34.568+00	114	telegraf	978202981	59.09	4172	1
2025-07-25 15:30:05.884+00	114	telegraf	978202981	58.53	4174	1
2025-07-25 15:33:54.481+00	114	telegraf	1041420528	58	4175	1
2025-07-25 15:44:37.556+00	114	telegraf	1126982881	60.94	4182	1
2025-07-25 15:49:46.149+00	114	telegraf	978202981	59.3	4188	1
2025-07-25 15:51:16.953+00	114	telegraf	978202981	59.88	4189	1
2025-07-25 15:52:11.506+00	114	telegraf	1126982881	61.44	4190	1
2025-07-25 15:53:48.261+00	114	telegraf	978202981	59.37	4191	1
2025-07-25 16:04:40.531+00	114	telegraf	1041420528	58.34	4197	1
2025-07-25 16:22:57.551+00	114	telegraf	1126982881	61.58	4208	1
2025-07-25 16:24:34.316+00	114	telegraf	978202981	59.55	4209	1
2025-07-25 16:33:55.818+00	114	telegraf	1041420528	58.85	4214	1
2025-07-25 16:39:11.929+00	114	telegraf	978202981	60.09	4218	1
2025-07-25 16:40:12.461+00	114	telegraf	978202981	60.75	4219	1
2025-07-25 16:40:36.769+00	114	telegraf	1126982881	62.19	4220	1
2025-07-25 16:42:00.013+00	114	telegraf	1041420528	59.43	4222	1
2025-07-25 17:10:52.549+00	114	telegraf	1126982881	62.71	4237	1
2025-07-25 17:10:58.497+00	114	telegraf	978202981	60.97	4238	1
2025-07-25 17:12:46.088+00	114	telegraf	1041420528	59.87	4242	1
2025-07-25 17:41:38.62+00	114	telegraf	1126982881	63	4258	1
2025-07-25 17:41:44.543+00	114	telegraf	978202981	60.97	4259	1
2025-07-25 17:43:32.101+00	114	telegraf	1041420528	60.07	4261	1
2025-07-25 18:12:24.683+00	114	telegraf	1126982881	62.76	4276	1
2025-07-25 18:12:30.59+00	114	telegraf	978202981	60.64	4277	1
2025-07-25 18:14:18.165+00	114	telegraf	1041420528	59.75	4279	1
2025-07-25 18:43:10.774+00	114	telegraf	1126982881	62.78	4295	1
2025-07-25 18:43:16.628+00	114	telegraf	978202981	60.93	4296	1
2025-07-25 18:45:04.187+00	114	telegraf	1041420528	59.84	4299	1
2025-07-25 19:13:56.829+00	114	telegraf	1126982881	62.96	4314	1
2025-07-25 19:14:02.661+00	114	telegraf	978202981	60.93	4315	1
2025-07-25 19:15:50.246+00	114	telegraf	1041420528	59.93	4317	1
2025-07-25 19:31:41.874+00	114	telegraf	978202981	61.43	4327	1
2025-07-25 19:39:02.327+00	114	telegraf	1041420528	60.44	4332	1
2025-07-25 19:44:42.888+00	114	telegraf	1126982881	63.46	4334	1
2025-07-25 20:02:27.957+00	114	telegraf	978202981	61.57	4345	1
2025-07-25 20:09:48.381+00	114	telegraf	1041420528	60.68	4351	1
2025-07-25 20:15:28.978+00	114	telegraf	1126982881	63.76	4353	1
2025-07-25 20:33:14.008+00	114	telegraf	978202981	61.93	4363	1
2025-07-25 20:40:34.428+00	114	telegraf	1041420528	60.98	4369	1
2025-07-25 20:46:14.995+00	114	telegraf	1126982881	63.81	4373	1
2025-07-25 21:04:00.041+00	114	telegraf	978202981	61.67	4381	1
2025-07-25 21:11:20.459+00	114	telegraf	1041420528	60.84	4387	1
2025-07-25 21:17:01.051+00	114	telegraf	1126982881	63.6	4393	1
2025-07-25 21:34:46.086+00	114	telegraf	978202981	61.53	4403	1
2025-07-25 21:42:06.503+00	114	telegraf	1041420528	60.71	4408	1
2025-07-25 21:47:47.113+00	114	telegraf	1126982881	63.43	4412	1
2025-07-25 22:05:32.117+00	114	telegraf	978202981	61.18	4421	1
2025-07-25 22:12:52.552+00	114	telegraf	1041420528	60.47	4426	1
2025-07-25 22:18:33.169+00	114	telegraf	1126982881	63.24	4430	1
2025-07-25 22:36:18.167+00	114	telegraf	978202981	61.1	4442	1
2025-07-25 22:43:38.624+00	114	telegraf	1041420528	60.35	4445	1
2025-07-25 22:49:19.199+00	114	telegraf	1126982881	63.15	4449	1
2025-07-25 23:07:04.195+00	114	telegraf	978202981	60.97	4460	1
2025-07-25 23:14:24.68+00	114	telegraf	1041420528	60.21	4463	1
2025-07-25 23:20:05.277+00	114	telegraf	1126982881	62.98	4467	1
2025-07-25 23:37:50.234+00	114	telegraf	978202981	60.79	4478	1
2025-07-25 23:45:10.714+00	114	telegraf	1041420528	60.07	4482	1
2025-07-25 23:50:51.306+00	114	telegraf	1126982881	62.84	4485	1
2025-07-26 00:08:36.266+00	114	telegraf	978202981	60.71	4496	1
2025-07-26 00:15:56.75+00	114	telegraf	1041420528	59.94	4500	1
2025-07-26 00:21:37.367+00	114	telegraf	1126982881	62.77	4503	1
2025-07-26 00:39:22.313+00	114	telegraf	978202981	60.57	4514	1
2025-07-26 00:46:42.795+00	114	telegraf	1041420528	59.84	4520	1
2025-07-26 00:52:23.405+00	114	telegraf	1126982881	62.64	4521	1
2025-07-26 01:10:08.358+00	114	telegraf	978202981	60.44	4532	1
2025-07-26 01:17:28.826+00	114	telegraf	1041420528	59.75	4540	1
2025-07-26 01:23:09.512+00	114	telegraf	1126982881	62.54	4541	1
2025-07-26 01:40:54.455+00	114	telegraf	978202981	60.47	4553	1
2025-07-26 01:48:14.867+00	114	telegraf	1041420528	59.72	4559	1
2025-07-26 01:53:55.57+00	114	telegraf	1126982881	62.55	4560	1
2025-07-26 02:11:40.509+00	114	telegraf	978202981	60.43	4571	1
2025-07-26 02:19:00.906+00	114	telegraf	1041420528	59.68	4577	1
2025-07-26 02:24:41.626+00	114	telegraf	1126982881	62.52	4579	1
2025-07-26 02:42:26.553+00	114	telegraf	978202981	60.37	4590	1
2025-07-26 02:49:46.983+00	114	telegraf	1041420528	59.65	4596	1
2025-07-26 02:55:27.695+00	114	telegraf	1126982881	62.47	4598	1
2025-07-26 03:13:12.585+00	114	telegraf	978202981	60.33	4608	1
2025-07-26 03:20:33.021+00	114	telegraf	1041420528	59.59	4614	1
2025-07-26 03:26:13.747+00	114	telegraf	1126982881	62.41	4618	1
2025-07-26 03:43:58.643+00	114	telegraf	978202981	60.25	4626	1
2025-07-26 03:51:19.072+00	114	telegraf	1041420528	59.52	4632	1
2025-07-26 03:56:59.798+00	114	telegraf	1126982881	62.37	4636	1
2025-07-26 04:14:44.67+00	114	telegraf	978202981	60.25	4644	1
2025-07-26 04:22:05.105+00	114	telegraf	1041420528	59.54	4650	1
2025-07-26 04:27:45.852+00	114	telegraf	1126982881	62.36	4654	1
2025-07-26 04:45:30.7+00	114	telegraf	978202981	60.25	4663	1
2025-07-26 04:52:51.137+00	114	telegraf	1041420528	59.53	4668	1
2025-07-26 04:58:31.921+00	114	telegraf	1126982881	62.37	4672	1
2025-07-26 05:16:16.749+00	114	telegraf	978202981	60.27	4683	1
2025-07-26 05:23:37.177+00	114	telegraf	1041420528	59.54	4688	1
2025-07-26 05:29:17.967+00	114	telegraf	1126982881	62.37	4693	1
2025-07-26 05:47:02.799+00	114	telegraf	978202981	60.29	4704	1
2025-07-26 05:54:23.225+00	114	telegraf	1041420528	59.59	4707	1
2025-07-26 06:00:03.993+00	114	telegraf	1126982881	62.42	4711	1
2025-07-26 06:17:48.841+00	114	telegraf	978202981	60.4	4722	1
2025-07-26 06:25:09.238+00	114	telegraf	1041420528	59.72	4726	1
2025-07-26 06:30:50.053+00	114	telegraf	1126982881	62.54	4730	1
2025-07-26 06:48:34.876+00	114	telegraf	978202981	60.72	4741	1
2025-07-26 06:55:55.282+00	114	telegraf	1041420528	59.95	4745	1
2025-07-26 07:01:36.083+00	114	telegraf	1126982881	62.67	4748	1
2025-07-26 07:19:20.898+00	114	telegraf	978202981	61.05	4759	1
2025-07-26 07:26:41.31+00	114	telegraf	1041420528	60.28	4765	1
2025-07-26 07:32:22.13+00	114	telegraf	1126982881	62.95	4766	1
2025-07-26 07:50:06.932+00	114	telegraf	978202981	61.2	4777	1
2025-07-26 07:57:27.362+00	114	telegraf	1041420528	60.46	4783	1
2025-07-26 08:03:08.196+00	114	telegraf	1126982881	63.18	4784	1
2025-07-26 08:20:53.015+00	114	telegraf	978202981	61.23	4795	1
2025-07-26 08:28:13.393+00	114	telegraf	1041420528	60.55	4801	1
2025-07-26 08:33:54.262+00	114	telegraf	1126982881	63.17	4802	1
2025-07-26 08:51:39.067+00	114	telegraf	978202981	61.42	4813	1
2025-07-26 08:58:59.441+00	114	telegraf	1041420528	60.76	4819	1
2025-07-26 09:04:40.318+00	114	telegraf	1126982881	63.35	4820	1
2025-07-26 09:22:25.104+00	114	telegraf	978202981	61.28	4831	1
2025-07-26 09:29:45.474+00	114	telegraf	1041420528	60.67	4839	1
2025-07-26 09:35:01.673+00	114	telegraf	978202981	61.79	4842	1
2025-07-26 09:35:26.387+00	114	telegraf	1126982881	63.46	4843	1
2025-07-26 09:44:06.428+00	114	telegraf	978202981	62.32	4850	1
2025-07-26 09:44:23.099+00	114	telegraf	1041420528	61.21	4851	1
2025-07-26 09:50:34.276+00	114	telegraf	1126982881	63.99	4856	1
2025-07-26 10:14:52.496+00	114	telegraf	978202981	62.54	4869	1
2025-07-26 10:15:09.135+00	114	telegraf	1041420528	61.68	4870	1
2025-07-26 10:21:20.356+00	114	telegraf	1126982881	64.37	4874	1
2025-07-26 10:45:38.541+00	114	telegraf	978202981	62.8	4888	1
2025-07-26 10:45:55.17+00	114	telegraf	1041420528	61.88	4889	1
2025-07-26 10:52:06.398+00	114	telegraf	1126982881	64.64	4893	1
2025-07-26 11:16:24.579+00	114	telegraf	978202981	63.1	4908	1
2025-07-26 11:16:41.204+00	114	telegraf	1041420528	62.24	4909	1
2025-07-26 11:22:52.451+00	114	telegraf	1126982881	64.83	4911	1
2025-07-26 11:47:10.625+00	114	telegraf	978202981	63.12	4926	1
2025-07-26 11:47:27.304+00	114	telegraf	1041420528	62.34	4927	1
2025-07-26 11:53:38.511+00	114	telegraf	1126982881	65.04	4929	1
2025-07-26 12:17:56.679+00	114	telegraf	978202981	63.33	4944	1
2025-07-26 12:18:13.359+00	114	telegraf	1041420528	62.5	4945	1
2025-07-26 12:24:24.565+00	114	telegraf	1126982881	65.2	4947	1
2025-07-26 12:48:42.708+00	114	telegraf	978202981	63.14	4963	1
2025-07-26 12:48:59.4+00	114	telegraf	1041420528	62.38	4964	1
2025-07-26 12:55:10.665+00	114	telegraf	1126982881	65.01	4967	1
2025-07-26 13:14:56.392+00	114	telegraf	978202981	62.64	4975	1
2025-07-26 13:19:45.433+00	114	telegraf	1041420528	62.02	4982	1
2025-07-26 13:25:56.721+00	114	telegraf	1126982881	64.66	4985	1
2025-07-26 13:45:42.411+00	114	telegraf	978202981	62.39	4996	1
2025-07-26 13:50:31.489+00	114	telegraf	1041420528	61.87	5007	1
2025-07-26 13:56:42.745+00	114	telegraf	1126982881	64.47	5011	1
2025-07-26 14:16:28.466+00	114	telegraf	978202981	62.24	5019	1
2025-07-26 14:21:17.565+00	114	telegraf	1041420528	61.74	5025	1
2025-07-26 14:27:28.806+00	114	telegraf	1126982881	64.21	5029	1
2025-07-26 14:43:06.988+00	114	telegraf	1126982881	64.77	5039	1
2025-07-26 14:43:37.247+00	114	telegraf	1126982881	66.44	5042	1
2025-07-26 14:44:07.505+00	114	telegraf	1126982881	65.82	5043	1
2025-07-26 14:45:08.032+00	114	telegraf	1126982881	65.03	5051	1
2025-07-26 14:47:14.499+00	114	telegraf	978202981	62.09	5052	1
2025-07-26 14:47:39.348+00	114	telegraf	1126982881	64.52	5053	1
2025-07-26 14:52:03.601+00	114	telegraf	1041420528	61.62	5060	1
2025-07-26 15:18:00.553+00	114	telegraf	978202981	61.91	5071	1
2025-07-26 15:18:25.402+00	114	telegraf	1126982881	64.06	5072	1
2025-07-26 15:22:49.682+00	114	telegraf	1041420528	61.46	5078	1
2025-07-26 15:48:46.599+00	114	telegraf	978202981	61.74	5090	1
2025-07-26 15:49:11.439+00	114	telegraf	1126982881	63.93	5091	1
2025-07-26 15:53:35.717+00	114	telegraf	1041420528	61.3	5096	1
2025-07-26 16:19:32.652+00	114	telegraf	978202981	61.67	5108	1
2025-07-26 16:19:57.486+00	114	telegraf	1126982881	63.91	5109	1
2025-07-26 16:24:21.787+00	114	telegraf	1041420528	61.21	5116	1
2025-07-26 16:50:18.673+00	114	telegraf	978202981	61.55	5126	1
2025-07-26 16:50:43.53+00	114	telegraf	1126982881	63.81	5127	1
2025-07-26 16:55:07.825+00	114	telegraf	1041420528	61.16	5134	1
2025-07-26 17:21:04.704+00	114	telegraf	978202981	62.02	5144	1
2025-07-26 17:21:29.592+00	114	telegraf	1126982881	64.1	5145	1
2025-07-26 17:25:53.868+00	114	telegraf	1041420528	61.37	5152	1
2025-07-26 17:51:50.757+00	114	telegraf	978202981	62.24	5165	1
2025-07-26 17:52:15.656+00	114	telegraf	1126982881	64.36	5166	1
2025-07-26 17:56:39.908+00	114	telegraf	1041420528	61.75	5173	1
2025-07-26 18:21:06.009+00	114	telegraf	978202981	62.78	5183	1
2025-07-26 18:23:01.703+00	114	telegraf	1126982881	64.74	5184	1
2025-07-26 18:27:25.945+00	114	telegraf	1041420528	62.06	5193	1
2025-07-26 18:50:21.26+00	114	telegraf	978202981	63.32	5208	1
2025-07-26 18:53:47.74+00	114	telegraf	1126982881	65.12	5210	1
2025-07-26 18:58:11.999+00	114	telegraf	1041420528	62.56	5218	1
2025-07-26 19:20:06.766+00	114	telegraf	978202981	63.82	5226	1
2025-07-26 19:24:33.803+00	114	telegraf	1126982881	65.5	5229	1
2025-07-26 19:28:58.043+00	114	telegraf	1041420528	62.82	5236	1
2025-07-26 19:38:16.22+00	114	telegraf	978202981	63.31	5240	1
2025-07-26 19:45:50.164+00	114	telegraf	978202981	62.8	5243	1
2025-07-26 19:55:19.889+00	114	telegraf	1126982881	65.17	5248	1
2025-07-26 19:55:41.967+00	114	telegraf	1041420528	62.32	5249	1
2025-07-26 20:16:36.202+00	114	telegraf	978202981	62.7	5261	1
2025-07-26 20:26:05.913+00	114	telegraf	1126982881	64.94	5266	1
2025-07-26 20:26:28.029+00	114	telegraf	1041420528	62.1	5267	1
2025-07-26 20:47:22.293+00	114	telegraf	978202981	62.58	5279	1
2025-07-26 20:56:51.955+00	114	telegraf	1126982881	64.82	5288	1
2025-07-26 20:57:14.071+00	114	telegraf	1041420528	62.03	5289	1
2025-07-26 21:18:08.34+00	114	telegraf	978202981	62.27	5301	1
2025-07-26 21:27:38.011+00	114	telegraf	1126982881	64.63	5306	1
2025-07-26 21:28:00.116+00	114	telegraf	1041420528	61.78	5307	1
2025-07-26 21:48:54.389+00	114	telegraf	978202981	62.28	5323	1
2025-07-26 21:58:24.094+00	114	telegraf	1126982881	64.66	5331	1
2025-07-26 21:58:46.146+00	114	telegraf	1041420528	61.81	5332	1
\.


--
-- Data for Name: _hyper_2_8_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_2_8_chunk ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
2025-07-03 00:01:05.988+00	114	\N	978202981	57.31	3605	0.9
2025-07-03 00:04:58.984+00	114	\N	1041420528	55.17	3607	0.9
2025-07-03 07:30:30.421+00	114	\N	978202981	60.43	3934	0.9
2025-07-03 07:33:26.676+00	114	\N	1126982881	62.71	3938	0.9
2025-07-03 07:35:57.991+00	114	\N	1126982881	63.25	3942	0.9
2025-07-03 07:40:30.349+00	114	\N	1126982881	63.78	3947	0.9
2025-07-03 07:43:58.453+00	114	\N	1041420528	59.2	3948	0.9
2025-07-03 07:44:32.453+00	114	\N	1126982881	64.38	3949	0.9
2025-07-03 07:50:05.332+00	114	\N	1126982881	64.93	3954	0.9
2025-07-03 07:55:38.234+00	114	\N	1126982881	65.45	3958	0.9
2025-07-03 08:01:16.484+00	114	\N	978202981	60.62	3963	0.9
2025-07-03 08:01:41.382+00	114	\N	1126982881	65.95	3964	0.9
2025-07-03 08:14:44.54+00	114	\N	1041420528	59.2	3969	0.9
2025-07-03 08:15:18.482+00	114	\N	1126982881	66.48	3971	0.9
2025-07-03 08:28:55.593+00	114	\N	1126982881	67	3981	0.9
2025-07-03 08:32:02.549+00	114	\N	978202981	60.67	3983	0.9
2025-07-03 08:45:30.569+00	114	\N	1041420528	59.22	3990	0.9
2025-07-03 08:46:04.519+00	114	\N	1126982881	67.54	3991	0.9
2025-07-03 09:01:12.416+00	114	\N	1126982881	68.04	4001	0.9
2025-07-03 09:02:48.57+00	114	\N	978202981	60.67	4002	0.9
2025-07-03 09:16:16.607+00	114	\N	1041420528	59.18	4011	0.9
2025-07-03 09:31:58.454+00	114	\N	1126982881	67.86	4021	0.9
2025-07-03 09:33:34.634+00	114	\N	978202981	60.64	4023	0.9
2025-07-03 09:47:02.674+00	114	\N	1041420528	59.15	4032	0.9
2025-07-03 09:55:10.528+00	114	\N	1126982881	67.36	4037	0.9
2025-07-03 10:03:14.743+00	114	\N	1126982881	66.84	4043	0.9
2025-07-03 10:04:20.673+00	114	\N	978202981	60.69	4044	0.9
2025-07-03 10:17:48.705+00	114	\N	1041420528	59.08	4051	0.9
2025-07-03 10:32:29.996+00	114	\N	1126982881	66.32	4061	0.9
2025-07-03 10:35:06.73+00	114	\N	978202981	60.71	4062	0.9
2025-07-03 10:48:34.741+00	114	\N	1041420528	59.02	4072	0.9
2025-07-03 10:58:43.674+00	114	\N	1126982881	65.79	4077	0.9
2025-07-03 11:05:52.795+00	114	\N	978202981	60.72	4085	0.9
2025-07-03 11:12:20.764+00	114	\N	1126982881	65.29	4087	0.9
2025-07-03 11:19:20.788+00	114	\N	1041420528	59	4092	0.9
2025-07-03 11:28:29.172+00	114	\N	1126982881	64.79	4097	0.9
2025-07-03 11:36:38.849+00	114	\N	978202981	60.82	4105	0.9
2025-07-03 11:47:08.9+00	114	\N	1126982881	64.21	4112	0.9
2025-07-03 11:50:06.82+00	114	\N	1041420528	58.97	4114	0.9
2025-07-03 12:07:24.885+00	114	\N	978202981	60.79	4125	0.9
2025-07-03 12:17:54.94+00	114	\N	1126982881	63.88	4132	0.9
2025-07-03 12:20:52.865+00	114	\N	1041420528	58.82	4134	0.9
2025-07-03 12:34:33.622+00	114	\N	1126982881	63.37	4142	0.9
2025-07-03 12:38:10.93+00	114	\N	978202981	60.8	4145	0.9
2025-07-03 12:50:11.773+00	114	\N	1126982881	62.87	4152	0.9
2025-07-03 12:51:38.9+00	114	\N	1041420528	58.75	4153	0.9
2025-07-03 14:42:40.404+00	114	\N	1126982881	61.72	4223	0.9
2025-07-03 14:53:46.193+00	114	\N	1126982881	61.21	4228	0.9
2025-07-03 14:54:43.074+00	114	\N	1041420528	58.24	4229	0.9
2025-07-03 15:12:01.166+00	114	\N	978202981	60.68	4241	0.9
2025-07-03 15:24:32.212+00	114	\N	1126982881	60.9	4246	0.9
2025-07-03 15:25:29.108+00	114	\N	1041420528	58.31	4249	0.9
2025-07-03 15:42:47.223+00	114	\N	978202981	60.75	4259	0.9
2025-07-03 15:52:43.327+00	114	\N	1041420528	59.33	4268	0.9
2025-07-03 15:53:43.858+00	114	\N	1041420528	58.63	4276	0.9
2025-07-03 15:55:18.269+00	114	\N	1126982881	60.73	4280	0.9
2025-07-03 16:06:50.689+00	114	\N	1041420528	59.34	4288	0.9
2025-07-03 16:13:33.276+00	114	\N	978202981	60.49	4294	0.9
2025-07-03 16:13:58+00	114	\N	1126982881	61.25	4297	0.9
2025-07-03 16:25:00.163+00	114	\N	1041420528	59.86	4302	0.9
2025-07-03 16:37:40.384+00	114	\N	1126982881	61.76	4309	0.9
2025-07-03 16:44:19.315+00	114	\N	978202981	60.42	4316	0.9
2025-07-03 16:55:46.196+00	114	\N	1041420528	59.92	4320	0.9
2025-07-03 17:08:26.411+00	114	\N	1126982881	62.25	4327	0.9
2025-07-03 17:15:05.372+00	114	\N	978202981	60.43	4334	0.9
2025-07-03 17:26:32.276+00	114	\N	1041420528	60.11	4338	0.9
2025-07-03 17:39:12.455+00	114	\N	1126982881	62.27	4345	0.9
2025-07-03 17:45:51.398+00	114	\N	978202981	60.48	4352	0.9
2025-07-03 17:57:18.321+00	114	\N	1041420528	60	4357	0.9
2025-07-03 18:09:58.497+00	114	\N	1126982881	62.29	4364	0.9
2025-07-03 18:16:37.453+00	114	\N	978202981	60.36	4372	0.9
2025-07-03 18:25:36.662+00	114	\N	1126982881	62.89	4377	0.9
2025-07-03 18:26:37.187+00	114	\N	1126982881	63.6	4379	0.9
2025-07-03 18:27:07.449+00	114	\N	1126982881	64.64	4381	0.9
2025-07-03 18:28:04.372+00	114	\N	1041420528	60.01	4383	0.9
2025-07-03 18:28:07.967+00	114	\N	1126982881	63.71	4384	0.9
2025-07-03 18:29:08.494+00	114	\N	1126982881	63.04	4389	0.9
2025-07-03 18:33:10.603+00	114	\N	1126982881	62.46	4395	0.9
2025-07-03 18:34:41.388+00	114	\N	1126982881	63.29	4399	0.9
2025-07-03 18:35:41.913+00	114	\N	1126982881	62.63	4404	0.9
2025-07-03 18:38:43.489+00	114	\N	1126982881	62.12	4406	0.9
2025-07-03 18:44:46.653+00	114	\N	1126982881	61.59	4415	0.9
2025-07-03 18:47:23.485+00	114	\N	978202981	60.36	4417	0.9
2025-07-03 18:58:50.402+00	114	\N	1041420528	60.2	4424	0.9
2025-07-03 19:15:32.69+00	114	\N	1126982881	61.38	4440	0.9
2025-07-03 19:18:09.523+00	114	\N	978202981	60.45	4441	0.9
2025-07-03 19:29:36.448+00	114	\N	1041420528	60.37	4449	0.9
2025-07-03 19:46:18.73+00	114	\N	1126982881	61.61	4470	0.9
2025-07-03 19:48:55.56+00	114	\N	978202981	60.69	4472	0.9
2025-07-03 20:00:22.479+00	114	\N	1041420528	60.58	4477	0.9
2025-07-03 20:17:04.751+00	114	\N	1126982881	61.95	4491	0.9
2025-07-03 20:19:41.595+00	114	\N	978202981	60.7	4492	0.9
2025-07-03 20:31:08.524+00	114	\N	1041420528	60.62	4497	0.9
2025-07-03 20:34:13.683+00	114	\N	1126982881	62.78	4502	0.9
2025-07-03 20:35:44.476+00	114	\N	1126982881	62.15	4506	0.9
2025-07-03 20:38:15.79+00	114	\N	1126982881	63.25	4510	0.9
2025-07-03 20:38:46.05+00	114	\N	1126982881	62.75	4514	0.9
2025-07-03 20:39:46.581+00	114	\N	1126982881	62.21	4515	0.9
2025-07-03 20:50:27.626+00	114	\N	978202981	60.68	4526	0.9
2025-07-03 20:50:52.365+00	114	\N	1126982881	61.71	4527	0.9
2025-07-03 21:01:54.568+00	114	\N	1041420528	60.87	4532	0.9
2025-07-03 21:09:01.823+00	114	\N	1126982881	62.21	4542	0.9
2025-07-03 21:16:05.494+00	114	\N	1126982881	61.7	4555	0.9
2025-07-03 21:18:36.811+00	114	\N	1126982881	62.52	4558	0.9
2025-07-03 21:21:08.145+00	114	\N	1126982881	61.96	4566	0.9
2025-07-03 21:21:13.694+00	114	\N	978202981	60.84	4568	0.9
2025-07-03 21:32:40.615+00	114	\N	1041420528	61.05	4579	0.9
2025-07-03 21:51:54.191+00	114	\N	1126982881	61.82	4595	0.9
2025-07-03 21:51:59.734+00	114	\N	978202981	61.09	4596	0.9
2025-07-03 22:03:26.649+00	114	\N	1041420528	60.97	4612	0.9
2025-07-03 22:16:06.806+00	114	\N	1126982881	63.27	4622	0.9
2025-07-03 22:17:37.603+00	114	\N	1126982881	62.62	4628	0.9
2025-07-03 22:21:09.444+00	114	\N	1126982881	63.98	4633	0.9
2025-07-03 22:22:09.97+00	114	\N	1126982881	63.16	4638	0.9
2025-07-03 22:22:45.776+00	114	\N	978202981	61.22	4639	0.9
2025-07-03 22:23:40.744+00	114	\N	1126982881	62.66	4641	0.9
2025-07-03 22:27:42.848+00	114	\N	1126982881	62.14	4649	0.9
2025-07-03 22:28:43.377+00	114	\N	1126982881	63.35	4651	0.9
2025-07-03 22:29:43.902+00	114	\N	1126982881	62.6	4655	0.9
2025-07-03 22:31:44.952+00	114	\N	1126982881	62.09	4656	0.9
2025-07-03 22:32:45.474+00	114	\N	1126982881	63	4658	0.9
2025-07-03 22:33:15.738+00	114	\N	1126982881	64.19	4660	0.9
2025-07-03 22:34:12.708+00	114	\N	1041420528	60.88	4666	0.9
2025-07-03 22:34:16.264+00	114	\N	1126982881	63.52	4667	0.9
2025-07-03 22:36:47.573+00	114	\N	1126982881	62.75	4673	0.9
2025-07-03 22:40:19.417+00	114	\N	1126982881	62.25	4676	0.9
2025-07-03 22:41:46.654+00	114	\N	1041420528	61.39	4677	0.9
2025-07-03 22:53:31.814+00	114	\N	978202981	61.6	4687	0.9
2025-07-03 23:04:01.762+00	114	\N	1126982881	63.05	4701	0.9
2025-07-03 23:08:03.875+00	114	\N	1126982881	62.55	4706	0.9
2025-07-03 23:12:32.684+00	114	\N	1041420528	61.13	4712	0.9
2025-07-03 23:16:38.354+00	114	\N	1126982881	63.06	4717	0.9
2025-07-03 23:20:40.458+00	114	\N	1126982881	65.1	4731	0.9
2025-07-03 23:21:40.987+00	114	\N	1126982881	64.21	4733	0.9
2025-07-03 23:22:11.25+00	114	\N	1126982881	64.71	4734	0.9
2025-07-03 23:24:12.301+00	114	\N	1126982881	64.16	4745	0.9
2025-07-03 23:24:17.859+00	114	\N	978202981	61.47	4746	0.9
2025-07-03 23:25:12.832+00	114	\N	1126982881	63.5	4748	0.9
2025-07-03 23:26:43.614+00	114	\N	1126982881	62.86	4753	0.9
2025-07-03 23:28:44.671+00	114	\N	1126982881	62.3	4755	0.9
2025-07-03 23:31:15.977+00	114	\N	1126982881	63.28	4757	0.9
2025-07-03 23:31:46.239+00	114	\N	1126982881	63.8	4759	0.9
2025-07-03 23:34:47.814+00	114	\N	1126982881	63.13	4764	0.9
2025-07-03 23:35:48.347+00	114	\N	1126982881	62.62	4768	0.9
2025-07-03 23:37:49.396+00	114	\N	1126982881	62.08	4772	0.9
2025-07-03 23:38:19.656+00	114	\N	1126982881	62.88	4774	0.9
2025-07-03 23:39:50.438+00	114	\N	1126982881	62.24	4778	0.9
2025-07-03 23:42:21.756+00	114	\N	1126982881	61.69	4781	0.9
2025-07-03 23:43:18.73+00	114	\N	1041420528	61.03	4782	0.9
2025-07-03 23:46:23.859+00	114	\N	1126982881	62.42	4790	0.9
2025-07-03 23:46:54.119+00	114	\N	1126982881	63.7	4791	0.9
2025-07-03 23:48:55.175+00	114	\N	1126982881	64.36	4794	0.9
2025-07-03 23:49:55.702+00	114	\N	1126982881	63.36	4800	0.9
2025-07-03 23:50:56.225+00	114	\N	1126982881	62.49	4802	0.9
2025-07-03 23:52:57.281+00	114	\N	1126982881	61.92	4806	0.9
2025-07-03 23:55:03.879+00	114	\N	978202981	61.27	4813	0.9
2025-07-03 23:55:28.591+00	114	\N	1126982881	61.38	4814	0.9
2025-07-04 00:14:04.783+00	114	\N	1041420528	60.89	4827	0.9
2025-07-04 00:25:49.929+00	114	\N	978202981	61.2	4835	0.9
2025-07-04 05:25:50.823+00	114	\N	1126982881	63.72	5033	0.9
2025-07-04 05:26:26.732+00	114	\N	978202981	62.45	5035	0.9
2025-07-04 05:27:27.256+00	114	\N	978202981	61.68	5039	0.9
2025-07-04 05:33:00.154+00	114	\N	978202981	62.18	5050	0.9
2025-07-04 09:22:29.838+00	114	\N	978202981	69.19	5207	0.9
2025-07-04 09:51:35.934+00	114	\N	1041420528	63.79	5229	0.9
2025-07-04 09:53:10.162+00	114	\N	1126982881	67.96	5238	0.9
2025-07-04 09:53:15.867+00	114	\N	978202981	69.19	5240	0.9
2025-07-04 09:58:48.762+00	114	\N	978202981	68.65	5249	0.9
2025-07-04 10:07:23.229+00	114	\N	978202981	68.13	5266	0.9
2025-07-04 10:08:18.043+00	114	\N	1126982881	68.51	5267	0.9
2025-07-04 10:09:18.57+00	114	\N	1126982881	69.48	5270	0.9
2025-07-04 10:11:46.45+00	114	\N	1041420528	63.24	5275	0.9
2025-07-04 10:11:49.882+00	114	\N	1126982881	68.71	5276	0.9
2025-07-04 10:12:56.127+00	114	\N	978202981	67.6	5279	0.9
2025-07-04 10:13:50.936+00	114	\N	1126982881	68	5283	0.9
2025-07-04 10:14:51.452+00	114	\N	1126982881	67.42	5284	0.9
2025-07-04 10:16:52.508+00	114	\N	1126982881	66.88	5287	0.9
2025-07-04 10:20:54.606+00	114	\N	1126982881	66.33	5290	0.9
2025-07-04 10:22:31.117+00	114	\N	978202981	67.06	5292	0.9
2025-07-04 10:25:57.234+00	114	\N	1126982881	65.81	5296	0.9
2025-07-04 11:01:12.208+00	114	\N	1041420528	62.1	5326	0.9
2025-07-04 11:01:21.394+00	114	\N	978202981	64.38	5327	0.9
2025-07-04 11:03:16.716+00	114	\N	1126982881	64.76	5334	0.9
2025-07-04 11:07:49.093+00	114	\N	1126982881	66.58	5341	0.9
2025-07-04 11:08:19.343+00	114	\N	1126982881	65.81	5343	0.9
2025-07-04 11:09:19.877+00	114	\N	1126982881	65.01	5347	0.9
2025-07-04 11:11:51.188+00	114	\N	1126982881	65.66	5355	0.9
2025-07-04 11:12:51.713+00	114	\N	1126982881	65.02	5359	0.9
2025-07-04 11:13:27.703+00	114	\N	978202981	63.87	5364	0.9
2025-07-04 11:13:52.246+00	114	\N	1126982881	64.52	5365	0.9
2025-07-04 11:18:54.887+00	114	\N	1126982881	63.96	5380	0.9
2025-07-04 11:25:34.008+00	114	\N	978202981	63.36	5390	0.9
2025-07-04 11:31:58.251+00	114	\N	1041420528	61.84	5394	0.9
2025-07-04 11:42:12.685+00	114	\N	978202981	62.83	5403	0.9
2025-07-04 11:45:08.56+00	114	\N	1126982881	63.42	5406	0.9
2025-07-04 11:49:46.632+00	114	\N	978202981	62.33	5407	0.9
2025-07-04 12:02:44.287+00	114	\N	1041420528	61.48	5418	0.9
2025-07-04 12:12:58.733+00	114	\N	978202981	61.78	5426	0.9
2025-07-04 13:23:05.319+00	114	\N	978202981	57.95	5478	0.9
2025-07-04 13:25:27.412+00	114	\N	1041420528	61.82	5482	0.9
2025-07-04 13:25:57.675+00	114	\N	1041420528	61.22	5484	0.9
2025-07-04 13:27:28.463+00	114	\N	1041420528	60.6	5491	0.9
2025-07-04 13:29:08.47+00	114	\N	978202981	57.45	5493	0.9
2025-07-04 13:41:39.291+00	114	\N	1126982881	62.82	5513	0.9
2025-07-04 13:43:10.086+00	114	\N	1126982881	62.32	5519	0.9
2025-07-04 13:48:12.713+00	114	\N	1126982881	61.81	5522	0.9
2025-07-04 13:50:13.759+00	114	\N	1126982881	63.26	5524	0.9
2025-07-04 13:50:44.025+00	114	\N	1126982881	64.04	5525	0.9
2025-07-04 13:51:20.061+00	114	\N	978202981	56.45	5527	0.9
2025-07-04 13:51:44.55+00	114	\N	1126982881	64.57	5528	0.9
2025-07-04 13:57:23.211+00	114	\N	978202981	55.9	5540	0.9
2025-07-04 13:58:14.515+00	114	\N	1041420528	60.62	5542	0.9
2025-07-04 13:58:48.234+00	114	\N	1126982881	63.03	5547	0.9
2025-07-04 13:59:48.764+00	114	\N	1126982881	62.19	5548	0.9
2025-07-04 14:02:50.334+00	114	\N	1126982881	61.66	5561	0.9
2025-07-04 14:05:57.679+00	114	\N	978202981	55.38	5565	0.9
2025-07-04 14:09:23.753+00	114	\N	1126982881	61.16	5575	0.9
2025-07-04 14:11:30.559+00	114	\N	978202981	54.88	5580	0.9
2025-07-04 14:27:08.738+00	114	\N	978202981	54.37	5588	0.9
2025-07-04 14:29:00.583+00	114	\N	1041420528	60.6	5590	0.9
2025-07-04 14:31:10.835+00	114	\N	978202981	53.84	5591	0.9
2025-07-04 14:39:39.509+00	114	\N	1126982881	62.1	5596	0.9
2025-07-04 14:45:18.202+00	114	\N	978202981	53.31	5611	0.9
2025-07-04 14:41:40.559+00	114	\N	1126982881	61.58	5601	0.9
2025-07-04 14:51:15.563+00	114	\N	1126982881	62.94	5623	0.9
2025-07-04 14:51:45.821+00	114	\N	1126982881	63.49	5624	0.9
2025-07-04 14:53:16.609+00	114	\N	1126982881	64.04	5627	0.9
2025-07-04 15:19:00.02+00	114	\N	1126982881	61.25	5662	0.9
2025-07-04 15:20:30.814+00	114	\N	1126982881	60.73	5669	0.9
2025-07-04 15:21:01.077+00	114	\N	1126982881	60.14	5672	0.9
2025-07-04 15:21:06.864+00	114	\N	978202981	51.75	5673	0.9
2025-07-04 15:22:01.605+00	114	\N	1126982881	59.4	5677	0.9
2025-07-04 15:23:32.392+00	114	\N	1126982881	61.21	5681	0.9
2025-07-04 15:24:02.653+00	114	\N	1126982881	72.45	5687	0.9
2025-07-04 15:24:32.924+00	114	\N	1126982881	58.99	5689	0.9
2025-07-04 15:26:33.973+00	114	\N	1126982881	59.87	5698	0.9
2025-07-04 15:27:34.494+00	114	\N	1126982881	61.08	5700	0.9
2025-07-04 15:28:04.757+00	114	\N	1126982881	59.05	5703	0.9
2025-07-04 15:28:31.617+00	114	\N	1041420528	60.15	5704	0.9
2025-07-04 15:30:36.073+00	114	\N	1126982881	59.9	5706	0.9
2025-07-04 15:30:41.881+00	114	\N	978202981	51.24	5707	0.9
2025-07-04 15:32:06.86+00	114	\N	1126982881	59.22	5708	0.9
2025-07-04 15:32:33.732+00	114	\N	1041420528	59.63	5709	0.9
2025-07-04 15:36:08.959+00	114	\N	1126982881	59.77	5713	0.9
2025-07-04 15:37:09.487+00	114	\N	1126982881	59.17	5715	0.9
2025-07-04 15:37:36.357+00	114	\N	1041420528	59.06	5716	0.9
2025-07-04 18:14:31.56+00	114	telegraf	1126982881	59.71	6080	1
2025-07-04 18:14:58.456+00	114	telegraf	1041420528	59.26	6084	1
2025-07-04 18:15:01.82+00	114	telegraf	1126982881	60.79	6085	1
2025-07-04 18:15:32.086+00	114	telegraf	1126982881	59.28	6086	1
2025-07-04 18:16:02.354+00	114	telegraf	1126982881	60.1	6093	1
2025-07-04 18:21:31.877+00	114	telegraf	1041420528	58.07	6108	1
2025-07-04 18:32:41.069+00	114	telegraf	1126982881	61.34	6116	1
2025-07-04 18:33:07.912+00	114	telegraf	1041420528	58.81	6117	1
2025-07-04 18:33:41.598+00	114	telegraf	1126982881	60.5	6121	1
2025-07-04 19:38:45.49+00	114	telegraf	1126982881	62.01	6199	1
2025-07-04 19:39:46.019+00	114	telegraf	1126982881	69.29	6206	1
2025-07-04 19:41:47.069+00	114	telegraf	1126982881	59.81	6211	1
2025-07-04 19:42:47.599+00	114	telegraf	1126982881	61.9	6214	1
2025-07-04 19:43:14.474+00	114	telegraf	1041420528	58.64	6215	1
2025-07-04 19:43:48.119+00	114	telegraf	1126982881	60.51	6216	1
2025-07-04 19:43:53.929+00	114	telegraf	978202981	51.43	6217	1
2025-07-04 19:47:19.958+00	114	telegraf	1126982881	60.62	6221	1
2025-07-04 19:49:51.27+00	114	telegraf	1126982881	60.05	6224	1
2025-07-04 19:50:18.153+00	114	telegraf	1041420528	58.1	6226	1
2025-07-04 19:50:21.538+00	114	telegraf	1126982881	60.79	6227	1
2025-07-04 19:54:23.65+00	114	telegraf	1126982881	60.59	6232	1
2025-07-04 19:57:25.227+00	114	telegraf	1126982881	60.02	6233	1
2025-07-04 20:00:26.802+00	114	telegraf	1126982881	60.78	6236	1
2025-07-04 20:03:58.64+00	114	telegraf	1126982881	60.89	6241	1
2025-07-04 20:04:28.91+00	114	telegraf	1126982881	60.28	6242	1
2025-07-04 20:04:59.172+00	114	telegraf	1126982881	61.46	6243	1
2025-07-04 20:05:59.688+00	114	telegraf	1126982881	60.19	6244	1
2025-07-04 20:09:31.555+00	114	telegraf	1126982881	60.8	6246	1
2025-07-04 20:10:01.822+00	114	telegraf	1126982881	59.89	6248	1
2025-07-04 20:10:32.086+00	114	telegraf	1126982881	60.39	6249	1
2025-07-04 20:13:03.398+00	114	telegraf	1126982881	59.85	6253	1
2025-07-04 20:14:34.186+00	114	telegraf	1126982881	60.64	6254	1
2025-07-04 20:16:04.971+00	114	telegraf	1126982881	59.92	6257	1
2025-07-04 20:16:35.234+00	114	telegraf	1126982881	60.88	6258	1
2025-07-04 20:17:35.766+00	114	telegraf	1126982881	60.16	6259	1
2025-07-04 20:19:06.56+00	114	telegraf	1126982881	59.98	6261	1
2025-07-04 20:19:33.399+00	114	telegraf	1041420528	57.17	6263	1
2025-07-04 20:19:36.82+00	114	telegraf	1126982881	57.3	6265	1
2025-07-04 20:20:07.084+00	114	telegraf	1126982881	56.35	6267	1
2025-07-04 20:20:33.925+00	114	telegraf	1041420528	56.19	6272	1
2025-07-04 20:20:37.351+00	114	telegraf	1126982881	54.59	6273	1
2025-07-04 20:21:04.189+00	114	telegraf	1041420528	55.66	6277	1
2025-07-04 20:21:07.614+00	114	telegraf	1126982881	53.49	6278	1
2025-07-04 20:22:04.715+00	114	telegraf	1041420528	55.03	6280	1
2025-07-04 20:23:08.662+00	114	telegraf	1126982881	52.97	6283	1
2025-07-04 20:24:39.45+00	114	telegraf	1126982881	54.78	6291	1
2025-07-04 20:25:39.984+00	114	telegraf	1126982881	53.24	6301	1
2025-07-04 20:26:37.077+00	114	telegraf	1041420528	53.78	6302	1
2025-07-04 20:26:40.498+00	114	telegraf	1126982881	51.64	6303	1
2025-07-04 20:27:10.758+00	114	telegraf	1126982881	53.64	6305	1
2025-07-04 20:27:41.022+00	114	telegraf	1126982881	52.07	6306	1
2025-07-04 20:32:09.966+00	114	telegraf	1041420528	52.66	6310	1
2025-07-04 20:32:43.655+00	114	telegraf	1126982881	53.05	6312	1
2025-07-04 20:33:44.173+00	114	telegraf	1126982881	51.79	6314	1
2025-07-04 20:34:44.707+00	114	telegraf	1126982881	52.89	6315	1
2025-07-04 20:35:45.228+00	114	telegraf	1126982881	54.13	6319	1
2025-07-04 20:36:45.758+00	114	telegraf	1126982881	52.07	6321	1
2025-07-04 20:37:16.025+00	114	telegraf	1126982881	52.95	6325	1
2025-07-04 20:37:46.278+00	114	telegraf	1126982881	51.94	6326	1
2025-07-04 20:38:16.544+00	114	telegraf	1126982881	53.26	6327	1
2025-07-04 20:38:46.805+00	114	telegraf	1126982881	53.81	6328	1
2025-07-04 20:40:17.595+00	114	telegraf	1126982881	53.13	6330	1
2025-07-04 20:40:47.852+00	114	telegraf	1126982881	51.95	6332	1
2025-07-04 20:42:15.236+00	114	telegraf	1041420528	52.08	6333	1
2025-07-04 20:42:48.912+00	114	telegraf	1126982881	53.76	6335	1
2025-07-04 20:43:19.17+00	114	telegraf	1126982881	52.28	6337	1
2025-07-04 20:45:20.226+00	114	telegraf	1126982881	52.88	6347	1
2025-07-04 20:46:51.008+00	114	telegraf	1126982881	53.8	6348	1
2025-07-04 20:47:21.274+00	114	telegraf	1126982881	52.91	6349	1
2025-07-04 20:48:21.798+00	114	telegraf	1126982881	53.48	6350	1
2025-07-04 20:50:28.653+00	114	telegraf	978202981	52.19	6353	1
2025-07-04 20:54:24.952+00	114	telegraf	1126982881	54.38	6362	1
2025-07-04 20:54:30.768+00	114	telegraf	978202981	52.76	6363	1
2025-07-04 20:54:55.219+00	114	telegraf	1126982881	53.68	6364	1
2025-07-04 20:57:26.53+00	114	telegraf	1126982881	54.27	6366	1
2025-07-04 20:58:27.053+00	114	telegraf	1126982881	53.51	6367	1
2025-07-04 20:59:27.593+00	114	telegraf	1126982881	54.69	6369	1
2025-07-04 20:59:57.85+00	114	telegraf	1126982881	53.21	6370	1
2025-07-04 21:06:01.001+00	114	telegraf	1126982881	53.4	6377	1
2025-07-04 21:06:31.265+00	114	telegraf	1126982881	54.38	6378	1
2025-07-04 21:07:01.525+00	114	telegraf	1126982881	53.86	6379	1
2025-07-04 21:08:07.852+00	114	telegraf	978202981	53.26	6380	1
2025-07-04 21:09:02.572+00	114	telegraf	1126982881	53.19	6381	1
2025-07-04 21:11:33.895+00	114	telegraf	1126982881	53.21	6383	1
2025-07-04 21:12:34.416+00	114	telegraf	1126982881	54	6385	1
2025-07-04 21:13:01.271+00	114	telegraf	1041420528	52.03	6386	1
2025-07-04 21:13:04.674+00	114	telegraf	1126982881	53.15	6387	1
2025-07-04 21:18:07.312+00	114	telegraf	1126982881	53.82	6392	1
2025-07-04 21:20:08.365+00	114	telegraf	1126982881	54.76	6393	1
2025-07-04 21:21:39.149+00	114	telegraf	1126982881	53.61	6397	1
2025-07-04 21:23:40.198+00	114	telegraf	1126982881	55.06	6400	1
2025-07-04 21:24:10.457+00	114	telegraf	1126982881	54.04	6403	1
2025-07-04 21:33:15.187+00	114	telegraf	1126982881	53.54	6409	1
2025-07-04 21:35:12.859+00	114	telegraf	1041420528	52.14	6413	1
2025-07-04 21:38:48.085+00	114	telegraf	1126982881	54.13	6417	1
2025-07-04 21:38:53.891+00	114	telegraf	978202981	53.18	6418	1
2025-07-04 21:43:20.465+00	114	telegraf	1126982881	53.93	6426	1
2025-07-04 21:47:22.561+00	114	telegraf	1126982881	54.43	6432	1
2025-07-04 21:47:52.821+00	114	telegraf	1126982881	55	6433	1
2025-07-04 21:49:23.611+00	114	telegraf	1126982881	54.42	6434	1
2025-07-04 21:52:00.747+00	114	telegraf	978202981	53.68	6436	1
2025-07-04 21:56:57.559+00	114	telegraf	1126982881	53.83	6442	1
2025-07-04 21:58:58.606+00	114	telegraf	1126982881	55.2	6443	1
2025-07-04 21:59:28.871+00	114	telegraf	1126982881	53.85	6444	1
2025-07-04 22:04:31.519+00	114	telegraf	1126982881	54.67	6452	1
2025-07-04 22:05:32.045+00	114	telegraf	1126982881	53.39	6454	1
2025-07-04 22:05:58.906+00	114	telegraf	1041420528	52.21	6455	1
2025-07-04 22:06:02.299+00	114	telegraf	1126982881	54.05	6456	1
2025-07-04 22:09:34.143+00	114	telegraf	1126982881	54.37	6460	1
2025-07-04 22:10:04.404+00	114	telegraf	1126982881	53.74	6461	1
2025-07-04 22:14:36.77+00	114	telegraf	1126982881	54.83	6464	1
2025-07-04 22:15:07.032+00	114	telegraf	1126982881	54.16	6465	1
2025-07-04 22:22:46.795+00	114	telegraf	978202981	53.6	6470	1
2025-07-04 22:32:15.989+00	114	telegraf	1126982881	54.85	6479	1
2025-07-04 22:32:46.252+00	114	telegraf	1126982881	54.05	6480	1
2025-07-04 22:34:47.297+00	114	telegraf	1126982881	55.05	6484	1
2025-07-04 22:35:17.563+00	114	telegraf	1126982881	54.43	6486	1
2025-07-04 22:36:44.933+00	114	telegraf	1041420528	52.18	6488	1
2025-07-04 22:38:19.141+00	114	telegraf	1126982881	55.08	6490	1
2025-07-04 22:44:52.555+00	114	telegraf	1126982881	53.85	6496	1
2025-07-04 22:46:23.351+00	114	telegraf	1126982881	54.42	6498	1
2025-07-04 22:46:53.616+00	114	telegraf	1126982881	53.67	6499	1
2025-07-04 22:47:23.884+00	114	telegraf	1126982881	54.39	6500	1
2025-07-04 22:47:54.146+00	114	telegraf	1126982881	55.68	6501	1
2025-07-04 22:48:24.406+00	114	telegraf	1126982881	53.64	6502	1
2025-07-04 22:51:56.24+00	114	telegraf	1126982881	54.44	6504	1
2025-07-04 22:52:26.506+00	114	telegraf	1126982881	53.59	6505	1
2025-07-04 22:53:32.839+00	114	telegraf	978202981	53.96	6506	1
2025-07-04 22:53:57.291+00	114	telegraf	1126982881	54.26	6507	1
2025-07-04 22:54:27.559+00	114	telegraf	1126982881	53.74	6510	1
2025-07-04 22:56:28.601+00	114	telegraf	1126982881	54.33	6514	1
2025-07-04 22:58:29.651+00	114	telegraf	1126982881	53.44	6515	1
2025-07-04 23:01:31.227+00	114	telegraf	1126982881	54.03	6518	1
2025-07-04 23:04:02.545+00	114	telegraf	1126982881	54.71	6523	1
2025-07-04 23:06:03.598+00	114	telegraf	1126982881	55.3	6529	1
2025-07-04 23:07:04.122+00	114	telegraf	1126982881	54.79	6530	1
2025-07-04 23:07:30.976+00	114	telegraf	1041420528	52.41	6532	1
2025-07-04 23:08:04.647+00	114	telegraf	1126982881	56.37	6535	1
2025-07-04 23:08:34.909+00	114	telegraf	1126982881	55.85	6536	1
2025-07-04 23:09:35.435+00	114	telegraf	1126982881	55.32	6544	1
2025-07-05 07:28:22.105+00	114	telegraf	1041420528	56.5	6911	1
2025-07-05 07:39:31.299+00	114	telegraf	1126982881	59.68	6920	1
2025-07-05 07:45:40.471+00	114	telegraf	978202981	58.03	6924	1
2025-07-05 07:59:08.152+00	114	telegraf	1041420528	56.45	6934	1
2025-07-05 07:59:41.8+00	114	telegraf	1126982881	59.18	6935	1
2025-07-05 08:56:11.263+00	114	telegraf	1126982881	58.77	6970	1
2025-07-05 09:00:40.22+00	114	telegraf	1041420528	56.12	6972	1
2025-07-05 09:08:23.605+00	114	telegraf	978202981	57.11	6976	1
2025-07-05 09:23:52.317+00	114	telegraf	1041420528	55.59	6988	1
2025-07-05 09:34:37.304+00	114	telegraf	978202981	56.6	6994	1
2025-07-05 09:58:49.939+00	114	telegraf	978202981	56.09	7013	1
2025-07-05 10:13:27.56+00	114	telegraf	978202981	55.58	7021	1
2025-07-05 10:18:24.118+00	114	telegraf	1126982881	56.74	7027	1
2025-07-05 10:21:52.555+00	114	telegraf	1041420528	54.05	7030	1
2025-07-05 10:43:13.092+00	114	telegraf	978202981	55.08	7041	1
2025-07-05 12:19:54.083+00	114	telegraf	1041420528	54.99	7105	1
2025-07-05 12:29:02.246+00	114	telegraf	1126982881	57.7	7110	1
2025-07-05 12:42:45.451+00	114	telegraf	978202981	55.89	7118	1
2025-07-05 12:48:42.504+00	114	telegraf	1126982881	57.18	7126	1
2025-07-05 12:49:09.335+00	114	telegraf	1041420528	54.44	7127	1
2025-07-05 13:13:31.486+00	114	telegraf	978202981	55.51	7138	1
2025-07-05 13:18:28.02+00	114	telegraf	1126982881	56.67	7144	1
2025-07-05 13:19:55.389+00	114	telegraf	1041420528	53.98	7146	1
2025-07-05 13:35:12.807+00	114	telegraf	978202981	55.01	7153	1
2025-07-05 13:43:10.895+00	114	telegraf	1126982881	56.17	7157	1
2025-07-05 13:44:07.991+00	114	telegraf	1041420528	53.47	7158	1
2025-07-05 13:54:22.798+00	114	telegraf	978202981	54.47	7165	1
2025-07-05 14:07:53.794+00	114	telegraf	1126982881	55.65	7175	1
2025-07-05 14:08:50.876+00	114	telegraf	1041420528	52.94	7176	1
2025-07-05 14:39:36.924+00	114	telegraf	1041420528	52.64	7195	1
2025-07-05 14:50:15.858+00	114	telegraf	1126982881	54.86	7202	1
2025-07-05 14:50:22.006+00	114	telegraf	978202981	53.65	7203	1
2025-07-05 15:10:22.964+00	114	telegraf	1041420528	52.28	7213	1
2025-07-05 15:21:01.908+00	114	telegraf	1126982881	54.91	7222	1
2025-07-05 15:21:08.067+00	114	telegraf	978202981	53.52	7223	1
2025-07-05 15:41:09.029+00	114	telegraf	1041420528	52.14	7233	1
2025-07-05 15:51:47.932+00	114	telegraf	1126982881	54.66	7240	1
2025-07-05 15:51:54.142+00	114	telegraf	978202981	53.28	7241	1
2025-07-05 16:42:41.11+00	114	telegraf	1041420528	52.35	7270	1
2025-07-05 16:48:47.655+00	114	telegraf	1126982881	55.29	7274	1
2025-07-05 16:53:26.24+00	114	telegraf	978202981	53.56	7278	1
2025-07-05 16:58:22.638+00	114	telegraf	1126982881	54.78	7282	1
2025-07-05 17:13:27.184+00	114	telegraf	1041420528	52.03	7289	1
2025-07-05 17:29:08.691+00	114	telegraf	1126982881	54.97	7304	1
2025-07-05 17:35:08.481+00	114	telegraf	1041420528	52.54	7308	1
2025-07-05 17:54:58.341+00	114	telegraf	978202981	53.54	7318	1
2025-07-05 17:59:54.717+00	114	telegraf	1126982881	54.97	7322	1
2025-07-05 18:05:24.275+00	114	telegraf	1041420528	52.03	7326	1
2025-07-05 19:35:41.318+00	114	telegraf	1041420528	46.46	7419	1
2025-07-05 19:35:44.681+00	114	telegraf	1126982881	49.26	7420	1
2025-07-05 19:39:22.781+00	114	telegraf	978202981	48.45	7424	1
2025-07-05 19:45:19.686+00	114	telegraf	1126982881	49.77	7430	1
2025-07-05 19:56:52.366+00	114	telegraf	1041420528	47.61	7440	1
2025-07-05 19:56:55.739+00	114	telegraf	1126982881	50.37	7441	1
2025-07-05 20:05:06.193+00	114	telegraf	978202981	48.96	7451	1
2025-07-05 20:06:27.365+00	114	telegraf	1041420528	48.17	7456	1
2025-07-05 20:06:30.732+00	114	telegraf	1126982881	50.94	7457	1
2025-07-05 20:09:38.554+00	114	telegraf	978202981	49.52	7461	1
2025-07-05 20:26:07.63+00	114	telegraf	1041420528	48.79	7471	1
2025-07-05 20:26:41.242+00	114	telegraf	1126982881	51.51	7473	1
2025-07-05 20:27:48.019+00	114	telegraf	978202981	50.02	7475	1
2025-07-05 20:54:22.347+00	114	telegraf	1041420528	49.33	7488	1
2025-07-05 20:54:55.963+00	114	telegraf	1126982881	52.02	7489	1
2025-07-05 20:58:34.05+00	114	telegraf	978202981	50.49	7496	1
2025-07-05 21:25:42.009+00	114	telegraf	1126982881	52.52	7515	1
2025-07-05 21:28:49.85+00	114	telegraf	978202981	51	7522	1
2025-07-05 21:30:11.026+00	114	telegraf	1041420528	50.48	7523	1
2025-07-05 21:30:44.63+00	114	telegraf	1126982881	53.07	7524	1
2025-07-05 21:32:51.952+00	114	telegraf	978202981	51.5	7525	1
2025-07-05 21:36:47.795+00	114	telegraf	1126982881	53.57	7533	1
2025-07-05 21:41:26.417+00	114	telegraf	978202981	52	7537	1
2025-07-05 22:04:28.905+00	114	telegraf	1041420528	51.12	7555	1
2025-07-05 22:07:33.83+00	114	telegraf	1126982881	53.67	7559	1
2025-07-05 22:12:12.452+00	114	telegraf	978202981	52.13	7564	1
2025-07-05 22:26:10.223+00	114	telegraf	1041420528	50.62	7574	1
2025-07-05 22:32:46.958+00	114	telegraf	1126982881	53.17	7579	1
2025-07-05 22:42:58.497+00	114	telegraf	978202981	51.7	7587	1
2025-07-05 22:49:22.348+00	114	telegraf	1041420528	50.11	7592	1
2025-07-05 22:55:59.067+00	114	telegraf	1126982881	52.66	7597	1
2025-07-05 23:13:34.955+00	114	telegraf	1041420528	49.61	7609	1
2025-07-05 23:17:10.113+00	114	telegraf	1126982881	52.16	7612	1
2025-07-05 23:28:52.411+00	114	telegraf	978202981	50.69	7621	1
2025-07-07 09:06:14.842+00	114	telegraf	1041420528	55.34	11	1
2025-07-07 09:18:01.643+00	114	telegraf	527134251	59.58	174	1
2025-07-07 09:18:31.033+00	114	telegraf	978202981	56.12	29	1
2025-07-07 09:19:02.178+00	114	telegraf	527134251	58.78	183	1
2025-07-07 09:24:04.687+00	114	telegraf	527134251	60.28	190	1
2025-07-07 09:25:05.218+00	114	telegraf	527134251	58.87	192	1
2025-07-07 09:25:38.492+00	114	telegraf	1523842139	60.8	194	1
2025-07-07 09:26:05.726+00	114	telegraf	527134251	58.22	200	1
2025-07-07 09:26:39.924+00	114	telegraf	840973111	64.9	203	1
2025-07-07 09:27:10.189+00	114	telegraf	840973111	63.08	207	1
2025-07-07 09:27:40.447+00	114	telegraf	840973111	62.01	209	1
2025-07-07 09:28:06.756+00	114	telegraf	527134251	59.05	213	1
2025-07-07 09:28:40.976+00	114	telegraf	840973111	61.48	215	1
2025-07-07 09:28:37.011+00	114	telegraf	527134251	58.37	217	1
2025-07-07 09:29:07.268+00	114	telegraf	527134251	58.91	219	1
2025-07-07 09:31:08.42+00	114	telegraf	527134251	58.33	234	1
2025-07-07 09:39:12.582+00	114	telegraf	527134251	59.26	264	1
2025-07-07 09:48:17.299+00	114	telegraf	527134251	59.14	4	1
2025-07-07 09:48:47.572+00	114	telegraf	527134251	58.46	6	1
2025-07-07 09:49:17.17+00	114	telegraf	978202981	56.49	68	1
2025-07-07 09:51:22.847+00	114	telegraf	840973111	61.15	12	1
2025-07-07 09:51:53.11+00	114	telegraf	840973111	60.28	15	1
2025-07-07 09:52:53.638+00	114	telegraf	840973111	59.06	19	1
2025-07-07 09:54:24.429+00	114	telegraf	840973111	59.97	21	1
2025-07-07 09:55:24.954+00	114	telegraf	840973111	59.27	22	1
2025-07-07 09:55:24.087+00	114	telegraf	1523842139	58.07	23	1
2025-07-07 09:58:26.536+00	114	telegraf	840973111	59.89	34	1
2025-07-07 09:58:25.671+00	114	telegraf	1523842139	57.56	35	1
2025-07-07 09:59:27.065+00	114	telegraf	840973111	55.49	39	1
2025-07-07 09:59:49.063+00	114	telegraf	840973111	59.03	43	1
2025-07-07 10:07:46.837+00	114	telegraf	1041420528	56.05	100	1
2025-07-07 10:52:43.511+00	114	telegraf	1126982881	58.42	1	1
2025-07-07 10:53:44.078+00	114	telegraf	1126982881	57.8	3	1
2025-07-07 11:01:14.816+00	114	telegraf	1041420528	56.06	27	1
2025-07-07 11:21:35.18+00	114	telegraf	978202981	56.77	62	1
2025-07-07 11:30:33.228+00	114	telegraf	1126982881	58.81	67	1
2025-07-07 11:32:00.855+00	114	telegraf	1041420528	56.06	71	1
2025-07-07 11:40:08.227+00	114	telegraf	1126982881	59.38	84	1
2025-07-07 11:47:11.909+00	114	telegraf	1126982881	59.92	93	1
2025-07-07 11:47:42.174+00	114	telegraf	1126982881	59.39	94	1
2025-07-07 11:52:21.264+00	114	telegraf	978202981	56.85	115	1
2025-07-07 11:53:45.327+00	114	telegraf	1126982881	58.84	116	1
2025-07-07 11:53:27.909+00	114	telegraf	3839865	62.73	118	1
2025-07-07 12:02:46.91+00	114	telegraf	1041420528	56.02	127	1
2025-07-07 12:14:24.222+00	114	telegraf	305822513	61.76	153	1
2025-07-07 12:14:26.083+00	114	telegraf	1126982881	59.81	154	1
2025-07-07 12:14:56.343+00	114	telegraf	1126982881	59.09	155	1
2025-07-07 12:24:13.956+00	114	telegraf	3839865	62.73	172	1
2025-07-07 12:28:49.008+00	114	telegraf	632461688	61.25	192	1
2025-07-07 12:30:04.264+00	114	telegraf	1126982881	60.98	195	1
2025-07-07 12:30:34.526+00	114	telegraf	1126982881	60.39	197	1
2025-07-07 12:30:31.405+00	114	telegraf	1041420528	57.5	199	1
2025-07-07 12:31:35.058+00	114	telegraf	1126982881	59.8	205	1
2025-07-07 12:34:36.64+00	114	telegraf	1126982881	59.28	209	1
2025-07-07 12:53:53.383+00	114	telegraf	978202981	57.14	238	1
2025-07-07 12:55:00.023+00	114	telegraf	3839865	62.7	243	1
2025-07-07 12:59:35.053+00	114	telegraf	632461688	61.38	260	1
2025-07-07 12:55:50.836+00	114	telegraf	840973111	58.94	266	1
2025-07-07 12:56:28.531+00	114	telegraf	1523842139	55.61	276	1
2025-07-07 13:01:47.699+00	114	telegraf	1041420528	56.42	301	1
2025-07-07 13:05:22.654+00	114	telegraf	1126982881	59.37	357	1
2025-07-07 13:09:52.105+00	114	telegraf	333419537	66.6	388	1
2025-07-07 13:16:44.608+00	114	telegraf	677224097	57.11	418	1
2025-07-07 13:24:39.403+00	114	telegraf	978202981	57.25	484	1
2025-07-07 13:25:45.996+00	114	telegraf	3839865	62.73	489	1
2025-07-07 13:30:21.09+00	114	telegraf	632461688	61.52	509	1
2025-07-07 13:32:33.707+00	114	telegraf	1041420528	56.52	517	1
2025-07-07 13:36:08.66+00	114	telegraf	1126982881	59.54	530	1
2025-07-07 13:26:14.065+00	114	telegraf	1523842139	56.62	546	1
2025-07-07 13:26:36.898+00	114	telegraf	840973111	58.97	547	1
2025-07-07 13:40:38.144+00	114	telegraf	333419537	66.48	587	1
2025-07-07 13:42:45.405+00	114	telegraf	840973111	59.18	642	1
2025-07-07 13:43:33.245+00	114	telegraf	791308911	56.76	654	1
2025-07-07 13:43:23.025+00	114	telegraf	1523842139	57.05	661	1
2025-07-07 13:46:42.466+00	114	telegraf	305822513	62.02	665	1
2025-07-07 13:55:25.458+00	114	telegraf	978202981	57.35	737	1
2025-07-07 13:59:28.408+00	114	telegraf	527134251	56.04	795	1
2025-07-07 14:03:19.761+00	114	telegraf	1041420528	56.6	809	1
2025-07-07 14:03:30.513+00	114	telegraf	527134251	57.65	813	1
2025-07-07 14:03:30.511+00	114	telegraf	527134251	57.65	814	1
2025-07-07 14:03:26.21+00	114	telegraf	840973111	59.96	815	1
2025-07-07 14:06:54.732+00	114	telegraf	1126982881	59.48	820	1
2025-07-07 14:06:01.824+00	114	telegraf	527134251	56.38	833	1
2025-07-07 14:07:58.586+00	114	telegraf	840973111	59.44	836	1
2025-07-07 14:10:34.197+00	114	telegraf	527134251	57.36	850	1
2025-07-07 14:11:07.499+00	114	telegraf	1523842139	58.23	855	1
2025-07-07 14:11:24.165+00	114	telegraf	333419537	66.36	860	1
2025-07-07 14:11:34.719+00	114	telegraf	527134251	56.86	868	1
2025-07-07 14:12:00.688+00	114	telegraf	840973111	59.49	870	1
2025-07-07 14:12:08.023+00	114	telegraf	1523842139	57.67	872	1
2025-07-07 14:10:25.203+00	114	telegraf	974018563	63.67	890	1
2025-07-07 14:05:52.729+00	114	telegraf	974018563	63.12	898	1
2025-07-07 14:12:24.685+00	114	telegraf	2045592530	60.7	901	1
2025-07-07 14:10:55.461+00	114	telegraf	974018563	64.62	903	1
2025-07-07 14:10:53.913+00	114	telegraf	2045592530	60.11	906	1
2025-07-07 14:14:19.463+00	114	telegraf	791308911	56.61	930	1
2025-07-07 14:22:40.498+00	114	telegraf	527134251	57.37	1008	1
2025-07-07 14:26:11.607+00	114	telegraf	978202981	57.13	1016	1
2025-07-07 14:27:02.137+00	114	telegraf	1041420528	56.07	1022	1
2025-07-07 14:36:06.889+00	114	telegraf	1041420528	55.56	1066	1
2025-07-07 14:39:18.423+00	114	telegraf	978202981	56.59	1087	1
2025-07-07 14:39:27.25+00	114	telegraf	632461688	60.32	1089	1
2025-07-07 14:42:10.18+00	114	telegraf	333419537	66.34	1121	1
2025-07-07 14:45:05.539+00	114	telegraf	791308911	56.55	1138	1
2025-07-07 14:48:14.654+00	114	telegraf	305822513	61.79	1165	1
2025-07-07 14:48:16.295+00	114	telegraf	1126982881	57.89	1166	1
2025-07-07 14:48:13.208+00	114	telegraf	1041420528	55.06	1167	1
2025-07-07 14:50:02.764+00	114	telegraf	632461688	59.71	1176	1
2025-07-07 14:49:21.111+00	114	telegraf	23439212	63.39	1181	1
2025-07-07 14:49:41.733+00	114	telegraf	720958279	58.52	1182	1
2025-07-07 14:53:04.348+00	114	telegraf	632461688	59.06	1195	1
2025-07-07 14:53:31.766+00	114	telegraf	3839865	62.03	1196	1
2025-07-07 14:53:56.048+00	114	telegraf	978202981	56.07	1198	1
2025-07-08 07:57:55.673+00	114	telegraf	3839865	60.19	57	1
2025-07-08 08:07:55.409+00	114	telegraf	527134251	61.06	72	1
2025-07-08 08:08:09.346+00	114	telegraf	791308911	55.79	73	1
2025-07-08 08:09:26.053+00	114	telegraf	978202981	54.12	75	1
2025-07-08 08:27:55.644+00	114	telegraf	1041420528	55.57	135	1
2025-07-08 08:28:56.164+00	114	telegraf	1041420528	53.69	138	1
2025-07-08 08:29:26.455+00	114	telegraf	1041420528	53.03	149	1
2025-07-08 08:30:57.24+00	114	telegraf	1041420528	52.47	158	1
2025-07-08 08:32:41.587+00	114	telegraf	1523842139	65.63	164	1
2025-07-08 08:38:00.906+00	114	telegraf	1041420528	51.94	172	1
2025-07-08 08:38:41.412+00	114	telegraf	527134251	61.48	173	1
2025-07-08 08:39:30.778+00	114	telegraf	333419537	64.91	179	1
2025-07-08 08:40:12.025+00	114	telegraf	978202981	54.37	180	1
2025-07-08 08:41:21.754+00	114	telegraf	677224097	55.66	190	1
2025-07-08 08:42:16.566+00	114	telegraf	1523842139	66.14	194	1
2025-07-08 08:47:11.666+00	114	telegraf	840973111	64.73	205	1
2025-07-08 08:48:06.277+00	114	telegraf	1041420528	51.43	207	1
2025-07-08 08:51:41.276+00	114	telegraf	1126982881	55.84	228	1
2025-07-08 08:56:40.691+00	114	telegraf	1041420528	50.89	236	1
2025-07-08 09:04:13.797+00	114	telegraf	333419537	64.39	261	1
2025-07-08 09:06:56.316+00	114	telegraf	527134251	61.98	266	1
2025-07-08 09:09:41.529+00	114	telegraf	791308911	55.23	271	1
2025-07-08 09:10:58.203+00	114	telegraf	978202981	54.36	276	1
2025-07-08 09:12:07.924+00	114	telegraf	677224097	55.38	279	1
2025-07-08 09:17:21.523+00	114	telegraf	1041420528	50.36	295	1
2025-07-09 09:23:25.911+00	114	telegraf	1041420528	49.56	4	1
2025-07-09 09:24:29.205+00	114	telegraf	1126982881	51.13	10	1
2025-07-09 09:35:18.681+00	114	telegraf	207892874	50.58	28	1
2025-07-09 09:37:43.17+00	114	telegraf	978202981	48.63	31	1
2025-07-09 09:55:15.192+00	114	telegraf	1126982881	51.5	54	1
2025-07-09 10:08:29.206+00	114	telegraf	978202981	48.9	64	1
2025-07-09 10:22:56.875+00	114	telegraf	1041420528	50.41	102	1
2025-07-09 10:26:01.226+00	114	telegraf	1126982881	51.89	111	1
2025-07-09 10:28:39.727+00	114	telegraf	978202981	49.45	124	1
2025-07-09 13:40:09.755+00	114	telegraf	1041420528	47.97	571	1
2025-07-09 13:44:11.857+00	114	telegraf	1041420528	47.46	575	1
2025-07-09 13:46:45.844+00	114	telegraf	1126982881	52.58	585	1
2025-07-09 13:51:45.79+00	114	telegraf	1041420528	46.39	591	1
\.


--
-- Data for Name: _hyper_3_10_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_3_10_chunk ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
2025-07-03 00:05:03.313+00	127	\N	978202981	stationary	0	0	6	-1	65	3608	0.9
2025-07-03 00:05:10.785+00	127	\N	1041420528	stationary	0	0	5	0	65	3609	0.9
2025-07-03 00:08:34.726+00	127	\N	1126982881	stationary	0	0	3	-1	65	3611	0.9
2025-07-03 07:05:05.722+00	127	\N	978202981	stationary	0	0	6	-1	65	3913	0.9
2025-07-03 07:05:12.818+00	127	\N	1041420528	stationary	0	0	4	1	64	3914	0.9
2025-07-03 07:08:36.984+00	127	\N	1126982881	stationary	0	0	3	-1	66	3916	0.9
2025-07-03 07:35:05.913+00	127	\N	978202981	stationary	0	0	7	-1	64	3939	0.9
2025-07-03 07:35:13.021+00	127	\N	1041420528	stationary	0	0	3	0	63	3940	0.9
2025-07-03 07:39:36.121+00	127	\N	1126982881	stationary	0	0	4	-2	65	3945	0.9
2025-07-03 07:45:05.99+00	127	\N	978202981	stationary	0	0	6	-1	65	3950	0.9
2025-07-03 07:45:13.112+00	127	\N	1041420528	stationary	0	0	3	1	64	3951	0.9
2025-07-03 07:49:36.161+00	127	\N	1126982881	stationary	0	0	4	-2	66	3953	0.9
2025-07-03 07:55:06.033+00	127	\N	978202981	stationary	0	0	6	-2	65	3956	0.9
2025-07-03 07:55:13.19+00	127	\N	1041420528	stationary	0	0	3	1	63	3957	0.9
2025-07-03 07:59:36.201+00	127	\N	1126982881	stationary	0	0	4	-2	66	3962	0.9
2025-07-03 08:05:06.07+00	127	\N	978202981	stationary	0	0	7	0	66	3965	0.9
2025-07-03 08:05:13.248+00	127	\N	1041420528	stationary	0	0	3	1	64	3966	0.9
2025-07-03 08:09:36.244+00	127	\N	1126982881	stationary	0	0	3	-2	65	3968	0.9
2025-07-03 08:15:06.1+00	127	\N	978202981	stationary	0	0	7	-1	65	3970	0.9
2025-07-03 08:15:13.289+00	127	\N	1041420528	stationary	0	0	4	0	64	3972	0.9
2025-07-03 08:19:36.278+00	127	\N	1126982881	stationary	0	0	4	-2	66	3973	0.9
2025-07-03 08:25:06.137+00	127	\N	978202981	stationary	0	0	6	-1	65	3976	0.9
2025-07-03 08:25:13.333+00	127	\N	1041420528	stationary	0	0	3	1	64	3977	0.9
2025-07-03 08:29:36.343+00	127	\N	1126982881	stationary	0	0	4	-1	65	3982	0.9
2025-07-03 08:35:06.175+00	127	\N	978202981	stationary	0	0	5	-2	65	3984	0.9
2025-07-03 08:35:13.388+00	127	\N	1041420528	stationary	0	0	4	1	64	3985	0.9
2025-07-03 08:39:36.405+00	127	\N	1126982881	stationary	0	0	3	-2	64	3987	0.9
2025-07-03 08:45:06.205+00	127	\N	978202981	stationary	0	0	7	-1	66	3988	0.9
2025-07-03 08:45:13.427+00	127	\N	1041420528	stationary	0	0	4	1	64	3989	0.9
2025-07-03 08:49:36.455+00	127	\N	1126982881	stationary	0	0	4	-2	67	3992	0.9
2025-07-03 08:55:06.248+00	127	\N	978202981	stationary	0	0	6	-1	65	3995	0.9
2025-07-03 08:55:13.47+00	127	\N	1041420528	stationary	0	0	5	0	65	3996	0.9
2025-07-03 08:59:36.5+00	127	\N	1126982881	stationary	0	0	4	-1	65	4000	0.9
2025-07-03 09:05:06.313+00	127	\N	978202981	stationary	0	0	7	-2	65	4004	0.9
2025-07-03 09:05:13.521+00	127	\N	1041420528	stationary	0	0	4	1	64	4005	0.9
2025-07-03 09:09:36.562+00	127	\N	1126982881	stationary	0	0	4	-1	66	4006	0.9
2025-07-03 09:15:06.338+00	127	\N	978202981	stationary	0	0	6	0	64	4009	0.9
2025-07-03 09:15:13.563+00	127	\N	1041420528	stationary	0	0	4	1	63	4010	0.9
2025-07-03 09:19:36.648+00	127	\N	1126982881	stationary	0	0	3	-1	65	4012	0.9
2025-07-03 09:25:06.371+00	127	\N	978202981	stationary	0	0	7	-1	64	4014	0.9
2025-07-03 09:25:13.599+00	127	\N	1041420528	stationary	0	0	4	0	64	4015	0.9
2025-07-03 09:29:36.799+00	127	\N	1126982881	stationary	0	0	4	-2	66	4020	0.9
2025-07-03 09:35:06.417+00	127	\N	978202981	stationary	0	0	6	-1	64	4024	0.9
2025-07-03 09:35:13.637+00	127	\N	1041420528	stationary	0	0	3	1	64	4025	0.9
2025-07-03 09:39:36.847+00	127	\N	1126982881	stationary	0	0	4	-2	65	4026	0.9
2025-07-03 09:45:06.45+00	127	\N	978202981	stationary	0	0	7	-1	64	4030	0.9
2025-07-03 09:45:13.689+00	127	\N	1041420528	stationary	0	0	3	1	63	4031	0.9
2025-07-03 09:49:36.884+00	127	\N	1126982881	stationary	0	0	3	-2	66	4033	0.9
2025-07-03 09:55:06.505+00	127	\N	978202981	stationary	0	0	6	-2	65	4036	0.9
2025-07-03 09:55:13.785+00	127	\N	1041420528	stationary	0	0	4	0	63	4038	0.9
2025-07-03 09:59:36.952+00	127	\N	1126982881	stationary	0	0	3	-2	64	4042	0.9
2025-07-03 10:05:06.573+00	127	\N	978202981	stationary	0	0	6	-2	65	4045	0.9
2025-07-03 10:05:13.85+00	127	\N	1041420528	stationary	0	0	4	1	64	4046	0.9
2025-07-03 10:09:36.989+00	127	\N	1126982881	stationary	0	0	3	-2	66	4047	0.9
2025-07-03 10:15:06.657+00	127	\N	978202981	stationary	0	0	7	-2	64	4049	0.9
2025-07-03 10:15:13.897+00	127	\N	1041420528	stationary	0	0	4	1	63	4050	0.9
2025-07-03 10:19:37.024+00	127	\N	1126982881	stationary	0	0	4	-2	65	4052	0.9
2025-07-03 10:25:06.748+00	127	\N	978202981	stationary	0	0	7	-1	64	4054	0.9
2025-07-03 10:25:13.987+00	127	\N	1041420528	stationary	0	0	4	0	65	4055	0.9
2025-07-03 10:29:37.078+00	127	\N	1126982881	stationary	0	0	4	-1	65	4057	0.9
2025-07-03 10:35:06.875+00	127	\N	978202981	stationary	0	0	6	-1	65	4063	0.9
2025-07-03 10:35:14.08+00	127	\N	1041420528	stationary	0	0	4	1	63	4064	0.9
2025-07-03 10:39:37.122+00	127	\N	1126982881	stationary	0	0	4	-1	64	4067	0.9
2025-07-03 10:45:06.923+00	127	\N	978202981	stationary	0	0	7	-1	65	4070	0.9
2025-07-03 10:45:14.154+00	127	\N	1041420528	stationary	0	0	4	1	63	4071	0.9
2025-07-03 10:49:37.187+00	127	\N	1126982881	stationary	0	0	3	-1	65	4073	0.9
2025-07-03 10:55:06.955+00	127	\N	978202981	stationary	0	0	6	-2	64	4074	0.9
2025-07-03 10:55:14.198+00	127	\N	1041420528	stationary	0	0	5	2	64	4075	0.9
2025-07-03 10:59:37.226+00	127	\N	1126982881	stationary	0	0	4	-2	64	4078	0.9
2025-07-03 11:05:06.993+00	127	\N	978202981	stationary	0	0	7	-1	65	4083	0.9
2025-07-03 11:05:14.237+00	127	\N	1041420528	stationary	0	0	4	0	64	4084	0.9
2025-07-03 11:09:37.28+00	127	\N	1126982881	stationary	0	0	4	-2	65	4086	0.9
2025-07-03 11:15:07.032+00	127	\N	978202981	stationary	0	0	6	-1	65	4089	0.9
2025-07-03 11:15:14.274+00	127	\N	1041420528	stationary	0	0	4	1	63	4090	0.9
2025-07-03 11:19:37.332+00	127	\N	1126982881	stationary	0	0	4	-1	65	4093	0.9
2025-07-03 11:25:07.069+00	127	\N	978202981	stationary	0	0	6	-2	65	4094	0.9
2025-07-03 11:25:14.314+00	127	\N	1041420528	stationary	0	0	5	2	63	4095	0.9
2025-07-03 11:29:37.396+00	127	\N	1126982881	stationary	0	0	4	-2	66	4098	0.9
2025-07-03 11:35:07.131+00	127	\N	978202981	stationary	0	0	7	-1	66	4103	0.9
2025-07-03 11:35:14.354+00	127	\N	1041420528	stationary	0	0	2	0	64	4104	0.9
2025-07-03 11:39:37.478+00	127	\N	1126982881	stationary	0	0	4	-2	65	4106	0.9
2025-07-03 11:45:07.185+00	127	\N	978202981	stationary	0	0	6	-1	66	4110	0.9
2025-07-03 11:45:14.399+00	127	\N	1041420528	stationary	0	0	4	1	63	4111	0.9
2025-07-03 11:49:37.553+00	127	\N	1126982881	stationary	0	0	4	-2	66	4113	0.9
2025-07-03 11:55:07.226+00	127	\N	978202981	stationary	0	0	6	-1	65	4115	0.9
2025-07-03 11:55:14.433+00	127	\N	1041420528	stationary	0	0	4	1	64	4116	0.9
2025-07-03 11:59:37.62+00	127	\N	1126982881	stationary	0	0	4	-2	65	4119	0.9
2025-07-03 12:05:07.271+00	127	\N	978202981	stationary	0	0	6	-2	65	4123	0.9
2025-07-03 12:05:14.478+00	127	\N	1041420528	stationary	0	0	4	1	64	4124	0.9
2025-07-03 12:09:37.668+00	127	\N	1126982881	stationary	0	0	3	-2	65	4126	0.9
2025-07-03 12:15:07.327+00	127	\N	978202981	stationary	0	0	7	-2	65	4129	0.9
2025-07-03 12:15:14.54+00	127	\N	1041420528	stationary	0	0	4	1	64	4130	0.9
2025-07-03 12:19:37.771+00	127	\N	1126982881	stationary	0	0	5	-1	66	4133	0.9
2025-07-03 12:25:07.407+00	127	\N	978202981	stationary	0	0	7	-2	64	4135	0.9
2025-07-03 12:25:14.588+00	127	\N	1041420528	stationary	0	0	5	1	63	4136	0.9
2025-07-03 12:29:37.811+00	127	\N	1126982881	stationary	0	0	4	-2	65	4138	0.9
2025-07-03 12:35:07.473+00	127	\N	978202981	stationary	0	0	6	-1	66	4143	0.9
2025-07-03 12:35:14.643+00	127	\N	1041420528	stationary	0	0	3	1	63	4144	0.9
2025-07-03 12:39:37.854+00	127	\N	1126982881	stationary	0	0	4	-2	66	4146	0.9
2025-07-03 12:45:07.57+00	127	\N	978202981	stationary	0	0	6	-1	65	4149	0.9
2025-07-03 12:45:14.736+00	127	\N	1041420528	stationary	0	0	4	1	64	4150	0.9
2025-07-03 12:49:37.893+00	127	\N	1126982881	stationary	0	0	3	-1	65	4151	0.9
2025-07-03 12:55:07.707+00	127	\N	978202981	stationary	0	0	7	-2	65	4154	0.9
2025-07-03 12:55:14.805+00	127	\N	1041420528	stationary	0	0	4	1	64	4155	0.9
2025-07-03 14:45:08.113+00	127	\N	978202981	stationary	0	0	6	-1	65	4224	0.9
2025-07-03 14:45:15.284+00	127	\N	1041420528	stationary	0	0	4	1	65	4225	0.9
2025-07-03 14:49:38.589+00	127	\N	1126982881	stationary	0	0	4	-1	65	4227	0.9
2025-07-03 14:55:08.172+00	127	\N	978202981	stationary	0	0	7	-1	65	4230	0.9
2025-07-03 14:55:15.365+00	127	\N	1041420528	stationary	0	0	4	1	64	4231	0.9
2025-07-03 14:59:38.632+00	127	\N	1126982881	stationary	0	0	4	-1	66	4232	0.9
2025-07-03 15:05:08.238+00	127	\N	978202981	stationary	0	0	6	-1	66	4234	0.9
2025-07-03 15:05:15.423+00	127	\N	1041420528	stationary	0	0	4	1	64	4235	0.9
2025-07-03 15:09:38.665+00	127	\N	1126982881	stationary	0	0	4	-2	66	4240	0.9
2025-07-03 15:15:08.337+00	127	\N	978202981	stationary	0	0	5	-2	66	4242	0.9
2025-07-03 15:15:15.487+00	127	\N	1041420528	stationary	0	0	4	0	64	4243	0.9
2025-07-03 15:19:38.713+00	127	\N	1126982881	stationary	0	0	4	-1	65	4245	0.9
2025-07-03 15:25:08.437+00	127	\N	978202981	stationary	0	0	7	-1	64	4247	0.9
2025-07-03 15:25:15.564+00	127	\N	1041420528	stationary	0	0	4	2	64	4248	0.9
2025-07-03 15:29:38.75+00	127	\N	1126982881	stationary	0	0	4	-2	66	4250	0.9
2025-07-03 15:35:08.473+00	127	\N	978202981	stationary	0	0	6	-1	65	4252	0.9
2025-07-03 15:35:15.622+00	127	\N	1041420528	stationary	0	0	4	0	64	4253	0.9
2025-07-03 15:39:38.828+00	127	\N	1126982881	stationary	0	0	3	-1	65	4258	0.9
2025-07-03 15:45:08.553+00	127	\N	978202981	stationary	0	0	7	-1	66	4260	0.9
2025-07-03 15:45:15.674+00	127	\N	1041420528	stationary	0	0	4	0	64	4261	0.9
2025-07-03 15:49:38.883+00	127	\N	1126982881	stationary	0	0	4	-2	66	4263	0.9
2025-07-03 15:52:01.891+00	127	\N	1126982881	start-moving	0	1	42	0	31	4265	0.9
2025-07-03 15:52:36.702+00	127	\N	1041420528	start-moving	0	1	-70	28	-12	4266	0.9
2025-07-03 15:52:40.579+00	127	\N	978202981	start-moving	0	1	47	-4	83	4267	0.9
2025-07-03 15:53:03.894+00	127	\N	1126982881	stop-moving	4	5	4	-2	66	4269	0.9
2025-07-03 15:53:40.578+00	127	\N	978202981	stop-moving	1	1	6	-1	65	4272	0.9
2025-07-03 15:53:43.713+00	127	\N	1041420528	stop-moving	9	10	3	-2	64	4275	0.9
2025-07-03 16:03:03.945+00	127	\N	1126982881	stationary	0	0	5	-1	66	4283	0.9
2025-07-03 16:03:40.612+00	127	\N	978202981	stationary	0	0	8	-1	65	4285	0.9
2025-07-03 16:03:43.784+00	127	\N	1041420528	stationary	0	0	3	-2	64	4286	0.9
2025-07-03 16:13:04.036+00	127	\N	1126982881	stationary	0	0	3	-1	65	4293	0.9
2025-07-03 16:13:43.824+00	127	\N	1041420528	stationary	0	0	3	-1	63	4295	0.9
2025-07-03 16:13:40.661+00	127	\N	978202981	stationary	0	0	6	-1	66	4296	0.9
2025-07-03 16:23:04.111+00	127	\N	1126982881	stationary	0	0	4	-2	64	4299	0.9
2025-07-03 16:23:40.719+00	127	\N	978202981	stationary	0	0	6	-2	65	4300	0.9
2025-07-03 16:23:43.861+00	127	\N	1041420528	stationary	0	0	3	-1	65	4301	0.9
2025-07-03 16:33:04.214+00	127	\N	1126982881	stationary	0	0	4	-2	65	4304	0.9
2025-07-03 16:33:40.837+00	127	\N	978202981	stationary	0	0	7	-1	64	4305	0.9
2025-07-03 16:33:43.893+00	127	\N	1041420528	stationary	0	0	3	-1	65	4306	0.9
2025-07-03 16:43:04.308+00	127	\N	1126982881	stationary	0	0	4	-2	65	4313	0.9
2025-07-03 16:43:40.87+00	127	\N	978202981	stationary	0	0	7	-1	65	4314	0.9
2025-07-03 16:43:43.933+00	127	\N	1041420528	stationary	0	0	3	-2	64	4315	0.9
2025-07-03 16:53:04.39+00	127	\N	1126982881	stationary	0	0	5	-1	66	4317	0.9
2025-07-03 16:53:40.909+00	127	\N	978202981	stationary	0	0	7	-1	66	4318	0.9
2025-07-03 16:53:43.971+00	127	\N	1041420528	stationary	0	0	4	-1	65	4319	0.9
2025-07-03 17:03:04.432+00	127	\N	1126982881	stationary	0	0	4	-2	65	4323	0.9
2025-07-03 17:03:40.95+00	127	\N	978202981	stationary	0	0	7	-2	64	4324	0.9
2025-07-03 17:03:44.011+00	127	\N	1041420528	stationary	0	0	3	-2	64	4325	0.9
2025-07-03 17:13:04.479+00	127	\N	1126982881	stationary	0	0	3	-1	66	4331	0.9
2025-07-03 17:13:41.025+00	127	\N	978202981	stationary	0	0	6	-1	65	4332	0.9
2025-07-03 17:13:44.048+00	127	\N	1041420528	stationary	0	0	2	-1	63	4333	0.9
2025-07-03 17:23:04.527+00	127	\N	1126982881	stationary	0	0	4	-2	65	4335	0.9
2025-07-03 17:23:41.133+00	127	\N	978202981	stationary	0	0	6	-1	64	4336	0.9
2025-07-03 17:23:44.086+00	127	\N	1041420528	stationary	0	0	3	-2	64	4337	0.9
2025-07-03 17:33:04.571+00	127	\N	1126982881	stationary	0	0	4	-2	65	4341	0.9
2025-07-03 17:33:41.272+00	127	\N	978202981	stationary	0	0	8	-1	66	4342	0.9
2025-07-03 17:33:44.131+00	127	\N	1041420528	stationary	0	0	2	-2	64	4343	0.9
2025-07-03 17:43:04.645+00	127	\N	1126982881	stationary	0	0	3	-2	66	4349	0.9
2025-07-03 17:43:41.381+00	127	\N	978202981	stationary	0	0	7	-1	64	4350	0.9
2025-07-03 17:43:44.174+00	127	\N	1041420528	stationary	0	0	3	-1	64	4351	0.9
2025-07-03 17:53:04.689+00	127	\N	1126982881	stationary	0	0	4	-3	65	4354	0.9
2025-07-03 17:53:41.413+00	127	\N	978202981	stationary	0	0	7	-2	65	4355	0.9
2025-07-03 17:53:44.226+00	127	\N	1041420528	stationary	0	0	4	-1	64	4356	0.9
2025-07-03 18:03:04.735+00	127	\N	1126982881	stationary	0	0	4	-2	66	4360	0.9
2025-07-03 18:03:41.454+00	127	\N	978202981	stationary	0	0	7	-2	65	4361	0.9
2025-07-03 18:03:44.3+00	127	\N	1041420528	stationary	0	0	4	-2	64	4362	0.9
2025-07-03 18:13:04.786+00	127	\N	1126982881	stationary	0	0	4	-1	66	4369	0.9
2025-07-03 18:13:41.496+00	127	\N	978202981	stationary	0	0	6	-1	65	4370	0.9
2025-07-03 18:13:44.352+00	127	\N	1041420528	stationary	0	0	3	-2	64	4371	0.9
2025-07-03 18:23:04.865+00	127	\N	1126982881	stationary	0	0	3	-2	65	4373	0.9
2025-07-03 18:23:41.53+00	127	\N	978202981	stationary	0	0	7	-1	65	4374	0.9
2025-07-03 18:23:44.451+00	127	\N	1041420528	stationary	0	0	3	-2	65	4375	0.9
2025-07-03 18:25:04.865+00	127	\N	1126982881	start-moving	0	1	-105	-2	-3	4376	0.9
2025-07-03 18:28:10.907+00	127	\N	1126982881	stop-moving	69	21	3	-2	66	4385	0.9
2025-07-03 18:29:40.922+00	127	\N	1126982881	start-moving	0	1	-34	37	-9	4390	0.9
2025-07-03 18:30:45.925+00	127	\N	1126982881	stop-moving	7	5	3	-3	66	4391	0.9
2025-07-03 18:33:41.592+00	127	\N	978202981	stationary	0	0	7	-1	64	4396	0.9
2025-07-03 18:33:44.499+00	127	\N	1041420528	stationary	0	0	4	-1	65	4397	0.9
2025-07-03 18:34:05.942+00	127	\N	1126982881	start-moving	0	1	7	10	65	4398	0.9
2025-07-03 18:35:05.948+00	127	\N	1126982881	stop-moving	15	2	3	-4	65	4400	0.9
2025-07-03 18:43:41.633+00	127	\N	978202981	stationary	0	0	7	-1	66	4413	0.9
2025-07-03 18:43:44.567+00	127	\N	1041420528	stationary	0	0	3	-2	63	4414	0.9
2025-07-03 18:45:06.078+00	127	\N	1126982881	stationary	0	0	3	-4	64	4416	0.9
2025-07-03 18:51:35.142+00	127	\N	1126982881	start-moving	0	1	2	-2	70	4418	0.9
2025-07-03 18:52:38.145+00	127	\N	1126982881	stop-moving	4	2	3	-2	65	4419	0.9
2025-07-03 18:53:41.67+00	127	\N	978202981	stationary	0	0	7	-1	65	4422	0.9
2025-07-03 18:53:44.606+00	127	\N	1041420528	stationary	0	0	3	-1	64	4423	0.9
2025-07-03 19:02:38.185+00	127	\N	1126982881	stationary	0	0	3	-1	65	4426	0.9
2025-07-03 19:03:41.702+00	127	\N	978202981	stationary	0	0	7	-1	65	4428	0.9
2025-07-03 19:03:44.642+00	127	\N	1041420528	stationary	0	0	4	-2	64	4429	0.9
2025-07-03 19:07:14.203+00	127	\N	1126982881	start-moving	0	1	127	95	127	4430	0.9
2025-07-03 19:08:14.203+00	127	\N	1126982881	stop-moving	3	1	4	1	65	4431	0.9
2025-07-03 19:13:41.742+00	127	\N	978202981	stationary	0	0	7	-1	65	4438	0.9
2025-07-03 19:13:44.682+00	127	\N	1041420528	stationary	0	0	2	-1	64	4439	0.9
2025-07-03 19:18:14.245+00	127	\N	1126982881	stationary	0	0	4	1	65	4442	0.9
2025-07-03 19:23:41.786+00	127	\N	978202981	stationary	0	0	6	-1	67	4443	0.9
2025-07-03 19:23:44.715+00	127	\N	1041420528	stationary	0	0	3	-1	64	4444	0.9
2025-07-03 19:26:36.272+00	127	\N	1126982881	start-moving	0	1	24	-6	92	4445	0.9
2025-07-03 19:27:36.274+00	127	\N	1126982881	stop-moving	5	1	4	-2	65	4446	0.9
2025-07-03 19:32:03.293+00	127	\N	1126982881	start-moving	0	1	33	-58	56	4450	0.9
2025-07-03 19:33:03.295+00	127	\N	1126982881	stop-moving	3	1	20	-1	64	4451	0.9
2025-07-03 19:33:41.865+00	127	\N	978202981	stationary	0	0	7	-2	64	4456	0.9
2025-07-03 19:33:44.756+00	127	\N	1041420528	stationary	0	0	3	-1	64	4457	0.9
2025-07-03 19:34:49.307+00	127	\N	1126982881	start-moving	0	1	-17	-27	8	4458	0.9
2025-07-03 19:35:53.313+00	127	\N	1126982881	stop-moving	5	3	7	12	63	4459	0.9
2025-07-03 19:43:41.925+00	127	\N	978202981	stationary	0	0	7	-1	65	4464	0.9
2025-07-03 19:43:44.797+00	127	\N	1041420528	stationary	0	0	2	-1	64	4466	0.9
2025-07-03 19:45:53.346+00	127	\N	1126982881	stationary	0	0	6	13	64	4469	0.9
2025-07-03 19:53:42.047+00	127	\N	978202981	stationary	0	0	7	-1	65	4474	0.9
2025-07-03 19:53:44.829+00	127	\N	1041420528	stationary	0	0	4	-1	65	4475	0.9
2025-07-03 19:55:53.393+00	127	\N	1126982881	stationary	0	0	7	12	64	4476	0.9
2025-07-03 20:03:42.172+00	127	\N	978202981	stationary	0	0	6	-1	65	4478	0.9
2025-07-03 20:03:44.874+00	127	\N	1041420528	stationary	0	0	3	-2	64	4479	0.9
2025-07-03 20:05:53.457+00	127	\N	1126982881	stationary	0	0	4	6	65	4482	0.9
2025-07-03 20:13:42.236+00	127	\N	978202981	stationary	0	0	6	-1	65	4485	0.9
2025-07-03 20:13:44.929+00	127	\N	1041420528	stationary	0	0	3	-2	64	4486	0.9
2025-07-03 20:15:53.492+00	127	\N	1126982881	stationary	0	0	3	4	64	4490	0.9
2025-07-03 20:23:42.273+00	127	\N	978202981	stationary	0	0	7	-2	65	4493	0.9
2025-07-03 20:23:44.964+00	127	\N	1041420528	stationary	0	0	3	-1	65	4494	0.9
2025-07-03 20:25:53.54+00	127	\N	1126982881	stationary	0	0	4	5	65	4496	0.9
2025-07-03 20:33:39.573+00	127	\N	1126982881	start-moving	0	1	-30	-29	-18	4499	0.9
2025-07-03 20:33:42.308+00	127	\N	978202981	stationary	0	0	7	-1	65	4500	0.9
2025-07-03 20:33:45.026+00	127	\N	1041420528	stationary	0	0	3	-1	65	4501	0.9
2025-07-03 20:34:38.575+00	127	\N	1126982881	stop-moving	9	1	4	-3	66	4503	0.9
2025-07-03 20:37:36.586+00	127	\N	1126982881	start-moving	0	1	2	-10	-61	4508	0.9
2025-07-03 20:38:37.601+00	127	\N	1126982881	stop-moving	13	2	3	0	65	4511	0.9
2025-07-03 20:42:19.634+00	127	\N	1126982881	start-moving	0	1	20	-10	40	4516	0.9
2025-07-03 20:43:19.645+00	127	\N	1126982881	stop-moving	3	1	3	8	64	4517	0.9
2025-07-03 20:43:42.35+00	127	\N	978202981	stationary	0	0	6	-2	65	4520	0.9
2025-07-03 20:43:45.091+00	127	\N	1041420528	stationary	0	0	3	-2	65	4521	0.9
2025-07-03 20:53:19.708+00	127	\N	1126982881	stationary	0	0	3	5	65	4528	0.9
2025-07-03 20:53:42.407+00	127	\N	978202981	stationary	0	0	7	-1	65	4530	0.9
2025-07-03 20:53:45.133+00	127	\N	1041420528	stationary	0	0	3	-2	64	4531	0.9
2025-07-03 21:01:56.774+00	127	\N	1126982881	start-moving	0	1	14	-9	127	4533	0.9
2025-07-03 21:02:56.772+00	127	\N	1126982881	stop-moving	4	1	5	-1	65	4535	0.9
2025-07-03 21:03:42.441+00	127	\N	978202981	stationary	0	0	7	-1	65	4538	0.9
2025-07-03 21:03:45.19+00	127	\N	1041420528	stationary	0	0	4	-1	64	4539	0.9
2025-07-03 21:08:38.819+00	127	\N	1126982881	start-moving	0	1	-57	22	-23	4541	0.9
2025-07-03 21:09:43.83+00	127	\N	1126982881	stop-moving	6	2	3	-2	66	4543	0.9
2025-07-03 21:09:56.821+00	127	\N	1126982881	start-moving	0	1	-12	-35	59	4546	0.9
2025-07-03 21:10:56.849+00	127	\N	1126982881	stop-moving	6	1	3	-3	65	4547	0.9
2025-07-03 21:13:42.483+00	127	\N	978202981	stationary	0	0	7	-1	66	4551	0.9
2025-07-03 21:13:45.259+00	127	\N	1041420528	stationary	0	0	4	-1	64	4552	0.9
2025-07-03 21:18:02.965+00	127	\N	1126982881	start-moving	0	1	56	-32	37	4557	0.9
2025-07-03 21:19:15.986+00	127	\N	1126982881	stop-moving	8	3	4	3	65	4559	0.9
2025-07-03 21:19:16.976+00	127	\N	1126982881	start-moving	0	1	-42	14	69	4560	0.9
2025-07-03 21:20:17.991+00	127	\N	1126982881	stop-moving	4	2	3	-3	64	4563	0.9
2025-07-03 21:21:10.993+00	127	\N	1126982881	start-moving	0	1	116	92	-72	4567	0.9
2025-07-03 21:22:11.001+00	127	\N	1126982881	stop-moving	2	1	3	-1	66	4569	0.9
2025-07-03 21:23:42.529+00	127	\N	978202981	stationary	0	0	7	-1	66	4572	0.9
2025-07-03 21:23:45.348+00	127	\N	1041420528	stationary	0	0	2	-2	64	4573	0.9
2025-07-03 21:29:16.025+00	127	\N	1126982881	start-moving	0	1	-7	21	-47	4575	0.9
2025-07-03 21:30:15.027+00	127	\N	1126982881	stop-moving	7	1	2	-1	65	4576	0.9
2025-07-03 21:33:42.571+00	127	\N	978202981	stationary	0	0	7	-1	65	4581	0.9
2025-07-03 21:33:45.384+00	127	\N	1041420528	stationary	0	0	3	-1	63	4582	0.9
2025-07-03 21:35:38.046+00	127	\N	1126982881	start-moving	0	1	-5	-95	119	4583	0.9
2025-07-03 21:36:37.046+00	127	\N	1126982881	stop-moving	4	1	4	-1	66	4584	0.9
2025-07-03 21:43:42.629+00	127	\N	978202981	stationary	0	0	7	-1	65	4588	0.9
2025-07-03 21:43:45.422+00	127	\N	1041420528	stationary	0	0	3	-2	64	4589	0.9
2025-07-03 21:46:37.082+00	127	\N	1126982881	stationary	0	0	3	-1	65	4590	0.9
2025-07-03 21:53:29.117+00	127	\N	1126982881	start-moving	0	1	31	-95	-83	4597	0.9
2025-07-03 21:53:42.722+00	127	\N	978202981	stationary	0	0	7	-1	66	4598	0.9
2025-07-03 21:53:45.458+00	127	\N	1041420528	stationary	0	0	3	-1	64	4599	0.9
2025-07-03 21:54:29.119+00	127	\N	1126982881	stop-moving	5	1	3	-1	65	4600	0.9
2025-07-03 21:54:30.116+00	127	\N	1126982881	start-moving	0	1	-21	42	-46	4601	0.9
2025-07-03 21:55:30.123+00	127	\N	1126982881	stop-moving	5	1	3	-1	65	4604	0.9
2025-07-03 21:55:32.124+00	127	\N	1126982881	start-moving	0	1	-14	-41	-58	4607	0.9
2025-07-03 21:56:36.127+00	127	\N	1126982881	stop-moving	5	2	3	-2	66	4608	0.9
2025-07-03 22:03:42.803+00	127	\N	978202981	stationary	0	0	7	-2	65	4613	0.9
2025-07-03 22:03:45.503+00	127	\N	1041420528	stationary	0	0	3	-2	65	4614	0.9
2025-07-03 22:06:36.171+00	127	\N	1126982881	stationary	0	0	2	-1	66	4617	0.9
2025-07-03 22:13:42.937+00	127	\N	978202981	stationary	0	0	7	-1	64	4619	0.9
2025-07-03 22:13:45.537+00	127	\N	1041420528	stationary	0	0	3	-1	64	4620	0.9
2025-07-03 22:15:42.205+00	127	\N	1126982881	start-moving	0	1	-2	7	83	4621	0.9
2025-07-03 22:16:42.204+00	127	\N	1126982881	stop-moving	8	1	2	-1	64	4623	0.9
2025-07-03 22:20:23.222+00	127	\N	1126982881	start-moving	0	1	35	26	89	4631	0.9
2025-07-03 22:21:57.245+00	127	\N	1126982881	stop-moving	28	13	3	-1	65	4634	0.9
2025-07-03 22:22:52.267+00	127	\N	1126982881	start-moving	0	1	74	-56	23	4640	0.9
2025-07-03 22:23:42.981+00	127	\N	978202981	stationary	0	0	6	-2	65	4642	0.9
2025-07-03 22:23:45.571+00	127	\N	1041420528	stationary	0	0	3	-2	64	4643	0.9
2025-07-03 22:23:52.268+00	127	\N	1126982881	stop-moving	4	1	3	-1	65	4644	0.9
2025-07-03 22:28:12.3+00	127	\N	1126982881	start-moving	0	1	-49	45	40	4650	0.9
2025-07-03 22:29:20.315+00	127	\N	1126982881	stop-moving	11	4	2	-1	66	4652	0.9
2025-07-03 22:32:06.326+00	127	\N	1126982881	start-moving	0	1	20	-1	86	4657	0.9
2025-07-03 22:33:43.014+00	127	\N	978202981	stationary	0	0	7	-2	64	4661	0.9
2025-07-03 22:33:45.608+00	127	\N	1041420528	stationary	0	0	3	-2	63	4662	0.9
2025-07-03 22:33:50.333+00	127	\N	1126982881	stop-moving	23	6	3	-1	65	4663	0.9
2025-07-03 22:34:56.348+00	127	\N	1126982881	start-moving	0	1	3	0	65	4668	0.9
2025-07-03 22:36:31.352+00	127	\N	1126982881	stop-moving	7	4	3	-2	67	4670	0.9
2025-07-03 22:43:43.062+00	127	\N	978202981	stationary	0	0	7	-1	65	4679	0.9
2025-07-03 22:43:45.652+00	127	\N	1041420528	stationary	0	0	3	-1	65	4680	0.9
2025-07-03 22:46:31.395+00	127	\N	1126982881	stationary	0	0	2	-1	65	4683	0.9
2025-07-03 22:53:43.114+00	127	\N	978202981	stationary	0	0	6	-1	65	4688	0.9
2025-07-03 22:53:45.698+00	127	\N	1041420528	stationary	0	0	4	-1	64	4689	0.9
2025-07-03 22:53:58.431+00	127	\N	1126982881	start-moving	0	1	-18	-12	73	4690	0.9
2025-07-03 22:54:58.434+00	127	\N	1126982881	stop-moving	4	1	3	-1	66	4691	0.9
2025-07-03 22:56:44.436+00	127	\N	1126982881	start-moving	0	1	2	-1	68	4694	0.9
2025-07-03 22:57:43.446+00	127	\N	1126982881	stop-moving	1	1	3	-1	65	4695	0.9
2025-07-03 23:03:31.476+00	127	\N	1126982881	start-moving	0	1	-31	7	67	4698	0.9
2025-07-03 23:03:43.16+00	127	\N	978202981	stationary	0	0	7	-2	65	4699	0.9
2025-07-03 23:03:45.738+00	127	\N	1041420528	stationary	0	0	4	-2	64	4700	0.9
2025-07-03 23:04:31.498+00	127	\N	1126982881	stop-moving	6	2	2	-1	65	4702	0.9
2025-07-03 23:10:41.552+00	127	\N	1126982881	start-moving	0	1	119	127	-128	4708	0.9
2025-07-03 23:11:43.552+00	127	\N	1126982881	stop-moving	3	2	3	-2	65	4709	0.9
2025-07-03 23:13:43.236+00	127	\N	978202981	stationary	0	0	7	-1	66	4714	0.9
2025-07-03 23:13:45.781+00	127	\N	1041420528	stationary	0	0	3	-1	64	4715	0.9
2025-07-03 23:16:07.578+00	127	\N	1126982881	start-moving	0	1	-35	83	-94	4716	0.9
2025-07-03 23:17:10.588+00	127	\N	1126982881	stop-moving	4	2	3	-1	65	4718	0.9
2025-07-03 23:17:38.587+00	127	\N	1126982881	start-moving	0	1	14	12	72	4721	0.9
2025-07-03 23:18:49.603+00	127	\N	1126982881	stop-moving	10	5	2	-2	66	4723	0.9
2025-07-03 23:19:54.602+00	127	\N	1126982881	start-moving	0	1	-8	-16	74	4729	0.9
2025-07-03 23:22:52.638+00	127	\N	1126982881	stop-moving	46	21	5	-1	65	4735	0.9
2025-07-03 23:22:56.64+00	127	\N	1126982881	start-moving	0	1	8	-65	-28	4738	0.9
2025-07-03 23:23:43.272+00	127	\N	978202981	stationary	0	0	6	-1	65	4739	0.9
2025-07-03 23:23:45.85+00	127	\N	1041420528	stationary	0	0	3	-1	63	4740	0.9
2025-07-03 23:24:09.656+00	127	\N	1126982881	stop-moving	14	7	4	0	65	4741	0.9
2025-07-03 23:24:53.677+00	127	\N	1126982881	start-moving	0	1	3	-1	65	4747	0.9
2025-07-03 23:26:05.695+00	127	\N	1126982881	stop-moving	3	3	4	-1	66	4749	0.9
2025-07-03 23:30:48.729+00	127	\N	1126982881	start-moving	0	1	-6	-57	-30	4756	0.9
2025-07-03 23:33:43.323+00	127	\N	978202981	stationary	0	0	7	-1	65	4761	0.9
2025-07-03 23:33:45.903+00	127	\N	1041420528	stationary	0	0	4	-1	64	4762	0.9
2025-07-03 23:34:52.762+00	127	\N	1126982881	stop-moving	54	18	2	-2	65	4765	0.9
2025-07-03 23:37:57.782+00	127	\N	1126982881	start-moving	0	1	4	-13	66	4773	0.9
2025-07-03 23:39:05.79+00	127	\N	1126982881	stop-moving	9	2	1	-1	66	4775	0.9
2025-07-03 23:42:18.801+00	127	\N	1126982881	start-moving	0	1	2	-1	89	4780	0.9
2025-07-03 23:43:18.814+00	127	\N	1126982881	stop-moving	4	1	2	-2	65	4783	0.9
2025-07-03 23:43:43.364+00	127	\N	978202981	stationary	0	0	6	-1	65	4786	0.9
2025-07-03 23:43:45.964+00	127	\N	1041420528	stationary	0	0	4	-2	64	4787	0.9
2025-07-03 23:45:31.821+00	127	\N	1126982881	start-moving	0	1	59	37	66	4789	0.9
2025-07-03 23:49:53.843+00	127	\N	1126982881	stop-moving	52	31	0	-1	67	4796	0.9
2025-07-03 23:52:07.875+00	127	\N	1126982881	start-moving	0	1	127	-69	127	4805	0.9
2025-07-03 23:53:06.871+00	127	\N	1126982881	stop-moving	3	1	3	0	65	4807	0.9
2025-07-03 23:53:43.408+00	127	\N	978202981	stationary	0	0	7	-2	66	4810	0.9
2025-07-03 23:53:46.039+00	127	\N	1041420528	stationary	0	0	3	-1	63	4811	0.9
2025-07-04 00:03:06.921+00	127	\N	1126982881	stationary	0	0	2	-1	66	4818	0.9
2025-07-04 00:03:43.475+00	127	\N	978202981	stationary	0	0	7	-2	64	4819	0.9
2025-07-04 00:03:46.102+00	127	\N	1041420528	stationary	0	0	3	-1	64	4820	0.9
2025-07-04 00:13:06.963+00	127	\N	1126982881	stationary	0	0	2	0	65	4824	0.9
2025-07-04 00:13:43.527+00	127	\N	978202981	stationary	0	0	8	-1	65	4825	0.9
2025-07-04 00:13:46.166+00	127	\N	1041420528	stationary	0	0	3	-2	63	4826	0.9
2025-07-04 00:23:06.991+00	127	\N	1126982881	stationary	0	0	4	0	66	4832	0.9
2025-07-04 00:23:43.698+00	127	\N	978202981	stationary	0	0	7	-1	66	4833	0.9
2025-07-04 00:23:46.201+00	127	\N	1041420528	stationary	0	0	3	-2	65	4834	0.9
2025-07-04 05:26:00.76+00	127	\N	978202981	start-moving	0	1	1	-37	68	5034	0.9
2025-07-04 05:27:20.777+00	127	\N	978202981	stop-moving	21	20	4	-2	65	5036	0.9
2025-07-04 05:33:08.742+00	127	\N	1126982881	stationary	0	0	2	-1	66	5051	0.9
2025-07-04 05:33:47.767+00	127	\N	1041420528	stationary	0	0	3	-2	64	5052	0.9
2025-07-04 09:13:48.776+00	127	\N	1041420528	stationary	0	0	3	-2	64	5205	0.9
2025-07-04 09:17:22.433+00	127	\N	978202981	stationary	0	0	5	-1	64	5206	0.9
2025-07-04 09:23:10.06+00	127	\N	1126982881	stationary	0	0	2	-1	65	5208	0.9
2025-07-04 09:51:14.94+00	127	\N	1041420528	start-moving	0	1	29	-16	52	5227	0.9
2025-07-04 09:51:32.593+00	127	\N	978202981	start-moving	0	1	20	-32	38	5228	0.9
2025-07-04 09:52:17.951+00	127	\N	1041420528	stop-moving	3	3	4	-2	65	5232	0.9
2025-07-04 09:52:34.6+00	127	\N	978202981	stop-moving	4	4	5	0	64	5235	0.9
2025-07-04 09:53:10.182+00	127	\N	1126982881	stationary	0	0	3	-1	65	5239	0.9
2025-07-04 09:57:17.2+00	127	\N	1126982881	start-moving	0	1	-39	-128	55	5242	0.9
2025-07-04 09:58:19.204+00	127	\N	1126982881	stop-moving	3	3	51	40	1	5245	0.9
2025-07-04 09:58:27.203+00	127	\N	1126982881	start-moving	0	1	-39	13	-93	5248	0.9
2025-07-04 09:59:26.21+00	127	\N	1126982881	stop-moving	2	1	5	0	-65	5250	0.9
2025-07-04 10:01:32.211+00	127	\N	1126982881	start-moving	0	1	2	7	-64	5254	0.9
2025-07-04 10:02:17.989+00	127	\N	1041420528	stationary	0	0	3	-2	65	5256	0.9
2025-07-04 10:02:34.632+00	127	\N	978202981	stationary	0	0	4	0	65	5257	0.9
2025-07-04 10:03:25.233+00	127	\N	1126982881	stop-moving	7	7	6	-1	65	5258	0.9
2025-07-04 10:06:09.24+00	127	\N	1126982881	start-moving	0	1	4	4	89	5264	0.9
2025-07-04 10:12:18.042+00	127	\N	1041420528	stationary	0	0	4	-1	65	5277	0.9
2025-07-04 10:12:34.671+00	127	\N	978202981	stationary	0	0	5	0	65	5278	0.9
2025-07-04 10:13:02.296+00	127	\N	1126982881	stop-moving	83	26	4	-1	65	5280	0.9
2025-07-04 10:22:18.096+00	127	\N	1041420528	stationary	0	0	2	-1	65	5291	0.9
2025-07-04 10:22:34.761+00	127	\N	978202981	stationary	0	0	5	0	64	5293	0.9
2025-07-04 10:23:02.381+00	127	\N	1126982881	stationary	0	0	3	-1	64	5294	0.9
2025-07-04 11:00:11.569+00	127	\N	1126982881	start-moving	0	1	20	-117	36	5325	0.9
2025-07-04 11:02:18.344+00	127	\N	1041420528	stationary	0	0	3	-2	65	5329	0.9
2025-07-04 11:02:35.176+00	127	\N	978202981	stationary	0	0	4	0	65	5330	0.9
2025-07-04 11:02:44.583+00	127	\N	1126982881	stop-moving	18	6	60	15	17	5331	0.9
2025-07-04 11:07:04.616+00	127	\N	1126982881	start-moving	0	1	-22	-79	-31	5338	0.9
2025-07-04 11:09:04.645+00	127	\N	1126982881	stop-moving	34	29	3	-2	65	5344	0.9
2025-07-04 11:10:05.648+00	127	\N	1126982881	start-moving	0	1	5	2	48	5348	0.9
2025-07-04 11:11:09.655+00	127	\N	1126982881	stop-moving	2	2	3	-2	66	5350	0.9
2025-07-04 11:11:24.648+00	127	\N	1126982881	start-moving	0	1	-11	2	74	5353	0.9
2025-07-04 11:12:18.377+00	127	\N	1041420528	stationary	0	0	3	-2	64	5356	0.9
2025-07-04 11:12:35.216+00	127	\N	978202981	stationary	0	0	4	0	66	5358	0.9
2025-07-04 11:12:55.662+00	127	\N	1126982881	stop-moving	31	40	3	-2	65	5360	0.9
2025-07-04 11:13:05.668+00	127	\N	1126982881	start-moving	0	1	4	-3	67	5363	0.9
2025-07-04 11:14:04.681+00	127	\N	1126982881	stop-moving	1	1	3	-1	65	5366	0.9
2025-07-04 11:14:45.681+00	127	\N	1126982881	start-moving	0	1	-23	-13	71	5370	0.9
2025-07-04 11:15:45.692+00	127	\N	1126982881	stop-moving	2	1	4	-1	65	5372	0.9
2025-07-04 11:17:19.704+00	127	\N	1126982881	start-moving	0	1	3	-1	-60	5376	0.9
2025-07-04 11:18:18.732+00	127	\N	1126982881	stop-moving	4	1	1	0	-65	5377	0.9
2025-07-04 11:21:04.753+00	127	\N	1126982881	start-moving	0	1	-41	9	52	5382	0.9
2025-07-04 11:22:03.764+00	127	\N	1126982881	stop-moving	3	1	6	1	67	5384	0.9
2025-07-04 11:22:18.412+00	127	\N	1041420528	stationary	0	0	4	-2	64	5387	0.9
2025-07-04 11:22:35.267+00	127	\N	978202981	stationary	0	0	4	0	64	5388	0.9
2025-07-04 11:32:03.827+00	127	\N	1126982881	stationary	0	0	6	0	64	5395	0.9
2025-07-04 11:32:18.454+00	127	\N	1041420528	stationary	0	0	3	-2	63	5396	0.9
2025-07-04 11:32:35.296+00	127	\N	978202981	stationary	0	0	4	-1	65	5397	0.9
2025-07-04 11:42:03.857+00	127	\N	1126982881	stationary	0	0	5	1	64	5402	0.9
2025-07-04 11:42:18.498+00	127	\N	1041420528	stationary	0	0	3	-1	64	5404	0.9
2025-07-04 11:42:35.344+00	127	\N	978202981	stationary	0	0	5	0	65	5405	0.9
2025-07-04 11:52:03.905+00	127	\N	1126982881	stationary	0	0	6	1	65	5408	0.9
2025-07-04 11:52:18.533+00	127	\N	1041420528	stationary	0	0	3	-2	64	5409	0.9
2025-07-04 11:52:35.377+00	127	\N	978202981	stationary	0	0	5	-1	64	5410	0.9
2025-07-04 12:02:03.95+00	127	\N	1126982881	stationary	0	0	6	0	65	5415	0.9
2025-07-04 12:02:18.569+00	127	\N	1041420528	stationary	0	0	3	-2	64	5416	0.9
2025-07-04 12:02:35.411+00	127	\N	978202981	stationary	0	0	5	0	65	5417	0.9
2025-07-04 12:12:03.986+00	127	\N	1126982881	stationary	0	0	6	0	65	5423	0.9
2025-07-04 12:12:18.615+00	127	\N	1041420528	stationary	0	0	3	-2	64	5424	0.9
2025-07-04 12:12:35.458+00	127	\N	978202981	stationary	0	0	5	-1	65	5425	0.9
2025-07-04 13:21:08.298+00	127	\N	1126982881	start-moving	0	1	8	-1	56	5472	0.9
2025-07-04 13:22:08.297+00	127	\N	1126982881	stop-moving	3	2	3	0	65	5473	0.9
2025-07-04 13:22:19.191+00	127	\N	1041420528	stationary	0	0	2	-2	64	5476	0.9
2025-07-04 13:22:35.852+00	127	\N	978202981	stationary	0	0	5	-1	66	5477	0.9
2025-07-04 13:24:28.31+00	127	\N	1126982881	start-moving	0	1	0	-2	-63	5479	0.9
2025-07-04 13:24:59.203+00	127	\N	1041420528	start-moving	0	1	1	24	68	5480	0.9
2025-07-04 13:26:21.335+00	127	\N	1126982881	stop-moving	6	5	0	-1	65	5485	0.9
2025-07-04 13:26:25.217+00	127	\N	1041420528	stop-moving	15	14	5	-4	64	5488	0.9
2025-07-04 13:42:04.439+00	127	\N	1126982881	start-moving	0	1	43	65	-36	5514	0.9
2025-07-04 13:42:35.935+00	127	\N	978202981	stationary	0	0	5	0	64	5515	0.9
2025-07-04 13:43:03.448+00	127	\N	1126982881	stop-moving	2	1	3	-2	66	5516	0.9
2025-07-04 13:46:25.296+00	127	\N	1041420528	stationary	0	0	6	-5	64	5521	0.9
2025-07-04 13:52:35.977+00	127	\N	978202981	stationary	0	0	4	-1	65	5530	0.9
2025-07-04 13:53:03.549+00	127	\N	1126982881	stationary	0	0	3	-1	65	5531	0.9
2025-07-04 13:56:25.324+00	127	\N	1041420528	stationary	0	0	5	-5	65	5536	0.9
2025-07-04 13:57:12.596+00	127	\N	1126982881	stop-moving	3	4	3	-1	66	5537	0.9
2025-07-04 13:57:43.602+00	127	\N	1126982881	start-moving	0	1	-4	-12	66	5541	0.9
2025-07-04 13:58:43.616+00	127	\N	1126982881	stop-moving	1	1	2	-2	65	5544	0.9
2025-07-04 13:59:50.626+00	127	\N	1126982881	start-moving	0	1	2	-2	65	5549	0.9
2025-07-04 14:00:49.635+00	127	\N	1126982881	stop-moving	1	1	3	-1	66	5551	0.9
2025-07-04 14:01:33.629+00	127	\N	1126982881	start-moving	0	1	3	-1	65	5555	0.9
2025-07-04 14:02:34.641+00	127	\N	1126982881	stop-moving	2	4	3	-1	66	5557	0.9
2025-07-04 14:02:36.045+00	127	\N	978202981	stationary	0	0	4	-1	65	5560	0.9
2025-07-04 14:05:40.652+00	127	\N	1126982881	start-moving	0	1	3	-2	66	5564	0.9
2025-07-04 14:06:25.364+00	127	\N	1041420528	stationary	0	0	5	-5	64	5566	0.9
2025-07-04 14:06:44.665+00	127	\N	1126982881	stop-moving	2	4	3	0	66	5567	0.9
2025-07-04 14:07:11.665+00	127	\N	1126982881	start-moving	0	1	3	-1	66	5570	0.9
2025-07-04 14:08:10.671+00	127	\N	1126982881	stop-moving	1	1	4	0	65	5571	0.9
2025-07-04 14:12:36.102+00	127	\N	978202981	stationary	0	0	4	0	65	5581	0.9
2025-07-04 14:16:25.406+00	127	\N	1041420528	stationary	0	0	5	-4	63	5582	0.9
2025-07-04 14:18:10.708+00	127	\N	1126982881	stationary	0	0	3	-2	65	5583	0.9
2025-07-04 14:22:36.145+00	127	\N	978202981	stationary	0	0	5	1	64	5586	0.9
2025-07-04 14:26:25.44+00	127	\N	1041420528	stationary	0	0	5	-5	64	5587	0.9
2025-07-04 14:28:10.746+00	127	\N	1126982881	stationary	0	0	3	-1	65	5589	0.9
2025-07-04 14:32:36.193+00	127	\N	978202981	stationary	0	0	4	-1	67	5592	0.9
2025-07-04 14:36:25.499+00	127	\N	1041420528	stationary	0	0	5	-5	64	5593	0.9
2025-07-04 14:38:10.779+00	127	\N	1126982881	stationary	0	0	4	-1	66	5594	0.9
2025-07-04 14:38:57.789+00	127	\N	1126982881	start-moving	0	1	4	-1	66	5595	0.9
2025-07-04 14:39:58.791+00	127	\N	1126982881	stop-moving	2	3	3	-1	64	5597	0.9
2025-07-04 14:42:36.243+00	127	\N	978202981	stationary	0	0	5	0	66	5605	0.9
2025-07-04 14:42:53.805+00	127	\N	1126982881	start-moving	0	1	4	-6	22	5607	0.9
2025-07-04 14:43:55.815+00	127	\N	1126982881	stop-moving	5	2	-4	1	-65	5608	0.9
2025-07-04 14:46:25.541+00	127	\N	1041420528	stationary	0	0	5	-5	63	5612	0.9
2025-07-04 14:48:06.823+00	127	\N	1126982881	start-moving	0	1	-1	48	43	5613	0.9
2025-07-04 14:49:44.83+00	127	\N	1126982881	stop-moving	3	2	3	-1	65	5615	0.9
2025-07-04 14:49:55.835+00	127	\N	1126982881	start-moving	0	1	16	-20	62	5618	0.9
2025-07-04 14:50:55.833+00	127	\N	1126982881	stop-moving	1	1	4	0	65	5619	0.9
2025-07-04 14:52:36.291+00	127	\N	978202981	stationary	0	0	5	-1	66	5626	0.9
2025-07-04 15:16:25.685+00	127	\N	1041420528	stationary	0	0	4	-5	63	5660	0.9
2025-07-04 15:18:40.013+00	127	\N	1126982881	start-moving	0	1	25	40	-5	5661	0.9
2025-07-04 15:19:52.02+00	127	\N	1126982881	stop-moving	13	8	3	-1	64	5664	0.9
2025-07-04 15:20:21.022+00	127	\N	1126982881	start-moving	0	1	-83	-128	64	5667	0.9
2025-07-04 15:21:40.042+00	127	\N	1126982881	stop-moving	16	16	3	0	64	5674	0.9
2025-07-04 15:22:34.049+00	127	\N	1126982881	start-moving	0	1	-7	17	71	5678	0.9
2025-07-04 15:22:36.522+00	127	\N	978202981	stationary	0	0	5	0	65	5679	0.9
2025-07-04 15:23:40.049+00	127	\N	1126982881	stop-moving	4	5	4	0	65	5682	0.9
2025-07-04 15:23:54.048+00	127	\N	1126982881	start-moving	0	1	3	0	65	5685	0.9
2025-07-04 15:25:06.052+00	127	\N	1126982881	stop-moving	6	10	3	-1	66	5690	0.9
2025-07-04 15:25:13.737+00	127	\N	1041420528	start-moving	0	1	14	44	84	5693	0.9
2025-07-04 15:26:15.748+00	127	\N	1041420528	stop-moving	3	4	2	-2	64	5695	0.9
2025-07-04 15:32:36.602+00	127	\N	978202981	stationary	0	0	5	-1	66	5710	0.9
2025-07-04 15:35:06.108+00	127	\N	1126982881	stationary	0	0	3	-1	66	5712	0.9
2025-07-04 15:36:15.836+00	127	\N	1041420528	stationary	0	0	3	-1	64	5714	0.9
2025-07-04 18:14:40.714+00	127	telegraf	1041420528	start-moving	0	1	12	21	39	6081	1
2025-07-04 18:14:43.275+00	127	telegraf	1126982881	start-moving	0	1	0	-3	65	6082	1
2025-07-04 18:15:39.729+00	127	telegraf	1041420528	stop-moving	3	1	4	-2	65	6087	1
2025-07-04 18:15:45.29+00	127	telegraf	1126982881	stop-moving	2	2	3	-2	64	6090	1
2025-07-04 18:17:12.304+00	127	telegraf	1126982881	start-moving	0	1	-12	-10	60	6095	1
2025-07-04 18:17:18.749+00	127	telegraf	1041420528	start-moving	0	1	4	-1	64	6097	1
2025-07-04 18:18:17.305+00	127	telegraf	1126982881	stop-moving	4	6	4	-2	65	6101	1
2025-07-04 18:18:17.762+00	127	telegraf	1041420528	stop-moving	1	1	4	-1	65	6104	1
2025-07-04 18:22:37.439+00	127	telegraf	978202981	stationary	0	0	4	-1	66	6109	1
2025-07-04 18:32:37.476+00	127	telegraf	978202981	stationary	0	0	5	0	64	6115	1
2025-07-04 18:33:16.362+00	127	telegraf	1126982881	stop-moving	1	1	4	-1	65	6118	1
2025-07-04 19:39:20.721+00	127	telegraf	1126982881	stop-moving	2	3	4	-2	66	6200	1
2025-07-04 19:42:11.152+00	127	telegraf	1041420528	stationary	0	0	4	-1	63	6212	1
2025-07-04 19:42:37.772+00	127	telegraf	978202981	stationary	0	0	4	0	64	6213	1
2025-07-04 19:52:11.199+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6230	1
2025-07-04 19:52:37.806+00	127	telegraf	978202981	stationary	0	0	5	0	63	6231	1
2025-07-04 20:02:11.243+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	6238	1
2025-07-04 20:02:37.853+00	127	telegraf	978202981	stationary	0	0	5	0	65	6239	1
2025-07-04 20:12:11.288+00	127	telegraf	1041420528	stationary	0	0	3	0	62	6251	1
2025-07-04 20:12:37.885+00	127	telegraf	978202981	stationary	0	0	4	-1	64	6252	1
2025-07-04 20:20:46.103+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	6276	1
2025-07-04 20:22:11.38+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	6281	1
2025-07-04 20:24:00.148+00	127	telegraf	1126982881	start-moving	0	1	2	-1	66	6288	1
2025-07-04 20:24:07.942+00	127	telegraf	978202981	start-moving	0	1	8	3	53	6289	1
2025-07-04 20:24:59.147+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	65	6292	1
2025-07-04 20:25:07.936+00	127	telegraf	978202981	stop-moving	1	2	5	2	65	6295	1
2025-07-04 20:25:08.39+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	6298	1
2025-07-04 20:34:59.207+00	127	telegraf	1126982881	stationary	0	0	4	0	66	6316	1
2025-07-04 20:35:08.043+00	127	telegraf	978202981	stationary	0	0	5	2	64	6317	1
2025-07-04 20:35:08.46+00	127	telegraf	1041420528	stationary	0	0	3	0	63	6318	1
2025-07-04 20:36:09.213+00	127	telegraf	1126982881	start-moving	0	1	2	-1	66	6320	1
2025-07-04 20:37:09.226+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	65	6322	1
2025-07-04 20:42:20.272+00	127	telegraf	1126982881	start-moving	0	1	3	-1	65	6334	1
2025-07-04 20:43:05.556+00	127	telegraf	1041420528	start-moving	0	1	4	-1	65	6336	1
2025-07-04 20:44:05.292+00	127	telegraf	1126982881	stop-moving	2	2	3	-1	65	6338	1
2025-07-04 20:44:05.568+00	127	telegraf	1041420528	stop-moving	1	1	3	-2	64	6341	1
2025-07-04 20:45:08.104+00	127	telegraf	978202981	stationary	0	0	5	2	65	6346	1
2025-07-04 20:54:05.334+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	6360	1
2025-07-04 20:54:05.61+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6361	1
2025-07-04 20:55:08.196+00	127	telegraf	978202981	stationary	0	0	6	2	65	6365	1
2025-07-04 21:04:05.377+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	6372	1
2025-07-04 21:04:05.656+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6373	1
2025-07-04 21:05:08.238+00	127	telegraf	978202981	stationary	0	0	5	2	64	6375	1
2025-07-04 21:14:05.471+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	6389	1
2025-07-04 21:14:05.693+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6390	1
2025-07-04 21:15:08.28+00	127	telegraf	978202981	stationary	0	0	6	1	64	6391	1
2025-07-04 21:24:05.518+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	6401	1
2025-07-04 21:24:05.732+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	6402	1
2025-07-04 21:25:08.315+00	127	telegraf	978202981	stationary	0	0	4	2	64	6404	1
2025-07-04 21:34:05.56+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	6410	1
2025-07-04 21:34:05.768+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	6411	1
2025-07-04 21:39:04.593+00	127	telegraf	1126982881	start-moving	0	1	2	-1	65	6419	1
2025-07-04 21:44:05.823+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	6427	1
2025-07-04 21:50:03.656+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	6435	1
2025-07-04 21:55:08.475+00	127	telegraf	978202981	stationary	0	0	6	3	64	6441	1
2025-07-04 22:00:03.711+00	127	telegraf	1126982881	stationary	0	0	3	0	66	6445	1
2025-07-04 22:03:30.726+00	127	telegraf	1126982881	start-moving	0	1	2	0	67	6447	1
2025-07-04 22:04:29.744+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	65	6449	1
2025-07-04 22:05:08.508+00	127	telegraf	978202981	stationary	0	0	5	1	65	6453	1
2025-07-04 22:14:05.968+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6462	1
2025-07-04 22:14:29.815+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	6463	1
2025-07-04 22:15:08.545+00	127	telegraf	978202981	stationary	0	0	5	1	65	6466	1
2025-07-04 22:24:06.013+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6473	1
2025-07-04 22:24:29.902+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	6475	1
2025-07-04 22:25:08.582+00	127	telegraf	978202981	stationary	0	0	6	1	64	6476	1
2025-07-04 22:34:06.043+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	6482	1
2025-07-04 22:34:29.982+00	127	telegraf	1126982881	stationary	0	0	2	0	65	6483	1
2025-07-04 22:35:08.621+00	127	telegraf	978202981	stationary	0	0	6	3	65	6485	1
2025-07-04 22:44:06.096+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6494	1
2025-07-04 22:44:30.03+00	127	telegraf	1126982881	stationary	0	0	2	0	65	6495	1
2025-07-04 22:45:08.664+00	127	telegraf	978202981	stationary	0	0	4	2	64	6497	1
2025-07-04 22:54:06.159+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6508	1
2025-07-04 22:54:30.093+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	6511	1
2025-07-04 22:55:08.699+00	127	telegraf	978202981	stationary	0	0	4	2	64	6513	1
2025-07-04 23:04:06.237+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	6524	1
2025-07-04 23:05:08.736+00	127	telegraf	978202981	stationary	0	0	5	3	64	6528	1
2025-07-04 23:07:52.169+00	127	telegraf	1126982881	start-moving	0	1	1	-1	66	6533	1
2025-07-04 23:07:56.256+00	127	telegraf	1041420528	start-moving	0	1	7	-10	68	6534	1
2025-07-05 07:25:48.27+00	127	telegraf	978202981	stop-moving	1	1	6	-1	65	6902	1
2025-07-05 07:25:48.68+00	127	telegraf	1126982881	stop-moving	2	2	3	-2	66	6905	1
2025-07-05 07:25:50.625+00	127	telegraf	1041420528	stop-moving	3	4	3	-2	64	6908	1
2025-07-05 07:35:48.317+00	127	telegraf	978202981	stationary	0	0	6	-1	66	6914	1
2025-07-05 07:35:48.715+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	6915	1
2025-07-05 07:35:50.719+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	6916	1
2025-07-05 07:45:48.397+00	127	telegraf	978202981	stationary	0	0	6	-1	64	6925	1
2025-07-05 07:45:48.76+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	6926	1
2025-07-05 07:45:50.781+00	127	telegraf	1041420528	stationary	0	0	3	-2	63	6927	1
2025-07-05 07:55:48.448+00	127	telegraf	978202981	stationary	0	0	6	-1	65	6930	1
2025-07-05 07:55:48.805+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	6931	1
2025-07-05 07:55:50.821+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	6932	1
2025-07-05 08:45:48.655+00	127	telegraf	978202981	stationary	0	0	5	-1	65	6961	1
2025-07-05 08:45:49.138+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	6962	1
2025-07-05 08:55:51.072+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	6968	1
2025-07-05 09:05:48.721+00	127	telegraf	978202981	stationary	0	0	5	-1	65	6973	1
2025-07-05 09:05:49.221+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	6974	1
2025-07-05 09:05:51.11+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	6975	1
2025-07-05 09:15:48.763+00	127	telegraf	978202981	stationary	0	0	5	0	65	6981	1
2025-07-05 09:15:49.269+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	6982	1
2025-07-05 09:15:51.151+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6983	1
2025-07-05 09:25:48.8+00	127	telegraf	978202981	stationary	0	0	5	-1	64	6990	1
2025-07-05 09:25:49.3+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	6991	1
2025-07-05 09:25:51.189+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6992	1
2025-07-05 09:35:48.841+00	127	telegraf	978202981	stationary	0	0	5	-1	65	6996	1
2025-07-05 09:35:49.335+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	6997	1
2025-07-05 09:35:51.228+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	6998	1
2025-07-05 09:45:48.88+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7002	1
2025-07-05 09:45:49.383+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7003	1
2025-07-05 09:45:51.269+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	7004	1
2025-07-05 09:55:48.918+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7010	1
2025-07-05 09:55:49.418+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7011	1
2025-07-05 09:55:51.338+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	7012	1
2025-07-05 10:05:51.404+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7018	1
2025-07-05 10:15:51.511+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7024	1
2025-07-05 10:25:49.168+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7032	1
2025-07-05 10:25:49.554+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	7033	1
2025-07-05 10:35:49.236+00	127	telegraf	978202981	stationary	0	0	6	-1	64	7035	1
2025-07-05 10:35:49.59+00	127	telegraf	1126982881	stationary	0	0	3	-1	67	7036	1
2025-07-05 10:35:51.6+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7037	1
2025-07-05 10:45:49.271+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7042	1
2025-07-05 10:45:49.628+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7043	1
2025-07-05 10:45:51.642+00	127	telegraf	1041420528	stationary	0	0	3	0	63	7044	1
2025-07-05 12:15:49.622+00	127	telegraf	978202981	stationary	0	0	5	-1	64	7101	1
2025-07-05 12:15:50.121+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7102	1
2025-07-05 12:15:52.026+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7103	1
2025-07-05 12:25:52.054+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7109	1
2025-07-05 12:35:49.692+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7114	1
2025-07-05 12:35:50.202+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	7115	1
2025-07-05 12:35:52.125+00	127	telegraf	1041420528	stationary	0	0	2	0	64	7116	1
2025-07-05 12:45:49.746+00	127	telegraf	978202981	stationary	0	0	6	0	65	7121	1
2025-07-05 12:45:50.238+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7122	1
2025-07-05 12:45:52.196+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	7123	1
2025-07-05 12:55:52.287+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7131	1
2025-07-05 13:05:49.907+00	127	telegraf	978202981	stationary	0	0	7	0	66	7133	1
2025-07-05 13:05:50.341+00	127	telegraf	1126982881	stationary	0	0	2	-3	64	7134	1
2025-07-05 13:05:52.338+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7135	1
2025-07-05 13:15:49.977+00	127	telegraf	978202981	stationary	0	0	6	1	65	7139	1
2025-07-05 13:15:50.371+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7140	1
2025-07-05 13:15:52.391+00	127	telegraf	1041420528	stationary	0	0	3	0	63	7141	1
2025-07-05 13:25:52.431+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	7150	1
2025-07-05 13:35:50.069+00	127	telegraf	978202981	stationary	0	0	6	0	65	7154	1
2025-07-05 13:35:50.466+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7155	1
2025-07-05 13:35:52.477+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7156	1
2025-07-05 13:45:50.103+00	127	telegraf	978202981	stationary	0	0	7	-1	66	7159	1
2025-07-05 13:45:50.523+00	127	telegraf	1126982881	stationary	0	0	2	-1	66	7160	1
2025-07-05 13:45:52.524+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	7161	1
2025-07-05 13:55:50.149+00	127	telegraf	978202981	stationary	0	0	5	-2	65	7167	1
2025-07-05 13:55:50.585+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7168	1
2025-07-05 14:05:52.597+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7174	1
2025-07-05 14:15:50.235+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7177	1
2025-07-05 14:15:50.735+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7178	1
2025-07-05 14:15:52.643+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7179	1
2025-07-05 14:25:50.282+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7186	1
2025-07-05 14:25:50.775+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	7187	1
2025-07-05 14:25:52.696+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7188	1
2025-07-05 14:35:50.315+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7191	1
2025-07-05 14:35:50.81+00	127	telegraf	1126982881	stationary	0	0	3	-2	67	7192	1
2025-07-05 14:35:52.731+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	7193	1
2025-07-05 14:45:50.348+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7196	1
2025-07-05 14:45:50.846+00	127	telegraf	1126982881	stationary	0	0	3	-2	67	7197	1
2025-07-05 14:45:52.766+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7198	1
2025-07-05 14:55:52.807+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	7206	1
2025-07-05 15:05:52.845+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7211	1
2025-07-05 15:15:52.905+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7218	1
2025-07-05 15:25:50.506+00	127	telegraf	978202981	stationary	0	0	5	-1	64	7224	1
2025-07-05 15:25:51.001+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7225	1
2025-07-05 15:25:52.976+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	7226	1
2025-07-05 15:35:50.64+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7229	1
2025-07-05 15:35:51.04+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	7230	1
2025-07-05 15:35:53.066+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7231	1
2025-07-05 15:45:50.782+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7234	1
2025-07-05 15:45:51.08+00	127	telegraf	1126982881	stationary	0	0	3	-2	64	7235	1
2025-07-05 15:45:53.137+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7236	1
2025-07-05 15:55:50.904+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7242	1
2025-07-05 15:55:51.126+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7243	1
2025-07-05 15:55:53.186+00	127	telegraf	1041420528	stationary	0	0	4	-1	64	7244	1
2025-07-05 16:05:50.981+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7247	1
2025-07-05 16:05:51.17+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	7248	1
2025-07-05 16:05:53.23+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	7249	1
2025-07-05 16:35:51.095+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7267	1
2025-07-05 16:35:51.325+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	7268	1
2025-07-05 16:35:53.335+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7269	1
2025-07-05 16:45:51.136+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7271	1
2025-07-05 16:45:51.396+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7272	1
2025-07-05 16:45:53.381+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7273	1
2025-07-05 16:55:53.415+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7281	1
2025-07-05 17:05:51.211+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7286	1
2025-07-05 17:05:51.543+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7287	1
2025-07-05 17:05:53.472+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7288	1
2025-07-05 17:15:51.247+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7290	1
2025-07-05 17:15:51.641+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7291	1
2025-07-05 17:15:53.514+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7292	1
2025-07-05 17:35:51.322+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7309	1
2025-07-05 17:38:44.602+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	7311	1
2025-07-05 17:48:44.643+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7314	1
2025-07-05 17:55:51.554+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7319	1
2025-07-05 17:55:51.796+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7320	1
2025-07-05 17:58:44.681+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7321	1
2025-07-05 18:05:51.702+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7327	1
2025-07-05 18:05:51.823+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	7328	1
2025-07-05 19:25:52.078+00	127	telegraf	978202981	stationary	0	0	6	0	65	7406	1
2025-07-05 19:25:52.35+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7407	1
2025-07-05 19:28:45.201+00	127	telegraf	1041420528	stationary	0	0	2	0	64	7411	1
2025-07-05 19:35:52.122+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7421	1
2025-07-05 19:35:52.445+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	7422	1
2025-07-05 19:38:45.277+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7423	1
2025-07-05 19:45:52.169+00	127	telegraf	978202981	stationary	0	0	6	-1	63	7431	1
2025-07-05 19:45:52.495+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7432	1
2025-07-05 19:48:45.328+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7435	1
2025-07-05 19:55:52.249+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7437	1
2025-07-05 19:55:52.523+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7438	1
2025-07-05 19:58:45.364+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	7442	1
2025-07-05 20:05:52.413+00	127	telegraf	978202981	stationary	0	0	5	0	64	7453	1
2025-07-05 20:05:52.573+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7454	1
2025-07-05 20:08:45.42+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	7459	1
2025-07-05 20:15:52.565+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7462	1
2025-07-05 20:15:52.613+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	7463	1
2025-07-05 20:18:45.457+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7464	1
2025-07-05 20:25:52.599+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7469	1
2025-07-05 20:25:52.653+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7470	1
2025-07-05 20:28:45.513+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	7476	1
2025-07-05 20:38:45.559+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	7480	1
2025-07-05 20:45:52.678+00	127	telegraf	978202981	stationary	0	0	5	-2	66	7481	1
2025-07-05 20:45:52.733+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7482	1
2025-07-05 20:48:45.621+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	7484	1
2025-07-05 20:55:52.717+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7491	1
2025-07-05 20:55:52.78+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	7492	1
2025-07-05 20:58:45.701+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	7497	1
2025-07-05 21:05:52.759+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7499	1
2025-07-05 21:05:52.815+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7500	1
2025-07-05 21:08:45.764+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7501	1
2025-07-05 21:18:45.805+00	127	telegraf	1041420528	stationary	0	0	1	-1	66	7508	1
2025-07-05 21:28:45.853+00	127	telegraf	1041420528	stationary	0	0	3	0	64	7521	1
2025-07-05 21:38:45.895+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7534	1
2025-07-05 21:48:45.941+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7543	1
2025-07-05 21:55:52.968+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7547	1
2025-07-05 21:55:53.251+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7548	1
2025-07-05 21:58:45.978+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	7550	1
2025-07-05 22:05:53.012+00	127	telegraf	978202981	stationary	0	0	4	-2	65	7556	1
2025-07-05 22:05:53.289+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	7557	1
2025-07-05 22:08:46.028+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7561	1
2025-07-05 22:15:53.143+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7565	1
2025-07-05 22:15:53.332+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	7566	1
2025-07-05 22:18:46.078+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7568	1
2025-07-05 22:25:53.326+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7572	1
2025-07-05 22:25:53.371+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	7573	1
2025-07-05 22:28:46.127+00	127	telegraf	1041420528	stationary	0	0	1	-2	62	7576	1
2025-07-05 22:35:53.411+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7580	1
2025-07-05 22:35:53.424+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7581	1
2025-07-05 22:38:46.158+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7585	1
2025-07-05 22:45:53.456+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	7589	1
2025-07-05 22:45:53.467+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7590	1
2025-07-05 22:48:46.19+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7591	1
2025-07-05 22:55:53.482+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7595	1
2025-07-05 22:55:53.503+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7596	1
2025-07-05 22:58:46.231+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7598	1
2025-07-05 23:05:53.573+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	7603	1
2025-07-05 23:05:53.586+00	127	telegraf	978202981	stationary	0	0	5	0	65	7604	1
2025-07-05 23:08:46.268+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7606	1
2025-07-05 23:15:53.614+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	7610	1
2025-07-05 23:15:53.627+00	127	telegraf	978202981	stationary	0	0	6	-2	65	7611	1
2025-07-05 23:18:46.323+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7613	1
2025-07-05 23:25:53.659+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7616	1
2025-07-05 23:25:53.664+00	127	telegraf	978202981	stationary	0	0	5	-2	67	7617	1
2025-07-05 23:28:46.372+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	7620	1
2025-07-05 23:35:53.701+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7624	1
2025-07-05 23:35:53.727+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	7625	1
2025-07-07 09:05:38.442+00	127	telegraf	1523842139	start-moving	0	1	-1	0	-67	113	1
2025-07-07 09:05:40.475+00	127	telegraf	840973111	start-moving	0	1	1	-3	-61	114	1
2025-07-07 09:05:40.651+00	127	telegraf	527134251	start-moving	0	1	-2	-3	-65	115	1
2025-07-07 09:06:39.414+00	127	telegraf	840973111	stop-moving	1	1	1	-1	-61	116	1
2025-07-07 09:06:40.381+00	127	telegraf	1523842139	stop-moving	2	2	0	-1	-65	119	1
2025-07-07 09:07:02.93+00	127	telegraf	1041420528	start-moving	0	1	3	-2	64	1	1
2025-07-07 09:07:28.57+00	127	telegraf	527134251	stop-moving	3	3	-2	-3	-64	124	1
2025-07-07 09:08:01.946+00	127	telegraf	1041420528	stop-moving	1	1	2	0	64	3	1
2025-07-07 09:06:03.926+00	127	telegraf	1041420528	stop-moving	11	24	2	-1	64	7	1
2025-07-07 09:07:02.526+00	127	telegraf	1126982881	start-moving	0	1	3	-1	65	12	1
2025-07-07 09:08:02.07+00	127	telegraf	978202981	stop-moving	3	3	4	-2	65	16	1
2025-07-07 09:08:04.535+00	127	telegraf	1126982881	stop-moving	2	2	2	-3	65	19	1
2025-07-07 09:09:36.359+00	127	telegraf	840973111	start-moving	0	1	62	54	0	127	1
2025-07-07 09:09:36.355+00	127	telegraf	1523842139	start-moving	0	1	-1	-31	-85	128	1
2025-07-07 09:09:46.538+00	127	telegraf	527134251	start-moving	0	1	-32	-1	-27	129	1
2025-07-07 09:10:46.532+00	127	telegraf	527134251	stop-moving	3	1	0	-1	64	131	1
2025-07-07 09:10:47.361+00	127	telegraf	840973111	stop-moving	4	3	1	-2	-62	134	1
2025-07-07 09:10:47.343+00	127	telegraf	1523842139	stop-moving	4	4	-1	0	-66	135	1
2025-07-07 09:11:08.534+00	127	telegraf	527134251	start-moving	0	1	-6	40	51	143	1
2025-07-07 09:17:02.555+00	127	telegraf	1523842139	stop-moving	10	10	-1	0	-65	162	1
2025-07-07 09:17:04.532+00	127	telegraf	840973111	stop-moving	9	10	-1	-1	-60	165	1
2025-07-07 09:17:02.705+00	127	telegraf	527134251	stop-moving	9	8	2	-1	64	168	1
2025-07-07 09:17:04.612+00	127	telegraf	1126982881	start-moving	0	1	2	-2	65	22	1
2025-07-07 09:17:47.545+00	127	telegraf	840973111	start-moving	0	1	-41	-25	-42	171	1
2025-07-07 09:17:51.563+00	127	telegraf	1523842139	start-moving	0	1	-46	-13	41	172	1
2025-07-07 09:17:52.721+00	127	telegraf	527134251	start-moving	0	1	-11	5	42	173	1
2025-07-07 09:18:02.132+00	127	telegraf	978202981	stationary	0	0	5	-2	65	23	1
2025-07-07 09:18:04.618+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	24	1
2025-07-07 09:18:02.024+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	27	1
2025-07-07 09:18:11.622+00	127	telegraf	1126982881	start-moving	0	1	2	-1	66	28	1
2025-07-07 09:18:50.589+00	127	telegraf	1523842139	stop-moving	3	1	-1	-1	-65	175	1
2025-07-07 09:19:11.624+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	30	1
2025-07-07 09:19:06.746+00	127	telegraf	527134251	stop-moving	14	8	-2	-1	-66	184	1
2025-07-07 09:22:08.47+00	127	telegraf	840973111	start-moving	0	1	28	43	-102	188	1
2025-07-07 09:23:30.648+00	127	telegraf	527134251	start-moving	0	1	11	-103	-85	189	1
2025-07-07 09:25:41.631+00	127	telegraf	527134251	stop-moving	42	27	-1	-2	-64	196	1
2025-07-07 09:26:25.643+00	127	telegraf	527134251	start-moving	0	1	-33	34	-79	201	1
2025-07-07 09:27:53.48+00	127	telegraf	840973111	stop-moving	148	104	4	-1	62	210	1
2025-07-07 09:28:02.214+00	127	telegraf	978202981	stationary	0	0	4	-2	64	34	1
2025-07-07 09:28:02.183+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	35	1
2025-07-07 09:28:50.472+00	127	telegraf	1523842139	stationary	0	0	-1	-1	-65	218	1
2025-07-07 09:29:11.684+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	36	1
2025-07-07 09:29:25.481+00	127	telegraf	840973111	start-moving	0	1	3	-2	62	220	1
2025-07-07 09:29:31.477+00	127	telegraf	1523842139	start-moving	0	1	-2	-1	-66	221	1
2025-07-07 09:30:30.548+00	127	telegraf	1523842139	stop-moving	1	1	-2	0	-65	224	1
2025-07-07 09:30:38.233+00	127	telegraf	978202981	start-moving	0	1	4	-1	65	37	1
2025-07-07 09:30:55.696+00	127	telegraf	1126982881	start-moving	0	1	3	-2	66	38	1
2025-07-07 09:30:55.236+00	127	telegraf	1041420528	start-moving	0	1	2	-1	63	39	1
2025-07-07 09:31:05.58+00	127	telegraf	840973111	stop-moving	6	8	3	-1	62	227	1
2025-07-07 09:31:05.703+00	127	telegraf	527134251	stop-moving	65	59	2	-2	63	230	1
2025-07-07 09:31:55.713+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	40	1
2025-07-07 09:31:55.242+00	127	telegraf	1041420528	stop-moving	1	1	2	-2	65	43	1
2025-07-07 09:32:20.716+00	127	telegraf	1126982881	start-moving	0	1	2	-2	65	46	1
2025-07-07 09:32:26.244+00	127	telegraf	978202981	stop-moving	3	3	4	-1	65	47	1
2025-07-07 09:33:20.724+00	127	telegraf	1126982881	stop-moving	1	1	3	-3	66	51	1
2025-07-07 09:33:42.567+00	127	telegraf	840973111	start-moving	0	1	-4	4	71	236	1
2025-07-07 09:33:40.673+00	127	telegraf	527134251	start-moving	0	1	2	-1	65	239	1
2025-07-07 09:34:41.671+00	127	telegraf	527134251	stop-moving	2	2	2	-1	65	240	1
2025-07-07 09:34:53.541+00	127	telegraf	840973111	stop-moving	11	12	22	-64	0	243	1
2025-07-07 09:36:15.571+00	127	telegraf	1523842139	start-moving	0	1	-1	0	-66	247	1
2025-07-07 09:36:17.283+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	64	56	1
2025-07-07 09:37:43.72+00	127	telegraf	527134251	stop-moving	19	21	57	28	-2	254	1
2025-07-07 09:38:26.601+00	127	telegraf	1523842139	start-moving	0	1	-60	-23	6	260	1
2025-07-07 09:38:26.615+00	127	telegraf	840973111	start-moving	0	1	-6	-84	-1	261	1
2025-07-07 09:42:26.314+00	127	telegraf	978202981	stationary	0	0	4	-1	65	64	1
2025-07-07 09:43:20.787+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	65	1
2025-07-07 09:46:17.358+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	66	1
2025-07-07 09:47:18.764+00	127	telegraf	527134251	start-moving	0	1	-3	-48	-59	2	1
2025-07-07 09:49:24.78+00	127	telegraf	527134251	stop-moving	43	44	-61	-21	2	7	1
2025-07-07 09:52:26.373+00	127	telegraf	978202981	stationary	0	0	5	-1	66	69	1
2025-07-07 09:52:43.685+00	127	telegraf	840973111	moving	452	255	-4	49	-38	16	1
2025-07-07 09:53:16.35+00	127	telegraf	1041420528	start-moving	0	1	2	-1	64	70	1
2025-07-07 09:53:20.79+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	71	1
2025-07-07 09:54:16.316+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	65	72	1
2025-07-07 09:54:34.285+00	127	telegraf	978202981	start-moving	0	1	4	-2	64	75	1
2025-07-07 09:54:34.759+00	127	telegraf	1126982881	start-moving	0	1	2	-1	66	76	1
2025-07-07 09:55:50.266+00	127	telegraf	978202981	stop-moving	2	2	4	-1	65	80	1
2025-07-07 09:56:24.876+00	127	telegraf	527134251	start-moving	0	1	-60	-22	-9	26	1
2025-07-07 09:57:24.89+00	127	telegraf	527134251	stop-moving	1	1	-61	-22	2	28	1
2025-07-07 09:58:33.239+00	127	telegraf	978202981	stop-moving	1	1	4	-1	65	85	1
2025-07-07 09:59:06.266+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	88	1
2025-07-07 09:59:49.809+00	127	telegraf	840973111	start-moving	0	1	27	21	69	44	1
2025-07-07 10:05:34.684+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	93	1
2025-07-07 10:06:56.692+00	127	telegraf	1126982881	start-moving	0	1	3	-2	65	95	1
2025-07-07 10:06:57.294+00	127	telegraf	1041420528	start-moving	0	1	3	-1	62	96	1
2025-07-07 10:07:42.265+00	127	telegraf	978202981	stop-moving	1	1	5	-1	65	97	1
2025-07-07 10:07:56.69+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	101	1
2025-07-07 10:07:56.3+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	63	104	1
2025-07-07 10:17:42.527+00	127	telegraf	978202981	stationary	0	0	4	-1	65	111	1
2025-07-07 10:17:56.932+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	112	1
2025-07-07 10:17:56.451+00	127	telegraf	1041420528	stationary	0	0	3	-2	65	113	1
2025-07-07 10:17:59.533+00	127	telegraf	978202981	start-moving	0	1	5	-2	66	114	1
2025-07-07 10:18:01.941+00	127	telegraf	1126982881	start-moving	0	1	2	-2	64	115	1
2025-07-07 10:18:20.45+00	127	telegraf	1041420528	start-moving	0	1	2	-2	65	116	1
2025-07-07 10:18:59.537+00	127	telegraf	978202981	stop-moving	2	2	4	-2	66	117	1
2025-07-07 10:19:00.945+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	120	1
2025-07-07 10:53:10.606+00	127	telegraf	1041420528	start-moving	0	1	2	-2	64	2	1
2025-07-07 10:54:10.281+00	127	telegraf	1126982881	stop-moving	6	8	2	-3	66	4	1
2025-07-07 10:54:09.609+00	127	telegraf	1041420528	stop-moving	1	1	2	-2	64	7	1
2025-07-07 10:56:27.72+00	127	telegraf	978202981	start-moving	0	1	5	-1	65	11	1
2025-07-07 10:56:40.606+00	127	telegraf	1041420528	start-moving	0	1	13	-5	27	12	1
2025-07-07 10:56:49.268+00	127	telegraf	1126982881	stop-moving	1	1	4	-2	65	13	1
2025-07-07 10:57:02.265+00	127	telegraf	1126982881	start-moving	0	1	2	-2	66	16	1
2025-07-07 10:57:27.706+00	127	telegraf	978202981	stop-moving	1	1	5	-1	66	17	1
2025-07-07 10:57:58.604+00	127	telegraf	1041420528	stop-moving	2	2	2	-2	64	20	1
2025-07-07 11:04:45.814+00	127	telegraf	978202981	start-moving	0	1	5	0	65	29	1
2025-07-07 11:04:57.633+00	127	telegraf	1041420528	start-moving	0	1	2	-2	64	30	1
2025-07-07 11:05:45.826+00	127	telegraf	978202981	stop-moving	1	1	4	-2	64	31	1
2025-07-07 11:07:52.821+00	127	telegraf	978202981	start-moving	0	1	5	-1	65	41	1
2025-07-07 11:08:12.314+00	127	telegraf	1126982881	start-moving	0	1	4	-3	65	42	1
2025-07-07 11:09:11.834+00	127	telegraf	978202981	stop-moving	2	2	4	-1	65	44	1
2025-07-07 11:09:49.667+00	127	telegraf	1041420528	start-moving	0	1	2	-2	64	47	1
2025-07-07 11:10:46.32+00	127	telegraf	1126982881	stop-moving	4	4	4	-2	67	50	1
2025-07-07 11:10:48.67+00	127	telegraf	1041420528	stop-moving	1	1	2	-2	65	53	1
2025-07-07 11:29:11.903+00	127	telegraf	978202981	stationary	0	0	4	-1	66	66	1
2025-07-07 11:30:48.847+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	68	1
2025-07-07 11:31:42.415+00	127	telegraf	1126982881	start-moving	0	1	2	-2	65	69	1
2025-07-07 11:33:08.868+00	127	telegraf	1041420528	stop-moving	2	2	3	-2	64	76	1
2025-07-07 11:38:30.951+00	127	telegraf	978202981	start-moving	0	1	5	-2	65	79	1
2025-07-07 11:39:30.959+00	127	telegraf	978202981	stop-moving	1	1	4	-2	65	81	1
2025-07-07 11:43:09.482+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	89	1
2025-07-07 11:43:08.944+00	127	telegraf	1041420528	stationary	0	0	1	-3	65	90	1
2025-07-07 11:46:32.981+00	127	telegraf	978202981	start-moving	0	1	4	-2	64	91	1
2025-07-07 11:48:09.988+00	127	telegraf	978202981	stop-moving	2	2	4	-2	64	100	1
2025-07-07 11:50:40.992+00	127	telegraf	978202981	start-moving	0	1	5	-1	67	103	1
2025-07-07 11:50:41.509+00	127	telegraf	1126982881	start-moving	0	1	3	-2	66	104	1
2025-07-07 11:50:46.962+00	127	telegraf	1041420528	start-moving	0	1	3	-3	64	105	1
2025-07-07 11:51:40.513+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	65	106	1
2025-07-07 11:55:15.772+00	127	telegraf	3839865	stationary	0	0	1	31	56	117	1
2025-07-07 12:00:22.345+00	127	telegraf	632461688	stationary	0	0	-27	11	56	122	1
2025-07-07 12:01:23.77+00	127	telegraf	305822513	stationary	0	0	-34	-10	52	123	1
2025-07-07 12:01:40.549+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	124	1
2025-07-07 12:01:47.04+00	127	telegraf	978202981	stationary	0	0	4	-2	64	125	1
2025-07-07 12:01:46.99+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	126	1
2025-07-07 12:05:15.812+00	127	telegraf	3839865	stationary	0	0	2	31	56	129	1
2025-07-07 12:07:10.566+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	65	131	1
2025-07-07 12:07:21.57+00	127	telegraf	1126982881	start-moving	0	1	3	-2	66	134	1
2025-07-07 12:08:21.571+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	66	135	1
2025-07-07 12:10:22.393+00	127	telegraf	632461688	stationary	0	0	-27	10	55	139	1
2025-07-07 12:11:23.804+00	127	telegraf	305822513	stationary	0	0	-33	-10	53	140	1
2025-07-07 12:11:47.068+00	127	telegraf	978202981	stationary	0	0	4	-1	65	141	1
2025-07-07 12:11:47.021+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	142	1
2025-07-07 12:12:45.586+00	127	telegraf	1126982881	start-moving	0	1	4	-1	64	148	1
2025-07-07 12:13:45.59+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	65	149	1
2025-07-07 12:13:56.585+00	127	telegraf	1126982881	start-moving	0	1	3	-3	73	152	1
2025-07-07 12:14:56.604+00	127	telegraf	1126982881	stop-moving	1	1	4	-2	65	156	1
2025-07-07 12:15:48.605+00	127	telegraf	1126982881	start-moving	0	1	3	-2	66	160	1
2025-07-07 12:21:47.143+00	127	telegraf	978202981	stationary	0	0	5	-1	66	167	1
2025-07-07 12:25:31.712+00	127	telegraf	1126982881	start-moving	0	1	3	-2	65	179	1
2025-07-07 12:26:19.487+00	127	telegraf	632461688	stop-moving	2	2	-25	9	57	183	1
2025-07-07 12:26:20.93+00	127	telegraf	3839865	stop-moving	2	2	1	30	58	184	1
2025-07-07 12:26:30.719+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	66	189	1
2025-07-07 12:29:50.153+00	127	telegraf	1041420528	start-moving	0	1	24	20	63	194	1
2025-07-07 12:36:18.951+00	127	telegraf	305822513	stationary	0	0	-34	-10	52	210	1
2025-07-07 12:36:20.982+00	127	telegraf	3839865	stationary	0	0	2	30	56	211	1
2025-07-07 12:36:19.557+00	127	telegraf	632461688	stationary	0	0	-26	9	56	212	1
2025-07-07 12:39:17.205+00	127	telegraf	1041420528	start-moving	0	1	3	-1	63	213	1
2025-07-07 12:40:17.218+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	214	1
2025-07-07 12:40:47.81+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	217	1
2025-07-07 12:41:47.336+00	127	telegraf	978202981	stationary	0	0	4	-1	65	218	1
2025-07-07 12:45:25.002+00	127	telegraf	305822513	start-moving	0	1	-35	-11	53	225	1
2025-07-07 12:45:25.025+00	127	telegraf	3839865	start-moving	0	1	-1	30	57	226	1
2025-07-07 12:46:19.607+00	127	telegraf	632461688	stationary	0	0	-25	9	56	227	1
2025-07-07 12:46:25.009+00	127	telegraf	305822513	stop-moving	1	1	-35	-10	51	228	1
2025-07-07 12:46:25.02+00	127	telegraf	3839865	stop-moving	1	1	1	29	55	231	1
2025-07-07 12:56:08.421+00	127	telegraf	978202981	start-moving	0	1	3	-3	65	245	1
2025-07-07 12:56:19.681+00	127	telegraf	632461688	stationary	0	0	-26	10	57	247	1
2025-07-07 12:56:25.039+00	127	telegraf	305822513	stationary	0	0	-35	-9	52	248	1
2025-07-07 12:56:25.037+00	127	telegraf	3839865	stationary	0	0	2	30	57	249	1
2025-07-07 12:57:08.425+00	127	telegraf	978202981	stop-moving	1	1	4	-2	65	250	1
2025-07-07 12:57:08.273+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	253	1
2025-07-07 12:58:17.692+00	127	telegraf	632461688	start-moving	0	1	-27	11	57	256	1
2025-07-07 12:56:07.77+00	127	telegraf	840973111	stop-moving	28	36	0	-1	-60	267	1
2025-07-07 12:56:22.774+00	127	telegraf	840973111	start-moving	0	1	-2	-1	-61	268	1
2025-07-07 12:57:37.789+00	127	telegraf	840973111	stop-moving	9	10	-2	-1	-61	269	1
2025-07-07 12:59:37.799+00	127	telegraf	840973111	start-moving	0	1	-1	-2	-61	271	1
2025-07-07 12:56:07.753+00	127	telegraf	1523842139	stop-moving	27	39	0	0	-66	273	1
2025-07-07 12:56:22.751+00	127	telegraf	1523842139	start-moving	0	1	-1	-2	-65	274	1
2025-07-07 12:58:11.759+00	127	telegraf	1523842139	stop-moving	10	13	0	-1	-65	278	1
2025-07-07 12:56:15.034+00	127	telegraf	791308911	stationary	0	0	0	24	-58	280	1
2025-07-07 12:57:49.043+00	127	telegraf	791308911	start-moving	0	1	-28	6	-61	282	1
2025-07-07 12:59:45.054+00	127	telegraf	791308911	stop-moving	30	54	-11	11	-61	283	1
2025-07-07 12:56:06.88+00	127	telegraf	527134251	stop-moving	24	35	0	-2	-65	284	1
2025-07-07 13:00:51.161+00	127	telegraf	791308911	start-moving	0	1	-11	19	-48	295	1
2025-07-07 13:01:04.806+00	127	telegraf	840973111	stop-moving	2	2	-1	-2	-61	296	1
2025-07-07 13:01:19.81+00	127	telegraf	840973111	start-moving	0	1	-2	-2	-60	300	1
2025-07-07 13:01:51.166+00	127	telegraf	791308911	stop-moving	1	1	-11	11	-61	307	1
2025-07-07 13:01:47.913+00	127	telegraf	527134251	stop-moving	1	1	-1	-3	-66	308	1
2025-07-07 13:02:05.5+00	127	telegraf	333419537	start-moving	0	1	2	13	-64	312	1
2025-07-07 13:02:28.941+00	127	telegraf	1126982881	start-moving	0	1	8	0	79	314	1
2025-07-07 13:02:30.273+00	127	telegraf	1041420528	start-moving	0	1	3	-1	64	315	1
2025-07-07 13:02:06.165+00	127	telegraf	791308911	start-moving	0	1	-10	12	-62	316	1
2025-07-07 13:02:19.815+00	127	telegraf	840973111	stop-moving	1	1	-2	-2	-62	317	1
2025-07-07 13:02:46.781+00	127	telegraf	1523842139	start-moving	0	1	-1	-3	-52	323	1
2025-07-07 13:02:50.923+00	127	telegraf	527134251	start-moving	0	1	-1	-3	-67	324	1
2025-07-07 13:03:05.171+00	127	telegraf	791308911	stop-moving	1	1	-10	11	-61	325	1
2025-07-07 13:02:41.635+00	127	telegraf	677224097	start-moving	0	1	-8	-29	-58	334	1
2025-07-07 13:03:41.494+00	127	telegraf	333419537	stop-moving	2	2	-1	11	-63	335	1
2025-07-07 13:03:51.815+00	127	telegraf	840973111	stop-moving	2	2	-2	-2	-61	343	1
2025-07-07 13:03:51.917+00	127	telegraf	527134251	stop-moving	2	5	0	-3	-65	346	1
2025-07-07 13:04:04.777+00	127	telegraf	1523842139	stop-moving	2	2	0	-2	-65	350	1
2025-07-07 13:04:51.276+00	127	telegraf	1041420528	start-moving	0	1	2	-1	65	356	1
2025-07-07 13:05:28.93+00	127	telegraf	527134251	stop-moving	1	1	0	-3	-65	358	1
2025-07-07 13:05:51.293+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	63	361	1
2025-07-07 13:06:25.043+00	127	telegraf	305822513	stationary	0	0	-35	-9	51	364	1
2025-07-07 13:06:01.192+00	127	telegraf	791308911	start-moving	0	1	-11	11	-60	365	1
2025-07-07 13:06:25.093+00	127	telegraf	3839865	stationary	0	0	1	29	56	368	1
2025-07-07 13:07:08.459+00	127	telegraf	978202981	stationary	0	0	5	-1	65	370	1
2025-07-07 13:08:20.296+00	127	telegraf	1041420528	start-moving	0	1	2	-2	64	374	1
2025-07-07 13:08:02.838+00	127	telegraf	840973111	start-moving	0	1	4	1	-82	375	1
2025-07-07 13:08:41.947+00	127	telegraf	527134251	start-moving	0	1	-1	-3	-42	376	1
2025-07-07 13:09:20.297+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	383	1
2025-07-07 13:09:16.723+00	127	telegraf	632461688	stationary	0	0	-25	9	56	387	1
2025-07-07 13:09:52.954+00	127	telegraf	527134251	stop-moving	2	2	0	-3	-65	390	1
2025-07-07 13:14:08.957+00	127	telegraf	527134251	start-moving	0	1	-2	-4	-65	407	1
2025-07-07 13:14:04.81+00	127	telegraf	1523842139	stationary	0	0	0	-2	-66	409	1
2025-07-07 13:15:37.819+00	127	telegraf	1523842139	start-moving	0	1	0	-1	-66	413	1
2025-07-07 13:17:00.231+00	127	telegraf	791308911	stationary	0	0	-10	11	-61	419	1
2025-07-07 13:17:10.873+00	127	telegraf	840973111	stop-moving	1	1	-1	0	-60	422	1
2025-07-07 13:17:10.821+00	127	telegraf	1523842139	stop-moving	2	2	0	0	-70	426	1
2025-07-07 13:17:32.871+00	127	telegraf	840973111	start-moving	0	1	-1	-1	-61	429	1
2025-07-07 13:17:10.969+00	127	telegraf	527134251	stop-moving	4	4	-1	-2	-69	430	1
2025-07-07 13:18:39.494+00	127	telegraf	978202981	start-moving	0	1	5	-2	66	434	1
2025-07-07 13:19:20.334+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	437	1
2025-07-07 13:19:16.768+00	127	telegraf	632461688	stationary	0	0	-25	9	57	438	1
2025-07-07 13:19:14.881+00	127	telegraf	840973111	stop-moving	2	2	-2	-2	-61	439	1
2025-07-07 13:19:55.969+00	127	telegraf	527134251	stop-moving	3	3	-1	-3	-66	450	1
2025-07-07 13:20:04.976+00	127	telegraf	527134251	start-moving	0	1	-1	-4	-65	453	1
2025-07-07 13:21:37.132+00	127	telegraf	305822513	start-moving	0	1	-36	-10	53	455	1
2025-07-07 13:21:37.152+00	127	telegraf	3839865	start-moving	0	1	-2	25	58	456	1
2025-07-07 13:21:40.504+00	127	telegraf	978202981	stop-moving	3	3	4	-2	65	457	1
2025-07-07 13:21:37.794+00	127	telegraf	632461688	start-moving	0	1	-25	9	58	460	1
2025-07-07 13:21:40.979+00	127	telegraf	527134251	stop-moving	3	3	-1	-3	-65	461	1
2025-07-07 13:21:50.977+00	127	telegraf	527134251	start-moving	0	1	-1	-2	-65	464	1
2025-07-07 13:22:37.135+00	127	telegraf	305822513	stop-moving	1	1	-35	-10	53	465	1
2025-07-07 13:22:36.801+00	127	telegraf	632461688	stop-moving	1	1	-25	10	56	468	1
2025-07-07 13:22:36.158+00	127	telegraf	3839865	stop-moving	1	1	2	29	57	469	1
2025-07-07 13:22:49.983+00	127	telegraf	527134251	stop-moving	1	1	-2	-3	-64	477	1
2025-07-07 13:23:41.682+00	127	telegraf	333419537	stationary	0	0	-1	10	-62	480	1
2025-07-07 13:23:41.73+00	127	telegraf	677224097	stationary	0	0	-6	-28	-57	481	1
2025-07-07 13:24:07.137+00	127	telegraf	305822513	start-moving	0	1	-35	-9	54	483	1
2025-07-07 13:27:29.825+00	127	telegraf	632461688	start-moving	0	1	-23	-43	33	496	1
2025-07-07 13:27:30.193+00	127	telegraf	3839865	start-moving	0	1	-46	8	40	497	1
2025-07-07 13:28:32.162+00	127	telegraf	305822513	stop-moving	4	7	-4	-14	62	499	1
2025-07-07 13:29:20.382+00	127	telegraf	1041420528	stationary	0	0	4	-2	63	508	1
2025-07-07 13:31:40.588+00	127	telegraf	978202981	stationary	0	0	5	-2	66	511	1
2025-07-07 13:31:29.216+00	127	telegraf	3839865	start-moving	0	1	-12	17	61	512	1
2025-07-07 13:31:30.838+00	127	telegraf	632461688	start-moving	0	1	-9	-23	60	513	1
2025-07-07 13:32:30.846+00	127	telegraf	632461688	stop-moving	1	1	-9	-21	59	518	1
2025-07-07 13:33:13.181+00	127	telegraf	305822513	stop-moving	1	1	-2	-14	62	521	1
2025-07-07 13:33:29.111+00	127	telegraf	1126982881	stationary	0	0	3	-2	64	524	1
2025-07-07 13:33:13.231+00	127	telegraf	3839865	stop-moving	3	3	-11	20	60	525	1
2025-07-07 13:33:40.115+00	127	telegraf	527134251	stop-moving	12	14	-1	-3	-66	529	1
2025-07-07 13:36:30.331+00	127	telegraf	791308911	start-moving	0	1	-11	12	-61	548	1
2025-07-07 13:39:20.416+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	549	1
2025-07-07 13:27:26.114+00	127	telegraf	527134251	start-moving	0	1	-1	-4	-64	552	1
2025-07-07 13:28:25.111+00	127	telegraf	527134251	stop-moving	1	1	-1	-3	-66	553	1
2025-07-07 13:31:30.69+00	127	telegraf	333419537	start-moving	0	1	-1	9	-62	555	1
2025-07-07 13:33:11.699+00	127	telegraf	333419537	stop-moving	2	2	-1	10	-63	557	1
2025-07-07 13:35:45.882+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-64	558	1
2025-07-07 13:39:45.286+00	127	telegraf	3839865	stop-moving	1	1	-11	19	60	561	1
2025-07-07 13:28:31.876+00	127	telegraf	1523842139	start-moving	0	1	1	-1	-66	564	1
2025-07-07 13:33:41.764+00	127	telegraf	677224097	stationary	0	0	-7	-28	-56	565	1
2025-07-07 13:31:46.926+00	127	telegraf	840973111	stop-moving	6	6	-1	-1	-61	567	1
2025-07-07 13:28:25.965+00	127	telegraf	840973111	stop-moving	1	1	-1	-2	-62	571	1
2025-07-07 13:28:32.112+00	127	telegraf	527134251	start-moving	0	1	0	-3	-65	575	1
2025-07-07 13:28:25.914+00	127	telegraf	1523842139	stop-moving	1	1	0	-1	-66	576	1
2025-07-07 13:36:29.711+00	127	telegraf	333419537	start-moving	0	1	-1	7	-68	579	1
2025-07-07 13:28:31.88+00	127	telegraf	1523842139	start-moving	0	1	1	-1	-66	580	1
2025-07-07 13:36:45.885+00	127	telegraf	1523842139	stop-moving	1	1	-1	-1	-64	581	1
2025-07-07 13:36:58.13+00	127	telegraf	527134251	start-moving	0	1	-4	-2	-68	584	1
2025-07-07 13:36:57.932+00	127	telegraf	840973111	start-moving	0	1	0	-2	-62	585	1
2025-07-07 13:37:38.78+00	127	telegraf	677224097	start-moving	0	1	-5	-28	-57	586	1
2025-07-07 13:36:58.883+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-64	588	1
2025-07-07 13:38:08.341+00	127	telegraf	791308911	stop-moving	2	3	-11	11	-61	589	1
2025-07-07 13:37:58.136+00	127	telegraf	527134251	stop-moving	1	1	-1	-3	-65	593	1
2025-07-07 13:38:07.719+00	127	telegraf	333419537	stop-moving	2	2	-2	11	-61	594	1
2025-07-07 13:38:18.121+00	127	telegraf	527134251	start-moving	0	1	-2	-5	-69	604	1
2025-07-07 13:37:57.891+00	127	telegraf	1523842139	stop-moving	1	1	0	-1	-64	605	1
2025-07-07 13:38:18.894+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-65	608	1
2025-07-07 13:38:17.946+00	127	telegraf	840973111	start-moving	0	1	-2	-1	-62	609	1
2025-07-07 13:38:38.779+00	127	telegraf	677224097	stop-moving	1	1	-5	-29	-56	610	1
2025-07-07 13:39:52.342+00	127	telegraf	791308911	start-moving	0	1	-11	11	-60	613	1
2025-07-07 13:42:30.886+00	127	telegraf	632461688	stationary	0	0	-8	-21	60	614	1
2025-07-07 13:41:08.144+00	127	telegraf	527134251	start-moving	0	1	2	-5	95	630	1
2025-07-07 13:42:12.153+00	127	telegraf	527134251	stop-moving	8	4	1	0	64	632	1
2025-07-07 13:42:14.144+00	127	telegraf	527134251	start-moving	0	1	0	-1	71	635	1
2025-07-07 13:42:16.955+00	127	telegraf	840973111	stop-moving	48	43	5	-2	60	638	1
2025-07-07 13:42:19.956+00	127	telegraf	840973111	start-moving	0	1	5	-2	61	641	1
2025-07-07 13:42:43.918+00	127	telegraf	1523842139	stop-moving	45	35	2	-1	66	643	1
2025-07-07 13:43:14.154+00	127	telegraf	527134251	stop-moving	1	1	1	-1	65	655	1
2025-07-07 13:43:18.968+00	127	telegraf	840973111	stop-moving	1	1	5	-2	61	658	1
2025-07-07 13:46:07.163+00	127	telegraf	527134251	start-moving	0	1	1	0	64	666	1
2025-07-07 13:46:06.966+00	127	telegraf	840973111	start-moving	0	1	5	-1	62	667	1
2025-07-07 13:46:08.937+00	127	telegraf	1523842139	start-moving	0	1	3	-1	65	668	1
2025-07-07 13:47:22.163+00	127	telegraf	527134251	start-moving	0	1	0	-1	65	678	1
2025-07-07 13:47:21.938+00	127	telegraf	1523842139	start-moving	0	1	2	0	65	679	1
2025-07-07 13:47:57.37+00	127	telegraf	791308911	start-moving	0	1	-11	13	-60	680	1
2025-07-07 13:47:08.935+00	127	telegraf	1523842139	stop-moving	1	1	3	-1	66	681	1
2025-07-07 13:48:07.752+00	127	telegraf	333419537	stationary	0	0	-3	11	-62	682	1
2025-07-07 13:48:12.755+00	127	telegraf	333419537	start-moving	0	1	-2	11	-61	683	1
2025-07-07 13:48:20.985+00	127	telegraf	840973111	stop-moving	4	4	4	-1	61	684	1
2025-07-07 13:48:21.936+00	127	telegraf	1523842139	stop-moving	1	1	3	-1	65	685	1
2025-07-07 13:48:35.171+00	127	telegraf	527134251	stop-moving	2	2	1	-1	64	691	1
2025-07-07 13:48:56.374+00	127	telegraf	791308911	stop-moving	1	1	-10	12	-60	694	1
2025-07-07 13:49:45.353+00	127	telegraf	3839865	stationary	0	0	-12	20	60	695	1
2025-07-07 13:48:38.813+00	127	telegraf	677224097	stationary	0	0	-6	-26	-57	699	1
2025-07-07 13:48:58.175+00	127	telegraf	527134251	start-moving	0	1	0	-1	64	700	1
2025-07-07 13:48:57.991+00	127	telegraf	840973111	start-moving	0	1	4	-2	61	701	1
2025-07-07 13:49:12.762+00	127	telegraf	333419537	stop-moving	1	1	-2	11	-62	702	1
2025-07-07 13:50:57.006+00	127	telegraf	840973111	stop-moving	2	2	6	-2	62	708	1
2025-07-07 13:50:57.953+00	127	telegraf	1523842139	stop-moving	2	2	2	-1	66	712	1
2025-07-07 13:51:10.953+00	127	telegraf	1523842139	start-moving	0	1	3	-1	64	715	1
2025-07-07 13:51:28.185+00	127	telegraf	527134251	stop-moving	4	4	1	0	64	716	1
2025-07-07 13:51:48.188+00	127	telegraf	527134251	start-moving	0	1	1	-1	64	719	1
2025-07-07 13:51:48.006+00	127	telegraf	840973111	start-moving	0	1	5	-3	61	720	1
2025-07-07 13:52:57.272+00	127	telegraf	305822513	stationary	0	0	0	-15	63	723	1
2025-07-07 13:52:56.964+00	127	telegraf	1523842139	stop-moving	2	2	3	-1	66	724	1
2025-07-07 13:53:29.206+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	728	1
2025-07-07 13:53:26.542+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	729	1
2025-07-07 13:53:10.963+00	127	telegraf	1523842139	start-moving	0	1	3	0	65	731	1
2025-07-07 13:54:30.017+00	127	telegraf	840973111	start-moving	0	1	5	-1	61	747	1
2025-07-07 13:55:29.194+00	127	telegraf	527134251	stop-moving	1	1	1	0	65	748	1
2025-07-07 13:55:29.023+00	127	telegraf	840973111	stop-moving	1	1	4	-1	62	753	1
2025-07-07 13:57:14.021+00	127	telegraf	840973111	stop-moving	5	5	5	-2	61	763	1
2025-07-07 13:57:12.998+00	127	telegraf	1523842139	stop-moving	2	2	2	-1	64	764	1
2025-07-07 13:58:26.68+00	127	telegraf	978202981	start-moving	0	1	4	-1	65	770	1
2025-07-07 13:58:04.004+00	127	telegraf	1523842139	start-moving	0	1	2	-1	66	771	1
2025-07-07 13:58:04.024+00	127	telegraf	840973111	start-moving	0	1	5	-2	62	772	1
2025-07-07 13:58:38.854+00	127	telegraf	677224097	stationary	0	0	-6	-28	-57	774	1
2025-07-07 13:58:56.411+00	127	telegraf	791308911	stationary	0	0	-10	11	-61	775	1
2025-07-07 13:59:04.21+00	127	telegraf	527134251	stop-moving	2	2	2	-1	65	777	1
2025-07-07 13:59:25.677+00	127	telegraf	978202981	stop-moving	1	1	4	-1	64	780	1
2025-07-07 13:59:12.781+00	127	telegraf	333419537	stationary	0	0	-2	11	-61	786	1
2025-07-07 13:59:04.029+00	127	telegraf	840973111	stop-moving	1	1	4	-1	61	787	1
2025-07-07 13:59:03.01+00	127	telegraf	1523842139	stop-moving	1	1	3	-1	65	788	1
2025-07-07 13:59:45.412+00	127	telegraf	3839865	stationary	0	0	-12	18	60	794	1
2025-07-07 13:59:59.866+00	127	telegraf	677224097	start-moving	0	1	-5	-29	-58	796	1
2025-07-07 14:01:21.054+00	127	telegraf	840973111	start-moving	0	1	5	-2	62	798	1
2025-07-07 14:01:23.028+00	127	telegraf	1523842139	start-moving	0	1	2	1	62	799	1
2025-07-07 14:01:50.237+00	127	telegraf	527134251	start-moving	0	1	1	-1	65	800	1
2025-07-07 14:02:30.981+00	127	telegraf	632461688	stationary	0	0	-8	-22	59	803	1
2025-07-07 14:02:57.333+00	127	telegraf	305822513	stationary	0	0	0	-15	62	806	1
2025-07-07 14:03:29.259+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	810	1
2025-07-07 14:09:25.746+00	127	telegraf	978202981	stationary	0	0	5	-2	65	831	1
2025-07-07 14:08:34.076+00	127	telegraf	1523842139	stop-moving	12	13	2	-1	64	837	1
2025-07-07 14:11:19.832+00	127	telegraf	333419537	stop-moving	1	1	-4	14	-62	856	1
2025-07-07 14:11:21.109+00	127	telegraf	840973111	moving	90	93	-2	-2	-62	859	1
2025-07-07 14:12:25.761+00	127	telegraf	978202981	start-moving	0	1	6	-1	64	862	1
2025-07-07 14:12:25.71+00	127	telegraf	1041420528	start-moving	0	1	2	-1	64	864	1
2025-07-07 14:12:31.051+00	127	telegraf	632461688	stationary	0	0	-9	-22	59	865	1
2025-07-07 14:12:57.454+00	127	telegraf	305822513	stationary	0	0	0	-15	62	867	1
2025-07-07 14:13:25.777+00	127	telegraf	978202981	stop-moving	1	1	5	-1	65	875	1
2025-07-07 14:13:29.306+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	878	1
2025-07-07 14:13:28.457+00	127	telegraf	305822513	start-moving	0	1	3	-10	60	879	1
2025-07-07 14:13:28.561+00	127	telegraf	3839865	start-moving	0	1	9	22	63	883	1
2025-07-07 14:13:28.058+00	127	telegraf	632461688	start-moving	0	1	-6	-15	60	884	1
2025-07-07 14:12:24.285+00	127	telegraf	527134251	stop-moving	68	81	-1	-3	-64	887	1
2025-07-07 14:08:16.64+00	127	telegraf	2045592530	start-moving	0	1	4	-5	62	892	1
2025-07-07 14:11:54.573+00	127	telegraf	23439212	stationary	0	0	-34	15	49	893	1
2025-07-07 14:05:18.836+00	127	telegraf	1575827679	start-moving	0	1	3	-4	66	894	1
2025-07-07 14:05:39.583+00	127	telegraf	2045592530	start-moving	0	1	4	-5	63	895	1
2025-07-07 14:05:39.311+00	127	telegraf	974018563	start-moving	0	1	2	-5	67	897	1
2025-07-07 14:06:39.598+00	127	telegraf	2045592530	stop-moving	1	1	4	-6	64	899	1
2025-07-07 14:11:54.396+00	127	telegraf	517905260	stationary	0	0	-20	-35	50	904	1
2025-07-07 14:06:18.839+00	127	telegraf	1575827679	stop-moving	1	1	2	-2	65	905	1
2025-07-07 14:11:57.457+00	127	telegraf	720958279	stationary	0	0	-25	-25	51	907	1
2025-07-07 14:10:16.646+00	127	telegraf	2045592530	start-moving	0	1	12	-33	75	909	1
2025-07-07 14:09:15.651+00	127	telegraf	2045592530	stop-moving	1	1	4	-5	65	910	1
2025-07-07 14:14:43.321+00	127	telegraf	1126982881	start-moving	0	1	7	-2	53	913	1
2025-07-07 14:14:43.775+00	127	telegraf	978202981	start-moving	0	1	5	-1	66	914	1
2025-07-07 14:12:31.096+00	127	telegraf	1523842139	start-moving	0	1	-12	63	29	922	1
2025-07-07 14:12:31.117+00	127	telegraf	840973111	start-moving	0	1	-54	1	-1	923	1
2025-07-07 14:14:56.068+00	127	telegraf	632461688	stop-moving	19	35	0	-31	55	929	1
2025-07-07 14:14:55.562+00	127	telegraf	3839865	stop-moving	18	34	-28	8	57	931	1
2025-07-07 14:15:13.126+00	127	telegraf	840973111	stop-moving	47	64	46	40	-20	945	1
2025-07-07 14:15:43.327+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	66	949	1
2025-07-07 14:16:33.315+00	127	telegraf	527134251	start-moving	0	1	29	32	37	955	1
2025-07-07 14:16:27.131+00	127	telegraf	840973111	start-moving	0	1	46	38	-21	956	1
2025-07-07 14:18:56.611+00	127	telegraf	791308911	stationary	0	0	-10	10	-61	971	1
2025-07-07 14:19:01.144+00	127	telegraf	840973111	stop-moving	4	4	8	9	61	973	1
2025-07-07 14:19:14.138+00	127	telegraf	840973111	start-moving	0	1	17	19	57	977	1
2025-07-07 14:19:00.123+00	127	telegraf	1523842139	stop-moving	6	7	-47	-12	41	980	1
2025-07-07 14:19:15.322+00	127	telegraf	527134251	start-moving	0	1	7	-6	39	983	1
2025-07-07 14:19:13.134+00	127	telegraf	1523842139	start-moving	0	1	-53	6	36	985	1
2025-07-07 14:20:10.016+00	127	telegraf	677224097	stationary	0	0	-8	-28	-57	986	1
2025-07-07 14:20:32.8+00	127	telegraf	978202981	stop-moving	1	1	5	-2	64	987	1
2025-07-07 14:20:20.325+00	127	telegraf	527134251	stop-moving	4	4	-15	-16	60	990	1
2025-07-07 14:20:19.151+00	127	telegraf	840973111	stop-moving	5	8	11	13	59	991	1
2025-07-07 14:20:19.129+00	127	telegraf	1523842139	stop-moving	7	14	-54	-5	32	996	1
2025-07-07 14:21:09.33+00	127	telegraf	527134251	start-moving	0	1	-5	-22	50	1001	1
2025-07-07 14:21:09.148+00	127	telegraf	1523842139	start-moving	0	1	-74	0	41	1002	1
2025-07-07 14:21:09.152+00	127	telegraf	840973111	start-moving	0	1	25	4	49	1003	1
2025-07-07 14:21:19.876+00	127	telegraf	333419537	stationary	0	0	-4	13	-62	1004	1
2025-07-07 14:22:02.018+00	127	telegraf	677224097	stop-moving	1	1	-7	-28	-57	1005	1
2025-07-07 14:24:58.643+00	127	telegraf	305822513	stationary	0	0	-9	-30	56	1011	1
2025-07-07 14:24:55.628+00	127	telegraf	3839865	stationary	0	0	-28	7	56	1012	1
2025-07-07 14:24:56.118+00	127	telegraf	632461688	stationary	0	0	0	-32	56	1013	1
2025-07-07 14:25:43.357+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	1014	1
2025-07-07 14:26:38.893+00	127	telegraf	333419537	stop-moving	1	1	-5	13	-61	1017	1
2025-07-07 14:27:03.652+00	127	telegraf	305822513	start-moving	0	1	-10	-28	56	1021	1
2025-07-07 14:28:03.655+00	127	telegraf	305822513	stop-moving	1	1	-10	-29	55	1028	1
2025-07-07 14:28:03.134+00	127	telegraf	632461688	stop-moving	1	1	-1	-32	55	1031	1
2025-07-07 14:28:56.654+00	127	telegraf	791308911	stationary	0	0	-9	10	-61	1038	1
2025-07-07 14:32:02.067+00	127	telegraf	677224097	stationary	0	0	-7	-27	-57	1051	1
2025-07-07 14:32:34.799+00	127	telegraf	1041420528	start-moving	0	1	2	-1	65	1052	1
2025-07-07 14:33:34.799+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	1054	1
2025-07-07 14:34:55.673+00	127	telegraf	3839865	stationary	0	0	-28	7	57	1062	1
2025-07-07 14:37:29.818+00	127	telegraf	1041420528	start-moving	0	1	3	-1	63	1074	1
2025-07-07 14:36:11.076+00	127	telegraf	677224097	stop-moving	1	1	-6	-27	-57	1075	1
2025-07-07 14:36:38.904+00	127	telegraf	333419537	stationary	0	0	-3	12	-61	1078	1
2025-07-07 14:38:03.713+00	127	telegraf	305822513	stationary	0	0	-9	-29	56	1079	1
2025-07-07 14:38:03.182+00	127	telegraf	632461688	stationary	0	0	-1	-32	54	1080	1
2025-07-07 14:38:29.814+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	63	1081	1
2025-07-07 14:38:32.689+00	127	telegraf	791308911	start-moving	0	1	-9	11	-61	1084	1
2025-07-07 14:38:33.084+00	127	telegraf	677224097	start-moving	0	1	-6	-27	-56	1085	1
2025-07-07 14:38:32.917+00	127	telegraf	333419537	start-moving	0	1	-4	12	-62	1086	1
2025-07-07 14:39:32.684+00	127	telegraf	791308911	stop-moving	1	1	-10	10	-60	1088	1
2025-07-07 14:39:33.097+00	127	telegraf	677224097	stop-moving	1	1	-7	-27	-57	1092	1
2025-07-07 14:39:32.922+00	127	telegraf	333419537	stop-moving	1	1	-3	13	-62	1093	1
2025-07-07 14:39:50.715+00	127	telegraf	305822513	start-moving	0	1	2	-27	52	1098	1
2025-07-07 14:40:50.716+00	127	telegraf	305822513	stop-moving	1	2	1	-25	57	1101	1
2025-07-07 14:40:50.685+00	127	telegraf	3839865	stop-moving	1	2	-30	14	54	1104	1
2025-07-07 14:40:51.195+00	127	telegraf	632461688	stop-moving	1	1	-8	-33	54	1107	1
2025-07-07 14:40:48.1+00	127	telegraf	677224097	start-moving	0	1	-7	-27	-57	1109	1
2025-07-07 14:40:47.934+00	127	telegraf	333419537	start-moving	0	1	-3	13	-62	1112	1
2025-07-07 14:42:58.696+00	127	telegraf	791308911	start-moving	0	1	-9	10	-62	1122	1
2025-07-07 14:40:16.461+00	127	telegraf	1947698524	stationary	0	0	-13	10	-61	1127	1
2025-07-07 14:43:05.474+00	127	telegraf	1947698524	start-moving	0	1	-11	53	-30	1128	1
2025-07-07 14:43:58.707+00	127	telegraf	791308911	stop-moving	1	1	-9	10	-61	1129	1
2025-07-07 14:43:57.099+00	127	telegraf	677224097	stop-moving	1	1	-7	-27	-57	1132	1
2025-07-07 14:44:59.703+00	127	telegraf	791308911	start-moving	0	1	-10	10	-62	1136	1
2025-07-07 14:45:27.893+00	127	telegraf	978202981	start-moving	0	1	5	-2	65	1137	1
2025-07-07 14:45:00.011+00	127	telegraf	333419537	start-moving	0	1	-3	13	-63	1139	1
2025-07-07 14:44:59.11+00	127	telegraf	677224097	start-moving	0	1	4	-21	-62	1140	1
2025-07-07 14:46:26.741+00	127	telegraf	305822513	start-moving	0	1	4	-33	63	1144	1
2025-07-07 14:47:29.227+00	127	telegraf	632461688	stop-moving	4	2	-5	3	63	1154	1
2025-07-07 14:47:49.75+00	127	telegraf	305822513	start-moving	0	1	3	-23	62	1157	1
2025-07-07 14:48:29.852+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	1171	1
2025-07-07 14:46:41.013+00	127	telegraf	333419537	stop-moving	6	9	-4	14	-61	1173	1
2025-07-07 14:49:18.688+00	127	telegraf	720958279	start-moving	0	1	-33	-31	40	1179	1
2025-07-07 14:49:19.709+00	127	telegraf	23439212	start-moving	0	1	-39	20	43	1180	1
2025-07-07 14:50:19.683+00	127	telegraf	720958279	stop-moving	2	2	-32	-30	45	1183	1
2025-07-07 14:50:18.72+00	127	telegraf	23439212	stop-moving	1	1	-40	20	42	1186	1
2025-07-07 14:50:36.724+00	127	telegraf	23439212	start-moving	0	1	-44	13	19	1190	1
2025-07-07 14:56:27.027+00	127	telegraf	978202981	stationary	0	0	5	-1	66	1199	1
2025-07-07 14:56:39.025+00	127	telegraf	978202981	start-moving	0	1	5	-2	65	1200	1
2025-07-07 14:59:18.055+00	127	telegraf	978202981	start-moving	0	1	5	-1	66	1205	1
2025-07-08 08:00:18.247+00	127	telegraf	1523842139	stationary	0	0	-12	-18	61	42	1
2025-07-08 08:01:49.013+00	127	telegraf	632461688	stationary	0	0	22	17	55	46	1
2025-07-08 08:03:00.399+00	127	telegraf	333419537	stationary	0	0	-3	-8	-63	50	1
2025-07-08 08:03:00.155+00	127	telegraf	677224097	stationary	0	0	-4	-2	-63	51	1
2025-07-08 08:02:59.519+00	127	telegraf	791308911	stationary	0	0	-26	5	-59	52	1
2025-07-08 08:04:28.566+00	127	telegraf	978202981	start-moving	0	1	0	-2	-64	53	1
2025-07-08 08:04:28.768+00	127	telegraf	1041420528	start-moving	0	1	-10	17	-70	54	1
2025-07-08 08:04:31.091+00	127	telegraf	1126982881	start-moving	0	1	0	0	-65	55	1
2025-07-08 08:01:48.924+00	127	telegraf	305822513	stationary	0	0	-10	-2	63	56	1
2025-07-08 08:06:00.772+00	127	telegraf	1041420528	stop-moving	4	2	0	-2	-65	63	1
2025-07-08 08:06:16.082+00	127	telegraf	1126982881	stop-moving	4	4	0	0	-64	69	1
2025-07-08 08:10:17.795+00	127	telegraf	840973111	stationary	0	0	6	21	56	80	1
2025-07-08 08:11:40.585+00	127	telegraf	978202981	start-moving	0	1	-2	-1	-83	82	1
2025-07-08 08:11:40.784+00	127	telegraf	1041420528	start-moving	0	1	-1	-1	-67	83	1
2025-07-08 08:11:41.098+00	127	telegraf	1126982881	start-moving	0	1	0	-1	-65	84	1
2025-07-08 08:29:10.677+00	127	telegraf	978202981	stop-moving	4	4	-2	-3	-65	139	1
2025-07-08 08:29:11.847+00	127	telegraf	1041420528	stop-moving	48	45	2	-2	65	142	1
2025-07-08 08:29:12.138+00	127	telegraf	1126982881	stop-moving	7	7	0	0	-66	145	1
2025-07-08 08:29:53.2+00	127	telegraf	677224097	start-moving	0	1	-5	-4	-62	151	1
2025-07-08 08:30:18.005+00	127	telegraf	527134251	stationary	0	0	-12	23	-59	154	1
2025-07-08 08:30:18.307+00	127	telegraf	1523842139	stationary	0	0	-13	-17	61	155	1
2025-07-08 08:30:17.851+00	127	telegraf	840973111	stationary	0	0	5	22	57	156	1
2025-07-08 08:30:53.198+00	127	telegraf	677224097	stop-moving	1	1	-4	-3	-63	159	1
2025-07-08 08:33:00.467+00	127	telegraf	333419537	stationary	0	0	-3	-9	-62	167	1
2025-07-08 08:32:59.663+00	127	telegraf	791308911	stationary	0	0	-25	5	-59	168	1
2025-07-08 08:32:59.663+00	127	telegraf	791308911	stationary	0	0	-25	5	-59	168	1
2025-07-08 08:39:11.914+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	176	1
2025-07-08 08:39:12.157+00	127	telegraf	1126982881	stationary	0	0	0	0	-64	177	1
2025-07-08 08:39:59.214+00	127	telegraf	677224097	start-moving	0	1	-6	-2	-63	181	1
2025-07-08 08:40:18.342+00	127	telegraf	1523842139	stationary	0	0	-12	-17	61	182	1
2025-07-08 08:40:17.91+00	127	telegraf	840973111	stationary	0	0	6	21	56	183	1
2025-07-08 08:40:18.043+00	127	telegraf	527134251	stationary	0	0	-12	22	-59	184	1
2025-07-08 08:42:59.673+00	127	telegraf	791308911	stationary	0	0	-25	5	-58	197	1
2025-07-08 08:43:00.465+00	127	telegraf	333419537	stationary	0	0	-4	-10	-63	198	1
2025-07-08 08:48:50.958+00	127	telegraf	978202981	start-moving	0	1	-1	-3	-65	210	1
2025-07-08 08:48:51.37+00	127	telegraf	1126982881	start-moving	0	1	1	0	-65	211	1
2025-07-08 08:49:12.155+00	127	telegraf	1041420528	stationary	0	0	3	-3	64	212	1
2025-07-08 08:49:51.015+00	127	telegraf	978202981	stop-moving	1	1	-2	-3	-65	213	1
2025-07-08 08:49:50.407+00	127	telegraf	1126982881	stop-moving	1	1	0	0	-65	216	1
2025-07-08 08:50:18.339+00	127	telegraf	527134251	stationary	0	0	-12	22	-59	220	1
2025-07-08 08:50:18.164+00	127	telegraf	840973111	stationary	0	0	6	20	57	221	1
2025-07-08 08:50:59.369+00	127	telegraf	677224097	stationary	0	0	-5	-2	-63	225	1
2025-07-08 08:53:00.574+00	127	telegraf	333419537	stationary	0	0	-3	-9	-63	231	1
2025-07-08 08:52:59.792+00	127	telegraf	791308911	stationary	0	0	-25	5	-57	232	1
2025-07-08 08:55:46.19+00	127	telegraf	632461688	stationary	0	0	1	18	60	233	1
2025-07-08 08:55:46.627+00	127	telegraf	3839865	stationary	0	0	6	-2	65	234	1
2025-07-08 08:55:46.212+00	127	telegraf	305822513	stationary	0	0	10	-30	55	235	1
2025-07-08 08:59:12.151+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	239	1
2025-07-08 08:59:51.017+00	127	telegraf	978202981	stationary	0	0	-1	-3	-64	240	1
2025-07-08 09:00:18.557+00	127	telegraf	1523842139	stationary	0	0	-12	-17	62	241	1
2025-07-08 08:59:50.388+00	127	telegraf	1126982881	stationary	0	0	0	0	-64	244	1
2025-07-08 09:00:59.453+00	127	telegraf	677224097	stationary	0	0	-4	-2	-62	248	1
2025-07-08 09:01:30.394+00	127	telegraf	1126982881	start-moving	0	1	0	0	-65	249	1
2025-07-08 09:02:30.035+00	127	telegraf	978202981	stop-moving	1	1	-2	-3	-64	250	1
2025-07-08 09:02:29.415+00	127	telegraf	1126982881	stop-moving	1	1	0	-1	-65	253	1
2025-07-08 09:03:00.66+00	127	telegraf	333419537	stationary	0	0	-4	-10	-62	258	1
2025-07-08 09:09:12.231+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	269	1
2025-07-08 09:10:18.607+00	127	telegraf	1523842139	stationary	0	0	-12	-18	60	272	1
2025-07-08 09:10:18.347+00	127	telegraf	527134251	stationary	0	0	-12	23	-60	273	1
2025-07-08 09:10:18.13+00	127	telegraf	840973111	stationary	0	0	6	21	57	275	1
2025-07-08 09:10:59.511+00	127	telegraf	677224097	stationary	0	0	-5	-2	-63	277	1
2025-07-08 09:12:30.078+00	127	telegraf	978202981	stationary	0	0	-2	-3	-65	280	1
2025-07-08 09:12:29.506+00	127	telegraf	1126982881	stationary	0	0	-1	0	-66	281	1
2025-07-08 09:13:00.695+00	127	telegraf	333419537	stationary	0	0	-4	-9	-63	283	1
2025-07-08 09:15:46.79+00	127	telegraf	3839865	stationary	0	0	5	-2	65	292	1
2025-07-08 09:15:46.455+00	127	telegraf	632461688	stationary	0	0	1	17	59	294	1
2025-07-09 09:20:15.286+00	127	telegraf	978202981	stationary	0	0	-1	-3	-65	1	1
2025-07-09 09:24:11.384+00	127	telegraf	978202981	stop-moving	1	1	-1	-3	-63	7	1
2025-07-09 09:30:09.477+00	127	telegraf	1041420528	stationary	0	0	1	-3	64	14	1
2025-07-09 09:30:09.342+00	127	telegraf	1126982881	stationary	0	0	0	-1	-65	15	1
2025-07-09 09:34:11.321+00	127	telegraf	978202981	stationary	0	0	-1	-3	-64	16	1
2025-07-09 09:34:35.112+00	127	telegraf	46389462	stop-moving	13	11	-28	-55	-3	17	1
2025-07-09 09:40:09.487+00	127	telegraf	1041420528	stationary	0	0	0	-1	66	32	1
2025-07-09 09:40:09.419+00	127	telegraf	1126982881	stationary	0	0	0	-1	-65	33	1
2025-07-09 09:44:11.373+00	127	telegraf	978202981	stationary	0	0	-2	-2	-64	36	1
2025-07-09 09:44:51.423+00	127	telegraf	1126982881	stop-moving	1	1	0	-2	-64	37	1
2025-07-09 09:47:54.403+00	127	telegraf	978202981	start-moving	0	1	-1	-3	-64	40	1
2025-07-09 09:48:54.407+00	127	telegraf	978202981	stop-moving	1	1	-2	-3	-64	43	1
2025-07-09 09:58:54.445+00	127	telegraf	978202981	stationary	0	0	-1	-3	-64	56	1
2025-07-09 10:00:09.587+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	58	1
2025-07-09 10:02:48.601+00	127	telegraf	1041420528	start-moving	0	1	1	-1	65	59	1
2025-07-09 10:08:54.486+00	127	telegraf	978202981	stationary	0	0	-1	-2	-62	65	1
2025-07-09 10:08:54.57+00	127	telegraf	1126982881	stationary	0	0	0	-1	-66	67	1
2025-07-09 10:10:52.494+00	127	telegraf	978202981	start-moving	0	1	-1	-1	-66	68	1
2025-07-09 10:10:53.576+00	127	telegraf	1126982881	start-moving	0	1	0	-4	-78	69	1
2025-07-09 10:13:48.637+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	76	1
2025-07-09 10:14:18.507+00	127	telegraf	978202981	start-moving	0	1	1	-4	-66	77	1
2025-07-09 10:14:18.639+00	127	telegraf	1041420528	start-moving	0	1	0	1	58	78	1
2025-07-09 10:14:18.604+00	127	telegraf	1126982881	start-moving	0	1	-5	-2	-61	79	1
2025-07-09 10:15:26.645+00	127	telegraf	1041420528	stop-moving	2	2	0	-1	64	84	1
2025-07-09 10:15:27.594+00	127	telegraf	1126982881	stop-moving	3	3	0	-1	-65	87	1
2025-07-09 10:17:27.532+00	127	telegraf	978202981	start-moving	0	1	-2	-2	-65	90	1
2025-07-09 10:18:27.537+00	127	telegraf	978202981	stop-moving	1	1	-2	-4	-64	92	1
2025-07-09 10:18:45.662+00	127	telegraf	1041420528	start-moving	0	1	1	-1	63	98	1
2025-07-09 10:19:44.665+00	127	telegraf	1041420528	stop-moving	1	1	1	-1	64	99	1
2025-07-09 10:24:09.551+00	127	telegraf	978202981	start-moving	0	1	-1	-3	-62	103	1
2025-07-09 10:24:09.681+00	127	telegraf	1041420528	start-moving	0	1	1	-2	64	104	1
2025-07-09 10:26:02.691+00	127	telegraf	1041420528	stop-moving	10	10	-16	-27	56	108	1
2025-07-09 10:26:08.562+00	127	telegraf	978202981	stop-moving	7	8	7	-33	-56	112	1
2025-07-09 10:26:41.643+00	127	telegraf	1126982881	stop-moving	9	8	0	-2	-65	115	1
2025-07-09 10:26:51.69+00	127	telegraf	1041420528	start-moving	0	1	-18	-28	56	118	1
2025-07-09 10:27:51.697+00	127	telegraf	1041420528	stop-moving	1	1	-16	-27	57	121	1
2025-07-09 10:47:32.75+00	127	telegraf	1126982881	start-moving	0	1	-1	-2	-65	193	1
2025-07-09 10:48:32.765+00	127	telegraf	1126982881	stop-moving	1	1	-1	-1	-65	194	1
2025-07-09 10:49:42.652+00	127	telegraf	978202981	stationary	0	0	-6	-27	-59	197	1
2025-07-09 10:49:46.778+00	127	telegraf	1126982881	start-moving	0	1	-5	-4	-59	198	1
2025-07-09 10:49:48.659+00	127	telegraf	978202981	start-moving	0	1	-6	-25	-60	199	1
2025-07-09 10:49:46.854+00	127	telegraf	1041420528	start-moving	0	1	-29	-4	65	200	1
2025-07-09 10:50:47.664+00	127	telegraf	978202981	stop-moving	1	1	-6	-26	-60	201	1
2025-07-09 10:50:48.791+00	127	telegraf	1126982881	stop-moving	2	2	0	-1	-65	204	1
2025-07-09 10:52:49.68+00	127	telegraf	978202981	start-moving	0	1	-7	-26	-60	210	1
2025-07-09 13:34:04.547+00	127	telegraf	978202981	start-moving	0	1	-2	-7	-63	558	1
2025-07-09 13:34:04.549+00	127	telegraf	1126982881	start-moving	0	1	0	-3	-66	559	1
2025-07-09 13:35:03.56+00	127	telegraf	978202981	stop-moving	1	1	-3	-7	-63	561	1
2025-07-09 13:35:04.563+00	127	telegraf	1126982881	stop-moving	1	1	-1	-4	-64	564	1
2025-07-09 13:43:26.593+00	127	telegraf	1126982881	start-moving	0	1	-1	-2	-64	572	1
2025-07-09 13:43:27.626+00	127	telegraf	978202981	start-moving	0	1	15	-16	-55	573	1
2025-07-09 13:43:27.983+00	127	telegraf	1041420528	start-moving	0	1	3	13	92	574	1
2025-07-09 13:44:29.989+00	127	telegraf	1041420528	stop-moving	2	3	0	-3	64	579	1
2025-07-09 13:44:30.599+00	127	telegraf	1126982881	stop-moving	4	5	-1	-3	-66	581	1
2025-07-09 13:50:02.623+00	127	telegraf	1126982881	start-moving	0	1	0	-4	-64	587	1
2025-07-09 13:51:01.615+00	127	telegraf	1126982881	stop-moving	1	1	-1	-5	-64	588	1
2025-07-09 13:56:16.888+00	127	telegraf	978202981	stop-moving	1	1	2	-1	66	2	1
\.


--
-- Data for Name: _hyper_3_15_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_3_15_chunk ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
2025-07-10 07:25:05.308+00	127	telegraf	978202981	start-moving	0	1	32	-5	42	14	1
2025-07-10 07:25:04.771+00	127	telegraf	1041420528	start-moving	0	1	2	-4	60	15	1
2025-07-10 07:25:05.117+00	127	telegraf	1126982881	start-moving	0	1	4	0	64	16	1
2025-07-10 07:26:04.79+00	127	telegraf	1041420528	stop-moving	1	2	3	-1	63	20	1
2025-07-10 07:26:11.338+00	127	telegraf	978202981	stop-moving	8	9	10	-2	63	23	1
2025-07-10 07:26:12.343+00	127	telegraf	978202981	start-moving	0	1	6	-3	65	24	1
2025-07-10 07:26:05.126+00	127	telegraf	1126982881	stop-moving	1	1	4	-1	65	27	1
2025-07-10 07:26:51.132+00	127	telegraf	1126982881	start-moving	0	1	4	0	65	33	1
2025-07-10 07:26:50.798+00	127	telegraf	1041420528	start-moving	0	1	2	0	64	34	1
2025-07-10 07:27:49.375+00	127	telegraf	978202981	stop-moving	14	20	3	-4	65	38	1
2025-07-10 07:29:08.383+00	127	telegraf	978202981	start-moving	0	1	4	-3	65	53	1
2025-07-10 07:29:07.143+00	127	telegraf	1126982881	start-moving	0	1	4	0	66	54	1
2025-07-10 07:30:07.158+00	127	telegraf	1126982881	stop-moving	1	1	4	-1	65	60	1
2025-07-10 07:37:49.854+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	67	1
2025-07-10 07:40:07.459+00	127	telegraf	978202981	stationary	0	0	3	-3	65	70	1
2025-07-10 07:40:07.192+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	71	1
2025-07-10 07:47:26.914+00	127	telegraf	1041420528	start-moving	0	1	3	0	65	74	1
2025-07-10 07:48:25.919+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	64	75	1
2025-07-10 07:48:57.921+00	127	telegraf	1041420528	start-moving	0	1	3	-1	63	78	1
2025-07-10 07:49:57.928+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	65	79	1
2025-07-10 07:50:07.499+00	127	telegraf	978202981	stationary	0	0	4	-3	66	82	1
2025-07-10 07:50:07.24+00	127	telegraf	1126982881	stationary	0	0	4	0	64	84	1
2025-07-10 07:59:57.971+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	88	1
2025-07-10 08:00:07.542+00	127	telegraf	978202981	stationary	0	0	3	-3	66	89	1
2025-07-10 08:01:21.984+00	127	telegraf	1041420528	start-moving	0	1	2	-1	64	93	1
2025-07-10 08:02:20.98+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	94	1
2025-07-10 08:04:27.571+00	127	telegraf	978202981	start-moving	0	1	3	-3	66	97	1
2025-07-10 08:04:27.322+00	127	telegraf	1126982881	start-moving	0	1	4	-1	64	98	1
2025-07-10 08:05:27.574+00	127	telegraf	978202981	stop-moving	1	1	3	-3	65	99	1
2025-07-10 08:05:26.323+00	127	telegraf	1126982881	stop-moving	1	1	5	-1	64	102	1
2025-07-10 08:12:21.034+00	127	telegraf	1041420528	stationary	0	0	2	0	64	108	1
2025-07-10 08:15:26.376+00	127	telegraf	1126982881	stationary	0	0	4	0	65	109	1
2025-07-10 08:15:27.675+00	127	telegraf	978202981	stationary	0	0	4	-3	65	110	1
2025-07-10 08:22:21.074+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	113	1
2025-07-10 08:25:26.426+00	127	telegraf	1126982881	stationary	0	0	4	0	66	114	1
2025-07-10 08:25:27.783+00	127	telegraf	978202981	stationary	0	0	3	-3	65	115	1
2025-07-10 08:32:21.114+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	120	1
2025-07-10 08:35:07.477+00	127	telegraf	1126982881	start-moving	0	1	3	0	65	121	1
2025-07-10 08:35:27.813+00	127	telegraf	978202981	stationary	0	0	3	-4	64	122	1
2025-07-10 08:36:09.815+00	127	telegraf	978202981	start-moving	0	1	3	-2	67	123	1
2025-07-10 08:36:06.489+00	127	telegraf	1126982881	stop-moving	1	1	4	0	65	124	1
2025-07-10 08:36:10.488+00	127	telegraf	1126982881	start-moving	0	1	5	-2	79	127	1
2025-07-10 08:36:10.128+00	127	telegraf	1041420528	start-moving	0	1	4	-2	64	128	1
2025-07-10 08:37:10.814+00	127	telegraf	978202981	stop-moving	2	2	3	-3	66	130	1
2025-07-10 08:37:10.124+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	63	133	1
2025-07-10 08:37:10.489+00	127	telegraf	1126982881	stop-moving	1	1	4	0	66	134	1
2025-07-10 08:38:47.137+00	127	telegraf	1041420528	start-moving	0	1	2	-1	65	139	1
2025-07-10 08:39:47.138+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	64	144	1
2025-07-10 08:47:10.85+00	127	telegraf	978202981	stationary	0	0	2	-3	66	151	1
2025-07-10 08:47:10.527+00	127	telegraf	1126982881	stationary	0	0	4	1	65	152	1
2025-07-10 08:49:47.177+00	127	telegraf	1041420528	stationary	0	0	2	1	64	155	1
2025-07-10 08:57:10.892+00	127	telegraf	978202981	stationary	0	0	3	-5	65	156	1
2025-07-10 08:57:10.663+00	127	telegraf	1126982881	stationary	0	0	5	0	65	157	1
2025-07-10 08:59:47.219+00	127	telegraf	1041420528	stationary	0	0	2	-1	66	159	1
2025-07-10 09:00:53.22+00	127	telegraf	1041420528	start-moving	0	1	2	0	64	161	1
2025-07-10 09:01:52.232+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	65	166	1
2025-07-10 09:07:10.921+00	127	telegraf	978202981	stationary	0	0	3	-4	65	169	1
2025-07-10 09:11:52.267+00	127	telegraf	1041420528	stationary	0	0	1	0	64	171	1
2025-07-10 09:21:52.308+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	178	1
2025-07-10 09:27:10.977+00	127	telegraf	978202981	stationary	0	0	4	-3	66	181	1
2025-07-10 09:27:10.802+00	127	telegraf	1126982881	stationary	0	0	5	-1	65	182	1
2025-07-10 09:31:52.359+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	183	1
2025-07-10 09:37:11.046+00	127	telegraf	978202981	stationary	0	0	4	-4	65	187	1
2025-07-10 09:41:52.409+00	127	telegraf	1041420528	stationary	0	0	2	0	64	190	1
2025-07-10 09:47:11.135+00	127	telegraf	978202981	stationary	0	0	4	-3	66	194	1
2025-07-10 09:48:41.143+00	127	telegraf	978202981	start-moving	0	1	4	-4	64	197	1
2025-07-10 09:49:40.152+00	127	telegraf	978202981	stop-moving	1	1	3	-2	66	199	1
2025-07-10 09:51:52.602+00	127	telegraf	1041420528	stationary	0	0	2	0	65	202	1
2025-07-10 09:57:10.966+00	127	telegraf	1126982881	stationary	0	0	4	1	64	203	1
2025-07-10 10:01:52.783+00	127	telegraf	1041420528	stationary	0	0	2	0	64	206	1
2025-07-10 10:07:11.033+00	127	telegraf	1126982881	stationary	0	0	5	0	64	210	1
2025-07-10 10:11:52.921+00	127	telegraf	1041420528	stationary	0	0	3	0	64	212	1
2025-07-10 10:19:40.3+00	127	telegraf	978202981	stationary	0	0	4	-3	64	219	1
2025-07-10 11:41:53.947+00	127	telegraf	1041420528	stationary	0	0	3	0	64	270	1
2025-07-10 11:47:11.602+00	127	telegraf	1126982881	stationary	0	0	3	1	65	272	1
2025-07-10 11:51:54.079+00	127	telegraf	1041420528	stationary	0	0	2	0	64	275	1
2025-07-10 11:57:11.647+00	127	telegraf	1126982881	stationary	0	0	4	0	64	277	1
2025-07-10 12:01:54.238+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	280	1
2025-07-10 12:11:54.465+00	127	telegraf	1041420528	stationary	0	0	1	0	64	293	1
2025-07-10 12:21:54.646+00	127	telegraf	1041420528	stationary	0	0	2	0	64	297	1
2025-07-10 12:22:17.929+00	127	telegraf	978202981	stationary	0	0	4	-3	66	298	1
2025-07-10 12:27:11.852+00	127	telegraf	1126982881	stationary	0	0	4	1	65	299	1
2025-07-10 12:31:54.797+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	301	1
2025-07-10 12:32:18.001+00	127	telegraf	978202981	stationary	0	0	4	-4	66	302	1
2025-07-10 12:37:11.88+00	127	telegraf	1126982881	stationary	0	0	4	1	64	310	1
2025-07-10 12:41:54.92+00	127	telegraf	1041420528	stationary	0	0	2	1	64	314	1
2025-07-10 12:42:18.059+00	127	telegraf	978202981	stationary	0	0	5	-3	64	315	1
2025-07-10 12:47:11.916+00	127	telegraf	1126982881	stationary	0	0	5	1	66	316	1
2025-07-10 12:51:55.069+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	317	1
2025-07-10 12:52:18.099+00	127	telegraf	978202981	stationary	0	0	4	-3	65	318	1
2025-07-10 12:57:11.952+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	319	1
2025-07-10 13:01:55.203+00	127	telegraf	1041420528	stationary	0	0	1	0	63	321	1
2025-07-10 13:02:18.135+00	127	telegraf	978202981	stationary	0	0	4	-4	66	322	1
2025-07-10 13:11:55.417+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	332	1
2025-07-10 13:17:12.062+00	127	telegraf	1126982881	stationary	0	0	4	0	65	334	1
2025-07-10 13:21:55.598+00	127	telegraf	1041420528	stationary	0	0	2	0	65	335	1
2025-07-10 13:22:18.369+00	127	telegraf	978202981	stationary	0	0	4	-4	65	336	1
2025-07-10 13:27:12.153+00	127	telegraf	1126982881	stationary	0	0	4	0	64	337	1
2025-07-10 13:31:55.741+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	339	1
2025-07-10 13:37:12.29+00	127	telegraf	1126982881	stationary	0	0	4	0	65	344	1
2025-07-10 13:41:55.893+00	127	telegraf	1041420528	stationary	0	0	2	0	64	349	1
2025-07-10 13:51:56.046+00	127	telegraf	1041420528	stationary	0	0	1	1	63	354	1
2025-07-10 13:52:18.475+00	127	telegraf	978202981	stationary	0	0	4	-4	65	355	1
2025-07-10 13:57:12.4+00	127	telegraf	1126982881	stationary	0	0	4	1	65	356	1
2025-07-10 14:01:56.238+00	127	telegraf	1041420528	stationary	0	0	2	0	63	357	1
2025-07-10 14:02:18.514+00	127	telegraf	978202981	stationary	0	0	4	-4	66	358	1
2025-07-10 14:07:12.45+00	127	telegraf	1126982881	stationary	0	0	4	1	65	361	1
2025-07-10 14:11:56.402+00	127	telegraf	1041420528	stationary	0	0	1	0	64	368	1
2025-07-10 14:12:18.553+00	127	telegraf	978202981	stationary	0	0	4	-4	66	369	1
2025-07-10 14:17:12.497+00	127	telegraf	1126982881	stationary	0	0	5	0	65	371	1
2025-07-10 14:21:56.558+00	127	telegraf	1041420528	stationary	0	0	1	0	65	372	1
2025-07-10 14:27:12.544+00	127	telegraf	1126982881	stationary	0	0	4	1	65	374	1
2025-07-10 14:31:56.704+00	127	telegraf	1041420528	stationary	0	0	2	0	65	375	1
2025-07-10 14:41:56.85+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	386	1
2025-07-10 14:42:18.706+00	127	telegraf	978202981	stationary	0	0	5	-3	64	387	1
2025-07-10 14:46:53.917+00	127	telegraf	1041420528	start-moving	0	1	2	0	64	389	1
2025-07-10 14:47:52.935+00	127	telegraf	1041420528	stop-moving	1	1	2	0	64	391	1
2025-07-10 14:57:52.969+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	396	1
2025-07-10 14:58:05.827+00	127	telegraf	978202981	start-moving	0	1	4	-3	66	397	1
2025-07-10 14:58:05.977+00	127	telegraf	1041420528	start-moving	0	1	1	-1	65	398	1
2025-07-10 14:59:05.831+00	127	telegraf	978202981	stop-moving	1	1	4	-2	65	399	1
2025-07-10 14:59:04.984+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	65	402	1
2025-07-10 15:07:12.746+00	127	telegraf	1126982881	stationary	0	0	4	0	64	407	1
2025-07-10 15:09:05.911+00	127	telegraf	978202981	stationary	0	0	4	-3	65	409	1
2025-07-10 15:09:05.044+00	127	telegraf	1041420528	stationary	0	0	2	0	64	410	1
2025-07-10 15:17:12.794+00	127	telegraf	1126982881	stationary	0	0	4	0	65	418	1
2025-07-10 15:19:05.951+00	127	telegraf	978202981	stationary	0	0	4	-3	65	419	1
2025-07-10 15:19:05.156+00	127	telegraf	1041420528	stationary	0	0	2	-1	66	420	1
2025-07-10 15:27:12.843+00	127	telegraf	1126982881	stationary	0	0	4	1	65	421	1
2025-07-10 15:29:05.986+00	127	telegraf	978202981	stationary	0	0	5	-3	65	422	1
2025-07-10 15:29:05.23+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	423	1
2025-07-10 15:37:12.917+00	127	telegraf	1126982881	stationary	0	0	4	0	65	425	1
2025-07-10 15:39:06.082+00	127	telegraf	978202981	stationary	0	0	4	-3	64	427	1
2025-07-10 15:47:12.991+00	127	telegraf	1126982881	stationary	0	0	4	0	64	436	1
2025-07-10 15:49:06.189+00	127	telegraf	978202981	stationary	0	0	4	-3	66	437	1
2025-07-10 15:49:05.376+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	438	1
2025-07-10 15:57:13.082+00	127	telegraf	1126982881	stationary	0	0	4	0	65	439	1
2025-07-10 15:59:06.22+00	127	telegraf	978202981	stationary	0	0	4	-3	65	440	1
2025-07-10 15:59:05.52+00	127	telegraf	1041420528	stationary	0	0	2	0	64	441	1
2025-07-10 16:09:06.269+00	127	telegraf	978202981	stationary	0	0	4	-3	65	449	1
2025-07-10 16:09:05.608+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	450	1
2025-07-10 16:17:13.216+00	127	telegraf	1126982881	stationary	0	0	4	0	65	456	1
2025-07-10 16:18:15.225+00	127	telegraf	1126982881	start-moving	0	1	4	0	65	457	1
2025-07-10 16:19:06.314+00	127	telegraf	978202981	stationary	0	0	3	-3	66	458	1
2025-07-10 16:19:05.673+00	127	telegraf	1041420528	stationary	0	0	2	0	64	459	1
2025-07-10 16:19:15.225+00	127	telegraf	1126982881	stop-moving	1	1	3	1	65	460	1
2025-07-10 16:29:15.272+00	127	telegraf	1126982881	stationary	0	0	4	0	65	468	1
2025-07-10 16:35:01.739+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	469	1
2025-07-10 16:39:06.45+00	127	telegraf	978202981	stationary	0	0	4	-3	66	473	1
2025-07-10 16:39:15.325+00	127	telegraf	1126982881	stationary	0	0	4	0	65	475	1
2025-07-10 16:45:01.8+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	483	1
2025-07-10 16:49:06.515+00	127	telegraf	978202981	stationary	0	0	4	-3	65	484	1
2025-07-10 16:49:15.356+00	127	telegraf	1126982881	stationary	0	0	4	0	66	485	1
2025-07-10 16:55:01.844+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	486	1
2025-07-10 16:59:06.571+00	127	telegraf	978202981	stationary	0	0	5	-3	66	487	1
2025-07-10 16:59:15.403+00	127	telegraf	1126982881	stationary	0	0	4	0	64	488	1
2025-07-10 17:05:01.893+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	489	1
2025-07-10 17:09:06.641+00	127	telegraf	978202981	stationary	0	0	3	-3	65	492	1
2025-07-10 17:09:15.463+00	127	telegraf	1126982881	stationary	0	0	4	0	64	493	1
2025-07-10 17:19:06.694+00	127	telegraf	978202981	stationary	0	0	4	-3	63	502	1
2025-07-10 17:19:15.512+00	127	telegraf	1126982881	stationary	0	0	4	0	65	503	1
2025-07-10 17:25:02.229+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	504	1
2025-07-10 17:29:06.737+00	127	telegraf	978202981	stationary	0	0	4	-3	65	505	1
2025-07-10 17:35:02.372+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	507	1
2025-07-10 17:39:06.774+00	127	telegraf	978202981	stationary	0	0	4	-4	64	510	1
2025-07-10 17:45:02.51+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	519	1
2025-07-10 17:49:06.818+00	127	telegraf	978202981	stationary	0	0	4	-3	65	520	1
2025-07-10 17:55:02.638+00	127	telegraf	1041420528	stationary	0	0	2	0	64	523	1
2025-07-11 06:51:29.049+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	64	1	1
2025-07-11 06:58:48.294+00	127	telegraf	978202981	stationary	0	0	3	-4	65	10	1
2025-07-11 07:01:29.207+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	11	1
2025-07-11 07:08:48.322+00	127	telegraf	978202981	stationary	0	0	5	-3	64	18	1
2025-07-11 07:18:48.309+00	127	telegraf	978202981	stationary	0	0	4	-2	66	22	1
2025-07-11 07:18:48.331+00	127	telegraf	1126982881	stationary	0	0	4	0	66	23	1
2025-07-11 07:21:29.241+00	127	telegraf	1041420528	stationary	0	0	2	0	64	24	1
2025-07-11 07:28:48.407+00	127	telegraf	1126982881	stationary	0	0	3	0	65	28	1
2025-07-11 07:28:48.346+00	127	telegraf	978202981	stationary	0	0	4	-3	65	29	1
2025-07-11 07:38:48.461+00	127	telegraf	1126982881	stationary	0	0	4	0	65	36	1
2025-07-11 07:38:48.473+00	127	telegraf	978202981	stationary	0	0	3	-3	66	37	1
2025-07-11 07:41:29.319+00	127	telegraf	1041420528	stationary	0	0	2	0	63	39	1
2025-07-11 07:47:42.359+00	127	telegraf	1041420528	start-moving	0	1	-5	1	46	40	1
2025-07-11 07:47:42.486+00	127	telegraf	1126982881	start-moving	0	1	4	1	62	41	1
2025-07-11 07:48:41.5+00	127	telegraf	1126982881	stop-moving	1	1	4	0	65	43	1
2025-07-11 07:48:42.367+00	127	telegraf	1041420528	stop-moving	1	1	2	0	63	46	1
2025-07-11 07:48:48.547+00	127	telegraf	978202981	stationary	0	0	5	-4	65	49	1
2025-07-11 07:51:59.376+00	127	telegraf	1041420528	start-moving	0	1	2	0	63	51	1
2025-07-11 07:52:58.383+00	127	telegraf	1041420528	stop-moving	1	1	1	-1	65	52	1
2025-07-11 08:58:08.881+00	127	telegraf	978202981	stationary	0	0	4	-3	65	97	1
2025-07-11 09:02:58.649+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	101	1
2025-07-11 09:08:08.928+00	127	telegraf	978202981	stationary	0	0	4	-3	65	107	1
2025-07-11 09:12:58.688+00	127	telegraf	1041420528	stationary	0	0	2	0	64	111	1
2025-07-11 09:18:08.965+00	127	telegraf	978202981	stationary	0	0	4	-3	65	112	1
2025-07-11 09:22:05.974+00	127	telegraf	978202981	start-moving	0	1	4	-3	65	116	1
2025-07-11 09:22:58.813+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	118	1
2025-07-11 09:23:05.981+00	127	telegraf	978202981	stop-moving	1	1	4	-3	65	119	1
2025-07-12 05:51:09.914+00	127	telegraf	1126982881	stop-moving	1	1	1	0	66	9	1
2025-07-12 05:59:28.529+00	127	telegraf	978202981	stationary	0	0	3	-7	63	17	1
2025-07-12 05:59:30.083+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	18	1
2025-07-12 06:01:09.982+00	127	telegraf	1126982881	stationary	0	0	2	0	65	19	1
2025-07-12 06:09:30.105+00	127	telegraf	1041420528	stationary	0	0	1	-2	65	22	1
2025-07-12 06:11:10.08+00	127	telegraf	1126982881	stationary	0	0	2	0	65	23	1
2025-07-12 06:19:30.188+00	127	telegraf	1041420528	stationary	0	0	2	-1	62	28	1
2025-07-12 06:19:28.604+00	127	telegraf	978202981	stationary	0	0	3	-7	65	29	1
2025-07-12 06:21:10.184+00	127	telegraf	1126982881	stationary	0	0	2	1	65	32	1
2025-07-12 06:29:28.693+00	127	telegraf	978202981	stationary	0	0	4	-7	65	37	1
2025-07-12 06:29:30.292+00	127	telegraf	1041420528	stationary	0	0	1	-2	63	38	1
2025-07-12 06:31:10.216+00	127	telegraf	1126982881	stationary	0	0	3	-1	64	40	1
2025-07-12 06:39:30.352+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	43	1
2025-07-12 06:39:28.796+00	127	telegraf	978202981	stationary	0	0	4	-7	64	44	1
2025-07-12 06:49:28.869+00	127	telegraf	978202981	stationary	0	0	3	-6	64	49	1
2025-07-12 06:49:30.437+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	50	1
2025-07-12 06:51:10.303+00	127	telegraf	1126982881	stationary	0	0	2	0	66	53	1
2025-07-12 06:59:28.92+00	127	telegraf	978202981	stationary	0	0	4	-7	65	58	1
2025-07-12 06:59:30.488+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	59	1
2025-07-12 07:01:10.343+00	127	telegraf	1126982881	stationary	0	0	1	0	65	60	1
2025-07-12 07:19:29.004+00	127	telegraf	978202981	stationary	0	0	4	-7	65	67	1
2025-07-12 07:19:30.554+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	68	1
2025-07-12 07:21:10.419+00	127	telegraf	1126982881	stationary	0	0	2	1	64	70	1
2025-07-12 07:29:29.047+00	127	telegraf	978202981	stationary	0	0	4	-7	65	76	1
2025-07-12 07:29:30.65+00	127	telegraf	1041420528	stationary	0	0	1	-2	65	77	1
2025-07-12 07:31:10.453+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	78	1
2025-07-12 07:41:10.495+00	127	telegraf	1126982881	stationary	0	0	2	1	64	83	1
2025-07-12 07:49:29.162+00	127	telegraf	978202981	stationary	0	0	3	-7	65	85	1
2025-07-12 07:49:30.713+00	127	telegraf	1041420528	stationary	0	0	1	-2	63	86	1
2025-07-12 07:51:10.58+00	127	telegraf	1126982881	stationary	0	0	2	0	65	87	1
2025-07-12 07:59:29.197+00	127	telegraf	978202981	stationary	0	0	4	-7	65	95	1
2025-07-12 07:59:30.757+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	96	1
2025-07-12 08:01:10.619+00	127	telegraf	1126982881	stationary	0	0	3	0	64	97	1
2025-07-12 08:09:30.785+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	99	1
2025-07-12 08:09:29.244+00	127	telegraf	978202981	stationary	0	0	4	-6	65	100	1
2025-07-12 08:11:10.654+00	127	telegraf	1126982881	stationary	0	0	2	0	65	101	1
2025-07-12 08:19:30.818+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	104	1
2025-07-12 08:19:29.276+00	127	telegraf	978202981	stationary	0	0	4	-7	64	105	1
2025-07-12 08:21:10.709+00	127	telegraf	1126982881	stationary	0	0	2	0	65	106	1
2025-07-12 08:31:10.777+00	127	telegraf	1126982881	stationary	0	0	3	1	65	115	1
2025-07-12 08:39:29.364+00	127	telegraf	978202981	stationary	0	0	4	-7	66	117	1
2025-07-12 08:39:30.892+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	118	1
2025-07-12 08:41:10.838+00	127	telegraf	1126982881	stationary	0	0	2	0	65	119	1
2025-07-12 08:49:30.935+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	121	1
2025-07-12 08:49:29.4+00	127	telegraf	978202981	stationary	0	0	5	-7	65	122	1
2025-07-12 08:51:10.892+00	127	telegraf	1126982881	stationary	0	0	3	0	65	124	1
2025-07-12 09:01:11.002+00	127	telegraf	1126982881	stationary	0	0	2	1	65	133	1
2025-07-12 09:21:11.078+00	127	telegraf	1126982881	stationary	0	0	3	1	65	144	1
2025-07-12 09:41:11.153+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	157	1
2025-07-12 10:09:29.899+00	127	telegraf	978202981	stationary	0	0	4	-7	65	174	1
2025-07-12 10:09:31.443+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	175	1
2025-07-12 10:11:11.275+00	127	telegraf	1126982881	stationary	0	0	2	0	65	177	1
2025-07-12 10:19:29.934+00	127	telegraf	978202981	stationary	0	0	4	-7	65	178	1
2025-07-12 10:21:11.304+00	127	telegraf	1126982881	stationary	0	0	2	0	65	180	1
2025-07-12 14:01:12.504+00	127	telegraf	1126982881	stationary	0	0	1	0	64	319	1
2025-07-12 14:09:32.625+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	326	1
2025-07-12 14:09:31.013+00	127	telegraf	978202981	stationary	0	0	5	-7	65	327	1
2025-07-12 14:11:12.575+00	127	telegraf	1126982881	stationary	0	0	3	1	65	329	1
2025-07-12 14:19:32.729+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	333	1
2025-07-12 14:19:31.102+00	127	telegraf	978202981	stationary	0	0	4	-7	65	334	1
2025-07-12 14:21:12.609+00	127	telegraf	1126982881	stationary	0	0	2	0	65	335	1
2025-07-12 14:29:31.184+00	127	telegraf	978202981	stationary	0	0	4	-6	66	338	1
2025-07-12 14:29:32.794+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	339	1
2025-07-12 14:31:12.652+00	127	telegraf	1126982881	stationary	0	0	3	1	65	341	1
2025-07-12 14:39:32.858+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	348	1
2025-07-12 14:39:31.269+00	127	telegraf	978202981	stationary	0	0	4	-7	65	349	1
2025-07-12 14:41:12.689+00	127	telegraf	1126982881	stationary	0	0	2	1	65	351	1
2025-07-12 14:49:31.343+00	127	telegraf	978202981	stationary	0	0	5	-6	65	355	1
2025-07-12 14:49:32.911+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	356	1
2025-07-12 14:51:12.729+00	127	telegraf	1126982881	stationary	0	0	2	0	66	357	1
2025-07-12 14:59:31.371+00	127	telegraf	978202981	stationary	0	0	5	-7	64	360	1
2025-07-12 14:59:32.94+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	361	1
2025-07-12 15:01:12.766+00	127	telegraf	1126982881	stationary	0	0	2	1	66	362	1
2025-07-12 15:09:33.022+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	369	1
2025-07-12 15:09:31.41+00	127	telegraf	978202981	stationary	0	0	4	-6	65	370	1
2025-07-12 15:11:12.808+00	127	telegraf	1126982881	stationary	0	0	2	0	65	371	1
2025-07-12 15:19:31.462+00	127	telegraf	978202981	stationary	0	0	4	-7	65	375	1
2025-07-12 15:19:33.053+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	376	1
2025-07-12 15:21:12.845+00	127	telegraf	1126982881	stationary	0	0	2	1	64	377	1
2025-07-12 15:29:31.527+00	127	telegraf	978202981	stationary	0	0	4	-6	65	378	1
2025-07-12 15:29:33.086+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	379	1
2025-07-12 16:41:13.293+00	127	telegraf	1126982881	stationary	0	0	3	0	65	423	1
2025-07-12 16:49:31.837+00	127	telegraf	978202981	stationary	0	0	4	-6	65	429	1
2025-07-12 16:51:13.347+00	127	telegraf	1126982881	stationary	0	0	3	0	65	431	1
2025-07-12 16:59:31.974+00	127	telegraf	978202981	stationary	0	0	4	-6	64	432	1
2025-07-12 16:59:33.502+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	433	1
2025-07-12 17:01:13.397+00	127	telegraf	1126982881	stationary	0	0	2	0	64	435	1
2025-07-12 17:11:13.439+00	127	telegraf	1126982881	stationary	0	0	2	0	65	442	1
2025-07-12 17:21:13.482+00	127	telegraf	1126982881	stationary	0	0	2	1	64	452	1
2025-07-12 17:29:32.179+00	127	telegraf	978202981	stationary	0	0	3	-7	66	453	1
2025-07-12 17:29:33.692+00	127	telegraf	1041420528	stationary	0	0	3	-2	65	454	1
2025-07-12 17:31:13.519+00	127	telegraf	1126982881	stationary	0	0	2	0	65	455	1
2025-07-12 17:39:32.204+00	127	telegraf	978202981	stationary	0	0	4	-7	65	459	1
2025-07-12 17:39:33.732+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	460	1
2025-07-12 17:49:33.807+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	467	1
2025-07-12 17:49:32.243+00	127	telegraf	978202981	stationary	0	0	4	-7	64	468	1
2025-07-12 17:51:13.591+00	127	telegraf	1126982881	stationary	0	0	2	0	65	470	1
2025-07-12 17:59:33.846+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	471	1
2025-07-12 17:59:32.311+00	127	telegraf	978202981	stationary	0	0	4	-7	65	472	1
2025-07-12 18:01:13.626+00	127	telegraf	1126982881	stationary	0	0	3	1	66	474	1
2025-07-12 18:09:33.886+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	479	1
2025-07-12 18:09:32.35+00	127	telegraf	978202981	stationary	0	0	5	-7	66	480	1
2025-07-12 18:11:13.67+00	127	telegraf	1126982881	stationary	0	0	2	0	65	481	1
2025-07-12 18:19:32.383+00	127	telegraf	978202981	stationary	0	0	4	-7	65	487	1
2025-07-12 18:21:13.708+00	127	telegraf	1126982881	stationary	0	0	2	0	65	489	1
2025-07-12 18:29:33.955+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	493	1
2025-07-12 18:31:13.784+00	127	telegraf	1126982881	stationary	0	0	2	0	66	494	1
2025-07-12 18:39:32.468+00	127	telegraf	978202981	stationary	0	0	4	-6	66	499	1
2025-07-12 18:39:34.004+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	500	1
2025-07-12 18:49:34.039+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	506	1
2025-07-12 18:49:32.504+00	127	telegraf	978202981	stationary	0	0	4	-6	63	507	1
2025-07-12 18:51:13.877+00	127	telegraf	1126982881	stationary	0	0	2	0	65	508	1
2025-07-12 18:59:32.546+00	127	telegraf	978202981	stationary	0	0	5	-6	65	510	1
2025-07-12 18:59:34.071+00	127	telegraf	1041420528	stationary	0	0	1	-2	65	511	1
2025-07-12 19:01:13.948+00	127	telegraf	1126982881	stationary	0	0	2	1	64	512	1
2025-07-12 19:11:14.034+00	127	telegraf	1126982881	stationary	0	0	2	0	65	521	1
2025-07-12 20:01:14.305+00	127	telegraf	1126982881	stationary	0	0	2	0	65	550	1
2025-07-12 20:09:32.992+00	127	telegraf	978202981	stationary	0	0	5	-7	65	555	1
2025-07-12 20:09:34.481+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	556	1
2025-07-12 20:11:14.349+00	127	telegraf	1126982881	stationary	0	0	3	0	65	557	1
2025-07-12 20:19:33.027+00	127	telegraf	978202981	stationary	0	0	4	-7	65	561	1
2025-07-12 20:21:14.378+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	563	1
2025-07-12 20:29:33.067+00	127	telegraf	978202981	stationary	0	0	4	-6	65	566	1
2025-07-12 20:29:34.557+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	567	1
2025-07-12 20:31:14.422+00	127	telegraf	1126982881	stationary	0	0	2	1	65	568	1
2025-07-12 20:39:33.126+00	127	telegraf	978202981	stationary	0	0	3	-7	65	573	1
2025-07-12 20:49:33.172+00	127	telegraf	978202981	stationary	0	0	4	-7	66	579	1
2025-07-12 20:49:34.669+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	580	1
2025-07-12 20:51:14.501+00	127	telegraf	1126982881	stationary	0	0	2	0	65	581	1
2025-07-12 20:59:33.213+00	127	telegraf	978202981	stationary	0	0	5	-7	65	583	1
2025-07-12 20:59:34.703+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	584	1
2025-07-12 21:01:14.593+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	586	1
2025-07-12 21:09:34.745+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	592	1
2025-07-12 21:11:14.631+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	593	1
2025-07-12 21:19:33.279+00	127	telegraf	978202981	stationary	0	0	5	-6	64	597	1
2025-07-12 21:19:34.779+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	598	1
2025-07-12 21:29:33.322+00	127	telegraf	978202981	stationary	0	0	4	-6	66	603	1
2025-07-12 21:29:34.818+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	604	1
2025-07-12 21:31:14.755+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	606	1
2025-07-12 21:39:33.356+00	127	telegraf	978202981	stationary	0	0	4	-7	65	610	1
2025-07-12 21:39:34.855+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	611	1
2025-07-12 21:41:14.825+00	127	telegraf	1126982881	stationary	0	0	2	0	65	613	1
2025-07-12 21:49:34.896+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	617	1
2025-07-12 21:49:33.393+00	127	telegraf	978202981	stationary	0	0	4	-7	65	618	1
2025-07-12 21:51:14.872+00	127	telegraf	1126982881	stationary	0	0	1	1	65	619	1
2025-07-12 21:59:33.43+00	127	telegraf	978202981	stationary	0	0	5	-6	64	621	1
2025-07-12 21:59:34.93+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	622	1
2025-07-12 22:01:14.945+00	127	telegraf	1126982881	stationary	0	0	2	0	65	623	1
2025-07-12 22:09:33.526+00	127	telegraf	978202981	stationary	0	0	4	-6	65	629	1
2025-07-13 06:19:36.14+00	127	telegraf	978202981	stationary	0	0	4	-7	65	929	1
2025-07-13 06:19:37.481+00	127	telegraf	1041420528	stationary	0	0	3	-2	63	930	1
2025-07-13 06:21:17.569+00	127	telegraf	1126982881	stationary	0	0	2	0	66	932	1
2025-07-13 06:29:36.197+00	127	telegraf	978202981	stationary	0	0	4	-7	65	934	1
2025-07-13 06:29:37.545+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	935	1
2025-07-13 06:31:17.602+00	127	telegraf	1126982881	stationary	0	0	3	0	65	936	1
2025-07-13 06:39:37.608+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	944	1
2025-07-13 06:39:36.245+00	127	telegraf	978202981	stationary	0	0	4	-6	65	945	1
2025-07-13 06:49:36.28+00	127	telegraf	978202981	stationary	0	0	4	-6	64	950	1
2025-07-13 06:49:37.675+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	951	1
2025-07-13 06:51:17.693+00	127	telegraf	1126982881	stationary	0	0	3	0	65	953	1
2025-07-13 06:59:37.709+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	956	1
2025-07-13 06:59:36.353+00	127	telegraf	978202981	stationary	0	0	5	-7	65	957	1
2025-07-13 07:01:17.731+00	127	telegraf	1126982881	stationary	0	0	3	0	65	958	1
2025-07-13 07:09:37.738+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	963	1
2025-07-13 07:09:36.391+00	127	telegraf	978202981	stationary	0	0	5	-7	65	964	1
2025-07-13 07:11:17.765+00	127	telegraf	1126982881	stationary	0	0	2	0	65	965	1
2025-07-13 07:19:36.427+00	127	telegraf	978202981	stationary	0	0	4	-7	63	970	1
2025-07-13 07:19:37.815+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	971	1
2025-07-13 07:21:17.842+00	127	telegraf	1126982881	stationary	0	0	2	0	63	972	1
2025-07-13 07:29:37.852+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	975	1
2025-07-13 07:29:36.474+00	127	telegraf	978202981	stationary	0	0	4	-7	64	976	1
2025-07-13 07:31:17.901+00	127	telegraf	1126982881	stationary	0	0	2	0	67	978	1
2025-07-13 09:49:37.242+00	127	telegraf	978202981	stationary	0	0	5	-7	64	1061	1
2025-07-13 09:49:38.544+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	1062	1
2025-07-13 09:51:18.629+00	127	telegraf	1126982881	stationary	0	0	2	0	65	1064	1
2025-07-13 09:59:37.279+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1067	1
2025-07-13 09:59:38.62+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	1068	1
2025-07-13 10:01:18.669+00	127	telegraf	1126982881	stationary	0	0	2	1	65	1069	1
2025-07-13 10:09:37.325+00	127	telegraf	978202981	stationary	0	0	4	-7	64	1077	1
2025-07-13 10:09:38.658+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1078	1
2025-07-13 10:11:18.75+00	127	telegraf	1126982881	stationary	0	0	3	0	64	1079	1
2025-07-13 10:29:37.399+00	127	telegraf	978202981	stationary	0	0	4	-6	65	1089	1
2025-07-13 10:29:38.732+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1090	1
2025-07-13 10:39:37.432+00	127	telegraf	978202981	stationary	0	0	4	-6	66	1099	1
2025-07-13 10:39:38.765+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1100	1
2025-07-13 10:41:18.953+00	127	telegraf	1126982881	stationary	0	0	3	0	66	1101	1
2025-07-13 10:49:37.468+00	127	telegraf	978202981	stationary	0	0	5	-7	66	1104	1
2025-07-13 10:49:38.808+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	1105	1
2025-07-13 10:51:18.997+00	127	telegraf	1126982881	stationary	0	0	2	0	66	1106	1
2025-07-13 10:59:37.596+00	127	telegraf	978202981	stationary	0	0	4	-7	64	1108	1
2025-07-13 10:59:38.836+00	127	telegraf	1041420528	stationary	0	0	1	-2	63	1109	1
2025-07-13 11:01:19.049+00	127	telegraf	1126982881	stationary	0	0	2	0	65	1110	1
2025-07-13 11:09:37.687+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1118	1
2025-07-13 11:09:38.871+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	1119	1
2025-07-13 11:11:19.089+00	127	telegraf	1126982881	stationary	0	0	3	0	65	1121	1
2025-07-13 11:19:38.908+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	1123	1
2025-07-13 11:19:37.757+00	127	telegraf	978202981	stationary	0	0	4	-6	64	1124	1
2025-07-13 11:21:19.134+00	127	telegraf	1126982881	stationary	0	0	2	0	66	1125	1
2025-07-13 11:29:38.952+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	1127	1
2025-07-13 11:29:37.809+00	127	telegraf	978202981	stationary	0	0	4	-7	65	1128	1
2025-07-13 11:39:37.841+00	127	telegraf	978202981	stationary	0	0	5	-7	65	1133	1
2025-07-13 11:39:39.025+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	1134	1
2025-07-13 11:41:19.211+00	127	telegraf	1126982881	stationary	0	0	3	0	66	1139	1
2025-07-13 12:19:39.304+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	1158	1
2025-07-13 12:19:38.02+00	127	telegraf	978202981	stationary	0	0	5	-6	64	1159	1
2025-07-13 12:29:39.331+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1162	1
2025-07-13 12:29:38.061+00	127	telegraf	978202981	stationary	0	0	5	-7	64	1163	1
2025-07-13 12:31:19.447+00	127	telegraf	1126982881	stationary	0	0	2	0	66	1165	1
2025-07-13 12:58:50.649+00	127	telegraf	1126982881	start-moving	0	1	-2	68	40	1181	1
2025-07-13 13:00:32.66+00	127	telegraf	1126982881	stop-moving	5	8	4	-1	65	1184	1
2025-07-13 13:05:35.21+00	127	telegraf	978202981	start-moving	0	1	5	-5	65	1188	1
2025-07-13 13:06:34.21+00	127	telegraf	978202981	stop-moving	1	1	5	-7	65	1190	1
2025-07-13 13:09:39.509+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1194	1
2025-07-13 13:10:32.716+00	127	telegraf	1126982881	stationary	0	0	4	0	65	1195	1
2025-07-13 13:16:34.258+00	127	telegraf	978202981	stationary	0	0	5	-7	65	1200	1
2025-07-13 13:19:39.544+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	1201	1
2025-07-13 13:20:32.772+00	127	telegraf	1126982881	stationary	0	0	5	-1	65	1202	1
2025-07-13 13:30:32.832+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	1208	1
2025-07-13 13:36:34.396+00	127	telegraf	978202981	stationary	0	0	5	-7	65	1213	1
2025-07-13 13:39:39.604+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1215	1
2025-07-13 14:19:39.76+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	1240	1
2025-07-13 14:20:33.027+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	1241	1
2025-07-13 14:26:34.706+00	127	telegraf	978202981	stationary	0	0	5	-6	64	1245	1
2025-07-13 14:29:39.828+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	1246	1
2025-07-13 14:30:33.06+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	1247	1
2025-07-13 14:36:34.775+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1250	1
2025-07-13 14:39:39.893+00	127	telegraf	1041420528	stationary	0	0	3	-3	65	1252	1
2025-07-13 14:40:33.108+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	1253	1
2025-07-13 14:46:34.823+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1258	1
2025-07-13 14:49:39.963+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1259	1
2025-07-13 14:56:34.867+00	127	telegraf	978202981	stationary	0	0	5	-6	63	1264	1
2025-07-14 07:56:39.842+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1904	1
2025-07-14 07:59:12.984+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	1905	1
2025-07-14 08:06:39.936+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1910	1
2025-07-14 08:10:38.522+00	127	telegraf	1126982881	stationary	0	0	4	0	65	1915	1
2025-07-14 08:16:40.018+00	127	telegraf	978202981	stationary	0	0	6	-6	65	1917	1
2025-07-14 08:19:13.05+00	127	telegraf	1041420528	stationary	0	0	1	-2	63	1920	1
2025-07-14 08:20:38.562+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	1921	1
2025-07-15 08:39:20.488+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	2808	1
2025-07-15 08:40:46.071+00	127	telegraf	1126982881	stationary	0	0	4	-1	63	2810	1
2025-07-15 08:46:47.397+00	127	telegraf	978202981	stationary	0	0	4	-7	66	2813	1
2025-07-15 08:49:20.551+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	2817	1
2025-07-15 08:50:46.144+00	127	telegraf	1126982881	stationary	0	0	4	-1	67	2818	1
2025-07-15 08:56:41.179+00	127	telegraf	1126982881	start-moving	0	1	4	-2	64	2821	1
2025-07-15 08:56:47.485+00	127	telegraf	978202981	stationary	0	0	5	-6	65	2822	1
2025-07-15 08:57:41.184+00	127	telegraf	1126982881	stop-moving	1	1	4	-1	65	2824	1
2025-07-15 08:59:20.6+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	2827	1
2025-07-15 09:06:47.52+00	127	telegraf	978202981	stationary	0	0	5	-6	66	2828	1
2025-07-15 09:26:47.59+00	127	telegraf	978202981	stationary	0	0	5	-5	64	2842	1
2025-07-15 09:27:41.36+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	2843	1
2025-07-15 09:29:20.791+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	2845	1
2025-07-15 09:37:41.42+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	2847	1
2025-07-16 07:15:48.965+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	3747	1
2025-07-16 07:18:10.713+00	127	telegraf	1041420528	stationary	0	0	3	-3	65	3749	1
2025-07-16 08:28:11.136+00	127	telegraf	1041420528	stationary	0	0	3	-2	63	3797	1
2025-07-16 08:29:12.371+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	3798	1
2025-07-16 08:36:54.496+00	127	telegraf	978202981	stationary	0	0	4	-6	65	3801	1
2025-07-16 08:38:11.197+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	3802	1
2025-07-16 08:39:12.441+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	3803	1
2025-07-16 08:46:54.594+00	127	telegraf	978202981	stationary	0	0	5	-7	65	3806	1
2025-07-16 08:48:11.271+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	3807	1
2025-07-16 08:49:12.512+00	127	telegraf	1126982881	stationary	0	0	4	0	66	3809	1
2025-07-16 08:56:54.674+00	127	telegraf	978202981	stationary	0	0	4	-5	64	3814	1
2025-07-16 08:58:11.305+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	3815	1
2025-07-16 12:18:12.332+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	3936	1
2025-07-16 12:19:13.523+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	3937	1
2025-07-16 12:26:55.841+00	127	telegraf	978202981	stationary	0	0	5	-6	65	3941	1
2025-07-16 12:28:12.386+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	3942	1
2025-07-16 12:29:13.568+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	3946	1
2025-07-16 12:36:55.882+00	127	telegraf	978202981	stationary	0	0	6	-6	63	3947	1
2025-07-16 12:38:12.434+00	127	telegraf	1041420528	stationary	0	0	3	-1	66	3948	1
2025-07-16 12:39:13.602+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	3949	1
2025-07-16 12:56:55.978+00	127	telegraf	978202981	stationary	0	0	5	-6	65	3959	1
2025-07-16 12:58:12.537+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	3960	1
2025-07-16 13:06:56.035+00	127	telegraf	978202981	stationary	0	0	5	-6	65	3965	1
2025-07-16 13:08:12.586+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	3966	1
2025-07-16 13:09:13.77+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	3967	1
2025-07-16 13:16:56.095+00	127	telegraf	978202981	stationary	0	0	5	-6	64	3971	1
2025-07-16 13:18:12.681+00	127	telegraf	1041420528	stationary	0	0	3	-1	62	3972	1
2025-07-16 13:19:13.811+00	127	telegraf	1126982881	stationary	0	0	4	-1	64	3973	1
2025-07-16 13:26:56.209+00	127	telegraf	978202981	stationary	0	0	4	-6	64	3976	1
2025-07-16 13:29:13.873+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	3979	1
2025-07-16 13:36:56.3+00	127	telegraf	978202981	stationary	0	0	5	-6	65	3983	1
2025-07-16 13:48:12.921+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	3990	1
2025-07-16 13:49:14.008+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	3991	1
2025-07-16 13:56:56.4+00	127	telegraf	978202981	stationary	0	0	4	-6	65	3994	1
2025-07-16 13:58:12.963+00	127	telegraf	1041420528	stationary	0	0	3	-2	65	3996	1
2025-07-16 13:59:14.078+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	3997	1
2025-07-16 14:06:56.435+00	127	telegraf	978202981	stationary	0	0	5	-6	65	4001	1
2025-07-16 14:08:13+00	127	telegraf	1041420528	stationary	0	0	3	-2	63	4002	1
2025-07-16 14:09:14.124+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4003	1
2025-07-16 14:16:56.498+00	127	telegraf	978202981	stationary	0	0	5	-5	64	4007	1
2025-07-16 14:18:13.027+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	4008	1
2025-07-16 14:19:14.179+00	127	telegraf	1126982881	stationary	0	0	3	0	64	4009	1
2025-07-16 14:26:56.543+00	127	telegraf	978202981	stationary	0	0	5	-6	65	4012	1
2025-07-16 14:28:13.066+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	4013	1
2025-07-16 14:29:14.22+00	127	telegraf	1126982881	stationary	0	0	4	0	64	4015	1
2025-07-16 14:36:56.59+00	127	telegraf	978202981	stationary	0	0	5	-6	64	4021	1
2025-07-16 14:38:13.142+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4022	1
2025-07-16 14:39:14.248+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4023	1
2025-07-16 14:46:56.672+00	127	telegraf	978202981	stationary	0	0	5	-6	64	4026	1
2025-07-16 14:48:13.187+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	4028	1
2025-07-16 14:49:14.292+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	4029	1
2025-07-16 14:56:56.719+00	127	telegraf	978202981	stationary	0	0	4	-7	66	4032	1
2025-07-16 14:58:13.245+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4033	1
2025-07-16 14:59:14.333+00	127	telegraf	1126982881	stationary	0	0	4	0	65	4034	1
2025-07-16 15:06:56.758+00	127	telegraf	978202981	stationary	0	0	5	-6	65	4039	1
2025-07-16 15:08:13.295+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	4040	1
2025-07-16 15:09:14.365+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4041	1
2025-07-16 15:16:56.801+00	127	telegraf	978202981	stationary	0	0	5	-6	65	4045	1
2025-07-16 15:18:13.349+00	127	telegraf	1041420528	stationary	0	0	2	0	65	4047	1
2025-07-16 15:19:14.403+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4048	1
2025-07-16 15:26:56.86+00	127	telegraf	978202981	stationary	0	0	4	-6	65	4050	1
2025-07-16 15:28:13.403+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4052	1
2025-07-16 15:29:14.449+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4053	1
2025-07-16 15:36:56.94+00	127	telegraf	978202981	stationary	0	0	5	-5	65	4059	1
2025-07-16 15:38:13.459+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	4060	1
2025-07-16 15:39:14.483+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4061	1
2025-07-16 15:46:56.98+00	127	telegraf	978202981	stationary	0	0	5	-6	65	4064	1
2025-07-16 15:48:13.586+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	4065	1
2025-07-16 15:49:14.569+00	127	telegraf	1126982881	stationary	0	0	4	0	64	4067	1
2025-07-16 15:56:57.094+00	127	telegraf	978202981	stationary	0	0	5	-6	65	4069	1
2025-07-16 15:58:13.637+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	4070	1
2025-07-16 15:59:14.622+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4072	1
2025-07-16 16:06:57.154+00	127	telegraf	978202981	stationary	0	0	5	-6	65	4077	1
2025-07-16 16:08:13.711+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4078	1
2025-07-16 16:09:14.681+00	127	telegraf	1126982881	stationary	0	0	5	-1	65	4079	1
2025-07-16 16:18:13.759+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	4083	1
2025-07-16 16:19:14.738+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4084	1
2025-07-16 16:26:57.241+00	127	telegraf	978202981	stationary	0	0	4	-6	64	4087	1
2025-07-16 16:28:13.796+00	127	telegraf	1041420528	stationary	0	0	2	-3	64	4088	1
2025-07-16 16:46:57.345+00	127	telegraf	978202981	stationary	0	0	4	-4	66	4100	1
2025-07-16 16:49:14.906+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4102	1
2025-07-16 17:46:22.658+00	127	telegraf	978202981	stationary	0	0	4	-3	66	4137	1
2025-07-16 17:48:14.194+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	4140	1
2025-07-16 17:49:15.16+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4141	1
2025-07-16 17:56:22.716+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4144	1
2025-07-16 17:59:15.202+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4147	1
2025-07-16 18:06:22.782+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4151	1
2025-07-16 18:08:14.367+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	4156	1
2025-07-16 18:09:15.242+00	127	telegraf	1126982881	stationary	0	0	4	0	65	4158	1
2025-07-16 18:18:14.44+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4161	1
2025-07-16 18:19:15.275+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4162	1
2025-07-16 18:36:23.026+00	127	telegraf	978202981	stationary	0	0	5	-4	64	4171	1
2025-07-16 18:38:14.572+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	4175	1
2025-07-16 18:39:15.424+00	127	telegraf	1126982881	stationary	0	0	4	0	66	4177	1
2025-07-16 18:46:23.059+00	127	telegraf	978202981	stationary	0	0	6	-3	66	4181	1
2025-07-16 18:48:14.604+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4182	1
2025-07-16 18:49:15.477+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4183	1
2025-07-16 18:56:23.115+00	127	telegraf	978202981	stationary	0	0	5	-4	64	4185	1
2025-07-16 18:59:15.543+00	127	telegraf	1126982881	stationary	0	0	5	-1	65	4187	1
2025-07-16 19:06:23.162+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4191	1
2025-07-16 19:08:14.683+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	4192	1
2025-07-16 19:09:15.601+00	127	telegraf	1126982881	stationary	0	0	4	0	65	4196	1
2025-07-16 19:18:14.714+00	127	telegraf	1041420528	stationary	0	0	3	-3	64	4202	1
2025-07-16 19:19:15.665+00	127	telegraf	1126982881	stationary	0	0	4	-1	64	4203	1
2025-07-16 19:26:23.298+00	127	telegraf	978202981	stationary	0	0	4	-4	66	4207	1
2025-07-16 19:29:15.696+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4209	1
2025-07-16 19:36:23.346+00	127	telegraf	978202981	stationary	0	0	4	-5	65	4210	1
2025-07-16 19:38:14.833+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	4212	1
2025-07-16 19:39:15.751+00	127	telegraf	1126982881	stationary	0	0	3	-1	64	4213	1
2025-07-16 19:46:23.386+00	127	telegraf	978202981	stationary	0	0	5	-4	65	4225	1
2025-07-16 19:48:14.885+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4228	1
2025-07-16 19:49:15.796+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	4229	1
2025-07-16 19:56:23.433+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4232	1
2025-07-16 19:58:14.938+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4233	1
2025-07-16 19:59:15.839+00	127	telegraf	1126982881	stationary	0	0	4	0	66	4234	1
2025-07-16 20:06:23.476+00	127	telegraf	978202981	stationary	0	0	4	-4	66	4239	1
2025-07-16 20:08:14.983+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4240	1
2025-07-16 20:09:15.88+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4241	1
2025-07-16 20:16:23.55+00	127	telegraf	978202981	stationary	0	0	5	-3	65	4245	1
2025-07-16 20:18:15.046+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	4246	1
2025-07-16 20:26:23.62+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4253	1
2025-07-16 20:28:15.102+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	4255	1
2025-07-16 20:29:15.967+00	127	telegraf	1126982881	stationary	0	0	4	-1	64	4256	1
2025-07-16 20:36:23.715+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4257	1
2025-07-16 21:28:15.485+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	4296	1
2025-07-16 21:36:24.03+00	127	telegraf	978202981	stationary	0	0	4	-5	65	4300	1
2025-07-16 21:38:15.512+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4301	1
2025-07-16 21:39:16.297+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	4302	1
2025-07-16 01:18:00.524+00	127	telegraf	1523842139	stop-moving	5	5	3	0	64	1	1
2025-07-16 01:18:02.518+00	127	telegraf	1523842139	start-moving	0	1	3	-1	64	4	1
\.


--
-- Data for Name: _hyper_3_1_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_3_1_chunk ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
2025-06-28 12:22:56.484+00	127	\N	978202981	stationary	0	0	5	-1	65	53	0.9
2025-06-28 12:22:57.635+00	127	\N	1126982881	stationary	0	0	3	-1	66	54	0.9
2025-06-28 12:22:56.653+00	127	\N	1041420528	stationary	0	0	3	-2	64	55	0.9
2025-06-28 12:26:18.511+00	127	\N	978202981	start-moving	0	1	1	20	67	57	0.9
2025-06-28 12:26:18.66+00	127	\N	1126982881	start-moving	0	1	1	-2	68	58	0.9
2025-06-28 12:26:18.696+00	127	\N	1041420528	start-moving	0	1	3	-1	65	59	0.9
2025-06-28 12:28:10.728+00	127	\N	1041420528	stop-moving	11	15	3	-1	64	63	0.9
2025-06-28 12:28:23.666+00	127	\N	1126982881	stop-moving	15	20	5	-1	65	66	0.9
2025-06-28 12:28:25.53+00	127	\N	978202981	stop-moving	17	20	5	0	65	69	0.9
2025-06-28 12:36:54.724+00	127	\N	1126982881	start-moving	0	1	6	-51	82	81	0.9
2025-06-28 12:38:00.728+00	127	\N	1126982881	stop-moving	6	3	2	0	66	84	0.9
2025-06-28 12:38:10.788+00	127	\N	1041420528	stationary	0	0	3	-1	64	88	0.9
2025-06-28 12:38:25.588+00	127	\N	978202981	stationary	0	0	5	0	66	89	0.9
2025-06-28 12:48:00.769+00	127	\N	1126982881	stationary	0	0	2	-1	65	95	0.9
2025-06-28 12:48:10.839+00	127	\N	1041420528	stationary	0	0	4	0	63	97	0.9
2025-06-28 12:48:25.623+00	127	\N	978202981	stationary	0	0	5	-1	67	98	0.9
2025-06-28 12:58:00.801+00	127	\N	1126982881	stationary	0	0	3	-1	65	104	0.9
2025-06-28 12:58:10.888+00	127	\N	1041420528	stationary	0	0	5	-1	64	105	0.9
2025-06-28 12:58:25.665+00	127	\N	978202981	stationary	0	0	6	0	65	106	0.9
2025-06-28 13:08:00.809+00	127	\N	1126982881	stationary	0	0	2	0	65	107	0.9
2025-06-28 13:08:11.012+00	127	\N	1041420528	stationary	0	0	3	-1	65	108	0.9
2025-06-28 13:08:25.676+00	127	\N	978202981	stationary	0	0	5	-1	66	109	0.9
2025-06-28 13:08:25.676+00	127	\N	978202981	stationary	0	0	5	-1	66	109	0.9
2025-06-28 13:18:00.833+00	127	\N	1126982881	stationary	0	0	3	0	64	116	0.9
2025-06-28 13:18:11.108+00	127	\N	1041420528	stationary	0	0	3	-1	64	117	0.9
2025-06-28 13:18:25.71+00	127	\N	978202981	stationary	0	0	5	-1	66	118	0.9
2025-06-28 13:28:00.877+00	127	\N	1126982881	stationary	0	0	3	0	66	124	0.9
2025-06-28 13:28:11.213+00	127	\N	1041420528	stationary	0	0	4	0	64	125	0.9
2025-06-28 13:28:25.737+00	127	\N	978202981	stationary	0	0	4	0	64	126	0.9
2025-06-28 13:35:53.001+00	127	\N	1126982881	start-moving	0	1	26	12	54	127	0.9
2025-06-28 13:35:53.79+00	127	\N	978202981	start-moving	0	1	4	-1	65	128	0.9
2025-06-28 13:36:52.805+00	127	\N	978202981	stop-moving	1	1	5	-1	65	129	0.9
2025-06-28 13:36:53.007+00	127	\N	1126982881	stop-moving	1	1	2	0	65	132	0.9
2025-06-28 13:38:11.356+00	127	\N	1041420528	stationary	0	0	2	-1	64	135	0.9
2025-06-28 13:46:52.868+00	127	\N	978202981	stationary	0	0	5	0	65	140	0.9
2025-06-28 13:46:53.087+00	127	\N	1126982881	stationary	0	0	3	-1	64	141	0.9
2025-06-28 13:48:11.456+00	127	\N	1041420528	stationary	0	0	4	0	64	142	0.9
2025-06-28 13:56:52.931+00	127	\N	978202981	stationary	0	0	5	-1	64	148	0.9
2025-06-28 13:56:53.161+00	127	\N	1126982881	stationary	0	0	4	0	65	149	0.9
2025-06-28 13:58:11.561+00	127	\N	1041420528	stationary	0	0	4	0	64	150	0.9
2025-06-28 14:06:53.047+00	127	\N	978202981	stationary	0	0	4	-2	66	151	0.9
2025-06-28 14:06:53.217+00	127	\N	1126982881	stationary	0	0	3	-1	65	152	0.9
2025-06-28 14:08:11.662+00	127	\N	1041420528	stationary	0	0	4	-2	64	153	0.9
2025-06-28 14:16:05.234+00	127	\N	1126982881	start-moving	0	1	-55	22	-24	159	0.9
2025-06-28 14:16:13.174+00	127	\N	978202981	start-moving	0	1	11	16	85	160	0.9
2025-06-28 14:16:15.72+00	127	\N	1041420528	start-moving	0	1	-10	-6	76	161	0.9
2025-06-28 14:17:30.186+00	127	\N	978202981	stop-moving	6	4	5	0	66	165	0.9
2025-06-28 14:17:37.737+00	127	\N	1041420528	stop-moving	5	3	3	0	64	168	0.9
2025-06-28 14:17:48.246+00	127	\N	1126982881	stop-moving	17	10	3	-2	64	171	0.9
2025-06-28 14:27:30.304+00	127	\N	978202981	stationary	0	0	6	0	65	178	0.9
2025-06-28 14:27:37.781+00	127	\N	1041420528	stationary	0	0	3	1	62	179	0.9
2025-06-28 14:27:48.32+00	127	\N	1126982881	stationary	0	0	3	-1	65	180	0.9
2025-06-28 14:37:30.333+00	127	\N	978202981	stationary	0	0	6	0	65	181	0.9
2025-06-28 14:37:37.815+00	127	\N	1041420528	stationary	0	0	4	1	64	182	0.9
2025-06-28 14:37:48.395+00	127	\N	1126982881	stationary	0	0	3	-2	65	183	0.9
2025-06-28 14:47:30.373+00	127	\N	978202981	stationary	0	0	5	0	65	188	0.9
2025-06-28 14:47:37.909+00	127	\N	1041420528	stationary	0	0	3	0	63	189	0.9
2025-06-28 14:47:48.463+00	127	\N	1126982881	stationary	0	0	3	-1	65	190	0.9
2025-06-28 14:57:30.419+00	127	\N	978202981	stationary	0	0	5	0	66	196	0.9
2025-06-28 14:57:37.957+00	127	\N	1041420528	stationary	0	0	4	0	64	197	0.9
2025-06-28 14:57:48.511+00	127	\N	1126982881	stationary	0	0	2	-1	65	198	0.9
2025-06-28 15:07:30.452+00	127	\N	978202981	stationary	0	0	5	0	64	199	0.9
2025-06-28 15:07:38.053+00	127	\N	1041420528	stationary	0	0	3	0	64	200	0.9
2025-06-28 15:07:48.537+00	127	\N	1126982881	stationary	0	0	3	-1	65	201	0.9
2025-06-28 15:17:30.487+00	127	\N	978202981	stationary	0	0	5	0	65	207	0.9
2025-06-28 15:17:38.17+00	127	\N	1041420528	stationary	0	0	3	0	64	208	0.9
2025-06-28 15:17:48.57+00	127	\N	1126982881	stationary	0	0	3	-2	65	209	0.9
2025-06-28 15:27:30.497+00	127	\N	978202981	stationary	0	0	5	1	64	215	0.9
2025-06-28 15:27:38.249+00	127	\N	1041420528	stationary	0	0	4	0	64	216	0.9
2025-06-28 15:27:48.584+00	127	\N	1126982881	stationary	0	0	3	-2	66	217	0.9
2025-06-28 15:37:30.52+00	127	\N	978202981	stationary	0	0	6	0	66	218	0.9
2025-06-28 15:37:38.373+00	127	\N	1041420528	stationary	0	0	4	0	64	219	0.9
2025-06-28 15:37:48.61+00	127	\N	1126982881	stationary	0	0	4	-2	66	220	0.9
2025-06-28 15:47:30.548+00	127	\N	978202981	stationary	0	0	5	0	65	224	0.9
2025-06-28 15:47:38.42+00	127	\N	1041420528	stationary	0	0	3	-1	65	226	0.9
2025-06-28 15:47:48.632+00	127	\N	1126982881	stationary	0	0	3	-1	66	227	0.9
2025-06-28 15:57:30.604+00	127	\N	978202981	stationary	0	0	5	0	66	233	0.9
2025-06-28 15:57:38.527+00	127	\N	1041420528	stationary	0	0	4	1	64	234	0.9
2025-06-28 15:57:48.691+00	127	\N	1126982881	stationary	0	0	3	-2	66	235	0.9
2025-06-28 16:07:30.65+00	127	\N	978202981	stationary	0	0	5	1	66	236	0.9
2025-06-28 16:07:38.65+00	127	\N	1041420528	stationary	0	0	4	0	65	237	0.9
2025-06-28 16:07:48.763+00	127	\N	1126982881	stationary	0	0	3	-2	66	238	0.9
2025-06-28 16:09:44.781+00	127	\N	1126982881	start-moving	0	1	4	-2	66	239	0.9
2025-06-28 16:10:44.791+00	127	\N	1126982881	stop-moving	1	1	3	-2	67	240	0.9
2025-06-28 16:17:30.706+00	127	\N	978202981	stationary	0	0	5	0	65	246	0.9
2025-06-28 16:17:38.8+00	127	\N	1041420528	stationary	0	0	4	0	63	247	0.9
2025-06-28 16:20:44.839+00	127	\N	1126982881	stationary	0	0	4	-1	65	251	0.9
2025-06-28 16:27:30.886+00	127	\N	978202981	stationary	0	0	5	0	65	255	0.9
2025-06-28 16:27:38.901+00	127	\N	1041420528	stationary	0	0	3	0	63	256	0.9
2025-06-28 16:30:44.891+00	127	\N	1126982881	stationary	0	0	2	-2	66	257	0.9
2025-06-28 16:37:31.046+00	127	\N	978202981	stationary	0	0	5	0	66	258	0.9
2025-06-28 16:37:39.009+00	127	\N	1041420528	stationary	0	0	4	0	64	259	0.9
2025-06-28 16:40:44.921+00	127	\N	1126982881	stationary	0	0	3	-1	65	260	0.9
2025-06-28 16:47:31.178+00	127	\N	978202981	stationary	0	0	5	-1	65	264	0.9
2025-06-28 16:47:39.097+00	127	\N	1041420528	stationary	0	0	3	0	63	265	0.9
2025-06-28 16:50:44.987+00	127	\N	1126982881	stationary	0	0	4	-1	65	267	0.9
2025-06-28 16:57:31.221+00	127	\N	978202981	stationary	0	0	5	0	64	273	0.9
2025-06-28 16:57:39.152+00	127	\N	1041420528	stationary	0	0	3	1	66	274	0.9
2025-06-28 17:00:45.066+00	127	\N	1126982881	stationary	0	0	3	-1	66	275	0.9
2025-06-28 17:07:31.261+00	127	\N	978202981	stationary	0	0	6	0	66	276	0.9
2025-06-28 17:07:39.231+00	127	\N	1041420528	stationary	0	0	4	-1	64	277	0.9
2025-06-28 17:10:45.177+00	127	\N	1126982881	stationary	0	0	3	-2	64	278	0.9
2025-06-28 17:17:31.31+00	127	\N	978202981	stationary	0	0	6	0	64	284	0.9
2025-06-28 17:17:39.328+00	127	\N	1041420528	stationary	0	0	3	1	64	285	0.9
2025-06-28 17:20:13.32+00	127	\N	978202981	start-moving	0	1	19	11	56	287	0.9
2025-06-28 17:20:14.235+00	127	\N	1126982881	start-moving	0	1	3	14	56	288	0.9
2025-06-28 17:20:16.333+00	127	\N	1041420528	start-moving	0	1	14	7	66	289	0.9
2025-06-28 17:21:17.326+00	127	\N	978202981	stop-moving	5	8	3	-1	66	290	0.9
2025-06-28 17:21:17.35+00	127	\N	1041420528	stop-moving	2	2	3	-2	65	293	0.9
2025-06-28 17:22:06.248+00	127	\N	1126982881	stop-moving	3	5	4	-1	67	298	0.9
2025-06-28 17:24:03.365+00	127	\N	1041420528	start-moving	0	1	3	-2	63	304	0.9
2025-06-28 17:25:03.368+00	127	\N	1041420528	stop-moving	1	1	3	-2	64	305	0.9
2025-06-28 17:31:17.361+00	127	\N	978202981	stationary	0	0	5	0	65	308	0.9
2025-06-28 17:32:06.286+00	127	\N	1126982881	stationary	0	0	4	-2	66	309	0.9
2025-06-28 17:35:03.404+00	127	\N	1041420528	stationary	0	0	3	-2	65	310	0.9
2025-06-28 17:41:17.419+00	127	\N	978202981	stationary	0	0	4	-1	65	313	0.9
2025-06-28 17:42:06.348+00	127	\N	1126982881	stationary	0	0	3	-1	66	314	0.9
2025-06-28 17:44:45.441+00	127	\N	978202981	start-moving	0	1	4	-2	65	315	0.9
2025-06-28 17:45:03.477+00	127	\N	1041420528	stationary	0	0	4	-1	65	316	0.9
2025-06-28 17:45:58.447+00	127	\N	978202981	stop-moving	2	2	4	-1	66	317	0.9
2025-06-28 17:52:06.383+00	127	\N	1126982881	stationary	0	0	3	-1	65	325	0.9
2025-06-28 17:55:03.544+00	127	\N	1041420528	stationary	0	0	3	-1	64	328	0.9
2025-06-28 17:55:58.49+00	127	\N	978202981	stationary	0	0	4	0	65	329	0.9
2025-06-28 18:02:06.435+00	127	\N	1126982881	stationary	0	0	3	-1	65	330	0.9
2025-06-28 18:03:56.448+00	127	\N	1126982881	start-moving	0	1	5	-13	18	331	0.9
2025-06-28 18:04:56.454+00	127	\N	1126982881	stop-moving	1	1	3	-1	66	332	0.9
2025-06-28 18:05:03.65+00	127	\N	1041420528	stationary	0	0	4	-2	65	335	0.9
2025-06-28 18:05:58.541+00	127	\N	978202981	stationary	0	0	4	-1	66	336	0.9
2025-06-28 18:14:56.493+00	127	\N	1126982881	stationary	0	0	3	-2	66	339	0.9
2025-06-28 18:15:03.705+00	127	\N	1041420528	stationary	0	0	3	-2	65	340	0.9
2025-06-28 18:15:58.591+00	127	\N	978202981	stationary	0	0	4	-1	65	341	0.9
2025-06-28 18:23:15.714+00	127	\N	978202981	start-moving	0	1	4	0	65	348	0.9
2025-06-28 18:24:14.736+00	127	\N	978202981	stop-moving	1	1	4	0	66	351	0.9
2025-06-28 18:24:56.543+00	127	\N	1126982881	stationary	0	0	3	-2	66	354	0.9
2025-06-28 18:25:03.762+00	127	\N	1041420528	stationary	0	0	4	-2	64	355	0.9
2025-06-28 18:34:14.871+00	127	\N	978202981	stationary	0	0	4	-1	65	356	0.9
2025-06-28 18:34:56.592+00	127	\N	1126982881	stationary	0	0	4	-2	66	357	0.9
2025-06-28 18:35:03.811+00	127	\N	1041420528	stationary	0	0	3	-1	64	358	0.9
2025-06-28 18:44:15+00	127	\N	978202981	stationary	0	0	4	-1	65	361	0.9
2025-06-28 18:44:56.728+00	127	\N	1126982881	stationary	0	0	4	-1	65	362	0.9
2025-06-28 18:45:03.868+00	127	\N	1041420528	stationary	0	0	2	-2	64	363	0.9
2025-06-28 18:54:15.037+00	127	\N	978202981	stationary	0	0	4	-1	66	369	0.9
2025-06-28 18:54:56.753+00	127	\N	1126982881	stationary	0	0	3	-1	65	372	0.9
2025-06-28 18:55:03.903+00	127	\N	1041420528	stationary	0	0	3	-2	64	373	0.9
2025-06-28 19:04:15.053+00	127	\N	978202981	stationary	0	0	4	-1	65	374	0.9
2025-06-28 19:04:56.788+00	127	\N	1126982881	stationary	0	0	3	-2	66	375	0.9
2025-06-28 19:05:04.045+00	127	\N	1041420528	stationary	0	0	3	-2	64	376	0.9
2025-06-28 19:14:15.085+00	127	\N	978202981	stationary	0	0	4	0	64	379	0.9
2025-06-28 19:14:56.862+00	127	\N	1126982881	stationary	0	0	4	-1	65	380	0.9
2025-06-28 19:15:04.16+00	127	\N	1041420528	stationary	0	0	4	-2	65	381	0.9
2025-06-28 19:24:15.115+00	127	\N	978202981	stationary	0	0	5	-1	66	388	0.9
2025-06-28 19:24:56.914+00	127	\N	1126982881	stationary	0	0	4	-1	66	389	0.9
2025-06-28 19:25:04.268+00	127	\N	1041420528	stationary	0	0	3	-3	65	390	0.9
2025-06-28 19:34:15.157+00	127	\N	978202981	stationary	0	0	4	-1	65	394	0.9
2025-06-28 19:34:57.001+00	127	\N	1126982881	stationary	0	0	3	-2	65	395	0.9
2025-06-28 19:35:04.363+00	127	\N	1041420528	stationary	0	0	3	-1	64	396	0.9
2025-06-28 19:44:15.214+00	127	\N	978202981	stationary	0	0	5	-1	66	399	0.9
2025-06-28 19:44:57.084+00	127	\N	1126982881	stationary	0	0	3	-1	65	400	0.9
2025-06-28 19:45:04.521+00	127	\N	1041420528	stationary	0	0	3	-1	64	401	0.9
2025-06-28 19:54:15.271+00	127	\N	978202981	stationary	0	0	4	0	66	406	0.9
2025-06-28 19:54:57.143+00	127	\N	1126982881	stationary	0	0	4	-2	65	407	0.9
2025-06-28 19:55:04.648+00	127	\N	1041420528	stationary	0	0	2	-2	63	408	0.9
2025-06-28 20:04:15.318+00	127	\N	978202981	stationary	0	0	4	-1	65	411	0.9
2025-06-28 20:04:57.193+00	127	\N	1126982881	stationary	0	0	3	-2	66	413	0.9
2025-06-28 20:05:04.749+00	127	\N	1041420528	stationary	0	0	4	-1	64	414	0.9
2025-06-30 14:49:37.071+00	127	\N	978202981	stationary	0	0	5	-1	65	760	0.9
2025-06-30 14:50:52.817+00	127	\N	1041420528	stationary	0	0	4	-3	64	762	0.9
2025-06-30 14:54:10.372+00	127	\N	1126982881	stationary	0	0	1	-1	66	764	0.9
2025-06-30 14:59:37.105+00	127	\N	978202981	stationary	0	0	5	-2	65	770	0.9
2025-06-30 15:00:52.955+00	127	\N	1041420528	stationary	0	0	3	-2	65	771	0.9
2025-06-30 15:04:10.429+00	127	\N	1126982881	stationary	0	0	3	0	66	774	0.9
2025-06-30 15:09:37.155+00	127	\N	978202981	stationary	0	0	5	-1	65	777	0.9
2025-06-30 15:10:53.008+00	127	\N	1041420528	stationary	0	0	4	-2	65	778	0.9
2025-06-30 15:14:10.505+00	127	\N	1126982881	stationary	0	0	2	-2	65	779	0.9
2025-06-30 15:19:37.227+00	127	\N	978202981	stationary	0	0	6	-2	65	781	0.9
2025-06-30 15:20:53.052+00	127	\N	1041420528	stationary	0	0	4	-2	64	783	0.9
2025-06-30 15:24:10.583+00	127	\N	1126982881	stationary	0	0	3	-1	66	785	0.9
2025-06-30 15:29:37.265+00	127	\N	978202981	stationary	0	0	6	-1	66	791	0.9
2025-06-30 15:30:53.096+00	127	\N	1041420528	stationary	0	0	3	-2	64	792	0.9
2025-06-30 15:34:10.684+00	127	\N	1126982881	stationary	0	0	2	-1	66	794	0.9
2025-06-30 15:39:37.297+00	127	\N	978202981	stationary	0	0	6	-1	66	796	0.9
2025-06-30 15:40:53.139+00	127	\N	1041420528	stationary	0	0	4	-3	64	797	0.9
2025-06-30 15:44:10.744+00	127	\N	1126982881	stationary	0	0	3	-1	66	798	0.9
2025-06-30 15:49:37.353+00	127	\N	978202981	stationary	0	0	6	-1	66	800	0.9
2025-06-30 15:50:53.246+00	127	\N	1041420528	stationary	0	0	4	-2	64	801	0.9
2025-06-30 15:54:10.779+00	127	\N	1126982881	stationary	0	0	2	-1	65	806	0.9
2025-06-30 15:59:37.406+00	127	\N	978202981	stationary	0	0	5	-1	65	811	0.9
2025-06-30 16:00:53.285+00	127	\N	1041420528	stationary	0	0	4	-2	64	813	0.9
2025-06-30 16:01:54.429+00	127	\N	978202981	start-moving	0	1	2	-24	8	814	0.9
2025-06-30 16:03:58.824+00	127	\N	1126982881	start-moving	0	1	2	-1	63	818	0.9
2025-06-30 16:04:04.456+00	127	\N	978202981	stop-moving	51	30	6	-1	65	819	0.9
2025-06-30 16:05:03.826+00	127	\N	1126982881	stop-moving	4	4	4	-1	66	822	0.9
2025-06-30 16:10:53.325+00	127	\N	1041420528	stationary	0	0	3	-2	64	827	0.9
2025-06-30 16:14:04.504+00	127	\N	978202981	stationary	0	0	6	0	65	828	0.9
2025-06-30 16:15:03.869+00	127	\N	1126982881	stationary	0	0	3	0	65	830	0.9
2025-06-30 16:20:53.373+00	127	\N	1041420528	stationary	0	0	4	-2	64	831	0.9
2025-06-30 16:24:04.58+00	127	\N	978202981	stationary	0	0	6	-1	65	836	0.9
2025-06-30 16:25:03.927+00	127	\N	1126982881	stationary	0	0	4	0	65	837	0.9
2025-06-30 16:30:53.419+00	127	\N	1041420528	stationary	0	0	3	-2	64	842	0.9
2025-06-30 16:34:04.634+00	127	\N	978202981	stationary	0	0	6	-2	66	845	0.9
2025-06-30 16:35:03.967+00	127	\N	1126982881	stationary	0	0	3	0	66	846	0.9
2025-06-30 16:40:53.472+00	127	\N	1041420528	stationary	0	0	4	-2	65	847	0.9
2025-06-30 16:44:04.671+00	127	\N	978202981	stationary	0	0	5	-1	64	848	0.9
2025-06-30 16:45:04.007+00	127	\N	1126982881	stationary	0	0	3	0	65	849	0.9
2025-06-30 16:50:53.558+00	127	\N	1041420528	stationary	0	0	3	-2	64	850	0.9
2025-06-30 16:54:04.707+00	127	\N	978202981	stationary	0	0	6	-1	66	853	0.9
2025-06-30 16:55:04.047+00	127	\N	1126982881	stationary	0	0	3	-1	65	856	0.9
2025-06-30 17:00:53.702+00	127	\N	1041420528	stationary	0	0	4	-4	66	861	0.9
2025-06-30 17:04:04.751+00	127	\N	978202981	stationary	0	0	6	-2	66	863	0.9
2025-06-30 17:05:04.105+00	127	\N	1126982881	stationary	0	0	4	0	65	865	0.9
2025-06-30 17:10:53.815+00	127	\N	1041420528	stationary	0	0	4	-3	64	866	0.9
2025-06-30 17:14:04.79+00	127	\N	978202981	stationary	0	0	6	-1	66	867	0.9
2025-06-30 17:15:04.145+00	127	\N	1126982881	stationary	0	0	4	0	65	868	0.9
2025-06-30 17:20:53.916+00	127	\N	1041420528	stationary	0	0	4	-2	64	869	0.9
2025-06-30 17:24:04.823+00	127	\N	978202981	stationary	0	0	5	-1	64	873	0.9
2025-06-30 17:25:04.19+00	127	\N	1126982881	stationary	0	0	2	-1	65	874	0.9
2025-06-30 17:30:53.954+00	127	\N	1041420528	stationary	0	0	4	-2	65	880	0.9
2025-06-30 17:34:04.859+00	127	\N	978202981	stationary	0	0	7	-2	65	881	0.9
2025-06-30 17:35:04.238+00	127	\N	1126982881	stationary	0	0	3	0	66	882	0.9
2025-06-30 17:40:53.998+00	127	\N	1041420528	stationary	0	0	3	-3	64	885	0.9
2025-06-30 17:44:04.893+00	127	\N	978202981	stationary	0	0	6	-1	65	887	0.9
2025-06-30 17:45:04.316+00	127	\N	1126982881	stationary	0	0	3	-1	66	888	0.9
2025-06-30 17:50:54.08+00	127	\N	1041420528	stationary	0	0	4	-2	64	892	0.9
2025-06-30 17:54:04.94+00	127	\N	978202981	stationary	0	0	5	-1	65	894	0.9
2025-06-30 17:55:04.396+00	127	\N	1126982881	stationary	0	0	3	0	64	896	0.9
2025-06-30 18:00:54.129+00	127	\N	1041420528	stationary	0	0	4	-3	65	903	0.9
2025-06-30 18:04:04.98+00	127	\N	978202981	stationary	0	0	6	-2	65	906	0.9
2025-06-30 18:05:04.464+00	127	\N	1126982881	stationary	0	0	3	-1	65	907	0.9
2025-06-30 18:10:54.177+00	127	\N	1041420528	stationary	0	0	4	-2	63	910	0.9
2025-06-30 18:14:05.029+00	127	\N	978202981	stationary	0	0	5	-1	65	911	0.9
2025-06-30 18:15:04.628+00	127	\N	1126982881	stationary	0	0	3	-1	65	912	0.9
2025-06-30 18:20:54.236+00	127	\N	1041420528	stationary	0	0	3	-3	65	916	0.9
2025-06-30 18:24:05.065+00	127	\N	978202981	stationary	0	0	5	0	64	917	0.9
2025-06-30 18:25:04.674+00	127	\N	1126982881	stationary	0	0	3	0	65	918	0.9
2025-06-30 18:30:54.291+00	127	\N	1041420528	stationary	0	0	3	-3	65	926	0.9
2025-06-30 18:34:05.125+00	127	\N	978202981	stationary	0	0	5	-1	64	927	0.9
2025-06-30 18:35:04.719+00	127	\N	1126982881	stationary	0	0	4	-1	65	928	0.9
2025-06-30 18:40:54.352+00	127	\N	1041420528	stationary	0	0	4	-2	65	934	0.9
2025-06-30 19:00:54.66+00	127	\N	1041420528	stationary	0	0	4	-2	64	950	0.9
2025-06-30 19:04:05.37+00	127	\N	978202981	stationary	0	0	6	-1	66	954	0.9
2025-06-30 19:05:04.843+00	127	\N	1126982881	stationary	0	0	3	-1	66	955	0.9
2025-06-30 19:10:54.744+00	127	\N	1041420528	stationary	0	0	4	-2	64	959	0.9
2025-06-30 19:14:05.426+00	127	\N	978202981	stationary	0	0	4	0	63	961	0.9
2025-06-30 19:15:04.898+00	127	\N	1126982881	stationary	0	0	3	-1	66	962	0.9
2025-06-30 19:20:54.803+00	127	\N	1041420528	stationary	0	0	4	-3	65	965	0.9
2025-06-30 19:24:05.474+00	127	\N	978202981	stationary	0	0	5	-1	65	967	0.9
2025-06-30 19:25:04.952+00	127	\N	1126982881	stationary	0	0	2	-1	66	968	0.9
2025-06-30 19:30:54.847+00	127	\N	1041420528	stationary	0	0	4	-2	63	977	0.9
2025-06-30 19:32:31.99+00	127	\N	1126982881	start-moving	0	1	43	-9	39	982	0.9
2025-06-30 19:33:55+00	127	\N	1126982881	stop-moving	20	23	3	-2	66	985	0.9
2025-06-30 19:34:05.51+00	127	\N	978202981	stationary	0	0	5	-2	66	988	0.9
2025-06-30 19:34:50.005+00	127	\N	1126982881	start-moving	0	1	5	-1	52	990	0.9
2025-06-30 19:35:02.518+00	127	\N	978202981	start-moving	0	1	6	-1	66	991	0.9
2025-06-30 19:36:01.526+00	127	\N	978202981	stop-moving	1	1	5	-1	65	993	0.9
2025-06-30 19:36:09.021+00	127	\N	1126982881	stop-moving	7	7	1	-2	66	997	0.9
2025-06-30 19:40:54.937+00	127	\N	1041420528	stationary	0	0	5	-2	65	1004	0.9
2025-06-30 19:46:01.569+00	127	\N	978202981	stationary	0	0	7	-1	64	1010	0.9
2025-06-30 19:46:09.062+00	127	\N	1126982881	stationary	0	0	1	-2	66	1011	0.9
2025-06-30 19:50:41.091+00	127	\N	1126982881	start-moving	0	1	-23	-22	117	1020	0.9
2025-06-30 19:50:53.604+00	127	\N	978202981	start-moving	0	1	-1	3	80	1022	0.9
2025-06-30 19:50:54.979+00	127	\N	1041420528	stationary	0	0	5	-2	64	1023	0.9
2025-06-30 19:51:46.098+00	127	\N	1126982881	stop-moving	5	9	4	-1	66	1024	0.9
2025-06-30 19:52:05.611+00	127	\N	978202981	stop-moving	11	17	5	-1	66	1027	0.9
2025-06-30 20:00:55.025+00	127	\N	1041420528	stationary	0	0	3	-2	65	1044	0.9
2025-06-30 20:01:46.158+00	127	\N	1126982881	stationary	0	0	4	0	65	1045	0.9
2025-06-30 20:02:05.662+00	127	\N	978202981	stationary	0	0	4	-1	65	1046	0.9
2025-06-30 20:21:46.339+00	127	\N	1126982881	stationary	0	0	3	-1	66	1065	0.9
2025-06-30 20:22:05.757+00	127	\N	978202981	stationary	0	0	6	-1	65	1066	0.9
2025-06-30 20:30:55.158+00	127	\N	1041420528	stationary	0	0	2	-2	65	1075	0.9
2025-06-30 20:31:46.414+00	127	\N	1126982881	stationary	0	0	4	0	65	1077	0.9
2025-06-30 20:32:05.823+00	127	\N	978202981	stationary	0	0	4	-1	65	1078	0.9
2025-06-30 20:40:55.244+00	127	\N	1041420528	stationary	0	0	4	-2	65	1085	0.9
2025-06-30 20:41:46.443+00	127	\N	1126982881	stationary	0	0	4	0	66	1086	0.9
2025-06-30 20:42:05.863+00	127	\N	978202981	stationary	0	0	5	-2	66	1087	0.9
2025-06-30 20:45:59.881+00	127	\N	978202981	start-moving	0	1	5	0	66	1089	0.9
2025-06-30 20:46:58.888+00	127	\N	978202981	stop-moving	1	1	5	-2	66	1091	0.9
2025-06-30 20:50:55.357+00	127	\N	1041420528	stationary	0	0	3	-3	64	1095	0.9
2025-06-30 20:51:46.486+00	127	\N	1126982881	stationary	0	0	4	0	65	1097	0.9
2025-06-30 20:56:58.925+00	127	\N	978202981	stationary	0	0	5	-1	66	1105	0.9
2025-06-30 21:00:55.435+00	127	\N	1041420528	stationary	0	0	3	-2	64	1109	0.9
2025-06-30 21:01:46.529+00	127	\N	1126982881	stationary	0	0	3	0	66	1110	0.9
2025-06-30 21:06:59.001+00	127	\N	978202981	stationary	0	0	5	-1	66	1118	0.9
2025-06-30 21:10:55.492+00	127	\N	1041420528	stationary	0	0	4	-2	64	1120	0.9
2025-06-30 21:11:46.574+00	127	\N	1126982881	stationary	0	0	3	0	65	1121	0.9
2025-06-30 21:16:59.074+00	127	\N	978202981	stationary	0	0	5	-2	65	1123	0.9
2025-06-30 21:20:55.534+00	127	\N	1041420528	stationary	0	0	3	-2	64	1125	0.9
2025-06-30 21:21:46.61+00	127	\N	1126982881	stationary	0	0	5	-1	65	1126	0.9
2025-06-30 21:26:59.129+00	127	\N	978202981	stationary	0	0	5	-1	65	1128	0.9
2025-06-30 21:30:55.57+00	127	\N	1041420528	stationary	0	0	4	-2	64	1130	0.9
2025-06-30 21:31:46.643+00	127	\N	1126982881	stationary	0	0	4	0	65	1131	0.9
2025-06-30 21:36:59.21+00	127	\N	978202981	stationary	0	0	5	-2	65	1137	0.9
2025-06-30 21:40:55.604+00	127	\N	1041420528	stationary	0	0	3	-3	64	1139	0.9
2025-06-30 21:41:46.681+00	127	\N	1126982881	stationary	0	0	4	0	65	1140	0.9
2025-06-30 21:46:59.259+00	127	\N	978202981	stationary	0	0	5	-1	66	1143	0.9
2025-06-30 21:50:55.654+00	127	\N	1041420528	stationary	0	0	4	-2	64	1144	0.9
2025-06-30 21:51:46.744+00	127	\N	1126982881	stationary	0	0	4	-1	66	1147	0.9
2025-06-30 21:56:59.297+00	127	\N	978202981	stationary	0	0	4	-1	65	1148	0.9
2025-06-30 22:00:55.727+00	127	\N	1041420528	stationary	0	0	2	-2	65	1150	0.9
2025-06-30 22:01:46.785+00	127	\N	1126982881	stationary	0	0	4	0	66	1151	0.9
2025-06-30 22:06:59.332+00	127	\N	978202981	stationary	0	0	5	-2	65	1157	0.9
2025-06-30 22:10:55.769+00	127	\N	1041420528	stationary	0	0	4	-3	63	1159	0.9
2025-06-30 22:11:46.824+00	127	\N	1126982881	stationary	0	0	4	-1	65	1160	0.9
2025-06-30 22:16:59.38+00	127	\N	978202981	stationary	0	0	4	-1	65	1162	0.9
2025-07-01 05:31:16.099+00	127	\N	1041420528	stationary	0	0	3	-2	64	1468	0.9
2025-07-01 05:31:48.988+00	127	\N	1126982881	stationary	0	0	3	-1	65	1469	0.9
2025-07-01 05:37:01.812+00	127	\N	978202981	stationary	0	0	6	-1	65	1471	0.9
2025-07-01 05:45:47.05+00	127	\N	1126982881	stop-moving	16	24	3	-1	65	1491	0.9
2025-07-01 05:51:16.218+00	127	\N	1041420528	stationary	0	0	3	-2	65	1502	0.9
2025-07-01 05:55:05.897+00	127	\N	978202981	stationary	0	0	6	0	66	1507	0.9
2025-07-01 05:55:47.101+00	127	\N	1126982881	stationary	0	0	3	-1	65	1509	0.9
2025-07-01 06:01:16.249+00	127	\N	1041420528	stationary	0	0	3	-3	65	1515	0.9
2025-07-01 06:05:05.949+00	127	\N	978202981	stationary	0	0	6	-2	65	1516	0.9
2025-07-01 06:05:47.171+00	127	\N	1126982881	stationary	0	0	4	-1	65	1517	0.9
2025-07-01 06:11:16.287+00	127	\N	1041420528	stationary	0	0	3	-3	65	1520	0.9
2025-07-01 06:15:05.997+00	127	\N	978202981	stationary	0	0	6	-1	65	1523	0.9
2025-07-01 06:15:47.202+00	127	\N	1126982881	stationary	0	0	3	-1	66	1524	0.9
2025-07-01 06:21:16.322+00	127	\N	1041420528	stationary	0	0	3	-3	63	1530	0.9
2025-07-01 06:25:06.063+00	127	\N	978202981	stationary	0	0	6	-2	65	1531	0.9
2025-07-01 06:25:47.248+00	127	\N	1126982881	stationary	0	0	3	-1	67	1532	0.9
2025-07-01 06:31:16.372+00	127	\N	1041420528	stationary	0	0	3	-2	63	1535	0.9
2025-07-01 06:35:06.117+00	127	\N	978202981	stationary	0	0	5	-2	66	1536	0.9
2025-07-01 06:35:47.3+00	127	\N	1126982881	stationary	0	0	4	-1	65	1537	0.9
2025-07-01 06:41:16.401+00	127	\N	1041420528	stationary	0	0	3	-2	63	1539	0.9
2025-07-01 06:45:06.156+00	127	\N	978202981	stationary	0	0	7	-1	66	1542	0.9
2025-07-01 06:45:47.359+00	127	\N	1126982881	stationary	0	0	4	-2	65	1543	0.9
2025-07-01 06:51:16.449+00	127	\N	1041420528	stationary	0	0	4	-3	64	1548	0.9
2025-07-01 06:55:06.199+00	127	\N	978202981	stationary	0	0	5	-1	66	1550	0.9
2025-07-01 06:55:47.447+00	127	\N	1126982881	stationary	0	0	3	-1	65	1551	0.9
2025-07-01 07:01:16.546+00	127	\N	1041420528	stationary	0	0	3	-1	64	1554	0.9
2025-07-01 07:05:06.259+00	127	\N	978202981	stationary	0	0	6	-2	65	1556	0.9
2025-07-01 07:05:47.576+00	127	\N	1126982881	stationary	0	0	4	-1	65	1558	0.9
2025-07-01 07:11:16.636+00	127	\N	1041420528	stationary	0	0	4	-2	64	1559	0.9
2025-07-01 07:15:06.328+00	127	\N	978202981	stationary	0	0	6	-1	65	1563	0.9
2025-07-01 07:15:47.681+00	127	\N	1126982881	stationary	0	0	4	-2	66	1564	0.9
2025-07-01 07:21:16.716+00	127	\N	1041420528	stationary	0	0	4	-2	64	1569	0.9
2025-07-01 07:25:06.402+00	127	\N	978202981	stationary	0	0	6	-1	66	1570	0.9
2025-07-01 07:25:47.717+00	127	\N	1126982881	stationary	0	0	4	-1	65	1571	0.9
2025-07-01 07:31:16.75+00	127	\N	1041420528	stationary	0	0	3	-3	64	1574	0.9
2025-07-01 07:35:06.505+00	127	\N	978202981	stationary	0	0	6	0	65	1576	0.9
2025-07-01 07:35:47.757+00	127	\N	1126982881	stationary	0	0	4	-1	65	1577	0.9
2025-07-01 07:41:16.803+00	127	\N	1041420528	stationary	0	0	3	-3	63	1579	0.9
2025-07-01 07:45:06.562+00	127	\N	978202981	stationary	0	0	6	-2	66	1581	0.9
2025-07-01 07:45:47.791+00	127	\N	1126982881	stationary	0	0	3	-1	67	1583	0.9
2025-07-01 07:51:16.832+00	127	\N	1041420528	stationary	0	0	3	-3	64	1588	0.9
2025-07-01 08:15:06.679+00	127	\N	978202981	stationary	0	0	6	-2	65	1599	0.9
2025-07-01 08:15:47.932+00	127	\N	1126982881	stationary	0	0	3	-1	66	1601	0.9
2025-07-01 08:21:16.977+00	127	\N	1041420528	stationary	0	0	4	-2	63	1608	0.9
2025-07-01 08:25:06.716+00	127	\N	978202981	stationary	0	0	5	-2	66	1610	0.9
2025-07-01 08:25:48.008+00	127	\N	1126982881	stationary	0	0	4	-2	65	1611	0.9
2025-07-01 08:31:17.015+00	127	\N	1041420528	stationary	0	0	3	-2	65	1613	0.9
2025-07-01 08:35:06.765+00	127	\N	978202981	stationary	0	0	6	-1	65	1615	0.9
2025-07-01 08:35:48.047+00	127	\N	1126982881	stationary	0	0	4	-1	66	1616	0.9
2025-07-01 08:41:17.059+00	127	\N	1041420528	stationary	0	0	3	-1	65	1619	0.9
2025-07-01 08:45:06.802+00	127	\N	978202981	stationary	0	0	6	-2	66	1621	0.9
2025-07-01 08:45:48.098+00	127	\N	1126982881	stationary	0	0	3	-1	65	1622	0.9
2025-07-01 08:51:17.097+00	127	\N	1041420528	stationary	0	0	3	-2	64	1627	0.9
2025-07-01 08:55:06.879+00	127	\N	978202981	stationary	0	0	5	-1	65	1631	0.9
2025-07-01 08:55:48.155+00	127	\N	1126982881	stationary	0	0	4	-2	65	1632	0.9
2025-07-01 09:01:17.134+00	127	\N	1041420528	stationary	0	0	3	-2	65	1635	0.9
2025-07-01 09:05:06.927+00	127	\N	978202981	stationary	0	0	5	-1	66	1639	0.9
2025-07-01 09:05:48.226+00	127	\N	1126982881	stationary	0	0	3	-1	64	1640	0.9
2025-07-01 09:11:17.174+00	127	\N	1041420528	stationary	0	0	3	-2	64	1641	0.9
2025-07-01 09:15:06.956+00	127	\N	978202981	stationary	0	0	5	-2	65	1643	0.9
2025-07-01 09:15:48.286+00	127	\N	1126982881	stationary	0	0	4	-1	65	1644	0.9
2025-07-01 09:21:17.209+00	127	\N	1041420528	stationary	0	0	4	-3	64	1648	0.9
2025-07-01 09:25:06.997+00	127	\N	978202981	stationary	0	0	5	-1	64	1651	0.9
2025-07-01 09:25:48.389+00	127	\N	1126982881	stationary	0	0	4	-1	65	1652	0.9
2025-07-01 09:31:17.29+00	127	\N	1041420528	stationary	0	0	4	-3	64	1656	0.9
2025-07-01 09:35:07.075+00	127	\N	978202981	stationary	0	0	6	-1	66	1658	0.9
2025-07-01 09:35:48.434+00	127	\N	1126982881	stationary	0	0	4	-1	66	1659	0.9
2025-07-01 09:41:17.42+00	127	\N	1041420528	stationary	0	0	4	-3	64	1661	0.9
2025-07-01 09:45:07.14+00	127	\N	978202981	stationary	0	0	7	-1	66	1662	0.9
2025-07-01 09:45:48.481+00	127	\N	1126982881	stationary	0	0	3	-1	66	1663	0.9
2025-07-01 09:51:17.474+00	127	\N	1041420528	stationary	0	0	4	-3	63	1667	0.9
2025-07-01 09:55:07.211+00	127	\N	978202981	stationary	0	0	6	-2	65	1671	0.9
2025-07-01 09:55:48.534+00	127	\N	1126982881	stationary	0	0	4	-1	65	1673	0.9
2025-07-01 10:01:17.534+00	127	\N	1041420528	stationary	0	0	3	-3	64	1678	0.9
2025-07-01 10:05:07.321+00	127	\N	978202981	stationary	0	0	5	-1	66	1680	0.9
2025-07-01 10:05:48.581+00	127	\N	1126982881	stationary	0	0	4	-1	66	1682	0.9
2025-07-01 10:11:17.577+00	127	\N	1041420528	stationary	0	0	2	-3	64	1684	0.9
2025-07-01 10:15:07.42+00	127	\N	978202981	stationary	0	0	6	-1	65	1687	0.9
2025-07-01 10:15:48.64+00	127	\N	1126982881	stationary	0	0	4	-2	65	1688	0.9
2025-07-01 10:21:17.615+00	127	\N	1041420528	stationary	0	0	3	-3	64	1692	0.9
2025-07-01 10:25:07.461+00	127	\N	978202981	stationary	0	0	5	-1	65	1696	0.9
2025-07-01 10:25:48.673+00	127	\N	1126982881	stationary	0	0	4	-1	65	1697	0.9
2025-07-01 10:31:17.646+00	127	\N	1041420528	stationary	0	0	4	-3	63	1699	0.9
2025-07-01 10:35:07.494+00	127	\N	978202981	stationary	0	0	5	-2	66	1701	0.9
2025-07-01 10:35:48.729+00	127	\N	1126982881	stationary	0	0	3	-1	65	1702	0.9
2025-07-01 10:41:17.693+00	127	\N	1041420528	stationary	0	0	3	-3	64	1706	0.9
2025-07-01 10:45:07.541+00	127	\N	978202981	stationary	0	0	6	-2	64	1707	0.9
2025-07-01 10:45:48.809+00	127	\N	1126982881	stationary	0	0	4	-1	66	1708	0.9
2025-07-01 11:15:07.656+00	127	\N	978202981	stationary	0	0	5	-1	66	1732	0.9
2025-07-01 11:15:48.99+00	127	\N	1126982881	stationary	0	0	4	-1	67	1733	0.9
2025-07-01 11:21:17.872+00	127	\N	1041420528	stationary	0	0	4	-2	64	1737	0.9
2025-07-01 11:25:07.724+00	127	\N	978202981	stationary	0	0	5	-1	66	1741	0.9
2025-07-01 11:25:49.073+00	127	\N	1126982881	stationary	0	0	4	-1	66	1745	0.9
2025-07-01 11:31:17.912+00	127	\N	1041420528	stationary	0	0	3	-2	64	1747	0.9
2025-07-01 11:35:07.761+00	127	\N	978202981	stationary	0	0	5	-2	65	1751	0.9
2025-07-01 11:35:49.162+00	127	\N	1126982881	stationary	0	0	4	-1	65	1752	0.9
2025-07-01 11:41:17.943+00	127	\N	1041420528	stationary	0	0	3	-3	66	1757	0.9
2025-07-01 11:45:07.801+00	127	\N	978202981	stationary	0	0	6	-1	65	1761	0.9
2025-07-01 11:45:49.245+00	127	\N	1126982881	stationary	0	0	5	0	65	1762	0.9
2025-07-01 11:51:17.986+00	127	\N	1041420528	stationary	0	0	4	-2	64	1765	0.9
2025-07-01 11:55:07.852+00	127	\N	978202981	stationary	0	0	6	-1	65	1769	0.9
2025-07-01 11:55:49.305+00	127	\N	1126982881	stationary	0	0	5	-1	65	1770	0.9
2025-07-01 12:01:18.027+00	127	\N	1041420528	stationary	0	0	4	-2	63	1775	0.9
2025-07-01 12:05:07.943+00	127	\N	978202981	stationary	0	0	6	0	66	1778	0.9
2025-07-01 12:05:49.353+00	127	\N	1126982881	stationary	0	0	3	-2	65	1780	0.9
2025-07-01 12:11:18.086+00	127	\N	1041420528	stationary	0	0	3	-3	63	1785	0.9
2025-07-01 12:15:08.004+00	127	\N	978202981	stationary	0	0	5	-1	66	1787	0.9
2025-07-01 12:15:49.408+00	127	\N	1126982881	stationary	0	0	3	-2	65	1788	0.9
2025-07-01 12:21:18.191+00	127	\N	1041420528	stationary	0	0	4	-3	64	1790	0.9
2025-07-01 12:25:08.079+00	127	\N	978202981	stationary	0	0	6	-1	66	1794	0.9
2025-07-01 12:25:49.454+00	127	\N	1126982881	stationary	0	0	4	-1	66	1796	0.9
2025-07-01 12:31:18.282+00	127	\N	1041420528	stationary	0	0	4	-2	64	1801	0.9
2025-07-01 12:35:08.152+00	127	\N	978202981	stationary	0	0	6	0	65	1803	0.9
2025-07-01 12:35:49.507+00	127	\N	1126982881	stationary	0	0	4	-1	66	1804	0.9
2025-07-01 12:41:18.347+00	127	\N	1041420528	stationary	0	0	4	-2	64	1807	0.9
2025-07-01 12:45:08.194+00	127	\N	978202981	stationary	0	0	5	-2	64	1808	0.9
2025-07-01 12:45:49.545+00	127	\N	1126982881	stationary	0	0	5	-1	66	1809	0.9
2025-07-01 12:51:18.388+00	127	\N	1041420528	stationary	0	0	4	-2	64	1811	0.9
2025-07-01 12:55:08.235+00	127	\N	978202981	stationary	0	0	6	-1	66	1814	0.9
2025-07-01 12:55:49.6+00	127	\N	1126982881	stationary	0	0	4	-1	66	1815	0.9
2025-07-01 13:01:18.431+00	127	\N	1041420528	stationary	0	0	3	-2	64	1820	0.9
2025-07-01 13:05:08.283+00	127	\N	978202981	stationary	0	0	6	-2	65	1822	0.9
2025-07-01 13:05:49.651+00	127	\N	1126982881	stationary	0	0	4	-3	65	1823	0.9
2025-07-01 13:11:18.466+00	127	\N	1041420528	stationary	0	0	4	-2	64	1828	0.9
2025-07-01 13:15:08.325+00	127	\N	978202981	stationary	0	0	6	-1	66	1829	0.9
2025-07-01 13:15:49.702+00	127	\N	1126982881	stationary	0	0	5	-1	65	1830	0.9
2025-07-01 13:21:18.503+00	127	\N	1041420528	stationary	0	0	3	-3	64	1831	0.9
2025-07-01 13:25:08.36+00	127	\N	978202981	stationary	0	0	5	-2	66	1835	0.9
2025-07-01 13:25:49.74+00	127	\N	1126982881	stationary	0	0	4	-2	66	1836	0.9
2025-07-01 13:31:18.575+00	127	\N	1041420528	stationary	0	0	3	-3	64	1841	0.9
2025-07-01 13:35:08.402+00	127	\N	978202981	stationary	0	0	6	-1	65	1843	0.9
2025-07-01 13:35:49.8+00	127	\N	1126982881	stationary	0	0	4	-1	65	1844	0.9
2025-07-01 13:41:18.62+00	127	\N	1041420528	stationary	0	0	4	-3	64	1847	0.9
2025-07-01 13:45:08.444+00	127	\N	978202981	stationary	0	0	5	-2	65	1849	0.9
2025-07-01 13:45:49.878+00	127	\N	1126982881	stationary	0	0	4	-1	66	1851	0.9
2025-07-01 13:51:18.662+00	127	\N	1041420528	stationary	0	0	4	-3	64	1853	0.9
2025-07-01 13:55:08.515+00	127	\N	978202981	stationary	0	0	6	-1	65	1856	0.9
2025-07-01 13:55:49.937+00	127	\N	1126982881	stationary	0	0	3	-1	65	1857	0.9
2025-07-01 14:01:18.692+00	127	\N	1041420528	stationary	0	0	4	-2	65	1862	0.9
2025-07-01 14:05:08.588+00	127	\N	978202981	stationary	0	0	6	-1	65	1865	0.9
2025-07-01 14:05:50.067+00	127	\N	1126982881	stationary	0	0	4	-2	65	1866	0.9
2025-07-01 14:11:18.733+00	127	\N	1041420528	stationary	0	0	3	-2	64	1869	0.9
2025-07-01 15:25:09.048+00	127	\N	978202981	stationary	0	0	6	-1	64	1917	0.9
2025-07-01 15:25:50.477+00	127	\N	1126982881	stationary	0	0	3	-1	65	1918	0.9
2025-07-01 15:31:19.211+00	127	\N	1041420528	stationary	0	0	3	-2	65	1923	0.9
2025-07-01 15:35:09.086+00	127	\N	978202981	stationary	0	0	6	-2	65	1926	0.9
2025-07-01 15:35:50.515+00	127	\N	1126982881	stationary	0	0	4	-2	66	1927	0.9
2025-07-01 15:41:19.245+00	127	\N	1041420528	stationary	0	0	3	-2	65	1930	0.9
2025-07-01 15:45:09.132+00	127	\N	978202981	stationary	0	0	6	-1	65	1932	0.9
2025-07-01 15:45:50.563+00	127	\N	1126982881	stationary	0	0	4	-1	66	1933	0.9
2025-07-01 16:11:19.399+00	127	\N	1041420528	stationary	0	0	4	-3	64	1950	0.9
2025-07-01 16:15:09.252+00	127	\N	978202981	stationary	0	0	6	-2	65	1953	0.9
2025-07-01 16:15:50.749+00	127	\N	1126982881	stationary	0	0	4	-1	65	1954	0.9
2025-07-01 16:21:19.438+00	127	\N	1041420528	stationary	0	0	4	-3	63	1955	0.9
2025-07-01 16:25:09.328+00	127	\N	978202981	stationary	0	0	6	-1	65	1956	0.9
2025-07-01 16:25:50.852+00	127	\N	1126982881	stationary	0	0	3	-3	65	1957	0.9
2025-07-01 16:31:19.473+00	127	\N	1041420528	stationary	0	0	4	-2	64	1960	0.9
2025-07-01 16:35:09.358+00	127	\N	978202981	stationary	0	0	6	-1	66	1964	0.9
2025-07-01 16:35:50.915+00	127	\N	1126982881	stationary	0	0	4	-1	66	1965	0.9
2025-07-01 16:41:19.524+00	127	\N	1041420528	stationary	0	0	4	-3	64	1968	0.9
2025-07-01 16:45:09.395+00	127	\N	978202981	stationary	0	0	5	-1	64	1970	0.9
2025-07-01 16:45:50.963+00	127	\N	1126982881	stationary	0	0	4	-1	66	1972	0.9
2025-07-01 16:51:19.558+00	127	\N	1041420528	stationary	0	0	3	-2	63	1973	0.9
2025-07-01 16:55:09.435+00	127	\N	978202981	stationary	0	0	5	-1	65	1974	0.9
2025-07-01 16:55:51.002+00	127	\N	1126982881	stationary	0	0	4	-1	66	1976	0.9
2025-07-01 17:01:19.603+00	127	\N	1041420528	stationary	0	0	4	-3	64	1979	0.9
2025-07-01 17:31:19.773+00	127	\N	1041420528	stationary	0	0	3	-2	64	1999	0.9
2025-07-01 17:35:09.723+00	127	\N	978202981	stationary	0	0	6	-1	65	2003	0.9
2025-07-01 17:35:51.207+00	127	\N	1126982881	stationary	0	0	4	-1	66	2004	0.9
2025-07-01 17:41:19.865+00	127	\N	1041420528	stationary	0	0	4	-2	63	2006	0.9
2025-07-01 17:45:09.779+00	127	\N	978202981	stationary	0	0	6	-1	65	2008	0.9
2025-07-01 17:45:51.275+00	127	\N	1126982881	stationary	0	0	4	-2	66	2009	0.9
2025-07-01 17:51:19.931+00	127	\N	1041420528	stationary	0	0	2	-2	64	2013	0.9
2025-07-01 17:55:09.83+00	127	\N	978202981	stationary	0	0	6	-1	66	2014	0.9
2025-07-01 17:55:51.31+00	127	\N	1126982881	stationary	0	0	4	-1	65	2015	0.9
2025-07-01 18:01:19.975+00	127	\N	1041420528	stationary	0	0	4	-2	65	2019	0.9
2025-07-01 18:05:09.874+00	127	\N	978202981	stationary	0	0	6	-1	65	2022	0.9
2025-07-01 18:05:51.363+00	127	\N	1126982881	stationary	0	0	3	-1	65	2025	0.9
2025-07-01 18:11:20.018+00	127	\N	1041420528	stationary	0	0	4	-3	64	2030	0.9
2025-07-01 18:31:20.096+00	127	\N	1041420528	stationary	0	0	4	-1	64	2042	0.9
2025-07-01 18:35:09.993+00	127	\N	978202981	stationary	0	0	6	-1	66	2045	0.9
2025-07-01 18:35:51.574+00	127	\N	1126982881	stationary	0	0	3	-1	65	2046	0.9
2025-07-01 18:41:20.169+00	127	\N	1041420528	stationary	0	0	3	-3	64	2050	0.9
2025-07-01 18:45:10.04+00	127	\N	978202981	stationary	0	0	6	-2	65	2053	0.9
2025-07-01 18:45:51.703+00	127	\N	1126982881	stationary	0	0	3	-1	65	2054	0.9
2025-07-01 18:51:20.21+00	127	\N	1041420528	stationary	0	0	4	-3	63	2058	0.9
2025-07-01 18:55:10.078+00	127	\N	978202981	stationary	0	0	5	-2	66	2060	0.9
2025-07-01 18:55:51.812+00	127	\N	1126982881	stationary	0	0	4	-1	64	2061	0.9
2025-07-01 19:01:20.246+00	127	\N	1041420528	stationary	0	0	5	-2	65	2065	0.9
2025-07-01 19:05:10.165+00	127	\N	978202981	stationary	0	0	6	-1	65	2069	0.9
2025-07-01 19:05:51.899+00	127	\N	1126982881	stationary	0	0	3	-2	65	2072	0.9
2025-07-01 19:11:20.29+00	127	\N	1041420528	stationary	0	0	3	-2	65	2076	0.9
2025-07-01 19:15:10.204+00	127	\N	978202981	stationary	0	0	6	-1	66	2081	0.9
2025-07-01 19:15:51.96+00	127	\N	1126982881	stationary	0	0	4	-2	64	2082	0.9
2025-07-01 19:21:20.326+00	127	\N	1041420528	stationary	0	0	5	-3	65	2085	0.9
2025-07-01 19:25:10.243+00	127	\N	978202981	stationary	0	0	5	-1	65	2088	0.9
2025-07-01 19:25:52.001+00	127	\N	1126982881	stationary	0	0	3	-1	65	2089	0.9
2025-07-01 19:31:20.359+00	127	\N	1041420528	stationary	0	0	3	-2	64	2091	0.9
2025-07-01 19:35:10.275+00	127	\N	978202981	stationary	0	0	6	0	64	2094	0.9
2025-07-01 19:35:52.046+00	127	\N	1126982881	stationary	0	0	3	-1	65	2095	0.9
2025-07-01 19:41:20.395+00	127	\N	1041420528	stationary	0	0	4	-3	64	2100	0.9
2025-07-01 19:45:10.343+00	127	\N	978202981	stationary	0	0	5	-1	64	2102	0.9
2025-07-01 19:45:52.127+00	127	\N	1126982881	stationary	0	0	3	-1	64	2105	0.9
2025-07-01 19:51:20.436+00	127	\N	1041420528	stationary	0	0	3	-2	63	2109	0.9
2025-07-01 19:55:10.414+00	127	\N	978202981	stationary	0	0	6	-2	65	2112	0.9
2025-07-01 19:55:52.183+00	127	\N	1126982881	stationary	0	0	4	-1	65	2113	0.9
2025-07-01 20:01:20.478+00	127	\N	1041420528	stationary	0	0	4	-3	64	2115	0.9
2025-07-01 20:02:54.228+00	127	\N	1126982881	start-moving	0	1	23	-35	65	2116	0.9
2025-07-01 20:04:13.228+00	127	\N	1126982881	stop-moving	16	17	3	-1	65	2120	0.9
2025-07-01 20:05:10.478+00	127	\N	978202981	stationary	0	0	6	-2	65	2125	0.9
2025-07-01 20:11:20.574+00	127	\N	1041420528	stationary	0	0	4	-2	65	2137	0.9
2025-07-01 20:14:13.286+00	127	\N	1126982881	stationary	0	0	2	-2	64	2140	0.9
2025-07-01 20:15:10.561+00	127	\N	978202981	stationary	0	0	6	-1	65	2143	0.9
2025-07-01 20:21:20.65+00	127	\N	1041420528	stationary	0	0	4	-3	64	2149	0.9
2025-07-01 20:21:27.323+00	127	\N	1126982881	start-moving	0	1	-10	8	64	2150	0.9
2025-07-01 20:22:45.324+00	127	\N	1126982881	stop-moving	9	12	2	-1	65	2152	0.9
2025-07-01 20:25:10.608+00	127	\N	978202981	stationary	0	0	5	-2	65	2157	0.9
2025-07-01 20:29:15.375+00	127	\N	1126982881	start-moving	0	1	-8	7	49	2161	0.9
2025-07-01 20:30:17.373+00	127	\N	1126982881	stop-moving	4	3	2	-1	65	2162	0.9
2025-07-01 20:31:20.731+00	127	\N	1041420528	stationary	0	0	3	-2	65	2165	0.9
2025-07-01 20:35:10.646+00	127	\N	978202981	stationary	0	0	6	-1	66	2168	0.9
2025-07-01 20:40:17.47+00	127	\N	1126982881	stationary	0	0	3	-2	65	2173	0.9
2025-07-01 20:41:20.782+00	127	\N	1041420528	stationary	0	0	4	-2	64	2175	0.9
2025-07-01 20:45:10.681+00	127	\N	978202981	stationary	0	0	5	-1	64	2177	0.9
2025-07-01 20:50:17.55+00	127	\N	1126982881	stationary	0	0	3	-1	65	2179	0.9
2025-07-01 20:51:20.825+00	127	\N	1041420528	stationary	0	0	3	-2	64	2180	0.9
2025-07-01 20:55:10.723+00	127	\N	978202981	stationary	0	0	6	-1	65	2183	0.9
2025-07-01 21:00:17.611+00	127	\N	1126982881	stationary	0	0	3	-1	65	2185	0.9
2025-07-01 21:01:20.868+00	127	\N	1041420528	stationary	0	0	4	-3	64	2186	0.9
2025-07-01 21:05:10.754+00	127	\N	978202981	stationary	0	0	5	-1	66	2187	0.9
2025-07-01 21:10:17.654+00	127	\N	1126982881	stationary	0	0	3	-2	65	2193	0.9
2025-07-01 21:11:20.892+00	127	\N	1041420528	stationary	0	0	3	-2	64	2194	0.9
2025-07-01 21:15:10.797+00	127	\N	978202981	stationary	0	0	5	-1	65	2197	0.9
2025-07-01 21:20:17.689+00	127	\N	1126982881	stationary	0	0	3	-2	65	2201	0.9
2025-07-01 21:21:20.972+00	127	\N	1041420528	stationary	0	0	2	-2	64	2203	0.9
2025-07-01 21:23:50.706+00	127	\N	1126982881	start-moving	0	1	3	-6	71	2204	0.9
2025-07-01 21:25:10.838+00	127	\N	978202981	stationary	0	0	6	0	64	2210	0.9
2025-07-01 21:26:02.723+00	127	\N	1126982881	stop-moving	37	42	4	-3	66	2212	0.9
2025-07-01 21:31:21.004+00	127	\N	1041420528	stationary	0	0	3	-3	64	2216	0.9
2025-07-01 21:35:10.875+00	127	\N	978202981	stationary	0	0	6	-1	66	2218	0.9
2025-07-01 21:36:02.771+00	127	\N	1126982881	stationary	0	0	4	-2	66	2219	0.9
2025-07-01 21:36:22.773+00	127	\N	1126982881	start-moving	0	1	0	10	67	2220	0.9
2025-07-01 21:38:33.791+00	127	\N	1126982881	stop-moving	53	52	2	-2	66	2227	0.9
2025-07-01 21:41:21.044+00	127	\N	1041420528	stationary	0	0	4	-2	65	2235	0.9
2025-07-01 21:45:10.948+00	127	\N	978202981	stationary	0	0	6	-2	64	2240	0.9
2025-07-01 21:48:33.842+00	127	\N	1126982881	stationary	0	0	2	-2	66	2241	0.9
2025-07-01 21:51:21.096+00	127	\N	1041420528	stationary	0	0	4	-2	64	2243	0.9
2025-07-01 21:55:10.988+00	127	\N	978202981	stationary	0	0	5	-1	65	2244	0.9
2025-07-01 21:58:33.886+00	127	\N	1126982881	stationary	0	0	2	-1	65	2245	0.9
2025-07-01 22:01:21.139+00	127	\N	1041420528	stationary	0	0	3	-3	64	2246	0.9
2025-07-01 22:05:11.013+00	127	\N	978202981	stationary	0	0	6	-2	64	2249	0.9
2025-07-01 22:08:33.941+00	127	\N	1126982881	stationary	0	0	2	-2	66	2250	0.9
2025-07-01 22:11:21.166+00	127	\N	1041420528	stationary	0	0	4	-3	63	2255	0.9
2025-07-02 07:04:57.868+00	127	\N	978202981	stop-moving	32	57	6	-1	65	2655	0.9
2025-07-02 07:05:04.576+00	127	\N	1126982881	stop-moving	61	91	0	1	65	2658	0.9
2025-07-02 07:05:04.964+00	127	\N	1041420528	stop-moving	46	102	4	1	64	2661	0.9
2025-07-02 07:14:57.902+00	127	\N	978202981	stationary	0	0	7	-1	65	2672	0.9
2025-07-02 07:15:05.018+00	127	\N	1041420528	stationary	0	0	4	1	63	2673	0.9
2025-07-02 07:15:04.656+00	127	\N	1126982881	stationary	0	0	0	1	65	2674	0.9
2025-07-02 07:24:57.939+00	127	\N	978202981	stationary	0	0	6	-1	64	2677	0.9
2025-07-02 07:25:05.067+00	127	\N	1041420528	stationary	0	0	5	1	64	2679	0.9
2025-07-02 07:25:04.778+00	127	\N	1126982881	stationary	0	0	0	1	66	2680	0.9
2025-07-02 07:34:57.975+00	127	\N	978202981	stationary	0	0	6	-1	64	2683	0.9
2025-07-02 07:35:05.094+00	127	\N	1041420528	stationary	0	0	3	1	64	2684	0.9
2025-07-02 07:35:04.849+00	127	\N	1126982881	stationary	0	0	1	1	65	2685	0.9
2025-07-02 07:44:58.025+00	127	\N	978202981	stationary	0	0	7	-1	66	2691	0.9
2025-07-02 07:45:05.12+00	127	\N	1041420528	stationary	0	0	4	1	62	2692	0.9
2025-07-02 07:45:04.885+00	127	\N	1126982881	stationary	0	0	1	1	65	2693	0.9
2025-07-02 07:54:58.059+00	127	\N	978202981	stationary	0	0	7	-1	65	2695	0.9
2025-07-02 07:55:05.209+00	127	\N	1041420528	stationary	0	0	4	1	62	2696	0.9
2025-07-02 07:55:04.942+00	127	\N	1126982881	stationary	0	0	0	1	64	2697	0.9
2025-07-02 08:04:58.097+00	127	\N	978202981	stationary	0	0	7	-2	65	2701	0.9
2025-07-02 08:05:04.978+00	127	\N	1126982881	stationary	0	0	0	1	65	2702	0.9
2025-07-02 08:05:05.248+00	127	\N	1041420528	stationary	0	0	3	1	63	2703	0.9
2025-07-02 08:14:58.192+00	127	\N	978202981	stationary	0	0	6	-1	65	2709	0.9
2025-07-02 08:15:05.02+00	127	\N	1126982881	stationary	0	0	1	2	65	2710	0.9
2025-07-02 08:15:05.275+00	127	\N	1041420528	stationary	0	0	3	1	64	2711	0.9
2025-07-02 08:24:58.218+00	127	\N	978202981	stationary	0	0	7	-1	65	2712	0.9
2025-07-02 08:25:05.316+00	127	\N	1041420528	stationary	0	0	3	0	64	2713	0.9
2025-07-02 08:25:05.067+00	127	\N	1126982881	stationary	0	0	1	1	65	2714	0.9
2025-07-02 08:34:58.261+00	127	\N	978202981	stationary	0	0	6	-1	65	2719	0.9
2025-07-02 08:35:05.347+00	127	\N	1041420528	stationary	0	0	5	1	63	2720	0.9
2025-07-02 08:35:05.158+00	127	\N	1126982881	stationary	0	0	1	1	64	2721	0.9
2025-07-02 08:44:58.297+00	127	\N	978202981	stationary	0	0	6	-2	64	2727	0.9
2025-07-02 08:45:05.385+00	127	\N	1041420528	stationary	0	0	4	0	64	2728	0.9
2025-07-02 08:45:05.186+00	127	\N	1126982881	stationary	0	0	0	0	65	2729	0.9
2025-07-02 08:54:58.358+00	127	\N	978202981	stationary	0	0	6	-2	65	2730	0.9
2025-07-02 08:55:05.417+00	127	\N	1041420528	stationary	0	0	3	1	63	2731	0.9
2025-07-02 08:55:05.228+00	127	\N	1126982881	stationary	0	0	0	1	65	2732	0.9
2025-07-02 09:04:58.414+00	127	\N	978202981	stationary	0	0	6	-2	65	2737	0.9
2025-07-02 09:05:05.45+00	127	\N	1041420528	stationary	0	0	4	1	64	2738	0.9
2025-07-02 09:05:05.271+00	127	\N	1126982881	stationary	0	0	1	1	65	2739	0.9
2025-07-02 09:14:58.483+00	127	\N	978202981	stationary	0	0	6	-2	65	2745	0.9
2025-07-02 09:15:05.477+00	127	\N	1041420528	stationary	0	0	4	1	64	2746	0.9
2025-07-02 09:15:05.317+00	127	\N	1126982881	stationary	0	0	0	1	65	2747	0.9
2025-07-02 09:16:45.335+00	127	\N	1126982881	start-moving	0	1	16	-55	45	2748	0.9
2025-07-02 09:18:35.345+00	127	\N	1126982881	stop-moving	39	33	1	-1	65	2755	0.9
2025-07-02 09:22:28.39+00	127	\N	1126982881	start-moving	0	1	0	-4	70	2765	0.9
2025-07-02 09:23:27.4+00	127	\N	1126982881	stop-moving	1	1	3	-1	66	2766	0.9
2025-07-02 09:24:58.576+00	127	\N	978202981	stationary	0	0	6	-1	65	2770	0.9
2025-07-02 09:25:05.55+00	127	\N	1041420528	stationary	0	0	4	0	64	2771	0.9
2025-07-02 09:25:34.419+00	127	\N	1126982881	start-moving	0	1	3	-2	66	2773	0.9
2025-07-02 09:28:28.457+00	127	\N	1126982881	stop-moving	19	29	4	0	65	2779	0.9
2025-07-02 09:29:20.466+00	127	\N	1126982881	start-moving	0	1	-13	39	64	2785	0.9
2025-07-02 09:30:21.483+00	127	\N	1126982881	stop-moving	2	5	2	-2	66	2788	0.9
2025-07-02 09:34:58.636+00	127	\N	978202981	stationary	0	0	6	-1	65	2793	0.9
2025-07-02 09:35:05.642+00	127	\N	1041420528	stationary	0	0	4	0	63	2794	0.9
2025-07-02 09:37:53.586+00	127	\N	1126982881	start-moving	0	1	8	2	53	2796	0.9
2025-07-02 09:40:56.615+00	127	\N	1126982881	stop-moving	2	3	3	0	65	2807	0.9
2025-07-02 09:41:18.624+00	127	\N	1126982881	start-moving	0	1	-17	-1	81	2811	0.9
2025-07-02 09:43:10.63+00	127	\N	1126982881	stop-moving	28	46	2	-1	65	2818	0.9
2025-07-02 09:44:58.657+00	127	\N	978202981	stationary	0	0	6	-1	65	2825	0.9
2025-07-02 09:45:05.732+00	127	\N	1041420528	stationary	0	0	3	0	63	2826	0.9
2025-07-02 09:47:03.659+00	127	\N	1126982881	start-moving	0	1	2	-1	65	2832	0.9
2025-07-02 09:48:23.679+00	127	\N	1126982881	stop-moving	6	9	2	-1	64	2836	0.9
2025-07-02 09:49:06.689+00	127	\N	1126982881	start-moving	0	1	3	-1	66	2840	0.9
2025-07-02 09:50:06.695+00	127	\N	1126982881	stop-moving	1	2	2	0	66	2842	0.9
2025-07-02 09:51:48.702+00	127	\N	1126982881	start-moving	0	1	-9	-7	72	2845	0.9
2025-07-02 09:54:58.709+00	127	\N	978202981	stationary	0	0	6	-1	65	2855	0.9
2025-07-02 09:55:05.849+00	127	\N	1041420528	stationary	0	0	4	1	64	2856	0.9
2025-07-02 09:55:44.729+00	127	\N	1126982881	stop-moving	28	56	3	-1	66	2859	0.9
2025-07-02 10:00:32.748+00	127	\N	1126982881	start-moving	0	1	15	14	55	2866	0.9
2025-07-02 10:02:41.767+00	127	\N	1126982881	stop-moving	27	34	3	-2	66	2871	0.9
2025-07-02 10:04:58.739+00	127	\N	978202981	stationary	0	0	6	-1	65	2877	0.9
2025-07-02 10:05:05.885+00	127	\N	1041420528	stationary	0	0	5	1	64	2878	0.9
2025-07-02 10:11:01.82+00	127	\N	1126982881	start-moving	0	1	10	5	60	2884	0.9
2025-07-02 10:14:08.859+00	127	\N	1126982881	stop-moving	24	30	3	-1	66	2895	0.9
2025-07-02 10:14:58.781+00	127	\N	978202981	stationary	0	0	5	-1	65	2900	0.9
2025-07-02 10:15:05.919+00	127	\N	1041420528	stationary	0	0	4	1	64	2901	0.9
2025-07-02 10:24:08.913+00	127	\N	1126982881	stationary	0	0	2	-1	65	2910	0.9
2025-07-02 10:24:58.831+00	127	\N	978202981	stationary	0	0	6	-2	65	2912	0.9
2025-07-02 10:25:05.998+00	127	\N	1041420528	stationary	0	0	4	1	64	2913	0.9
2025-07-02 10:34:08.96+00	127	\N	1126982881	stationary	0	0	2	-1	65	2918	0.9
2025-07-02 10:34:19.972+00	127	\N	1126982881	start-moving	0	1	-6	-6	55	2919	0.9
2025-07-02 10:34:58.867+00	127	\N	978202981	stationary	0	0	6	-2	64	2920	0.9
2025-07-02 10:35:06.039+00	127	\N	1041420528	stationary	0	0	4	0	63	2921	0.9
2025-07-02 10:35:24.967+00	127	\N	1126982881	stop-moving	6	9	3	-2	65	2922	0.9
2025-07-02 10:41:04.004+00	127	\N	1126982881	start-moving	0	1	6	-4	64	2928	0.9
2025-07-02 10:42:33.016+00	127	\N	1126982881	stop-moving	24	44	3	-2	64	2930	0.9
2025-07-02 10:44:58.904+00	127	\N	978202981	stationary	0	0	6	-1	65	2933	0.9
2025-07-02 10:45:06.067+00	127	\N	1041420528	stationary	0	0	3	1	64	2936	0.9
2025-07-02 10:52:33.07+00	127	\N	1126982881	stationary	0	0	2	-2	65	2940	0.9
2025-07-02 10:54:59.011+00	127	\N	978202981	stationary	0	0	7	-2	65	2941	0.9
2025-07-02 10:55:06.11+00	127	\N	1041420528	stationary	0	0	3	0	63	2942	0.9
2025-07-02 11:02:33.11+00	127	\N	1126982881	stationary	0	0	3	-1	66	2946	0.9
2025-07-02 11:39:35.397+00	127	\N	1126982881	start-moving	0	1	28	-8	67	2968	0.9
2025-07-02 11:42:10.416+00	127	\N	1126982881	stop-moving	48	81	2	-2	65	2974	0.9
2025-07-02 11:42:26.416+00	127	\N	1126982881	start-moving	0	1	-32	-38	44	2977	0.9
2025-07-02 11:43:38.431+00	127	\N	1126982881	stop-moving	10	12	3	-3	66	2980	0.9
2025-07-02 11:43:41.432+00	127	\N	1126982881	start-moving	0	1	-10	6	65	2983	0.9
2025-07-02 11:44:59.259+00	127	\N	978202981	stationary	0	0	7	-1	66	2984	0.9
2025-07-02 11:45:06.307+00	127	\N	1041420528	stationary	0	0	4	2	63	2986	0.9
2025-07-02 11:45:39.44+00	127	\N	1126982881	stop-moving	33	52	4	-1	66	2987	0.9
2025-07-02 11:45:49.441+00	127	\N	1126982881	start-moving	0	1	-27	-41	58	2990	0.9
2025-07-02 11:47:03.463+00	127	\N	1126982881	stop-moving	24	4	2	-1	65	2994	0.9
2025-07-02 11:54:59.32+00	127	\N	978202981	stationary	0	0	7	-1	65	3003	0.9
2025-07-02 11:55:06.428+00	127	\N	1041420528	stationary	0	0	4	0	64	3004	0.9
2025-07-02 11:56:21.491+00	127	\N	1126982881	start-moving	0	1	7	-2	58	3005	0.9
2025-07-02 11:57:21.503+00	127	\N	1126982881	stop-moving	1	1	3	-2	65	3006	0.9
2025-07-02 12:04:59.403+00	127	\N	978202981	stationary	0	0	7	-2	65	3012	0.9
2025-07-02 12:05:06.506+00	127	\N	1041420528	stationary	0	0	4	1	64	3013	0.9
2025-07-02 12:07:21.538+00	127	\N	1126982881	stationary	0	0	3	-1	65	3014	0.9
2025-07-02 12:14:59.446+00	127	\N	978202981	stationary	0	0	6	-1	65	3017	0.9
2025-07-02 12:15:06.565+00	127	\N	1041420528	stationary	0	0	5	1	63	3018	0.9
2025-07-02 12:15:16.572+00	127	\N	1126982881	start-moving	0	1	-10	-64	36	3019	0.9
2025-07-02 12:19:14.591+00	127	\N	1126982881	stop-moving	140	255	3	-1	65	3029	0.9
2025-07-02 12:24:59.488+00	127	\N	978202981	stationary	0	0	7	-1	66	3038	0.9
2025-07-02 12:25:06.643+00	127	\N	1041420528	stationary	0	0	4	1	63	3039	0.9
2025-07-02 12:29:14.636+00	127	\N	1126982881	stationary	0	0	2	-1	66	3041	0.9
2025-07-02 12:34:59.543+00	127	\N	978202981	stationary	0	0	6	-1	65	3046	0.9
2025-07-02 12:35:06.68+00	127	\N	1041420528	stationary	0	0	3	0	64	3047	0.9
2025-07-02 12:39:14.683+00	127	\N	1126982881	stationary	0	0	2	0	65	3048	0.9
2025-07-02 12:44:59.587+00	127	\N	978202981	stationary	0	0	6	-2	64	3052	0.9
2025-07-02 12:45:06.71+00	127	\N	1041420528	stationary	0	0	4	1	63	3053	0.9
2025-07-02 12:49:14.718+00	127	\N	1126982881	stationary	0	0	2	-2	65	3054	0.9
2025-07-02 12:54:59.637+00	127	\N	978202981	stationary	0	0	6	-2	66	3058	0.9
2025-07-02 12:55:06.746+00	127	\N	1041420528	stationary	0	0	5	1	64	3059	0.9
2025-07-02 12:59:14.773+00	127	\N	1126982881	stationary	0	0	2	-1	65	3060	0.9
2025-07-02 13:04:59.678+00	127	\N	978202981	stationary	0	0	7	-2	65	3064	0.9
2025-07-02 13:05:06.803+00	127	\N	1041420528	stationary	0	0	4	1	64	3065	0.9
2025-07-02 13:09:14.826+00	127	\N	1126982881	stationary	0	0	3	-1	65	3066	0.9
2025-07-02 13:14:59.736+00	127	\N	978202981	stationary	0	0	6	-2	65	3070	0.9
2025-07-02 13:15:06.845+00	127	\N	1041420528	stationary	0	0	5	1	63	3071	0.9
2025-07-02 13:19:14.862+00	127	\N	1126982881	stationary	0	0	2	-1	66	3072	0.9
2025-07-02 13:22:13.876+00	127	\N	1126982881	start-moving	0	1	-27	20	73	3075	0.9
2025-07-02 13:24:54.895+00	127	\N	1126982881	stop-moving	54	55	2	-1	66	3079	0.9
2025-07-02 13:25:06.888+00	127	\N	1041420528	stationary	0	0	4	1	64	3082	0.9
2025-07-02 13:24:59.807+00	127	\N	978202981	stationary	0	0	8	-1	64	3085	0.9
2025-07-02 13:34:54.943+00	127	\N	1126982881	stationary	0	0	3	-1	65	3089	0.9
2025-07-02 13:34:59.846+00	127	\N	978202981	stationary	0	0	6	-2	64	3090	0.9
2025-07-02 13:35:06.919+00	127	\N	1041420528	stationary	0	0	3	1	63	3091	0.9
2025-07-02 13:44:55.01+00	127	\N	1126982881	stationary	0	0	3	-1	66	3095	0.9
2025-07-02 13:44:59.871+00	127	\N	978202981	stationary	0	0	6	-1	65	3096	0.9
2025-07-02 13:45:06.962+00	127	\N	1041420528	stationary	0	0	4	1	64	3097	0.9
2025-07-02 13:52:22.042+00	127	\N	1126982881	start-moving	0	1	14	20	83	3101	0.9
2025-07-02 13:54:24.069+00	127	\N	1126982881	stop-moving	76	16	4	-1	66	3106	0.9
2025-07-02 13:54:25.065+00	127	\N	1126982881	start-moving	0	1	71	-19	96	3107	0.9
2025-07-02 13:54:59.927+00	127	\N	978202981	stationary	0	0	5	-1	65	3112	0.9
2025-07-02 13:55:06.997+00	127	\N	1041420528	stationary	0	0	4	1	64	3113	0.9
2025-07-02 14:00:25.113+00	127	\N	1126982881	stop-moving	223	196	4	0	65	3122	0.9
2025-07-02 14:01:41.111+00	127	\N	1126982881	start-moving	0	1	3	-1	65	3125	0.9
2025-07-02 14:02:40.127+00	127	\N	1126982881	stop-moving	1	1	3	-1	66	3127	0.9
2025-07-02 14:04:59.987+00	127	\N	978202981	stationary	0	0	6	-2	66	3133	0.9
2025-07-02 14:05:07.04+00	127	\N	1041420528	stationary	0	0	4	1	63	3134	0.9
2025-07-02 14:12:40.251+00	127	\N	1126982881	stationary	0	0	3	-1	65	3139	0.9
2025-07-02 14:15:00.055+00	127	\N	978202981	stationary	0	0	6	-2	64	3140	0.9
2025-07-02 14:15:07.074+00	127	\N	1041420528	stationary	0	0	3	1	64	3141	0.9
2025-07-02 14:22:40.342+00	127	\N	1126982881	stationary	0	0	3	-1	65	3149	0.9
2025-07-02 14:25:00.131+00	127	\N	978202981	stationary	0	0	6	-1	65	3150	0.9
2025-07-02 14:25:07.124+00	127	\N	1041420528	stationary	0	0	4	1	64	3151	0.9
2025-07-02 14:32:40.44+00	127	\N	1126982881	stationary	0	0	2	-1	65	3152	0.9
2025-07-02 14:35:00.228+00	127	\N	978202981	stationary	0	0	7	-2	65	3154	0.9
2025-07-02 14:35:07.191+00	127	\N	1041420528	stationary	0	0	4	2	64	3155	0.9
2025-07-02 14:42:40.482+00	127	\N	1126982881	stationary	0	0	3	-1	66	3159	0.9
2025-07-02 14:45:00.264+00	127	\N	978202981	stationary	0	0	6	-1	65	3160	0.9
2025-07-02 14:45:07.295+00	127	\N	1041420528	stationary	0	0	4	1	64	3161	0.9
2025-07-02 14:52:40.514+00	127	\N	1126982881	stationary	0	0	3	-2	65	3166	0.9
2025-07-02 14:55:00.312+00	127	\N	978202981	stationary	0	0	7	-1	64	3168	0.9
2025-07-02 14:55:07.352+00	127	\N	1041420528	stationary	0	0	4	1	64	3169	0.9
2025-07-02 15:02:40.555+00	127	\N	1126982881	stationary	0	0	3	-2	66	3170	0.9
2025-07-02 15:05:00.351+00	127	\N	978202981	stationary	0	0	7	-2	66	3171	0.9
2025-07-02 15:05:07.411+00	127	\N	1041420528	stationary	0	0	3	0	64	3172	0.9
2025-07-02 15:12:40.591+00	127	\N	1126982881	stationary	0	0	3	-2	66	3177	0.9
2025-07-02 15:15:00.384+00	127	\N	978202981	stationary	0	0	6	-1	64	3178	0.9
2025-07-02 15:15:07.445+00	127	\N	1041420528	stationary	0	0	4	1	65	3179	0.9
2025-07-02 15:22:40.637+00	127	\N	1126982881	stationary	0	0	3	-1	65	3183	0.9
2025-07-02 15:25:00.431+00	127	\N	978202981	stationary	0	0	6	-2	65	3186	0.9
2025-07-02 15:25:07.492+00	127	\N	1041420528	stationary	0	0	4	1	63	3187	0.9
2025-07-02 15:34:16.774+00	127	\N	1126982881	start-moving	0	1	-16	18	55	3190	0.9
2025-07-02 15:35:00.461+00	127	\N	978202981	stationary	0	0	7	-1	65	3191	0.9
2025-07-02 15:35:07.527+00	127	\N	1041420528	stationary	0	0	4	1	63	3194	0.9
2025-07-02 15:37:42.809+00	127	\N	1126982881	stop-moving	43	33	4	-1	66	3205	0.9
2025-07-02 15:38:55.831+00	127	\N	1126982881	start-moving	0	1	11	0	67	3209	0.9
2025-07-02 15:41:23.86+00	127	\N	1126982881	stop-moving	14	19	3	-1	65	3213	0.9
2025-07-02 15:44:49.887+00	127	\N	1126982881	start-moving	0	1	12	-31	64	3218	0.9
2025-07-02 15:45:00.5+00	127	\N	978202981	stationary	0	0	6	-1	66	3219	0.9
2025-07-02 15:45:07.604+00	127	\N	1041420528	stationary	0	0	4	1	65	3220	0.9
2025-07-02 15:45:49.902+00	127	\N	1126982881	stop-moving	2	2	3	-1	64	3223	0.9
2025-07-02 15:47:04.915+00	127	\N	1126982881	start-moving	0	1	7	-25	-38	3226	0.9
2025-07-02 15:48:07.919+00	127	\N	1126982881	stop-moving	4	2	0	0	-65	3228	0.9
2025-07-02 15:51:25.946+00	127	\N	1126982881	start-moving	0	1	25	64	-8	3234	0.9
2025-07-02 15:52:33.962+00	127	\N	1126982881	stop-moving	8	6	-40	47	2	3235	0.9
2025-07-02 15:53:40.969+00	127	\N	1126982881	start-moving	0	1	-12	62	-32	3238	0.9
2025-07-02 15:54:39.976+00	127	\N	1126982881	stop-moving	1	1	14	63	-1	3241	0.9
2025-07-02 15:55:00.546+00	127	\N	978202981	stationary	0	0	7	-2	65	3245	0.9
2025-07-02 15:55:07.694+00	127	\N	1041420528	stationary	0	0	3	1	63	3246	0.9
2025-07-02 15:58:55.004+00	127	\N	1126982881	start-moving	0	1	-1	68	1	3249	0.9
2025-07-02 16:00:01.014+00	127	\N	1126982881	stop-moving	6	5	-6	-66	1	3250	0.9
2025-07-02 16:05:00.615+00	127	\N	978202981	stationary	0	0	6	-2	64	3253	0.9
2025-07-02 16:05:07.734+00	127	\N	1041420528	stationary	0	0	6	1	65	3254	0.9
2025-07-02 16:07:21.101+00	127	\N	1126982881	start-moving	0	1	17	-65	1	3257	0.9
2025-07-02 16:08:41.119+00	127	\N	1126982881	stop-moving	10	6	14	-66	-1	3260	0.9
2025-07-02 16:08:45.118+00	127	\N	1126982881	start-moving	0	1	-19	-58	0	3263	0.9
2025-07-02 16:09:50.139+00	127	\N	1126982881	stop-moving	6	3	21	-62	-2	3264	0.9
2025-07-02 16:11:56.137+00	127	\N	1126982881	start-moving	0	1	-32	-9	69	3267	0.9
2025-07-02 16:12:56.147+00	127	\N	1126982881	stop-moving	2	1	4	-1	66	3268	0.9
2025-07-02 16:15:00.67+00	127	\N	978202981	stationary	0	0	7	-1	65	3271	0.9
2025-07-02 16:15:07.783+00	127	\N	1041420528	stationary	0	0	4	1	64	3272	0.9
2025-07-02 16:22:30.175+00	127	\N	1126982881	start-moving	0	1	33	23	76	3275	0.9
2025-07-02 16:23:30.186+00	127	\N	1126982881	stop-moving	6	1	3	-2	65	3276	0.9
2025-07-02 16:25:00.701+00	127	\N	978202981	stationary	0	0	6	-2	64	3280	0.9
2025-07-02 16:25:07.83+00	127	\N	1041420528	stationary	0	0	3	1	62	3281	0.9
2025-07-02 16:33:30.244+00	127	\N	1126982881	stationary	0	0	3	-1	65	3284	0.9
2025-07-02 16:35:00.757+00	127	\N	978202981	stationary	0	0	7	-2	65	3285	0.9
2025-07-02 16:35:07.873+00	127	\N	1041420528	stationary	0	0	5	0	64	3286	0.9
2025-07-02 16:43:30.282+00	127	\N	1126982881	stationary	0	0	4	0	65	3291	0.9
2025-07-02 16:45:00.825+00	127	\N	978202981	stationary	0	0	7	-2	66	3292	0.9
2025-07-02 16:45:06.295+00	127	\N	1126982881	start-moving	0	1	3	1	50	3293	0.9
2025-07-02 16:45:07.914+00	127	\N	1041420528	stationary	0	0	4	1	64	3294	0.9
2025-07-02 16:46:06.3+00	127	\N	1126982881	stop-moving	1	1	3	-1	65	3295	0.9
2025-07-02 16:55:00.885+00	127	\N	978202981	stationary	0	0	7	-1	65	3300	0.9
2025-07-02 16:55:07.973+00	127	\N	1041420528	stationary	0	0	4	1	64	3301	0.9
2025-07-02 16:56:06.331+00	127	\N	1126982881	stationary	0	0	3	-2	66	3303	0.9
2025-07-02 16:56:55.342+00	127	\N	1126982881	start-moving	0	1	3	-1	65	3305	0.9
2025-07-02 16:57:54.346+00	127	\N	1126982881	stop-moving	1	1	3	-1	65	3306	0.9
2025-07-02 16:59:17.347+00	127	\N	1126982881	start-moving	0	1	4	-1	65	3309	0.9
2025-07-02 17:00:44.353+00	127	\N	1126982881	stop-moving	2	2	3	-1	67	3311	0.9
2025-07-02 17:05:00.979+00	127	\N	978202981	stationary	0	0	6	-2	65	3314	0.9
2025-07-02 17:05:08.074+00	127	\N	1041420528	stationary	0	0	4	0	63	3315	0.9
2025-07-02 17:24:02.46+00	127	\N	1126982881	stop-moving	1	1	4	-1	65	3327	0.9
2025-07-02 17:24:28.466+00	127	\N	1126982881	start-moving	0	1	4	-2	65	3330	0.9
2025-07-02 17:25:01.169+00	127	\N	978202981	stationary	0	0	6	-2	65	3331	0.9
2025-07-02 17:25:08.343+00	127	\N	1041420528	stationary	0	0	5	1	64	3332	0.9
2025-07-02 17:25:28.464+00	127	\N	1126982881	stop-moving	1	1	3	-2	67	3333	0.9
2025-07-02 17:35:01.206+00	127	\N	978202981	stationary	0	0	6	-1	65	3340	0.9
2025-07-02 17:35:08.416+00	127	\N	1041420528	stationary	0	0	5	0	64	3341	0.9
2025-07-02 17:35:28.508+00	127	\N	1126982881	stationary	0	0	3	-2	66	3342	0.9
2025-07-02 17:45:01.242+00	127	\N	978202981	stationary	0	0	6	-2	65	3347	0.9
2025-07-02 17:45:08.484+00	127	\N	1041420528	stationary	0	0	4	1	64	3348	0.9
2025-07-02 17:45:28.547+00	127	\N	1126982881	stationary	0	0	2	-1	65	3349	0.9
2025-07-02 17:55:01.281+00	127	\N	978202981	stationary	0	0	6	-1	67	3352	0.9
2025-07-02 17:55:08.538+00	127	\N	1041420528	stationary	0	0	4	0	65	3353	0.9
2025-07-02 17:55:28.586+00	127	\N	1126982881	stationary	0	0	4	-1	65	3354	0.9
2025-07-02 18:05:01.323+00	127	\N	978202981	stationary	0	0	7	-1	65	3358	0.9
2025-07-02 18:05:08.577+00	127	\N	1041420528	stationary	0	0	5	1	63	3359	0.9
2025-07-02 18:05:28.631+00	127	\N	1126982881	stationary	0	0	4	-2	65	3360	0.9
2025-07-02 18:15:01.357+00	127	\N	978202981	stationary	0	0	7	-1	65	3365	0.9
2025-07-02 18:15:08.619+00	127	\N	1041420528	stationary	0	0	5	1	65	3366	0.9
2025-07-02 18:15:28.702+00	127	\N	1126982881	stationary	0	0	4	-1	66	3367	0.9
2025-07-02 18:25:01.437+00	127	\N	978202981	stationary	0	0	7	-2	65	3372	0.9
2025-07-02 18:25:08.669+00	127	\N	1041420528	stationary	0	0	4	1	64	3373	0.9
2025-07-02 18:25:28.771+00	127	\N	1126982881	stationary	0	0	3	-1	66	3374	0.9
2025-07-02 18:35:01.55+00	127	\N	978202981	stationary	0	0	6	-1	64	3378	0.9
2025-07-02 18:35:08.712+00	127	\N	1041420528	stationary	0	0	4	1	64	3379	0.9
2025-07-02 18:35:28.841+00	127	\N	1126982881	stationary	0	0	3	-1	66	3380	0.9
2025-07-02 18:45:01.626+00	127	\N	978202981	stationary	0	0	6	-1	65	3385	0.9
2025-07-02 18:45:08.759+00	127	\N	1041420528	stationary	0	0	5	2	64	3386	0.9
2025-07-02 18:45:28.91+00	127	\N	1126982881	stationary	0	0	3	-2	66	3387	0.9
2025-07-02 18:55:01.689+00	127	\N	978202981	stationary	0	0	5	-1	65	3390	0.9
2025-07-02 18:55:08.805+00	127	\N	1041420528	stationary	0	0	4	1	64	3391	0.9
2025-07-02 18:55:29.035+00	127	\N	1126982881	stationary	0	0	3	-1	65	3392	0.9
2025-07-02 19:05:01.776+00	127	\N	978202981	stationary	0	0	6	-2	66	3396	0.9
2025-07-02 19:05:08.872+00	127	\N	1041420528	stationary	0	0	5	1	63	3397	0.9
2025-07-02 19:05:29.068+00	127	\N	1126982881	stationary	0	0	2	-1	64	3398	0.9
2025-07-02 19:15:01.845+00	127	\N	978202981	stationary	0	0	7	-1	66	3403	0.9
2025-07-02 19:15:09.013+00	127	\N	1041420528	stationary	0	0	4	1	63	3404	0.9
2025-07-02 19:15:29.109+00	127	\N	1126982881	stationary	0	0	2	-2	65	3405	0.9
2025-07-02 19:25:01.904+00	127	\N	978202981	stationary	0	0	7	-2	65	3408	0.9
2025-07-02 19:25:09.077+00	127	\N	1041420528	stationary	0	0	4	1	63	3409	0.9
2025-07-02 19:25:18.147+00	127	\N	1126982881	start-moving	0	1	1	-7	70	3410	0.9
2025-07-02 19:26:18.149+00	127	\N	1126982881	stop-moving	1	1	3	-2	63	3411	0.9
2025-07-02 19:35:01.947+00	127	\N	978202981	stationary	0	0	6	-1	64	3418	0.9
2025-07-02 19:35:09.126+00	127	\N	1041420528	stationary	0	0	5	1	64	3419	0.9
2025-07-02 19:36:18.186+00	127	\N	1126982881	stationary	0	0	3	-2	65	3420	0.9
2025-07-02 19:45:01.988+00	127	\N	978202981	stationary	0	0	6	-2	65	3425	0.9
2025-07-02 19:45:09.17+00	127	\N	1041420528	stationary	0	0	4	1	64	3426	0.9
2025-07-02 19:46:18.236+00	127	\N	1126982881	stationary	0	0	3	-2	65	3428	0.9
2025-07-02 19:55:02.021+00	127	\N	978202981	stationary	0	0	6	-1	65	3434	0.9
2025-07-02 19:55:09.239+00	127	\N	1041420528	stationary	0	0	5	1	63	3435	0.9
2025-07-02 19:56:18.301+00	127	\N	1126982881	stationary	0	0	3	-2	65	3436	0.9
2025-07-02 20:05:02.062+00	127	\N	978202981	stationary	0	0	6	-1	66	3441	0.9
2025-07-02 20:05:09.313+00	127	\N	1041420528	stationary	0	0	3	0	64	3442	0.9
2025-07-02 20:06:18.349+00	127	\N	1126982881	stationary	0	0	2	-2	66	3443	0.9
2025-07-02 20:15:02.1+00	127	\N	978202981	stationary	0	0	6	-1	65	3449	0.9
2025-07-02 20:15:09.367+00	127	\N	1041420528	stationary	0	0	4	1	63	3450	0.9
2025-07-02 20:16:18.41+00	127	\N	1126982881	stationary	0	0	3	-2	67	3451	0.9
2025-07-02 20:25:02.14+00	127	\N	978202981	stationary	0	0	6	-1	66	3455	0.9
2025-07-02 20:25:09.41+00	127	\N	1041420528	stationary	0	0	4	1	62	3456	0.9
2025-07-02 20:26:18.454+00	127	\N	1126982881	stationary	0	0	3	-1	66	3458	0.9
2025-07-02 21:05:02.333+00	127	\N	978202981	stationary	0	0	6	-1	65	3481	0.9
2025-07-02 21:05:09.596+00	127	\N	1041420528	stationary	0	0	4	0	65	3482	0.9
2025-07-02 21:06:18.766+00	127	\N	1126982881	stationary	0	0	3	-1	65	3483	0.9
2025-07-02 21:15:02.37+00	127	\N	978202981	stationary	0	0	7	0	65	3488	0.9
2025-07-02 21:15:09.635+00	127	\N	1041420528	stationary	0	0	4	1	64	3489	0.9
2025-07-02 21:16:18.857+00	127	\N	1126982881	stationary	0	0	3	-2	65	3490	0.9
2025-07-02 21:25:02.441+00	127	\N	978202981	stationary	0	0	6	-1	65	3493	0.9
2025-07-02 21:25:09.689+00	127	\N	1041420528	stationary	0	0	4	0	64	3494	0.9
2025-07-02 21:26:18.898+00	127	\N	1126982881	stationary	0	0	3	-2	65	3496	0.9
2025-07-02 21:35:02.502+00	127	\N	978202981	stationary	0	0	6	-1	65	3502	0.9
2025-07-02 21:35:09.823+00	127	\N	1041420528	stationary	0	0	5	1	63	3503	0.9
2025-07-02 21:36:18.944+00	127	\N	1126982881	stationary	0	0	3	-2	65	3504	0.9
2025-07-02 21:45:02.577+00	127	\N	978202981	stationary	0	0	6	-2	65	3510	0.9
2025-07-02 21:45:09.918+00	127	\N	1041420528	stationary	0	0	3	1	63	3511	0.9
2025-07-02 21:46:18.986+00	127	\N	1126982881	stationary	0	0	3	-1	65	3512	0.9
2025-07-02 21:55:02.64+00	127	\N	978202981	stationary	0	0	7	-2	65	3515	0.9
2025-07-02 21:55:10.047+00	127	\N	1041420528	stationary	0	0	4	0	64	3516	0.9
2025-07-02 21:56:19.017+00	127	\N	1126982881	stationary	0	0	3	-2	64	3517	0.9
2025-07-02 22:05:02.748+00	127	\N	978202981	stationary	0	0	6	-1	64	3522	0.9
2025-07-02 22:05:10.084+00	127	\N	1041420528	stationary	0	0	3	1	63	3523	0.9
2025-07-02 22:06:19.06+00	127	\N	1126982881	stationary	0	0	3	-3	65	3524	0.9
2025-07-02 22:15:02.787+00	127	\N	978202981	stationary	0	0	7	-2	64	3529	0.9
2025-07-02 22:15:10.203+00	127	\N	1041420528	stationary	0	0	4	1	63	3531	0.9
2025-07-02 22:16:19.126+00	127	\N	1126982881	stationary	0	0	2	-2	65	3532	0.9
2025-07-02 22:25:02.824+00	127	\N	978202981	stationary	0	0	6	-2	65	3534	0.9
2025-07-02 22:25:10.24+00	127	\N	1041420528	stationary	0	0	4	0	64	3535	0.9
2025-07-02 22:26:19.16+00	127	\N	1126982881	stationary	0	0	3	-1	65	3536	0.9
2025-07-02 22:38:03.221+00	127	\N	1126982881	stop-moving	1	1	3	-2	65	3549	0.9
2025-07-02 22:45:02.903+00	127	\N	978202981	stationary	0	0	7	-1	65	3556	0.9
2025-07-02 22:45:10.337+00	127	\N	1041420528	stationary	0	0	3	0	64	3557	0.9
2025-07-02 22:48:03.254+00	127	\N	1126982881	stationary	0	0	3	-2	66	3558	0.9
2025-07-02 22:55:02.949+00	127	\N	978202981	stationary	0	0	6	-2	64	3560	0.9
2025-07-02 22:55:10.37+00	127	\N	1041420528	stationary	0	0	4	1	64	3561	0.9
2025-07-02 22:58:03.317+00	127	\N	1126982881	stationary	0	0	4	-1	65	3562	0.9
2025-07-02 23:05:02.983+00	127	\N	978202981	stationary	0	0	7	-2	65	3568	0.9
2025-07-02 23:05:10.406+00	127	\N	1041420528	stationary	0	0	5	1	63	3569	0.9
2025-07-02 23:08:03.392+00	127	\N	1126982881	stationary	0	0	3	-2	66	3570	0.9
2025-07-02 23:15:03.049+00	127	\N	978202981	stationary	0	0	5	-1	65	3575	0.9
2025-07-02 23:15:10.436+00	127	\N	1041420528	stationary	0	0	4	1	64	3576	0.9
2025-07-02 23:17:35.441+00	127	\N	1126982881	start-moving	0	1	3	-2	65	3577	0.9
2025-07-02 23:18:34.454+00	127	\N	1126982881	stop-moving	1	1	3	-1	64	3578	0.9
2025-07-02 23:25:03.096+00	127	\N	978202981	stationary	0	0	6	-1	65	3582	0.9
2025-07-02 23:25:10.476+00	127	\N	1041420528	stationary	0	0	4	1	63	3583	0.9
2025-07-02 23:28:34.565+00	127	\N	1126982881	stationary	0	0	2	-1	64	3584	0.9
2025-07-02 23:35:03.148+00	127	\N	978202981	stationary	0	0	7	-1	66	3590	0.9
2025-07-02 23:35:10.578+00	127	\N	1041420528	stationary	0	0	4	1	64	3591	0.9
2025-07-02 23:38:34.615+00	127	\N	1126982881	stationary	0	0	3	-2	65	3593	0.9
2025-07-02 23:45:10.643+00	127	\N	1041420528	stationary	0	0	4	0	65	3598	0.9
2025-07-02 23:45:03.189+00	127	\N	978202981	stationary	0	0	7	-1	65	3599	0.9
2025-07-02 23:48:34.644+00	127	\N	1126982881	stationary	0	0	4	-1	65	3600	0.9
2025-07-02 23:55:10.703+00	127	\N	1041420528	stationary	0	0	4	1	64	3601	0.9
2025-07-02 23:55:03.255+00	127	\N	978202981	stationary	0	0	8	-2	66	3602	0.9
2025-07-02 23:58:34.686+00	127	\N	1126982881	stationary	0	0	3	-1	66	3603	0.9
\.


--
-- Data for Name: _hyper_3_23_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_3_23_chunk ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
2025-07-17 05:36:26.752+00	127	telegraf	978202981	stationary	0	0	4	-3	65	4594	1
2025-07-17 05:38:18.248+00	127	telegraf	1041420528	stationary	0	0	2	-2	62	4597	1
2025-07-17 05:39:18.745+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	4598	1
2025-07-17 05:46:26.858+00	127	telegraf	978202981	stationary	0	0	4	-4	66	4599	1
2025-07-17 05:49:18.797+00	127	telegraf	1126982881	stationary	0	0	4	0	65	4602	1
2025-07-17 05:56:26.952+00	127	telegraf	978202981	stationary	0	0	5	-4	65	4608	1
2025-07-17 05:58:18.376+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4609	1
2025-07-17 05:59:18.848+00	127	telegraf	1126982881	stationary	0	0	3	0	64	4611	1
2025-07-17 06:08:18.496+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	4617	1
2025-07-17 06:18:18.559+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	4622	1
2025-07-17 06:28:18.626+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	4632	1
2025-07-17 06:38:18.67+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	4638	1
2025-07-17 06:39:19.033+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	4639	1
2025-07-17 06:46:27.224+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4642	1
2025-07-17 06:48:18.703+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4644	1
2025-07-17 06:49:19.07+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	4646	1
2025-07-17 06:56:27.264+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4651	1
2025-07-17 06:58:18.734+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4653	1
2025-07-17 06:59:19.107+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	4654	1
2025-07-17 07:06:27.36+00	127	telegraf	978202981	stationary	0	0	3	-4	64	4656	1
2025-07-17 07:08:18.767+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	4657	1
2025-07-17 07:09:19.146+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4659	1
2025-07-17 07:16:27.402+00	127	telegraf	978202981	stationary	0	0	4	-5	65	4660	1
2025-07-17 07:18:18.851+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	4662	1
2025-07-17 07:19:19.184+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4663	1
2025-07-17 07:26:27.444+00	127	telegraf	978202981	stationary	0	0	4	-4	66	4667	1
2025-07-17 07:28:18.904+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	4672	1
2025-07-17 07:29:19.225+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	4673	1
2025-07-17 07:36:27.483+00	127	telegraf	978202981	stationary	0	0	5	-4	65	4675	1
2025-07-17 07:38:18.961+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4676	1
2025-07-17 07:39:19.319+00	127	telegraf	1126982881	stationary	0	0	4	0	64	4678	1
2025-07-17 07:46:27.532+00	127	telegraf	978202981	stationary	0	0	3	-4	65	4680	1
2025-07-17 07:48:19.014+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	4682	1
2025-07-17 07:58:19.074+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	4691	1
2025-07-17 08:08:19.119+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4695	1
2025-07-17 08:18:19.173+00	127	telegraf	1041420528	stationary	0	0	1	-2	63	4700	1
2025-07-17 08:19:19.544+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4701	1
2025-07-17 08:26:27.855+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4704	1
2025-07-17 08:28:19.267+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	4706	1
2025-07-17 08:29:19.622+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	4710	1
2025-07-17 08:36:27.916+00	127	telegraf	978202981	stationary	0	0	4	-3	65	4712	1
2025-07-17 08:38:19.338+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4713	1
2025-07-17 08:39:19.676+00	127	telegraf	1126982881	stationary	0	0	4	0	65	4714	1
2025-07-17 08:46:27.964+00	127	telegraf	978202981	stationary	0	0	3	-4	66	4717	1
2025-07-17 08:48:19.387+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	4718	1
2025-07-17 08:49:19.734+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4719	1
2025-07-17 08:58:19.482+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4723	1
2025-07-17 08:59:19.774+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4725	1
2025-07-17 09:08:19.512+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4731	1
2025-07-17 09:18:19.55+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	4736	1
2025-07-17 09:26:28.2+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4740	1
2025-07-17 09:38:19.651+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	4749	1
2025-07-17 09:46:28.272+00	127	telegraf	978202981	stationary	0	0	3	-4	65	4752	1
2025-07-17 09:49:19.97+00	127	telegraf	1126982881	stationary	0	0	3	0	65	4755	1
2025-07-17 09:56:28.324+00	127	telegraf	978202981	stationary	0	0	4	-4	64	4758	1
2025-07-17 09:59:19.994+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4760	1
2025-07-17 10:06:28.357+00	127	telegraf	978202981	stationary	0	0	3	-5	65	4765	1
2025-07-17 10:09:20.039+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	4768	1
2025-07-17 10:16:28.406+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4770	1
2025-07-17 10:18:19.849+00	127	telegraf	1041420528	stationary	0	0	3	-2	65	4772	1
2025-07-17 10:19:20.13+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4773	1
2025-07-17 10:26:28.467+00	127	telegraf	978202981	stationary	0	0	4	-3	65	4776	1
2025-07-17 10:28:19.904+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4777	1
2025-07-17 10:29:20.209+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4778	1
2025-07-17 10:36:28.594+00	127	telegraf	978202981	stationary	0	0	4	-5	65	4783	1
2025-07-17 10:38:19.958+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	4784	1
2025-07-17 10:39:20.278+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4786	1
2025-07-17 10:46:28.697+00	127	telegraf	978202981	stationary	0	0	4	-3	64	4793	1
2025-07-17 10:48:20.003+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	4794	1
2025-07-17 10:49:20.333+00	127	telegraf	1126982881	stationary	0	0	4	0	65	4796	1
2025-07-17 10:58:20.125+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4799	1
2025-07-17 10:59:20.414+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4800	1
2025-07-17 11:06:28.805+00	127	telegraf	978202981	stationary	0	0	4	-3	65	4804	1
2025-07-17 11:08:20.203+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	4805	1
2025-07-17 11:18:20.283+00	127	telegraf	1041420528	stationary	0	0	2	-2	66	4812	1
2025-07-17 12:36:29.238+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4862	1
2025-07-17 12:38:20.674+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	4863	1
2025-07-17 12:39:20.835+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4864	1
2025-07-17 12:48:20.73+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	4869	1
2025-07-17 12:49:20.927+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4871	1
2025-07-17 12:58:20.785+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	4874	1
2025-07-17 12:59:20.989+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	4875	1
2025-07-17 13:06:29.495+00	127	telegraf	978202981	stationary	0	0	5	-3	64	4880	1
2025-07-17 13:08:20.833+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	4881	1
2025-07-17 13:09:21.034+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	4883	1
2025-07-17 13:16:29.563+00	127	telegraf	978202981	stationary	0	0	4	-5	65	4885	1
2025-07-17 13:18:20.939+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4888	1
2025-07-17 13:19:21.11+00	127	telegraf	1126982881	stationary	0	0	5	-1	65	4890	1
2025-07-17 13:26:29.604+00	127	telegraf	978202981	stationary	0	0	4	-5	65	4892	1
2025-07-17 13:28:21.004+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4894	1
2025-07-17 13:29:21.188+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4895	1
2025-07-17 13:36:29.651+00	127	telegraf	978202981	stationary	0	0	4	-5	66	4899	1
2025-07-17 13:38:21.064+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4900	1
2025-07-17 13:39:21.247+00	127	telegraf	1126982881	stationary	0	0	5	-1	65	4901	1
2025-07-17 13:46:29.688+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4905	1
2025-07-17 13:48:21.135+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	4908	1
2025-07-17 13:49:21.297+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4909	1
2025-07-17 13:56:29.74+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4911	1
2025-07-17 13:58:21.171+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	4912	1
2025-07-17 13:59:21.341+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4913	1
2025-07-17 14:06:29.829+00	127	telegraf	978202981	stationary	0	0	3	-4	66	4914	1
2025-07-17 14:08:21.201+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	4918	1
2025-07-17 14:09:21.384+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4919	1
2025-07-17 15:25:02.878+00	127	telegraf	840973111	stationary	0	0	4	-1	63	93	1
2025-07-17 15:25:03.632+00	127	telegraf	527134251	stationary	0	0	1	0	65	94	1
2025-07-17 15:26:30.309+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4967	1
2025-07-17 15:27:48.928+00	127	telegraf	1523842139	stationary	0	0	3	-1	65	96	1
2025-07-17 15:27:51.89+00	127	telegraf	840973111	start-moving	0	1	-6	5	88	97	1
2025-07-17 15:28:21.634+00	127	telegraf	1041420528	stationary	0	0	3	-2	63	4969	1
2025-07-17 15:28:51.895+00	127	telegraf	840973111	stop-moving	1	1	4	0	61	99	1
2025-07-17 15:29:21.743+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4970	1
2025-07-17 15:29:25.938+00	127	telegraf	1523842139	start-moving	0	1	4	-1	65	102	1
2025-07-17 15:30:25.938+00	127	telegraf	1523842139	stop-moving	1	1	4	-2	66	103	1
2025-07-17 15:35:00.988+00	127	telegraf	1523842139	start-moving	0	1	-12	-16	62	109	1
2025-07-17 15:35:00.931+00	127	telegraf	840973111	start-moving	0	1	-5	8	78	110	1
2025-07-17 15:35:01.682+00	127	telegraf	527134251	start-moving	0	1	-17	49	76	111	1
2025-07-17 15:36:00.99+00	127	telegraf	1523842139	stop-moving	4	1	4	-1	65	112	1
2025-07-17 15:36:00.685+00	127	telegraf	527134251	stop-moving	2	1	1	0	64	115	1
2025-07-17 15:36:07.995+00	127	telegraf	1523842139	start-moving	0	1	-28	-43	66	118	1
2025-07-17 15:36:04.684+00	127	telegraf	527134251	start-moving	0	1	-9	5	38	119	1
2025-07-17 15:36:02.948+00	127	telegraf	840973111	stop-moving	4	3	4	0	61	120	1
2025-07-17 15:36:06.947+00	127	telegraf	840973111	start-moving	0	1	-15	6	62	123	1
2025-07-17 15:36:30.362+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4971	1
2025-07-17 15:38:16.037+00	127	telegraf	1523842139	stop-moving	58	59	1	0	64	133	1
2025-07-17 15:38:16.688+00	127	telegraf	527134251	stop-moving	61	73	1	-2	64	136	1
2025-07-17 15:38:21.75+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4972	1
2025-07-17 15:38:47.962+00	127	telegraf	840973111	stop-moving	59	60	4	0	61	140	1
2025-07-17 15:39:21.79+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	4973	1
2025-07-17 15:46:36.118+00	127	telegraf	1523842139	start-moving	0	1	36	58	89	146	1
2025-07-17 15:46:30.406+00	127	telegraf	978202981	stationary	0	0	4	-4	65	4982	1
2025-07-17 15:46:36.024+00	127	telegraf	840973111	start-moving	0	1	73	-28	119	147	1
2025-07-17 15:46:36.725+00	127	telegraf	527134251	start-moving	0	1	-125	77	127	148	1
2025-07-17 15:47:42.132+00	127	telegraf	1523842139	stop-moving	7	5	2	-1	65	152	1
2025-07-17 15:47:40.024+00	127	telegraf	840973111	stop-moving	6	3	5	0	61	155	1
2025-07-17 15:48:21.822+00	127	telegraf	1041420528	stationary	0	0	3	-2	65	4984	1
2025-07-17 15:49:21.863+00	127	telegraf	1126982881	stationary	0	0	4	-1	67	4985	1
2025-07-17 15:51:17.141+00	127	telegraf	1523842139	start-moving	0	1	-9	-17	67	161	1
2025-07-17 15:51:16.034+00	127	telegraf	840973111	start-moving	0	1	5	8	61	162	1
2025-07-17 15:51:17.751+00	127	telegraf	527134251	start-moving	0	1	2	0	64	163	1
2025-07-17 15:52:28.159+00	127	telegraf	1523842139	stop-moving	8	18	1	-1	65	164	1
2025-07-17 15:54:56.057+00	127	telegraf	840973111	start-moving	0	1	4	-1	62	173	1
2025-07-17 15:55:55.056+00	127	telegraf	840973111	stop-moving	1	1	4	0	61	175	1
2025-07-17 15:56:30.453+00	127	telegraf	978202981	stationary	0	0	3	-3	65	4987	1
2025-07-17 15:56:45.779+00	127	telegraf	527134251	start-moving	0	1	-5	0	76	178	1
2025-07-17 15:57:45.783+00	127	telegraf	527134251	stop-moving	1	1	2	0	64	179	1
2025-07-17 15:58:21.881+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4988	1
2025-07-17 15:59:21.925+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	4989	1
2025-07-17 16:02:28.193+00	127	telegraf	1523842139	stationary	0	0	1	-1	65	185	1
2025-07-17 16:05:55.093+00	127	telegraf	840973111	stationary	0	0	3	0	61	188	1
2025-07-17 16:06:30.497+00	127	telegraf	978202981	stationary	0	0	4	-5	65	4992	1
2025-07-17 16:07:45.855+00	127	telegraf	527134251	stationary	0	0	1	0	64	189	1
2025-07-17 16:08:21.922+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	4993	1
2025-07-17 16:12:28.235+00	127	telegraf	1523842139	stationary	0	0	2	-1	66	191	1
2025-07-17 16:15:06.125+00	127	telegraf	840973111	start-moving	0	1	3	-1	62	194	1
2025-07-17 16:16:30.536+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5001	1
2025-07-17 16:16:56.254+00	127	telegraf	1523842139	start-moving	0	1	1	0	52	198	1
2025-07-17 16:16:54.134+00	127	telegraf	840973111	start-moving	0	1	4	-1	63	199	1
2025-07-17 16:17:45.895+00	127	telegraf	527134251	stationary	0	0	1	1	64	200	1
2025-07-17 16:17:56.262+00	127	telegraf	1523842139	stop-moving	1	1	2	0	64	201	1
2025-07-17 16:17:54.138+00	127	telegraf	840973111	stop-moving	1	1	5	0	61	204	1
2025-07-17 16:19:22.046+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5004	1
2025-07-17 16:25:39.167+00	127	telegraf	840973111	start-moving	0	1	3	1	64	212	1
2025-07-17 16:26:30.627+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5005	1
2025-07-17 16:28:22.004+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	5007	1
2025-07-17 16:29:22.104+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5008	1
2025-07-17 16:36:30.666+00	127	telegraf	978202981	stationary	0	0	3	-4	65	5010	1
2025-07-17 16:38:22.04+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	5012	1
2025-07-17 16:46:30.707+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5019	1
2025-07-17 16:48:22.128+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	5021	1
2025-07-17 16:49:22.179+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5022	1
2025-07-17 16:58:22.178+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	5025	1
2025-07-17 16:59:22.222+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5026	1
2025-07-17 17:08:22.232+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	5029	1
2025-07-17 17:09:22.261+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5031	1
2025-07-17 17:16:30.832+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5036	1
2025-07-17 17:18:22.281+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	5038	1
2025-07-17 17:19:22.301+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5040	1
2025-07-17 17:26:30.866+00	127	telegraf	978202981	stationary	0	0	4	-4	64	5041	1
2025-07-17 17:28:22.331+00	127	telegraf	1041420528	stationary	0	0	3	-2	65	5043	1
2025-07-17 17:29:22.349+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	5044	1
2025-07-17 17:36:30.958+00	127	telegraf	978202981	stationary	0	0	3	-5	65	5046	1
2025-07-17 17:38:22.395+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	5047	1
2025-07-17 17:46:31.098+00	127	telegraf	978202981	stationary	0	0	4	-3	64	5056	1
2025-07-17 17:48:22.436+00	127	telegraf	1041420528	stationary	0	0	2	-3	62	5057	1
2025-07-17 17:49:22.428+00	127	telegraf	1126982881	stationary	0	0	3	0	64	5058	1
2025-07-17 17:56:31.16+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5060	1
2025-07-17 17:58:22.545+00	127	telegraf	1041420528	stationary	0	0	3	-2	66	5061	1
2025-07-17 17:59:22.463+00	127	telegraf	1126982881	stationary	0	0	4	0	65	5064	1
2025-07-17 18:07:39.221+00	127	telegraf	978202981	start-moving	0	1	3	-5	64	5068	1
2025-07-17 18:08:22.62+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	5069	1
2025-07-17 18:08:38.227+00	127	telegraf	978202981	stop-moving	1	1	4	-4	64	5070	1
2025-07-17 18:09:22.561+00	127	telegraf	1126982881	stationary	0	0	3	0	67	5073	1
2025-07-17 18:38:22.812+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	5089	1
2025-07-17 18:38:38.352+00	127	telegraf	978202981	stationary	0	0	4	-4	66	5090	1
2025-07-17 18:39:22.77+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	5091	1
2025-07-17 18:48:22.842+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	5096	1
2025-07-17 18:48:38.442+00	127	telegraf	978202981	stationary	0	0	5	-4	65	5097	1
2025-07-17 18:49:22.817+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	5098	1
2025-07-17 18:58:22.879+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	5102	1
2025-07-17 18:58:38.488+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5103	1
2025-07-17 18:59:22.858+00	127	telegraf	1126982881	stationary	0	0	4	0	65	5104	1
2025-07-17 19:08:22.945+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5109	1
2025-07-17 19:09:22.914+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	5111	1
2025-07-17 19:18:23.01+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	5116	1
2025-07-17 19:19:22.959+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5118	1
2025-07-17 19:28:23.059+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5120	1
2025-07-17 19:28:38.617+00	127	telegraf	978202981	stationary	0	0	3	-4	64	5121	1
2025-07-17 19:29:22.994+00	127	telegraf	1126982881	stationary	0	0	3	0	64	5122	1
2025-07-17 19:38:23.113+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	5128	1
2025-07-17 19:38:38.665+00	127	telegraf	978202981	stationary	0	0	4	-3	65	5129	1
2025-07-17 19:39:23.026+00	127	telegraf	1126982881	stationary	0	0	5	-1	66	5130	1
2025-07-17 19:48:38.712+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5136	1
2025-07-17 19:49:23.063+00	127	telegraf	1126982881	stationary	0	0	4	0	64	5137	1
2025-07-17 19:58:23.215+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5140	1
2025-07-17 19:58:38.778+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5141	1
2025-07-17 19:59:23.096+00	127	telegraf	1126982881	stationary	0	0	5	-1	65	5142	1
2025-07-17 20:08:23.268+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	5151	1
2025-07-17 20:08:38.899+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5152	1
2025-07-17 20:09:23.15+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	5153	1
2025-07-17 20:18:23.366+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	5160	1
2025-07-17 20:19:23.197+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	5163	1
2025-07-17 20:28:23.419+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	5171	1
2025-07-17 20:28:39.028+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5172	1
2025-07-17 20:29:23.24+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	5173	1
2025-07-17 20:38:39.076+00	127	telegraf	978202981	stationary	0	0	4	-4	66	5178	1
2025-07-17 20:39:23.317+00	127	telegraf	1126982881	stationary	0	0	4	0	65	5179	1
2025-07-17 20:48:23.55+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5189	1
2025-07-17 20:48:39.124+00	127	telegraf	978202981	stationary	0	0	4	-5	66	5190	1
2025-07-17 20:49:23.369+00	127	telegraf	1126982881	stationary	0	0	3	-1	64	5191	1
2025-07-17 20:58:23.618+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	5195	1
2025-07-17 20:59:23.423+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5197	1
2025-07-17 21:08:23.651+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	5200	1
2025-07-17 21:08:39.199+00	127	telegraf	978202981	stationary	0	0	4	-3	66	5201	1
2025-07-17 21:09:23.486+00	127	telegraf	1126982881	stationary	0	0	5	-1	66	5202	1
2025-07-17 21:18:23.686+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	5210	1
2025-07-17 21:18:39.289+00	127	telegraf	978202981	stationary	0	0	4	-5	66	5211	1
2025-07-17 21:19:23.552+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5212	1
2025-07-17 21:28:23.759+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5215	1
2025-07-17 21:28:39.332+00	127	telegraf	978202981	stationary	0	0	3	-4	64	5216	1
2025-07-17 21:29:23.617+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5218	1
2025-07-17 21:38:39.378+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5222	1
2025-07-17 21:39:23.679+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	5223	1
2025-07-17 21:48:23.876+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	5228	1
2025-07-17 21:48:39.415+00	127	telegraf	978202981	stationary	0	0	3	-5	65	5231	1
2025-07-17 21:49:23.728+00	127	telegraf	1126982881	stationary	0	0	3	0	64	5233	1
2025-07-18 06:08:26.876+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	5534	1
2025-07-18 06:08:42.193+00	127	telegraf	978202981	stationary	0	0	3	-5	65	5535	1
2025-07-18 06:09:26.235+00	127	telegraf	1126982881	stationary	0	0	3	0	64	5536	1
2025-07-18 06:38:27.04+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	5552	1
2025-07-18 06:38:42.344+00	127	telegraf	978202981	stationary	0	0	4	-4	64	5553	1
2025-07-18 06:39:26.346+00	127	telegraf	1126982881	stationary	0	0	3	-1	64	5554	1
2025-07-18 06:48:27.091+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	5557	1
2025-07-18 06:48:42.383+00	127	telegraf	978202981	stationary	0	0	3	-4	66	5558	1
2025-07-18 06:49:26.385+00	127	telegraf	1126982881	stationary	0	0	4	-1	64	5559	1
2025-07-18 06:58:27.143+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	5564	1
2025-07-18 06:58:42.427+00	127	telegraf	978202981	stationary	0	0	3	-4	65	5565	1
2025-07-18 06:59:26.419+00	127	telegraf	1126982881	stationary	0	0	3	-1	67	5566	1
2025-07-18 07:08:42.503+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5575	1
2025-07-18 07:18:42.549+00	127	telegraf	978202981	stationary	0	0	4	-4	66	5581	1
2025-07-18 07:19:26.54+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5582	1
2025-07-18 07:28:27.292+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	5586	1
2025-07-18 07:28:42.58+00	127	telegraf	978202981	stationary	0	0	4	-4	63	5587	1
2025-07-18 07:29:26.598+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5588	1
2025-07-18 07:38:27.347+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	5595	1
2025-07-18 07:38:42.62+00	127	telegraf	978202981	stationary	0	0	3	-4	64	5596	1
2025-07-18 07:39:26.676+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5597	1
2025-07-18 07:48:27.44+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5600	1
2025-07-18 07:49:26.761+00	127	telegraf	1126982881	stationary	0	0	3	-1	64	5602	1
2025-07-18 07:50:01.765+00	127	telegraf	1126982881	start-moving	0	1	4	-1	64	5603	1
2025-07-18 07:50:01.671+00	127	telegraf	978202981	start-moving	0	1	4	-4	65	5604	1
2025-07-18 07:51:00.772+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	65	5605	1
2025-07-18 07:51:00.677+00	127	telegraf	978202981	stop-moving	1	1	3	-4	65	5608	1
2025-07-18 07:58:27.488+00	127	telegraf	1041420528	stationary	0	0	1	0	64	5614	1
2025-07-18 08:01:00.72+00	127	telegraf	978202981	stationary	0	0	4	-4	64	5617	1
2025-07-18 08:11:00.895+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5625	1
2025-07-18 08:18:27.619+00	127	telegraf	1041420528	stationary	0	0	2	0	64	5627	1
2025-07-18 08:21:00.932+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	5628	1
2025-07-18 08:21:00.803+00	127	telegraf	978202981	stationary	0	0	4	-3	66	5629	1
2025-07-18 08:28:27.675+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5633	1
2025-07-18 08:31:00.972+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5635	1
2025-07-18 08:31:00.916+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5636	1
2025-07-18 08:38:27.732+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	5641	1
2025-07-18 08:41:00.995+00	127	telegraf	978202981	stationary	0	0	4	-4	64	5643	1
2025-07-18 08:48:27.785+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	5645	1
2025-07-18 08:51:01.064+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5647	1
2025-07-18 09:01:01.094+00	127	telegraf	1126982881	stationary	0	0	3	0	65	5653	1
2025-07-18 09:08:27.912+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	5659	1
2025-07-18 09:11:01.135+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5660	1
2025-07-18 09:11:01.156+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5661	1
2025-07-18 09:18:27.971+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5663	1
2025-07-18 09:21:01.168+00	127	telegraf	1126982881	stationary	0	0	4	0	65	5664	1
2025-07-18 09:21:01.198+00	127	telegraf	978202981	stationary	0	0	3	-4	66	5665	1
2025-07-18 09:28:28.02+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	5669	1
2025-07-18 09:31:01.208+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5670	1
2025-07-18 09:31:01.246+00	127	telegraf	978202981	stationary	0	0	3	-4	66	5671	1
2025-07-18 09:41:01.301+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5678	1
2025-07-18 09:48:28.125+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	5681	1
2025-07-18 09:51:01.344+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	5682	1
2025-07-18 09:51:01.365+00	127	telegraf	978202981	stationary	0	0	4	-4	66	5683	1
2025-07-18 09:58:28.171+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	5687	1
2025-07-18 10:01:01.396+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5688	1
2025-07-18 10:01:01.402+00	127	telegraf	978202981	stationary	0	0	4	-4	64	5689	1
2025-07-18 10:08:28.26+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	5695	1
2025-07-18 10:11:01.453+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5696	1
2025-07-18 10:11:01.435+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5697	1
2025-07-18 10:18:28.313+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5699	1
2025-07-18 10:21:01.528+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	5700	1
2025-07-18 10:28:28.37+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	5704	1
2025-07-18 10:31:01.591+00	127	telegraf	1126982881	stationary	0	0	4	0	65	5706	1
2025-07-18 10:31:01.521+00	127	telegraf	978202981	stationary	0	0	3	-4	66	5707	1
2025-07-18 10:38:28.44+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	5713	1
2025-07-18 10:41:01.553+00	127	telegraf	978202981	stationary	0	0	5	-4	65	5715	1
2025-07-18 10:48:28.494+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	5717	1
2025-07-18 10:51:01.694+00	127	telegraf	1126982881	stationary	0	0	4	-1	64	5718	1
2025-07-18 10:51:01.603+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5719	1
2025-07-18 10:58:28.554+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	5721	1
2025-07-18 11:01:01.735+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5724	1
2025-07-18 11:01:01.723+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5725	1
2025-07-18 11:08:28.599+00	127	telegraf	1041420528	stationary	0	0	3	-2	63	5731	1
2025-07-18 11:11:01.776+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	5734	1
2025-07-18 11:11:01.816+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5735	1
2025-07-18 11:28:28.72+00	127	telegraf	1041420528	stationary	0	0	2	-2	66	5742	1
2025-07-18 11:31:01.849+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	5744	1
2025-07-18 11:31:01.934+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5745	1
2025-07-18 11:38:28.771+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5748	1
2025-07-18 11:41:01.972+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5753	1
2025-07-18 11:51:01.938+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5758	1
2025-07-18 11:51:02.012+00	127	telegraf	978202981	stationary	0	0	3	-4	65	5759	1
2025-07-18 11:58:28.875+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5761	1
2025-07-18 12:01:01.972+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5763	1
2025-07-18 12:01:02.05+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5764	1
2025-07-18 12:08:28.926+00	127	telegraf	1041420528	stationary	0	0	2	-2	62	5767	1
2025-07-18 12:11:02.014+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5772	1
2025-07-18 12:11:02.129+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5773	1
2025-07-18 12:18:28.977+00	127	telegraf	1041420528	stationary	0	0	1	-2	65	5776	1
2025-07-18 12:21:02.1+00	127	telegraf	1126982881	stationary	0	0	4	-1	64	5777	1
2025-07-18 12:28:29.072+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	5780	1
2025-07-18 12:31:02.199+00	127	telegraf	978202981	stationary	0	0	4	-5	65	5782	1
2025-07-18 13:51:02.66+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	5831	1
2025-07-18 13:51:02.648+00	127	telegraf	978202981	stationary	0	0	3	-4	64	5832	1
2025-07-18 13:58:30.077+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	5834	1
2025-07-18 14:01:02.707+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	5838	1
2025-07-18 14:01:02.731+00	127	telegraf	978202981	stationary	0	0	4	-4	65	5839	1
2025-07-18 14:08:30.256+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	5842	1
2025-07-18 14:11:02.738+00	127	telegraf	1126982881	stationary	0	0	4	0	65	5843	1
2025-07-19 16:38:29.598+00	127	telegraf	1041420528	stop-moving	39	44	3	-1	64	7023	1
2025-07-19 16:40:58.606+00	127	telegraf	1041420528	start-moving	0	1	3	-1	64	7030	1
2025-07-19 16:41:08.72+00	127	telegraf	1126982881	start-moving	0	1	3	-2	67	7031	1
2025-07-19 16:41:09.126+00	127	telegraf	978202981	start-moving	0	1	4	-5	65	7033	1
2025-07-19 16:42:08.729+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	66	7035	1
2025-07-19 16:42:08.614+00	127	telegraf	1041420528	stop-moving	6	7	16	-11	60	7038	1
2025-07-19 16:42:09.135+00	127	telegraf	978202981	stop-moving	1	1	3	-3	65	7041	1
2025-07-19 16:46:43.643+00	127	telegraf	1041420528	start-moving	0	1	7	-34	63	7053	1
2025-07-19 16:46:53.744+00	127	telegraf	1126982881	start-moving	0	1	3	-1	65	7055	1
2025-07-19 16:47:53.75+00	127	telegraf	1126982881	stop-moving	1	1	4	-1	66	7059	1
2025-07-19 16:47:53.646+00	127	telegraf	1041420528	stop-moving	9	10	3	-1	64	7062	1
2025-07-19 16:52:09.166+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7072	1
2025-07-19 16:57:53.786+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	7077	1
2025-07-19 16:57:53.698+00	127	telegraf	1041420528	stationary	0	0	4	-2	64	7078	1
2025-07-19 17:02:09.2+00	127	telegraf	978202981	stationary	0	0	3	-4	65	7081	1
2025-07-19 17:07:53.866+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	7082	1
2025-07-19 17:07:53.754+00	127	telegraf	1041420528	stationary	0	0	4	-1	64	7083	1
2025-07-19 17:12:09.234+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7085	1
2025-07-19 17:17:53.907+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	7090	1
2025-07-19 17:17:53.849+00	127	telegraf	1041420528	stationary	0	0	4	-1	64	7091	1
2025-07-19 17:27:53.986+00	127	telegraf	1041420528	stationary	0	0	4	-1	66	7096	1
2025-07-19 17:37:54.042+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	7100	1
2025-07-19 17:37:54.128+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	7101	1
2025-07-19 17:42:09.521+00	127	telegraf	978202981	stationary	0	0	4	-2	66	7103	1
2025-07-19 17:47:54.125+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	7108	1
2025-07-19 17:47:54.295+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	7109	1
2025-07-19 17:52:09.596+00	127	telegraf	978202981	stationary	0	0	3	-3	65	7112	1
2025-07-19 17:57:54.181+00	127	telegraf	1126982881	stationary	0	0	4	-3	64	7114	1
2025-07-19 17:57:54.435+00	127	telegraf	1041420528	stationary	0	0	4	0	65	7115	1
2025-07-19 18:02:09.622+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7116	1
2025-07-19 18:07:54.286+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	7118	1
2025-07-19 18:07:54.569+00	127	telegraf	1041420528	stationary	0	0	4	-1	64	7119	1
2025-07-19 18:12:09.659+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7121	1
2025-07-19 18:17:54.367+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	7126	1
2025-07-19 18:17:54.75+00	127	telegraf	1041420528	stationary	0	0	4	-1	65	7127	1
2025-07-19 18:33:18.964+00	127	telegraf	1041420528	stop-moving	1	1	1	0	64	7139	1
2025-07-19 18:37:54.442+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7143	1
2025-07-19 18:42:09.819+00	127	telegraf	978202981	stationary	0	0	3	-4	66	7146	1
2025-07-19 18:43:19.038+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	7148	1
2025-07-19 18:47:54.473+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	7149	1
2025-07-19 18:52:09.85+00	127	telegraf	978202981	stationary	0	0	3	-3	66	7153	1
2025-07-19 18:53:19.099+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7154	1
2025-07-19 18:57:54.509+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	7157	1
2025-07-19 19:02:09.88+00	127	telegraf	978202981	stationary	0	0	4	-4	65	7158	1
2025-07-19 19:03:19.254+00	127	telegraf	1041420528	stationary	0	0	1	0	65	7160	1
2025-07-19 19:07:54.55+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	7161	1
2025-07-19 19:13:19.402+00	127	telegraf	1041420528	stationary	0	0	1	0	64	7166	1
2025-07-19 19:17:54.587+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	7167	1
2025-07-19 19:23:19.548+00	127	telegraf	1041420528	stationary	0	0	0	0	64	7172	1
2025-07-19 19:27:54.673+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	7177	1
2025-07-19 19:32:09.999+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7179	1
2025-07-19 19:33:19.722+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7180	1
2025-07-19 19:37:54.724+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	7182	1
2025-07-19 19:42:10.026+00	127	telegraf	978202981	stationary	0	0	5	-3	65	7183	1
2025-07-19 19:43:19.867+00	127	telegraf	1041420528	stationary	0	0	0	-1	64	7184	1
2025-07-19 19:47:54.768+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	7187	1
2025-07-19 19:52:10.073+00	127	telegraf	978202981	stationary	0	0	4	-3	64	7192	1
2025-07-20 08:13:30.29+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	7649	1
2025-07-20 08:17:59.054+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7652	1
2025-07-20 08:22:13.769+00	127	telegraf	978202981	stationary	0	0	3	-2	66	7653	1
2025-07-20 08:22:55.38+00	127	telegraf	1041420528	start-moving	0	1	2	0	61	7654	1
2025-07-20 08:23:55.394+00	127	telegraf	1041420528	stop-moving	1	1	1	-1	65	7655	1
2025-07-20 08:27:59.104+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	7659	1
2025-07-20 08:32:13.804+00	127	telegraf	978202981	stationary	0	0	4	-4	65	7661	1
2025-07-20 08:37:59.206+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	7666	1
2025-07-20 08:42:13.838+00	127	telegraf	978202981	stationary	0	0	4	-4	66	7673	1
2025-07-20 08:43:55.496+00	127	telegraf	1041420528	stationary	0	0	1	0	64	7674	1
2025-07-20 08:47:19.848+00	127	telegraf	978202981	start-moving	0	1	4	-3	65	7676	1
2025-07-20 08:47:59.251+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	7677	1
2025-07-20 08:48:59.853+00	127	telegraf	978202981	stop-moving	3	3	4	-4	65	7678	1
2025-07-20 08:49:27.855+00	127	telegraf	978202981	start-moving	0	1	3	-4	65	7681	1
2025-07-20 08:50:34.858+00	127	telegraf	978202981	stop-moving	2	2	4	-4	65	7683	1
2025-07-20 08:53:55.628+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	7687	1
2025-07-20 08:57:59.295+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	7688	1
2025-07-20 09:03:55.674+00	127	telegraf	1041420528	stationary	0	0	0	-1	64	7691	1
2025-07-20 09:07:59.327+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	7693	1
2025-07-20 09:10:34.926+00	127	telegraf	978202981	stationary	0	0	3	-4	65	7697	1
2025-07-20 09:13:55.729+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7700	1
2025-07-20 09:17:59.375+00	127	telegraf	1126982881	stationary	0	0	4	-1	67	7703	1
2025-07-20 09:20:34.961+00	127	telegraf	978202981	stationary	0	0	3	-4	65	7705	1
2025-07-20 09:23:55.777+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7706	1
2025-07-20 09:27:59.412+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	7709	1
2025-07-20 09:30:35.033+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7710	1
2025-07-20 09:33:55.898+00	127	telegraf	1041420528	stationary	0	0	1	0	64	7713	1
2025-07-20 09:37:59.45+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	7715	1
2025-07-20 09:40:35.085+00	127	telegraf	978202981	stationary	0	0	3	-4	64	7718	1
2025-07-20 09:43:56.095+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7721	1
2025-07-20 09:50:35.151+00	127	telegraf	978202981	stationary	0	0	4	-4	65	7725	1
2025-07-20 09:57:59.582+00	127	telegraf	1126982881	stationary	0	0	4	-2	64	7729	1
2025-07-20 10:07:59.635+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7735	1
2025-07-20 10:10:35.29+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7737	1
2025-07-20 10:13:56.573+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7741	1
2025-07-20 10:17:59.697+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7744	1
2025-07-20 10:20:35.348+00	127	telegraf	978202981	stationary	0	0	3	-3	66	7746	1
2025-07-20 10:23:56.717+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7747	1
2025-07-20 10:27:59.768+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7749	1
2025-07-20 10:30:35.388+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7750	1
2025-07-20 10:33:56.86+00	127	telegraf	1041420528	stationary	0	0	0	0	64	7753	1
2025-07-20 10:47:59.877+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	7762	1
2025-07-20 10:53:57.207+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	7765	1
2025-07-20 10:57:59.944+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	7768	1
2025-07-20 11:00:35.529+00	127	telegraf	978202981	stationary	0	0	4	-2	65	7770	1
2025-07-20 11:03:57.34+00	127	telegraf	1041420528	stationary	0	0	1	0	65	7772	1
2025-07-20 11:08:00.048+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	7774	1
2025-07-20 11:50:35.695+00	127	telegraf	978202981	stationary	0	0	3	-4	65	7801	1
2025-07-20 11:53:58.146+00	127	telegraf	1041420528	stationary	0	0	1	0	64	7803	1
2025-07-20 11:58:00.238+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	7805	1
2025-07-20 12:00:35.717+00	127	telegraf	978202981	stationary	0	0	5	-4	64	7808	1
2025-07-20 12:03:58.288+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7809	1
2025-07-20 12:08:00.276+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	7811	1
2025-07-20 12:10:35.751+00	127	telegraf	978202981	stationary	0	0	5	-4	65	7813	1
2025-07-20 12:13:58.472+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7814	1
2025-07-20 12:18:00.349+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7819	1
2025-07-20 12:20:35.829+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7821	1
2025-07-20 12:23:58.615+00	127	telegraf	1041420528	stationary	0	0	2	0	63	7823	1
2025-07-20 12:28:00.415+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7824	1
2025-07-20 12:30:35.88+00	127	telegraf	978202981	stationary	0	0	5	-3	65	7827	1
2025-07-18 22:28:08.163+00	127	telegraf	1523842139	stop-moving	661	255	-1	-1	-64	1	1
2025-07-18 22:28:07.89+00	127	telegraf	840973111	stop-moving	644	255	0	-4	-60	4	1
2025-07-18 22:28:07.973+00	127	telegraf	527134251	stop-moving	640	255	3	1	64	7	1
2025-07-20 12:32:49.356+00	127	telegraf	1523842139	start-moving	0	1	20	18	-76	11	1
2025-07-20 12:32:49.029+00	127	telegraf	840973111	start-moving	0	1	14	46	-36	12	1
2025-07-20 12:32:49.112+00	127	telegraf	527134251	start-moving	0	1	1	-48	1	13	1
2025-07-20 12:33:58.774+00	127	telegraf	1041420528	stationary	0	0	2	0	64	7828	1
2025-07-20 12:34:30.052+00	127	telegraf	840973111	stop-moving	9	9	1	-3	-60	18	1
2025-07-20 12:34:30.403+00	127	telegraf	1523842139	stop-moving	8	7	0	-1	-66	21	1
2025-07-20 12:35:34.416+00	127	telegraf	1523842139	start-moving	0	1	0	-1	-64	28	1
2025-07-20 12:37:05.091+00	127	telegraf	840973111	start-moving	0	1	0	1	-82	34	1
2025-07-20 12:36:33.433+00	127	telegraf	1523842139	stop-moving	1	1	0	-1	-66	35	1
2025-07-20 12:37:05.159+00	127	telegraf	527134251	start-moving	0	1	5	-1	21	36	1
2025-07-20 12:37:05.432+00	127	telegraf	1523842139	start-moving	0	1	1	-2	-65	39	1
2025-07-20 12:38:00.467+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	7830	1
2025-07-20 12:38:24.108+00	127	telegraf	840973111	stop-moving	3	3	0	-3	-62	40	1
2025-07-20 12:38:30.113+00	127	telegraf	840973111	start-moving	0	1	17	11	46	43	1
2025-07-20 12:38:23.455+00	127	telegraf	1523842139	stop-moving	3	3	-1	-2	-65	44	1
2025-07-20 12:38:24.178+00	127	telegraf	527134251	stop-moving	3	3	0	1	63	45	1
2025-07-20 12:38:29.446+00	127	telegraf	1523842139	start-moving	0	1	9	-2	-48	50	1
2025-07-20 12:38:30.177+00	127	telegraf	527134251	start-moving	0	1	-55	-18	-40	51	1
2025-07-20 12:39:32.101+00	127	telegraf	840973111	stop-moving	5	3	17	2	-59	53	1
2025-07-20 12:39:31.441+00	127	telegraf	1523842139	stop-moving	6	2	0	-1	-66	56	1
2025-07-20 12:39:32.159+00	127	telegraf	527134251	stop-moving	5	3	3	0	64	59	1
2025-07-20 12:39:51.104+00	127	telegraf	840973111	start-moving	0	1	17	2	-61	63	1
2025-07-20 12:39:51.163+00	127	telegraf	527134251	start-moving	0	1	2	1	64	64	1
2025-07-20 12:40:13.44+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-65	65	1
2025-07-20 12:40:35.939+00	127	telegraf	978202981	stationary	0	0	5	-4	64	7832	1
2025-07-20 12:40:51.1+00	127	telegraf	840973111	stop-moving	1	1	18	2	-60	69	1
2025-07-20 12:41:13.099+00	127	telegraf	840973111	start-moving	0	1	24	8	-49	72	1
2025-07-20 12:41:12.453+00	127	telegraf	1523842139	stop-moving	1	1	-1	0	-65	73	1
2025-07-20 12:41:13.449+00	127	telegraf	1523842139	start-moving	0	1	5	-3	-75	74	1
2025-07-20 12:42:24.12+00	127	telegraf	840973111	stop-moving	10	11	0	-2	-62	80	1
2025-07-20 12:42:22.169+00	127	telegraf	527134251	stop-moving	10	12	1	-2	65	83	1
2025-07-20 12:42:21.463+00	127	telegraf	1523842139	stop-moving	9	7	0	0	-65	84	1
2025-07-20 12:42:57.46+00	127	telegraf	1523842139	start-moving	0	1	-1	0	-66	89	1
2025-07-20 12:43:58.958+00	127	telegraf	1041420528	stationary	0	0	2	0	64	7833	1
2025-07-20 12:44:40.185+00	127	telegraf	527134251	start-moving	0	1	1	-1	65	95	1
2025-07-20 12:45:40.19+00	127	telegraf	527134251	stop-moving	1	1	1	-1	64	98	1
2025-07-20 12:48:00.539+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	7839	1
2025-07-20 12:48:31.207+00	127	telegraf	527134251	start-moving	0	1	28	6	85	106	1
2025-07-20 12:48:30.516+00	127	telegraf	1523842139	start-moving	0	1	2	0	-58	107	1
2025-07-20 12:49:37.212+00	127	telegraf	527134251	stop-moving	8	3	1	0	64	110	1
2025-07-20 12:50:21.163+00	127	telegraf	840973111	stop-moving	11	4	1	-1	-62	114	1
2025-07-20 12:50:20.524+00	127	telegraf	1523842139	stop-moving	10	7	0	-1	-65	117	1
2025-07-20 12:50:36.036+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7841	1
2025-07-20 12:53:59.086+00	127	telegraf	1041420528	stationary	0	0	2	0	65	7842	1
2025-07-20 12:58:00.611+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	7844	1
2025-07-20 12:59:37.238+00	127	telegraf	527134251	stationary	0	0	0	-1	65	125	1
2025-07-20 13:00:21.222+00	127	telegraf	840973111	stationary	0	0	0	-2	-61	126	1
2025-07-20 13:00:20.591+00	127	telegraf	1523842139	stationary	0	0	-1	-2	-65	127	1
2025-07-20 13:00:36.078+00	127	telegraf	978202981	stationary	0	0	4	-4	65	7846	1
2025-07-20 13:02:50.261+00	127	telegraf	527134251	start-moving	0	1	0	0	62	128	1
2025-07-20 13:03:59.231+00	127	telegraf	1041420528	stationary	0	0	1	0	63	7847	1
2025-07-20 13:03:52.266+00	127	telegraf	527134251	stop-moving	2	2	1	0	64	131	1
2025-07-20 13:05:22.242+00	127	telegraf	840973111	start-moving	0	1	1	-3	-59	138	1
2025-07-20 13:06:25.259+00	127	telegraf	840973111	stop-moving	3	4	0	-3	-61	141	1
2025-07-20 13:06:49.257+00	127	telegraf	840973111	start-moving	0	1	0	-3	-62	150	1
2025-07-20 13:06:49.35+00	127	telegraf	527134251	start-moving	0	1	0	-1	64	152	1
2025-07-20 13:07:49.35+00	127	telegraf	527134251	stop-moving	1	1	0	-1	64	155	1
2025-07-20 13:08:00.676+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	7849	1
2025-07-20 13:08:12.614+00	127	telegraf	1523842139	start-moving	0	1	0	0	-65	158	1
2025-07-20 13:09:05.304+00	127	telegraf	840973111	stop-moving	3	3	0	-3	-61	159	1
2025-07-20 13:09:12.62+00	127	telegraf	1523842139	stop-moving	1	1	-1	0	-65	162	1
2025-07-20 13:09:40.331+00	127	telegraf	840973111	start-moving	0	1	0	-4	-61	168	1
2025-07-20 13:10:25.626+00	127	telegraf	1523842139	start-moving	0	1	-1	0	-67	169	1
2025-07-20 13:10:36.148+00	127	telegraf	978202981	stationary	0	0	4	-3	66	7852	1
2025-07-20 13:10:41.333+00	127	telegraf	840973111	stop-moving	2	2	0	-2	-62	170	1
2025-07-20 13:11:25.628+00	127	telegraf	1523842139	stop-moving	1	1	-1	0	-66	174	1
2025-07-20 13:12:43.339+00	127	telegraf	840973111	start-moving	0	1	15	-27	-54	178	1
2025-07-20 13:12:44.366+00	127	telegraf	527134251	start-moving	0	1	14	8	64	179	1
2025-07-20 13:13:44.361+00	127	telegraf	527134251	stop-moving	1	1	1	0	64	183	1
2025-07-20 13:13:59.359+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	7853	1
2025-07-20 13:18:00.769+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	7858	1
2025-07-20 13:20:36.192+00	127	telegraf	978202981	stationary	0	0	4	-4	66	7859	1
2025-07-20 13:21:25.649+00	127	telegraf	1523842139	stationary	0	0	-1	0	-65	191	1
2025-07-20 13:23:43.361+00	127	telegraf	840973111	stationary	0	0	0	-3	-61	193	1
2025-07-20 13:23:44.41+00	127	telegraf	527134251	stationary	0	0	0	-1	64	194	1
2025-07-20 13:23:59.4+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	7860	1
2025-07-20 13:26:19.414+00	127	telegraf	527134251	start-moving	0	1	1	-1	65	196	1
2025-07-20 13:26:18.669+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-65	197	1
2025-07-20 13:27:18.677+00	127	telegraf	1523842139	stop-moving	1	1	0	0	-66	198	1
2025-07-20 13:28:00.875+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	7862	1
2025-07-20 13:28:13.422+00	127	telegraf	527134251	stop-moving	2	2	1	-1	65	201	1
2025-07-20 13:30:36.271+00	127	telegraf	978202981	stationary	0	0	3	-4	66	7863	1
2025-07-20 13:30:56.686+00	127	telegraf	1523842139	stop-moving	2	2	-1	0	-66	205	1
2025-07-20 13:32:21.697+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-65	208	1
2025-07-20 13:33:21.705+00	127	telegraf	1523842139	stop-moving	1	1	0	0	-65	210	1
2025-07-20 13:33:43.398+00	127	telegraf	840973111	stationary	0	0	-1	-3	-62	214	1
2025-07-20 13:33:54.402+00	127	telegraf	840973111	start-moving	0	1	0	-3	-61	215	1
2025-07-20 13:33:59.456+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7865	1
2025-07-20 13:33:56.705+00	127	telegraf	1523842139	start-moving	0	1	0	-1	-65	216	1
2025-07-20 14:16:59.571+00	127	telegraf	840973111	start-moving	0	1	7	-54	-44	314	1
2025-07-20 14:17:02.947+00	127	telegraf	1523842139	start-moving	0	1	0	-2	-65	315	1
2025-07-20 14:18:01.07+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	7892	1
2025-07-20 14:18:01.568+00	127	telegraf	840973111	stop-moving	3	3	0	-3	-62	318	1
2025-07-20 14:18:02.953+00	127	telegraf	1523842139	stop-moving	1	1	1	-2	-65	321	1
2025-07-20 14:19:08.577+00	127	telegraf	840973111	start-moving	0	1	3	17	-54	326	1
2025-07-20 14:20:10.802+00	127	telegraf	527134251	start-moving	0	1	0	-1	65	329	1
2025-07-20 14:20:10.972+00	127	telegraf	1523842139	start-moving	0	1	6	4	-62	330	1
2025-07-20 14:20:36.427+00	127	telegraf	978202981	stationary	0	0	3	-4	66	7895	1
2025-07-20 14:21:10.963+00	127	telegraf	1523842139	stop-moving	1	1	-1	-1	-65	333	1
2025-07-20 14:21:10.807+00	127	telegraf	527134251	stop-moving	2	2	0	0	64	336	1
2025-07-20 14:21:49.97+00	127	telegraf	1523842139	start-moving	0	1	5	22	-59	340	1
2025-07-20 14:21:49.811+00	127	telegraf	527134251	start-moving	0	1	39	16	37	341	1
2025-07-20 14:22:48.82+00	127	telegraf	527134251	stop-moving	2	1	1	0	63	344	1
2025-07-20 14:22:51.82+00	127	telegraf	527134251	start-moving	0	1	1	1	63	347	1
2025-07-20 14:24:00.103+00	127	telegraf	1041420528	stationary	0	0	1	0	64	7896	1
2025-07-20 14:24:35.99+00	127	telegraf	1523842139	stop-moving	25	29	-12	12	-62	354	1
2025-07-20 14:25:01.825+00	127	telegraf	527134251	stop-moving	24	16	-1	-2	-68	360	1
2025-07-20 14:27:28.649+00	127	telegraf	840973111	start-moving	0	1	3	0	59	369	1
2025-07-20 14:27:28.854+00	127	telegraf	527134251	start-moving	0	1	-1	-2	-64	370	1
2025-07-20 14:27:29+00	127	telegraf	1523842139	start-moving	0	1	-13	12	-61	371	1
2025-07-20 14:28:01.113+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	7897	1
2025-07-20 14:28:29.643+00	127	telegraf	840973111	stop-moving	2	4	4	-2	61	373	1
2025-07-20 14:28:30.851+00	127	telegraf	527134251	stop-moving	3	5	0	-2	-65	376	1
2025-07-20 14:28:30.007+00	127	telegraf	1523842139	stop-moving	2	3	-1	-3	-65	379	1
2025-07-20 14:30:36.466+00	127	telegraf	978202981	stationary	0	0	4	-4	64	7899	1
2025-07-20 14:33:16.726+00	127	telegraf	840973111	start-moving	0	1	-8	-13	51	385	1
2025-07-20 14:33:16.033+00	127	telegraf	1523842139	start-moving	0	1	-14	15	-62	386	1
2025-07-20 14:33:16.874+00	127	telegraf	527134251	start-moving	0	1	-1	-2	-65	387	1
2025-07-20 14:38:51.81+00	127	telegraf	840973111	stop-moving	87	53	15	-10	60	402	1
2025-07-20 14:38:51.064+00	127	telegraf	1523842139	stop-moving	84	56	-8	-21	61	405	1
2025-07-20 14:38:50.911+00	127	telegraf	527134251	stop-moving	78	56	-7	-7	65	406	1
2025-07-20 14:39:25.062+00	127	telegraf	1523842139	start-moving	0	1	8	-15	57	413	1
2025-07-20 14:39:24.91+00	127	telegraf	527134251	start-moving	0	1	-2	-13	63	414	1
2025-07-20 14:40:29.066+00	127	telegraf	1523842139	stop-moving	9	5	10	2	64	416	1
2025-07-20 14:40:38.82+00	127	telegraf	840973111	stop-moving	11	5	16	4	60	419	1
2025-07-20 14:40:36.485+00	127	telegraf	978202981	stationary	0	0	3	-3	65	7905	1
2025-07-20 14:40:38.922+00	127	telegraf	527134251	stop-moving	9	5	1	-11	63	422	1
2025-07-20 14:41:07.832+00	127	telegraf	840973111	start-moving	0	1	6	-23	75	425	1
2025-07-20 14:41:07.075+00	127	telegraf	1523842139	start-moving	0	1	-43	-31	75	426	1
2025-07-20 14:41:07.923+00	127	telegraf	527134251	start-moving	0	1	-14	5	75	427	1
2025-07-20 14:44:00.421+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	7907	1
2025-07-20 14:50:36.52+00	127	telegraf	978202981	stationary	0	0	4	-3	65	7913	1
2025-07-20 14:51:07.906+00	127	telegraf	840973111	moving	191	209	6	4	62	462	1
2025-07-20 14:51:07.977+00	127	telegraf	527134251	moving	197	204	1	5	64	463	1
2025-07-20 14:51:07.122+00	127	telegraf	1523842139	moving	190	200	-3	1	66	466	1
2025-07-20 14:53:30.185+00	127	telegraf	1523842139	stop-moving	212	225	-3	-2	65	474	1
2025-07-20 14:53:30.994+00	127	telegraf	527134251	stop-moving	217	227	7	-2	64	475	1
2025-07-20 14:53:42.939+00	127	telegraf	840973111	start-moving	0	1	-6	2	46	480	1
2025-07-20 14:53:42.997+00	127	telegraf	527134251	start-moving	0	1	9	4	69	481	1
2025-07-20 14:53:43.204+00	127	telegraf	1523842139	start-moving	0	1	-3	4	64	482	1
2025-07-20 14:54:00.595+00	127	telegraf	1041420528	stationary	0	0	1	0	63	7914	1
2025-07-20 15:00:36.555+00	127	telegraf	978202981	stationary	0	0	4	-4	66	7918	1
2025-07-20 15:09:25.636+00	127	telegraf	978202981	stop-moving	1	1	4	-4	65	7923	1
2025-07-20 15:09:29.705+00	127	telegraf	840973111	stop-moving	21	24	11	-7	61	36	1
2025-07-20 15:10:46.966+00	127	telegraf	527134251	start-moving	0	1	6	-5	64	49	1
2025-07-20 15:10:46.919+00	127	telegraf	1523842139	start-moving	0	1	-21	12	60	54	1
2025-07-20 15:11:11.881+00	127	telegraf	840973111	start-moving	0	1	13	-6	61	57	1
2025-07-20 15:13:09.415+00	127	telegraf	1523842139	start-moving	0	1	-16	-16	61	72	1
2025-07-20 15:14:00.868+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7928	1
2025-07-20 15:14:20.959+00	127	telegraf	527134251	stop-moving	47	31	4	1	-65	79	1
2025-07-20 15:14:21.435+00	127	telegraf	1523842139	stop-moving	8	9	1	-6	64	82	1
2025-07-20 15:14:23.437+00	127	telegraf	1523842139	start-moving	0	1	31	15	127	85	1
2025-07-20 15:14:23.962+00	127	telegraf	527134251	start-moving	0	1	3	1	-66	86	1
2025-07-20 15:15:58.918+00	127	telegraf	840973111	stop-moving	67	51	5	0	62	90	1
2025-07-20 15:15:58.979+00	127	telegraf	527134251	stop-moving	21	18	10	-2	65	93	1
2025-07-20 15:15:59.459+00	127	telegraf	1523842139	stop-moving	19	22	-3	-1	65	96	1
2025-07-20 15:16:43.913+00	127	telegraf	840973111	start-moving	0	1	5	1	59	102	1
2025-07-20 15:16:43.992+00	127	telegraf	527134251	start-moving	0	1	9	-3	63	103	1
2025-07-20 15:17:46.479+00	127	telegraf	1523842139	stop-moving	1	1	-3	-4	65	106	1
2025-07-20 15:17:46.925+00	127	telegraf	840973111	stop-moving	3	7	6	6	60	109	1
2025-07-20 15:17:47.008+00	127	telegraf	527134251	stop-moving	4	8	9	-4	63	112	1
2025-07-20 15:18:00.478+00	127	telegraf	1523842139	start-moving	0	1	-2	-5	63	116	1
2025-07-20 15:18:00.936+00	127	telegraf	840973111	start-moving	0	1	5	6	62	117	1
2025-07-20 15:18:01.007+00	127	telegraf	527134251	start-moving	0	1	9	-6	70	118	1
2025-07-20 15:18:01.427+00	127	telegraf	1126982881	stationary	0	0	4	-2	67	7929	1
2025-07-20 15:19:27.29+00	127	telegraf	1523842139	start-moving	0	1	5	-24	59	125	1
2025-07-20 15:19:37.942+00	127	telegraf	840973111	stop-moving	10	10	5	6	60	127	1
2025-07-20 15:19:46.019+00	127	telegraf	527134251	stop-moving	10	11	10	-1	63	131	1
2025-07-20 15:20:51.311+00	127	telegraf	1523842139	start-moving	0	1	-6	6	74	141	1
2025-07-20 15:20:51.96+00	127	telegraf	840973111	start-moving	0	1	4	4	64	142	1
2025-07-20 15:20:53.047+00	127	telegraf	527134251	start-moving	0	1	10	6	59	143	1
2025-07-20 15:22:11.362+00	127	telegraf	840973111	start-moving	0	1	-52	-9	37	153	1
2025-07-20 15:23:15.1+00	127	telegraf	527134251	stop-moving	6	7	9	-2	63	160	1
2025-07-20 15:23:15.339+00	127	telegraf	1523842139	stop-moving	8	11	5	-6	65	163	1
2025-07-20 15:23:34.338+00	127	telegraf	1523842139	start-moving	0	1	6	-7	62	166	1
2025-07-20 15:23:35.107+00	127	telegraf	527134251	start-moving	0	1	10	-3	64	167	1
2025-07-20 15:24:00.928+00	127	telegraf	1041420528	stationary	0	0	1	0	63	7935	1
2025-07-20 15:24:34.118+00	127	telegraf	527134251	stop-moving	1	1	9	-2	64	170	1
2025-07-20 15:24:34.354+00	127	telegraf	1523842139	stop-moving	2	2	6	-7	65	173	1
2025-07-20 15:24:34.39+00	127	telegraf	840973111	stop-moving	8	5	6	8	60	176	1
2025-07-20 15:24:48.122+00	127	telegraf	527134251	start-moving	0	1	19	-6	64	180	1
2025-07-20 15:24:48.353+00	127	telegraf	1523842139	start-moving	0	1	3	-4	65	181	1
2025-07-20 15:24:48.393+00	127	telegraf	840973111	start-moving	0	1	6	4	61	182	1
2025-07-20 15:25:47.364+00	127	telegraf	1523842139	stop-moving	1	1	5	-5	65	184	1
2025-07-20 15:25:47.408+00	127	telegraf	840973111	stop-moving	1	1	4	7	61	187	1
2025-07-20 15:25:48.125+00	127	telegraf	527134251	stop-moving	1	2	9	-1	64	190	1
2025-07-20 15:26:46.416+00	127	telegraf	840973111	start-moving	0	1	-8	7	57	196	1
2025-07-20 15:26:47.132+00	127	telegraf	527134251	start-moving	0	1	15	-7	65	197	1
2025-07-20 15:26:47.386+00	127	telegraf	1523842139	start-moving	0	1	6	-11	63	198	1
2025-07-20 15:28:01.499+00	127	telegraf	1126982881	stationary	0	0	4	-3	65	7937	1
2025-07-20 15:28:05.148+00	127	telegraf	527134251	stop-moving	10	16	6	3	63	200	1
2025-07-20 15:28:05.398+00	127	telegraf	1523842139	stop-moving	8	7	7	-6	64	203	1
2025-07-20 15:28:05.426+00	127	telegraf	840973111	stop-moving	13	20	10	-6	61	206	1
2025-07-20 15:29:25.759+00	127	telegraf	978202981	stationary	0	0	5	-3	65	7938	1
2025-07-20 15:29:46.413+00	127	telegraf	1523842139	start-moving	0	1	6	-6	66	210	1
2025-07-20 15:29:47.161+00	127	telegraf	527134251	start-moving	0	1	6	4	64	211	1
2025-07-20 15:30:45.428+00	127	telegraf	1523842139	stop-moving	1	1	7	-7	65	215	1
2025-07-20 15:30:46.173+00	127	telegraf	527134251	stop-moving	1	1	7	4	63	218	1
2025-07-20 15:34:01.095+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7941	1
2025-07-20 15:35:09.133+00	127	telegraf	527134251	start-moving	0	1	8	-1	61	225	1
2025-07-20 15:35:09.386+00	127	telegraf	1523842139	start-moving	0	1	5	-6	65	226	1
2025-07-20 15:35:09.411+00	127	telegraf	840973111	start-moving	0	1	50	10	67	227	1
2025-07-20 15:38:01.596+00	127	telegraf	1126982881	stationary	0	0	5	-2	66	7942	1
2025-07-20 15:38:03.371+00	127	telegraf	1523842139	stop-moving	22	25	2	-5	65	237	1
2025-07-20 15:38:42.375+00	127	telegraf	1523842139	start-moving	0	1	1	-8	65	241	1
2025-07-20 15:39:25.825+00	127	telegraf	978202981	stationary	0	0	3	-4	64	7943	1
2025-07-20 15:39:41.394+00	127	telegraf	840973111	stop-moving	29	31	7	5	61	244	1
2025-07-20 15:39:51.952+00	127	telegraf	527134251	stop-moving	8	9	-4	-9	63	247	1
2025-07-20 15:39:52.363+00	127	telegraf	1523842139	stop-moving	3	3	1	-7	65	250	1
2025-07-20 15:41:28.012+00	127	telegraf	527134251	start-moving	0	1	-3	-8	62	254	1
2025-07-20 15:41:28.417+00	127	telegraf	1523842139	start-moving	0	1	-28	8	83	255	1
2025-07-20 15:41:28.442+00	127	telegraf	840973111	start-moving	0	1	37	-10	80	256	1
2025-07-20 15:52:01.547+00	127	telegraf	1523842139	start-moving	0	1	6	0	65	301	1
2025-07-20 15:52:15.551+00	127	telegraf	840973111	start-moving	0	1	5	-3	61	302	1
2025-07-20 15:53:14.557+00	127	telegraf	840973111	stop-moving	1	1	5	-4	62	307	1
2025-07-20 15:54:34.572+00	127	telegraf	1523842139	stop-moving	1	1	5	1	64	311	1
2025-07-20 15:59:11.723+00	127	telegraf	1126982881	start-moving	0	1	0	-13	64	7962	1
2025-07-20 15:59:25.938+00	127	telegraf	978202981	stationary	0	0	3	-2	65	7963	1
2025-07-20 16:00:06.12+00	127	telegraf	527134251	stationary	0	0	1	0	64	317	1
2025-07-20 16:00:11.724+00	127	telegraf	1126982881	stop-moving	1	1	4	-2	64	7964	1
2025-07-20 16:01:40.605+00	127	telegraf	1523842139	start-moving	0	1	6	2	62	319	1
2025-07-20 16:02:40.619+00	127	telegraf	1523842139	stop-moving	1	1	6	0	64	321	1
2025-07-20 16:04:51.148+00	127	telegraf	527134251	stop-moving	1	1	1	0	65	326	1
2025-07-20 16:09:26.035+00	127	telegraf	978202981	stationary	0	0	4	-3	64	7971	1
2025-07-20 16:10:11.764+00	127	telegraf	1126982881	stationary	0	0	3	-2	64	7973	1
2025-07-20 16:12:40.712+00	127	telegraf	1523842139	stationary	0	0	5	2	66	4	1
2025-07-20 16:13:09.694+00	127	telegraf	840973111	start-moving	0	1	85	-79	84	5	1
2025-07-20 16:13:09.713+00	127	telegraf	1523842139	start-moving	0	1	29	123	78	6	1
2025-07-20 16:13:10.264+00	127	telegraf	527134251	start-moving	0	1	-41	12	32	7	1
2025-07-20 16:14:44.266+00	127	telegraf	527134251	stop-moving	33	21	2	0	64	9	1
2025-07-20 16:14:46.723+00	127	telegraf	1523842139	stop-moving	30	24	3	0	64	13	1
2025-07-20 16:24:01.876+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	7981	1
2025-07-20 16:29:26.104+00	127	telegraf	978202981	stationary	0	0	4	-4	64	7985	1
2025-07-20 16:34:02.027+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7987	1
2025-07-20 16:39:26.138+00	127	telegraf	978202981	stationary	0	0	3	-2	65	7990	1
2025-07-20 16:40:11.875+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	7991	1
2025-07-20 16:44:02.129+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7995	1
2025-07-20 16:50:11.928+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	7999	1
2025-07-20 16:54:02.24+00	127	telegraf	1041420528	stationary	0	0	1	0	64	8000	1
2025-07-20 16:59:26.197+00	127	telegraf	978202981	stationary	0	0	3	-3	65	8002	1
2025-07-20 17:00:12.001+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	8005	1
2025-07-20 17:03:34.217+00	127	telegraf	978202981	start-moving	0	1	3	-3	65	8006	1
2025-07-20 17:04:02.349+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	8007	1
2025-07-20 17:04:34.207+00	127	telegraf	978202981	stop-moving	1	1	4	-3	65	8008	1
2025-07-20 17:24:02.521+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	8027	1
2025-07-20 17:24:34.274+00	127	telegraf	978202981	stationary	0	0	4	-3	64	8028	1
2025-07-20 17:28:45.186+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	8030	1
2025-07-20 17:54:02.64+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	8052	1
2025-07-20 17:54:34.438+00	127	telegraf	978202981	stationary	0	0	4	-3	66	8053	1
2025-07-20 17:58:45.347+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	8057	1
2025-07-20 18:04:02.695+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	8060	1
2025-07-20 18:04:34.48+00	127	telegraf	978202981	stationary	0	0	4	-4	63	8061	1
2025-07-20 18:08:45.396+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	8062	1
2025-07-20 18:14:02.752+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	8064	1
2025-07-20 18:32:27.673+00	127	telegraf	978202981	start-moving	0	1	5	-3	65	8082	1
2025-07-20 18:33:26.672+00	127	telegraf	978202981	stop-moving	1	1	4	-3	64	8085	1
2025-07-20 18:34:03.008+00	127	telegraf	1041420528	stationary	0	0	1	0	64	8088	1
2025-07-20 18:38:45.576+00	127	telegraf	1126982881	stationary	0	0	4	-1	64	8091	1
2025-07-20 18:43:26.729+00	127	telegraf	978202981	stationary	0	0	5	-3	66	8092	1
2025-07-20 18:44:03.056+00	127	telegraf	1041420528	stationary	0	0	1	0	65	8093	1
2025-07-20 18:48:45.608+00	127	telegraf	1126982881	stationary	0	0	5	-2	65	8094	1
2025-07-20 18:54:03.105+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	8097	1
2025-07-20 18:58:45.64+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	8104	1
2025-07-20 19:03:26.854+00	127	telegraf	978202981	stationary	0	0	4	-3	64	8106	1
2025-07-20 19:04:03.168+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	8107	1
2025-07-20 19:13:26.883+00	127	telegraf	978202981	stationary	0	0	3	-3	65	8110	1
2025-07-20 19:14:03.235+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	8111	1
2025-07-20 19:18:45.719+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	8116	1
2025-07-20 19:23:26.927+00	127	telegraf	978202981	stationary	0	0	4	-3	66	8117	1
2025-07-20 19:28:45.808+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	8121	1
2025-07-20 19:34:03.467+00	127	telegraf	1041420528	stationary	0	0	1	0	63	8129	1
2025-07-20 19:38:45.886+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	8132	1
2025-07-20 19:43:02.912+00	127	telegraf	1126982881	start-moving	0	1	-85	101	-59	8135	1
2025-07-20 19:43:26.987+00	127	telegraf	978202981	stationary	0	0	3	-4	65	8136	1
2025-07-20 19:44:03.58+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	8141	1
2025-07-20 19:46:27.964+00	127	telegraf	1126982881	stop-moving	71	62	3	-1	66	8152	1
2025-07-20 19:52:18.673+00	127	telegraf	1041420528	start-moving	0	1	2	-1	64	8164	1
2025-07-20 19:52:18.014+00	127	telegraf	978202981	start-moving	0	1	4	-3	66	8166	1
2025-07-20 19:53:16.013+00	127	telegraf	1126982881	stop-moving	7	11	3	-1	66	8168	1
2025-07-20 19:53:18.019+00	127	telegraf	978202981	stop-moving	1	1	4	-3	65	8171	1
2025-07-20 19:53:17.681+00	127	telegraf	1041420528	stop-moving	1	1	1	-1	64	8172	1
2025-07-20 21:54:22.711+00	127	telegraf	1126982881	stationary	0	0	1	-3	65	43	1
2025-07-20 21:54:22.719+00	127	telegraf	1041420528	stationary	0	0	0	-1	64	44	1
2025-07-20 21:58:34.769+00	127	telegraf	978202981	stationary	0	0	5	0	65	48	1
2025-07-20 22:04:22.775+00	127	telegraf	1126982881	stationary	0	0	1	-3	65	50	1
2025-07-20 22:04:22.761+00	127	telegraf	1041420528	stationary	0	0	1	0	64	51	1
2025-07-20 22:08:34.794+00	127	telegraf	978202981	stationary	0	0	6	0	65	54	1
2025-07-20 22:14:22.862+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	56	1
2025-07-20 22:18:34.829+00	127	telegraf	978202981	stationary	0	0	5	1	64	61	1
2025-07-20 22:22:08.839+00	127	telegraf	978202981	start-moving	0	1	5	0	64	62	1
2025-07-20 22:24:22.915+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	66	1
2025-07-20 22:24:22.852+00	127	telegraf	1041420528	stationary	0	0	0	-1	65	67	1
2025-07-20 22:33:08.887+00	127	telegraf	978202981	stationary	0	0	5	1	64	70	1
2025-07-20 22:34:22.966+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	71	1
2025-07-20 22:34:22.902+00	127	telegraf	1041420528	stationary	0	0	0	-1	64	72	1
2025-07-20 22:43:08.916+00	127	telegraf	978202981	stationary	0	0	5	0	65	77	1
2025-07-21 06:46:54.311+00	127	telegraf	978202981	stop-moving	2	2	4	1	65	392	1
2025-07-21 06:49:10.877+00	127	telegraf	1126982881	stop-moving	20	22	2	-2	65	403	1
2025-07-21 06:56:47.738+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	417	1
2025-07-21 07:06:47.92+00	127	telegraf	1041420528	stationary	0	0	0	-1	64	423	1
2025-07-21 07:09:11.043+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	428	1
2025-07-21 07:13:14.012+00	127	telegraf	1041420528	stop-moving	1	1	0	-1	65	435	1
2025-07-21 07:13:12.467+00	127	telegraf	978202981	stop-moving	1	1	6	1	64	436	1
2025-07-21 07:19:11.107+00	127	telegraf	1126982881	stationary	0	0	2	-1	66	443	1
2025-07-21 07:23:14.054+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	445	1
2025-07-21 07:23:12.543+00	127	telegraf	978202981	stationary	0	0	4	1	65	446	1
2025-07-21 07:29:11.167+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	447	1
2025-07-21 07:33:14.119+00	127	telegraf	1041420528	stationary	0	0	0	0	64	448	1
2025-07-21 07:33:12.616+00	127	telegraf	978202981	stationary	0	0	5	0	66	449	1
2025-07-21 07:39:11.227+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	450	1
2025-07-21 07:43:12.684+00	127	telegraf	978202981	stationary	0	0	5	0	65	458	1
2025-07-21 07:43:14.165+00	127	telegraf	1041420528	stationary	0	0	0	-1	64	459	1
2025-07-21 07:49:11.295+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	461	1
2025-07-21 07:53:12.753+00	127	telegraf	978202981	stationary	0	0	5	0	65	463	1
2025-07-21 07:53:14.21+00	127	telegraf	1041420528	stationary	0	0	0	-1	64	464	1
2025-07-21 07:59:11.386+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	467	1
2025-07-21 08:03:14.322+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	470	1
2025-07-21 08:03:12.819+00	127	telegraf	978202981	stationary	0	0	6	0	64	471	1
2025-07-21 08:09:11.428+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	472	1
2025-07-21 17:31:38.591+00	127	telegraf	527134251	stop-moving	1	1	-1	-2	-65	582	1
2025-07-21 17:31:38.652+00	127	telegraf	1523842139	stop-moving	1	1	4	0	65	584	1
2025-07-21 17:31:51.034+00	127	telegraf	840973111	stationary	0	0	5	0	63	588	1
2025-07-21 17:33:42.565+00	127	telegraf	527134251	start-moving	0	1	-1	-2	-65	590	1
2025-07-21 17:33:54.646+00	127	telegraf	1523842139	start-moving	0	1	3	0	64	591	1
2025-07-21 17:34:41.559+00	127	telegraf	527134251	stop-moving	1	1	-1	-2	-65	592	1
2025-07-21 17:34:53.645+00	127	telegraf	1523842139	stop-moving	1	1	2	0	65	595	1
2025-07-21 17:38:12.551+00	127	telegraf	527134251	start-moving	0	1	0	-3	-64	600	1
2025-07-21 17:38:13.645+00	127	telegraf	1523842139	start-moving	0	1	1	0	64	601	1
2025-07-21 17:39:12.649+00	127	telegraf	1523842139	stop-moving	1	1	3	0	65	602	1
2025-07-21 17:39:19.552+00	127	telegraf	527134251	stop-moving	3	4	0	-3	-65	605	1
2025-07-21 17:42:39.645+00	127	telegraf	1523842139	stop-moving	1	1	3	0	65	612	1
2025-07-21 17:42:40.543+00	127	telegraf	527134251	stop-moving	1	1	0	-2	-65	615	1
2025-07-21 17:43:14.054+00	127	telegraf	840973111	stop-moving	2	3	4	-1	62	618	1
2025-07-21 17:49:39.64+00	127	telegraf	1523842139	start-moving	0	1	-1	-8	79	622	1
2025-07-21 17:49:40.062+00	127	telegraf	840973111	start-moving	0	1	4	-1	63	623	1
2025-07-21 17:49:40.545+00	127	telegraf	527134251	start-moving	0	1	-2	-2	-66	624	1
2025-07-21 17:50:39.076+00	127	telegraf	840973111	stop-moving	1	1	5	-1	63	626	1
2025-07-21 17:50:39.547+00	127	telegraf	527134251	stop-moving	1	1	0	-3	-65	629	1
2025-07-21 17:50:39.643+00	127	telegraf	1523842139	stop-moving	1	1	3	1	64	632	1
2025-07-21 17:58:38.551+00	127	telegraf	527134251	start-moving	0	1	-1	-3	-66	641	1
2025-07-21 17:59:38.559+00	127	telegraf	527134251	stop-moving	1	1	-1	-2	-63	642	1
2025-07-21 18:00:39.105+00	127	telegraf	840973111	stationary	0	0	5	-1	61	645	1
2025-07-21 18:00:39.685+00	127	telegraf	1523842139	stationary	0	0	2	0	64	646	1
2025-07-21 18:05:20.72+00	127	telegraf	1523842139	start-moving	0	1	2	0	64	650	1
2025-07-21 18:06:20.728+00	127	telegraf	1523842139	stop-moving	1	1	3	0	64	651	1
2025-07-21 19:02:42.351+00	127	telegraf	840973111	stationary	0	0	4	-1	62	726	1
2025-07-21 19:04:05.932+00	127	telegraf	1523842139	stationary	0	0	4	0	65	729	1
2025-07-21 19:04:05.957+00	127	telegraf	527134251	stationary	0	0	0	-2	-65	730	1
2025-07-21 19:09:16.98+00	127	telegraf	527134251	start-moving	0	1	-1	-3	-65	732	1
2025-07-21 19:10:16.996+00	127	telegraf	527134251	stop-moving	1	1	0	-2	-65	734	1
2025-07-21 19:12:20.961+00	127	telegraf	1523842139	start-moving	0	1	-4	-45	118	738	1
2025-07-21 19:12:21.001+00	127	telegraf	527134251	start-moving	0	1	15	12	-61	739	1
2025-07-21 19:12:21.378+00	127	telegraf	840973111	start-moving	0	1	-16	13	63	740	1
2025-07-21 19:13:21.966+00	127	telegraf	1523842139	stop-moving	3	2	2	0	64	741	1
2025-07-21 19:13:23.015+00	127	telegraf	527134251	stop-moving	4	3	-1	-2	-66	744	1
2025-07-21 19:13:23.377+00	127	telegraf	840973111	stop-moving	3	2	6	-1	62	747	1
2025-07-21 19:16:25.381+00	127	telegraf	840973111	stop-moving	6	4	5	-1	62	753	1
2025-07-21 19:16:29.038+00	127	telegraf	527134251	stop-moving	6	3	-1	-2	-65	756	1
2025-07-21 19:16:32.034+00	127	telegraf	527134251	start-moving	0	1	-23	-31	-2	759	1
2025-07-21 19:16:32.391+00	127	telegraf	840973111	start-moving	0	1	25	-109	103	760	1
2025-07-21 19:17:30.978+00	127	telegraf	1523842139	stop-moving	9	6	2	0	64	762	1
2025-07-21 19:17:32.054+00	127	telegraf	527134251	stop-moving	2	1	0	-2	-65	765	1
2025-07-21 19:17:34.393+00	127	telegraf	840973111	stop-moving	3	3	5	-1	62	768	1
2025-07-21 21:25:21.753+00	127	telegraf	1523842139	start-moving	0	1	-10	-16	61	1077	1
2025-07-22 17:44:49.607+00	127	telegraf	1126982881	start-moving	0	1	31	29	29	1152	1
2025-07-22 17:45:57.62+00	127	telegraf	1126982881	stop-moving	8	9	1	-3	65	1157	1
2025-07-22 17:49:47.862+00	127	telegraf	1041420528	stationary	0	0	2	0	64	1165	1
2025-07-22 17:51:51.653+00	127	telegraf	1126982881	start-moving	0	1	0	-65	33	1166	1
2025-07-22 17:51:46.358+00	127	telegraf	978202981	stationary	0	0	5	-1	65	1167	1
2025-07-22 17:52:54.659+00	127	telegraf	1126982881	stop-moving	5	3	1	-2	64	1171	1
2025-07-22 17:52:58.665+00	127	telegraf	1126982881	start-moving	0	1	6	4	64	1174	1
2025-07-22 17:54:45.683+00	127	telegraf	1126982881	stop-moving	3	5	2	-1	66	1177	1
2025-07-22 17:55:09.679+00	127	telegraf	1126982881	start-moving	0	1	20	0	88	1180	1
2025-07-22 17:56:56.703+00	127	telegraf	1126982881	stop-moving	20	24	1	-4	65	1189	1
2025-07-22 17:59:47.919+00	127	telegraf	1041420528	stationary	0	0	2	1	64	1196	1
2025-07-22 18:01:46.395+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1199	1
2025-07-22 19:27:37.175+00	127	telegraf	1126982881	stop-moving	2	2	1	-2	66	1262	1
2025-07-22 19:27:46.81+00	127	telegraf	978202981	stop-moving	1	1	3	-1	65	1266	1
2025-07-22 19:29:00.184+00	127	telegraf	1126982881	stop-moving	4	5	1	-3	67	1276	1
2025-07-22 19:29:48.306+00	127	telegraf	1041420528	stationary	0	0	1	0	64	1280	1
2025-07-22 19:30:01.189+00	127	telegraf	1126982881	start-moving	0	1	1	-3	66	1283	1
2025-07-22 19:31:15.206+00	127	telegraf	1126982881	stop-moving	6	7	1	-4	66	1288	1
2025-07-23 12:19:57.849+00	127	telegraf	978202981	stationary	0	0	4	-1	66	2130	1
2025-07-23 12:22:16.668+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	2132	1
2025-07-23 12:53:35.786+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	2169	1
2025-07-23 12:53:35.971+00	127	telegraf	978202981	stationary	0	0	3	-1	66	2170	1
2025-07-23 12:53:48.904+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	2171	1
2025-07-23 13:03:36.008+00	127	telegraf	978202981	stationary	0	0	3	-1	65	2177	1
2025-07-23 13:03:35.818+00	127	telegraf	1041420528	stationary	0	0	2	0	64	2178	1
2025-07-23 13:03:48.993+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	2179	1
2025-07-23 13:13:35.854+00	127	telegraf	1041420528	stationary	0	0	2	0	63	2181	1
2025-07-23 13:13:36.046+00	127	telegraf	978202981	stationary	0	0	4	-2	66	2182	1
2025-07-23 13:13:49.042+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	2183	1
2025-07-23 13:23:35.887+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	2188	1
2025-07-23 13:23:36.181+00	127	telegraf	978202981	stationary	0	0	3	-2	65	2189	1
2025-07-23 13:23:49.111+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	2190	1
2025-07-21 21:25:35.34+00	127	telegraf	527134251	stationary	0	0	0	-1	63	1078	1
2025-07-21 21:26:36.954+00	127	telegraf	978202981	stop-moving	2	3	3	-1	65	126	1
2025-07-21 21:26:36.67+00	127	telegraf	1041420528	stop-moving	2	3	2	1	62	127	1
2025-07-21 21:30:49.787+00	127	telegraf	1523842139	stop-moving	3	3	3	-1	66	1086	1
2025-07-21 21:30:54.395+00	127	telegraf	527134251	start-moving	0	1	1	0	64	1089	1
2025-07-21 21:31:53.406+00	127	telegraf	527134251	stop-moving	1	1	0	-1	64	1091	1
2025-07-21 21:32:16.331+00	127	telegraf	840973111	stationary	0	0	5	-1	62	1095	1
2025-07-21 21:32:58.793+00	127	telegraf	1523842139	start-moving	0	1	-12	-26	59	1096	1
2025-07-21 21:33:53.335+00	127	telegraf	840973111	start-moving	0	1	43	1	6	1098	1
2025-07-21 21:33:53.435+00	127	telegraf	527134251	start-moving	0	1	-45	-56	29	1099	1
2025-07-21 21:34:52.335+00	127	telegraf	840973111	stop-moving	3	1	5	-1	63	1100	1
2025-07-21 21:34:50.806+00	127	telegraf	1523842139	stop-moving	9	8	4	0	64	1103	1
2025-07-21 21:34:52.45+00	127	telegraf	527134251	stop-moving	2	1	1	-1	64	1106	1
2025-07-21 21:36:36.992+00	127	telegraf	978202981	stationary	0	0	4	-2	63	147	1
2025-07-21 21:36:36.76+00	127	telegraf	1041420528	stationary	0	0	3	0	65	148	1
2025-07-21 21:38:03.474+00	127	telegraf	527134251	start-moving	0	1	4	-2	59	1110	1
2025-07-21 21:39:03.489+00	127	telegraf	527134251	stop-moving	1	1	1	-1	64	1112	1
2025-07-21 21:40:35.496+00	127	telegraf	527134251	start-moving	0	1	0	-1	65	1118	1
2025-07-21 21:41:34.508+00	127	telegraf	527134251	stop-moving	1	1	1	1	64	1121	1
2025-07-21 21:41:44.5+00	127	telegraf	527134251	start-moving	0	1	-1	1	51	1124	1
2025-07-22 08:06:37.761+00	127	telegraf	1126982881	stationary	0	0	2	-4	66	525	1
2025-07-22 08:06:40.015+00	127	telegraf	1041420528	stationary	0	0	3	0	64	526	1
2025-07-22 08:06:40.153+00	127	telegraf	978202981	stationary	0	0	4	-1	65	527	1
2025-07-22 19:48:32.337+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	1324	1
2025-07-22 19:51:10.358+00	127	telegraf	1126982881	start-moving	0	1	26	17	50	1327	1
2025-07-22 20:05:07.473+00	127	telegraf	1126982881	start-moving	0	1	54	-17	67	1350	1
2025-07-22 20:06:24.488+00	127	telegraf	1126982881	stop-moving	16	15	2	-3	66	1356	1
2025-07-22 20:07:47.092+00	127	telegraf	978202981	stationary	0	0	4	-1	64	1362	1
2025-07-22 20:08:25.093+00	127	telegraf	978202981	start-moving	0	1	7	0	76	1364	1
2025-07-22 20:08:51.495+00	127	telegraf	1126982881	start-moving	0	1	51	22	5	1365	1
2025-07-22 20:09:25.098+00	127	telegraf	978202981	stop-moving	1	1	3	-1	64	1366	1
2025-07-22 20:09:48.499+00	127	telegraf	1041420528	stationary	0	0	1	0	63	1369	1
2025-07-22 20:09:54.501+00	127	telegraf	1126982881	stop-moving	3	2	1	-3	66	1370	1
2025-07-23 13:33:36.258+00	127	telegraf	978202981	stationary	0	0	3	-1	64	2196	1
2025-07-23 13:33:35.919+00	127	telegraf	1041420528	stationary	0	0	2	1	63	2197	1
2025-07-23 13:33:49.144+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	2198	1
2025-07-23 13:43:35.953+00	127	telegraf	1041420528	stationary	0	0	2	0	63	2201	1
2025-07-23 13:43:36.309+00	127	telegraf	978202981	stationary	0	0	4	-1	64	2202	1
2025-07-23 13:43:49.181+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	2203	1
2025-07-23 13:53:36.028+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	2207	1
2025-07-23 13:53:36.353+00	127	telegraf	978202981	stationary	0	0	4	-2	66	2208	1
2025-07-23 13:53:49.23+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	2209	1
2025-07-23 14:03:36.14+00	127	telegraf	1041420528	stationary	0	0	2	0	63	2214	1
2025-07-23 14:03:36.413+00	127	telegraf	978202981	stationary	0	0	4	-1	66	2215	1
2025-07-23 14:03:49.262+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	2216	1
2025-07-23 14:23:49.344+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	2233	1
2025-07-23 14:23:36.608+00	127	telegraf	978202981	stationary	0	0	4	-1	65	2234	1
2025-07-23 14:23:36.285+00	127	telegraf	1041420528	stationary	0	0	2	0	64	2235	1
2025-07-23 14:33:36.358+00	127	telegraf	1041420528	stationary	0	0	2	0	64	2241	1
2025-07-23 14:33:36.676+00	127	telegraf	978202981	stationary	0	0	4	-2	65	2242	1
2025-07-23 14:33:49.381+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	2243	1
2025-07-23 14:43:36.484+00	127	telegraf	1041420528	stationary	0	0	2	0	63	2249	1
2025-07-23 14:43:36.707+00	127	telegraf	978202981	stationary	0	0	3	-1	65	2250	1
2025-07-23 14:43:49.435+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	2251	1
2025-07-22 08:16:37.817+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	535	1
2025-07-22 08:16:40.193+00	127	telegraf	978202981	stationary	0	0	3	-1	65	536	1
2025-07-22 08:16:40.05+00	127	telegraf	1041420528	stationary	0	0	2	0	64	537	1
2025-07-22 08:26:37.895+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	543	1
2025-07-22 08:26:40.23+00	127	telegraf	978202981	stationary	0	0	3	-2	65	545	1
2025-07-22 08:36:37.934+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	546	1
2025-07-22 08:36:40.115+00	127	telegraf	1041420528	stationary	0	0	2	1	65	547	1
2025-07-22 08:36:40.262+00	127	telegraf	978202981	stationary	0	0	5	-2	65	548	1
2025-07-22 13:50:44.885+00	127	telegraf	1126982881	start-moving	0	1	-79	33	26	741	1
2025-07-22 13:50:45.012+00	127	telegraf	978202981	start-moving	0	1	3	0	65	742	1
2025-07-22 20:19:25.125+00	127	telegraf	978202981	stationary	0	0	4	-2	65	1388	1
2025-07-23 14:53:36.741+00	127	telegraf	978202981	stationary	0	0	4	0	65	2255	1
2025-07-23 14:53:36.512+00	127	telegraf	1041420528	stationary	0	0	3	0	63	2256	1
2025-07-23 14:53:49.504+00	127	telegraf	1126982881	stationary	0	0	3	0	67	2257	1
2025-07-23 15:03:36.777+00	127	telegraf	978202981	stationary	0	0	3	-1	66	2261	1
2025-07-23 15:03:36.555+00	127	telegraf	1041420528	stationary	0	0	2	0	64	2262	1
2025-07-23 15:03:49.574+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	2263	1
2025-07-23 15:13:36.589+00	127	telegraf	1041420528	stationary	0	0	2	0	65	2268	1
2025-07-23 15:13:36.813+00	127	telegraf	978202981	stationary	0	0	4	-1	65	2269	1
2025-07-23 15:13:49.643+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	2270	1
2025-07-23 15:23:49.732+00	127	telegraf	1126982881	stationary	0	0	2	0	65	2275	1
2025-07-23 15:23:36.839+00	127	telegraf	978202981	stationary	0	0	4	-1	65	2276	1
2025-07-23 15:23:36.621+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	2277	1
2025-07-23 15:33:36.654+00	127	telegraf	1041420528	stationary	0	0	3	0	66	2282	1
2025-07-23 15:33:36.932+00	127	telegraf	978202981	stationary	0	0	4	-1	65	2283	1
2025-07-23 15:33:49.807+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	2284	1
2025-07-23 17:33:37.364+00	127	telegraf	1041420528	stationary	0	0	3	0	64	2369	1
2025-07-23 17:33:37.65+00	127	telegraf	978202981	stationary	0	0	3	-1	64	2370	1
2025-07-23 17:33:50.378+00	127	telegraf	1126982881	stationary	0	0	2	-1	64	2371	1
2025-07-23 17:34:06.388+00	127	telegraf	1126982881	start-moving	0	1	3	-1	66	2372	1
2025-07-23 17:34:06.659+00	127	telegraf	978202981	start-moving	0	1	3	-1	66	2373	1
2025-07-23 17:34:06.36+00	127	telegraf	1041420528	start-moving	0	1	2	0	63	2374	1
2025-07-23 17:35:05.391+00	127	telegraf	1126982881	stop-moving	1	1	2	-1	65	2376	1
2025-07-23 17:35:06.659+00	127	telegraf	978202981	stop-moving	1	1	3	-1	64	2379	1
2025-07-23 17:35:06.374+00	127	telegraf	1041420528	stop-moving	1	1	2	0	63	2383	1
2025-07-22 08:46:40.336+00	127	telegraf	978202981	stationary	0	0	4	-1	65	554	1
2025-07-22 08:46:40.153+00	127	telegraf	1041420528	stationary	0	0	2	0	63	555	1
2025-07-22 08:56:40.186+00	127	telegraf	1041420528	stationary	0	0	2	0	63	562	1
2025-07-22 08:56:40.438+00	127	telegraf	978202981	stationary	0	0	4	-1	64	563	1
2025-07-22 09:06:38.148+00	127	telegraf	1126982881	stationary	0	0	4	-3	65	564	1
2025-07-22 09:06:40.221+00	127	telegraf	1041420528	stationary	0	0	2	0	63	565	1
2025-07-22 09:06:40.492+00	127	telegraf	978202981	stationary	0	0	4	-1	65	566	1
2025-07-22 11:16:40.923+00	127	telegraf	1041420528	stationary	0	0	3	0	64	645	1
2025-07-22 11:16:41.242+00	127	telegraf	978202981	stationary	0	0	4	0	65	646	1
2025-07-22 11:26:38.994+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	653	1
2025-07-22 11:26:41.291+00	127	telegraf	978202981	stationary	0	0	4	-2	64	654	1
2025-07-22 11:36:39.037+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	657	1
2025-07-22 11:36:41.34+00	127	telegraf	978202981	stationary	0	0	4	-2	64	658	1
2025-07-22 11:36:40.992+00	127	telegraf	1041420528	stationary	0	0	2	1	64	659	1
2025-07-22 11:46:39.075+00	127	telegraf	1126982881	stationary	0	0	3	-3	67	660	1
2025-07-22 11:46:41.021+00	127	telegraf	1041420528	stationary	0	0	3	1	64	661	1
2025-07-22 11:46:41.415+00	127	telegraf	978202981	stationary	0	0	4	-1	65	662	1
2025-07-22 13:51:45.025+00	127	telegraf	978202981	stop-moving	1	1	3	-1	65	752	1
2025-07-22 13:52:42.906+00	127	telegraf	1126982881	stop-moving	31	34	1	-1	66	757	1
2025-07-22 14:01:45.081+00	127	telegraf	978202981	stationary	0	0	5	-1	65	772	1
2025-07-22 15:11:45.513+00	127	telegraf	978202981	stationary	0	0	4	-1	65	814	1
2025-07-22 15:12:43.404+00	127	telegraf	1126982881	stationary	0	0	0	0	65	815	1
2025-07-22 15:12:43.082+00	127	telegraf	1041420528	stationary	0	0	2	0	64	816	1
2025-07-22 15:18:48.444+00	127	telegraf	1126982881	start-moving	0	1	28	-51	22	818	1
2025-07-22 15:18:48.108+00	127	telegraf	1041420528	start-moving	0	1	2	1	64	820	1
2025-07-22 15:19:47.12+00	127	telegraf	1041420528	stop-moving	1	1	2	1	64	823	1
2025-07-22 15:19:56.456+00	127	telegraf	1126982881	stop-moving	10	8	2	-1	66	826	1
2025-07-22 15:20:21.468+00	127	telegraf	1126982881	start-moving	0	1	6	0	65	830	1
2025-07-22 15:21:21.472+00	127	telegraf	1126982881	stop-moving	2	2	1	-2	64	832	1
2025-07-22 15:21:45.549+00	127	telegraf	978202981	stationary	0	0	3	-1	65	835	1
2025-07-22 20:19:45.545+00	127	telegraf	1126982881	start-moving	0	1	24	-57	36	1390	1
2025-07-22 20:19:48.573+00	127	telegraf	1041420528	stationary	0	0	2	0	64	1392	1
2025-07-22 20:20:51.564+00	127	telegraf	1126982881	stop-moving	5	5	2	-3	65	1397	1
2025-07-22 20:22:52.578+00	127	telegraf	1126982881	start-moving	0	1	46	29	34	1402	1
2025-07-22 20:23:59.147+00	127	telegraf	978202981	start-moving	0	1	4	-1	66	1407	1
2025-07-22 20:23:59.606+00	127	telegraf	1041420528	start-moving	0	1	2	-1	63	1408	1
2025-07-22 20:24:57.596+00	127	telegraf	1126982881	stop-moving	10	7	2	0	65	1409	1
2025-07-22 20:24:58.612+00	127	telegraf	1041420528	stop-moving	1	1	1	-1	64	1412	1
2025-07-22 20:24:59.157+00	127	telegraf	978202981	stop-moving	1	1	4	-2	65	1413	1
2025-07-22 20:31:34.622+00	127	telegraf	1126982881	start-moving	0	1	0	-9	65	1424	1
2025-07-22 20:31:40.173+00	127	telegraf	978202981	start-moving	0	1	3	-2	66	1425	1
2025-07-22 20:31:40.671+00	127	telegraf	1041420528	start-moving	0	1	1	0	63	1426	1
2025-07-22 20:32:40.629+00	127	telegraf	1126982881	stop-moving	7	8	2	-1	65	1428	1
2025-07-22 20:32:40.167+00	127	telegraf	978202981	stop-moving	1	1	4	-1	66	1431	1
2025-07-22 20:32:40.688+00	127	telegraf	1041420528	stop-moving	1	1	1	1	64	1432	1
2025-07-22 20:42:40.67+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	1444	1
2025-07-22 20:42:40.204+00	127	telegraf	978202981	stationary	0	0	3	-1	66	1445	1
2025-07-22 20:42:40.779+00	127	telegraf	1041420528	stationary	0	0	1	0	65	1446	1
2025-07-22 20:52:40.708+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	1448	1
2025-07-22 20:52:40.839+00	127	telegraf	1041420528	stationary	0	0	1	0	66	1449	1
2025-07-22 20:52:40.235+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1450	1
2025-07-22 21:02:40.742+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	1454	1
2025-07-22 21:02:40.92+00	127	telegraf	1041420528	stationary	0	0	1	0	64	1455	1
2025-07-22 21:02:40.274+00	127	telegraf	978202981	stationary	0	0	3	-2	64	1456	1
2025-07-22 21:12:40.782+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	1463	1
2025-07-22 21:12:40.958+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	1464	1
2025-07-22 21:12:40.331+00	127	telegraf	978202981	stationary	0	0	4	-2	66	1465	1
2025-07-22 21:18:18.586+00	127	telegraf	840973111	stationary	0	0	4	-1	62	1	1
2025-07-23 17:45:05.452+00	127	telegraf	1126982881	stationary	0	0	3	-1	64	2391	1
2025-07-23 17:45:06.398+00	127	telegraf	1041420528	stationary	0	0	3	0	63	2392	1
2025-07-23 17:45:06.762+00	127	telegraf	978202981	stationary	0	0	3	-1	65	2393	1
2025-07-23 17:55:05.536+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	2397	1
2025-07-23 17:55:06.858+00	127	telegraf	978202981	stationary	0	0	4	-1	65	2398	1
2025-07-23 17:55:06.432+00	127	telegraf	1041420528	stationary	0	0	1	0	62	2399	1
2025-07-23 18:05:05.612+00	127	telegraf	1126982881	stationary	0	0	2	-1	66	2401	1
2025-07-23 18:05:06.465+00	127	telegraf	1041420528	stationary	0	0	2	0	64	2402	1
2025-07-23 18:05:06.908+00	127	telegraf	978202981	stationary	0	0	3	-1	65	2403	1
2025-07-23 18:15:05.649+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	2410	1
2025-07-23 18:15:06.968+00	127	telegraf	978202981	stationary	0	0	4	-1	64	2411	1
2025-07-23 18:15:06.503+00	127	telegraf	1041420528	stationary	0	0	3	0	63	2412	1
2025-07-22 11:56:41.116+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	673	1
2025-07-22 12:06:39.282+00	127	telegraf	1126982881	stationary	0	0	4	-3	65	675	1
2025-07-22 12:16:39.322+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	680	1
2025-07-22 12:16:41.252+00	127	telegraf	1041420528	stationary	0	0	2	1	63	681	1
2025-07-22 12:16:41.653+00	127	telegraf	978202981	stationary	0	0	4	-1	65	682	1
2025-07-22 12:26:41.682+00	127	telegraf	978202981	stationary	0	0	4	-2	65	693	1
2025-07-22 12:26:41.312+00	127	telegraf	1041420528	stationary	0	0	2	1	64	694	1
2025-07-22 12:36:39.394+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	696	1
2025-07-22 12:46:39.433+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	699	1
2025-07-22 12:46:41.401+00	127	telegraf	1041420528	stationary	0	0	3	0	64	700	1
2025-07-22 12:46:41.757+00	127	telegraf	978202981	stationary	0	0	4	-1	65	701	1
2025-07-22 17:06:00.203+00	127	telegraf	1126982881	start-moving	0	1	-12	3	63	1023	1
2025-07-22 17:07:11.218+00	127	telegraf	1126982881	stop-moving	9	11	2	-4	64	1029	1
2025-07-22 17:07:39.218+00	127	telegraf	1126982881	start-moving	0	1	-44	-27	39	1032	1
2025-07-22 21:21:34.094+00	127	telegraf	1523842139	stationary	0	0	4	0	65	6	1
2025-07-22 21:22:40.859+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	1466	1
2025-07-22 21:22:41.001+00	127	telegraf	1041420528	stationary	0	0	2	0	63	1467	1
2025-07-22 21:22:40.404+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1468	1
2025-07-22 21:24:30.656+00	127	telegraf	527134251	stationary	0	0	1	-1	65	8	1
2025-07-22 21:28:18.662+00	127	telegraf	840973111	stationary	0	0	4	-2	63	14	1
2025-07-22 21:29:06.653+00	127	telegraf	840973111	start-moving	0	1	6	-6	73	15	1
2025-07-22 21:30:06.673+00	127	telegraf	840973111	stop-moving	1	1	5	-2	62	16	1
2025-07-22 21:31:34.168+00	127	telegraf	1523842139	stationary	0	0	3	1	65	19	1
2025-07-22 21:32:40.909+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	1473	1
2025-07-22 21:32:40.5+00	127	telegraf	978202981	stationary	0	0	4	-2	65	1474	1
2025-07-22 21:32:41.036+00	127	telegraf	1041420528	stationary	0	0	2	1	63	1475	1
2025-07-22 21:34:30.686+00	127	telegraf	527134251	start-moving	0	1	1	-8	-65	20	1
2025-07-22 21:34:30.199+00	127	telegraf	1523842139	start-moving	0	1	-8	-9	98	21	1
2025-07-22 21:34:32.712+00	127	telegraf	840973111	start-moving	0	1	11	-17	106	22	1
2025-07-22 21:36:06.692+00	127	telegraf	527134251	stop-moving	12	7	1	-2	65	24	1
2025-07-22 21:35:59.211+00	127	telegraf	1523842139	stop-moving	14	6	3	0	64	27	1
2025-07-22 21:35:58.72+00	127	telegraf	840973111	stop-moving	10	6	5	-1	61	28	1
2025-07-22 21:42:30.249+00	127	telegraf	1523842139	start-moving	0	1	36	-10	58	36	1
2025-07-22 21:42:31.717+00	127	telegraf	527134251	start-moving	0	1	49	-66	104	37	1
2025-07-22 21:42:31.748+00	127	telegraf	840973111	start-moving	0	1	-32	-80	102	38	1
2025-07-22 21:42:40.979+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	1482	1
2025-07-22 21:42:41.08+00	127	telegraf	1041420528	stationary	0	0	2	0	63	1483	1
2025-07-22 21:42:40.546+00	127	telegraf	978202981	stationary	0	0	3	-1	65	1484	1
2025-07-22 21:45:46.721+00	127	telegraf	527134251	stop-moving	36	21	-2	-3	-65	48	1
2025-07-22 21:45:46.761+00	127	telegraf	840973111	stop-moving	32	18	-1	-2	-61	51	1
2025-07-22 21:45:46.266+00	127	telegraf	1523842139	stop-moving	34	15	3	1	64	52	1
2025-07-22 21:45:51.272+00	127	telegraf	1523842139	start-moving	0	1	4	1	64	57	1
2025-07-22 21:45:51.726+00	127	telegraf	527134251	start-moving	0	1	2	-1	-33	58	1
2025-07-22 21:45:51.765+00	127	telegraf	840973111	start-moving	0	1	10	-1	-30	59	1
2025-07-22 21:46:51.734+00	127	telegraf	527134251	stop-moving	2	1	0	-2	-66	61	1
2025-07-22 21:46:53.77+00	127	telegraf	840973111	stop-moving	3	2	-1	-1	-61	64	1
2025-07-22 21:46:53.275+00	127	telegraf	1523842139	stop-moving	4	4	4	1	65	65	1
2025-07-22 21:46:58.725+00	127	telegraf	527134251	start-moving	0	1	-21	57	-53	70	1
2025-07-22 21:46:58.271+00	127	telegraf	1523842139	start-moving	0	1	-12	48	88	71	1
2025-07-22 21:46:58.768+00	127	telegraf	840973111	start-moving	0	1	65	63	-37	72	1
2025-07-22 21:47:57.767+00	127	telegraf	840973111	stop-moving	2	1	0	-2	-62	73	1
2025-07-22 21:47:59.743+00	127	telegraf	527134251	stop-moving	2	2	-1	-2	-66	76	1
2025-07-22 21:47:59.27+00	127	telegraf	1523842139	stop-moving	2	2	2	0	65	79	1
2025-07-22 21:48:17.769+00	127	telegraf	840973111	start-moving	0	1	3	5	-49	82	1
2025-07-22 21:48:38.734+00	127	telegraf	527134251	start-moving	0	1	-8	-4	-63	83	1
2025-07-22 21:48:39.285+00	127	telegraf	1523842139	start-moving	0	1	3	0	64	84	1
2025-07-22 21:49:17.776+00	127	telegraf	840973111	stop-moving	1	1	0	-1	-61	85	1
2025-07-22 21:49:38.743+00	127	telegraf	527134251	stop-moving	1	1	-1	-2	-65	88	1
2025-07-22 21:49:38.285+00	127	telegraf	1523842139	stop-moving	1	1	3	1	65	91	1
2025-07-22 21:49:47.742+00	127	telegraf	527134251	start-moving	0	1	-1	-2	-65	94	1
2025-07-22 21:50:46.746+00	127	telegraf	527134251	stop-moving	1	1	-1	-2	-65	95	1
2025-07-22 21:52:41.035+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	1485	1
2025-07-22 21:52:40.605+00	127	telegraf	978202981	stationary	0	0	3	-1	65	1486	1
2025-07-22 21:52:41.117+00	127	telegraf	1041420528	stationary	0	0	2	0	65	1487	1
2025-07-22 21:57:39.782+00	127	telegraf	840973111	start-moving	0	1	-1	-1	-61	103	1
2025-07-22 21:58:01.343+00	127	telegraf	1523842139	start-moving	0	1	3	1	65	104	1
2025-07-22 21:58:38.789+00	127	telegraf	840973111	stop-moving	1	1	1	-1	-61	105	1
2025-07-22 21:59:01.343+00	127	telegraf	1523842139	stop-moving	1	1	3	1	65	108	1
2025-07-22 22:00:46.758+00	127	telegraf	527134251	stationary	0	0	-1	-2	-66	112	1
2025-07-22 22:02:41.109+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	1491	1
2025-07-22 22:02:41.161+00	127	telegraf	1041420528	stationary	0	0	2	0	63	1492	1
2025-07-22 22:02:40.668+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1493	1
2025-07-22 22:07:20.773+00	127	telegraf	527134251	start-moving	0	1	-1	-3	-65	113	1
2025-07-22 22:08:20.775+00	127	telegraf	527134251	stop-moving	1	1	-1	-1	-65	114	1
2025-07-22 22:08:38.808+00	127	telegraf	840973111	stationary	0	0	0	-1	-60	117	1
2025-07-22 12:56:39.522+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	710	1
2025-07-22 12:56:41.438+00	127	telegraf	1041420528	stationary	0	0	3	0	64	711	1
2025-07-22 12:56:41.787+00	127	telegraf	978202981	stationary	0	0	4	-1	65	712	1
2025-07-22 13:06:39.569+00	127	telegraf	1126982881	stationary	0	0	3	-2	64	714	1
2025-07-22 13:16:39.631+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	717	1
2025-07-22 13:16:41.854+00	127	telegraf	978202981	stationary	0	0	3	-1	65	718	1
2025-07-22 13:16:41.545+00	127	telegraf	1041420528	stationary	0	0	1	0	64	719	1
2025-07-22 13:26:41.58+00	127	telegraf	1041420528	stationary	0	0	3	1	64	728	1
2025-07-22 13:26:41.887+00	127	telegraf	978202981	stationary	0	0	3	-1	66	729	1
2025-07-22 13:36:39.8+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	733	1
2025-07-22 13:36:41.95+00	127	telegraf	978202981	stationary	0	0	4	-1	65	734	1
2025-07-22 13:36:41.61+00	127	telegraf	1041420528	stationary	0	0	2	1	64	735	1
2025-07-22 13:46:41.64+00	127	telegraf	1041420528	stationary	0	0	3	1	64	737	1
2025-07-22 13:46:42.002+00	127	telegraf	978202981	stationary	0	0	4	-2	66	738	1
2025-07-22 17:09:47.573+00	127	telegraf	1041420528	stationary	0	0	1	0	63	1043	1
2025-07-22 17:10:56.245+00	127	telegraf	1126982881	stop-moving	25	24	2	-2	65	1046	1
2025-07-22 22:09:01.369+00	127	telegraf	1523842139	stationary	0	0	2	0	66	118	1
2025-07-22 22:09:39.366+00	127	telegraf	1523842139	start-moving	0	1	4	0	64	119	1
2025-07-22 22:09:38.816+00	127	telegraf	840973111	start-moving	0	1	-1	-3	-62	120	1
2025-07-22 22:10:11.779+00	127	telegraf	527134251	start-moving	0	1	0	101	-84	121	1
2025-07-22 22:11:11.786+00	127	telegraf	527134251	stop-moving	2	1	-1	-2	-65	123	1
2025-07-22 22:11:11.816+00	127	telegraf	840973111	stop-moving	5	4	1	-1	-64	126	1
2025-07-22 22:11:11.372+00	127	telegraf	1523842139	stop-moving	4	2	3	2	65	127	1
2025-07-22 22:12:41.186+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	1500	1
2025-07-22 22:12:40.721+00	127	telegraf	978202981	stationary	0	0	3	-2	64	1501	1
2025-07-22 22:12:41.197+00	127	telegraf	1041420528	stationary	0	0	1	0	64	1502	1
2025-07-22 22:21:11.868+00	127	telegraf	527134251	stationary	0	0	0	-2	-65	136	1
2025-07-22 22:21:11.883+00	127	telegraf	840973111	stationary	0	0	-1	-2	-62	137	1
2025-07-22 22:21:11.465+00	127	telegraf	1523842139	stationary	0	0	3	0	64	138	1
2025-07-23 18:25:05.721+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	2415	1
2025-07-23 18:25:06.545+00	127	telegraf	1041420528	stationary	0	0	2	0	64	2416	1
2025-07-23 18:25:07.016+00	127	telegraf	978202981	stationary	0	0	4	-2	65	2417	1
2025-07-22 17:20:50.328+00	127	telegraf	1126982881	start-moving	0	1	-19	-35	47	1058	1
2025-07-22 17:21:46.264+00	127	telegraf	978202981	stationary	0	0	3	-1	65	1064	1
2025-07-22 17:22:28.352+00	127	telegraf	1126982881	stop-moving	16	19	1	-3	65	1068	1
2025-07-22 22:22:41.255+00	127	telegraf	1126982881	stationary	0	0	1	0	66	1503	1
2025-07-22 22:22:40.835+00	127	telegraf	978202981	stationary	0	0	4	0	65	1504	1
2025-07-22 22:22:41.278+00	127	telegraf	1041420528	stationary	0	0	2	0	64	1505	1
2025-07-22 22:27:10.907+00	127	telegraf	527134251	start-moving	0	1	-6	10	-69	141	1
2025-07-22 22:27:11.554+00	127	telegraf	1523842139	start-moving	0	1	15	-33	69	142	1
2025-07-22 22:27:10.922+00	127	telegraf	840973111	start-moving	0	1	2	0	-61	144	1
2025-07-22 22:29:59.931+00	127	telegraf	527134251	stop-moving	30	13	1	-1	64	150	1
2025-07-22 22:30:01.596+00	127	telegraf	1523842139	stop-moving	27	12	0	0	-65	153	1
2025-07-22 22:29:59.937+00	127	telegraf	840973111	stop-moving	31	15	5	-1	61	154	1
2025-07-22 22:32:09.941+00	127	telegraf	527134251	start-moving	0	1	15	10	36	161	1
2025-07-22 22:32:09.953+00	127	telegraf	840973111	start-moving	0	1	13	-21	56	162	1
2025-07-22 22:32:09.606+00	127	telegraf	1523842139	start-moving	0	1	-1	-7	-65	163	1
2025-07-22 22:32:41.294+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	1508	1
2025-07-22 22:32:40.889+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1509	1
2025-07-22 22:32:41.417+00	127	telegraf	1041420528	stationary	0	0	1	0	63	1510	1
2025-07-22 22:33:08.953+00	127	telegraf	527134251	stop-moving	7	1	2	-1	64	164	1
2025-07-22 22:33:09.613+00	127	telegraf	1523842139	stop-moving	7	2	-2	0	-65	167	1
2025-07-22 22:33:09.954+00	127	telegraf	840973111	stop-moving	7	1	6	-1	61	168	1
2025-07-22 22:33:17.946+00	127	telegraf	527134251	start-moving	0	1	-10	84	45	173	1
2025-07-22 22:33:17.612+00	127	telegraf	1523842139	start-moving	0	1	-7	27	-66	174	1
2025-07-22 22:33:17.953+00	127	telegraf	840973111	start-moving	0	1	63	58	31	175	1
2025-07-22 22:34:19.95+00	127	telegraf	527134251	stop-moving	3	2	1	-1	65	176	1
2025-07-22 22:34:24.96+00	127	telegraf	527134251	start-moving	0	1	-12	65	18	179	1
2025-07-22 22:34:17.957+00	127	telegraf	840973111	stop-moving	2	1	5	-1	61	180	1
2025-07-22 22:34:20.619+00	127	telegraf	1523842139	stop-moving	4	3	0	-1	-65	181	1
2025-07-22 22:34:24.948+00	127	telegraf	840973111	start-moving	0	1	41	53	16	186	1
2025-07-22 22:34:24.624+00	127	telegraf	1523842139	start-moving	0	1	-10	16	-72	187	1
2025-07-22 22:35:23.963+00	127	telegraf	527134251	stop-moving	3	1	2	0	64	188	1
2025-07-22 22:35:24.962+00	127	telegraf	840973111	stop-moving	3	1	4	0	61	191	1
2025-07-22 22:35:24.631+00	127	telegraf	1523842139	stop-moving	3	1	-1	-1	-65	192	1
2025-07-22 22:35:28.967+00	127	telegraf	840973111	start-moving	0	1	11	-23	82	197	1
2025-07-22 22:35:29.968+00	127	telegraf	527134251	start-moving	0	1	-35	81	-5	198	1
2025-07-22 22:35:29.625+00	127	telegraf	1523842139	start-moving	0	1	63	-12	-128	199	1
2025-07-22 22:36:28.961+00	127	telegraf	527134251	stop-moving	2	1	0	-1	63	201	1
2025-07-22 22:36:28.969+00	127	telegraf	840973111	stop-moving	3	1	5	-1	61	204	1
2025-07-22 22:36:29.622+00	127	telegraf	1523842139	stop-moving	2	1	0	-1	-66	207	1
2025-07-22 22:41:28.66+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-65	212	1
2025-07-22 22:42:28.658+00	127	telegraf	1523842139	stop-moving	1	1	0	-1	-66	214	1
2025-07-22 22:42:41.325+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	1518	1
2025-07-22 22:42:40.928+00	127	telegraf	978202981	stationary	0	0	3	-1	65	1519	1
2025-07-22 22:42:41.504+00	127	telegraf	1041420528	stationary	0	0	2	0	63	1520	1
2025-07-22 22:43:48.666+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-65	218	1
2025-07-22 22:44:24.999+00	127	telegraf	527134251	start-moving	0	1	36	7	63	219	1
2025-07-22 22:44:25.009+00	127	telegraf	840973111	start-moving	0	1	20	-1	42	220	1
2025-07-22 22:46:59.025+00	127	telegraf	527134251	stop-moving	33	11	0	-1	65	229	1
2025-07-22 22:46:59.687+00	127	telegraf	1523842139	stop-moving	34	13	-1	-1	-65	232	1
2025-07-22 22:46:59.01+00	127	telegraf	840973111	stop-moving	33	12	4	-1	61	233	1
2025-07-23 07:22:43.912+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	1833	1
2025-07-23 07:22:45+00	127	telegraf	1041420528	stationary	0	0	2	0	63	1834	1
2025-07-23 07:22:44.059+00	127	telegraf	978202981	stationary	0	0	3	-1	64	1835	1
2025-07-23 07:32:43.949+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	1838	1
2025-07-23 07:32:44.147+00	127	telegraf	978202981	stationary	0	0	4	-1	64	1839	1
2025-07-23 07:32:45.081+00	127	telegraf	1041420528	stationary	0	0	1	0	63	1840	1
2025-07-23 07:40:45.983+00	127	telegraf	1126982881	start-moving	0	1	-48	7	66	1844	1
2025-07-23 07:41:54.03+00	127	telegraf	1126982881	stop-moving	4	3	1	-2	66	1846	1
2025-07-23 07:42:02.021+00	127	telegraf	1126982881	start-moving	0	1	14	-15	98	1849	1
2025-07-23 07:42:44.203+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1854	1
2025-07-23 07:42:45.114+00	127	telegraf	1041420528	stationary	0	0	0	1	63	1855	1
2025-07-23 07:43:07.121+00	127	telegraf	1041420528	start-moving	0	1	1	1	63	1858	1
2025-07-23 07:43:07.21+00	127	telegraf	978202981	start-moving	0	1	3	-1	65	1859	1
2025-07-23 07:44:06.058+00	127	telegraf	1126982881	stop-moving	13	17	0	-5	65	1862	1
2025-07-23 07:44:07.207+00	127	telegraf	978202981	stop-moving	1	1	4	-2	65	1865	1
2025-07-23 07:44:07.118+00	127	telegraf	1041420528	stop-moving	1	1	2	0	62	1866	1
2025-07-23 07:54:06.177+00	127	telegraf	1126982881	stationary	0	0	0	-5	65	1876	1
2025-07-23 07:54:07.154+00	127	telegraf	1041420528	stationary	0	0	2	1	62	1877	1
2025-07-23 07:54:07.243+00	127	telegraf	978202981	stationary	0	0	3	-1	65	1878	1
2025-07-23 07:58:57.218+00	127	telegraf	1126982881	start-moving	0	1	-35	70	-49	1882	1
2025-07-23 07:58:57.178+00	127	telegraf	1041420528	start-moving	0	1	3	0	63	1886	1
2025-07-23 07:58:57.256+00	127	telegraf	978202981	start-moving	0	1	4	-1	64	1887	1
2025-07-23 07:59:57.173+00	127	telegraf	1041420528	stop-moving	1	1	3	0	63	1892	1
2025-07-23 07:59:56.263+00	127	telegraf	978202981	stop-moving	1	1	3	-1	65	1893	1
2025-07-23 08:00:32.233+00	127	telegraf	1126982881	stop-moving	27	26	0	-1	66	1898	1
2025-07-22 17:29:25.432+00	127	telegraf	1126982881	stop-moving	1	1	1	-3	66	1100	1
2025-07-22 17:29:47.719+00	127	telegraf	1041420528	stationary	0	0	1	0	64	1105	1
2025-07-22 22:52:41.365+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	1521	1
2025-07-22 22:52:41.617+00	127	telegraf	1041420528	stationary	0	0	1	0	64	1522	1
2025-07-22 22:52:40.958+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1523	1
2025-07-22 22:54:27.062+00	127	telegraf	527134251	start-moving	0	1	-26	-102	99	242	1
2025-07-22 22:54:26.728+00	127	telegraf	1523842139	start-moving	0	1	-119	38	-41	244	1
2025-07-22 22:54:27.038+00	127	telegraf	840973111	start-moving	0	1	-70	-56	105	245	1
2025-07-22 22:55:26.072+00	127	telegraf	527134251	stop-moving	2	1	0	-1	63	246	1
2025-07-22 22:55:27.044+00	127	telegraf	840973111	stop-moving	2	1	4	-2	62	249	1
2025-07-22 22:55:26.732+00	127	telegraf	1523842139	stop-moving	2	1	-1	-2	-64	252	1
2025-07-22 23:02:41.404+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	1525	1
2025-07-22 23:02:41.668+00	127	telegraf	1041420528	stationary	0	0	1	1	65	1526	1
2025-07-22 23:02:40.985+00	127	telegraf	978202981	stationary	0	0	3	-2	65	1527	1
2025-07-22 23:02:55.12+00	127	telegraf	527134251	start-moving	0	1	49	-63	23	260	1
2025-07-22 23:02:54.77+00	127	telegraf	1523842139	start-moving	0	1	-12	53	-41	261	1
2025-07-22 23:02:55.071+00	127	telegraf	840973111	start-moving	0	1	-18	-77	37	262	1
2025-07-22 23:12:41.443+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	1536	1
2025-07-22 23:12:41.029+00	127	telegraf	978202981	stationary	0	0	4	-1	64	1537	1
2025-07-22 23:12:41.761+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	1538	1
2025-07-22 23:22:41.483+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	1539	1
2025-07-22 23:22:41.801+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	1540	1
2025-07-22 23:22:41.056+00	127	telegraf	978202981	stationary	0	0	4	-2	65	1541	1
2025-07-23 08:06:33.289+00	127	telegraf	1126982881	start-moving	0	1	2	-8	80	1910	1
2025-07-23 08:08:19.309+00	127	telegraf	1126982881	stop-moving	20	14	1	-2	65	1917	1
2025-07-23 08:08:49.3+00	127	telegraf	1126982881	start-moving	0	1	0	0	78	1920	1
2025-07-23 08:09:57.217+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	1924	1
2025-07-23 08:09:56.3+00	127	telegraf	978202981	stationary	0	0	4	-1	64	1925	1
2025-07-23 08:11:10.341+00	127	telegraf	1126982881	stop-moving	17	20	1	1	65	1930	1
2025-07-23 18:35:05.753+00	127	telegraf	1126982881	stationary	0	0	2	-1	67	2419	1
2025-07-23 18:35:06.576+00	127	telegraf	1041420528	stationary	0	0	2	0	62	2420	1
2025-07-23 18:35:07.088+00	127	telegraf	978202981	stationary	0	0	4	-1	65	2421	1
2025-07-22 17:32:49.466+00	127	telegraf	1126982881	start-moving	0	1	-33	-6	41	1110	1
2025-07-22 17:34:09.486+00	127	telegraf	1126982881	stop-moving	13	27	2	-3	66	1120	1
2025-07-22 17:36:29.503+00	127	telegraf	1126982881	start-moving	0	1	-24	7	76	1124	1
2025-07-22 23:32:41.517+00	127	telegraf	1126982881	stationary	0	0	1	-1	64	1543	1
2025-07-22 23:32:41.088+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1544	1
2025-07-22 23:32:41.835+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1545	1
2025-07-22 23:42:41.559+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	1553	1
2025-07-22 23:42:41.874+00	127	telegraf	1041420528	stationary	0	0	1	1	64	1554	1
2025-07-22 23:42:41.168+00	127	telegraf	978202981	stationary	0	0	3	-1	64	1555	1
2025-07-22 23:52:41.596+00	127	telegraf	1126982881	stationary	0	0	1	-2	64	1557	1
2025-07-22 23:52:41.298+00	127	telegraf	978202981	stationary	0	0	3	-2	64	1558	1
2025-07-22 23:52:41.913+00	127	telegraf	1041420528	stationary	0	0	1	0	64	1559	1
2025-07-23 08:19:57.251+00	127	telegraf	1041420528	stationary	0	0	3	0	64	1940	1
2025-07-23 08:19:56.328+00	127	telegraf	978202981	stationary	0	0	4	-2	66	1941	1
2025-07-23 08:20:54.408+00	127	telegraf	1126982881	start-moving	0	1	59	1	21	1942	1
2025-07-23 08:21:15.256+00	127	telegraf	1041420528	start-moving	0	1	-16	-12	63	1943	1
2025-07-23 08:21:55.413+00	127	telegraf	1126982881	stop-moving	2	2	1	-2	66	1945	1
2025-07-23 08:22:15.26+00	127	telegraf	1041420528	stop-moving	1	1	3	0	63	1948	1
2025-07-23 08:24:29.454+00	127	telegraf	1126982881	start-moving	0	1	1	-3	67	1952	1
2025-07-23 08:27:21.47+00	127	telegraf	1126982881	stop-moving	4	5	2	-2	65	1956	1
2025-07-23 08:28:50.472+00	127	telegraf	1126982881	start-moving	0	1	1	-2	68	1959	1
2025-07-23 08:29:50.478+00	127	telegraf	1126982881	stop-moving	1	1	1	-2	64	1962	1
2025-07-23 08:29:56.362+00	127	telegraf	978202981	stationary	0	0	4	-2	64	1965	1
2025-07-23 08:30:31.483+00	127	telegraf	1126982881	start-moving	0	1	1	-2	63	1966	1
2025-07-23 08:31:30.474+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	1967	1
2025-07-23 08:32:15.294+00	127	telegraf	1041420528	stationary	0	0	2	0	64	1970	1
2025-07-23 08:32:35.485+00	127	telegraf	1126982881	start-moving	0	1	1	-2	66	1971	1
2025-07-23 08:33:35.494+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	67	1973	1
2025-07-23 08:39:56.413+00	127	telegraf	978202981	stationary	0	0	3	-1	66	1979	1
2025-07-23 08:42:15.321+00	127	telegraf	1041420528	stationary	0	0	3	1	63	1982	1
2025-07-23 08:43:35.534+00	127	telegraf	1126982881	stationary	0	0	1	-3	65	1983	1
2025-07-23 08:49:56.543+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1985	1
2025-07-23 09:19:56.708+00	127	telegraf	978202981	stationary	0	0	3	-2	66	2003	1
2025-07-23 09:21:04.677+00	127	telegraf	1126982881	start-moving	0	1	1	-1	65	2004	1
2025-07-23 09:22:04.68+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	65	2005	1
2025-07-23 09:22:15.623+00	127	telegraf	1041420528	stationary	0	0	2	0	63	2008	1
2025-07-23 09:29:56.783+00	127	telegraf	978202981	stationary	0	0	3	-2	66	2013	1
2025-07-23 09:32:04.718+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	2014	1
2025-07-23 09:32:15.699+00	127	telegraf	1041420528	stationary	0	0	3	0	65	2015	1
2025-07-23 09:39:13.746+00	127	telegraf	1126982881	start-moving	0	1	2	-2	66	2019	1
2025-07-22 17:39:47.769+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	1141	1
2025-07-22 17:41:47.584+00	127	telegraf	1126982881	stop-moving	9	9	1	-2	65	1146	1
2025-07-22 17:41:46.328+00	127	telegraf	978202981	stationary	0	0	4	-1	65	1149	1
2025-07-23 09:39:56.863+00	127	telegraf	978202981	stationary	0	0	4	-1	65	2022	1
2025-07-23 09:40:13.753+00	127	telegraf	1126982881	stop-moving	1	1	1	-3	65	2023	1
2025-07-23 09:42:15.765+00	127	telegraf	1041420528	stationary	0	0	2	0	62	2026	1
2025-07-23 09:49:56.945+00	127	telegraf	978202981	stationary	0	0	4	-1	65	2027	1
2025-07-23 09:50:13.785+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	2029	1
2025-07-23 09:52:15.859+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	2030	1
2025-07-23 09:56:41.865+00	127	telegraf	1126982881	start-moving	0	1	2	-43	67	2033	1
2025-07-23 09:57:40.865+00	127	telegraf	1126982881	stop-moving	2	1	2	-2	65	2035	1
2025-07-23 09:59:57.003+00	127	telegraf	978202981	stationary	0	0	4	0	65	2039	1
2025-07-23 10:02:15.899+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	2041	1
2025-07-23 10:07:40.909+00	127	telegraf	1126982881	stationary	0	0	2	-1	66	2045	1
2025-07-23 11:17:41.327+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	2092	1
2025-07-23 11:19:57.423+00	127	telegraf	978202981	stationary	0	0	4	-1	65	2093	1
2025-07-23 11:22:16.176+00	127	telegraf	1041420528	stationary	0	0	2	0	64	2095	1
2025-07-23 11:27:41.369+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	2097	1
2025-07-23 12:02:16.524+00	127	telegraf	1041420528	stationary	0	0	2	0	64	2121	1
2025-07-23 12:07:41.52+00	127	telegraf	1126982881	stationary	0	0	2	-1	66	2123	1
2025-07-23 12:09:57.786+00	127	telegraf	978202981	stationary	0	0	4	-2	66	2124	1
2025-07-23 12:12:16.581+00	127	telegraf	1041420528	stationary	0	0	3	1	64	2125	1
2025-07-23 12:17:41.554+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	2128	1
\.


--
-- Data for Name: _hyper_3_30_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_3_30_chunk ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
2025-07-25 12:05:20.272+00	127	telegraf	1041420528	stationary	0	0	2	0	62	3968	1
2025-07-25 12:07:19.424+00	127	telegraf	1126982881	start-moving	0	1	21	19	93	3969	1
2025-07-25 12:07:34.386+00	127	telegraf	978202981	start-moving	0	1	4	-1	65	3972	1
2025-07-25 12:07:34.273+00	127	telegraf	1041420528	start-moving	0	1	5	-11	66	3973	1
2025-07-25 12:08:35.435+00	127	telegraf	1126982881	stop-moving	12	12	0	-4	65	3980	1
2025-07-25 12:08:35.279+00	127	telegraf	1041420528	stop-moving	2	3	3	0	64	3983	1
2025-07-25 12:08:35.393+00	127	telegraf	978202981	stop-moving	2	2	3	-1	63	3984	1
2025-07-25 12:53:39.735+00	127	telegraf	1126982881	start-moving	0	1	31	0	51	4039	1
2025-07-25 12:53:39.668+00	127	telegraf	978202981	start-moving	0	1	3	-2	64	4040	1
2025-07-25 12:54:39.678+00	127	telegraf	978202981	stop-moving	1	1	4	-1	65	4046	1
2025-07-25 12:55:01.464+00	127	telegraf	1041420528	start-moving	0	1	3	0	62	4049	1
2025-07-25 12:56:00.758+00	127	telegraf	1126982881	stop-moving	22	17	0	-1	65	4052	1
2025-07-25 12:56:01.471+00	127	telegraf	1041420528	stop-moving	1	1	3	1	62	4055	1
2025-07-25 13:04:39.725+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4064	1
2025-07-25 13:06:00.815+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4067	1
2025-07-25 13:06:01.529+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	4068	1
2025-07-25 13:14:39.782+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4075	1
2025-07-25 13:16:00.857+00	127	telegraf	1126982881	stationary	0	0	1	-2	64	4078	1
2025-07-25 13:16:01.593+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4079	1
2025-07-25 13:24:39.847+00	127	telegraf	978202981	stationary	0	0	5	-2	66	4081	1
2025-07-25 13:26:00.987+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	4082	1
2025-07-25 13:26:01.642+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4083	1
2025-07-25 13:34:39.965+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4086	1
2025-07-25 13:36:01.068+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4087	1
2025-07-25 13:36:01.701+00	127	telegraf	1041420528	stationary	0	0	3	1	64	4088	1
2025-07-25 13:44:40.032+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4094	1
2025-07-25 13:46:01.122+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4096	1
2025-07-25 13:46:01.768+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4097	1
2025-07-25 13:54:40.104+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4101	1
2025-07-25 13:56:01.184+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4102	1
2025-07-25 13:56:01.915+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4103	1
2025-07-25 14:04:40.146+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4105	1
2025-07-25 14:06:01.225+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	4107	1
2025-07-25 14:06:01.98+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4108	1
2025-07-25 14:14:40.18+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4114	1
2025-07-25 14:16:01.258+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4116	1
2025-07-25 14:16:02.018+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4117	1
2025-07-25 14:24:40.214+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4122	1
2025-07-25 14:26:01.328+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	4123	1
2025-07-25 14:26:02.046+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4124	1
2025-07-25 14:34:40.239+00	127	telegraf	978202981	stationary	0	0	5	-1	64	4129	1
2025-07-25 14:36:01.36+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4130	1
2025-07-25 14:36:02.082+00	127	telegraf	1041420528	stationary	0	0	2	1	64	4131	1
2025-07-25 14:44:40.343+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4137	1
2025-07-25 14:46:01.39+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4138	1
2025-07-25 14:46:02.104+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	4139	1
2025-07-25 14:54:40.438+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4145	1
2025-07-25 14:56:01.438+00	127	telegraf	1126982881	stationary	0	0	1	-1	67	4146	1
2025-07-25 14:56:02.134+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	4147	1
2025-07-25 15:04:40.486+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4152	1
2025-07-25 15:06:01.469+00	127	telegraf	1126982881	stationary	0	0	-1	-1	65	4153	1
2025-07-25 15:06:02.172+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4154	1
2025-07-25 15:14:40.531+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4160	1
2025-07-25 15:16:01.504+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4162	1
2025-07-25 15:16:02.205+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4163	1
2025-07-25 15:24:40.583+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4169	1
2025-07-25 15:26:01.548+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4170	1
2025-07-25 15:26:02.325+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4171	1
2025-07-25 15:34:40.637+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4176	1
2025-07-25 15:36:01.584+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4177	1
2025-07-25 15:36:02.383+00	127	telegraf	1041420528	stationary	0	0	2	1	62	4178	1
2025-07-25 15:44:40.753+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4183	1
2025-07-25 15:46:01.62+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4185	1
2025-07-25 15:46:02.433+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4186	1
2025-07-25 15:54:40.823+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4192	1
2025-07-25 15:56:01.734+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4193	1
2025-07-25 15:56:02.512+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4194	1
2025-07-25 16:04:40.883+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4196	1
2025-07-25 16:06:01.801+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4198	1
2025-07-25 16:06:02.609+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4199	1
2025-07-25 16:14:40.938+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4202	1
2025-07-25 16:16:01.85+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4204	1
2025-07-25 16:16:02.757+00	127	telegraf	1041420528	stationary	0	0	2	0	63	4205	1
2025-07-25 16:24:40.979+00	127	telegraf	978202981	stationary	0	0	3	-2	66	4210	1
2025-07-25 16:26:01.93+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4211	1
2025-07-25 16:26:02.801+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	4212	1
2025-07-25 16:34:41.013+00	127	telegraf	978202981	stationary	0	0	3	-1	66	4215	1
2025-07-25 16:36:01.968+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4216	1
2025-07-25 16:36:02.838+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4217	1
2025-07-25 16:44:41.035+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4223	1
2025-07-25 16:46:02.005+00	127	telegraf	1126982881	stationary	0	0	0	-3	65	4226	1
2025-07-25 16:46:02.873+00	127	telegraf	1041420528	stationary	0	0	3	1	64	4227	1
2025-07-25 16:54:41.072+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4230	1
2025-07-25 16:56:02.034+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4231	1
2025-07-25 16:56:02.902+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4232	1
2025-07-25 17:04:41.208+00	127	telegraf	978202981	stationary	0	0	5	0	65	4234	1
2025-07-25 17:06:02.083+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4235	1
2025-07-25 17:06:02.934+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4236	1
2025-07-25 17:14:41.289+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4243	1
2025-07-25 17:16:02.138+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4244	1
2025-07-25 17:16:02.967+00	127	telegraf	1041420528	stationary	0	0	3	0	65	4246	1
2025-07-25 17:24:41.353+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4251	1
2025-07-25 17:26:02.173+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4252	1
2025-07-25 17:26:03+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4253	1
2025-07-25 17:34:41.404+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4255	1
2025-07-25 17:36:02.206+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	4256	1
2025-07-25 17:36:03.047+00	127	telegraf	1041420528	stationary	0	0	3	1	64	4257	1
2025-07-25 17:44:41.446+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4262	1
2025-07-25 17:46:02.257+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4263	1
2025-07-25 17:46:03.17+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4264	1
2025-07-25 17:54:41.574+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4269	1
2025-07-25 17:56:02.299+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4270	1
2025-07-25 17:56:03.226+00	127	telegraf	1041420528	stationary	0	0	2	1	64	4271	1
2025-07-25 18:04:41.63+00	127	telegraf	978202981	stationary	0	0	3	-2	64	4273	1
2025-07-25 18:06:02.333+00	127	telegraf	1126982881	stationary	0	0	-1	-1	65	4274	1
2025-07-25 18:06:03.277+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4275	1
2025-07-25 18:14:41.701+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4280	1
2025-07-25 18:16:02.377+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4281	1
2025-07-25 18:16:03.328+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4282	1
2025-07-25 18:24:41.739+00	127	telegraf	978202981	stationary	0	0	3	-2	64	4288	1
2025-07-25 18:26:02.418+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4289	1
2025-07-25 18:26:03.416+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	4290	1
2025-07-25 18:34:41.784+00	127	telegraf	978202981	stationary	0	0	3	-1	66	4292	1
2025-07-25 18:36:02.519+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4293	1
2025-07-25 18:36:03.539+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4294	1
2025-07-25 18:44:41.821+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4298	1
2025-07-25 18:46:02.577+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4300	1
2025-07-25 18:46:03.577+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	4301	1
2025-07-25 18:54:41.855+00	127	telegraf	978202981	stationary	0	0	5	-1	64	4306	1
2025-07-25 18:56:02.641+00	127	telegraf	1126982881	stationary	0	0	-1	-1	65	4307	1
2025-07-25 18:56:03.619+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4308	1
2025-07-25 19:04:41.89+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4309	1
2025-07-25 19:06:02.695+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4311	1
2025-07-25 19:06:03.653+00	127	telegraf	1041420528	stationary	0	0	2	0	63	4312	1
2025-07-25 19:14:41.974+00	127	telegraf	978202981	stationary	0	0	3	-2	64	4316	1
2025-07-25 19:16:02.755+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4318	1
2025-07-25 19:16:03.702+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4319	1
2025-07-25 19:24:42.092+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4324	1
2025-07-25 19:26:02.797+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4325	1
2025-07-25 19:26:03.74+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4326	1
2025-07-25 19:34:42.145+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4328	1
2025-07-25 19:36:02.831+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4329	1
2025-07-25 19:36:03.785+00	127	telegraf	1041420528	stationary	0	0	3	1	64	4331	1
2025-07-25 19:44:42.212+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4335	1
2025-07-25 19:46:02.865+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4336	1
2025-07-25 19:46:03.822+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4337	1
2025-07-25 19:54:42.262+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4342	1
2025-07-25 19:56:02.935+00	127	telegraf	1126982881	stationary	0	0	-1	-2	66	4343	1
2025-07-25 19:56:03.856+00	127	telegraf	1041420528	stationary	0	0	3	1	64	4344	1
2025-07-25 20:04:42.316+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4347	1
2025-07-25 20:06:02.98+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4348	1
2025-07-25 20:06:03.94+00	127	telegraf	1041420528	stationary	0	0	2	0	63	4349	1
2025-07-25 20:14:42.43+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4352	1
2025-07-25 20:16:03.016+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	4354	1
2025-07-25 20:16:04.046+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4355	1
2025-07-25 20:24:42.501+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4359	1
2025-07-25 20:26:03.057+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4361	1
2025-07-25 20:26:04.098+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4362	1
2025-07-25 20:34:42.564+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4365	1
2025-07-25 20:36:03.1+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4366	1
2025-07-25 20:36:04.145+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4367	1
2025-07-25 20:44:42.61+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4370	1
2025-07-25 20:46:03.136+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4371	1
2025-07-25 20:46:04.224+00	127	telegraf	1041420528	stationary	0	0	3	0	62	4372	1
2025-07-25 20:54:42.636+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4377	1
2025-07-25 20:56:03.178+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4379	1
2025-07-25 20:56:04.288+00	127	telegraf	1041420528	stationary	0	0	2	1	64	4380	1
2025-07-25 21:04:42.68+00	127	telegraf	978202981	stationary	0	0	3	-1	66	4382	1
2025-07-25 21:06:03.219+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4384	1
2025-07-25 21:06:04.427+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4385	1
2025-07-25 21:14:42.705+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4390	1
2025-07-25 21:16:03.272+00	127	telegraf	1126982881	stationary	0	0	0	-3	65	4391	1
2025-07-25 21:16:04.467+00	127	telegraf	1041420528	stationary	0	0	2	1	64	4392	1
2025-07-25 21:24:42.738+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4398	1
2025-07-25 21:26:03.403+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4399	1
2025-07-25 21:26:04.496+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4400	1
2025-07-25 21:34:42.878+00	127	telegraf	978202981	stationary	0	0	3	-1	64	4402	1
2025-07-25 21:36:03.479+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4405	1
2025-07-25 21:36:04.521+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4406	1
2025-07-25 21:44:42.934+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4409	1
2025-07-25 21:46:03.545+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4410	1
2025-07-25 21:46:04.557+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4411	1
2025-07-25 21:54:42.993+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4415	1
2025-07-25 21:56:03.584+00	127	telegraf	1126982881	stationary	0	0	0	-1	64	4417	1
2025-07-25 21:56:04.598+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4418	1
2025-07-25 22:04:43.047+00	127	telegraf	978202981	stationary	0	0	4	-2	64	4420	1
2025-07-25 22:06:03.62+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	4422	1
2025-07-25 22:06:04.635+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4423	1
2025-07-25 22:14:43.099+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4427	1
2025-07-25 22:16:03.654+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4428	1
2025-07-25 22:16:04.668+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	4429	1
2025-07-25 22:24:43.156+00	127	telegraf	978202981	stationary	0	0	3	-1	66	4434	1
2025-07-25 22:26:03.732+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	4436	1
2025-07-25 22:26:04.767+00	127	telegraf	1041420528	stationary	0	0	3	1	62	4437	1
2025-07-25 22:34:43.279+00	127	telegraf	978202981	stationary	0	0	5	-2	64	4439	1
2025-07-25 22:36:03.764+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4440	1
2025-07-25 22:36:04.855+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4441	1
2025-07-25 22:44:43.362+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4446	1
2025-07-25 22:46:03.799+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4447	1
2025-07-25 22:46:04.906+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4448	1
2025-07-25 22:54:43.429+00	127	telegraf	978202981	stationary	0	0	3	-1	66	4452	1
2025-07-25 22:56:03.842+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4453	1
2025-07-25 22:56:04.948+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4454	1
2025-07-25 23:04:43.454+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4457	1
2025-07-25 23:06:03.886+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4458	1
2025-07-25 23:06:05.024+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4459	1
2025-07-25 23:14:43.511+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4464	1
2025-07-25 23:16:03.92+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4465	1
2025-07-25 23:16:05.088+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4466	1
2025-07-25 23:24:43.544+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4468	1
2025-07-25 23:26:03.951+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4471	1
2025-07-25 23:26:05.192+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4472	1
2025-07-25 23:34:43.583+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4475	1
2025-07-25 23:36:03.996+00	127	telegraf	1126982881	stationary	0	0	0	-3	65	4476	1
2025-07-25 23:36:05.237+00	127	telegraf	1041420528	stationary	0	0	3	0	61	4477	1
2025-07-25 23:44:43.712+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4481	1
2025-07-25 23:46:04.049+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4483	1
2025-07-25 23:46:05.271+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4484	1
2025-07-25 23:54:43.783+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4486	1
2025-07-25 23:56:04.178+00	127	telegraf	1126982881	stationary	0	0	-1	-1	66	4488	1
2025-07-25 23:56:05.308+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4489	1
2025-07-26 00:04:43.834+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4493	1
2025-07-26 00:06:04.239+00	127	telegraf	1126982881	stationary	0	0	0	-1	67	4494	1
2025-07-26 00:06:05.348+00	127	telegraf	1041420528	stationary	0	0	2	1	65	4495	1
2025-07-26 00:14:43.89+00	127	telegraf	978202981	stationary	0	0	3	-1	64	4499	1
2025-07-26 00:16:04.304+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4501	1
2025-07-26 00:16:05.376+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4502	1
2025-07-26 00:24:43.939+00	127	telegraf	978202981	stationary	0	0	3	-1	64	4504	1
2025-07-26 00:26:04.353+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4505	1
2025-07-26 00:26:05.407+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4506	1
2025-07-26 00:34:44.029+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4511	1
2025-07-26 00:36:04.389+00	127	telegraf	1126982881	stationary	0	0	0	-3	65	4512	1
2025-07-26 00:36:05.448+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4513	1
2025-07-26 00:44:44.125+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4517	1
2025-07-26 00:46:04.428+00	127	telegraf	1126982881	stationary	0	0	0	-1	64	4518	1
2025-07-26 00:46:05.482+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4519	1
2025-07-26 00:54:44.191+00	127	telegraf	978202981	stationary	0	0	3	-1	64	4522	1
2025-07-26 00:56:04.459+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4523	1
2025-07-26 00:56:05.532+00	127	telegraf	1041420528	stationary	0	0	2	0	62	4524	1
2025-07-26 01:04:44.248+00	127	telegraf	978202981	stationary	0	0	4	0	65	4529	1
2025-07-26 01:06:04.53+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4530	1
2025-07-26 01:06:05.665+00	127	telegraf	1041420528	stationary	0	0	2	1	64	4531	1
2025-07-26 01:14:44.297+00	127	telegraf	978202981	stationary	0	0	4	-2	64	4535	1
2025-07-26 01:16:04.568+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4536	1
2025-07-26 01:16:05.703+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4537	1
2025-07-26 01:24:44.325+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4542	1
2025-07-26 01:26:04.61+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4544	1
2025-07-26 01:26:05.756+00	127	telegraf	1041420528	stationary	0	0	2	1	62	4545	1
2025-07-26 01:34:44.36+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4550	1
2025-07-26 01:36:04.657+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4551	1
2025-07-26 01:36:05.828+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4552	1
2025-07-26 01:44:44.389+00	127	telegraf	978202981	stationary	0	0	4	-2	64	4555	1
2025-07-26 01:46:04.69+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	4557	1
2025-07-26 01:46:05.878+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4558	1
2025-07-26 01:54:44.454+00	127	telegraf	978202981	stationary	0	0	3	-1	66	4561	1
2025-07-26 01:56:04.725+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4562	1
2025-07-26 01:56:05.989+00	127	telegraf	1041420528	stationary	0	0	3	0	62	4563	1
2025-07-26 02:04:44.584+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4568	1
2025-07-26 02:06:04.775+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4569	1
2025-07-26 02:06:06.064+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4570	1
2025-07-26 02:14:44.637+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4573	1
2025-07-26 02:16:04.812+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	4574	1
2025-07-26 02:16:06.104+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4576	1
2025-07-26 02:24:44.696+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4580	1
2025-07-26 02:26:04.874+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4581	1
2025-07-26 02:26:06.14+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4582	1
2025-07-26 02:34:44.75+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4587	1
2025-07-26 02:36:04.997+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4588	1
2025-07-26 02:36:06.17+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4589	1
2025-07-26 02:44:44.809+00	127	telegraf	978202981	stationary	0	0	3	-1	64	4592	1
2025-07-26 02:46:05.223+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4593	1
2025-07-26 02:46:06.206+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4594	1
2025-07-26 02:54:44.889+00	127	telegraf	978202981	stationary	0	0	3	-1	64	4597	1
2025-07-26 02:56:05.294+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	4599	1
2025-07-26 02:56:06.251+00	127	telegraf	1041420528	stationary	0	0	3	-1	66	4600	1
2025-07-26 03:04:45.001+00	127	telegraf	978202981	stationary	0	0	5	-2	64	4604	1
2025-07-26 03:06:05.344+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4606	1
2025-07-26 03:06:06.288+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4607	1
2025-07-26 03:14:45.06+00	127	telegraf	978202981	stationary	0	0	5	-2	64	4610	1
2025-07-26 03:16:05.413+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	4611	1
2025-07-26 03:16:06.327+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	4612	1
2025-07-26 03:24:45.126+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4615	1
2025-07-26 03:26:05.45+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	4616	1
2025-07-26 03:26:06.454+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4617	1
2025-07-26 03:34:45.166+00	127	telegraf	978202981	stationary	0	0	4	-2	66	4622	1
2025-07-26 03:36:05.5+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4624	1
2025-07-26 03:36:06.519+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4625	1
2025-07-26 03:44:45.196+00	127	telegraf	978202981	stationary	0	0	4	-2	64	4627	1
2025-07-26 03:46:05.531+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4629	1
2025-07-26 03:46:06.571+00	127	telegraf	1041420528	stationary	0	0	2	0	65	4630	1
2025-07-26 03:54:45.241+00	127	telegraf	978202981	stationary	0	0	4	-2	66	4633	1
2025-07-26 03:56:05.569+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4634	1
2025-07-26 03:56:06.622+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4635	1
2025-07-26 04:04:45.268+00	127	telegraf	978202981	stationary	0	0	5	-1	65	4640	1
2025-07-26 04:06:05.62+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4641	1
2025-07-26 04:06:06.712+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4642	1
2025-07-26 04:14:45.339+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4645	1
2025-07-26 04:16:05.683+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4647	1
2025-07-26 04:16:06.779+00	127	telegraf	1041420528	stationary	0	0	2	1	64	4648	1
2025-07-26 04:24:45.437+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4651	1
2025-07-26 04:26:05.713+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4652	1
2025-07-26 04:26:06.856+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4653	1
2025-07-26 04:34:45.483+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4658	1
2025-07-26 04:36:05.814+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4659	1
2025-07-26 04:36:06.909+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4660	1
2025-07-26 04:44:45.545+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4662	1
2025-07-26 04:46:05.881+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4664	1
2025-07-26 04:46:06.946+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4665	1
2025-07-26 04:54:45.589+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4669	1
2025-07-26 04:56:05.96+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4670	1
2025-07-26 04:56:06.979+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4671	1
2025-07-26 05:04:45.641+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4675	1
2025-07-26 05:06:06.007+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4677	1
2025-07-26 05:06:07.012+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4678	1
2025-07-26 05:14:45.774+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4680	1
2025-07-26 05:16:06.047+00	127	telegraf	1126982881	stationary	0	0	0	-3	66	4681	1
2025-07-26 05:16:07.04+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4682	1
2025-07-26 05:24:45.841+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4689	1
2025-07-26 05:26:06.081+00	127	telegraf	1126982881	stationary	0	0	-1	-2	66	4690	1
2025-07-26 05:26:07.073+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4691	1
2025-07-26 05:34:45.895+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4696	1
2025-07-26 05:36:06.128+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4697	1
2025-07-26 05:36:07.107+00	127	telegraf	1041420528	stationary	0	0	3	0	65	4698	1
2025-07-26 05:44:45.962+00	127	telegraf	978202981	stationary	0	0	3	-1	64	4701	1
2025-07-26 05:46:06.178+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4702	1
2025-07-26 05:46:07.148+00	127	telegraf	1041420528	stationary	0	0	3	1	64	4703	1
2025-07-26 05:54:45.998+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4708	1
2025-07-26 05:56:06.23+00	127	telegraf	1126982881	stationary	0	0	-1	-1	65	4709	1
2025-07-26 05:56:07.246+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4710	1
2025-07-26 06:04:46.022+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4712	1
2025-07-26 06:06:06.27+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4715	1
2025-07-26 06:06:07.335+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4716	1
2025-07-26 06:14:46.057+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4719	1
2025-07-26 06:16:06.305+00	127	telegraf	1126982881	stationary	0	0	-1	-2	66	4720	1
2025-07-26 06:16:07.376+00	127	telegraf	1041420528	stationary	0	0	4	1	64	4721	1
2025-07-26 06:24:46.088+00	127	telegraf	978202981	stationary	0	0	3	-1	64	4725	1
2025-07-26 06:26:06.34+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4727	1
2025-07-26 06:26:07.43+00	127	telegraf	1041420528	stationary	0	0	3	1	64	4728	1
2025-07-26 06:34:46.163+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4731	1
2025-07-26 06:36:06.381+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4733	1
2025-07-26 06:36:07.506+00	127	telegraf	1041420528	stationary	0	0	4	0	64	4734	1
2025-07-26 06:44:46.215+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4738	1
2025-07-26 06:46:06.426+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4739	1
2025-07-26 06:46:07.566+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4740	1
2025-07-26 06:54:46.275+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4744	1
2025-07-26 06:56:06.459+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4746	1
2025-07-26 06:56:07.673+00	127	telegraf	1041420528	stationary	0	0	2	-1	62	4747	1
2025-07-26 07:04:46.335+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4749	1
2025-07-26 07:06:06.514+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4750	1
2025-07-26 07:06:07.733+00	127	telegraf	1041420528	stationary	0	0	2	1	64	4751	1
2025-07-26 07:14:46.385+00	127	telegraf	978202981	stationary	0	0	4	0	65	4756	1
2025-07-26 07:16:06.614+00	127	telegraf	1126982881	stationary	0	0	0	-2	64	4757	1
2025-07-26 07:16:07.762+00	127	telegraf	1041420528	stationary	0	0	4	0	63	4758	1
2025-07-26 07:24:46.432+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4762	1
2025-07-26 07:26:06.653+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4763	1
2025-07-26 07:26:07.796+00	127	telegraf	1041420528	stationary	0	0	2	0	63	4764	1
2025-07-26 07:34:46.51+00	127	telegraf	978202981	stationary	0	0	4	-2	66	4767	1
2025-07-26 07:36:06.728+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	4768	1
2025-07-26 07:36:07.827+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4769	1
2025-07-26 07:44:46.613+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4774	1
2025-07-26 07:46:06.783+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4775	1
2025-07-26 07:46:07.862+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4776	1
2025-07-26 07:54:46.699+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4780	1
2025-07-26 07:56:06.815+00	127	telegraf	1126982881	stationary	0	0	-1	-1	65	4781	1
2025-07-26 07:56:07.9+00	127	telegraf	1041420528	stationary	0	0	3	0	61	4782	1
2025-07-26 08:04:46.749+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4785	1
2025-07-26 08:06:06.855+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4786	1
2025-07-26 08:06:07.925+00	127	telegraf	1041420528	stationary	0	0	2	1	64	4787	1
2025-07-26 08:14:46.796+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4792	1
2025-07-26 08:16:06.887+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4793	1
2025-07-26 08:16:08.01+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4794	1
2025-07-26 08:24:46.817+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4797	1
2025-07-26 08:26:06.925+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4799	1
2025-07-26 08:26:08.11+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4800	1
2025-07-26 08:34:46.854+00	127	telegraf	978202981	stationary	0	0	4	-2	64	4803	1
2025-07-26 08:36:07.05+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4804	1
2025-07-26 08:36:08.166+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4805	1
2025-07-26 08:44:46.881+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4810	1
2025-07-26 08:46:07.109+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4811	1
2025-07-26 08:46:08.206+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4812	1
2025-07-26 08:54:46.966+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4815	1
2025-07-26 08:56:07.148+00	127	telegraf	1126982881	stationary	0	0	1	-1	65	4817	1
2025-07-26 08:56:08.267+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4818	1
2025-07-26 09:04:47.081+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4821	1
2025-07-26 09:06:07.193+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4822	1
2025-07-26 09:06:08.324+00	127	telegraf	1041420528	stationary	0	0	3	1	64	4823	1
2025-07-26 09:14:47.131+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4828	1
2025-07-26 09:16:07.226+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4829	1
2025-07-26 09:16:08.437+00	127	telegraf	1041420528	stationary	0	0	2	0	63	4830	1
2025-07-26 09:24:47.188+00	127	telegraf	978202981	stationary	0	0	4	-1	63	4835	1
2025-07-26 09:26:07.267+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4836	1
2025-07-26 09:26:08.498+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	4837	1
2025-07-26 09:34:47.236+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4841	1
2025-07-26 09:36:07.324+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4844	1
2025-07-26 09:36:08.537+00	127	telegraf	1041420528	stationary	0	0	4	1	64	4845	1
2025-07-26 09:44:47.294+00	127	telegraf	978202981	stationary	0	0	3	-2	65	4852	1
2025-07-26 09:46:07.432+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4854	1
2025-07-26 09:46:08.574+00	127	telegraf	1041420528	stationary	0	0	2	0	63	4855	1
2025-07-26 09:54:47.42+00	127	telegraf	978202981	stationary	0	0	4	-1	66	4857	1
2025-07-26 09:56:07.532+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4858	1
2025-07-26 09:56:08.606+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4859	1
2025-07-26 10:04:47.493+00	127	telegraf	978202981	stationary	0	0	4	-2	64	4861	1
2025-07-26 10:06:07.589+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4862	1
2025-07-26 10:06:08.638+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4863	1
2025-07-26 10:14:47.557+00	127	telegraf	978202981	stationary	0	0	3	-2	66	4868	1
2025-07-26 10:16:07.622+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4872	1
2025-07-26 10:16:08.666+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4873	1
2025-07-26 10:24:47.599+00	127	telegraf	978202981	stationary	0	0	5	-1	65	4875	1
2025-07-26 10:26:07.659+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	4876	1
2025-07-26 10:26:08.701+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4877	1
2025-07-26 10:34:47.633+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4880	1
2025-07-26 10:36:07.692+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4881	1
2025-07-26 10:36:08.736+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4882	1
2025-07-26 10:44:47.66+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4887	1
2025-07-26 10:46:07.727+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4890	1
2025-07-26 10:46:08.778+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4891	1
2025-07-26 10:54:47.708+00	127	telegraf	978202981	stationary	0	0	5	-2	65	4894	1
2025-07-26 10:56:07.802+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4895	1
2025-07-26 10:56:08.909+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4896	1
2025-07-26 11:04:47.727+00	127	telegraf	978202981	stationary	0	0	3	-1	66	4898	1
2025-07-26 11:06:07.837+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4899	1
2025-07-26 11:06:08.973+00	127	telegraf	1041420528	stationary	0	0	2	1	64	4900	1
2025-07-26 11:14:47.823+00	127	telegraf	978202981	stationary	0	0	5	-1	64	4905	1
2025-07-26 11:16:07.873+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4906	1
2025-07-26 11:16:09.013+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4907	1
2025-07-26 11:24:47.921+00	127	telegraf	978202981	stationary	0	0	3	-2	64	4912	1
2025-07-26 11:26:07.918+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4913	1
2025-07-26 11:26:09.074+00	127	telegraf	1041420528	stationary	0	0	2	0	63	4914	1
2025-07-26 11:34:47.973+00	127	telegraf	978202981	stationary	0	0	3	-2	64	4916	1
2025-07-26 11:36:07.952+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4917	1
2025-07-26 11:36:09.146+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4918	1
2025-07-26 11:44:48.027+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4922	1
2025-07-26 11:46:07.987+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4924	1
2025-07-26 11:46:09.266+00	127	telegraf	1041420528	stationary	0	0	4	0	63	4925	1
2025-07-26 11:54:48.083+00	127	telegraf	978202981	stationary	0	0	3	-1	66	4930	1
2025-07-26 11:56:08.033+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	4931	1
2025-07-26 11:56:09.331+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4932	1
2025-07-26 12:04:48.141+00	127	telegraf	978202981	stationary	0	0	3	-1	66	4934	1
2025-07-26 12:06:08.073+00	127	telegraf	1126982881	stationary	0	0	0	-2	64	4935	1
2025-07-26 12:06:09.371+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4936	1
2025-07-26 12:14:48.245+00	127	telegraf	978202981	stationary	0	0	3	-1	65	4938	1
2025-07-26 12:16:08.176+00	127	telegraf	1126982881	stationary	0	0	0	-2	64	4941	1
2025-07-26 12:16:09.404+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4942	1
2025-07-26 12:24:48.311+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4948	1
2025-07-26 12:26:08.27+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	4949	1
2025-07-26 12:26:09.43+00	127	telegraf	1041420528	stationary	0	0	4	-1	63	4950	1
2025-07-26 12:34:48.385+00	127	telegraf	978202981	stationary	0	0	4	-1	65	4952	1
2025-07-26 12:36:08.331+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	4953	1
2025-07-26 12:36:09.468+00	127	telegraf	1041420528	stationary	0	0	3	1	63	4954	1
2025-07-26 12:44:48.434+00	127	telegraf	978202981	stationary	0	0	4	-1	64	4956	1
2025-07-26 12:46:08.372+00	127	telegraf	1126982881	stationary	0	0	0	-3	65	4960	1
2025-07-26 12:46:09.506+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	4961	1
2025-07-26 12:54:48.459+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4966	1
2025-07-26 12:56:08.412+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	4968	1
2025-07-26 12:56:09.535+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4969	1
2025-07-26 13:04:48.493+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4970	1
2025-07-26 13:06:08.452+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4971	1
2025-07-26 13:06:09.577+00	127	telegraf	1041420528	stationary	0	0	2	0	64	4972	1
2025-07-26 13:14:48.528+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4974	1
2025-07-26 13:16:08.488+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4977	1
2025-07-26 13:16:09.722+00	127	telegraf	1041420528	stationary	0	0	2	1	63	4978	1
2025-07-26 13:24:48.572+00	127	telegraf	978202981	stationary	0	0	4	-2	65	4984	1
2025-07-26 13:26:08.524+00	127	telegraf	1126982881	stationary	0	0	0	-2	67	4986	1
2025-07-26 13:26:09.768+00	127	telegraf	1041420528	stationary	0	0	2	1	65	4987	1
2025-07-26 13:34:48.719+00	127	telegraf	978202981	stationary	0	0	4	0	66	4991	1
2025-07-26 13:36:08.59+00	127	telegraf	1126982881	stationary	0	0	0	-1	65	4992	1
2025-07-26 13:36:09.82+00	127	telegraf	1041420528	stationary	0	0	3	0	64	4993	1
2025-07-26 13:44:48.776+00	127	telegraf	978202981	stationary	0	0	4	0	65	4995	1
2025-07-26 13:46:08.625+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	4997	1
2025-07-26 13:46:09.884+00	127	telegraf	1041420528	stationary	0	0	3	0	63	4998	1
2025-07-26 13:47:30.883+00	127	telegraf	1041420528	start-moving	0	1	-2	-11	71	5002	1
2025-07-26 13:48:30.898+00	127	telegraf	1041420528	stop-moving	1	1	4	0	63	5004	1
2025-07-26 13:54:48.826+00	127	telegraf	978202981	stationary	0	0	4	-2	66	5009	1
2025-07-26 13:56:08.667+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	5010	1
2025-07-26 13:58:30.955+00	127	telegraf	1041420528	stationary	0	0	3	0	65	5012	1
2025-07-26 14:04:48.884+00	127	telegraf	978202981	stationary	0	0	4	-2	65	5013	1
2025-07-26 14:06:08.709+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	5014	1
2025-07-26 14:08:31.09+00	127	telegraf	1041420528	stationary	0	0	2	0	65	5015	1
2025-07-26 14:14:48.933+00	127	telegraf	978202981	stationary	0	0	4	-2	65	5017	1
2025-07-26 14:16:08.742+00	127	telegraf	1126982881	stationary	0	0	0	-2	65	5018	1
2025-07-26 14:18:31.158+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5023	1
2025-07-26 14:24:49.044+00	127	telegraf	978202981	stationary	0	0	3	-2	65	5027	1
2025-07-26 14:26:08.784+00	127	telegraf	1126982881	stationary	0	0	0	-1	66	5028	1
2025-07-26 14:28:31.186+00	127	telegraf	1041420528	stationary	0	0	3	1	64	5030	1
2025-07-26 14:34:49.119+00	127	telegraf	978202981	stationary	0	0	3	-2	64	5032	1
2025-07-26 14:36:08.82+00	127	telegraf	1126982881	stationary	0	0	0	-2	66	5033	1
2025-07-26 14:38:31.224+00	127	telegraf	1041420528	stationary	0	0	3	0	62	5034	1
2025-07-26 14:42:30.848+00	127	telegraf	1126982881	start-moving	0	1	-20	-44	0	5035	1
2025-07-26 14:43:09.163+00	127	telegraf	978202981	start-moving	0	1	3	-1	65	5040	1
2025-07-26 14:44:08.865+00	127	telegraf	1126982881	stop-moving	20	20	4	-2	66	5044	1
2025-07-26 14:44:08.173+00	127	telegraf	978202981	stop-moving	1	1	4	-2	65	5047	1
2025-07-26 14:48:31.248+00	127	telegraf	1041420528	stationary	0	0	3	0	65	5055	1
2025-07-26 14:54:08.95+00	127	telegraf	1126982881	stationary	0	0	3	-2	64	5061	1
2025-07-26 14:54:08.22+00	127	telegraf	978202981	stationary	0	0	3	-1	64	5062	1
2025-07-26 14:58:31.29+00	127	telegraf	1041420528	stationary	0	0	3	0	62	5063	1
2025-07-26 15:04:09.047+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	5064	1
2025-07-26 15:04:08.257+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5065	1
2025-07-26 15:08:31.316+00	127	telegraf	1041420528	stationary	0	0	4	0	63	5067	1
2025-07-26 15:14:09.113+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	5068	1
2025-07-26 15:14:08.294+00	127	telegraf	978202981	stationary	0	0	3	-1	65	5069	1
2025-07-26 15:18:31.35+00	127	telegraf	1041420528	stationary	0	0	3	0	63	5073	1
2025-07-26 15:24:09.169+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	5079	1
2025-07-26 15:24:08.334+00	127	telegraf	978202981	stationary	0	0	4	0	65	5080	1
2025-07-26 15:28:31.39+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5081	1
2025-07-26 15:34:09.203+00	127	telegraf	1126982881	stationary	0	0	4	-3	66	5082	1
2025-07-26 15:34:08.36+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5083	1
2025-07-26 15:38:31.519+00	127	telegraf	1041420528	stationary	0	0	2	0	64	5085	1
2025-07-26 15:44:09.241+00	127	telegraf	1126982881	stationary	0	0	4	-3	65	5086	1
2025-07-26 15:44:08.472+00	127	telegraf	978202981	stationary	0	0	4	0	64	5087	1
2025-07-26 15:48:31.576+00	127	telegraf	1041420528	stationary	0	0	2	0	63	5089	1
2025-07-26 15:54:09.276+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	5097	1
2025-07-26 15:54:08.56+00	127	telegraf	978202981	stationary	0	0	3	-2	65	5098	1
2025-07-26 15:58:31.633+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5099	1
2025-07-26 16:04:09.318+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	5100	1
2025-07-26 16:04:08.61+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5101	1
2025-07-26 16:08:31.667+00	127	telegraf	1041420528	stationary	0	0	3	1	64	5103	1
2025-07-26 16:14:09.392+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	5104	1
2025-07-26 16:14:08.672+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5105	1
2025-07-26 16:18:31.733+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5107	1
2025-07-26 16:24:09.425+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	5114	1
2025-07-26 16:24:08.716+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5115	1
2025-07-26 16:28:31.805+00	127	telegraf	1041420528	stationary	0	0	3	1	64	5117	1
2025-07-26 16:34:09.462+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	5118	1
2025-07-26 16:34:08.767+00	127	telegraf	978202981	stationary	0	0	5	-1	66	5119	1
2025-07-26 16:38:31.925+00	127	telegraf	1041420528	stationary	0	0	2	1	63	5120	1
2025-07-26 16:44:09.505+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	5122	1
2025-07-26 16:44:08.892+00	127	telegraf	978202981	stationary	0	0	4	-2	65	5123	1
2025-07-26 16:48:31.99+00	127	telegraf	1041420528	stationary	0	0	3	0	63	5125	1
2025-07-26 16:54:09.537+00	127	telegraf	1126982881	stationary	0	0	4	-3	65	5132	1
2025-07-26 16:54:08.958+00	127	telegraf	978202981	stationary	0	0	4	-2	66	5133	1
2025-07-26 16:58:32.015+00	127	telegraf	1041420528	stationary	0	0	3	1	63	5135	1
2025-07-26 17:04:09.573+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	5136	1
2025-07-26 17:04:09.008+00	127	telegraf	978202981	stationary	0	0	5	-1	65	5137	1
2025-07-26 17:08:32.048+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5138	1
2025-07-26 17:14:09.614+00	127	telegraf	1126982881	stationary	0	0	4	-3	65	5140	1
2025-07-26 17:14:09.065+00	127	telegraf	978202981	stationary	0	0	4	-2	65	5141	1
2025-07-26 17:18:32.09+00	127	telegraf	1041420528	stationary	0	0	2	0	63	5143	1
2025-07-26 17:24:09.666+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	5150	1
2025-07-26 17:24:09.101+00	127	telegraf	978202981	stationary	0	0	3	-1	66	5151	1
2025-07-26 17:28:32.121+00	127	telegraf	1041420528	stationary	0	0	3	0	63	5153	1
2025-07-26 17:34:09.726+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	5156	1
2025-07-26 17:34:09.132+00	127	telegraf	978202981	stationary	0	0	4	0	65	5157	1
2025-07-26 17:38:32.157+00	127	telegraf	1041420528	stationary	0	0	3	1	63	5159	1
2025-07-26 17:44:09.847+00	127	telegraf	1126982881	stationary	0	0	2	-2	64	5161	1
2025-07-26 17:44:09.156+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5162	1
2025-07-26 17:48:32.191+00	127	telegraf	1041420528	stationary	0	0	3	0	63	5163	1
2025-07-26 17:54:09.194+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5170	1
2025-07-26 17:54:09.916+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	5171	1
2025-07-26 17:58:32.248+00	127	telegraf	1041420528	stationary	0	0	3	1	65	5174	1
2025-07-26 18:04:09.962+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	5175	1
2025-07-26 18:04:09.303+00	127	telegraf	978202981	stationary	0	0	3	-1	65	5176	1
2025-07-26 18:08:32.377+00	127	telegraf	1041420528	stationary	0	0	2	0	64	5177	1
2025-07-26 18:14:09.998+00	127	telegraf	1126982881	stationary	0	0	2	-2	64	5179	1
2025-07-26 18:14:09.407+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5180	1
2025-07-26 18:18:32.419+00	127	telegraf	1041420528	stationary	0	0	3	1	64	5181	1
2025-07-26 18:24:09.446+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5188	1
2025-07-26 18:24:10.036+00	127	telegraf	1126982881	stationary	0	0	4	-3	65	5189	1
2025-07-26 18:27:08.044+00	127	telegraf	1126982881	start-moving	0	1	3	-2	64	5191	1
2025-07-26 18:27:08.462+00	127	telegraf	1041420528	start-moving	0	1	5	0	62	5192	1
2025-07-26 18:28:08.052+00	127	telegraf	1126982881	stop-moving	1	1	2	-3	65	5194	1
2025-07-26 18:28:07.467+00	127	telegraf	1041420528	stop-moving	1	1	3	1	63	5197	1
2025-07-26 18:34:09.498+00	127	telegraf	978202981	stationary	0	0	4	-2	65	5200	1
2025-07-26 18:38:08.081+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	5202	1
2025-07-26 18:38:07.523+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5203	1
2025-07-26 18:44:09.549+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5205	1
2025-07-26 18:48:08.119+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	5206	1
2025-07-26 18:48:07.604+00	127	telegraf	1041420528	stationary	0	0	4	0	64	5207	1
2025-07-26 18:54:09.605+00	127	telegraf	978202981	stationary	0	0	3	-2	66	5211	1
2025-07-26 18:58:08.184+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	5216	1
2025-07-26 18:58:07.719+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5217	1
2025-07-26 19:04:09.726+00	127	telegraf	978202981	stationary	0	0	3	-2	65	5219	1
2025-07-26 19:08:08.226+00	127	telegraf	1126982881	stationary	0	0	4	-3	66	5220	1
2025-07-26 19:08:07.797+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5221	1
2025-07-26 19:14:09.823+00	127	telegraf	978202981	stationary	0	0	3	-1	66	5223	1
2025-07-26 19:18:08.26+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	5224	1
2025-07-26 19:18:07.834+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5225	1
2025-07-26 19:24:09.862+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5228	1
2025-07-26 19:28:08.303+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	5234	1
2025-07-26 19:28:07.859+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5235	1
2025-07-26 19:34:09.906+00	127	telegraf	978202981	stationary	0	0	4	-2	66	5237	1
2025-07-26 19:38:08.343+00	127	telegraf	1126982881	stationary	0	0	4	-2	66	5238	1
2025-07-26 19:38:07.892+00	127	telegraf	1041420528	stationary	0	0	3	0	63	5239	1
2025-07-26 19:44:09.937+00	127	telegraf	978202981	stationary	0	0	4	-1	64	5242	1
2025-07-26 19:48:08.376+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	5244	1
2025-07-26 19:48:07.929+00	127	telegraf	1041420528	stationary	0	0	3	1	63	5245	1
2025-07-26 19:54:09.979+00	127	telegraf	978202981	stationary	0	0	3	-1	65	5247	1
2025-07-26 19:58:08.418+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	5254	1
2025-07-26 19:58:07.959+00	127	telegraf	1041420528	stationary	0	0	3	0	63	5255	1
2025-07-26 20:04:10.008+00	127	telegraf	978202981	stationary	0	0	4	-2	65	5256	1
2025-07-26 20:08:08.463+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	5257	1
2025-07-26 20:08:08.008+00	127	telegraf	1041420528	stationary	0	0	3	1	65	5258	1
2025-07-26 20:14:10.062+00	127	telegraf	978202981	stationary	0	0	4	-2	65	5260	1
2025-07-26 20:18:08.529+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	5262	1
2025-07-26 20:18:08.036+00	127	telegraf	1041420528	stationary	0	0	2	0	64	5263	1
2025-07-26 20:24:10.205+00	127	telegraf	978202981	stationary	0	0	3	-1	65	5265	1
2025-07-26 20:28:08.638+00	127	telegraf	1126982881	stationary	0	0	3	-2	67	5271	1
2025-07-26 20:28:08.147+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5272	1
2025-07-26 20:34:10.252+00	127	telegraf	978202981	stationary	0	0	5	-1	65	5274	1
2025-07-26 20:38:08.707+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	5275	1
2025-07-26 20:38:08.211+00	127	telegraf	1041420528	stationary	0	0	3	0	63	5276	1
2025-07-26 20:44:10.307+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5277	1
2025-07-26 20:48:08.753+00	127	telegraf	1126982881	stationary	0	0	4	-3	65	5280	1
2025-07-26 20:48:08.254+00	127	telegraf	1041420528	stationary	0	0	2	1	63	5281	1
2025-07-26 20:50:33.774+00	127	telegraf	1126982881	start-moving	0	1	4	-3	66	5282	1
2025-07-26 20:51:32.769+00	127	telegraf	1126982881	stop-moving	1	1	4	-3	65	5283	1
2025-07-26 20:54:10.359+00	127	telegraf	978202981	stationary	0	0	4	-2	66	5287	1
2025-07-26 20:58:08.313+00	127	telegraf	1041420528	stationary	0	0	4	0	64	5293	1
2025-07-26 21:01:32.804+00	127	telegraf	1126982881	stationary	0	0	3	-4	65	5295	1
2025-07-26 21:04:10.41+00	127	telegraf	978202981	stationary	0	0	3	-2	66	5296	1
2025-07-26 21:08:08.367+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5297	1
2025-07-26 21:11:32.836+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	5298	1
2025-07-26 21:14:10.517+00	127	telegraf	978202981	stationary	0	0	4	-2	65	5299	1
2025-07-26 21:18:08.431+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5302	1
2025-07-26 21:21:32.879+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	5303	1
2025-07-26 21:24:10.583+00	127	telegraf	978202981	stationary	0	0	4	-2	66	5304	1
2025-07-26 21:28:08.534+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5309	1
2025-07-26 21:31:32.916+00	127	telegraf	1126982881	stationary	0	0	4	-2	65	5313	1
2025-07-26 21:34:10.656+00	127	telegraf	978202981	stationary	0	0	4	-1	65	5316	1
2025-07-26 21:38:08.612+00	127	telegraf	1041420528	stationary	0	0	3	1	63	5317	1
2025-07-26 21:41:32.985+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	5319	1
2025-07-26 21:44:10.742+00	127	telegraf	978202981	stationary	0	0	4	-2	66	5320	1
2025-07-26 21:48:08.653+00	127	telegraf	1041420528	stationary	0	0	2	0	64	5322	1
2025-07-26 21:49:26.011+00	127	telegraf	1126982881	start-moving	0	1	3	-3	66	5324	1
2025-07-26 21:50:26.016+00	127	telegraf	1126982881	stop-moving	1	1	4	-2	64	5325	1
2025-07-26 21:54:10.761+00	127	telegraf	978202981	stationary	0	0	4	0	65	5328	1
2025-07-26 21:58:08.677+00	127	telegraf	1041420528	stationary	0	0	3	0	64	5330	1
\.


--
-- Data for Name: _hyper_4_13_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_4_13_chunk ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
2025-07-03 15:53:05.376+00	193	\N	1126982881	2	4270	0.9
2025-07-03 15:53:42.059+00	193	\N	978202981	2	4273	0.9
2025-07-03 15:53:45.186+00	193	\N	1041420528	2	4277	0.9
2025-07-03 18:28:12.38+00	193	\N	1126982881	2	4386	0.9
2025-07-03 18:30:47.406+00	193	\N	1126982881	3	4392	0.9
2025-07-03 18:35:07.43+00	193	\N	1126982881	2	4401	0.9
2025-07-03 18:52:39.626+00	193	\N	1126982881	2	4420	0.9
2025-07-03 19:08:15.684+00	193	\N	1126982881	2	4432	0.9
2025-07-03 19:27:37.761+00	193	\N	1126982881	2	4447	0.9
2025-07-03 19:33:04.777+00	193	\N	1126982881	2	4452	0.9
2025-07-03 19:35:54.787+00	193	\N	1126982881	2	4460	0.9
2025-07-03 20:34:40.056+00	193	\N	1126982881	3	4504	0.9
2025-07-03 20:38:39.074+00	193	\N	1126982881	2	4512	0.9
2025-07-03 20:43:21.119+00	193	\N	1126982881	2	4518	0.9
2025-07-03 21:02:58.262+00	193	\N	1126982881	2	4536	0.9
2025-07-03 21:09:45.304+00	193	\N	1126982881	3	4544	0.9
2025-07-03 21:10:58.322+00	193	\N	1126982881	2	4548	0.9
2025-07-03 21:19:17.461+00	193	\N	1126982881	3	4561	0.9
2025-07-03 21:20:19.469+00	193	\N	1126982881	3	4564	0.9
2025-07-03 21:22:12.479+00	193	\N	1126982881	2	4570	0.9
2025-07-03 21:30:16.508+00	193	\N	1126982881	3	4577	0.9
2025-07-03 21:36:38.523+00	193	\N	1126982881	3	4585	0.9
2025-07-03 21:54:30.598+00	193	\N	1126982881	3	4602	0.9
2025-07-03 21:55:31.595+00	193	\N	1126982881	3	4605	0.9
2025-07-03 21:56:37.608+00	193	\N	1126982881	1	4609	0.9
2025-07-03 22:16:43.685+00	193	\N	1126982881	2	4624	0.9
2025-07-03 22:21:58.733+00	193	\N	1126982881	3	4635	0.9
2025-07-03 22:23:53.744+00	193	\N	1126982881	2	4645	0.9
2025-07-03 22:29:21.788+00	193	\N	1126982881	3	4653	0.9
2025-07-03 22:33:51.822+00	193	\N	1126982881	3	4664	0.9
2025-07-03 22:36:32.833+00	193	\N	1126982881	2	4671	0.9
2025-07-03 22:54:59.914+00	193	\N	1126982881	3	4692	0.9
2025-07-03 22:57:44.929+00	193	\N	1126982881	2	4696	0.9
2025-07-03 23:04:32.979+00	193	\N	1126982881	2	4703	0.9
2025-07-03 23:11:45.026+00	193	\N	1126982881	2	4710	0.9
2025-07-03 23:17:12.077+00	193	\N	1126982881	2	4719	0.9
2025-07-03 23:18:51.084+00	193	\N	1126982881	1	4724	0.9
2025-07-03 23:22:54.116+00	193	\N	1126982881	3	4736	0.9
2025-07-03 23:24:11.134+00	193	\N	1126982881	3	4742	0.9
2025-07-03 23:26:07.174+00	193	\N	1126982881	3	4750	0.9
2025-07-03 23:34:54.24+00	193	\N	1126982881	2	4766	0.9
2025-07-03 23:39:07.268+00	193	\N	1126982881	2	4776	0.9
2025-07-03 23:43:20.292+00	193	\N	1126982881	2	4784	0.9
2025-07-03 23:49:55.329+00	193	\N	1126982881	2	4797	0.9
2025-07-03 23:53:08.358+00	193	\N	1126982881	2	4808	0.9
2025-07-04 05:27:22.25+00	193	\N	978202981	2	5037	0.9
2025-07-04 09:52:19.428+00	193	\N	1041420528	3	5233	0.9
2025-07-04 09:52:36.09+00	193	\N	978202981	3	5236	0.9
2025-07-04 09:58:20.689+00	193	\N	1126982881	3	5246	0.9
2025-07-04 09:59:27.682+00	193	\N	1126982881	3	5251	0.9
2025-07-04 10:03:26.706+00	193	\N	1126982881	3	5259	0.9
2025-07-04 10:13:03.773+00	193	\N	1126982881	2	5281	0.9
2025-07-04 11:02:46.071+00	193	\N	1126982881	2	5332	0.9
2025-07-04 11:09:06.119+00	193	\N	1126982881	2	5345	0.9
2025-07-04 11:11:11.133+00	193	\N	1126982881	2	5351	0.9
2025-07-04 11:12:57.152+00	193	\N	1126982881	3	5361	0.9
2025-07-04 11:14:06.151+00	193	\N	1126982881	3	5367	0.9
2025-07-04 11:15:47.172+00	193	\N	1126982881	3	5373	0.9
2025-07-04 11:18:20.206+00	193	\N	1126982881	3	5378	0.9
2025-07-04 11:22:05.245+00	193	\N	1126982881	3	5385	0.9
2025-07-04 13:22:09.783+00	193	\N	1126982881	3	5474	0.9
2025-07-04 13:26:22.813+00	193	\N	1126982881	2	5486	0.9
2025-07-04 13:26:26.698+00	193	\N	1041420528	3	5489	0.9
2025-07-04 13:43:04.925+00	193	\N	1126982881	3	5517	0.9
2025-07-04 13:57:14.077+00	193	\N	1126982881	3	5538	0.9
2025-07-04 13:58:45.097+00	193	\N	1126982881	3	5545	0.9
2025-07-04 14:00:51.109+00	193	\N	1126982881	3	5552	0.9
2025-07-04 14:02:36.115+00	193	\N	1126982881	3	5558	0.9
2025-07-04 14:06:46.147+00	193	\N	1126982881	3	5568	0.9
2025-07-04 14:08:12.144+00	193	\N	1126982881	2	5572	0.9
2025-07-04 14:40:00.272+00	193	\N	1126982881	3	5598	0.9
2025-07-04 14:43:57.287+00	193	\N	1126982881	3	5609	0.9
2025-07-04 14:49:46.319+00	193	\N	1126982881	3	5616	0.9
2025-07-04 14:50:57.322+00	193	\N	1126982881	2	5620	0.9
2025-07-04 15:19:53.501+00	193	\N	1126982881	3	5665	0.9
2025-07-04 15:21:41.512+00	193	\N	1126982881	3	5675	0.9
2025-07-04 15:23:41.523+00	193	\N	1126982881	2	5683	0.9
2025-07-04 15:25:07.533+00	193	\N	1126982881	3	5691	0.9
2025-07-04 15:26:17.237+00	193	\N	1041420528	3	5696	0.9
2025-07-04 18:15:41.207+00	193	telegraf	1041420528	3	6088	1
2025-07-04 18:15:46.763+00	193	telegraf	1126982881	3	6091	1
2025-07-04 18:18:18.778+00	193	telegraf	1126982881	3	6102	1
2025-07-04 18:18:19.233+00	193	telegraf	1041420528	3	6105	1
2025-07-04 18:33:17.835+00	193	telegraf	1126982881	3	6119	1
2025-07-04 19:39:22.207+00	193	telegraf	1126982881	3	6201	1
2025-07-04 20:25:00.632+00	193	telegraf	1126982881	3	6293	1
2025-07-04 20:25:09.422+00	193	telegraf	978202981	2	6296	1
2025-07-04 20:25:09.868+00	193	telegraf	1041420528	3	6299	1
2025-07-04 20:37:10.707+00	193	telegraf	1126982881	3	6323	1
2025-07-04 20:44:06.757+00	193	telegraf	1126982881	3	6339	1
2025-07-04 20:44:07.046+00	193	telegraf	1041420528	3	6342	1
2025-07-04 22:04:31.215+00	193	telegraf	1126982881	3	6450	1
2025-07-05 07:25:49.743+00	193	telegraf	978202981	2	6903	1
2025-07-05 07:25:50.161+00	193	telegraf	1126982881	3	6906	1
2025-07-05 07:25:52.116+00	193	telegraf	1041420528	3	6909	1
2025-07-07 09:06:40.896+00	193	telegraf	840973111	4	117	1
2025-07-07 09:06:41.854+00	193	telegraf	1523842139	6	120	1
2025-07-07 09:07:30.044+00	193	telegraf	527134251	6	125	1
2025-07-07 09:08:03.423+00	193	telegraf	1041420528	2	4	1
2025-07-07 09:06:05.404+00	193	telegraf	1041420528	4	8	1
2025-07-07 09:08:03.543+00	193	telegraf	978202981	3	17	1
2025-07-07 09:08:06.008+00	193	telegraf	1126982881	3	20	1
2025-07-07 09:10:48.012+00	193	telegraf	527134251	4	132	1
2025-07-07 09:10:48.831+00	193	telegraf	840973111	4	136	1
2025-07-07 09:10:48.828+00	193	telegraf	1523842139	4	138	1
2025-07-07 09:17:04.02+00	193	telegraf	1523842139	4	163	1
2025-07-07 09:17:06.013+00	193	telegraf	840973111	6	166	1
2025-07-07 09:17:04.186+00	193	telegraf	527134251	6	169	1
2025-07-07 09:18:06.096+00	193	telegraf	1126982881	3	25	1
2025-07-07 09:18:52.052+00	193	telegraf	1523842139	6	176	1
2025-07-07 09:19:13.105+00	193	telegraf	1126982881	4	31	1
2025-07-07 09:19:08.226+00	193	telegraf	527134251	6	185	1
2025-07-07 09:25:43.12+00	193	telegraf	527134251	7	197	1
2025-07-07 09:27:54.961+00	193	telegraf	840973111	5	211	1
2025-07-07 09:30:32.022+00	193	telegraf	1523842139	4	225	1
2025-07-07 09:31:07.057+00	193	telegraf	840973111	4	228	1
2025-07-07 09:31:07.183+00	193	telegraf	527134251	7	231	1
2025-07-07 09:31:57.191+00	193	telegraf	1126982881	3	41	1
2025-07-07 09:31:56.72+00	193	telegraf	1041420528	2	44	1
2025-07-07 09:32:27.731+00	193	telegraf	978202981	3	48	1
2025-07-07 09:33:22.207+00	193	telegraf	1126982881	3	52	1
2025-07-07 09:34:43.152+00	193	telegraf	527134251	6	241	1
2025-07-07 09:34:55.013+00	193	telegraf	840973111	7	244	1
2025-07-07 09:36:18.76+00	193	telegraf	1041420528	3	57	1
2025-07-07 09:37:45.206+00	193	telegraf	527134251	7	255	1
2025-07-07 09:49:26.266+00	193	telegraf	527134251	23	8	1
2025-07-07 09:54:17.789+00	193	telegraf	1041420528	4	73	1
2025-07-07 09:55:51.747+00	193	telegraf	978202981	4	81	1
2025-07-07 09:57:26.368+00	193	telegraf	527134251	21	29	1
2025-07-07 09:58:34.712+00	193	telegraf	978202981	3	86	1
2025-07-07 09:59:07.741+00	193	telegraf	1041420528	3	89	1
2025-07-07 10:07:43.743+00	193	telegraf	978202981	4	98	1
2025-07-07 10:07:58.174+00	193	telegraf	1126982881	3	102	1
2025-07-07 10:07:57.773+00	193	telegraf	1041420528	2	105	1
2025-07-07 10:19:01.017+00	193	telegraf	978202981	5	118	1
2025-07-07 10:19:02.423+00	193	telegraf	1126982881	4	121	1
2025-07-07 10:54:11.766+00	193	telegraf	1126982881	6	5	1
2025-07-07 10:54:11.09+00	193	telegraf	1041420528	6	8	1
2025-07-07 10:56:50.749+00	193	telegraf	1126982881	5	14	1
2025-07-07 10:57:29.202+00	193	telegraf	978202981	4	18	1
2025-07-07 10:58:00.077+00	193	telegraf	1041420528	5	21	1
2025-07-07 11:05:47.304+00	193	telegraf	978202981	3	32	1
2025-07-07 11:06:46.132+00	193	telegraf	1041420528	6	36	1
2025-07-07 11:09:13.311+00	193	telegraf	978202981	4	45	1
2025-07-07 11:10:47.79+00	193	telegraf	1126982881	4	51	1
2025-07-07 11:10:50.147+00	193	telegraf	1041420528	6	55	1
2025-07-07 11:33:10.349+00	193	telegraf	1041420528	4	77	1
2025-07-07 11:39:32.436+00	193	telegraf	978202981	3	82	1
2025-07-07 11:48:11.475+00	193	telegraf	978202981	3	101	1
2025-07-07 11:51:41.993+00	193	telegraf	1126982881	4	107	1
2025-07-07 12:07:12.047+00	193	telegraf	1126982881	5	132	1
2025-07-07 12:08:23.06+00	193	telegraf	1126982881	5	136	1
2025-07-07 12:13:47.076+00	193	telegraf	1126982881	4	150	1
2025-07-07 12:14:58.073+00	193	telegraf	1126982881	5	157	1
2025-07-07 12:26:20.973+00	193	telegraf	632461688	6	185	1
2025-07-07 12:26:22.391+00	193	telegraf	3839865	4	186	1
2025-07-07 12:26:32.201+00	193	telegraf	1126982881	4	190	1
2025-07-07 12:40:18.692+00	193	telegraf	1041420528	4	215	1
2025-07-07 12:46:26.484+00	193	telegraf	305822513	4	229	1
2025-07-07 12:46:26.501+00	193	telegraf	3839865	3	232	1
2025-07-07 12:57:09.747+00	193	telegraf	1041420528	3	254	1
2025-07-07 13:01:06.288+00	193	telegraf	840973111	3	297	1
2025-07-07 13:01:52.642+00	193	telegraf	791308911	6	309	1
2025-07-07 13:01:49.393+00	193	telegraf	527134251	4	310	1
2025-07-07 13:03:06.644+00	193	telegraf	791308911	7	326	1
2025-07-07 13:03:42.97+00	193	telegraf	333419537	6	336	1
2025-07-07 13:03:43.131+00	193	telegraf	677224097	5	341	1
2025-07-07 13:03:53.304+00	193	telegraf	840973111	3	344	1
2025-07-07 13:03:53.397+00	193	telegraf	527134251	5	347	1
2025-07-07 13:04:06.266+00	193	telegraf	1523842139	4	351	1
2025-07-07 13:05:30.404+00	193	telegraf	527134251	5	359	1
2025-07-07 13:05:52.766+00	193	telegraf	1041420528	3	362	1
2025-07-07 13:09:21.777+00	193	telegraf	1041420528	4	384	1
2025-07-07 13:09:54.431+00	193	telegraf	527134251	4	391	1
2025-07-07 13:17:12.354+00	193	telegraf	840973111	4	423	1
2025-07-07 13:17:12.293+00	193	telegraf	1523842139	3	427	1
2025-07-07 13:17:12.45+00	193	telegraf	527134251	5	431	1
2025-07-07 13:19:16.354+00	193	telegraf	840973111	5	440	1
2025-07-07 13:19:16.312+00	193	telegraf	1523842139	4	448	1
2025-07-07 13:19:57.449+00	193	telegraf	527134251	5	451	1
2025-07-07 13:21:41.986+00	193	telegraf	978202981	4	458	1
2025-07-07 13:21:42.465+00	193	telegraf	527134251	5	462	1
2025-07-07 13:22:38.607+00	193	telegraf	305822513	5	466	1
2025-07-07 13:22:38.272+00	193	telegraf	632461688	2	470	1
2025-07-07 13:22:37.643+00	193	telegraf	3839865	6	471	1
2025-07-07 13:22:51.465+00	193	telegraf	527134251	5	478	1
2025-07-07 13:28:33.635+00	193	telegraf	305822513	6	500	1
2025-07-07 13:33:14.662+00	193	telegraf	305822513	6	522	1
2025-07-07 13:33:14.712+00	193	telegraf	3839865	4	526	1
2025-07-07 13:28:26.568+00	193	telegraf	527134251	4	554	1
2025-07-07 13:33:13.184+00	193	telegraf	333419537	4	559	1
2025-07-07 13:39:46.767+00	193	telegraf	3839865	4	562	1
2025-07-07 13:31:48.399+00	193	telegraf	840973111	4	568	1
2025-07-07 13:28:27.382+00	193	telegraf	840973111	3	573	1
2025-07-07 13:28:27.371+00	193	telegraf	1523842139	4	577	1
2025-07-07 13:36:47.358+00	193	telegraf	1523842139	4	582	1
2025-07-07 13:38:09.816+00	193	telegraf	791308911	8	590	1
2025-07-07 13:37:59.376+00	193	telegraf	1523842139	3	606	1
2025-07-07 13:38:40.26+00	193	telegraf	677224097	4	611	1
2025-07-07 13:40:59.624+00	193	telegraf	527134251	5	628	1
2025-07-07 13:42:13.632+00	193	telegraf	527134251	4	633	1
2025-07-07 13:42:58.711+00	193	telegraf	305822513	6	636	1
2025-07-07 13:42:18.444+00	193	telegraf	840973111	3	639	1
2025-07-07 13:42:45.399+00	193	telegraf	1523842139	4	644	1
2025-07-07 13:43:15.634+00	193	telegraf	527134251	5	656	1
2025-07-07 13:43:20.443+00	193	telegraf	840973111	3	659	1
2025-07-07 13:47:08.652+00	193	telegraf	527134251	5	672	1
2025-07-07 13:47:10.416+00	193	telegraf	1523842139	4	675	1
2025-07-07 13:48:22.463+00	193	telegraf	840973111	4	686	1
2025-07-07 13:48:23.412+00	193	telegraf	1523842139	4	688	1
2025-07-07 13:48:36.651+00	193	telegraf	527134251	5	692	1
2025-07-07 13:48:57.854+00	193	telegraf	791308911	7	697	1
2025-07-07 13:49:14.227+00	193	telegraf	333419537	4	703	1
2025-07-07 13:50:58.484+00	193	telegraf	840973111	4	709	1
2025-07-07 13:50:59.426+00	193	telegraf	1523842139	4	713	1
2025-07-07 13:52:58.434+00	193	telegraf	1523842139	5	725	1
2025-07-07 13:54:26.487+00	193	telegraf	840973111	4	741	1
2025-07-07 13:55:30.681+00	193	telegraf	527134251	5	750	1
2025-07-07 13:57:11.687+00	193	telegraf	527134251	5	761	1
2025-07-07 13:59:05.698+00	193	telegraf	527134251	5	778	1
2025-07-07 13:59:27.17+00	193	telegraf	978202981	6	781	1
2025-07-07 13:59:05.514+00	193	telegraf	840973111	3	789	1
2025-07-07 13:59:04.479+00	193	telegraf	1523842139	2	790	1
2025-07-07 14:08:35.548+00	193	telegraf	1523842139	4	838	1
2025-07-07 14:11:21.32+00	193	telegraf	333419537	4	857	1
2025-07-07 14:13:27.25+00	193	telegraf	978202981	7	876	1
2025-07-07 14:12:25.766+00	193	telegraf	527134251	5	888	1
2025-07-07 14:06:41.064+00	193	telegraf	2045592530	7	900	1
2025-07-07 14:06:20.305+00	193	telegraf	1575827679	6	908	1
2025-07-07 14:09:17.116+00	193	telegraf	2045592530	7	911	1
2025-07-07 14:12:24.578+00	193	telegraf	1523842139	5	918	1
2025-07-07 14:12:25.591+00	193	telegraf	840973111	4	919	1
2025-07-07 14:14:57.542+00	193	telegraf	632461688	4	932	1
2025-07-07 14:14:57.038+00	193	telegraf	3839865	7	933	1
2025-07-07 14:15:14.606+00	193	telegraf	840973111	4	946	1
2025-07-07 14:15:44.8+00	193	telegraf	1126982881	2	950	1
2025-07-07 14:19:02.616+00	193	telegraf	840973111	5	974	1
2025-07-07 14:19:01.798+00	193	telegraf	527134251	5	978	1
2025-07-07 14:19:01.611+00	193	telegraf	1523842139	3	981	1
2025-07-07 14:20:34.286+00	193	telegraf	978202981	5	988	1
2025-07-07 14:20:21.812+00	193	telegraf	527134251	4	992	1
2025-07-07 14:20:20.628+00	193	telegraf	840973111	5	993	1
2025-07-07 14:20:20.61+00	193	telegraf	1523842139	3	997	1
2025-07-07 14:22:03.491+00	193	telegraf	677224097	6	1006	1
2025-07-07 14:28:05.135+00	193	telegraf	305822513	6	1029	1
2025-07-07 14:28:04.606+00	193	telegraf	632461688	4	1032	1
2025-07-07 14:33:36.277+00	193	telegraf	1041420528	3	1056	1
2025-07-07 14:36:12.549+00	193	telegraf	677224097	3	1076	1
2025-07-07 14:38:31.286+00	193	telegraf	1041420528	3	1082	1
2025-07-07 14:39:34.168+00	193	telegraf	791308911	2	1090	1
2025-07-07 14:39:34.566+00	193	telegraf	677224097	3	1094	1
2025-07-07 14:39:34.406+00	193	telegraf	333419537	2	1095	1
2025-07-07 14:40:52.189+00	193	telegraf	305822513	4	1102	1
2025-07-07 14:40:52.159+00	193	telegraf	3839865	1	1105	1
2025-07-07 14:40:52.665+00	193	telegraf	632461688	5	1108	1
2025-07-07 14:44:00.179+00	193	telegraf	791308911	5	1130	1
2025-07-07 14:43:58.579+00	193	telegraf	677224097	4	1133	1
2025-07-07 14:47:30.708+00	193	telegraf	632461688	4	1155	1
2025-07-07 14:46:42.493+00	193	telegraf	333419537	3	1174	1
2025-07-07 14:50:21.163+00	193	telegraf	720958279	4	1184	1
2025-07-07 14:50:20.192+00	193	telegraf	23439212	4	1187	1
2025-07-08 08:06:02.252+00	193	telegraf	1041420528	9	64	1
2025-07-08 08:06:17.571+00	193	telegraf	1126982881	9	70	1
2025-07-08 08:29:12.15+00	193	telegraf	978202981	9	140	1
2025-07-08 08:29:13.333+00	193	telegraf	1041420528	8	143	1
2025-07-08 08:29:13.612+00	193	telegraf	1126982881	7	146	1
2025-07-08 08:30:54.686+00	193	telegraf	677224097	9	160	1
2025-07-08 08:49:52.492+00	193	telegraf	978202981	8	214	1
2025-07-08 08:49:51.885+00	193	telegraf	1126982881	7	217	1
2025-07-08 09:02:31.516+00	193	telegraf	978202981	7	251	1
2025-07-08 09:02:30.888+00	193	telegraf	1126982881	9	254	1
2025-07-09 09:24:12.863+00	193	telegraf	978202981	4	8	1
2025-07-09 09:44:52.905+00	193	telegraf	1126982881	4	38	1
2025-07-09 09:48:55.886+00	193	telegraf	978202981	3	44	1
2025-07-09 10:11:53.979+00	193	telegraf	978202981	3	71	1
2025-07-09 10:15:28.127+00	193	telegraf	1041420528	4	85	1
2025-07-09 10:15:29.082+00	193	telegraf	1126982881	3	88	1
2025-07-09 10:18:29.007+00	193	telegraf	978202981	4	93	1
2025-07-09 10:19:46.135+00	193	telegraf	1041420528	4	100	1
2025-07-09 10:26:04.172+00	193	telegraf	1041420528	4	109	1
2025-07-09 10:26:10.04+00	193	telegraf	978202981	4	113	1
2025-07-09 10:26:43.125+00	193	telegraf	1126982881	4	116	1
2025-07-09 10:27:53.17+00	193	telegraf	1041420528	3	122	1
2025-07-09 10:48:34.246+00	193	telegraf	1126982881	6	195	1
2025-07-09 10:50:49.153+00	193	telegraf	978202981	5	202	1
2025-07-09 10:50:50.27+00	193	telegraf	1126982881	5	205	1
2025-07-09 13:35:05.04+00	193	telegraf	978202981	3	562	1
2025-07-09 13:35:06.041+00	193	telegraf	1126982881	3	565	1
2025-07-09 13:44:31.463+00	193	telegraf	1041420528	3	580	1
2025-07-09 13:44:32.072+00	193	telegraf	1126982881	3	582	1
2025-07-09 13:51:03.096+00	193	telegraf	1126982881	3	589	1
2025-07-09 13:56:18.361+00	193	telegraf	978202981	3	3	1
\.


--
-- Data for Name: _hyper_4_18_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_4_18_chunk ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
2025-07-10 07:26:06.279+00	193	telegraf	1041420528	1	21	1
2025-07-10 07:26:12.821+00	193	telegraf	978202981	3	25	1
2025-07-10 07:26:06.604+00	193	telegraf	1126982881	3	28	1
2025-07-10 07:27:50.853+00	193	telegraf	978202981	3	39	1
2025-07-10 07:30:08.631+00	193	telegraf	1126982881	3	61	1
2025-07-10 07:48:27.399+00	193	telegraf	1041420528	3	76	1
2025-07-10 07:49:59.401+00	193	telegraf	1041420528	3	80	1
2025-07-10 08:02:22.46+00	193	telegraf	1041420528	3	95	1
2025-07-10 08:05:29.049+00	193	telegraf	978202981	3	100	1
2025-07-10 08:05:27.812+00	193	telegraf	1126982881	3	103	1
2025-07-10 08:36:07.954+00	193	telegraf	1126982881	3	125	1
2025-07-10 08:37:12.303+00	193	telegraf	978202981	3	131	1
2025-07-10 08:37:11.604+00	193	telegraf	1041420528	2	135	1
2025-07-10 08:37:11.961+00	193	telegraf	1126982881	2	136	1
2025-07-10 08:39:48.612+00	193	telegraf	1041420528	3	145	1
2025-07-10 09:01:53.705+00	193	telegraf	1041420528	3	167	1
2025-07-10 09:49:41.638+00	193	telegraf	978202981	3	200	1
2025-07-10 14:47:54.406+00	193	telegraf	1041420528	3	392	1
2025-07-10 14:59:07.312+00	193	telegraf	978202981	3	400	1
2025-07-10 14:59:06.457+00	193	telegraf	1041420528	2	403	1
2025-07-10 16:19:16.698+00	193	telegraf	1126982881	3	461	1
2025-07-11 06:51:30.53+00	193	telegraf	1041420528	3	2	1
2025-07-11 07:48:42.973+00	193	telegraf	1126982881	3	44	1
2025-07-11 07:48:43.845+00	193	telegraf	1041420528	3	47	1
2025-07-11 07:52:59.853+00	193	telegraf	1041420528	3	53	1
2025-07-11 09:23:07.454+00	193	telegraf	978202981	3	120	1
2025-07-12 05:51:11.396+00	193	telegraf	1126982881	3	10	1
2025-07-13 13:00:34.134+00	193	telegraf	1126982881	3	1185	1
2025-07-13 13:06:35.691+00	193	telegraf	978202981	3	1191	1
2025-07-15 08:57:42.662+00	193	telegraf	1126982881	3	2825	1
2025-07-16 01:18:01.997+00	193	telegraf	1523842139	3	2	1
\.


--
-- Data for Name: _hyper_4_27_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_4_27_chunk ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
2025-07-17 15:28:53.372+00	193	telegraf	840973111	2	100	1
2025-07-17 15:30:27.418+00	193	telegraf	1523842139	3	104	1
2025-07-17 15:36:02.476+00	193	telegraf	1523842139	2	113	1
2025-07-17 15:36:02.163+00	193	telegraf	527134251	2	116	1
2025-07-17 15:36:04.42+00	193	telegraf	840973111	3	121	1
2025-07-17 15:38:17.499+00	193	telegraf	1523842139	3	134	1
2025-07-17 15:38:18.168+00	193	telegraf	527134251	3	137	1
2025-07-17 15:38:49.435+00	193	telegraf	840973111	2	141	1
2025-07-17 15:47:43.611+00	193	telegraf	1523842139	3	153	1
2025-07-17 15:47:41.505+00	193	telegraf	840973111	3	156	1
2025-07-17 15:52:29.632+00	193	telegraf	1523842139	3	165	1
2025-07-17 15:55:56.538+00	193	telegraf	840973111	2	176	1
2025-07-17 15:57:47.264+00	193	telegraf	527134251	2	180	1
2025-07-17 16:17:57.735+00	193	telegraf	1523842139	2	202	1
2025-07-17 16:17:55.62+00	193	telegraf	840973111	2	205	1
2025-07-17 18:08:39.7+00	193	telegraf	978202981	3	5071	1
2025-07-18 07:51:02.253+00	193	telegraf	1126982881	3	5606	1
2025-07-18 07:51:02.158+00	193	telegraf	978202981	2	5609	1
2025-07-19 16:38:31.072+00	193	telegraf	1041420528	3	7024	1
2025-07-19 16:42:10.202+00	193	telegraf	1126982881	2	7036	1
2025-07-19 16:42:10.091+00	193	telegraf	1041420528	1	7040	1
2025-07-19 16:42:10.605+00	193	telegraf	978202981	3	7043	1
2025-07-19 16:47:55.223+00	193	telegraf	1126982881	3	7060	1
2025-07-19 16:47:55.131+00	193	telegraf	1041420528	2	7063	1
2025-07-19 18:33:20.446+00	193	telegraf	1041420528	3	7140	1
2025-07-20 08:23:56.882+00	193	telegraf	1041420528	3	7656	1
2025-07-20 08:49:01.334+00	193	telegraf	978202981	3	7679	1
2025-07-20 08:50:36.339+00	193	telegraf	978202981	3	7684	1
2025-07-18 22:28:09.636+00	193	telegraf	1523842139	2	2	1
2025-07-18 22:28:09.362+00	193	telegraf	840973111	0	5	1
2025-07-18 22:28:09.453+00	193	telegraf	527134251	1	8	1
2025-07-20 12:34:31.526+00	193	telegraf	840973111	3	19	1
2025-07-20 12:34:31.881+00	193	telegraf	1523842139	3	22	1
2025-07-20 12:36:34.913+00	193	telegraf	1523842139	3	37	1
2025-07-20 12:38:25.585+00	193	telegraf	840973111	2	41	1
2025-07-20 12:38:24.933+00	193	telegraf	1523842139	3	46	1
2025-07-20 12:38:25.648+00	193	telegraf	527134251	3	47	1
2025-07-20 12:39:33.579+00	193	telegraf	840973111	2	54	1
2025-07-20 12:39:32.92+00	193	telegraf	1523842139	3	58	1
2025-07-20 12:39:33.643+00	193	telegraf	527134251	3	61	1
2025-07-20 12:40:52.581+00	193	telegraf	840973111	3	70	1
2025-07-20 12:41:13.923+00	193	telegraf	1523842139	3	75	1
2025-07-20 12:42:25.593+00	193	telegraf	840973111	3	81	1
2025-07-20 12:42:23.648+00	193	telegraf	527134251	3	85	1
2025-07-20 12:42:22.943+00	193	telegraf	1523842139	3	86	1
2025-07-20 12:45:41.663+00	193	telegraf	527134251	3	99	1
2025-07-20 12:49:38.685+00	193	telegraf	527134251	3	111	1
2025-07-20 12:50:22.641+00	193	telegraf	840973111	3	115	1
2025-07-20 12:50:22.004+00	193	telegraf	1523842139	3	118	1
2025-07-20 13:03:53.738+00	193	telegraf	527134251	3	132	1
2025-07-20 13:06:26.728+00	193	telegraf	840973111	3	142	1
2025-07-20 13:07:50.832+00	193	telegraf	527134251	3	156	1
2025-07-20 13:09:06.777+00	193	telegraf	840973111	3	160	1
2025-07-20 13:09:14.108+00	193	telegraf	1523842139	3	163	1
2025-07-20 13:10:42.821+00	193	telegraf	840973111	3	171	1
2025-07-20 13:11:27.102+00	193	telegraf	1523842139	3	175	1
2025-07-20 13:13:45.846+00	193	telegraf	527134251	3	184	1
2025-07-20 13:27:20.15+00	193	telegraf	1523842139	3	199	1
2025-07-20 13:28:14.895+00	193	telegraf	527134251	3	202	1
2025-07-20 13:30:58.158+00	193	telegraf	1523842139	3	206	1
2025-07-20 13:33:23.177+00	193	telegraf	1523842139	3	211	1
2025-07-20 14:18:03.048+00	193	telegraf	840973111	3	319	1
2025-07-20 14:18:04.434+00	193	telegraf	1523842139	3	322	1
2025-07-20 14:21:12.443+00	193	telegraf	1523842139	3	334	1
2025-07-20 14:21:12.287+00	193	telegraf	527134251	2	337	1
2025-07-20 14:22:50.293+00	193	telegraf	527134251	3	345	1
2025-07-20 14:24:37.463+00	193	telegraf	1523842139	3	355	1
2025-07-20 14:25:03.306+00	193	telegraf	527134251	3	361	1
2025-07-20 14:28:31.132+00	193	telegraf	840973111	2	374	1
2025-07-20 14:28:32.325+00	193	telegraf	527134251	3	377	1
2025-07-20 14:28:31.48+00	193	telegraf	1523842139	3	380	1
2025-07-20 14:38:53.296+00	193	telegraf	840973111	3	403	1
2025-07-20 14:38:52.534+00	193	telegraf	1523842139	3	407	1
2025-07-20 14:38:52.391+00	193	telegraf	527134251	2	410	1
2025-07-20 14:40:30.539+00	193	telegraf	1523842139	3	417	1
2025-07-20 14:40:40.31+00	193	telegraf	840973111	2	420	1
2025-07-20 14:40:40.404+00	193	telegraf	527134251	3	423	1
2025-07-20 14:53:31.655+00	193	telegraf	1523842139	2	476	1
2025-07-20 14:53:32.472+00	193	telegraf	527134251	3	477	1
2025-07-20 15:09:27.109+00	193	telegraf	978202981	3	7924	1
2025-07-20 15:09:31.186+00	193	telegraf	840973111	3	37	1
2025-07-20 15:14:22.433+00	193	telegraf	527134251	2	80	1
2025-07-20 15:14:22.916+00	193	telegraf	1523842139	3	83	1
2025-07-20 15:16:00.387+00	193	telegraf	840973111	1	91	1
2025-07-20 15:16:00.459+00	193	telegraf	527134251	2	94	1
2025-07-20 15:16:00.938+00	193	telegraf	1523842139	3	97	1
2025-07-20 15:17:47.965+00	193	telegraf	1523842139	1	107	1
2025-07-20 15:17:48.406+00	193	telegraf	840973111	2	110	1
2025-07-20 15:17:48.485+00	193	telegraf	527134251	3	113	1
2025-07-20 15:19:39.428+00	193	telegraf	840973111	3	128	1
2025-07-20 15:19:47.5+00	193	telegraf	527134251	3	132	1
2025-07-20 15:23:16.581+00	193	telegraf	527134251	2	161	1
2025-07-20 15:23:16.818+00	193	telegraf	1523842139	3	164	1
2025-07-20 15:24:35.596+00	193	telegraf	527134251	1	171	1
2025-07-20 15:24:35.832+00	193	telegraf	1523842139	2	174	1
2025-07-20 15:24:35.87+00	193	telegraf	840973111	3	177	1
2025-07-20 15:25:48.838+00	193	telegraf	1523842139	2	185	1
2025-07-20 15:25:48.886+00	193	telegraf	840973111	3	188	1
2025-07-20 15:25:49.614+00	193	telegraf	527134251	3	191	1
2025-07-20 15:28:06.63+00	193	telegraf	527134251	1	201	1
2025-07-20 15:28:06.879+00	193	telegraf	1523842139	2	204	1
2025-07-20 15:28:06.907+00	193	telegraf	840973111	3	207	1
2025-07-20 15:30:46.909+00	193	telegraf	1523842139	3	216	1
2025-07-20 15:30:47.654+00	193	telegraf	527134251	3	219	1
2025-07-20 15:38:04.852+00	193	telegraf	1523842139	3	238	1
2025-07-20 15:39:42.875+00	193	telegraf	840973111	3	245	1
2025-07-20 15:39:53.432+00	193	telegraf	527134251	3	248	1
2025-07-20 15:39:53.852+00	193	telegraf	1523842139	3	251	1
2025-07-20 15:53:16.046+00	193	telegraf	840973111	3	308	1
2025-07-20 15:54:36.058+00	193	telegraf	1523842139	3	312	1
2025-07-20 16:00:13.21+00	193	telegraf	1126982881	3	7965	1
2025-07-20 16:02:42.105+00	193	telegraf	1523842139	3	322	1
2025-07-20 16:04:52.628+00	193	telegraf	527134251	3	327	1
2025-07-20 16:14:45.748+00	193	telegraf	527134251	3	10	1
2025-07-20 16:14:48.193+00	193	telegraf	1523842139	3	14	1
2025-07-20 17:04:35.696+00	193	telegraf	978202981	3	8009	1
2025-07-20 18:33:28.153+00	193	telegraf	978202981	3	8086	1
2025-07-20 19:46:29.437+00	193	telegraf	1126982881	3	8153	1
2025-07-20 19:53:17.487+00	193	telegraf	1126982881	3	8169	1
2025-07-20 19:53:19.497+00	193	telegraf	978202981	3	8173	1
2025-07-20 19:53:19.165+00	193	telegraf	1041420528	2	8174	1
2025-07-21 06:46:55.784+00	193	telegraf	978202981	3	393	1
2025-07-21 06:49:12.366+00	193	telegraf	1126982881	3	404	1
2025-07-21 07:13:15.488+00	193	telegraf	1041420528	3	437	1
2025-07-21 07:13:13.945+00	193	telegraf	978202981	3	438	1
2025-07-21 17:31:40.064+00	193	telegraf	527134251	2	583	1
2025-07-21 17:31:40.131+00	193	telegraf	1523842139	3	586	1
2025-07-21 17:34:43.032+00	193	telegraf	527134251	3	593	1
2025-07-21 17:34:55.126+00	193	telegraf	1523842139	3	596	1
2025-07-21 17:39:14.13+00	193	telegraf	1523842139	3	603	1
2025-07-21 17:39:21.029+00	193	telegraf	527134251	3	606	1
2025-07-21 17:42:41.118+00	193	telegraf	1523842139	3	613	1
2025-07-21 17:42:42.025+00	193	telegraf	527134251	3	616	1
2025-07-21 17:43:15.535+00	193	telegraf	840973111	3	619	1
2025-07-21 17:50:40.556+00	193	telegraf	840973111	3	627	1
2025-07-21 17:50:41.029+00	193	telegraf	527134251	3	630	1
2025-07-21 17:50:41.124+00	193	telegraf	1523842139	3	633	1
2025-07-21 17:59:40.032+00	193	telegraf	527134251	3	643	1
2025-07-21 18:06:22.212+00	193	telegraf	1523842139	3	652	1
2025-07-21 19:10:18.469+00	193	telegraf	527134251	3	735	1
2025-07-21 19:13:23.451+00	193	telegraf	1523842139	3	742	1
2025-07-21 19:13:24.49+00	193	telegraf	527134251	2	745	1
2025-07-21 19:13:24.858+00	193	telegraf	840973111	3	748	1
2025-07-21 19:16:26.862+00	193	telegraf	840973111	3	754	1
2025-07-21 19:16:30.511+00	193	telegraf	527134251	3	757	1
2025-07-21 19:17:32.456+00	193	telegraf	1523842139	3	763	1
2025-07-21 19:17:33.534+00	193	telegraf	527134251	3	766	1
2025-07-21 19:17:35.866+00	193	telegraf	840973111	3	769	1
2025-07-21 21:26:38.439+00	193	telegraf	978202981	3	128	1
2025-07-21 21:26:38.154+00	193	telegraf	1041420528	2	129	1
2025-07-21 21:30:51.261+00	193	telegraf	1523842139	3	1087	1
2025-07-21 21:31:54.88+00	193	telegraf	527134251	3	1092	1
2025-07-21 21:34:53.823+00	193	telegraf	840973111	2	1101	1
2025-07-21 21:34:52.279+00	193	telegraf	1523842139	3	1104	1
2025-07-21 21:34:53.915+00	193	telegraf	527134251	3	1107	1
2025-07-21 21:39:04.962+00	193	telegraf	527134251	2	1113	1
2025-07-21 21:41:35.983+00	193	telegraf	527134251	3	1122	1
2025-07-22 13:51:46.506+00	193	telegraf	978202981	3	753	1
2025-07-22 13:52:44.387+00	193	telegraf	1126982881	3	758	1
2025-07-22 15:19:48.594+00	193	telegraf	1041420528	3	824	1
2025-07-22 15:19:57.938+00	193	telegraf	1126982881	3	827	1
2025-07-22 15:21:22.954+00	193	telegraf	1126982881	3	833	1
2025-07-22 17:07:12.696+00	193	telegraf	1126982881	3	1030	1
2025-07-22 17:10:57.734+00	193	telegraf	1126982881	3	1047	1
2025-07-22 17:22:29.825+00	193	telegraf	1126982881	3	1069	1
2025-07-22 17:29:26.905+00	193	telegraf	1126982881	3	1101	1
2025-07-22 17:34:10.976+00	193	telegraf	1126982881	3	1121	1
2025-07-22 17:41:49.06+00	193	telegraf	1126982881	3	1147	1
2025-07-22 17:45:59.099+00	193	telegraf	1126982881	3	1158	1
2025-07-22 17:52:56.14+00	193	telegraf	1126982881	3	1172	1
2025-07-22 17:54:47.155+00	193	telegraf	1126982881	3	1178	1
2025-07-22 17:56:58.179+00	193	telegraf	1126982881	3	1190	1
2025-07-22 19:27:38.645+00	193	telegraf	1126982881	3	1263	1
2025-07-22 19:27:48.283+00	193	telegraf	978202981	3	1267	1
2025-07-22 19:29:01.654+00	193	telegraf	1126982881	3	1277	1
2025-07-22 19:31:16.693+00	193	telegraf	1126982881	3	1289	1
2025-07-22 20:06:25.969+00	193	telegraf	1126982881	3	1357	1
2025-07-22 20:09:26.573+00	193	telegraf	978202981	3	1367	1
2025-07-22 20:09:55.974+00	193	telegraf	1126982881	3	1371	1
2025-07-22 20:20:53.034+00	193	telegraf	1126982881	3	1398	1
2025-07-22 20:24:59.071+00	193	telegraf	1126982881	3	1410	1
2025-07-22 20:25:00.09+00	193	telegraf	1041420528	3	1414	1
2025-07-22 20:25:00.625+00	193	telegraf	978202981	3	1415	1
2025-07-22 20:32:42.11+00	193	telegraf	1126982881	2	1429	1
2025-07-22 20:32:41.654+00	193	telegraf	978202981	3	1433	1
2025-07-22 20:32:42.165+00	193	telegraf	1041420528	3	1434	1
2025-07-22 21:30:08.147+00	193	telegraf	840973111	3	17	1
2025-07-22 21:36:08.17+00	193	telegraf	527134251	3	25	1
2025-07-22 21:36:00.685+00	193	telegraf	1523842139	3	29	1
2025-07-22 21:36:00.197+00	193	telegraf	840973111	2	30	1
2025-07-22 21:45:48.207+00	193	telegraf	527134251	2	49	1
2025-07-22 21:45:48.239+00	193	telegraf	840973111	3	53	1
2025-07-22 21:45:47.743+00	193	telegraf	1523842139	2	54	1
2025-07-22 21:46:53.211+00	193	telegraf	527134251	3	62	1
2025-07-22 21:46:55.24+00	193	telegraf	840973111	3	66	1
2025-07-22 21:46:54.752+00	193	telegraf	1523842139	3	67	1
2025-07-22 21:47:59.246+00	193	telegraf	840973111	3	74	1
2025-07-22 21:48:01.213+00	193	telegraf	527134251	3	77	1
2025-07-22 21:48:00.751+00	193	telegraf	1523842139	2	80	1
2025-07-22 21:49:19.249+00	193	telegraf	840973111	3	86	1
2025-07-22 21:49:40.221+00	193	telegraf	527134251	3	89	1
2025-07-22 21:49:39.758+00	193	telegraf	1523842139	2	92	1
2025-07-22 21:50:48.219+00	193	telegraf	527134251	3	96	1
2025-07-22 21:58:40.269+00	193	telegraf	840973111	3	106	1
2025-07-22 21:59:02.816+00	193	telegraf	1523842139	3	109	1
2025-07-22 22:08:22.248+00	193	telegraf	527134251	3	115	1
2025-07-22 22:11:13.267+00	193	telegraf	527134251	2	124	1
2025-07-22 22:11:13.29+00	193	telegraf	840973111	3	128	1
2025-07-22 22:11:12.85+00	193	telegraf	1523842139	1	129	1
2025-07-22 22:30:01.409+00	193	telegraf	527134251	2	151	1
2025-07-22 22:30:03.074+00	193	telegraf	1523842139	3	155	1
2025-07-22 22:30:01.414+00	193	telegraf	840973111	2	156	1
2025-07-22 22:33:10.435+00	193	telegraf	527134251	3	165	1
2025-07-22 22:33:11.091+00	193	telegraf	1523842139	3	169	1
2025-07-22 22:33:11.431+00	193	telegraf	840973111	3	170	1
2025-07-22 22:34:21.434+00	193	telegraf	527134251	3	177	1
2025-07-22 22:34:19.435+00	193	telegraf	840973111	3	182	1
2025-07-22 22:34:22.095+00	193	telegraf	1523842139	3	183	1
2025-07-22 22:35:25.444+00	193	telegraf	527134251	3	189	1
2025-07-22 22:35:26.439+00	193	telegraf	840973111	3	193	1
2025-07-22 22:35:26.107+00	193	telegraf	1523842139	2	194	1
2025-07-22 22:36:30.442+00	193	telegraf	527134251	2	202	1
2025-07-22 22:36:30.45+00	193	telegraf	840973111	2	205	1
2025-07-22 22:36:31.112+00	193	telegraf	1523842139	3	208	1
2025-07-22 22:42:30.148+00	193	telegraf	1523842139	3	215	1
2025-07-22 22:47:00.505+00	193	telegraf	527134251	1	230	1
2025-07-22 22:47:01.17+00	193	telegraf	1523842139	3	234	1
2025-07-22 22:47:00.487+00	193	telegraf	840973111	1	235	1
2025-07-22 22:55:27.554+00	193	telegraf	527134251	3	247	1
2025-07-22 22:55:28.524+00	193	telegraf	840973111	3	250	1
2025-07-22 22:55:28.214+00	193	telegraf	1523842139	2	253	1
2025-07-23 07:41:55.507+00	193	telegraf	1126982881	3	1847	1
2025-07-23 07:44:07.536+00	193	telegraf	1126982881	3	1863	1
2025-07-23 07:44:08.692+00	193	telegraf	978202981	3	1867	1
2025-07-23 07:44:08.602+00	193	telegraf	1041420528	3	1868	1
2025-07-23 07:59:58.657+00	193	telegraf	1041420528	3	1894	1
2025-07-23 07:59:57.739+00	193	telegraf	978202981	3	1895	1
2025-07-23 08:00:33.714+00	193	telegraf	1126982881	3	1901	1
2025-07-23 08:08:20.792+00	193	telegraf	1126982881	3	1918	1
2025-07-23 08:11:11.822+00	193	telegraf	1126982881	3	1931	1
2025-07-23 08:21:56.897+00	193	telegraf	1126982881	3	1946	1
2025-07-23 08:22:16.732+00	193	telegraf	1041420528	3	1949	1
2025-07-23 08:27:22.943+00	193	telegraf	1126982881	3	1957	1
2025-07-23 08:29:51.961+00	193	telegraf	1126982881	3	1963	1
2025-07-23 08:31:31.962+00	193	telegraf	1126982881	3	1968	1
2025-07-23 08:33:36.967+00	193	telegraf	1126982881	3	1974	1
2025-07-23 09:22:06.162+00	193	telegraf	1126982881	3	2006	1
2025-07-23 09:40:15.234+00	193	telegraf	1126982881	3	2024	1
2025-07-23 09:57:42.354+00	193	telegraf	1126982881	3	2036	1
2025-07-23 17:35:06.864+00	193	telegraf	1126982881	3	2377	1
2025-07-23 17:35:08.148+00	193	telegraf	978202981	3	2380	1
2025-07-23 17:35:07.847+00	193	telegraf	1041420528	3	2384	1
\.


--
-- Data for Name: _hyper_4_33_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_4_33_chunk ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
2025-07-25 12:08:36.924+00	193	telegraf	1126982881	3	3981	1
2025-07-25 12:08:36.756+00	193	telegraf	1041420528	1	3985	1
2025-07-25 12:08:36.862+00	193	telegraf	978202981	2	3986	1
2025-07-25 12:54:41.159+00	193	telegraf	978202981	3	4047	1
2025-07-25 12:56:02.238+00	193	telegraf	1126982881	3	4053	1
2025-07-25 12:56:02.944+00	193	telegraf	1041420528	3	4056	1
2025-07-26 13:48:32.37+00	193	telegraf	1041420528	3	5005	1
2025-07-26 14:44:10.351+00	193	telegraf	1126982881	3	5045	1
2025-07-26 14:44:09.646+00	193	telegraf	978202981	2	5048	1
2025-07-26 18:28:09.525+00	193	telegraf	1126982881	3	5195	1
2025-07-26 18:28:08.941+00	193	telegraf	1041420528	3	5198	1
2025-07-26 20:51:34.25+00	193	telegraf	1126982881	3	5284	1
2025-07-26 21:50:27.503+00	193	telegraf	1126982881	3	5326	1
\.


--
-- Data for Name: _hyper_4_3_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_4_3_chunk ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
2025-06-28 12:28:12.201+00	193	\N	1041420528	3	64	0.9
2025-06-28 12:28:25.152+00	193	\N	1126982881	3	67	0.9
2025-06-28 12:28:27.003+00	193	\N	978202981	3	70	0.9
2025-06-28 12:38:02.198+00	193	\N	1126982881	3	86	0.9
2025-06-28 13:36:54.285+00	193	\N	978202981	2	130	0.9
2025-06-28 13:36:54.489+00	193	\N	1126982881	3	133	0.9
2025-06-28 14:17:31.667+00	193	\N	978202981	3	166	0.9
2025-06-28 14:17:39.22+00	193	\N	1041420528	3	169	0.9
2025-06-28 14:17:49.735+00	193	\N	1126982881	3	172	0.9
2025-06-28 16:10:46.277+00	193	\N	1126982881	3	241	0.9
2025-06-28 17:21:18.8+00	193	\N	978202981	2	291	0.9
2025-06-28 17:21:18.831+00	193	\N	1041420528	3	294	0.9
2025-06-28 17:22:07.726+00	193	\N	1126982881	3	299	0.9
2025-06-28 17:25:04.841+00	193	\N	1041420528	3	306	0.9
2025-06-28 17:45:59.925+00	193	\N	978202981	3	318	0.9
2025-06-28 18:04:57.928+00	193	\N	1126982881	3	333	0.9
2025-06-28 18:24:16.217+00	193	\N	978202981	3	352	0.9
2025-06-30 16:04:05.934+00	193	\N	978202981	3	820	0.9
2025-06-30 16:05:05.312+00	193	\N	1126982881	1	823	0.9
2025-06-30 19:33:56.482+00	193	\N	1126982881	3	986	0.9
2025-06-30 19:36:03+00	193	\N	978202981	3	994	0.9
2025-06-30 19:36:10.492+00	193	\N	1126982881	3	998	0.9
2025-06-30 19:51:47.575+00	193	\N	1126982881	3	1025	0.9
2025-06-30 19:52:07.092+00	193	\N	978202981	3	1028	0.9
2025-06-30 20:47:00.366+00	193	\N	978202981	3	1092	0.9
2025-07-01 05:45:48.536+00	193	\N	1126982881	3	1492	0.9
2025-07-01 20:04:14.717+00	193	\N	1126982881	1	2121	0.9
2025-07-01 20:22:46.803+00	193	\N	1126982881	3	2153	0.9
2025-07-01 20:30:18.863+00	193	\N	1126982881	3	2163	0.9
2025-07-01 21:26:04.212+00	193	\N	1126982881	2	2213	0.9
2025-07-01 21:38:35.269+00	193	\N	1126982881	2	2228	0.9
2025-07-02 07:04:59.34+00	193	\N	978202981	3	2656	0.9
2025-07-02 07:05:06.049+00	193	\N	1126982881	3	2659	0.9
2025-07-02 07:05:06.444+00	193	\N	1041420528	3	2662	0.9
2025-07-02 09:18:36.825+00	193	\N	1126982881	3	2756	0.9
2025-07-02 09:23:28.883+00	193	\N	1126982881	2	2767	0.9
2025-07-02 09:28:29.938+00	193	\N	1126982881	3	2780	0.9
2025-07-02 09:30:22.964+00	193	\N	1126982881	3	2789	0.9
2025-07-02 09:40:58.097+00	193	\N	1126982881	2	2808	0.9
2025-07-02 09:43:12.12+00	193	\N	1126982881	1	2819	0.9
2025-07-02 09:48:25.153+00	193	\N	1126982881	1	2837	0.9
2025-07-02 09:50:08.172+00	193	\N	1126982881	2	2843	0.9
2025-07-02 09:55:46.199+00	193	\N	1126982881	2	2860	0.9
2025-07-02 10:02:43.249+00	193	\N	1126982881	3	2872	0.9
2025-07-02 10:14:10.341+00	193	\N	1126982881	1	2896	0.9
2025-07-02 10:35:26.442+00	193	\N	1126982881	1	2923	0.9
2025-07-02 10:42:34.489+00	193	\N	1126982881	1	2931	0.9
2025-07-02 11:42:11.894+00	193	\N	1126982881	1	2975	0.9
2025-07-02 11:43:39.905+00	193	\N	1126982881	3	2981	0.9
2025-07-02 11:45:40.922+00	193	\N	1126982881	2	2988	0.9
2025-07-02 11:47:04.936+00	193	\N	1126982881	3	2995	0.9
2025-07-02 11:57:22.981+00	193	\N	1126982881	2	3007	0.9
2025-07-02 12:19:16.069+00	193	\N	1126982881	3	3030	0.9
2025-07-02 13:24:56.377+00	193	\N	1126982881	2	3080	0.9
2025-07-02 13:54:25.551+00	193	\N	1126982881	3	3108	0.9
2025-07-02 14:00:26.586+00	193	\N	1126982881	3	3123	0.9
2025-07-02 14:02:41.606+00	193	\N	1126982881	1	3128	0.9
2025-07-02 15:37:44.295+00	193	\N	1126982881	3	3206	0.9
2025-07-02 15:41:25.338+00	193	\N	1126982881	3	3214	0.9
2025-07-02 15:45:51.375+00	193	\N	1126982881	3	3224	0.9
2025-07-02 15:48:09.393+00	193	\N	1126982881	2	3229	0.9
2025-07-02 15:52:35.44+00	193	\N	1126982881	3	3236	0.9
2025-07-02 15:54:41.462+00	193	\N	1126982881	3	3242	0.9
2025-07-02 16:00:02.492+00	193	\N	1126982881	3	3251	0.9
2025-07-02 16:08:42.599+00	193	\N	1126982881	3	3261	0.9
2025-07-02 16:09:51.609+00	193	\N	1126982881	3	3265	0.9
2025-07-02 16:12:57.628+00	193	\N	1126982881	3	3269	0.9
2025-07-02 16:23:31.661+00	193	\N	1126982881	3	3277	0.9
2025-07-02 16:46:07.783+00	193	\N	1126982881	3	3296	0.9
2025-07-02 16:57:55.819+00	193	\N	1126982881	3	3307	0.9
2025-07-02 17:00:45.834+00	193	\N	1126982881	3	3312	0.9
2025-07-02 17:24:03.941+00	193	\N	1126982881	3	3328	0.9
2025-07-02 17:25:29.944+00	193	\N	1126982881	3	3334	0.9
2025-07-02 19:26:19.629+00	193	\N	1126982881	3	3412	0.9
2025-07-02 22:38:04.702+00	193	\N	1126982881	3	3550	0.9
2025-07-02 23:18:35.936+00	193	\N	1126982881	3	3579	0.9
\.


--
-- Data for Name: _hyper_5_14_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_5_14_chunk ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
2025-07-03 15:53:05.373+00	192	\N	1126982881	1897240282	-56	8	4271	0.9
2025-07-03 15:53:05.373+00	192	\N	1126982881	1041420528	-86	4	4271	0.9
2025-07-03 15:53:42.057+00	192	\N	978202981	1897240282	-72	8	4274	0.9
2025-07-03 15:53:42.057+00	192	\N	978202981	1041420528	-76	4	4274	0.9
2025-07-03 15:53:45.191+00	192	\N	1041420528	978202981	-75	4	4278	0.9
2025-07-03 15:53:45.191+00	192	\N	1041420528	1126982881	-84	4	4278	0.9
2025-07-03 18:28:12.386+00	192	\N	1126982881	1897240282	-48	8	4387	0.9
2025-07-03 18:28:12.386+00	192	\N	1126982881	978202981	-81	4	4387	0.9
2025-07-03 18:30:47.397+00	192	\N	1126982881	1897240282	-55	8	4393	0.9
2025-07-03 18:30:47.397+00	192	\N	1126982881	1041420528	-78	4	4393	0.9
2025-07-03 18:30:47.397+00	192	\N	1126982881	978202981	-85	4	4393	0.9
2025-07-03 18:35:07.435+00	192	\N	1126982881	1897240282	-38	8	4402	0.9
2025-07-03 18:35:07.435+00	192	\N	1126982881	1041420528	-79	4	4402	0.9
2025-07-03 18:52:39.632+00	192	\N	1126982881	1897240282	-46	8	4421	0.9
2025-07-03 18:52:39.632+00	192	\N	1126982881	1041420528	-81	4	4421	0.9
2025-07-03 19:08:15.681+00	192	\N	1126982881	1897240282	-43	8	4433	0.9
2025-07-03 19:08:15.681+00	192	\N	1126982881	1041420528	-82	4	4433	0.9
2025-07-03 19:27:37.751+00	192	\N	1126982881	1897240282	-41	8	4448	0.9
2025-07-03 19:27:37.751+00	192	\N	1126982881	978202981	-90	4	4448	0.9
2025-07-03 19:33:04.774+00	192	\N	1126982881	1897240282	-45	8	4453	0.9
2025-07-03 19:33:04.774+00	192	\N	1126982881	1041420528	-76	4	4453	0.9
2025-07-03 19:35:54.792+00	192	\N	1126982881	1897240282	-46	8	4461	0.9
2025-07-03 19:35:54.792+00	192	\N	1126982881	1041420528	-75	4	4461	0.9
2025-07-03 20:34:40.063+00	192	\N	1126982881	1897240282	-46	8	4505	0.9
2025-07-03 20:34:40.063+00	192	\N	1126982881	1041420528	-83	4	4505	0.9
2025-07-03 20:34:40.063+00	192	\N	1126982881	978202981	-84	4	4505	0.9
2025-07-03 20:38:39.08+00	192	\N	1126982881	1897240282	-47	8	4513	0.9
2025-07-03 20:38:39.08+00	192	\N	1126982881	1041420528	-73	4	4513	0.9
2025-07-03 20:43:21.116+00	192	\N	1126982881	1897240282	-47	8	4519	0.9
2025-07-03 20:43:21.116+00	192	\N	1126982881	1041420528	-74	4	4519	0.9
2025-07-03 21:02:58.251+00	192	\N	1126982881	1897240282	-38	8	4537	0.9
2025-07-03 21:02:58.251+00	192	\N	1126982881	1041420528	-81	4	4537	0.9
2025-07-03 21:09:45.312+00	192	\N	1126982881	1897240282	-49	8	4545	0.9
2025-07-03 21:09:45.312+00	192	\N	1126982881	1041420528	-81	4	4545	0.9
2025-07-03 21:09:45.312+00	192	\N	1126982881	978202981	-88	4	4545	0.9
2025-07-03 21:10:58.328+00	192	\N	1126982881	1897240282	-35	8	4549	0.9
2025-07-03 21:10:58.328+00	192	\N	1126982881	978202981	-88	4	4549	0.9
2025-07-03 21:19:17.467+00	192	\N	1126982881	1897240282	-44	8	4562	0.9
2025-07-03 21:19:17.467+00	192	\N	1126982881	1041420528	-79	4	4562	0.9
2025-07-03 21:19:17.467+00	192	\N	1126982881	978202981	-89	4	4562	0.9
2025-07-03 21:20:19.468+00	192	\N	1126982881	1897240282	-39	8	4565	0.9
2025-07-03 21:20:19.468+00	192	\N	1126982881	1041420528	-86	4	4565	0.9
2025-07-03 21:20:19.468+00	192	\N	1126982881	978202981	-86	4	4565	0.9
2025-07-03 21:22:12.477+00	192	\N	1126982881	1897240282	-47	8	4571	0.9
2025-07-03 21:22:12.477+00	192	\N	1126982881	1041420528	-89	4	4571	0.9
2025-07-03 21:30:16.506+00	192	\N	1126982881	1897240282	-50	8	4578	0.9
2025-07-03 21:30:16.506+00	192	\N	1126982881	978202981	-86	4	4578	0.9
2025-07-03 21:30:16.506+00	192	\N	1126982881	1041420528	-90	4	4578	0.9
2025-07-03 21:36:38.529+00	192	\N	1126982881	1897240282	-47	8	4586	0.9
2025-07-03 21:36:38.529+00	192	\N	1126982881	978202981	-79	4	4586	0.9
2025-07-03 21:36:38.529+00	192	\N	1126982881	1041420528	-82	4	4586	0.9
2025-07-03 21:54:30.604+00	192	\N	1126982881	1897240282	-52	8	4603	0.9
2025-07-03 21:54:30.604+00	192	\N	1126982881	1041420528	-76	4	4603	0.9
2025-07-03 21:54:30.604+00	192	\N	1126982881	978202981	-80	4	4603	0.9
2025-07-03 21:55:31.602+00	192	\N	1126982881	1897240282	-49	8	4606	0.9
2025-07-03 21:55:31.602+00	192	\N	1126982881	1041420528	-74	4	4606	0.9
2025-07-03 21:55:31.602+00	192	\N	1126982881	978202981	-85	4	4606	0.9
2025-07-03 21:56:37.603+00	192	\N	1126982881	1897240282	-41	8	4610	0.9
2025-07-03 22:16:43.69+00	192	\N	1126982881	1897240282	-49	8	4625	0.9
2025-07-03 22:16:43.69+00	192	\N	1126982881	1041420528	-82	4	4625	0.9
2025-07-03 22:21:58.732+00	192	\N	1126982881	1897240282	-52	8	4636	0.9
2025-07-03 22:21:58.732+00	192	\N	1126982881	1041420528	-82	4	4636	0.9
2025-07-03 22:21:58.732+00	192	\N	1126982881	978202981	-86	4	4636	0.9
2025-07-03 22:23:53.741+00	192	\N	1126982881	1897240282	-52	8	4646	0.9
2025-07-03 22:23:53.741+00	192	\N	1126982881	1041420528	-84	4	4646	0.9
2025-07-03 22:29:21.779+00	192	\N	1126982881	1897240282	-64	8	4654	0.9
2025-07-03 22:29:21.779+00	192	\N	1126982881	1041420528	-86	4	4654	0.9
2025-07-03 22:29:21.779+00	192	\N	1126982881	978202981	-90	4	4654	0.9
2025-07-03 22:33:51.821+00	192	\N	1126982881	1897240282	-61	8	4665	0.9
2025-07-03 22:33:51.821+00	192	\N	1126982881	1041420528	-88	4	4665	0.9
2025-07-03 22:33:51.821+00	192	\N	1126982881	978202981	-90	4	4665	0.9
2025-07-03 22:36:32.823+00	192	\N	1126982881	1897240282	-44	8	4672	0.9
2025-07-03 22:36:32.823+00	192	\N	1126982881	1041420528	-80	4	4672	0.9
2025-07-03 22:54:59.904+00	192	\N	1126982881	1897240282	-52	8	4693	0.9
2025-07-03 22:54:59.904+00	192	\N	1126982881	978202981	-88	4	4693	0.9
2025-07-03 22:54:59.904+00	192	\N	1126982881	1041420528	-89	4	4693	0.9
2025-07-03 22:57:44.934+00	192	\N	1126982881	1897240282	-44	8	4697	0.9
2025-07-03 22:57:44.934+00	192	\N	1126982881	1041420528	-82	4	4697	0.9
2025-07-03 23:04:32.985+00	192	\N	1126982881	1897240282	-42	8	4704	0.9
2025-07-03 23:04:32.985+00	192	\N	1126982881	1041420528	-80	4	4704	0.9
2025-07-03 23:11:45.023+00	192	\N	1126982881	1897240282	-44	8	4711	0.9
2025-07-03 23:11:45.023+00	192	\N	1126982881	1041420528	-82	4	4711	0.9
2025-07-03 23:17:12.067+00	192	\N	1126982881	1897240282	-40	8	4720	0.9
2025-07-03 23:17:12.067+00	192	\N	1126982881	1041420528	-81	4	4720	0.9
2025-07-03 23:18:51.074+00	192	\N	1126982881	1897240282	-39	8	4725	0.9
2025-07-03 23:22:54.114+00	192	\N	1126982881	1897240282	-49	8	4737	0.9
2025-07-03 23:22:54.114+00	192	\N	1126982881	978202981	-85	4	4737	0.9
2025-07-03 23:22:54.114+00	192	\N	1126982881	1041420528	-92	4	4737	0.9
2025-07-03 23:24:11.142+00	192	\N	1126982881	1897240282	-57	8	4743	0.9
2025-07-03 23:24:11.142+00	192	\N	1126982881	1041420528	-79	4	4743	0.9
2025-07-03 23:24:11.142+00	192	\N	1126982881	978202981	-83	4	4743	0.9
2025-07-03 23:26:07.172+00	192	\N	1126982881	1897240282	-52	8	4751	0.9
2025-07-03 23:26:07.172+00	192	\N	1126982881	1041420528	-80	4	4751	0.9
2025-07-03 23:26:07.172+00	192	\N	1126982881	978202981	-84	4	4751	0.9
2025-07-03 23:34:54.237+00	192	\N	1126982881	1897240282	-41	8	4767	0.9
2025-07-03 23:34:54.237+00	192	\N	1126982881	1041420528	-83	4	4767	0.9
2025-07-03 23:39:07.265+00	192	\N	1126982881	1897240282	-56	8	4777	0.9
2025-07-03 23:39:07.265+00	192	\N	1126982881	1041420528	-82	4	4777	0.9
2025-07-03 23:43:20.29+00	192	\N	1126982881	1897240282	-56	8	4785	0.9
2025-07-03 23:43:20.29+00	192	\N	1126982881	1041420528	-83	4	4785	0.9
2025-07-03 23:49:55.328+00	192	\N	1126982881	1897240282	-38	8	4798	0.9
2025-07-03 23:49:55.328+00	192	\N	1126982881	1041420528	-84	4	4798	0.9
2025-07-03 23:53:08.347+00	192	\N	1126982881	1897240282	-38	8	4809	0.9
2025-07-03 23:53:08.347+00	192	\N	1126982881	1041420528	-78	4	4809	0.9
2025-07-04 05:27:22.249+00	192	\N	978202981	1897240282	-63	8	5038	0.9
2025-07-04 05:27:22.249+00	192	\N	978202981	1041420528	-89	4	5038	0.9
2025-07-04 09:52:19.43+00	192	\N	1041420528	1897240282	-69	8	5234	0.9
2025-07-04 09:52:19.43+00	192	\N	1041420528	1126982881	-79	4	5234	0.9
2025-07-04 09:52:19.43+00	192	\N	1041420528	978202981	-89	4	5234	0.9
2025-07-04 09:52:36.074+00	192	\N	978202981	1897240282	-62	8	5237	0.9
2025-07-04 09:52:36.074+00	192	\N	978202981	1126982881	-80	4	5237	0.9
2025-07-04 09:52:36.074+00	192	\N	978202981	1041420528	-90	4	5237	0.9
2025-07-04 09:58:20.687+00	192	\N	1126982881	1897240282	-52	8	5247	0.9
2025-07-04 09:58:20.687+00	192	\N	1126982881	1041420528	-68	4	5247	0.9
2025-07-04 09:58:20.687+00	192	\N	1126982881	978202981	-87	4	5247	0.9
2025-07-04 09:59:27.688+00	192	\N	1126982881	1897240282	-44	8	5252	0.9
2025-07-04 09:59:27.688+00	192	\N	1126982881	978202981	-73	4	5252	0.9
2025-07-04 09:59:27.688+00	192	\N	1126982881	1041420528	-86	4	5252	0.9
2025-07-04 10:03:26.704+00	192	\N	1126982881	1897240282	-41	8	5260	0.9
2025-07-04 10:03:26.704+00	192	\N	1126982881	978202981	-80	4	5260	0.9
2025-07-04 10:03:26.704+00	192	\N	1126982881	1041420528	-80	4	5260	0.9
2025-07-04 10:13:03.776+00	192	\N	1126982881	1897240282	-42	8	5282	0.9
2025-07-04 10:13:03.776+00	192	\N	1126982881	1041420528	-81	4	5282	0.9
2025-07-04 11:02:46.069+00	192	\N	1126982881	1897240282	-50	8	5333	0.9
2025-07-04 11:02:46.069+00	192	\N	1126982881	1041420528	-73	4	5333	0.9
2025-07-04 11:09:06.118+00	192	\N	1126982881	1897240282	-75	8	5346	0.9
2025-07-04 11:09:06.118+00	192	\N	1126982881	1041420528	-87	4	5346	0.9
2025-07-04 11:11:11.124+00	192	\N	1126982881	1897240282	-77	8	5352	0.9
2025-07-04 11:11:11.124+00	192	\N	1126982881	1041420528	-91	4	5352	0.9
2025-07-04 11:12:57.142+00	192	\N	1126982881	1897240282	-42	8	5362	0.9
2025-07-04 11:12:57.142+00	192	\N	1126982881	978202981	-77	4	5362	0.9
2025-07-04 11:12:57.142+00	192	\N	1126982881	1041420528	-91	4	5362	0.9
2025-07-04 11:14:06.158+00	192	\N	1126982881	1897240282	-41	8	5368	0.9
2025-07-04 11:14:06.158+00	192	\N	1126982881	978202981	-77	4	5368	0.9
2025-07-04 11:14:06.158+00	192	\N	1126982881	1041420528	-87	4	5368	0.9
2025-07-04 11:15:47.171+00	192	\N	1126982881	1897240282	-43	8	5374	0.9
2025-07-04 11:15:47.171+00	192	\N	1126982881	978202981	-76	4	5374	0.9
2025-07-04 11:15:47.171+00	192	\N	1126982881	1041420528	-82	4	5374	0.9
2025-07-04 11:18:20.212+00	192	\N	1126982881	1897240282	-36	8	5379	0.9
2025-07-04 11:18:20.212+00	192	\N	1126982881	978202981	-80	4	5379	0.9
2025-07-04 11:18:20.212+00	192	\N	1126982881	1041420528	-85	4	5379	0.9
2025-07-04 11:22:05.236+00	192	\N	1126982881	1897240282	-48	8	5386	0.9
2025-07-04 11:22:05.236+00	192	\N	1126982881	1041420528	-76	4	5386	0.9
2025-07-04 11:22:05.236+00	192	\N	1126982881	978202981	-88	4	5386	0.9
2025-07-04 13:22:09.774+00	192	\N	1126982881	1897240282	-42	8	5475	0.9
2025-07-04 13:22:09.774+00	192	\N	1126982881	978202981	-82	4	5475	0.9
2025-07-04 13:22:09.774+00	192	\N	1126982881	1041420528	-87	4	5475	0.9
2025-07-04 13:26:22.81+00	192	\N	1126982881	1897240282	-46	8	5487	0.9
2025-07-04 13:26:22.81+00	192	\N	1126982881	1041420528	-61	4	5487	0.9
2025-07-04 13:26:26.688+00	192	\N	1041420528	1897240282	-57	8	5490	0.9
2025-07-04 13:26:26.688+00	192	\N	1041420528	1126982881	-66	4	5490	0.9
2025-07-04 13:26:26.688+00	192	\N	1041420528	978202981	-82	4	5490	0.9
2025-07-04 13:43:04.925+00	192	\N	1126982881	1897240282	-36	8	5518	0.9
2025-07-04 13:43:04.925+00	192	\N	1126982881	1041420528	-54	4	5518	0.9
2025-07-04 13:43:04.925+00	192	\N	1126982881	978202981	-83	4	5518	0.9
2025-07-04 13:57:14.083+00	192	\N	1126982881	1897240282	-38	8	5539	0.9
2025-07-04 13:57:14.083+00	192	\N	1126982881	1041420528	-55	4	5539	0.9
2025-07-04 13:57:14.083+00	192	\N	1126982881	978202981	-79	4	5539	0.9
2025-07-04 13:58:45.095+00	192	\N	1126982881	1897240282	-36	8	5546	0.9
2025-07-04 13:58:45.095+00	192	\N	1126982881	1041420528	-55	4	5546	0.9
2025-07-04 13:58:45.095+00	192	\N	1126982881	978202981	-82	4	5546	0.9
2025-07-04 14:00:51.115+00	192	\N	1126982881	1897240282	-38	8	5553	0.9
2025-07-04 14:00:51.115+00	192	\N	1126982881	1041420528	-59	4	5553	0.9
2025-07-04 14:00:51.115+00	192	\N	1126982881	978202981	-81	4	5553	0.9
2025-07-04 14:02:36.121+00	192	\N	1126982881	1897240282	-27	8	5559	0.9
2025-07-04 14:02:36.121+00	192	\N	1126982881	1041420528	-58	4	5559	0.9
2025-07-04 14:02:36.121+00	192	\N	1126982881	978202981	-73	4	5559	0.9
2025-07-04 14:06:46.137+00	192	\N	1126982881	1897240282	-49	8	5569	0.9
2025-07-04 14:06:46.137+00	192	\N	1126982881	1041420528	-53	4	5569	0.9
2025-07-04 14:06:46.137+00	192	\N	1126982881	978202981	-82	4	5569	0.9
2025-07-04 14:08:12.15+00	192	\N	1126982881	1897240282	-44	8	5573	0.9
2025-07-04 14:08:12.15+00	192	\N	1126982881	1041420528	-58	4	5573	0.9
2025-07-04 14:40:00.264+00	192	\N	1126982881	1897240282	-40	8	5599	0.9
2025-07-04 14:40:00.264+00	192	\N	1126982881	1041420528	-57	4	5599	0.9
2025-07-04 14:40:00.264+00	192	\N	1126982881	978202981	-89	4	5599	0.9
2025-07-04 14:43:57.293+00	192	\N	1126982881	1897240282	-53	8	5610	0.9
2025-07-04 14:43:57.293+00	192	\N	1126982881	1041420528	-62	4	5610	0.9
2025-07-04 14:43:57.293+00	192	\N	1126982881	978202981	-87	4	5610	0.9
2025-07-04 14:49:46.322+00	192	\N	1126982881	1897240282	-34	8	5617	0.9
2025-07-04 14:49:46.322+00	192	\N	1126982881	1041420528	-50	4	5617	0.9
2025-07-04 14:49:46.322+00	192	\N	1126982881	978202981	-78	4	5617	0.9
2025-07-04 14:50:57.312+00	192	\N	1126982881	1897240282	-39	8	5621	0.9
2025-07-04 14:50:57.312+00	192	\N	1126982881	1041420528	-62	4	5621	0.9
2025-07-04 15:19:53.499+00	192	\N	1126982881	1897240282	-46	8	5666	0.9
2025-07-04 15:19:53.499+00	192	\N	1126982881	1041420528	-58	4	5666	0.9
2025-07-04 15:19:53.499+00	192	\N	1126982881	978202981	-87	4	5666	0.9
2025-07-04 15:21:41.519+00	192	\N	1126982881	1897240282	-41	8	5676	0.9
2025-07-04 15:21:41.519+00	192	\N	1126982881	1041420528	-54	4	5676	0.9
2025-07-04 15:21:41.519+00	192	\N	1126982881	978202981	-77	4	5676	0.9
2025-07-04 15:23:41.528+00	192	\N	1126982881	1897240282	-38	8	5684	0.9
2025-07-04 15:23:41.528+00	192	\N	1126982881	1041420528	-52	4	5684	0.9
2025-07-04 15:25:07.539+00	192	\N	1126982881	1897240282	-31	8	5692	0.9
2025-07-04 15:25:07.539+00	192	\N	1126982881	1041420528	-52	4	5692	0.9
2025-07-04 15:25:07.539+00	192	\N	1126982881	978202981	-81	4	5692	0.9
2025-07-04 15:26:17.227+00	192	\N	1041420528	1897240282	-26	8	5697	0.9
2025-07-04 15:26:17.227+00	192	\N	1041420528	1126982881	-29	4	5697	0.9
2025-07-04 15:26:17.227+00	192	\N	1041420528	978202981	-74	4	5697	0.9
2025-07-04 18:15:41.205+00	192	telegraf	1041420528	1126982881	-30	4	6089	1
2025-07-04 18:15:41.205+00	192	telegraf	1041420528	1897240282	-42	8	6089	1
2025-07-04 18:15:41.205+00	192	telegraf	1041420528	978202981	-81	4	6089	1
2025-07-04 18:15:46.77+00	192	telegraf	1126982881	1041420528	-30	4	6092	1
2025-07-04 18:15:46.77+00	192	telegraf	1126982881	1897240282	-50	8	6092	1
2025-07-04 18:15:46.77+00	192	telegraf	1126982881	978202981	-82	4	6092	1
2025-07-04 18:18:18.784+00	192	telegraf	1126982881	1041420528	-32	4	6103	1
2025-07-04 18:18:18.784+00	192	telegraf	1126982881	1897240282	-40	8	6103	1
2025-07-04 18:18:18.784+00	192	telegraf	1126982881	978202981	-78	4	6103	1
2025-07-04 18:18:19.231+00	192	telegraf	1041420528	1126982881	-29	4	6106	1
2025-07-04 18:18:19.231+00	192	telegraf	1041420528	1897240282	-38	8	6106	1
2025-07-04 18:18:19.231+00	192	telegraf	1041420528	978202981	-75	4	6106	1
2025-07-04 18:33:17.841+00	192	telegraf	1126982881	1041420528	-35	4	6120	1
2025-07-04 18:33:17.841+00	192	telegraf	1126982881	1897240282	-39	8	6120	1
2025-07-04 18:33:17.841+00	192	telegraf	1126982881	978202981	-79	4	6120	1
2025-07-04 19:39:22.215+00	192	telegraf	1126982881	1897240282	-47	8	6202	1
2025-07-04 19:39:22.215+00	192	telegraf	1126982881	1041420528	-49	4	6202	1
2025-07-04 19:39:22.215+00	192	telegraf	1126982881	978202981	-86	4	6202	1
2025-07-04 20:25:00.623+00	192	telegraf	1126982881	1041420528	-25	4	6294	1
2025-07-04 20:25:00.623+00	192	telegraf	1126982881	1897240282	-35	8	6294	1
2025-07-04 20:25:00.623+00	192	telegraf	1126982881	978202981	-55	4	6294	1
2025-07-04 20:25:09.42+00	192	telegraf	978202981	1897240282	-48	8	6297	1
2025-07-04 20:25:09.42+00	192	telegraf	978202981	1126982881	-56	4	6297	1
2025-07-04 20:25:09.867+00	192	telegraf	1041420528	1126982881	-24	4	6300	1
2025-07-04 20:25:09.867+00	192	telegraf	1041420528	1897240282	-34	8	6300	1
2025-07-04 20:25:09.867+00	192	telegraf	1041420528	978202981	-63	4	6300	1
2025-07-04 20:37:10.697+00	192	telegraf	1126982881	1041420528	-26	4	6324	1
2025-07-04 20:37:10.697+00	192	telegraf	1126982881	1897240282	-54	8	6324	1
2025-07-04 20:37:10.697+00	192	telegraf	1126982881	978202981	-59	4	6324	1
2025-07-04 20:44:06.763+00	192	telegraf	1126982881	1041420528	-23	4	6340	1
2025-07-04 20:44:06.763+00	192	telegraf	1126982881	1897240282	-40	8	6340	1
2025-07-04 20:44:06.763+00	192	telegraf	1126982881	978202981	-55	4	6340	1
2025-07-04 20:44:07.045+00	192	telegraf	1041420528	1126982881	-22	4	6343	1
2025-07-04 20:44:07.045+00	192	telegraf	1041420528	1897240282	-35	8	6343	1
2025-07-04 20:44:07.045+00	192	telegraf	1041420528	978202981	-58	4	6343	1
2025-07-04 22:04:31.213+00	192	telegraf	1126982881	1041420528	-23	4	6451	1
2025-07-04 22:04:31.213+00	192	telegraf	1126982881	1897240282	-38	8	6451	1
2025-07-04 22:04:31.213+00	192	telegraf	1126982881	978202981	-56	4	6451	1
2025-07-05 07:25:49.74+00	192	telegraf	978202981	1041420528	-19	4	6904	1
2025-07-05 07:25:49.74+00	192	telegraf	978202981	1897240282	-42	8	6904	1
2025-07-05 07:25:50.159+00	192	telegraf	1126982881	978202981	-25	4	6907	1
2025-07-05 07:25:50.159+00	192	telegraf	1126982881	1897240282	-36	8	6907	1
2025-07-05 07:25:50.159+00	192	telegraf	1126982881	1041420528	-39	4	6907	1
2025-07-05 07:25:52.106+00	192	telegraf	1041420528	978202981	-18	4	6910	1
2025-07-05 07:25:52.106+00	192	telegraf	1041420528	1126982881	-36	4	6910	1
2025-07-05 07:25:52.106+00	192	telegraf	1041420528	1897240282	-38	8	6910	1
2025-07-07 09:06:40.893+00	192	telegraf	840973111	1523842139	-16	4	118	1
2025-07-07 09:06:40.893+00	192	telegraf	840973111	1070166865	-33	8	118	1
2025-07-07 09:06:40.893+00	192	telegraf	840973111	527134251	-50	4	118	1
2025-07-07 09:06:40.893+00	192	telegraf	840973111	1222203606	-87	4	118	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	840973111	-15	4	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	1070166865	-41	8	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	527134251	-45	4	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	1222203606	-86	4	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	207892874	-89	4	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	46389462	-90	4	121	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	1070166865	-26	8	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	1523842139	-45	4	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	840973111	-50	4	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	487229944	-83	8	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	207892874	-87	4	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	46389462	-88	4	126	1
2025-07-07 09:08:03.429+00	192	telegraf	1041420528	1126982881	-30	4	5	1
2025-07-07 09:08:03.429+00	192	telegraf	1041420528	1897240282	-43	8	5	1
2025-07-07 09:06:05.403+00	192	telegraf	1041420528	978202981	-29	4	9	1
2025-07-07 09:06:05.403+00	192	telegraf	1041420528	1126982881	-31	4	9	1
2025-07-07 09:06:05.403+00	192	telegraf	1041420528	1897240282	-36	8	9	1
2025-07-07 09:06:05.403+00	192	telegraf	1041420528	1347381015	-87	8	9	1
2025-07-07 09:08:03.546+00	192	telegraf	978202981	1126982881	-19	4	18	1
2025-07-07 09:08:03.546+00	192	telegraf	978202981	1041420528	-30	4	18	1
2025-07-07 09:08:03.546+00	192	telegraf	978202981	1897240282	-43	8	18	1
2025-07-07 09:08:06.015+00	192	telegraf	1126982881	978202981	-18	4	21	1
2025-07-07 09:08:06.015+00	192	telegraf	1126982881	1041420528	-32	4	21	1
2025-07-07 09:08:06.015+00	192	telegraf	1126982881	1897240282	-56	8	21	1
2025-07-07 09:10:48.012+00	192	telegraf	527134251	1523842139	-23	4	133	1
2025-07-07 09:10:48.012+00	192	telegraf	527134251	1070166865	-39	8	133	1
2025-07-07 09:10:48.012+00	192	telegraf	527134251	487229944	-75	8	133	1
2025-07-07 09:10:48.012+00	192	telegraf	527134251	46389462	-85	4	133	1
2025-07-07 09:10:48.846+00	192	telegraf	840973111	527134251	-15	4	137	1
2025-07-07 09:10:48.846+00	192	telegraf	840973111	1070166865	-30	8	137	1
2025-07-07 09:10:48.846+00	192	telegraf	840973111	487229944	-83	8	137	1
2025-07-07 09:10:48.846+00	192	telegraf	840973111	207892874	-90	4	137	1
2025-07-07 09:10:48.827+00	192	telegraf	1523842139	527134251	-23	4	139	1
2025-07-07 09:10:48.827+00	192	telegraf	1523842139	1070166865	-34	8	139	1
2025-07-07 09:10:48.827+00	192	telegraf	1523842139	487229944	-79	8	139	1
2025-07-07 09:10:48.827+00	192	telegraf	1523842139	46389462	-90	4	139	1
2025-07-07 09:17:04.035+00	192	telegraf	1523842139	840973111	-15	4	164	1
2025-07-07 09:17:04.035+00	192	telegraf	1523842139	1070166865	-41	8	164	1
2025-07-07 09:17:04.035+00	192	telegraf	1523842139	487229944	-85	8	164	1
2025-07-07 09:17:04.035+00	192	telegraf	1523842139	207892874	-86	4	164	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	1523842139	-15	4	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	1070166865	-39	8	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	487229944	-78	8	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	207892874	-87	4	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	46389462	-88	4	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	1222203606	-90	4	167	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	1523842139	-18	4	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	840973111	-26	4	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	1070166865	-36	8	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	487229944	-80	8	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	1222203606	-85	4	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	46389462	-89	4	170	1
2025-07-07 09:18:06.087+00	192	telegraf	1126982881	978202981	-18	4	26	1
2025-07-07 09:18:06.087+00	192	telegraf	1126982881	1041420528	-32	4	26	1
2025-07-07 09:18:06.087+00	192	telegraf	1126982881	1897240282	-46	8	26	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	1070166865	-23	8	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	840973111	-23	4	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	527134251	-73	4	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	1222203606	-85	4	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	207892874	-86	4	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	487229944	-88	8	177	1
2025-07-07 09:19:13.104+00	192	telegraf	1126982881	978202981	-18	4	32	1
2025-07-07 09:19:13.104+00	192	telegraf	1126982881	1041420528	-32	4	32	1
2025-07-07 09:19:13.104+00	192	telegraf	1126982881	1897240282	-44	8	32	1
2025-07-07 09:19:13.104+00	192	telegraf	1126982881	305822513	-89	4	32	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	1070166865	-43	8	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	840973111	-56	4	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	487229944	-80	8	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	1222203606	-82	4	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	46389462	-83	4	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	207892874	-88	4	186	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	1070166865	-44	8	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	1523842139	-53	4	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	840973111	-75	4	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	487229944	-79	8	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	46389462	-84	4	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	207892874	-87	4	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	1222203606	-88	4	198	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	1070166865	-40	8	212	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	1523842139	-54	4	212	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	527134251	-76	4	212	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	207892874	-86	4	212	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	46389462	-91	4	212	1
2025-07-07 09:30:32.013+00	192	telegraf	1523842139	1070166865	-24	8	226	1
2025-07-07 09:30:32.013+00	192	telegraf	1523842139	527134251	-37	4	226	1
2025-07-07 09:30:32.013+00	192	telegraf	1523842139	840973111	-42	4	226	1
2025-07-07 09:30:32.013+00	192	telegraf	1523842139	46389462	-88	4	226	1
2025-07-07 09:31:07.056+00	192	telegraf	840973111	1070166865	-32	8	229	1
2025-07-07 09:31:07.056+00	192	telegraf	840973111	1523842139	-42	4	229	1
2025-07-07 09:31:07.056+00	192	telegraf	840973111	487229944	-83	8	229	1
2025-07-07 09:31:07.056+00	192	telegraf	840973111	1222203606	-90	4	229	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	840973111	-19	4	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	1070166865	-24	8	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	1523842139	-37	4	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	487229944	-77	8	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	1222203606	-82	4	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	46389462	-82	4	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	207892874	-85	4	232	1
2025-07-07 09:31:57.189+00	192	telegraf	1126982881	978202981	-18	4	42	1
2025-07-07 09:31:57.189+00	192	telegraf	1126982881	1041420528	-33	4	42	1
2025-07-07 09:31:57.189+00	192	telegraf	1126982881	1897240282	-46	8	42	1
2025-07-07 09:31:56.726+00	192	telegraf	1041420528	978202981	-28	4	45	1
2025-07-07 09:31:56.726+00	192	telegraf	1041420528	1897240282	-34	8	45	1
2025-07-07 09:32:27.721+00	192	telegraf	978202981	1126982881	-18	4	49	1
2025-07-07 09:32:27.721+00	192	telegraf	978202981	1041420528	-29	4	49	1
2025-07-07 09:32:27.721+00	192	telegraf	978202981	1897240282	-44	8	49	1
2025-07-07 09:33:22.198+00	192	telegraf	1126982881	978202981	-18	4	53	1
2025-07-07 09:33:22.198+00	192	telegraf	1126982881	1041420528	-31	4	53	1
2025-07-07 09:33:22.198+00	192	telegraf	1126982881	1897240282	-48	8	53	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	1070166865	-27	8	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	1523842139	-39	4	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	840973111	-68	4	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	487229944	-77	8	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	1222203606	-89	4	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	207892874	-89	4	242	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	1070166865	-63	8	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	487229944	-70	8	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	1523842139	-70	4	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	527134251	-73	4	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	207892874	-84	4	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	1222203606	-84	4	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	46389462	-86	4	245	1
2025-07-07 09:36:18.759+00	192	telegraf	1041420528	978202981	-29	4	58	1
2025-07-07 09:36:18.759+00	192	telegraf	1041420528	1126982881	-31	4	58	1
2025-07-07 09:36:18.759+00	192	telegraf	1041420528	1897240282	-34	8	58	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	840973111	-21	4	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	1523842139	-26	4	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	1070166865	-56	8	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	487229944	-72	8	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	207892874	-73	4	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	1222203606	-79	4	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	46389462	-85	4	256	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1228548482	-63	8	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1523842139	-65	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	641896457	-69	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	840973111	-69	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	517905260	-70	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1746858542	-70	8	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1407940150	-72	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1070166865	-73	8	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	23439212	-75	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	671686261	-76	4	9	1
2025-07-07 09:54:17.796+00	192	telegraf	1041420528	978202981	-29	4	74	1
2025-07-07 09:54:17.796+00	192	telegraf	1041420528	1126982881	-32	4	74	1
2025-07-07 09:54:17.796+00	192	telegraf	1041420528	1897240282	-37	8	74	1
2025-07-07 09:54:17.796+00	192	telegraf	1041420528	3839865	-89	4	74	1
2025-07-07 09:55:51.746+00	192	telegraf	978202981	1126982881	-17	4	82	1
2025-07-07 09:55:51.746+00	192	telegraf	978202981	1041420528	-29	4	82	1
2025-07-07 09:55:51.746+00	192	telegraf	978202981	1897240282	-48	8	82	1
2025-07-07 09:55:51.746+00	192	telegraf	978202981	3839865	-86	4	82	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1070166865	-59	8	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1228548482	-63	8	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	641896457	-67	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1746858542	-68	8	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1407940150	-74	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	974018563	-75	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1575827679	-77	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1225681541	-78	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	517905260	-78	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	2045592530	-78	4	30	1
2025-07-07 09:58:34.726+00	192	telegraf	978202981	1126982881	-17	4	87	1
2025-07-07 09:58:34.726+00	192	telegraf	978202981	1041420528	-30	4	87	1
2025-07-07 09:58:34.726+00	192	telegraf	978202981	1897240282	-48	8	87	1
2025-07-07 09:59:07.739+00	192	telegraf	1041420528	978202981	-29	4	90	1
2025-07-07 09:59:07.739+00	192	telegraf	1041420528	1126982881	-30	4	90	1
2025-07-07 09:59:07.739+00	192	telegraf	1041420528	1897240282	-35	8	90	1
2025-07-07 10:07:43.742+00	192	telegraf	978202981	1126982881	-18	4	99	1
2025-07-07 10:07:43.742+00	192	telegraf	978202981	1041420528	-29	4	99	1
2025-07-07 10:07:43.742+00	192	telegraf	978202981	1897240282	-46	8	99	1
2025-07-07 10:07:43.742+00	192	telegraf	978202981	305822513	-86	4	99	1
2025-07-07 10:07:58.172+00	192	telegraf	1126982881	978202981	-17	4	103	1
2025-07-07 10:07:58.172+00	192	telegraf	1126982881	1041420528	-32	4	103	1
2025-07-07 10:07:58.172+00	192	telegraf	1126982881	1897240282	-43	8	103	1
2025-07-07 10:07:57.771+00	192	telegraf	1041420528	978202981	-29	4	106	1
2025-07-07 10:07:57.771+00	192	telegraf	1041420528	1897240282	-33	8	106	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	1126982881	-17	4	119	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	1041420528	-28	4	119	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	1897240282	-45	8	119	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	3839865	-88	4	119	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	632461688	-89	4	119	1
2025-07-07 10:19:02.423+00	192	telegraf	1126982881	978202981	-18	4	122	1
2025-07-07 10:19:02.423+00	192	telegraf	1126982881	1041420528	-30	4	122	1
2025-07-07 10:19:02.423+00	192	telegraf	1126982881	1897240282	-39	8	122	1
2025-07-07 10:19:02.423+00	192	telegraf	1126982881	3839865	-89	4	122	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	978202981	-20	4	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	1041420528	-27	4	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	1897240282	-35	8	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	3839865	-83	4	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	632461688	-88	4	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	305822513	-91	4	6	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	978202981	-20	4	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	1126982881	-27	4	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	1897240282	-49	8	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	3839865	-85	4	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	632461688	-88	4	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	305822513	-89	4	9	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	978202981	-19	4	15	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	1041420528	-27	4	15	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	1897240282	-35	8	15	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	3839865	-84	4	15	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	305822513	-85	4	15	1
2025-07-07 10:57:29.193+00	192	telegraf	978202981	1126982881	-19	4	19	1
2025-07-07 10:57:29.193+00	192	telegraf	978202981	1041420528	-22	4	19	1
2025-07-07 10:57:29.193+00	192	telegraf	978202981	1897240282	-46	8	19	1
2025-07-07 10:57:29.193+00	192	telegraf	978202981	632461688	-84	4	19	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	978202981	-20	4	22	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	1126982881	-28	4	22	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	1897240282	-49	8	22	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	3839865	-79	4	22	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	632461688	-85	4	22	1
2025-07-07 11:05:47.302+00	192	telegraf	978202981	1126982881	-18	4	33	1
2025-07-07 11:05:47.302+00	192	telegraf	978202981	1041420528	-21	4	33	1
2025-07-07 11:05:47.302+00	192	telegraf	978202981	1897240282	-45	8	33	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	978202981	-19	4	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	1126982881	-26	4	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	1897240282	-46	8	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	3839865	-78	4	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	632461688	-82	4	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	305822513	-91	4	37	1
2025-07-07 11:09:13.31+00	192	telegraf	978202981	1126982881	-20	4	46	1
2025-07-07 11:09:13.31+00	192	telegraf	978202981	1041420528	-22	4	46	1
2025-07-07 11:09:13.31+00	192	telegraf	978202981	1897240282	-38	8	46	1
2025-07-07 11:09:13.31+00	192	telegraf	978202981	632461688	-82	4	46	1
2025-07-07 11:10:47.797+00	192	telegraf	1126982881	978202981	-19	4	52	1
2025-07-07 11:10:47.797+00	192	telegraf	1126982881	1897240282	-39	8	52	1
2025-07-07 11:10:47.797+00	192	telegraf	1126982881	3839865	-81	4	52	1
2025-07-07 11:10:47.797+00	192	telegraf	1126982881	305822513	-85	4	52	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	978202981	-21	4	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	1126982881	-25	4	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	1897240282	-50	8	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	3839865	-80	4	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	632461688	-81	4	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	305822513	-87	4	56	1
2025-07-07 11:33:10.361+00	192	telegraf	1041420528	978202981	-21	4	78	1
2025-07-07 11:33:10.361+00	192	telegraf	1041420528	1126982881	-25	4	78	1
2025-07-07 11:33:10.361+00	192	telegraf	1041420528	1897240282	-55	8	78	1
2025-07-07 11:33:10.361+00	192	telegraf	1041420528	305822513	-82	4	78	1
2025-07-07 11:39:32.442+00	192	telegraf	978202981	1126982881	-19	4	83	1
2025-07-07 11:39:32.442+00	192	telegraf	978202981	1041420528	-20	4	83	1
2025-07-07 11:39:32.442+00	192	telegraf	978202981	1897240282	-46	8	83	1
2025-07-07 11:48:11.466+00	192	telegraf	978202981	1126982881	-19	4	102	1
2025-07-07 11:48:11.466+00	192	telegraf	978202981	1041420528	-23	4	102	1
2025-07-07 11:48:11.466+00	192	telegraf	978202981	1897240282	-58	8	102	1
2025-07-07 11:51:41.993+00	192	telegraf	1126982881	978202981	-18	4	108	1
2025-07-07 11:51:41.993+00	192	telegraf	1126982881	1041420528	-27	4	108	1
2025-07-07 11:51:41.993+00	192	telegraf	1126982881	1897240282	-39	8	108	1
2025-07-07 11:51:41.993+00	192	telegraf	1126982881	3839865	-87	4	108	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	978202981	-21	4	133	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	1041420528	-25	4	133	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	1897240282	-38	8	133	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	305822513	-85	4	133	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	3839865	-88	4	133	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	978202981	-21	4	137	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	1041420528	-26	4	137	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	1897240282	-39	8	137	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	3839865	-87	4	137	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	305822513	-88	4	137	1
2025-07-07 12:13:47.075+00	192	telegraf	1126982881	978202981	-20	4	151	1
2025-07-07 12:13:47.075+00	192	telegraf	1126982881	1041420528	-25	4	151	1
2025-07-07 12:13:47.075+00	192	telegraf	1126982881	1897240282	-39	8	151	1
2025-07-07 12:13:47.075+00	192	telegraf	1126982881	305822513	-87	4	151	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	978202981	-18	4	158	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	1041420528	-27	4	158	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	1897240282	-46	8	158	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	3839865	-83	4	158	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	305822513	-85	4	158	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	3839865	-18	4	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	305822513	-24	4	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	1126982881	-84	4	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	1897240282	-84	8	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	1041420528	-85	4	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	978202981	-87	4	187	1
2025-07-07 12:26:22.395+00	192	telegraf	3839865	632461688	-18	4	188	1
2025-07-07 12:26:22.395+00	192	telegraf	3839865	305822513	-18	4	188	1
2025-07-07 12:26:22.395+00	192	telegraf	3839865	1126982881	-85	4	188	1
2025-07-07 12:26:22.395+00	192	telegraf	3839865	1897240282	-87	8	188	1
2025-07-07 12:26:32.192+00	192	telegraf	1126982881	978202981	-18	4	191	1
2025-07-07 12:26:32.192+00	192	telegraf	1126982881	1041420528	-27	4	191	1
2025-07-07 12:26:32.192+00	192	telegraf	1126982881	1897240282	-40	8	191	1
2025-07-07 12:26:32.192+00	192	telegraf	1126982881	632461688	-89	4	191	1
2025-07-07 12:40:18.699+00	192	telegraf	1041420528	978202981	-22	4	216	1
2025-07-07 12:40:18.699+00	192	telegraf	1041420528	1126982881	-24	4	216	1
2025-07-07 12:40:18.699+00	192	telegraf	1041420528	1897240282	-41	8	216	1
2025-07-07 12:40:18.699+00	192	telegraf	1041420528	305822513	-87	4	216	1
2025-07-07 12:46:26.483+00	192	telegraf	305822513	632461688	-25	4	230	1
2025-07-07 12:46:26.483+00	192	telegraf	305822513	1897240282	-85	8	230	1
2025-07-07 12:46:26.483+00	192	telegraf	305822513	978202981	-87	4	230	1
2025-07-07 12:46:26.483+00	192	telegraf	305822513	1126982881	-88	4	230	1
2025-07-07 12:46:26.507+00	192	telegraf	3839865	632461688	-18	4	233	1
2025-07-07 12:46:26.507+00	192	telegraf	3839865	305822513	-19	4	233	1
2025-07-07 12:46:26.507+00	192	telegraf	3839865	1897240282	-85	8	233	1
2025-07-07 12:57:09.754+00	192	telegraf	1041420528	978202981	-21	4	255	1
2025-07-07 12:57:09.754+00	192	telegraf	1041420528	1126982881	-22	4	255	1
2025-07-07 12:57:09.754+00	192	telegraf	1041420528	1897240282	-43	8	255	1
2025-07-07 13:01:06.294+00	192	telegraf	840973111	1523842139	-14	4	298	1
2025-07-07 13:01:06.294+00	192	telegraf	840973111	527134251	-15	4	298	1
2025-07-07 13:01:06.294+00	192	telegraf	840973111	791308911	-79	4	298	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	677224097	-25	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	333419537	-27	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	840973111	-76	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	1523842139	-81	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	3839865	-87	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	527134251	-87	4	311	1
2025-07-07 13:01:49.396+00	192	telegraf	527134251	840973111	-14	4	313	1
2025-07-07 13:01:49.396+00	192	telegraf	527134251	1523842139	-18	4	313	1
2025-07-07 13:01:49.396+00	192	telegraf	527134251	791308911	-82	4	313	1
2025-07-07 13:01:49.396+00	192	telegraf	527134251	333419537	-84	4	313	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	677224097	-25	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	333419537	-27	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	840973111	-78	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	3839865	-87	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	1523842139	-88	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	305822513	-90	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	632461688	-91	4	327	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	677224097	-21	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	791308911	-28	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	1523842139	-79	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	305822513	-83	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	840973111	-84	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	632461688	-84	4	337	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	333419537	-19	4	342	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	791308911	-25	4	342	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	527134251	-80	4	342	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	305822513	-85	4	342	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	632461688	-87	4	342	1
2025-07-07 13:03:53.294+00	192	telegraf	840973111	527134251	-15	4	345	1
2025-07-07 13:03:53.294+00	192	telegraf	840973111	1523842139	-15	4	345	1
2025-07-07 13:03:53.294+00	192	telegraf	840973111	791308911	-81	4	345	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	840973111	-15	4	348	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	1523842139	-18	4	348	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	677224097	-80	4	348	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	791308911	-83	4	348	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	333419537	-83	4	348	1
2025-07-07 13:04:06.261+00	192	telegraf	1523842139	840973111	-14	4	352	1
2025-07-07 13:04:06.261+00	192	telegraf	1523842139	527134251	-17	4	352	1
2025-07-07 13:04:06.261+00	192	telegraf	1523842139	333419537	-82	4	352	1
2025-07-07 13:04:06.261+00	192	telegraf	1523842139	791308911	-86	4	352	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	840973111	-15	4	360	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	1523842139	-18	4	360	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	677224097	-80	4	360	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	333419537	-81	4	360	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	791308911	-84	4	360	1
2025-07-07 13:05:52.765+00	192	telegraf	1041420528	978202981	-21	4	363	1
2025-07-07 13:05:52.765+00	192	telegraf	1041420528	1126982881	-22	4	363	1
2025-07-07 13:05:52.765+00	192	telegraf	1041420528	1897240282	-38	8	363	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	677224097	-24	4	373	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	333419537	-27	4	373	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	840973111	-76	4	373	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	1523842139	-81	4	373	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	632461688	-89	4	373	1
2025-07-07 13:09:21.784+00	192	telegraf	1041420528	978202981	-22	4	385	1
2025-07-07 13:09:21.784+00	192	telegraf	1041420528	1126982881	-23	4	385	1
2025-07-07 13:09:21.784+00	192	telegraf	1041420528	1897240282	-36	8	385	1
2025-07-07 13:09:21.784+00	192	telegraf	1041420528	305822513	-88	4	385	1
2025-07-07 13:09:54.433+00	192	telegraf	527134251	840973111	-15	4	392	1
2025-07-07 13:09:54.433+00	192	telegraf	527134251	1523842139	-17	4	392	1
2025-07-07 13:09:54.433+00	192	telegraf	527134251	677224097	-82	4	392	1
2025-07-07 13:09:54.433+00	192	telegraf	527134251	333419537	-84	4	392	1
2025-07-07 13:17:12.361+00	192	telegraf	840973111	1523842139	-15	4	424	1
2025-07-07 13:17:12.361+00	192	telegraf	840973111	791308911	-78	4	424	1
2025-07-07 13:17:12.361+00	192	telegraf	840973111	333419537	-81	4	424	1
2025-07-07 13:17:12.361+00	192	telegraf	840973111	677224097	-83	4	424	1
2025-07-07 13:17:12.292+00	192	telegraf	1523842139	333419537	-78	4	428	1
2025-07-07 13:17:12.292+00	192	telegraf	1523842139	791308911	-79	4	428	1
2025-07-07 13:17:12.292+00	192	telegraf	1523842139	677224097	-82	4	428	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	527134251	-15	4	441	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	1523842139	-15	4	441	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	791308911	-76	4	441	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	333419537	-87	4	441	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	677224097	-88	4	441	1
2025-07-07 13:19:16.307+00	192	telegraf	1523842139	527134251	-19	4	449	1
2025-07-07 13:19:16.307+00	192	telegraf	1523842139	791308911	-80	4	449	1
2025-07-07 13:19:16.307+00	192	telegraf	1523842139	333419537	-82	4	449	1
2025-07-07 13:19:16.307+00	192	telegraf	1523842139	677224097	-86	4	449	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	840973111	-15	4	452	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	1523842139	-18	4	452	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	677224097	-81	4	452	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	333419537	-87	4	452	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	791308911	-90	4	452	1
2025-07-07 13:21:41.981+00	192	telegraf	978202981	1041420528	-23	4	459	1
2025-07-07 13:21:41.981+00	192	telegraf	978202981	1126982881	-25	4	459	1
2025-07-07 13:21:41.981+00	192	telegraf	978202981	1897240282	-60	8	459	1
2025-07-07 13:21:41.981+00	192	telegraf	978202981	3839865	-87	4	459	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	840973111	-15	4	463	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	1523842139	-18	4	463	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	791308911	-78	4	463	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	677224097	-78	4	463	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	333419537	-81	4	463	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	3839865	-18	4	467	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	632461688	-23	4	467	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	1126982881	-78	4	467	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	1897240282	-83	8	467	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	333419537	-85	4	467	1
2025-07-07 13:22:38.279+00	192	telegraf	632461688	3839865	-17	4	472	1
2025-07-07 13:22:38.279+00	192	telegraf	632461688	1897240282	-89	8	472	1
2025-07-07 13:22:52.313+00	192	telegraf	1523842139	840973111	-14	4	493	1
2025-07-07 13:22:52.313+00	192	telegraf	1523842139	527134251	-18	4	493	1
2025-07-07 13:22:52.313+00	192	telegraf	1523842139	333419537	-80	4	493	1
2025-07-07 13:22:52.313+00	192	telegraf	1523842139	791308911	-84	4	493	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	632461688	-19	4	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	3839865	-24	4	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	1126982881	-77	4	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	1897240282	-78	8	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	1041420528	-87	4	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	791308911	-88	4	501	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	632461688	-20	4	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	3839865	-24	4	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	1126982881	-80	4	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	1897240282	-83	8	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	1041420528	-86	4	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	333419537	-90	4	523	1
2025-07-07 13:33:14.711+00	192	telegraf	3839865	632461688	-16	4	527	1
2025-07-07 13:33:14.711+00	192	telegraf	3839865	305822513	-24	4	527	1
2025-07-07 13:33:14.711+00	192	telegraf	3839865	791308911	-83	4	527	1
2025-07-07 13:33:14.711+00	192	telegraf	3839865	1897240282	-84	8	527	1
2025-07-07 13:28:27.392+00	192	telegraf	1523842139	527134251	-19	4	528	1
2025-07-07 13:28:27.392+00	192	telegraf	1523842139	791308911	-80	4	528	1
2025-07-07 13:28:27.392+00	192	telegraf	1523842139	333419537	-83	4	528	1
2025-07-07 13:28:27.392+00	192	telegraf	1523842139	677224097	-88	4	528	1
2025-07-07 13:39:46.758+00	192	telegraf	3839865	632461688	-16	4	563	1
2025-07-07 13:39:46.758+00	192	telegraf	3839865	305822513	-24	4	563	1
2025-07-07 13:39:46.758+00	192	telegraf	3839865	1897240282	-87	8	563	1
2025-07-07 13:39:46.758+00	192	telegraf	3839865	978202981	-89	4	563	1
2025-07-07 13:28:26.666+00	192	telegraf	527134251	840973111	-15	4	566	1
2025-07-07 13:28:26.666+00	192	telegraf	527134251	1523842139	-18	4	566	1
2025-07-07 13:28:26.666+00	192	telegraf	527134251	677224097	-83	4	566	1
2025-07-07 13:28:26.666+00	192	telegraf	527134251	333419537	-87	4	566	1
2025-07-07 13:31:48.398+00	192	telegraf	840973111	527134251	-15	4	569	1
2025-07-07 13:31:48.398+00	192	telegraf	840973111	1523842139	-15	4	569	1
2025-07-07 13:31:48.398+00	192	telegraf	840973111	791308911	-78	4	569	1
2025-07-07 13:31:48.398+00	192	telegraf	840973111	333419537	-87	4	569	1
2025-07-07 13:28:27.42+00	192	telegraf	840973111	527134251	-15	4	574	1
2025-07-07 13:28:27.42+00	192	telegraf	840973111	1523842139	-15	4	574	1
2025-07-07 13:28:27.42+00	192	telegraf	840973111	791308911	-80	4	574	1
2025-07-07 13:36:47.378+00	192	telegraf	1523842139	840973111	-14	4	583	1
2025-07-07 13:36:47.378+00	192	telegraf	1523842139	527134251	-18	4	583	1
2025-07-07 13:36:47.378+00	192	telegraf	1523842139	333419537	-86	4	583	1
2025-07-07 13:36:47.378+00	192	telegraf	1523842139	791308911	-87	4	583	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	677224097	-24	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	333419537	-27	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	840973111	-78	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	1523842139	-79	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	527134251	-79	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	632461688	-83	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	3839865	-85	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	305822513	-89	4	592	1
2025-07-07 13:37:59.417+00	192	telegraf	840973111	1523842139	-15	4	602	1
2025-07-07 13:37:59.417+00	192	telegraf	840973111	333419537	-77	4	602	1
2025-07-07 13:37:59.417+00	192	telegraf	840973111	791308911	-81	4	602	1
2025-07-07 13:37:59.417+00	192	telegraf	840973111	677224097	-84	4	602	1
2025-07-07 13:37:59.375+00	192	telegraf	1523842139	333419537	-80	4	607	1
2025-07-07 13:37:59.375+00	192	telegraf	1523842139	791308911	-81	4	607	1
2025-07-07 13:37:59.375+00	192	telegraf	1523842139	677224097	-83	4	607	1
2025-07-07 13:38:40.267+00	192	telegraf	677224097	333419537	-20	4	612	1
2025-07-07 13:38:40.267+00	192	telegraf	677224097	791308911	-25	4	612	1
2025-07-07 13:38:40.267+00	192	telegraf	677224097	527134251	-77	4	612	1
2025-07-07 13:38:40.267+00	192	telegraf	677224097	840973111	-79	4	612	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	632461688	-19	4	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	3839865	-24	4	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	1897240282	-77	8	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	1041420528	-83	4	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	978202981	-88	4	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	2048751136	-89	4	627	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	840973111	-21	4	629	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	1523842139	-33	4	629	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	677224097	-77	4	629	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	791308911	-78	4	629	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	333419537	-84	4	629	1
2025-07-07 13:42:13.631+00	192	telegraf	527134251	1523842139	-15	4	634	1
2025-07-07 13:42:13.631+00	192	telegraf	527134251	840973111	-19	4	634	1
2025-07-07 13:42:13.631+00	192	telegraf	527134251	677224097	-84	4	634	1
2025-07-07 13:42:13.631+00	192	telegraf	527134251	333419537	-85	4	634	1
2025-07-07 13:42:18.434+00	192	telegraf	840973111	1523842139	-16	4	640	1
2025-07-07 13:42:18.434+00	192	telegraf	840973111	791308911	-82	4	640	1
2025-07-07 13:42:18.434+00	192	telegraf	840973111	333419537	-84	4	640	1
2025-07-07 13:42:45.406+00	192	telegraf	1523842139	527134251	-15	4	645	1
2025-07-07 13:42:45.406+00	192	telegraf	1523842139	840973111	-15	4	645	1
2025-07-07 13:42:45.406+00	192	telegraf	1523842139	791308911	-84	4	645	1
2025-07-07 13:42:45.406+00	192	telegraf	1523842139	677224097	-87	4	645	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	1523842139	-15	4	657	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	840973111	-19	4	657	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	677224097	-79	4	657	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	791308911	-87	4	657	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	333419537	-88	4	657	1
2025-07-07 13:43:20.441+00	192	telegraf	840973111	1523842139	-15	4	660	1
2025-07-07 13:43:20.441+00	192	telegraf	840973111	527134251	-20	4	660	1
2025-07-07 13:43:20.441+00	192	telegraf	840973111	791308911	-89	4	660	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	1523842139	-15	4	673	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	840973111	-19	4	673	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	677224097	-80	4	673	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	333419537	-84	4	673	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	791308911	-88	4	673	1
2025-07-07 13:47:10.417+00	192	telegraf	1523842139	840973111	-15	4	677	1
2025-07-07 13:47:10.417+00	192	telegraf	1523842139	527134251	-15	4	677	1
2025-07-07 13:47:10.417+00	192	telegraf	1523842139	677224097	-84	4	677	1
2025-07-07 13:47:10.417+00	192	telegraf	1523842139	791308911	-89	4	677	1
2025-07-07 13:48:22.47+00	192	telegraf	840973111	1523842139	-15	4	687	1
2025-07-07 13:48:22.47+00	192	telegraf	840973111	527134251	-20	4	687	1
2025-07-07 13:48:22.47+00	192	telegraf	840973111	333419537	-82	4	687	1
2025-07-07 13:48:22.47+00	192	telegraf	840973111	791308911	-85	4	687	1
2025-07-07 13:48:23.427+00	192	telegraf	1523842139	840973111	-15	4	689	1
2025-07-07 13:48:23.427+00	192	telegraf	1523842139	527134251	-15	4	689	1
2025-07-07 13:48:23.427+00	192	telegraf	1523842139	791308911	-84	4	689	1
2025-07-07 13:48:23.427+00	192	telegraf	1523842139	677224097	-87	4	689	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	1523842139	-15	4	693	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	840973111	-18	4	693	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	677224097	-80	4	693	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	333419537	-82	4	693	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	791308911	-83	4	693	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	677224097	-25	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	333419537	-27	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	840973111	-82	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	632461688	-85	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	1523842139	-85	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	527134251	-85	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	3839865	-86	4	698	1
2025-07-07 13:49:14.234+00	192	telegraf	333419537	677224097	-22	4	704	1
2025-07-07 13:49:14.234+00	192	telegraf	333419537	791308911	-27	4	704	1
2025-07-07 13:49:14.234+00	192	telegraf	333419537	840973111	-81	4	704	1
2025-07-07 13:49:14.234+00	192	telegraf	333419537	527134251	-83	4	704	1
2025-07-07 13:50:58.489+00	192	telegraf	840973111	1523842139	-16	4	711	1
2025-07-07 13:50:58.489+00	192	telegraf	840973111	527134251	-19	4	711	1
2025-07-07 13:50:58.489+00	192	telegraf	840973111	677224097	-83	4	711	1
2025-07-07 13:50:58.489+00	192	telegraf	840973111	791308911	-84	4	711	1
2025-07-07 13:50:59.44+00	192	telegraf	1523842139	840973111	-15	4	714	1
2025-07-07 13:50:59.44+00	192	telegraf	1523842139	527134251	-15	4	714	1
2025-07-07 13:50:59.44+00	192	telegraf	1523842139	791308911	-84	4	714	1
2025-07-07 13:50:59.44+00	192	telegraf	1523842139	677224097	-86	4	714	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	1523842139	-15	4	718	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	840973111	-19	4	718	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	333419537	-80	4	718	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	791308911	-82	4	718	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	677224097	-82	4	718	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	840973111	-15	4	726	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	527134251	-15	4	726	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	791308911	-82	4	726	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	333419537	-87	4	726	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	677224097	-89	4	726	1
2025-07-07 13:54:26.451+00	192	telegraf	1523842139	527134251	-15	4	743	1
2025-07-07 13:54:26.451+00	192	telegraf	1523842139	677224097	-81	4	743	1
2025-07-07 13:54:26.451+00	192	telegraf	1523842139	791308911	-84	4	743	1
2025-07-07 13:54:26.497+00	192	telegraf	840973111	1523842139	-16	4	744	1
2025-07-07 13:54:26.497+00	192	telegraf	840973111	527134251	-19	4	744	1
2025-07-07 13:54:26.497+00	192	telegraf	840973111	791308911	-85	4	744	1
2025-07-07 13:54:26.497+00	192	telegraf	840973111	677224097	-88	4	744	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	1523842139	-15	4	751	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	840973111	-19	4	751	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	791308911	-79	4	751	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	677224097	-80	4	751	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	333419537	-83	4	751	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	1523842139	-15	4	762	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	840973111	-19	4	762	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	677224097	-79	4	762	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	791308911	-80	4	762	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	333419537	-81	4	762	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	1523842139	-15	4	779	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	840973111	-19	4	779	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	677224097	-80	4	779	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	791308911	-82	4	779	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	333419537	-83	4	779	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	1041420528	-22	4	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	1126982881	-26	4	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	1897240282	-45	8	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	632461688	-84	4	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	3839865	-86	4	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	305822513	-87	4	782	1
2025-07-07 13:59:05.51+00	192	telegraf	840973111	1523842139	-15	4	791	1
2025-07-07 13:59:05.51+00	192	telegraf	840973111	333419537	-81	4	791	1
2025-07-07 13:59:05.51+00	192	telegraf	840973111	791308911	-81	4	791	1
2025-07-07 13:59:04.495+00	192	telegraf	1523842139	840973111	-15	4	792	1
2025-07-07 13:59:04.495+00	192	telegraf	1523842139	527134251	-15	4	792	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	1523842139	-20	4	830	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	840973111	-24	4	830	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	333419537	-76	4	830	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	791308911	-80	4	830	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	677224097	-86	4	830	1
2025-07-07 14:08:35.554+00	192	telegraf	1523842139	840973111	-18	4	839	1
2025-07-07 14:08:35.554+00	192	telegraf	1523842139	527134251	-19	4	839	1
2025-07-07 14:08:35.554+00	192	telegraf	1523842139	333419537	-86	4	839	1
2025-07-07 14:08:35.554+00	192	telegraf	1523842139	677224097	-88	4	839	1
2025-07-07 14:11:21.319+00	192	telegraf	333419537	677224097	-20	4	858	1
2025-07-07 14:11:21.319+00	192	telegraf	333419537	791308911	-28	4	858	1
2025-07-07 14:11:21.319+00	192	telegraf	333419537	1523842139	-78	4	858	1
2025-07-07 14:11:21.319+00	192	telegraf	333419537	840973111	-80	4	858	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	1041420528	-23	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	1126982881	-26	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	1897240282	-46	8	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	632461688	-84	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	305822513	-85	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	974018563	-88	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	1575827679	-91	4	877	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	1523842139	-15	4	889	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	840973111	-20	4	889	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	677224097	-81	4	889	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	333419537	-83	4	889	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	791308911	-89	4	889	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	1575827679	-19	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	974018563	-30	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	1746858542	-78	8	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	720958279	-81	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	23439212	-85	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	517905260	-88	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	1072284024	-89	4	902	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	840973111	-15	4	920	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	527134251	-15	4	920	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	677224097	-78	4	920	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	791308911	-81	4	920	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	333419537	-82	4	920	1
2025-07-07 14:12:25.591+00	192	telegraf	840973111	1523842139	-16	4	921	1
2025-07-07 14:12:25.591+00	192	telegraf	840973111	791308911	-83	4	921	1
2025-07-07 14:12:25.591+00	192	telegraf	840973111	677224097	-85	4	921	1
2025-07-07 14:12:25.591+00	192	telegraf	840973111	333419537	-87	4	921	1
2025-07-07 14:14:57.545+00	192	telegraf	632461688	3839865	-15	4	934	1
2025-07-07 14:14:57.545+00	192	telegraf	632461688	305822513	-20	4	934	1
2025-07-07 14:14:57.545+00	192	telegraf	632461688	1897240282	-78	8	934	1
2025-07-07 14:14:57.545+00	192	telegraf	632461688	978202981	-84	4	934	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	632461688	-17	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	305822513	-25	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	1897240282	-79	8	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	677224097	-85	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	978202981	-85	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	333419537	-87	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	791308911	-88	4	935	1
2025-07-07 14:15:14.611+00	192	telegraf	840973111	1523842139	-21	4	947	1
2025-07-07 14:15:14.611+00	192	telegraf	840973111	791308911	-72	4	947	1
2025-07-07 14:15:14.611+00	192	telegraf	840973111	333419537	-77	4	947	1
2025-07-07 14:15:14.611+00	192	telegraf	840973111	677224097	-78	4	947	1
2025-07-07 14:15:44.797+00	192	telegraf	1126982881	1041420528	-23	4	951	1
2025-07-07 14:15:44.797+00	192	telegraf	1126982881	1897240282	-37	8	951	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	1523842139	-22	4	975	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	527134251	-32	4	975	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	333419537	-75	4	975	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	791308911	-83	4	975	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	677224097	-83	4	975	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	1523842139	-31	4	979	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	840973111	-32	4	979	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	333419537	-75	4	979	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	791308911	-78	4	979	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	677224097	-87	4	979	1
2025-07-07 14:19:01.614+00	192	telegraf	1523842139	840973111	-22	4	982	1
2025-07-07 14:19:01.614+00	192	telegraf	1523842139	333419537	-79	4	982	1
2025-07-07 14:19:01.614+00	192	telegraf	1523842139	677224097	-87	4	982	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	1041420528	-22	4	989	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	1126982881	-26	4	989	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	1897240282	-50	8	989	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	3839865	-84	4	989	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	305822513	-85	4	989	1
2025-07-07 14:20:21.807+00	192	telegraf	527134251	1523842139	-31	4	994	1
2025-07-07 14:20:21.807+00	192	telegraf	527134251	840973111	-33	4	994	1
2025-07-07 14:20:21.807+00	192	telegraf	527134251	677224097	-88	4	994	1
2025-07-07 14:20:21.807+00	192	telegraf	527134251	333419537	-91	4	994	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	1523842139	-28	4	995	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	527134251	-34	4	995	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	333419537	-79	4	995	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	677224097	-79	4	995	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	791308911	-85	4	995	1
2025-07-07 14:20:20.615+00	192	telegraf	1523842139	527134251	-31	4	998	1
2025-07-07 14:20:20.615+00	192	telegraf	1523842139	677224097	-80	4	998	1
2025-07-07 14:20:20.615+00	192	telegraf	1523842139	333419537	-85	4	998	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	333419537	-18	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	791308911	-22	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	840973111	-81	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	3839865	-85	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	527134251	-87	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	1523842139	-87	4	1007	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	632461688	-20	4	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	3839865	-27	4	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	1897240282	-77	8	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	978202981	-85	4	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	791308911	-86	4	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	1126982881	-90	4	1030	1
2025-07-07 14:28:04.621+00	192	telegraf	632461688	3839865	-15	4	1033	1
2025-07-07 14:28:04.621+00	192	telegraf	632461688	305822513	-20	4	1033	1
2025-07-07 14:28:04.621+00	192	telegraf	632461688	1897240282	-80	8	1033	1
2025-07-07 14:28:04.621+00	192	telegraf	632461688	978202981	-82	4	1033	1
2025-07-07 14:33:36.283+00	192	telegraf	1041420528	978202981	-22	4	1057	1
2025-07-07 14:33:36.283+00	192	telegraf	1041420528	1126982881	-22	4	1057	1
2025-07-07 14:33:36.283+00	192	telegraf	1041420528	1897240282	-36	8	1057	1
2025-07-07 14:36:12.547+00	192	telegraf	677224097	333419537	-18	4	1077	1
2025-07-07 14:36:12.547+00	192	telegraf	677224097	791308911	-23	4	1077	1
2025-07-07 14:36:12.547+00	192	telegraf	677224097	3839865	-89	4	1077	1
2025-07-07 14:38:31.3+00	192	telegraf	1041420528	978202981	-22	4	1083	1
2025-07-07 14:38:31.3+00	192	telegraf	1041420528	1126982881	-23	4	1083	1
2025-07-07 14:38:31.3+00	192	telegraf	1041420528	1897240282	-42	8	1083	1
2025-07-07 14:39:34.167+00	192	telegraf	791308911	305822513	-85	4	1091	1
2025-07-07 14:39:34.167+00	192	telegraf	791308911	3839865	-86	4	1091	1
2025-07-07 14:39:34.57+00	192	telegraf	677224097	333419537	-18	4	1096	1
2025-07-07 14:39:34.57+00	192	telegraf	677224097	791308911	-21	4	1096	1
2025-07-07 14:39:34.57+00	192	telegraf	677224097	3839865	-87	4	1096	1
2025-07-07 14:39:34.403+00	192	telegraf	333419537	791308911	-27	4	1097	1
2025-07-07 14:39:34.403+00	192	telegraf	333419537	3839865	-84	4	1097	1
2025-07-07 14:40:52.204+00	192	telegraf	305822513	3839865	-30	4	1103	1
2025-07-07 14:40:52.204+00	192	telegraf	305822513	1897240282	-71	8	1103	1
2025-07-07 14:40:52.204+00	192	telegraf	305822513	1126982881	-86	4	1103	1
2025-07-07 14:40:52.204+00	192	telegraf	305822513	791308911	-87	4	1103	1
2025-07-07 14:40:52.163+00	192	telegraf	3839865	791308911	-84	4	1106	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	3839865	-15	4	1110	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	305822513	-22	4	1110	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	1897240282	-73	8	1110	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	791308911	-82	4	1110	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	978202981	-85	4	1110	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	677224097	-21	4	1131	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	333419537	-26	4	1131	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	632461688	-84	4	1131	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	305822513	-85	4	1131	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	3839865	-87	4	1131	1
2025-07-07 14:43:58.586+00	192	telegraf	677224097	333419537	-18	4	1134	1
2025-07-07 14:43:58.586+00	192	telegraf	677224097	791308911	-22	4	1134	1
2025-07-07 14:43:58.586+00	192	telegraf	677224097	3839865	-88	4	1134	1
2025-07-07 14:43:58.586+00	192	telegraf	677224097	305822513	-89	4	1134	1
2025-07-07 14:47:30.707+00	192	telegraf	632461688	305822513	-26	4	1156	1
2025-07-07 14:47:30.707+00	192	telegraf	632461688	1897240282	-73	8	1156	1
2025-07-07 14:47:30.707+00	192	telegraf	632461688	1126982881	-80	4	1156	1
2025-07-07 14:47:30.707+00	192	telegraf	632461688	978202981	-83	4	1156	1
2025-07-07 14:46:29.596+00	192	telegraf	677224097	791308911	-17	4	1172	1
2025-07-07 14:46:29.596+00	192	telegraf	677224097	333419537	-22	4	1172	1
2025-07-07 14:46:29.596+00	192	telegraf	677224097	305822513	-82	4	1172	1
2025-07-07 14:46:29.596+00	192	telegraf	677224097	3839865	-84	4	1172	1
2025-07-07 14:46:42.5+00	192	telegraf	333419537	677224097	-24	4	1175	1
2025-07-07 14:46:42.5+00	192	telegraf	333419537	791308911	-31	4	1175	1
2025-07-07 14:46:42.5+00	192	telegraf	333419537	3839865	-86	4	1175	1
2025-07-07 14:50:21.168+00	192	telegraf	720958279	23439212	-26	4	1185	1
2025-07-07 14:50:21.168+00	192	telegraf	720958279	517905260	-32	4	1185	1
2025-07-07 14:50:21.168+00	192	telegraf	720958279	1925402088	-85	8	1185	1
2025-07-07 14:50:21.168+00	192	telegraf	720958279	3839865	-86	4	1185	1
2025-07-07 14:50:20.193+00	192	telegraf	23439212	720958279	-24	4	1188	1
2025-07-07 14:50:20.193+00	192	telegraf	23439212	517905260	-36	4	1188	1
2025-07-07 14:50:20.193+00	192	telegraf	23439212	1746858542	-85	8	1188	1
2025-07-07 14:50:20.193+00	192	telegraf	23439212	3839865	-87	4	1188	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	978202981	-16	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	1126982881	-26	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	1897240282	-34	8	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	677224097	-68	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	527134251	-69	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	1523842139	-71	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	333419537	-73	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	791308911	-76	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	840973111	-80	4	65	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	978202981	-24	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	1041420528	-26	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	1897240282	-36	8	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	1523842139	-68	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	840973111	-71	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	791308911	-77	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	527134251	-80	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	333419537	-86	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	677224097	-91	4	71	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	1041420528	-15	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	1126982881	-29	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	1897240282	-38	8	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	677224097	-70	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	840973111	-73	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	333419537	-74	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	791308911	-74	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	527134251	-76	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	1523842139	-83	4	141	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	978202981	-15	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	1897240282	-48	8	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	333419537	-74	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	527134251	-77	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	840973111	-78	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	791308911	-79	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	1523842139	-84	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	677224097	-88	4	144	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	1041420528	-29	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	978202981	-30	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	1897240282	-52	8	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	333419537	-73	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	791308911	-77	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	1523842139	-77	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	840973111	-83	4	147	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	791308911	-19	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	333419537	-23	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	1523842139	-49	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	527134251	-54	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	840973111	-57	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	1897240282	-67	8	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	978202981	-70	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	1126982881	-80	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	1041420528	-83	4	161	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	1041420528	-15	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	1126982881	-29	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	1897240282	-38	8	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	677224097	-69	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	333419537	-71	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	840973111	-71	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	527134251	-77	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	1523842139	-83	4	215	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	1041420528	-30	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	1897240282	-47	8	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	1523842139	-69	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	333419537	-74	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	527134251	-74	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	791308911	-80	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	677224097	-82	4	218	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	1041420528	-14	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	1126982881	-28	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	1897240282	-38	8	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	677224097	-70	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	791308911	-72	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	527134251	-74	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	1523842139	-78	4	252	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	978202981	-29	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	1041420528	-30	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	1897240282	-34	8	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	791308911	-72	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	333419537	-72	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	527134251	-72	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	1523842139	-74	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	840973111	-79	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	677224097	-82	4	255	1
2025-07-09 09:24:12.862+00	192	telegraf	978202981	1041420528	-15	4	9	1
2025-07-09 09:24:12.862+00	192	telegraf	978202981	1126982881	-16	4	9	1
2025-07-09 09:24:12.862+00	192	telegraf	978202981	1897240282	-42	8	9	1
2025-07-09 09:24:12.862+00	192	telegraf	978202981	1222203606	-88	4	9	1
2025-07-09 09:44:52.912+00	192	telegraf	1126982881	978202981	-14	4	39	1
2025-07-09 09:44:52.912+00	192	telegraf	1126982881	1897240282	-32	8	39	1
2025-07-09 09:44:52.912+00	192	telegraf	1126982881	1041420528	-34	4	39	1
2025-07-09 09:44:52.912+00	192	telegraf	1126982881	1222203606	-89	4	39	1
2025-07-09 09:48:55.884+00	192	telegraf	978202981	1041420528	-16	4	45	1
2025-07-09 09:48:55.884+00	192	telegraf	978202981	1897240282	-45	8	45	1
2025-07-09 09:48:55.884+00	192	telegraf	978202981	1222203606	-88	4	45	1
2025-07-09 10:11:53.97+00	192	telegraf	978202981	1041420528	-15	4	72	1
2025-07-09 10:11:53.97+00	192	telegraf	978202981	1126982881	-15	4	72	1
2025-07-09 10:11:53.97+00	192	telegraf	978202981	1897240282	-45	8	72	1
2025-07-09 10:15:28.126+00	192	telegraf	1041420528	978202981	-14	4	86	1
2025-07-09 10:15:28.126+00	192	telegraf	1041420528	1126982881	-32	4	86	1
2025-07-09 10:15:28.126+00	192	telegraf	1041420528	1897240282	-45	8	86	1
2025-07-09 10:15:28.126+00	192	telegraf	1041420528	1222203606	-85	4	86	1
2025-07-09 10:15:29.08+00	192	telegraf	1126982881	978202981	-15	4	89	1
2025-07-09 10:15:29.08+00	192	telegraf	1126982881	1897240282	-33	8	89	1
2025-07-09 10:15:29.08+00	192	telegraf	1126982881	1041420528	-34	4	89	1
2025-07-09 10:18:29.014+00	192	telegraf	978202981	1126982881	-15	4	94	1
2025-07-09 10:18:29.014+00	192	telegraf	978202981	1041420528	-15	4	94	1
2025-07-09 10:18:29.014+00	192	telegraf	978202981	1897240282	-43	8	94	1
2025-07-09 10:18:29.014+00	192	telegraf	978202981	1222203606	-86	4	94	1
2025-07-09 10:19:46.142+00	192	telegraf	1041420528	978202981	-15	4	101	1
2025-07-09 10:19:46.142+00	192	telegraf	1041420528	1126982881	-33	4	101	1
2025-07-09 10:19:46.142+00	192	telegraf	1041420528	1897240282	-45	8	101	1
2025-07-09 10:19:46.142+00	192	telegraf	1041420528	46389462	-89	4	101	1
2025-07-09 10:26:04.163+00	192	telegraf	1041420528	978202981	-16	4	110	1
2025-07-09 10:26:04.163+00	192	telegraf	1041420528	1126982881	-26	4	110	1
2025-07-09 10:26:04.163+00	192	telegraf	1041420528	1897240282	-35	8	110	1
2025-07-09 10:26:04.163+00	192	telegraf	1041420528	46389462	-83	4	110	1
2025-07-09 10:26:10.039+00	192	telegraf	978202981	1041420528	-16	4	114	1
2025-07-09 10:26:10.039+00	192	telegraf	978202981	1126982881	-28	4	114	1
2025-07-09 10:26:10.039+00	192	telegraf	978202981	1897240282	-37	8	114	1
2025-07-09 10:26:10.039+00	192	telegraf	978202981	46389462	-87	4	114	1
2025-07-09 10:26:43.124+00	192	telegraf	1126982881	1041420528	-27	4	117	1
2025-07-09 10:26:43.124+00	192	telegraf	1126982881	978202981	-29	4	117	1
2025-07-09 10:26:43.124+00	192	telegraf	1126982881	1897240282	-33	8	117	1
2025-07-09 10:26:43.124+00	192	telegraf	1126982881	207892874	-88	4	117	1
2025-07-09 10:27:53.177+00	192	telegraf	1041420528	978202981	-15	4	123	1
2025-07-09 10:27:53.177+00	192	telegraf	1041420528	1126982881	-26	4	123	1
2025-07-09 10:27:53.177+00	192	telegraf	1041420528	1897240282	-35	8	123	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	1041420528	-24	4	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	978202981	-25	4	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	1897240282	-44	8	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	46389462	-85	4	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	1222203606	-85	4	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	207892874	-86	4	196	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	1041420528	-21	4	203	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	1126982881	-24	4	203	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	1897240282	-68	8	203	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	207892874	-83	4	203	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	1222203606	-84	4	203	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	978202981	-25	4	206	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	1897240282	-46	8	206	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	46389462	-82	4	206	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	207892874	-88	4	206	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	1222203606	-92	4	206	1
2025-07-09 13:35:05.038+00	192	telegraf	978202981	1041420528	-19	4	563	1
2025-07-09 13:35:05.038+00	192	telegraf	978202981	1126982881	-21	4	563	1
2025-07-09 13:35:05.038+00	192	telegraf	978202981	1897240282	-38	8	563	1
2025-07-09 13:35:06.04+00	192	telegraf	1126982881	978202981	-20	4	566	1
2025-07-09 13:35:06.04+00	192	telegraf	1126982881	1041420528	-28	4	566	1
2025-07-09 13:35:06.04+00	192	telegraf	1126982881	1897240282	-42	8	566	1
2025-07-09 13:44:32.071+00	192	telegraf	1126982881	978202981	-19	4	583	1
2025-07-09 13:44:32.071+00	192	telegraf	1126982881	1041420528	-31	4	583	1
2025-07-09 13:44:32.071+00	192	telegraf	1126982881	1897240282	-38	8	583	1
2025-07-09 13:44:31.464+00	192	telegraf	1041420528	978202981	-17	4	584	1
2025-07-09 13:44:31.464+00	192	telegraf	1041420528	1897240282	-47	8	584	1
2025-07-09 13:44:31.464+00	192	telegraf	1041420528	671686261	-87	4	584	1
2025-07-09 13:51:03.095+00	192	telegraf	1126982881	978202981	-19	4	590	1
2025-07-09 13:51:03.095+00	192	telegraf	1126982881	1041420528	-28	4	590	1
2025-07-09 13:51:03.095+00	192	telegraf	1126982881	1897240282	-37	8	590	1
2025-07-09 13:56:18.367+00	192	telegraf	978202981	1126982881	-15	4	4	1
2025-07-09 13:56:18.367+00	192	telegraf	978202981	1041420528	-27	4	4	1
2025-07-09 13:56:18.367+00	192	telegraf	978202981	1897240282	-71	8	4	1
\.


--
-- Data for Name: _hyper_5_19_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_5_19_chunk ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
2025-07-10 07:26:06.267+00	192	telegraf	1041420528	1897240282	-61	8	22	1
2025-07-10 07:26:12.827+00	192	telegraf	978202981	1041420528	-50	4	26	1
2025-07-10 07:26:12.827+00	192	telegraf	978202981	1126982881	-51	4	26	1
2025-07-10 07:26:12.827+00	192	telegraf	978202981	1897240282	-59	8	26	1
2025-07-10 07:26:06.602+00	192	telegraf	1126982881	1041420528	-30	4	29	1
2025-07-10 07:26:06.602+00	192	telegraf	1126982881	978202981	-56	4	29	1
2025-07-10 07:26:06.602+00	192	telegraf	1126982881	1897240282	-65	8	29	1
2025-07-10 07:27:50.852+00	192	telegraf	978202981	1041420528	-14	4	40	1
2025-07-10 07:27:50.852+00	192	telegraf	978202981	1126982881	-27	4	40	1
2025-07-10 07:27:50.852+00	192	telegraf	978202981	1897240282	-55	8	40	1
2025-07-10 07:30:08.621+00	192	telegraf	1126982881	978202981	-28	4	62	1
2025-07-10 07:30:08.621+00	192	telegraf	1126982881	1041420528	-28	4	62	1
2025-07-10 07:30:08.621+00	192	telegraf	1126982881	1897240282	-68	8	62	1
2025-07-10 07:48:27.405+00	192	telegraf	1041420528	978202981	-14	4	77	1
2025-07-10 07:48:27.405+00	192	telegraf	1041420528	1126982881	-28	4	77	1
2025-07-10 07:48:27.405+00	192	telegraf	1041420528	1897240282	-69	8	77	1
2025-07-10 07:49:59.407+00	192	telegraf	1041420528	978202981	-14	4	81	1
2025-07-10 07:49:59.407+00	192	telegraf	1041420528	1126982881	-28	4	81	1
2025-07-10 07:49:59.407+00	192	telegraf	1041420528	1897240282	-69	8	81	1
2025-07-10 08:02:22.466+00	192	telegraf	1041420528	978202981	-15	4	96	1
2025-07-10 08:02:22.466+00	192	telegraf	1041420528	1126982881	-28	4	96	1
2025-07-10 08:02:22.466+00	192	telegraf	1041420528	1897240282	-72	8	96	1
2025-07-10 08:05:29.053+00	192	telegraf	978202981	1041420528	-16	4	101	1
2025-07-10 08:05:29.053+00	192	telegraf	978202981	1126982881	-27	4	101	1
2025-07-10 08:05:29.053+00	192	telegraf	978202981	1897240282	-53	8	101	1
2025-07-10 08:05:27.802+00	192	telegraf	1126982881	978202981	-26	4	104	1
2025-07-10 08:05:27.802+00	192	telegraf	1126982881	1041420528	-28	4	104	1
2025-07-10 08:05:27.802+00	192	telegraf	1126982881	1897240282	-65	8	104	1
2025-07-10 08:36:07.961+00	192	telegraf	1126982881	978202981	-27	4	126	1
2025-07-10 08:36:07.961+00	192	telegraf	1126982881	1041420528	-28	4	126	1
2025-07-10 08:36:07.961+00	192	telegraf	1126982881	1897240282	-62	8	126	1
2025-07-10 08:37:12.294+00	192	telegraf	978202981	1126982881	-15	4	132	1
2025-07-10 08:37:12.294+00	192	telegraf	978202981	1041420528	-33	4	132	1
2025-07-10 08:37:12.294+00	192	telegraf	978202981	1897240282	-55	8	132	1
2025-07-10 08:37:11.608+00	192	telegraf	1041420528	978202981	-31	4	137	1
2025-07-10 08:37:11.608+00	192	telegraf	1041420528	1897240282	-67	8	137	1
2025-07-10 08:37:11.972+00	192	telegraf	1126982881	1041420528	-30	4	138	1
2025-07-10 08:37:11.972+00	192	telegraf	1126982881	1897240282	-65	8	138	1
2025-07-10 08:39:48.618+00	192	telegraf	1041420528	1126982881	-29	4	146	1
2025-07-10 08:39:48.618+00	192	telegraf	1041420528	978202981	-33	4	146	1
2025-07-10 08:39:48.618+00	192	telegraf	1041420528	1897240282	-69	8	146	1
2025-07-10 09:01:53.704+00	192	telegraf	1041420528	1126982881	-29	4	168	1
2025-07-10 09:01:53.704+00	192	telegraf	1041420528	978202981	-32	4	168	1
2025-07-10 09:01:53.704+00	192	telegraf	1041420528	1897240282	-66	8	168	1
2025-07-10 09:49:41.636+00	192	telegraf	978202981	1126982881	-16	4	201	1
2025-07-10 09:49:41.636+00	192	telegraf	978202981	1041420528	-35	4	201	1
2025-07-10 09:49:41.636+00	192	telegraf	978202981	1897240282	-57	8	201	1
2025-07-10 14:47:54.404+00	192	telegraf	1041420528	1126982881	-29	4	393	1
2025-07-10 14:47:54.404+00	192	telegraf	1041420528	978202981	-33	4	393	1
2025-07-10 14:47:54.404+00	192	telegraf	1041420528	1897240282	-62	8	393	1
2025-07-10 14:59:07.302+00	192	telegraf	978202981	1126982881	-15	4	401	1
2025-07-10 14:59:07.302+00	192	telegraf	978202981	1041420528	-30	4	401	1
2025-07-10 14:59:07.302+00	192	telegraf	978202981	1897240282	-55	8	401	1
2025-07-10 14:59:06.47+00	192	telegraf	1041420528	1126982881	-31	4	404	1
2025-07-10 14:59:06.47+00	192	telegraf	1041420528	1897240282	-60	8	404	1
2025-07-10 16:19:16.709+00	192	telegraf	1126982881	978202981	-15	4	462	1
2025-07-10 16:19:16.709+00	192	telegraf	1126982881	1041420528	-30	4	462	1
2025-07-10 16:19:16.709+00	192	telegraf	1126982881	1897240282	-58	8	462	1
2025-07-11 06:51:30.529+00	192	telegraf	1041420528	978202981	-28	4	3	1
2025-07-11 06:51:30.529+00	192	telegraf	1041420528	1126982881	-28	4	3	1
2025-07-11 06:51:30.529+00	192	telegraf	1041420528	1897240282	-59	8	3	1
2025-07-11 07:48:42.971+00	192	telegraf	1126982881	978202981	-15	4	45	1
2025-07-11 07:48:42.971+00	192	telegraf	1126982881	1041420528	-30	4	45	1
2025-07-11 07:48:42.971+00	192	telegraf	1126982881	1897240282	-62	8	45	1
2025-07-11 07:48:43.851+00	192	telegraf	1041420528	978202981	-28	4	48	1
2025-07-11 07:48:43.851+00	192	telegraf	1041420528	1126982881	-30	4	48	1
2025-07-11 07:48:43.851+00	192	telegraf	1041420528	1897240282	-59	8	48	1
2025-07-11 07:52:59.867+00	192	telegraf	1041420528	978202981	-28	4	54	1
2025-07-11 07:52:59.867+00	192	telegraf	1041420528	1126982881	-29	4	54	1
2025-07-11 07:52:59.867+00	192	telegraf	1041420528	1897240282	-62	8	54	1
2025-07-11 09:23:07.461+00	192	telegraf	978202981	1126982881	-17	4	121	1
2025-07-11 09:23:07.461+00	192	telegraf	978202981	1041420528	-30	4	121	1
2025-07-11 09:23:07.461+00	192	telegraf	978202981	1897240282	-62	8	121	1
2025-07-12 05:51:11.402+00	192	telegraf	1126982881	1041420528	-26	4	11	1
2025-07-12 05:51:11.402+00	192	telegraf	1126982881	978202981	-30	4	11	1
2025-07-12 05:51:11.402+00	192	telegraf	1126982881	1897240282	-40	8	11	1
2025-07-13 13:00:34.133+00	192	telegraf	1126982881	978202981	-36	4	1186	1
2025-07-13 13:00:34.133+00	192	telegraf	1126982881	1041420528	-37	4	1186	1
2025-07-13 13:00:34.133+00	192	telegraf	1126982881	1897240282	-37	8	1186	1
2025-07-13 13:06:35.697+00	192	telegraf	978202981	1041420528	-23	4	1192	1
2025-07-13 13:06:35.697+00	192	telegraf	978202981	1126982881	-35	4	1192	1
2025-07-13 13:06:35.697+00	192	telegraf	978202981	1897240282	-43	8	1192	1
2025-07-15 08:57:42.66+00	192	telegraf	1126982881	978202981	-35	4	2826	1
2025-07-15 08:57:42.66+00	192	telegraf	1126982881	1897240282	-36	8	2826	1
2025-07-15 08:57:42.66+00	192	telegraf	1126982881	1041420528	-39	4	2826	1
2025-07-16 01:18:02.004+00	192	telegraf	1523842139	527134251	-16	4	3	1
2025-07-16 01:18:02.004+00	192	telegraf	1523842139	840973111	-16	4	3	1
2025-07-16 01:18:02.004+00	192	telegraf	1523842139	1070166865	-59	8	3	1
\.


--
-- Data for Name: _hyper_5_28_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_5_28_chunk ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
2025-07-17 15:28:53.375+00	192	telegraf	840973111	1523842139	-15	4	101	1
2025-07-17 15:28:53.375+00	192	telegraf	840973111	527134251	-18	4	101	1
2025-07-17 15:30:27.417+00	192	telegraf	1523842139	840973111	-15	4	105	1
2025-07-17 15:30:27.417+00	192	telegraf	1523842139	527134251	-25	4	105	1
2025-07-17 15:30:27.417+00	192	telegraf	1523842139	1070166865	-62	8	105	1
2025-07-17 15:36:02.471+00	192	telegraf	1523842139	840973111	-17	4	114	1
2025-07-17 15:36:02.471+00	192	telegraf	1523842139	527134251	-29	4	114	1
2025-07-17 15:36:02.165+00	192	telegraf	527134251	840973111	-23	4	117	1
2025-07-17 15:36:02.165+00	192	telegraf	527134251	1523842139	-29	4	117	1
2025-07-17 15:36:04.426+00	192	telegraf	840973111	1523842139	-18	4	122	1
2025-07-17 15:36:04.426+00	192	telegraf	840973111	527134251	-23	4	122	1
2025-07-17 15:36:04.426+00	192	telegraf	840973111	1070166865	-46	8	122	1
2025-07-17 15:38:17.514+00	192	telegraf	1523842139	527134251	-17	4	135	1
2025-07-17 15:38:17.514+00	192	telegraf	1523842139	840973111	-18	4	135	1
2025-07-17 15:38:17.514+00	192	telegraf	1523842139	1070166865	-55	8	135	1
2025-07-17 15:38:18.169+00	192	telegraf	527134251	1523842139	-17	4	138	1
2025-07-17 15:38:18.169+00	192	telegraf	527134251	840973111	-18	4	138	1
2025-07-17 15:38:18.169+00	192	telegraf	527134251	1070166865	-56	8	138	1
2025-07-17 15:38:49.441+00	192	telegraf	840973111	527134251	-19	4	142	1
2025-07-17 15:38:49.441+00	192	telegraf	840973111	1523842139	-19	4	142	1
2025-07-17 15:47:43.609+00	192	telegraf	1523842139	840973111	-23	4	154	1
2025-07-17 15:47:43.609+00	192	telegraf	1523842139	527134251	-26	4	154	1
2025-07-17 15:47:43.609+00	192	telegraf	1523842139	1070166865	-49	8	154	1
2025-07-17 15:47:41.504+00	192	telegraf	840973111	1523842139	-24	4	157	1
2025-07-17 15:47:41.504+00	192	telegraf	840973111	527134251	-24	4	157	1
2025-07-17 15:47:41.504+00	192	telegraf	840973111	1070166865	-47	8	157	1
2025-07-17 15:52:29.638+00	192	telegraf	1523842139	840973111	-16	4	166	1
2025-07-17 15:52:29.638+00	192	telegraf	1523842139	527134251	-19	4	166	1
2025-07-17 15:52:29.638+00	192	telegraf	1523842139	1070166865	-53	8	166	1
2025-07-17 15:55:56.537+00	192	telegraf	840973111	1523842139	-16	4	177	1
2025-07-17 15:55:56.537+00	192	telegraf	840973111	527134251	-27	4	177	1
2025-07-17 15:57:47.261+00	192	telegraf	527134251	1523842139	-19	4	181	1
2025-07-17 15:57:47.261+00	192	telegraf	527134251	840973111	-26	4	181	1
2025-07-17 16:17:57.739+00	192	telegraf	1523842139	840973111	-16	4	203	1
2025-07-17 16:17:57.739+00	192	telegraf	1523842139	527134251	-20	4	203	1
2025-07-17 16:17:55.624+00	192	telegraf	840973111	1523842139	-16	4	206	1
2025-07-17 16:17:55.624+00	192	telegraf	840973111	527134251	-26	4	206	1
2025-07-17 18:08:39.706+00	192	telegraf	978202981	1041420528	-17	4	5072	1
2025-07-17 18:08:39.706+00	192	telegraf	978202981	1126982881	-40	4	5072	1
2025-07-17 18:08:39.706+00	192	telegraf	978202981	1897240282	-44	8	5072	1
2025-07-18 07:51:02.251+00	192	telegraf	1126982881	1041420528	-36	4	5607	1
2025-07-18 07:51:02.251+00	192	telegraf	1126982881	1897240282	-40	8	5607	1
2025-07-18 07:51:02.251+00	192	telegraf	1126982881	978202981	-41	4	5607	1
2025-07-18 07:51:02.156+00	192	telegraf	978202981	1041420528	-18	4	5610	1
2025-07-18 07:51:02.156+00	192	telegraf	978202981	1897240282	-46	8	5610	1
2025-07-19 16:38:31.07+00	192	telegraf	1041420528	1897240282	-49	8	7025	1
2025-07-19 16:38:31.07+00	192	telegraf	1041420528	978202981	-53	4	7025	1
2025-07-19 16:38:31.07+00	192	telegraf	1041420528	1126982881	-55	4	7025	1
2025-07-19 16:42:10.199+00	192	telegraf	1126982881	1041420528	-38	4	7037	1
2025-07-19 16:42:10.199+00	192	telegraf	1126982881	1897240282	-40	8	7037	1
2025-07-19 16:42:10.093+00	192	telegraf	1041420528	1897240282	-41	8	7042	1
2025-07-19 16:42:10.611+00	192	telegraf	978202981	1041420528	-23	4	7044	1
2025-07-19 16:42:10.611+00	192	telegraf	978202981	1126982881	-41	4	7044	1
2025-07-19 16:42:10.611+00	192	telegraf	978202981	1897240282	-45	8	7044	1
2025-07-19 16:47:55.221+00	192	telegraf	1126982881	1041420528	-37	4	7061	1
2025-07-19 16:47:55.221+00	192	telegraf	1126982881	978202981	-39	4	7061	1
2025-07-19 16:47:55.221+00	192	telegraf	1126982881	1897240282	-50	8	7061	1
2025-07-19 16:47:55.122+00	192	telegraf	1041420528	978202981	-15	4	7064	1
2025-07-19 16:47:55.122+00	192	telegraf	1041420528	1897240282	-47	8	7064	1
2025-07-19 18:33:20.444+00	192	telegraf	1041420528	1126982881	-15	4	7141	1
2025-07-19 18:33:20.444+00	192	telegraf	1041420528	978202981	-32	4	7141	1
2025-07-19 18:33:20.444+00	192	telegraf	1041420528	1897240282	-34	8	7141	1
2025-07-20 08:23:56.88+00	192	telegraf	1041420528	1126982881	-16	4	7657	1
2025-07-20 08:23:56.88+00	192	telegraf	1041420528	978202981	-31	4	7657	1
2025-07-20 08:23:56.88+00	192	telegraf	1041420528	1897240282	-34	8	7657	1
2025-07-20 08:49:01.333+00	192	telegraf	978202981	1041420528	-32	4	7680	1
2025-07-20 08:49:01.333+00	192	telegraf	978202981	1126982881	-41	4	7680	1
2025-07-20 08:49:01.333+00	192	telegraf	978202981	1897240282	-43	8	7680	1
2025-07-20 08:50:36.338+00	192	telegraf	978202981	1041420528	-36	4	7685	1
2025-07-20 08:50:36.338+00	192	telegraf	978202981	1126982881	-42	4	7685	1
2025-07-20 08:50:36.338+00	192	telegraf	978202981	1897240282	-49	8	7685	1
2025-07-18 22:28:09.642+00	192	telegraf	1523842139	527134251	-16	4	3	1
2025-07-18 22:28:09.642+00	192	telegraf	1523842139	840973111	-19	4	3	1
2025-07-18 22:28:09.443+00	192	telegraf	527134251	840973111	-15	4	9	1
2025-07-20 12:34:31.538+00	192	telegraf	840973111	1523842139	-17	4	20	1
2025-07-20 12:34:31.538+00	192	telegraf	840973111	527134251	-34	4	20	1
2025-07-20 12:34:31.538+00	192	telegraf	840973111	1070166865	-50	8	20	1
2025-07-20 12:34:31.879+00	192	telegraf	1523842139	840973111	-16	4	23	1
2025-07-20 12:34:31.879+00	192	telegraf	1523842139	527134251	-29	4	23	1
2025-07-20 12:34:31.879+00	192	telegraf	1523842139	1070166865	-56	8	23	1
2025-07-20 12:36:34.919+00	192	telegraf	1523842139	840973111	-16	4	38	1
2025-07-20 12:36:34.919+00	192	telegraf	1523842139	527134251	-31	4	38	1
2025-07-20 12:36:34.919+00	192	telegraf	1523842139	1070166865	-56	8	38	1
2025-07-20 12:38:25.583+00	192	telegraf	840973111	1523842139	-18	4	42	1
2025-07-20 12:38:25.583+00	192	telegraf	840973111	1070166865	-54	8	42	1
2025-07-20 12:38:24.935+00	192	telegraf	1523842139	840973111	-18	4	48	1
2025-07-20 12:38:24.935+00	192	telegraf	1523842139	527134251	-33	4	48	1
2025-07-20 12:38:24.935+00	192	telegraf	1523842139	1070166865	-52	8	48	1
2025-07-20 12:38:25.66+00	192	telegraf	527134251	840973111	-24	4	49	1
2025-07-20 12:38:25.66+00	192	telegraf	527134251	1523842139	-32	4	49	1
2025-07-20 12:38:25.66+00	192	telegraf	527134251	1070166865	-53	8	49	1
2025-07-20 12:39:33.584+00	192	telegraf	840973111	1523842139	-23	4	55	1
2025-07-20 12:39:33.584+00	192	telegraf	840973111	1070166865	-48	8	55	1
2025-07-20 12:39:32.928+00	192	telegraf	1523842139	840973111	-22	4	60	1
2025-07-20 12:39:32.928+00	192	telegraf	1523842139	527134251	-27	4	60	1
2025-07-20 12:39:32.928+00	192	telegraf	1523842139	1070166865	-40	8	60	1
2025-07-20 12:39:33.634+00	192	telegraf	527134251	840973111	-16	4	62	1
2025-07-20 12:39:33.634+00	192	telegraf	527134251	1523842139	-26	4	62	1
2025-07-20 12:39:33.634+00	192	telegraf	527134251	1070166865	-49	8	62	1
2025-07-20 12:40:52.58+00	192	telegraf	840973111	527134251	-16	4	71	1
2025-07-20 12:40:52.58+00	192	telegraf	840973111	1523842139	-22	4	71	1
2025-07-20 12:40:52.58+00	192	telegraf	840973111	1070166865	-54	8	71	1
2025-07-20 12:41:13.929+00	192	telegraf	1523842139	527134251	-32	4	76	1
2025-07-20 12:41:13.929+00	192	telegraf	1523842139	840973111	-32	4	76	1
2025-07-20 12:41:13.929+00	192	telegraf	1523842139	1070166865	-44	8	76	1
2025-07-20 12:42:25.599+00	192	telegraf	840973111	1523842139	-15	4	82	1
2025-07-20 12:42:25.599+00	192	telegraf	840973111	527134251	-18	4	82	1
2025-07-20 12:42:25.599+00	192	telegraf	840973111	1070166865	-53	8	82	1
2025-07-20 12:42:23.652+00	192	telegraf	527134251	840973111	-17	4	87	1
2025-07-20 12:42:23.652+00	192	telegraf	527134251	1523842139	-20	4	87	1
2025-07-20 12:42:23.652+00	192	telegraf	527134251	1070166865	-48	8	87	1
2025-07-20 12:42:22.939+00	192	telegraf	1523842139	840973111	-14	4	88	1
2025-07-20 12:42:22.939+00	192	telegraf	1523842139	527134251	-20	4	88	1
2025-07-20 12:42:22.939+00	192	telegraf	1523842139	1070166865	-43	8	88	1
2025-07-20 12:45:41.67+00	192	telegraf	527134251	840973111	-17	4	100	1
2025-07-20 12:45:41.67+00	192	telegraf	527134251	1523842139	-20	4	100	1
2025-07-20 12:45:41.67+00	192	telegraf	527134251	1070166865	-48	8	100	1
2025-07-20 12:49:38.683+00	192	telegraf	527134251	840973111	-34	4	112	1
2025-07-20 12:49:38.683+00	192	telegraf	527134251	1523842139	-38	4	112	1
2025-07-20 12:49:38.683+00	192	telegraf	527134251	1070166865	-52	8	112	1
2025-07-20 12:50:22.639+00	192	telegraf	840973111	1523842139	-25	4	116	1
2025-07-20 12:50:22.639+00	192	telegraf	840973111	527134251	-35	4	116	1
2025-07-20 12:50:22.639+00	192	telegraf	840973111	1070166865	-48	8	116	1
2025-07-20 12:50:22.003+00	192	telegraf	1523842139	840973111	-25	4	119	1
2025-07-20 12:50:22.003+00	192	telegraf	1523842139	527134251	-37	4	119	1
2025-07-20 12:50:22.003+00	192	telegraf	1523842139	1070166865	-39	8	119	1
2025-07-20 13:03:53.737+00	192	telegraf	527134251	840973111	-33	4	133	1
2025-07-20 13:03:53.737+00	192	telegraf	527134251	1523842139	-39	4	133	1
2025-07-20 13:03:53.737+00	192	telegraf	527134251	1070166865	-49	8	133	1
2025-07-20 13:06:26.735+00	192	telegraf	840973111	1523842139	-17	4	143	1
2025-07-20 13:06:26.735+00	192	telegraf	840973111	527134251	-20	4	143	1
2025-07-20 13:06:26.735+00	192	telegraf	840973111	1070166865	-55	8	143	1
2025-07-20 13:07:50.838+00	192	telegraf	527134251	840973111	-18	4	157	1
2025-07-20 13:07:50.838+00	192	telegraf	527134251	1523842139	-20	4	157	1
2025-07-20 13:07:50.838+00	192	telegraf	527134251	1070166865	-55	8	157	1
2025-07-20 13:09:06.791+00	192	telegraf	840973111	1523842139	-17	4	161	1
2025-07-20 13:09:06.791+00	192	telegraf	840973111	527134251	-19	4	161	1
2025-07-20 13:09:06.791+00	192	telegraf	840973111	1070166865	-57	8	161	1
2025-07-20 13:09:14.107+00	192	telegraf	1523842139	840973111	-16	4	164	1
2025-07-20 13:09:14.107+00	192	telegraf	1523842139	527134251	-21	4	164	1
2025-07-20 13:09:14.107+00	192	telegraf	1523842139	1070166865	-46	8	164	1
2025-07-20 13:10:42.819+00	192	telegraf	840973111	1523842139	-17	4	172	1
2025-07-20 13:10:42.819+00	192	telegraf	840973111	527134251	-19	4	172	1
2025-07-20 13:10:42.819+00	192	telegraf	840973111	1070166865	-52	8	172	1
2025-07-20 13:11:27.108+00	192	telegraf	1523842139	840973111	-15	4	176	1
2025-07-20 13:11:27.108+00	192	telegraf	1523842139	527134251	-21	4	176	1
2025-07-20 13:11:27.108+00	192	telegraf	1523842139	1070166865	-43	8	176	1
2025-07-20 13:13:45.86+00	192	telegraf	527134251	840973111	-18	4	185	1
2025-07-20 13:13:45.86+00	192	telegraf	527134251	1523842139	-20	4	185	1
2025-07-20 13:13:45.86+00	192	telegraf	527134251	1070166865	-68	8	185	1
2025-07-20 13:27:20.156+00	192	telegraf	1523842139	840973111	-15	4	200	1
2025-07-20 13:27:20.156+00	192	telegraf	1523842139	527134251	-21	4	200	1
2025-07-20 13:27:20.156+00	192	telegraf	1523842139	1070166865	-51	8	200	1
2025-07-20 13:28:14.902+00	192	telegraf	527134251	840973111	-17	4	203	1
2025-07-20 13:28:14.902+00	192	telegraf	527134251	1523842139	-20	4	203	1
2025-07-20 13:28:14.902+00	192	telegraf	527134251	1070166865	-51	8	203	1
2025-07-20 13:30:58.165+00	192	telegraf	1523842139	840973111	-15	4	207	1
2025-07-20 13:30:58.165+00	192	telegraf	1523842139	527134251	-21	4	207	1
2025-07-20 13:30:58.165+00	192	telegraf	1523842139	1070166865	-50	8	207	1
2025-07-20 13:33:23.183+00	192	telegraf	1523842139	840973111	-15	4	212	1
2025-07-20 13:33:23.183+00	192	telegraf	1523842139	527134251	-21	4	212	1
2025-07-20 13:33:23.183+00	192	telegraf	1523842139	1070166865	-51	8	212	1
2025-07-20 14:18:03.054+00	192	telegraf	840973111	527134251	-31	4	320	1
2025-07-20 14:18:03.054+00	192	telegraf	840973111	1523842139	-35	4	320	1
2025-07-20 14:18:03.054+00	192	telegraf	840973111	1070166865	-57	8	320	1
2025-07-20 14:18:04.424+00	192	telegraf	1523842139	527134251	-29	4	323	1
2025-07-20 14:18:04.424+00	192	telegraf	1523842139	840973111	-34	4	323	1
2025-07-20 14:18:04.424+00	192	telegraf	1523842139	1070166865	-59	8	323	1
2025-07-20 14:21:12.449+00	192	telegraf	1523842139	527134251	-34	4	335	1
2025-07-20 14:21:12.449+00	192	telegraf	1523842139	1070166865	-48	8	335	1
2025-07-20 14:21:12.449+00	192	telegraf	1523842139	840973111	-70	4	335	1
2025-07-20 14:21:12.284+00	192	telegraf	527134251	1070166865	-56	8	338	1
2025-07-20 14:21:12.284+00	192	telegraf	527134251	840973111	-66	4	338	1
2025-07-20 14:22:50.292+00	192	telegraf	527134251	1523842139	-24	4	346	1
2025-07-20 14:22:50.292+00	192	telegraf	527134251	840973111	-29	4	346	1
2025-07-20 14:22:50.292+00	192	telegraf	527134251	1070166865	-67	8	346	1
2025-07-20 14:24:37.469+00	192	telegraf	1523842139	840973111	-19	4	356	1
2025-07-20 14:24:37.469+00	192	telegraf	1523842139	527134251	-41	4	356	1
2025-07-20 14:24:37.469+00	192	telegraf	1523842139	1070166865	-55	8	356	1
2025-07-20 14:25:03.313+00	192	telegraf	527134251	840973111	-28	4	362	1
2025-07-20 14:25:03.313+00	192	telegraf	527134251	1523842139	-36	4	362	1
2025-07-20 14:25:03.313+00	192	telegraf	527134251	1070166865	-51	8	362	1
2025-07-20 14:28:31.13+00	192	telegraf	840973111	527134251	-26	4	375	1
2025-07-20 14:28:31.13+00	192	telegraf	840973111	1070166865	-57	8	375	1
2025-07-20 14:28:32.339+00	192	telegraf	527134251	840973111	-25	4	378	1
2025-07-20 14:28:32.339+00	192	telegraf	527134251	1523842139	-32	4	378	1
2025-07-20 14:28:32.339+00	192	telegraf	527134251	1070166865	-57	8	378	1
2025-07-20 14:28:31.493+00	192	telegraf	1523842139	840973111	-19	4	381	1
2025-07-20 14:28:31.493+00	192	telegraf	1523842139	527134251	-33	4	381	1
2025-07-20 14:28:31.493+00	192	telegraf	1523842139	1070166865	-54	8	381	1
2025-07-20 14:38:53.287+00	192	telegraf	840973111	527134251	-15	4	404	1
2025-07-20 14:38:53.287+00	192	telegraf	840973111	1523842139	-16	4	404	1
2025-07-20 14:38:53.287+00	192	telegraf	840973111	1070166865	-51	8	404	1
2025-07-20 14:38:52.536+00	192	telegraf	1523842139	840973111	-15	4	409	1
2025-07-20 14:38:52.536+00	192	telegraf	1523842139	527134251	-16	4	409	1
2025-07-20 14:38:52.536+00	192	telegraf	1523842139	1070166865	-58	8	409	1
2025-07-20 14:38:52.389+00	192	telegraf	527134251	840973111	-15	4	411	1
2025-07-20 14:38:52.389+00	192	telegraf	527134251	1070166865	-54	8	411	1
2025-07-20 14:40:30.545+00	192	telegraf	1523842139	840973111	-22	4	418	1
2025-07-20 14:40:30.545+00	192	telegraf	1523842139	527134251	-26	4	418	1
2025-07-20 14:40:30.545+00	192	telegraf	1523842139	1070166865	-57	8	418	1
2025-07-20 14:40:40.308+00	192	telegraf	840973111	1523842139	-23	4	421	1
2025-07-20 14:40:40.308+00	192	telegraf	840973111	1070166865	-64	8	421	1
2025-07-20 14:40:40.402+00	192	telegraf	527134251	840973111	-15	4	424	1
2025-07-20 14:40:40.402+00	192	telegraf	527134251	1523842139	-25	4	424	1
2025-07-20 14:40:40.402+00	192	telegraf	527134251	1070166865	-54	8	424	1
2025-07-20 14:53:31.656+00	192	telegraf	1523842139	527134251	-14	4	478	1
2025-07-20 14:53:31.656+00	192	telegraf	1523842139	1070166865	-38	8	478	1
2025-07-20 14:53:32.476+00	192	telegraf	527134251	1523842139	-14	4	479	1
2025-07-20 14:53:32.476+00	192	telegraf	527134251	840973111	-15	4	479	1
2025-07-20 14:53:32.476+00	192	telegraf	527134251	1070166865	-46	8	479	1
2025-07-20 15:09:27.107+00	192	telegraf	978202981	1041420528	-33	4	7925	1
2025-07-20 15:09:27.107+00	192	telegraf	978202981	1126982881	-39	4	7925	1
2025-07-20 15:09:27.107+00	192	telegraf	978202981	1897240282	-45	8	7925	1
2025-07-20 15:09:31.184+00	192	telegraf	840973111	527134251	-26	4	38	1
2025-07-20 15:09:31.184+00	192	telegraf	840973111	1070166865	-42	8	38	1
2025-07-20 15:09:31.184+00	192	telegraf	840973111	1523842139	-50	4	38	1
2025-07-20 15:14:22.446+00	192	telegraf	527134251	840973111	-29	4	81	1
2025-07-20 15:14:22.446+00	192	telegraf	527134251	1070166865	-39	8	81	1
2025-07-20 15:14:22.914+00	192	telegraf	1523842139	840973111	-27	4	84	1
2025-07-20 15:14:22.914+00	192	telegraf	1523842139	527134251	-33	4	84	1
2025-07-20 15:14:22.914+00	192	telegraf	1523842139	1070166865	-34	8	84	1
2025-07-20 15:16:00.392+00	192	telegraf	840973111	1070166865	-43	8	92	1
2025-07-20 15:16:00.464+00	192	telegraf	527134251	840973111	-23	4	95	1
2025-07-20 15:16:00.464+00	192	telegraf	527134251	1070166865	-46	8	95	1
2025-07-20 15:16:00.936+00	192	telegraf	1523842139	840973111	-27	4	98	1
2025-07-20 15:16:00.936+00	192	telegraf	1523842139	527134251	-30	4	98	1
2025-07-20 15:16:00.936+00	192	telegraf	1523842139	1070166865	-31	8	98	1
2025-07-20 15:17:47.954+00	192	telegraf	1523842139	1070166865	-31	8	108	1
2025-07-20 15:17:48.404+00	192	telegraf	840973111	1523842139	-27	4	111	1
2025-07-20 15:17:48.404+00	192	telegraf	840973111	1070166865	-41	8	111	1
2025-07-20 15:17:48.484+00	192	telegraf	527134251	840973111	-16	4	114	1
2025-07-20 15:17:48.484+00	192	telegraf	527134251	1523842139	-26	4	114	1
2025-07-20 15:17:48.484+00	192	telegraf	527134251	1070166865	-56	8	114	1
2025-07-20 15:19:39.426+00	192	telegraf	840973111	1523842139	-29	4	129	1
2025-07-20 15:19:39.426+00	192	telegraf	840973111	527134251	-30	4	129	1
2025-07-20 15:19:39.426+00	192	telegraf	840973111	1070166865	-48	8	129	1
2025-07-20 15:19:47.506+00	192	telegraf	527134251	1523842139	-18	4	133	1
2025-07-20 15:19:47.506+00	192	telegraf	527134251	840973111	-30	4	133	1
2025-07-20 15:19:47.506+00	192	telegraf	527134251	1070166865	-51	8	133	1
2025-07-20 15:23:16.586+00	192	telegraf	527134251	840973111	-20	4	162	1
2025-07-20 15:23:16.586+00	192	telegraf	527134251	1070166865	-36	8	162	1
2025-07-20 15:23:16.816+00	192	telegraf	1523842139	527134251	-25	4	165	1
2025-07-20 15:23:16.816+00	192	telegraf	1523842139	840973111	-30	4	165	1
2025-07-20 15:23:16.816+00	192	telegraf	1523842139	1070166865	-41	8	165	1
2025-07-20 15:24:35.586+00	192	telegraf	527134251	1070166865	-36	8	172	1
2025-07-20 15:24:35.838+00	192	telegraf	1523842139	527134251	-24	4	175	1
2025-07-20 15:24:35.838+00	192	telegraf	1523842139	1070166865	-43	8	175	1
2025-07-20 15:24:35.868+00	192	telegraf	840973111	527134251	-21	4	178	1
2025-07-20 15:24:35.868+00	192	telegraf	840973111	1523842139	-30	4	178	1
2025-07-20 15:24:35.868+00	192	telegraf	840973111	1070166865	-57	8	178	1
2025-07-20 15:25:48.842+00	192	telegraf	1523842139	527134251	-27	4	186	1
2025-07-20 15:25:48.842+00	192	telegraf	1523842139	1070166865	-37	8	186	1
2025-07-20 15:25:48.892+00	192	telegraf	840973111	527134251	-18	4	189	1
2025-07-20 15:25:48.892+00	192	telegraf	840973111	1523842139	-28	4	189	1
2025-07-20 15:25:48.892+00	192	telegraf	840973111	1070166865	-46	8	189	1
2025-07-20 15:25:49.604+00	192	telegraf	527134251	840973111	-18	4	192	1
2025-07-20 15:25:49.604+00	192	telegraf	527134251	1523842139	-26	4	192	1
2025-07-20 15:25:49.604+00	192	telegraf	527134251	1070166865	-48	8	192	1
2025-07-20 15:28:06.634+00	192	telegraf	527134251	1070166865	-42	8	202	1
2025-07-20 15:28:06.869+00	192	telegraf	1523842139	527134251	-15	4	205	1
2025-07-20 15:28:06.869+00	192	telegraf	1523842139	1070166865	-35	8	205	1
2025-07-20 15:28:06.905+00	192	telegraf	840973111	527134251	-15	4	208	1
2025-07-20 15:28:06.905+00	192	telegraf	840973111	1523842139	-28	4	208	1
2025-07-20 15:28:06.905+00	192	telegraf	840973111	1070166865	-49	8	208	1
2025-07-20 15:30:46.915+00	192	telegraf	1523842139	527134251	-15	4	217	1
2025-07-20 15:30:46.915+00	192	telegraf	1523842139	840973111	-27	4	217	1
2025-07-20 15:30:46.915+00	192	telegraf	1523842139	1070166865	-37	8	217	1
2025-07-20 15:30:47.645+00	192	telegraf	527134251	840973111	-14	4	220	1
2025-07-20 15:30:47.645+00	192	telegraf	527134251	1523842139	-15	4	220	1
2025-07-20 15:30:47.645+00	192	telegraf	527134251	1070166865	-46	8	220	1
2025-07-20 15:38:04.85+00	192	telegraf	1523842139	840973111	-16	4	239	1
2025-07-20 15:38:04.85+00	192	telegraf	1523842139	527134251	-28	4	239	1
2025-07-20 15:38:04.85+00	192	telegraf	1523842139	1070166865	-48	8	239	1
2025-07-20 15:39:42.865+00	192	telegraf	840973111	1523842139	-16	4	246	1
2025-07-20 15:39:42.865+00	192	telegraf	840973111	527134251	-23	4	246	1
2025-07-20 15:39:42.865+00	192	telegraf	840973111	1070166865	-40	8	246	1
2025-07-20 15:39:53.431+00	192	telegraf	527134251	840973111	-23	4	249	1
2025-07-20 15:39:53.431+00	192	telegraf	527134251	1523842139	-30	4	249	1
2025-07-20 15:39:53.431+00	192	telegraf	527134251	1070166865	-38	8	249	1
2025-07-20 15:39:53.842+00	192	telegraf	1523842139	840973111	-16	4	252	1
2025-07-20 15:39:53.842+00	192	telegraf	1523842139	527134251	-30	4	252	1
2025-07-20 15:39:53.842+00	192	telegraf	1523842139	1070166865	-37	8	252	1
2025-07-20 15:53:16.036+00	192	telegraf	840973111	527134251	-14	4	309	1
2025-07-20 15:53:16.036+00	192	telegraf	840973111	1523842139	-15	4	309	1
2025-07-20 15:53:16.036+00	192	telegraf	840973111	1070166865	-49	8	309	1
2025-07-20 15:54:36.049+00	192	telegraf	1523842139	527134251	-14	4	313	1
2025-07-20 15:54:36.049+00	192	telegraf	1523842139	840973111	-15	4	313	1
2025-07-20 15:54:36.049+00	192	telegraf	1523842139	1070166865	-49	8	313	1
2025-07-20 16:00:13.2+00	192	telegraf	1126982881	1041420528	-16	4	7966	1
2025-07-20 16:00:13.2+00	192	telegraf	1126982881	1897240282	-36	8	7966	1
2025-07-20 16:00:13.2+00	192	telegraf	1126982881	978202981	-37	4	7966	1
2025-07-20 16:02:42.096+00	192	telegraf	1523842139	840973111	-14	4	323	1
2025-07-20 16:02:42.096+00	192	telegraf	1523842139	527134251	-15	4	323	1
2025-07-20 16:02:42.096+00	192	telegraf	1523842139	1070166865	-56	8	323	1
2025-07-20 16:04:52.626+00	192	telegraf	527134251	840973111	-15	4	328	1
2025-07-20 16:04:52.626+00	192	telegraf	527134251	1523842139	-15	4	328	1
2025-07-20 16:04:52.626+00	192	telegraf	527134251	1070166865	-49	8	328	1
2025-07-20 16:14:45.746+00	192	telegraf	527134251	840973111	-30	4	11	1
2025-07-20 16:14:45.746+00	192	telegraf	527134251	1523842139	-34	4	11	1
2025-07-20 16:14:45.746+00	192	telegraf	527134251	1070166865	-47	8	11	1
2025-07-20 16:14:48.207+00	192	telegraf	1523842139	527134251	-35	4	15	1
2025-07-20 16:14:48.207+00	192	telegraf	1523842139	840973111	-40	4	15	1
2025-07-20 16:14:48.207+00	192	telegraf	1523842139	1070166865	-56	8	15	1
2025-07-20 17:04:35.692+00	192	telegraf	978202981	1041420528	-31	4	8010	1
2025-07-20 17:04:35.692+00	192	telegraf	978202981	1897240282	-44	8	8010	1
2025-07-20 17:04:35.692+00	192	telegraf	978202981	1126982881	-48	4	8010	1
2025-07-20 18:33:28.151+00	192	telegraf	978202981	1041420528	-30	4	8087	1
2025-07-20 18:33:28.151+00	192	telegraf	978202981	1126982881	-37	4	8087	1
2025-07-20 18:33:28.151+00	192	telegraf	978202981	1897240282	-50	8	8087	1
2025-07-20 19:46:29.428+00	192	telegraf	1126982881	1041420528	-55	4	8154	1
2025-07-20 19:46:29.428+00	192	telegraf	1126982881	1897240282	-55	8	8154	1
2025-07-20 19:46:29.428+00	192	telegraf	1126982881	978202981	-57	4	8154	1
2025-07-20 19:53:17.493+00	192	telegraf	1126982881	1041420528	-21	4	8170	1
2025-07-20 19:53:17.493+00	192	telegraf	1126982881	1897240282	-38	8	8170	1
2025-07-20 19:53:17.493+00	192	telegraf	1126982881	978202981	-43	4	8170	1
2025-07-20 19:53:19.499+00	192	telegraf	978202981	1041420528	-32	4	8175	1
2025-07-20 19:53:19.499+00	192	telegraf	978202981	1126982881	-44	4	8175	1
2025-07-20 19:53:19.499+00	192	telegraf	978202981	1897240282	-53	8	8175	1
2025-07-20 19:53:19.162+00	192	telegraf	1041420528	1126982881	-20	4	8176	1
2025-07-20 19:53:19.162+00	192	telegraf	1041420528	1897240282	-33	8	8176	1
2025-07-21 06:46:55.783+00	192	telegraf	978202981	1041420528	-18	4	394	1
2025-07-21 06:46:55.783+00	192	telegraf	978202981	1126982881	-31	4	394	1
2025-07-21 06:46:55.783+00	192	telegraf	978202981	1897240282	-44	8	394	1
2025-07-21 06:49:12.356+00	192	telegraf	1126982881	1041420528	-31	4	405	1
2025-07-21 06:49:12.356+00	192	telegraf	1126982881	978202981	-34	4	405	1
2025-07-21 06:49:12.356+00	192	telegraf	1126982881	1897240282	-58	8	405	1
2025-07-21 07:13:15.498+00	192	telegraf	1041420528	978202981	-17	4	439	1
2025-07-21 07:13:15.498+00	192	telegraf	1041420528	1126982881	-27	4	439	1
2025-07-21 07:13:15.498+00	192	telegraf	1041420528	1897240282	-38	8	439	1
2025-07-21 07:13:13.942+00	192	telegraf	978202981	1041420528	-18	4	440	1
2025-07-21 07:13:13.942+00	192	telegraf	978202981	1126982881	-34	4	440	1
2025-07-21 07:13:13.942+00	192	telegraf	978202981	1897240282	-44	8	440	1
2025-07-21 17:31:40.064+00	192	telegraf	527134251	840973111	-23	4	585	1
2025-07-21 17:31:40.064+00	192	telegraf	527134251	1070166865	-51	8	585	1
2025-07-21 17:31:40.127+00	192	telegraf	1523842139	527134251	-15	4	587	1
2025-07-21 17:31:40.127+00	192	telegraf	1523842139	840973111	-17	4	587	1
2025-07-21 17:31:40.127+00	192	telegraf	1523842139	1070166865	-45	8	587	1
2025-07-21 17:34:43.047+00	192	telegraf	527134251	1523842139	-15	4	594	1
2025-07-21 17:34:43.047+00	192	telegraf	527134251	840973111	-23	4	594	1
2025-07-21 17:34:43.047+00	192	telegraf	527134251	1070166865	-55	8	594	1
2025-07-21 17:34:55.125+00	192	telegraf	1523842139	527134251	-14	4	597	1
2025-07-21 17:34:55.125+00	192	telegraf	1523842139	840973111	-18	4	597	1
2025-07-21 17:34:55.125+00	192	telegraf	1523842139	1070166865	-44	8	597	1
2025-07-21 17:39:14.12+00	192	telegraf	1523842139	527134251	-15	4	604	1
2025-07-21 17:39:14.12+00	192	telegraf	1523842139	840973111	-18	4	604	1
2025-07-21 17:39:14.12+00	192	telegraf	1523842139	1070166865	-46	8	604	1
2025-07-21 17:39:21.027+00	192	telegraf	527134251	1523842139	-15	4	607	1
2025-07-21 17:39:21.027+00	192	telegraf	527134251	840973111	-23	4	607	1
2025-07-21 17:39:21.027+00	192	telegraf	527134251	1070166865	-55	8	607	1
2025-07-21 17:42:41.123+00	192	telegraf	1523842139	527134251	-15	4	614	1
2025-07-21 17:42:41.123+00	192	telegraf	1523842139	840973111	-18	4	614	1
2025-07-21 17:42:41.123+00	192	telegraf	1523842139	1070166865	-48	8	614	1
2025-07-21 17:42:42.023+00	192	telegraf	527134251	1523842139	-15	4	617	1
2025-07-21 17:42:42.023+00	192	telegraf	527134251	840973111	-22	4	617	1
2025-07-21 17:42:42.023+00	192	telegraf	527134251	1070166865	-45	8	617	1
2025-07-21 17:43:15.533+00	192	telegraf	840973111	1523842139	-18	4	620	1
2025-07-21 17:43:15.533+00	192	telegraf	840973111	527134251	-24	4	620	1
2025-07-21 17:43:15.533+00	192	telegraf	840973111	1070166865	-53	8	620	1
2025-07-21 17:50:40.553+00	192	telegraf	840973111	1523842139	-18	4	628	1
2025-07-21 17:50:40.553+00	192	telegraf	840973111	527134251	-24	4	628	1
2025-07-21 17:50:40.553+00	192	telegraf	840973111	1070166865	-54	8	628	1
2025-07-21 17:50:41.035+00	192	telegraf	527134251	1523842139	-14	4	631	1
2025-07-21 17:50:41.035+00	192	telegraf	527134251	840973111	-23	4	631	1
2025-07-21 17:50:41.035+00	192	telegraf	527134251	1070166865	-45	8	631	1
2025-07-21 17:50:41.131+00	192	telegraf	1523842139	527134251	-15	4	634	1
2025-07-21 17:50:41.131+00	192	telegraf	1523842139	840973111	-18	4	634	1
2025-07-21 17:50:41.131+00	192	telegraf	1523842139	1070166865	-63	8	634	1
2025-07-21 17:59:40.03+00	192	telegraf	527134251	1523842139	-15	4	644	1
2025-07-21 17:59:40.03+00	192	telegraf	527134251	840973111	-23	4	644	1
2025-07-21 17:59:40.03+00	192	telegraf	527134251	1070166865	-54	8	644	1
2025-07-21 18:06:22.21+00	192	telegraf	1523842139	527134251	-15	4	653	1
2025-07-21 18:06:22.21+00	192	telegraf	1523842139	840973111	-18	4	653	1
2025-07-21 18:06:22.21+00	192	telegraf	1523842139	1070166865	-50	8	653	1
2025-07-21 19:10:18.467+00	192	telegraf	527134251	1523842139	-15	4	736	1
2025-07-21 19:10:18.467+00	192	telegraf	527134251	840973111	-22	4	736	1
2025-07-21 19:10:18.467+00	192	telegraf	527134251	1070166865	-48	8	736	1
2025-07-21 19:13:23.443+00	192	telegraf	1523842139	527134251	-15	4	743	1
2025-07-21 19:13:23.443+00	192	telegraf	1523842139	840973111	-16	4	743	1
2025-07-21 19:13:23.443+00	192	telegraf	1523842139	1070166865	-44	8	743	1
2025-07-21 19:13:24.488+00	192	telegraf	527134251	1523842139	-15	4	746	1
2025-07-21 19:13:24.488+00	192	telegraf	527134251	1070166865	-50	8	746	1
2025-07-21 19:13:24.856+00	192	telegraf	840973111	1523842139	-17	4	749	1
2025-07-21 19:13:24.856+00	192	telegraf	840973111	527134251	-23	4	749	1
2025-07-21 19:13:24.856+00	192	telegraf	840973111	1070166865	-40	8	749	1
2025-07-21 19:16:26.869+00	192	telegraf	840973111	1523842139	-18	4	755	1
2025-07-21 19:16:26.869+00	192	telegraf	840973111	527134251	-24	4	755	1
2025-07-21 19:16:26.869+00	192	telegraf	840973111	1070166865	-42	8	755	1
2025-07-21 19:16:30.517+00	192	telegraf	527134251	1523842139	-16	4	758	1
2025-07-21 19:16:30.517+00	192	telegraf	527134251	840973111	-23	4	758	1
2025-07-21 19:16:30.517+00	192	telegraf	527134251	1070166865	-44	8	758	1
2025-07-21 19:17:32.454+00	192	telegraf	1523842139	527134251	-14	4	764	1
2025-07-21 19:17:32.454+00	192	telegraf	1523842139	840973111	-16	4	764	1
2025-07-21 19:17:32.454+00	192	telegraf	1523842139	1070166865	-42	8	764	1
2025-07-21 19:17:33.532+00	192	telegraf	527134251	1523842139	-15	4	767	1
2025-07-21 19:17:33.532+00	192	telegraf	527134251	840973111	-26	4	767	1
2025-07-21 19:17:33.532+00	192	telegraf	527134251	1070166865	-50	8	767	1
2025-07-21 19:17:35.872+00	192	telegraf	840973111	1523842139	-17	4	770	1
2025-07-21 19:17:35.872+00	192	telegraf	840973111	527134251	-28	4	770	1
2025-07-21 19:17:35.872+00	192	telegraf	840973111	1070166865	-44	8	770	1
2025-07-21 21:26:38.434+00	192	telegraf	978202981	1041420528	-17	4	130	1
2025-07-21 21:26:38.434+00	192	telegraf	978202981	1126982881	-23	4	130	1
2025-07-21 21:26:38.434+00	192	telegraf	978202981	1897240282	-47	8	130	1
2025-07-21 21:26:38.151+00	192	telegraf	1041420528	1126982881	-18	4	131	1
2025-07-21 21:26:38.151+00	192	telegraf	1041420528	1897240282	-45	8	131	1
2025-07-21 21:30:51.267+00	192	telegraf	1523842139	840973111	-23	4	1088	1
2025-07-21 21:30:51.267+00	192	telegraf	1523842139	527134251	-29	4	1088	1
2025-07-21 21:30:51.267+00	192	telegraf	1523842139	1070166865	-53	8	1088	1
2025-07-21 21:31:54.886+00	192	telegraf	527134251	840973111	-15	4	1093	1
2025-07-21 21:31:54.886+00	192	telegraf	527134251	1523842139	-29	4	1093	1
2025-07-21 21:31:54.886+00	192	telegraf	527134251	1070166865	-67	8	1093	1
2025-07-21 21:34:53.821+00	192	telegraf	840973111	1523842139	-23	4	1102	1
2025-07-21 21:34:53.821+00	192	telegraf	840973111	1070166865	-50	8	1102	1
2025-07-21 21:34:52.294+00	192	telegraf	1523842139	840973111	-23	4	1105	1
2025-07-21 21:34:52.294+00	192	telegraf	1523842139	527134251	-31	4	1105	1
2025-07-21 21:34:52.294+00	192	telegraf	1523842139	1070166865	-59	8	1105	1
2025-07-21 21:34:53.921+00	192	telegraf	527134251	840973111	-15	4	1108	1
2025-07-21 21:34:53.921+00	192	telegraf	527134251	1523842139	-31	4	1108	1
2025-07-21 21:34:53.921+00	192	telegraf	527134251	1070166865	-65	8	1108	1
2025-07-21 21:39:04.967+00	192	telegraf	527134251	840973111	-26	4	1114	1
2025-07-21 21:39:04.967+00	192	telegraf	527134251	1070166865	-54	8	1114	1
2025-07-21 21:41:35.974+00	192	telegraf	527134251	1523842139	-14	4	1123	1
2025-07-21 21:41:35.974+00	192	telegraf	527134251	840973111	-25	4	1123	1
2025-07-21 21:41:35.974+00	192	telegraf	527134251	1070166865	-56	8	1123	1
2025-07-22 13:51:46.504+00	192	telegraf	978202981	1041420528	-16	4	754	1
2025-07-22 13:51:46.504+00	192	telegraf	978202981	1126982881	-28	4	754	1
2025-07-22 13:51:46.504+00	192	telegraf	978202981	1897240282	-47	8	754	1
2025-07-22 13:52:44.386+00	192	telegraf	1126982881	978202981	-29	4	759	1
2025-07-22 13:52:44.386+00	192	telegraf	1126982881	1041420528	-31	4	759	1
2025-07-22 13:52:44.386+00	192	telegraf	1126982881	1897240282	-50	8	759	1
2025-07-22 15:19:48.607+00	192	telegraf	1041420528	978202981	-16	4	825	1
2025-07-22 15:19:48.607+00	192	telegraf	1041420528	1897240282	-45	8	825	1
2025-07-22 15:19:48.607+00	192	telegraf	1041420528	1126982881	-65	4	825	1
2025-07-22 15:19:57.929+00	192	telegraf	1126982881	1897240282	-46	8	828	1
2025-07-22 15:19:57.929+00	192	telegraf	1126982881	978202981	-51	4	828	1
2025-07-22 15:19:57.929+00	192	telegraf	1126982881	1041420528	-57	4	828	1
2025-07-22 15:21:22.953+00	192	telegraf	1126982881	1897240282	-44	8	834	1
2025-07-22 15:21:22.953+00	192	telegraf	1126982881	1041420528	-52	4	834	1
2025-07-22 15:21:22.953+00	192	telegraf	1126982881	978202981	-53	4	834	1
2025-07-22 17:07:12.694+00	192	telegraf	1126982881	1897240282	-41	8	1031	1
2025-07-22 17:07:12.694+00	192	telegraf	1126982881	978202981	-53	4	1031	1
2025-07-22 17:07:12.694+00	192	telegraf	1126982881	1041420528	-58	4	1031	1
2025-07-22 17:10:57.733+00	192	telegraf	1126982881	1897240282	-46	8	1048	1
2025-07-22 17:10:57.733+00	192	telegraf	1126982881	978202981	-51	4	1048	1
2025-07-22 17:10:57.733+00	192	telegraf	1126982881	1041420528	-59	4	1048	1
2025-07-22 17:22:29.839+00	192	telegraf	1126982881	1897240282	-44	8	1070	1
2025-07-22 17:22:29.839+00	192	telegraf	1126982881	978202981	-55	4	1070	1
2025-07-22 17:22:29.839+00	192	telegraf	1126982881	1041420528	-62	4	1070	1
2025-07-22 17:29:26.92+00	192	telegraf	1126982881	1897240282	-47	8	1102	1
2025-07-22 17:29:26.92+00	192	telegraf	1126982881	978202981	-52	4	1102	1
2025-07-22 17:29:26.92+00	192	telegraf	1126982881	1041420528	-55	4	1102	1
2025-07-22 17:34:10.966+00	192	telegraf	1126982881	1897240282	-44	8	1122	1
2025-07-22 17:34:10.966+00	192	telegraf	1126982881	1041420528	-65	4	1122	1
2025-07-22 17:34:10.966+00	192	telegraf	1126982881	978202981	-66	4	1122	1
2025-07-22 17:41:49.059+00	192	telegraf	1126982881	1897240282	-41	8	1148	1
2025-07-22 17:41:49.059+00	192	telegraf	1126982881	1041420528	-70	4	1148	1
2025-07-22 17:41:49.059+00	192	telegraf	1126982881	978202981	-70	4	1148	1
2025-07-22 17:45:59.098+00	192	telegraf	1126982881	1897240282	-48	8	1159	1
2025-07-22 17:45:59.098+00	192	telegraf	1126982881	978202981	-54	4	1159	1
2025-07-22 17:45:59.098+00	192	telegraf	1126982881	1041420528	-60	4	1159	1
2025-07-22 17:52:56.146+00	192	telegraf	1126982881	1897240282	-52	8	1173	1
2025-07-22 17:52:56.146+00	192	telegraf	1126982881	1041420528	-63	4	1173	1
2025-07-22 17:52:56.146+00	192	telegraf	1126982881	978202981	-66	4	1173	1
2025-07-22 17:54:47.154+00	192	telegraf	1126982881	1897240282	-39	8	1179	1
2025-07-22 17:54:47.154+00	192	telegraf	1126982881	978202981	-48	4	1179	1
2025-07-22 17:54:47.154+00	192	telegraf	1126982881	1041420528	-53	4	1179	1
2025-07-22 17:56:58.185+00	192	telegraf	1126982881	1897240282	-44	8	1191	1
2025-07-22 17:56:58.185+00	192	telegraf	1126982881	978202981	-57	4	1191	1
2025-07-22 17:56:58.185+00	192	telegraf	1126982881	1041420528	-63	4	1191	1
2025-07-22 19:27:38.651+00	192	telegraf	1126982881	1897240282	-44	8	1264	1
2025-07-22 19:27:38.651+00	192	telegraf	1126982881	978202981	-54	4	1264	1
2025-07-22 19:27:38.651+00	192	telegraf	1126982881	1041420528	-62	4	1264	1
2025-07-22 19:27:48.29+00	192	telegraf	978202981	1041420528	-17	4	1268	1
2025-07-22 19:27:48.29+00	192	telegraf	978202981	1897240282	-50	8	1268	1
2025-07-22 19:27:48.29+00	192	telegraf	978202981	1126982881	-53	4	1268	1
2025-07-22 19:29:01.66+00	192	telegraf	1126982881	1897240282	-47	8	1278	1
2025-07-22 19:29:01.66+00	192	telegraf	1126982881	978202981	-52	4	1278	1
2025-07-22 19:29:01.66+00	192	telegraf	1126982881	1041420528	-54	4	1278	1
2025-07-22 19:31:16.683+00	192	telegraf	1126982881	1897240282	-52	8	1290	1
2025-07-22 19:31:16.683+00	192	telegraf	1126982881	978202981	-62	4	1290	1
2025-07-22 19:31:16.683+00	192	telegraf	1126982881	1041420528	-69	4	1290	1
2025-07-22 20:06:25.959+00	192	telegraf	1126982881	1897240282	-49	8	1358	1
2025-07-22 20:06:25.959+00	192	telegraf	1126982881	1041420528	-69	4	1358	1
2025-07-22 20:06:25.959+00	192	telegraf	1126982881	978202981	-79	4	1358	1
2025-07-22 20:09:26.572+00	192	telegraf	978202981	1041420528	-18	4	1368	1
2025-07-22 20:09:26.572+00	192	telegraf	978202981	1897240282	-53	8	1368	1
2025-07-22 20:09:26.572+00	192	telegraf	978202981	1126982881	-66	4	1368	1
2025-07-22 20:09:55.989+00	192	telegraf	1126982881	1897240282	-44	8	1372	1
2025-07-22 20:09:55.989+00	192	telegraf	1126982881	1041420528	-68	4	1372	1
2025-07-22 20:09:55.989+00	192	telegraf	1126982881	978202981	-74	4	1372	1
2025-07-22 20:20:53.04+00	192	telegraf	1126982881	1897240282	-41	8	1399	1
2025-07-22 20:20:53.04+00	192	telegraf	1126982881	1041420528	-55	4	1399	1
2025-07-22 20:20:53.04+00	192	telegraf	1126982881	978202981	-55	4	1399	1
2025-07-22 20:24:59.062+00	192	telegraf	1126982881	1041420528	-23	4	1411	1
2025-07-22 20:24:59.062+00	192	telegraf	1126982881	978202981	-23	4	1411	1
2025-07-22 20:24:59.062+00	192	telegraf	1126982881	1897240282	-44	8	1411	1
2025-07-22 20:25:00.093+00	192	telegraf	1041420528	978202981	-16	4	1416	1
2025-07-22 20:25:00.093+00	192	telegraf	1041420528	1126982881	-22	4	1416	1
2025-07-22 20:25:00.093+00	192	telegraf	1041420528	1897240282	-46	8	1416	1
2025-07-22 20:25:00.623+00	192	telegraf	978202981	1041420528	-17	4	1417	1
2025-07-22 20:25:00.623+00	192	telegraf	978202981	1126982881	-24	4	1417	1
2025-07-22 20:25:00.623+00	192	telegraf	978202981	1897240282	-53	8	1417	1
2025-07-22 20:32:42.1+00	192	telegraf	1126982881	978202981	-26	4	1430	1
2025-07-22 20:32:42.1+00	192	telegraf	1126982881	1897240282	-42	8	1430	1
2025-07-22 20:32:41.656+00	192	telegraf	978202981	1041420528	-18	4	1435	1
2025-07-22 20:32:41.656+00	192	telegraf	978202981	1126982881	-25	4	1435	1
2025-07-22 20:32:41.656+00	192	telegraf	978202981	1897240282	-53	8	1435	1
2025-07-22 20:32:42.17+00	192	telegraf	1041420528	978202981	-16	4	1436	1
2025-07-22 20:32:42.17+00	192	telegraf	1041420528	1126982881	-22	4	1436	1
2025-07-22 20:32:42.17+00	192	telegraf	1041420528	1897240282	-48	8	1436	1
2025-07-22 21:30:08.153+00	192	telegraf	840973111	1523842139	-18	4	18	1
2025-07-22 21:30:08.153+00	192	telegraf	840973111	527134251	-25	4	18	1
2025-07-22 21:30:08.153+00	192	telegraf	840973111	1070166865	-60	8	18	1
2025-07-22 21:36:08.168+00	192	telegraf	527134251	1523842139	-15	4	26	1
2025-07-22 21:36:08.168+00	192	telegraf	527134251	840973111	-15	4	26	1
2025-07-22 21:36:08.168+00	192	telegraf	527134251	1070166865	-58	8	26	1
2025-07-22 21:36:00.688+00	192	telegraf	1523842139	527134251	-14	4	31	1
2025-07-22 21:36:00.688+00	192	telegraf	1523842139	840973111	-15	4	31	1
2025-07-22 21:36:00.688+00	192	telegraf	1523842139	1070166865	-56	8	31	1
2025-07-22 21:36:00.193+00	192	telegraf	840973111	527134251	-15	4	32	1
2025-07-22 21:36:00.193+00	192	telegraf	840973111	1070166865	-51	8	32	1
2025-07-22 21:45:48.213+00	192	telegraf	527134251	1523842139	-17	4	50	1
2025-07-22 21:45:48.213+00	192	telegraf	527134251	1070166865	-46	8	50	1
2025-07-22 21:45:48.239+00	192	telegraf	840973111	527134251	-16	4	55	1
2025-07-22 21:45:48.239+00	192	telegraf	840973111	1523842139	-19	4	55	1
2025-07-22 21:45:48.239+00	192	telegraf	840973111	1070166865	-62	8	55	1
2025-07-22 21:45:47.744+00	192	telegraf	1523842139	840973111	-18	4	56	1
2025-07-22 21:45:47.744+00	192	telegraf	1523842139	1070166865	-52	8	56	1
2025-07-22 21:46:53.202+00	192	telegraf	527134251	840973111	-15	4	63	1
2025-07-22 21:46:53.202+00	192	telegraf	527134251	1523842139	-18	4	63	1
2025-07-22 21:46:53.202+00	192	telegraf	527134251	1070166865	-48	8	63	1
2025-07-22 21:46:55.25+00	192	telegraf	840973111	527134251	-16	4	68	1
2025-07-22 21:46:55.25+00	192	telegraf	840973111	1523842139	-18	4	68	1
2025-07-22 21:46:55.25+00	192	telegraf	840973111	1070166865	-66	8	68	1
2025-07-22 21:46:54.749+00	192	telegraf	1523842139	840973111	-18	4	69	1
2025-07-22 21:46:54.749+00	192	telegraf	1523842139	527134251	-18	4	69	1
2025-07-22 21:46:54.749+00	192	telegraf	1523842139	1070166865	-53	8	69	1
2025-07-22 21:47:59.245+00	192	telegraf	840973111	527134251	-15	4	75	1
2025-07-22 21:47:59.245+00	192	telegraf	840973111	1523842139	-17	4	75	1
2025-07-22 21:47:59.245+00	192	telegraf	840973111	1070166865	-63	8	75	1
2025-07-22 21:48:01.219+00	192	telegraf	527134251	840973111	-14	4	78	1
2025-07-22 21:48:01.219+00	192	telegraf	527134251	1523842139	-17	4	78	1
2025-07-22 21:48:01.219+00	192	telegraf	527134251	1070166865	-52	8	78	1
2025-07-22 21:48:00.756+00	192	telegraf	1523842139	840973111	-17	4	81	1
2025-07-22 21:48:00.756+00	192	telegraf	1523842139	1070166865	-51	8	81	1
2025-07-22 21:49:19.255+00	192	telegraf	840973111	527134251	-15	4	87	1
2025-07-22 21:49:19.255+00	192	telegraf	840973111	1523842139	-25	4	87	1
2025-07-22 21:49:19.255+00	192	telegraf	840973111	1070166865	-56	8	87	1
2025-07-22 21:49:40.219+00	192	telegraf	527134251	840973111	-15	4	90	1
2025-07-22 21:49:40.219+00	192	telegraf	527134251	1523842139	-23	4	90	1
2025-07-22 21:49:40.219+00	192	telegraf	527134251	1070166865	-47	8	90	1
2025-07-22 21:49:39.763+00	192	telegraf	1523842139	840973111	-26	4	93	1
2025-07-22 21:49:39.763+00	192	telegraf	1523842139	1070166865	-50	8	93	1
2025-07-22 21:50:48.218+00	192	telegraf	527134251	840973111	-15	4	97	1
2025-07-22 21:50:48.218+00	192	telegraf	527134251	1523842139	-22	4	97	1
2025-07-22 21:50:48.218+00	192	telegraf	527134251	1070166865	-47	8	97	1
2025-07-22 21:58:40.267+00	192	telegraf	840973111	527134251	-15	4	107	1
2025-07-22 21:58:40.267+00	192	telegraf	840973111	1523842139	-25	4	107	1
2025-07-22 21:58:40.267+00	192	telegraf	840973111	1070166865	-54	8	107	1
2025-07-22 21:59:02.83+00	192	telegraf	1523842139	527134251	-21	4	110	1
2025-07-22 21:59:02.83+00	192	telegraf	1523842139	840973111	-25	4	110	1
2025-07-22 21:59:02.83+00	192	telegraf	1523842139	1070166865	-50	8	110	1
2025-07-22 22:08:22.255+00	192	telegraf	527134251	840973111	-15	4	116	1
2025-07-22 22:08:22.255+00	192	telegraf	527134251	1523842139	-21	4	116	1
2025-07-22 22:08:22.255+00	192	telegraf	527134251	1070166865	-50	8	116	1
2025-07-22 22:11:13.257+00	192	telegraf	527134251	1523842139	-18	4	125	1
2025-07-22 22:11:13.257+00	192	telegraf	527134251	1070166865	-49	8	125	1
2025-07-22 22:11:13.301+00	192	telegraf	840973111	527134251	-16	4	130	1
2025-07-22 22:11:13.301+00	192	telegraf	840973111	1523842139	-17	4	130	1
2025-07-22 22:11:13.301+00	192	telegraf	840973111	1070166865	-55	8	130	1
2025-07-22 22:11:12.853+00	192	telegraf	1523842139	1070166865	-52	8	131	1
2025-07-22 22:30:01.407+00	192	telegraf	527134251	1523842139	-26	4	152	1
2025-07-22 22:30:01.407+00	192	telegraf	527134251	1070166865	-53	8	152	1
2025-07-22 22:30:03.078+00	192	telegraf	1523842139	840973111	-15	4	157	1
2025-07-22 22:30:03.078+00	192	telegraf	1523842139	527134251	-28	4	157	1
2025-07-22 22:30:03.078+00	192	telegraf	1523842139	1070166865	-48	8	157	1
2025-07-22 22:30:01.422+00	192	telegraf	840973111	1523842139	-16	4	158	1
2025-07-22 22:30:01.422+00	192	telegraf	840973111	1070166865	-56	8	158	1
2025-07-22 22:33:10.434+00	192	telegraf	527134251	840973111	-15	4	166	1
2025-07-22 22:33:10.434+00	192	telegraf	527134251	1523842139	-25	4	166	1
2025-07-22 22:33:10.434+00	192	telegraf	527134251	1070166865	-50	8	166	1
2025-07-22 22:33:11.086+00	192	telegraf	1523842139	840973111	-16	4	171	1
2025-07-22 22:33:11.086+00	192	telegraf	1523842139	527134251	-25	4	171	1
2025-07-22 22:33:11.086+00	192	telegraf	1523842139	1070166865	-49	8	171	1
2025-07-22 22:33:11.436+00	192	telegraf	840973111	527134251	-15	4	172	1
2025-07-22 22:33:11.436+00	192	telegraf	840973111	1523842139	-17	4	172	1
2025-07-22 22:33:11.436+00	192	telegraf	840973111	1070166865	-59	8	172	1
2025-07-22 22:34:21.44+00	192	telegraf	527134251	840973111	-15	4	178	1
2025-07-22 22:34:21.44+00	192	telegraf	527134251	1523842139	-27	4	178	1
2025-07-22 22:34:21.44+00	192	telegraf	527134251	1070166865	-53	8	178	1
2025-07-22 22:34:19.437+00	192	telegraf	840973111	1523842139	-15	4	184	1
2025-07-22 22:34:19.437+00	192	telegraf	840973111	527134251	-16	4	184	1
2025-07-22 22:34:19.437+00	192	telegraf	840973111	1070166865	-66	8	184	1
2025-07-22 22:34:22.1+00	192	telegraf	1523842139	840973111	-15	4	185	1
2025-07-22 22:34:22.1+00	192	telegraf	1523842139	527134251	-28	4	185	1
2025-07-22 22:34:22.1+00	192	telegraf	1523842139	1070166865	-51	8	185	1
2025-07-22 22:35:25.442+00	192	telegraf	527134251	840973111	-15	4	190	1
2025-07-22 22:35:25.442+00	192	telegraf	527134251	1523842139	-23	4	190	1
2025-07-22 22:35:25.442+00	192	telegraf	527134251	1070166865	-55	8	190	1
2025-07-22 22:35:26.449+00	192	telegraf	840973111	527134251	-16	4	195	1
2025-07-22 22:35:26.449+00	192	telegraf	840973111	1523842139	-16	4	195	1
2025-07-22 22:35:26.449+00	192	telegraf	840973111	1070166865	-72	8	195	1
2025-07-22 22:35:26.104+00	192	telegraf	1523842139	527134251	-24	4	196	1
2025-07-22 22:35:26.104+00	192	telegraf	1523842139	1070166865	-51	8	196	1
2025-07-22 22:36:30.455+00	192	telegraf	527134251	1523842139	-26	4	203	1
2025-07-22 22:36:30.455+00	192	telegraf	527134251	1070166865	-49	8	203	1
2025-07-22 22:36:30.448+00	192	telegraf	840973111	1523842139	-16	4	206	1
2025-07-22 22:36:30.448+00	192	telegraf	840973111	1070166865	-62	8	206	1
2025-07-22 22:36:31.11+00	192	telegraf	1523842139	840973111	-16	4	209	1
2025-07-22 22:36:31.11+00	192	telegraf	1523842139	527134251	-28	4	209	1
2025-07-22 22:36:31.11+00	192	telegraf	1523842139	1070166865	-48	8	209	1
2025-07-22 22:42:30.138+00	192	telegraf	1523842139	840973111	-16	4	216	1
2025-07-22 22:42:30.138+00	192	telegraf	1523842139	527134251	-28	4	216	1
2025-07-22 22:42:30.138+00	192	telegraf	1523842139	1070166865	-49	8	216	1
2025-07-22 22:47:00.502+00	192	telegraf	527134251	1070166865	-53	8	231	1
2025-07-22 22:47:01.165+00	192	telegraf	1523842139	840973111	-15	4	236	1
2025-07-22 22:47:01.165+00	192	telegraf	1523842139	527134251	-17	4	236	1
2025-07-22 22:47:01.165+00	192	telegraf	1523842139	1070166865	-55	8	236	1
2025-07-22 22:47:00.49+00	192	telegraf	840973111	1070166865	-58	8	237	1
2025-07-22 22:55:27.552+00	192	telegraf	527134251	840973111	-15	4	248	1
2025-07-22 22:55:27.552+00	192	telegraf	527134251	1523842139	-17	4	248	1
2025-07-22 22:55:27.552+00	192	telegraf	527134251	1070166865	-50	8	248	1
2025-07-22 22:55:28.53+00	192	telegraf	840973111	527134251	-15	4	251	1
2025-07-22 22:55:28.53+00	192	telegraf	840973111	1523842139	-15	4	251	1
2025-07-22 22:55:28.53+00	192	telegraf	840973111	1070166865	-53	8	251	1
2025-07-22 22:55:28.204+00	192	telegraf	1523842139	527134251	-17	4	254	1
2025-07-22 22:55:28.204+00	192	telegraf	1523842139	1070166865	-57	8	254	1
2025-07-23 07:41:55.497+00	192	telegraf	1126982881	1897240282	-56	8	1848	1
2025-07-23 07:41:55.497+00	192	telegraf	1126982881	1041420528	-64	4	1848	1
2025-07-23 07:41:55.497+00	192	telegraf	1126982881	978202981	-69	4	1848	1
2025-07-23 07:44:07.535+00	192	telegraf	1126982881	1041420528	-17	4	1864	1
2025-07-23 07:44:07.535+00	192	telegraf	1126982881	978202981	-25	4	1864	1
2025-07-23 07:44:07.535+00	192	telegraf	1126982881	1897240282	-62	8	1864	1
2025-07-23 07:44:08.688+00	192	telegraf	978202981	1041420528	-18	4	1869	1
2025-07-23 07:44:08.688+00	192	telegraf	978202981	1126982881	-24	4	1869	1
2025-07-23 07:44:08.688+00	192	telegraf	978202981	1897240282	-50	8	1869	1
2025-07-23 07:44:08.608+00	192	telegraf	1041420528	1126982881	-16	4	1870	1
2025-07-23 07:44:08.608+00	192	telegraf	1041420528	978202981	-17	4	1870	1
2025-07-23 07:44:08.608+00	192	telegraf	1041420528	1897240282	-47	8	1870	1
2025-07-23 07:59:58.66+00	192	telegraf	1041420528	978202981	-16	4	1896	1
2025-07-23 07:59:58.66+00	192	telegraf	1041420528	1126982881	-33	4	1896	1
2025-07-23 07:59:58.66+00	192	telegraf	1041420528	1897240282	-44	8	1896	1
2025-07-23 07:59:57.745+00	192	telegraf	978202981	1041420528	-16	4	1897	1
2025-07-23 07:59:57.745+00	192	telegraf	978202981	1126982881	-29	4	1897	1
2025-07-23 07:59:57.745+00	192	telegraf	978202981	1897240282	-51	8	1897	1
2025-07-23 08:00:33.713+00	192	telegraf	1126982881	978202981	-29	4	1902	1
2025-07-23 08:00:33.713+00	192	telegraf	1126982881	1041420528	-34	4	1902	1
2025-07-23 08:00:33.713+00	192	telegraf	1126982881	1897240282	-48	8	1902	1
2025-07-23 08:08:20.782+00	192	telegraf	1126982881	1897240282	-53	8	1919	1
2025-07-23 08:08:20.782+00	192	telegraf	1126982881	1041420528	-66	4	1919	1
2025-07-23 08:08:20.782+00	192	telegraf	1126982881	978202981	-74	4	1919	1
2025-07-23 08:11:11.818+00	192	telegraf	1126982881	1897240282	-41	8	1932	1
2025-07-23 08:11:11.818+00	192	telegraf	1126982881	978202981	-58	4	1932	1
2025-07-23 08:11:11.818+00	192	telegraf	1126982881	1041420528	-64	4	1932	1
2025-07-23 08:21:56.903+00	192	telegraf	1126982881	1897240282	-42	8	1947	1
2025-07-23 08:21:56.903+00	192	telegraf	1126982881	1041420528	-62	4	1947	1
2025-07-23 08:21:56.903+00	192	telegraf	1126982881	978202981	-68	4	1947	1
2025-07-23 08:22:16.746+00	192	telegraf	1041420528	978202981	-16	4	1950	1
2025-07-23 08:22:16.746+00	192	telegraf	1041420528	1897240282	-44	8	1950	1
2025-07-23 08:22:16.746+00	192	telegraf	1041420528	1126982881	-70	4	1950	1
2025-07-23 08:27:22.942+00	192	telegraf	1126982881	1897240282	-44	8	1958	1
2025-07-23 08:27:22.942+00	192	telegraf	1126982881	978202981	-59	4	1958	1
2025-07-23 08:27:22.942+00	192	telegraf	1126982881	1041420528	-66	4	1958	1
2025-07-23 08:29:51.951+00	192	telegraf	1126982881	1897240282	-45	8	1964	1
2025-07-23 08:29:51.951+00	192	telegraf	1126982881	978202981	-58	4	1964	1
2025-07-23 08:29:51.951+00	192	telegraf	1126982881	1041420528	-72	4	1964	1
2025-07-23 08:31:31.961+00	192	telegraf	1126982881	1897240282	-40	8	1969	1
2025-07-23 08:31:31.961+00	192	telegraf	1126982881	978202981	-66	4	1969	1
2025-07-23 08:31:31.961+00	192	telegraf	1126982881	1041420528	-67	4	1969	1
2025-07-23 08:33:36.974+00	192	telegraf	1126982881	1897240282	-44	8	1975	1
2025-07-23 08:33:36.974+00	192	telegraf	1126982881	978202981	-55	4	1975	1
2025-07-23 08:33:36.974+00	192	telegraf	1126982881	1041420528	-56	4	1975	1
2025-07-23 09:22:06.16+00	192	telegraf	1126982881	1897240282	-45	8	2007	1
2025-07-23 09:22:06.16+00	192	telegraf	1126982881	1041420528	-54	4	2007	1
2025-07-23 09:22:06.16+00	192	telegraf	1126982881	978202981	-56	4	2007	1
2025-07-23 09:40:15.24+00	192	telegraf	1126982881	1897240282	-41	8	2025	1
2025-07-23 09:40:15.24+00	192	telegraf	1126982881	978202981	-53	4	2025	1
2025-07-23 09:40:15.24+00	192	telegraf	1126982881	1041420528	-57	4	2025	1
2025-07-23 09:57:42.344+00	192	telegraf	1126982881	978202981	-28	4	2037	1
2025-07-23 09:57:42.344+00	192	telegraf	1126982881	1041420528	-28	4	2037	1
2025-07-23 09:57:42.344+00	192	telegraf	1126982881	1897240282	-44	8	2037	1
2025-07-23 17:35:06.87+00	192	telegraf	1126982881	978202981	-26	4	2378	1
2025-07-23 17:35:06.87+00	192	telegraf	1126982881	1041420528	-27	4	2378	1
2025-07-23 17:35:06.87+00	192	telegraf	1126982881	1897240282	-48	8	2378	1
2025-07-23 17:35:08.139+00	192	telegraf	978202981	1041420528	-18	4	2381	1
2025-07-23 17:35:08.139+00	192	telegraf	978202981	1126982881	-26	4	2381	1
2025-07-23 17:35:08.139+00	192	telegraf	978202981	1897240282	-48	8	2381	1
2025-07-23 17:35:07.853+00	192	telegraf	1041420528	978202981	-17	4	2385	1
2025-07-23 17:35:07.853+00	192	telegraf	1041420528	1126982881	-26	4	2385	1
2025-07-23 17:35:07.853+00	192	telegraf	1041420528	1897240282	-40	8	2385	1
\.


--
-- Data for Name: _hyper_5_34_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_5_34_chunk ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
2025-07-25 12:08:36.914+00	192	telegraf	1126982881	1041420528	-26	4	3982	1
2025-07-25 12:08:36.914+00	192	telegraf	1126982881	978202981	-27	4	3982	1
2025-07-25 12:08:36.914+00	192	telegraf	1126982881	1897240282	-45	8	3982	1
2025-07-25 12:08:36.759+00	192	telegraf	1041420528	1897240282	-41	8	3987	1
2025-07-25 12:08:36.874+00	192	telegraf	978202981	1041420528	-19	4	3988	1
2025-07-25 12:08:36.874+00	192	telegraf	978202981	1897240282	-44	8	3988	1
2025-07-25 12:54:41.15+00	192	telegraf	978202981	1041420528	-19	4	4048	1
2025-07-25 12:54:41.15+00	192	telegraf	978202981	1897240282	-44	8	4048	1
2025-07-25 12:54:41.15+00	192	telegraf	978202981	1126982881	-53	4	4048	1
2025-07-25 12:56:02.238+00	192	telegraf	1126982881	978202981	-34	4	4054	1
2025-07-25 12:56:02.238+00	192	telegraf	1126982881	1041420528	-40	4	4054	1
2025-07-25 12:56:02.238+00	192	telegraf	1126982881	1897240282	-46	8	4054	1
2025-07-25 12:56:02.95+00	192	telegraf	1041420528	978202981	-20	4	4057	1
2025-07-25 12:56:02.95+00	192	telegraf	1041420528	1897240282	-40	8	4057	1
2025-07-25 12:56:02.95+00	192	telegraf	1041420528	1126982881	-41	4	4057	1
2025-07-26 13:48:32.376+00	192	telegraf	1041420528	978202981	-20	4	5006	1
2025-07-26 13:48:32.376+00	192	telegraf	1041420528	1126982881	-39	4	5006	1
2025-07-26 13:48:32.376+00	192	telegraf	1041420528	1897240282	-44	8	5006	1
2025-07-26 14:44:10.349+00	192	telegraf	1126982881	978202981	-24	4	5046	1
2025-07-26 14:44:10.349+00	192	telegraf	1126982881	1041420528	-27	4	5046	1
2025-07-26 14:44:10.349+00	192	telegraf	1126982881	1897240282	-58	8	5046	1
2025-07-26 14:44:09.652+00	192	telegraf	978202981	1041420528	-21	4	5049	1
2025-07-26 14:44:09.652+00	192	telegraf	978202981	1897240282	-42	8	5049	1
2025-07-26 18:28:09.524+00	192	telegraf	1126982881	978202981	-24	4	5196	1
2025-07-26 18:28:09.524+00	192	telegraf	1126982881	1041420528	-27	4	5196	1
2025-07-26 18:28:09.524+00	192	telegraf	1126982881	1897240282	-58	8	5196	1
2025-07-26 18:28:08.947+00	192	telegraf	1041420528	978202981	-19	4	5199	1
2025-07-26 18:28:08.947+00	192	telegraf	1041420528	1126982881	-27	4	5199	1
2025-07-26 18:28:08.947+00	192	telegraf	1041420528	1897240282	-43	8	5199	1
2025-07-26 20:51:34.248+00	192	telegraf	1126982881	978202981	-23	4	5285	1
2025-07-26 20:51:34.248+00	192	telegraf	1126982881	1041420528	-29	4	5285	1
2025-07-26 20:51:34.248+00	192	telegraf	1126982881	1897240282	-57	8	5285	1
2025-07-26 21:50:27.493+00	192	telegraf	1126982881	978202981	-25	4	5327	1
2025-07-26 21:50:27.493+00	192	telegraf	1126982881	1041420528	-27	4	5327	1
2025-07-26 21:50:27.493+00	192	telegraf	1126982881	1897240282	-70	8	5327	1
\.


--
-- Data for Name: _hyper_5_4_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_5_4_chunk ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
2025-06-28 12:28:12.207+00	192	\N	1041420528	978202981	-29	4	65	0.9
2025-06-28 12:28:12.207+00	192	\N	1041420528	1126982881	-46	4	65	0.9
2025-06-28 12:28:12.207+00	192	\N	1041420528	1897240282	-54	8	65	0.9
2025-06-28 12:28:25.15+00	192	\N	1126982881	1897240282	-33	8	68	0.9
2025-06-28 12:28:25.15+00	192	\N	1126982881	978202981	-40	4	68	0.9
2025-06-28 12:28:25.15+00	192	\N	1126982881	1041420528	-46	4	68	0.9
2025-06-28 12:28:27.001+00	192	\N	978202981	1041420528	-30	4	71	0.9
2025-06-28 12:28:27.001+00	192	\N	978202981	1897240282	-34	8	71	0.9
2025-06-28 12:28:27.001+00	192	\N	978202981	1126982881	-41	4	71	0.9
2025-06-28 12:38:02.212+00	192	\N	1126982881	1041420528	-45	4	87	0.9
2025-06-28 12:38:02.212+00	192	\N	1126982881	978202981	-49	4	87	0.9
2025-06-28 12:38:02.212+00	192	\N	1126982881	1897240282	-56	8	87	0.9
2025-06-28 13:36:54.276+00	192	\N	978202981	1041420528	-29	4	131	0.9
2025-06-28 13:36:54.276+00	192	\N	978202981	1897240282	-35	8	131	0.9
2025-06-28 13:36:54.487+00	192	\N	1126982881	1897240282	-34	8	134	0.9
2025-06-28 13:36:54.487+00	192	\N	1126982881	978202981	-35	4	134	0.9
2025-06-28 13:36:54.487+00	192	\N	1126982881	1041420528	-43	4	134	0.9
2025-06-28 14:17:31.666+00	192	\N	978202981	1126982881	-30	4	167	0.9
2025-06-28 14:17:31.666+00	192	\N	978202981	1897240282	-33	8	167	0.9
2025-06-28 14:17:31.666+00	192	\N	978202981	1041420528	-33	4	167	0.9
2025-06-28 14:17:39.219+00	192	\N	1041420528	978202981	-31	4	170	0.9
2025-06-28 14:17:39.219+00	192	\N	1041420528	1897240282	-44	8	170	0.9
2025-06-28 14:17:39.219+00	192	\N	1041420528	1126982881	-45	4	170	0.9
2025-06-28 14:17:49.725+00	192	\N	1126982881	1897240282	-34	8	173	0.9
2025-06-28 14:17:49.725+00	192	\N	1126982881	978202981	-38	4	173	0.9
2025-06-28 14:17:49.725+00	192	\N	1126982881	1041420528	-46	4	173	0.9
2025-06-28 16:10:46.267+00	192	\N	1126982881	978202981	-32	4	242	0.9
2025-06-28 16:10:46.267+00	192	\N	1126982881	1897240282	-33	8	242	0.9
2025-06-28 16:10:46.267+00	192	\N	1126982881	1041420528	-44	4	242	0.9
2025-06-28 17:21:18.806+00	192	\N	978202981	1126982881	-15	4	292	0.9
2025-06-28 17:21:18.806+00	192	\N	978202981	1897240282	-56	8	292	0.9
2025-06-28 17:21:18.829+00	192	\N	1041420528	1126982881	-16	4	295	0.9
2025-06-28 17:21:18.829+00	192	\N	1041420528	978202981	-18	4	295	0.9
2025-06-28 17:21:18.829+00	192	\N	1041420528	1897240282	-53	8	295	0.9
2025-06-28 17:22:07.733+00	192	\N	1126982881	978202981	-15	4	300	0.9
2025-06-28 17:22:07.733+00	192	\N	1126982881	1041420528	-16	4	300	0.9
2025-06-28 17:22:07.733+00	192	\N	1126982881	1897240282	-57	8	300	0.9
2025-06-28 17:25:04.855+00	192	\N	1041420528	1126982881	-16	4	307	0.9
2025-06-28 17:25:04.855+00	192	\N	1041420528	978202981	-18	4	307	0.9
2025-06-28 17:25:04.855+00	192	\N	1041420528	1897240282	-52	8	307	0.9
2025-06-28 17:45:59.923+00	192	\N	978202981	1126982881	-15	4	319	0.9
2025-06-28 17:45:59.923+00	192	\N	978202981	1041420528	-19	4	319	0.9
2025-06-28 17:45:59.923+00	192	\N	978202981	1897240282	-53	8	319	0.9
2025-06-28 18:04:57.934+00	192	\N	1126982881	978202981	-15	4	334	0.9
2025-06-28 18:04:57.934+00	192	\N	1126982881	1041420528	-18	4	334	0.9
2025-06-28 18:04:57.934+00	192	\N	1126982881	1897240282	-57	8	334	0.9
2025-06-28 18:24:16.207+00	192	\N	978202981	1126982881	-15	4	353	0.9
2025-06-28 18:24:16.207+00	192	\N	978202981	1041420528	-19	4	353	0.9
2025-06-28 18:24:16.207+00	192	\N	978202981	1897240282	-54	8	353	0.9
2025-06-30 16:04:05.933+00	192	\N	978202981	1897240282	-50	8	821	0.9
2025-06-30 16:04:05.933+00	192	\N	978202981	1041420528	-81	4	821	0.9
2025-06-30 16:04:05.933+00	192	\N	978202981	1126982881	-91	4	821	0.9
2025-06-30 16:05:05.301+00	192	\N	1126982881	1897240282	-67	8	824	0.9
2025-06-30 19:33:56.481+00	192	\N	1126982881	978202981	-36	4	987	0.9
2025-06-30 19:33:56.481+00	192	\N	1126982881	1897240282	-57	8	987	0.9
2025-06-30 19:33:56.481+00	192	\N	1126982881	1041420528	-74	4	987	0.9
2025-06-30 19:36:03.006+00	192	\N	978202981	1126982881	-48	4	995	0.9
2025-06-30 19:36:03.006+00	192	\N	978202981	1897240282	-56	8	995	0.9
2025-06-30 19:36:03.006+00	192	\N	978202981	1041420528	-79	4	995	0.9
2025-06-30 19:36:10.498+00	192	\N	1126982881	978202981	-44	4	999	0.9
2025-06-30 19:36:10.498+00	192	\N	1126982881	1897240282	-46	8	999	0.9
2025-06-30 19:36:10.498+00	192	\N	1126982881	1041420528	-84	4	999	0.9
2025-06-30 19:51:47.566+00	192	\N	1126982881	978202981	-25	4	1026	0.9
2025-06-30 19:51:47.566+00	192	\N	1126982881	1897240282	-50	8	1026	0.9
2025-06-30 19:51:47.566+00	192	\N	1126982881	1041420528	-77	4	1026	0.9
2025-06-30 19:52:07.09+00	192	\N	978202981	1126982881	-26	4	1029	0.9
2025-06-30 19:52:07.09+00	192	\N	978202981	1897240282	-41	8	1029	0.9
2025-06-30 19:52:07.09+00	192	\N	978202981	1041420528	-80	4	1029	0.9
2025-06-30 20:47:00.364+00	192	\N	978202981	1126982881	-26	4	1093	0.9
2025-06-30 20:47:00.364+00	192	\N	978202981	1897240282	-41	8	1093	0.9
2025-06-30 20:47:00.364+00	192	\N	978202981	1041420528	-81	4	1093	0.9
2025-07-01 05:45:48.526+00	192	\N	1126982881	1897240282	-63	8	1493	0.9
2025-07-01 05:45:48.526+00	192	\N	1126982881	1041420528	-86	4	1493	0.9
2025-07-01 05:45:48.526+00	192	\N	1126982881	978202981	-87	4	1493	0.9
2025-07-01 20:04:14.705+00	192	\N	1126982881	1897240282	-42	8	2122	0.9
2025-07-01 20:22:46.809+00	192	\N	1126982881	1897240282	-50	8	2154	0.9
2025-07-01 20:22:46.809+00	192	\N	1126982881	1041420528	-76	4	2154	0.9
2025-07-01 20:22:46.809+00	192	\N	1126982881	978202981	-85	4	2154	0.9
2025-07-01 20:30:18.853+00	192	\N	1126982881	1897240282	-47	8	2164	0.9
2025-07-01 20:30:18.853+00	192	\N	1126982881	978202981	-77	4	2164	0.9
2025-07-01 20:30:18.853+00	192	\N	1126982881	1041420528	-84	4	2164	0.9
2025-07-01 21:26:04.202+00	192	\N	1126982881	1897240282	-52	8	2214	0.9
2025-07-01 21:26:04.202+00	192	\N	1126982881	978202981	-81	4	2214	0.9
2025-07-01 21:38:35.266+00	192	\N	1126982881	1897240282	-63	8	2229	0.9
2025-07-01 21:38:35.266+00	192	\N	1126982881	978202981	-77	4	2229	0.9
2025-07-02 07:04:59.339+00	192	\N	978202981	1126982881	-63	4	2657	0.9
2025-07-02 07:04:59.339+00	192	\N	978202981	1897240282	-73	8	2657	0.9
2025-07-02 07:04:59.339+00	192	\N	978202981	1041420528	-75	4	2657	0.9
2025-07-02 07:05:06.047+00	192	\N	1126982881	1041420528	-59	4	2660	0.9
2025-07-02 07:05:06.047+00	192	\N	1126982881	978202981	-62	4	2660	0.9
2025-07-02 07:05:06.047+00	192	\N	1126982881	1897240282	-77	8	2660	0.9
2025-07-02 07:05:06.451+00	192	\N	1041420528	1126982881	-58	4	2663	0.9
2025-07-02 07:05:06.451+00	192	\N	1041420528	978202981	-75	4	2663	0.9
2025-07-02 07:05:06.451+00	192	\N	1041420528	1897240282	-85	8	2663	0.9
2025-07-02 09:18:36.831+00	192	\N	1126982881	1897240282	-48	8	2757	0.9
2025-07-02 09:18:36.831+00	192	\N	1126982881	978202981	-87	4	2757	0.9
2025-07-02 09:18:36.831+00	192	\N	1126982881	1041420528	-91	4	2757	0.9
2025-07-02 09:23:28.881+00	192	\N	1126982881	1897240282	-50	8	2768	0.9
2025-07-02 09:23:28.881+00	192	\N	1126982881	1041420528	-81	4	2768	0.9
2025-07-02 09:28:29.936+00	192	\N	1126982881	1897240282	-51	8	2781	0.9
2025-07-02 09:28:29.936+00	192	\N	1126982881	1041420528	-75	4	2781	0.9
2025-07-02 09:28:29.936+00	192	\N	1126982881	978202981	-80	4	2781	0.9
2025-07-02 09:30:22.954+00	192	\N	1126982881	1897240282	-53	8	2790	0.9
2025-07-02 09:30:22.954+00	192	\N	1126982881	1041420528	-90	4	2790	0.9
2025-07-02 09:30:22.954+00	192	\N	1126982881	978202981	-91	4	2790	0.9
2025-07-02 09:40:58.102+00	192	\N	1126982881	1897240282	-50	8	2809	0.9
2025-07-02 09:40:58.102+00	192	\N	1126982881	1041420528	-88	4	2809	0.9
2025-07-02 09:43:12.109+00	192	\N	1126982881	1897240282	-77	8	2820	0.9
2025-07-02 09:48:25.165+00	192	\N	1126982881	1897240282	-84	8	2838	0.9
2025-07-02 09:50:08.178+00	192	\N	1126982881	1897240282	-79	8	2844	0.9
2025-07-02 09:50:08.178+00	192	\N	1126982881	978202981	-88	4	2844	0.9
2025-07-02 09:55:46.213+00	192	\N	1126982881	1897240282	-64	8	2861	0.9
2025-07-02 09:55:46.213+00	192	\N	1126982881	978202981	-87	4	2861	0.9
2025-07-02 10:02:43.248+00	192	\N	1126982881	1897240282	-47	8	2873	0.9
2025-07-02 10:02:43.248+00	192	\N	1126982881	1041420528	-84	4	2873	0.9
2025-07-02 10:02:43.248+00	192	\N	1126982881	978202981	-91	4	2873	0.9
2025-07-02 10:14:10.337+00	192	\N	1126982881	1897240282	-48	8	2897	0.9
2025-07-02 10:35:26.447+00	192	\N	1126982881	1897240282	-61	8	2924	0.9
2025-07-02 10:42:34.486+00	192	\N	1126982881	1897240282	-60	8	2932	0.9
2025-07-02 11:42:11.899+00	192	\N	1126982881	1897240282	-64	8	2976	0.9
2025-07-02 11:43:39.911+00	192	\N	1126982881	1897240282	-55	8	2982	0.9
2025-07-02 11:43:39.911+00	192	\N	1126982881	1041420528	-77	4	2982	0.9
2025-07-02 11:43:39.911+00	192	\N	1126982881	978202981	-83	4	2982	0.9
2025-07-02 11:45:40.919+00	192	\N	1126982881	1897240282	-64	8	2989	0.9
2025-07-02 11:45:40.919+00	192	\N	1126982881	1041420528	-81	4	2989	0.9
2025-07-02 11:47:04.926+00	192	\N	1126982881	1897240282	-50	8	2996	0.9
2025-07-02 11:47:04.926+00	192	\N	1126982881	1041420528	-69	4	2996	0.9
2025-07-02 11:47:04.926+00	192	\N	1126982881	978202981	-82	4	2996	0.9
2025-07-02 11:57:22.979+00	192	\N	1126982881	1897240282	-48	8	3008	0.9
2025-07-02 11:57:22.979+00	192	\N	1126982881	1041420528	-84	4	3008	0.9
2025-07-02 12:19:16.065+00	192	\N	1126982881	1897240282	-61	8	3031	0.9
2025-07-02 12:19:16.065+00	192	\N	1126982881	1041420528	-74	4	3031	0.9
2025-07-02 12:19:16.065+00	192	\N	1126982881	978202981	-81	4	3031	0.9
2025-07-02 13:24:56.367+00	192	\N	1126982881	1897240282	-50	8	3081	0.9
2025-07-02 13:24:56.367+00	192	\N	1126982881	978202981	-87	4	3081	0.9
2025-07-02 13:54:25.551+00	192	\N	1126982881	1897240282	-63	8	3109	0.9
2025-07-02 13:54:25.551+00	192	\N	1126982881	978202981	-87	4	3109	0.9
2025-07-02 13:54:25.551+00	192	\N	1126982881	1041420528	-90	4	3109	0.9
2025-07-02 14:00:26.591+00	192	\N	1126982881	1897240282	-53	8	3124	0.9
2025-07-02 14:00:26.591+00	192	\N	1126982881	1041420528	-78	4	3124	0.9
2025-07-02 14:00:26.591+00	192	\N	1126982881	978202981	-87	4	3124	0.9
2025-07-02 14:02:41.611+00	192	\N	1126982881	1897240282	-53	8	3129	0.9
2025-07-02 15:37:44.295+00	192	\N	1126982881	1897240282	-51	8	3207	0.9
2025-07-02 15:37:44.295+00	192	\N	1126982881	1041420528	-84	4	3207	0.9
2025-07-02 15:37:44.295+00	192	\N	1126982881	978202981	-91	4	3207	0.9
2025-07-02 15:41:25.336+00	192	\N	1126982881	1897240282	-50	8	3215	0.9
2025-07-02 15:41:25.336+00	192	\N	1126982881	1041420528	-85	4	3215	0.9
2025-07-02 15:41:25.336+00	192	\N	1126982881	978202981	-88	4	3215	0.9
2025-07-02 15:45:51.388+00	192	\N	1126982881	1897240282	-50	8	3225	0.9
2025-07-02 15:45:51.388+00	192	\N	1126982881	1041420528	-80	4	3225	0.9
2025-07-02 15:45:51.388+00	192	\N	1126982881	978202981	-89	4	3225	0.9
2025-07-02 15:48:09.399+00	192	\N	1126982881	1897240282	-44	8	3230	0.9
2025-07-02 15:48:09.399+00	192	\N	1126982881	1041420528	-87	4	3230	0.9
2025-07-02 15:52:35.439+00	192	\N	1126982881	1897240282	-44	8	3237	0.9
2025-07-02 15:52:35.439+00	192	\N	1126982881	978202981	-87	4	3237	0.9
2025-07-02 15:52:35.439+00	192	\N	1126982881	1041420528	-87	4	3237	0.9
2025-07-02 15:54:41.453+00	192	\N	1126982881	1897240282	-54	8	3243	0.9
2025-07-02 15:54:41.453+00	192	\N	1126982881	1041420528	-84	4	3243	0.9
2025-07-02 15:54:41.453+00	192	\N	1126982881	978202981	-88	4	3243	0.9
2025-07-02 16:00:02.482+00	192	\N	1126982881	1897240282	-43	8	3252	0.9
2025-07-02 16:00:02.482+00	192	\N	1126982881	1041420528	-80	4	3252	0.9
2025-07-02 16:00:02.482+00	192	\N	1126982881	978202981	-82	4	3252	0.9
2025-07-02 16:08:42.59+00	192	\N	1126982881	1897240282	-44	8	3262	0.9
2025-07-02 16:08:42.59+00	192	\N	1126982881	1041420528	-79	4	3262	0.9
2025-07-02 16:08:42.59+00	192	\N	1126982881	978202981	-84	4	3262	0.9
2025-07-02 16:09:51.607+00	192	\N	1126982881	1897240282	-44	8	3266	0.9
2025-07-02 16:09:51.607+00	192	\N	1126982881	1041420528	-80	4	3266	0.9
2025-07-02 16:09:51.607+00	192	\N	1126982881	978202981	-85	4	3266	0.9
2025-07-02 16:12:57.619+00	192	\N	1126982881	1897240282	-52	8	3270	0.9
2025-07-02 16:12:57.619+00	192	\N	1126982881	1041420528	-78	4	3270	0.9
2025-07-02 16:12:57.619+00	192	\N	1126982881	978202981	-80	4	3270	0.9
2025-07-02 16:23:31.662+00	192	\N	1126982881	1897240282	-53	8	3278	0.9
2025-07-02 16:23:31.662+00	192	\N	1126982881	978202981	-79	4	3278	0.9
2025-07-02 16:23:31.662+00	192	\N	1126982881	1041420528	-80	4	3278	0.9
2025-07-02 16:46:07.775+00	192	\N	1126982881	1897240282	-52	8	3297	0.9
2025-07-02 16:46:07.775+00	192	\N	1126982881	978202981	-78	4	3297	0.9
2025-07-02 16:46:07.775+00	192	\N	1126982881	1041420528	-80	4	3297	0.9
2025-07-02 16:57:55.825+00	192	\N	1126982881	1897240282	-51	8	3308	0.9
2025-07-02 16:57:55.825+00	192	\N	1126982881	978202981	-78	4	3308	0.9
2025-07-02 16:57:55.825+00	192	\N	1126982881	1041420528	-80	4	3308	0.9
2025-07-02 17:00:45.837+00	192	\N	1126982881	1897240282	-51	8	3313	0.9
2025-07-02 17:00:45.837+00	192	\N	1126982881	978202981	-80	4	3313	0.9
2025-07-02 17:00:45.837+00	192	\N	1126982881	1041420528	-81	4	3313	0.9
2025-07-02 17:24:03.948+00	192	\N	1126982881	1897240282	-51	8	3329	0.9
2025-07-02 17:24:03.948+00	192	\N	1126982881	978202981	-79	4	3329	0.9
2025-07-02 17:24:03.948+00	192	\N	1126982881	1041420528	-83	4	3329	0.9
2025-07-02 17:25:29.951+00	192	\N	1126982881	1897240282	-50	8	3335	0.9
2025-07-02 17:25:29.951+00	192	\N	1126982881	978202981	-78	4	3335	0.9
2025-07-02 17:25:29.951+00	192	\N	1126982881	1041420528	-80	4	3335	0.9
2025-07-02 19:26:19.636+00	192	\N	1126982881	1897240282	-50	8	3413	0.9
2025-07-02 19:26:19.636+00	192	\N	1126982881	978202981	-79	4	3413	0.9
2025-07-02 19:26:19.636+00	192	\N	1126982881	1041420528	-84	4	3413	0.9
2025-07-02 22:38:04.693+00	192	\N	1126982881	1897240282	-47	8	3551	0.9
2025-07-02 22:38:04.693+00	192	\N	1126982881	978202981	-76	4	3551	0.9
2025-07-02 22:38:04.693+00	192	\N	1126982881	1041420528	-81	4	3551	0.9
2025-07-02 23:18:35.934+00	192	\N	1126982881	1897240282	-47	8	3580	0.9
2025-07-02 23:18:35.934+00	192	\N	1126982881	978202981	-77	4	3580	0.9
2025-07-02 23:18:35.934+00	192	\N	1126982881	1041420528	-81	4	3580	0.9
\.


--
-- Data for Name: _hyper_6_12_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_6_12_chunk ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
2025-07-03 07:56:04.771+00	116	\N	1041420528	96682	3959	0.9
2025-07-03 07:56:08.473+00	116	\N	1126982881	96661	3960	0.9
2025-07-03 07:56:13.828+00	116	\N	978202981	96673	3961	0.9
2025-07-03 08:26:54.511+00	116	\N	1126982881	96679	3978	0.9
2025-07-03 08:26:50.829+00	116	\N	1041420528	96700	3979	0.9
2025-07-03 08:26:59.898+00	116	\N	978202981	96690	3980	0.9
2025-07-03 08:57:40.545+00	116	\N	1126982881	96680	3997	0.9
2025-07-03 08:57:36.866+00	116	\N	1041420528	96699	3998	0.9
2025-07-03 08:57:45.924+00	116	\N	978202981	96689	3999	0.9
2025-07-03 09:28:26.591+00	116	\N	1126982881	96672	4017	0.9
2025-07-03 09:28:22.895+00	116	\N	1041420528	96689	4018	0.9
2025-07-03 09:28:31.966+00	116	\N	978202981	96679	4019	0.9
2025-07-03 09:59:08.967+00	116	\N	1041420528	96686	4039	0.9
2025-07-03 09:59:12.614+00	116	\N	1126982881	96671	4040	0.9
2025-07-03 09:59:18.029+00	116	\N	978202981	96677	4041	0.9
2025-07-03 10:29:54.989+00	116	\N	1041420528	96697	4058	0.9
2025-07-03 10:29:58.67+00	116	\N	1126982881	96679	4059	0.9
2025-07-03 10:30:04.077+00	116	\N	978202981	96687	4060	0.9
2025-07-03 11:00:41.041+00	116	\N	1041420528	96692	4079	0.9
2025-07-03 11:00:44.701+00	116	\N	1126982881	96675	4080	0.9
2025-07-03 11:00:50.14+00	116	\N	978202981	96683	4081	0.9
2025-07-03 11:31:27.08+00	116	\N	1041420528	96679	4099	0.9
2025-07-03 11:31:30.724+00	116	\N	1126982881	96662	4100	0.9
2025-07-03 11:31:36.19+00	116	\N	978202981	96671	4101	0.9
2025-07-03 12:02:13.119+00	116	\N	1041420528	96651	4120	0.9
2025-07-03 12:02:16.76+00	116	\N	1126982881	96634	4121	0.9
2025-07-03 12:02:22.238+00	116	\N	978202981	96643	4122	0.9
2025-07-03 12:32:59.155+00	116	\N	1041420528	96621	4139	0.9
2025-07-03 12:33:02.806+00	116	\N	1126982881	96611	4140	0.9
2025-07-03 12:33:08.288+00	116	\N	978202981	96613	4141	0.9
2025-07-03 15:06:49.359+00	116	\N	1041420528	96553	4236	0.9
2025-07-03 15:06:52.995+00	116	\N	1126982881	96533	4237	0.9
2025-07-03 15:06:58.51+00	116	\N	978202981	96544	4238	0.9
2025-07-03 15:37:35.404+00	116	\N	1041420528	96563	4254	0.9
2025-07-03 15:37:39.03+00	116	\N	1126982881	96544	4255	0.9
2025-07-03 15:37:44.573+00	116	\N	978202981	96554	4256	0.9
2025-07-03 16:08:21.459+00	116	\N	1041420528	96565	4289	0.9
2025-07-03 16:08:30.629+00	116	\N	978202981	96558	4291	0.9
2025-07-03 16:08:25.088+00	116	\N	1126982881	96547	4292	0.9
2025-07-03 16:39:07.494+00	116	\N	1041420528	96567	4310	0.9
2025-07-03 16:39:11.145+00	116	\N	1126982881	96545	4311	0.9
2025-07-03 16:39:16.664+00	116	\N	978202981	96557	4312	0.9
2025-07-03 17:09:53.552+00	116	\N	1041420528	96561	4328	0.9
2025-07-03 17:09:57.181+00	116	\N	1126982881	96540	4329	0.9
2025-07-03 17:10:02.713+00	116	\N	978202981	96552	4330	0.9
2025-07-03 17:40:39.604+00	116	\N	1041420528	96568	4346	0.9
2025-07-03 17:40:43.223+00	116	\N	1126982881	96547	4347	0.9
2025-07-03 17:40:48.751+00	116	\N	978202981	96558	4348	0.9
2025-07-03 18:11:25.668+00	116	\N	1041420528	96578	4365	0.9
2025-07-03 18:11:29.257+00	116	\N	1126982881	96557	4366	0.9
2025-07-03 18:11:34.79+00	116	\N	978202981	96568	4367	0.9
2025-07-03 18:42:11.705+00	116	\N	1041420528	96608	4409	0.9
2025-07-03 18:42:15.307+00	116	\N	1126982881	96589	4410	0.9
2025-07-03 18:42:20.829+00	116	\N	978202981	96598	4411	0.9
2025-07-03 19:12:57.756+00	116	\N	1041420528	96635	4435	0.9
2025-07-03 19:13:01.35+00	116	\N	1126982881	96614	4436	0.9
2025-07-03 19:13:06.871+00	116	\N	978202981	96625	4437	0.9
2025-07-03 19:43:43.79+00	116	\N	1041420528	96679	4465	0.9
2025-07-03 19:43:47.387+00	116	\N	1126982881	96656	4467	0.9
2025-07-03 19:43:52.9+00	116	\N	978202981	96669	4468	0.9
2025-07-03 20:14:29.834+00	116	\N	1041420528	96711	4487	0.9
2025-07-03 20:14:33.419+00	116	\N	1126982881	96689	4488	0.9
2025-07-03 20:14:38.939+00	116	\N	978202981	96700	4489	0.9
2025-07-03 20:45:15.871+00	116	\N	1041420528	96732	4522	0.9
2025-07-03 20:45:19.452+00	116	\N	1126982881	96710	4523	0.9
2025-07-03 20:45:24.964+00	116	\N	978202981	96722	4524	0.9
2025-07-03 21:16:01.919+00	116	\N	1041420528	96749	4553	0.9
2025-07-03 21:16:05.477+00	116	\N	1126982881	96726	4554	0.9
2025-07-03 21:16:11.037+00	116	\N	978202981	96738	4556	0.9
2025-07-03 21:46:47.948+00	116	\N	1041420528	96747	4591	0.9
2025-07-03 21:46:51.537+00	116	\N	1126982881	96724	4592	0.9
2025-07-03 21:46:57.081+00	116	\N	978202981	96736	4593	0.9
2025-07-03 22:17:33.992+00	116	\N	1041420528	96759	4626	0.9
2025-07-03 22:17:37.571+00	116	\N	1126982881	96736	4627	0.9
2025-07-03 22:17:43.126+00	116	\N	978202981	96748	4629	0.9
2025-07-03 22:48:20.039+00	116	\N	1041420528	96752	4684	0.9
2025-07-03 22:48:23.598+00	116	\N	1126982881	96729	4685	0.9
2025-07-03 22:48:29.158+00	116	\N	978202981	96741	4686	0.9
2025-07-03 23:19:06.074+00	116	\N	1041420528	96783	4726	0.9
2025-07-03 23:19:09.644+00	116	\N	1126982881	96762	4727	0.9
2025-07-03 23:19:15.198+00	116	\N	978202981	96772	4728	0.9
2025-07-03 23:49:52.131+00	116	\N	1041420528	96768	4795	0.9
2025-07-03 23:49:55.677+00	116	\N	1126982881	96750	4799	0.9
2025-07-03 23:50:01.231+00	116	\N	978202981	96758	4801	0.9
2025-07-04 00:20:38.2+00	116	\N	1041420528	96785	4829	0.9
2025-07-04 00:20:41.735+00	116	\N	1126982881	96760	4830	0.9
2025-07-04 00:20:47.255+00	116	\N	978202981	96773	4831	0.9
2025-07-04 05:28:18.633+00	116	\N	1041420528	96844	5041	0.9
2025-07-04 05:28:22.114+00	116	\N	1126982881	96818	5042	0.9
2025-07-04 05:28:27.753+00	116	\N	978202981	96834	5043	0.9
2025-07-04 10:05:13+00	116	\N	1041420528	96815	5261	0.9
2025-07-04 10:05:16.439+00	116	\N	1126982881	96792	5262	0.9
2025-07-04 10:05:22.154+00	116	\N	978202981	96809	5263	0.9
2025-07-04 11:06:45.074+00	116	\N	1041420528	96782	5335	0.9
2025-07-04 11:06:48.533+00	116	\N	1126982881	96759	5336	0.9
2025-07-04 11:06:54.263+00	116	\N	978202981	96777	5337	0.9
2025-07-04 11:37:31.109+00	116	\N	1041420528	96767	5398	0.9
2025-07-04 11:37:34.594+00	116	\N	1126982881	96743	5399	0.9
2025-07-04 11:37:40.295+00	116	\N	978202981	96760	5400	0.9
2025-07-04 12:08:17.16+00	116	\N	1041420528	96728	5420	0.9
2025-07-04 12:08:20.628+00	116	\N	1126982881	96703	5421	0.9
2025-07-04 12:08:26.343+00	116	\N	978202981	96722	5422	0.9
2025-07-04 14:11:21.331+00	116	\N	1041420528	96583	5577	0.9
2025-07-04 14:11:24.776+00	116	\N	1126982881	96559	5578	0.9
2025-07-04 14:11:30.547+00	116	\N	978202981	96569	5579	0.9
2025-07-04 14:42:07.398+00	116	\N	1041420528	96562	5602	0.9
2025-07-04 14:42:10.796+00	116	\N	1126982881	96537	5603	0.9
2025-07-04 14:42:16.602+00	116	\N	978202981	96545	5604	0.9
2025-07-04 15:20:30.789+00	116	\N	1126982881	95522	5668	0.9
2025-07-04 15:21:01.058+00	116	\N	1126982881	96510	5671	0.9
2025-07-04 18:17:38.889+00	116	telegraf	978202981	96467	6099	1
2025-07-04 18:25:37.343+00	116	telegraf	1126982881	96474	6111	1
2025-07-04 19:49:47.856+00	116	telegraf	1041420528	96538	6223	1
2025-07-04 19:49:57.059+00	116	telegraf	978202981	96516	6225	1
2025-07-04 20:20:33.9+00	116	telegraf	1041420528	96560	6271	1
2025-07-04 20:20:43.106+00	116	telegraf	978202981	96540	6274	1
2025-07-04 20:51:19.949+00	116	telegraf	1041420528	96562	6355	1
2025-07-04 20:51:29.159+00	116	telegraf	978202981	96545	6356	1
2025-07-04 20:59:27.557+00	116	telegraf	1126982881	96532	6368	1
2025-07-04 21:22:05.99+00	116	telegraf	1041420528	96569	6398	1
2025-07-04 21:30:13.589+00	116	telegraf	1126982881	96552	6408	1
2025-07-04 21:52:52.047+00	116	telegraf	1041420528	96570	6437	1
2025-07-04 22:00:59.629+00	116	telegraf	1126982881	96536	6446	1
2025-07-04 22:23:38.076+00	116	telegraf	1041420528	96561	6471	1
2025-07-04 22:23:47.301+00	116	telegraf	978202981	96546	6472	1
2025-07-04 22:31:45.704+00	116	telegraf	1126982881	96525	6478	1
2025-07-04 22:54:33.346+00	116	telegraf	978202981	96519	6512	1
2025-07-04 23:02:31.736+00	116	telegraf	1126982881	96499	6519	1
2025-07-05 07:37:26.803+00	116	telegraf	1041420528	96387	6917	1
2025-07-05 07:37:36.235+00	116	telegraf	978202981	96374	6919	1
2025-07-05 07:45:34.424+00	116	telegraf	1126982881	96356	6922	1
2025-07-05 08:47:06.509+00	116	telegraf	1126982881	96365	6964	1
2025-07-05 09:09:54.365+00	116	telegraf	978202981	96375	6979	1
2025-07-05 09:40:40.431+00	116	telegraf	978202981	96354	7000	1
2025-07-05 10:11:26.477+00	116	telegraf	978202981	96347	7020	1
2025-07-05 10:19:24.616+00	116	telegraf	1126982881	96330	7028	1
2025-07-05 10:42:03.039+00	116	telegraf	1041420528	96356	7039	1
2025-07-05 10:42:12.542+00	116	telegraf	978202981	96343	7040	1
2025-07-05 12:14:21.163+00	116	telegraf	1041420528	96286	7099	1
2025-07-05 12:14:30.696+00	116	telegraf	978202981	96272	7100	1
2025-07-05 12:22:28.807+00	116	telegraf	1126982881	96266	7106	1
2025-07-05 12:45:07.204+00	116	telegraf	1041420528	96268	7119	1
2025-07-05 12:45:16.751+00	116	telegraf	978202981	96256	7120	1
2025-07-05 12:53:14.839+00	116	telegraf	1126982881	96233	7128	1
2025-07-05 13:15:53.259+00	116	telegraf	1041420528	96221	7142	1
2025-07-05 13:16:02.779+00	116	telegraf	978202981	96209	7143	1
2025-07-05 13:24:00.885+00	116	telegraf	1126982881	96188	7147	1
2025-07-05 13:46:48.83+00	116	telegraf	978202981	96182	7164	1
2025-07-05 13:54:46.913+00	116	telegraf	1126982881	96157	7166	1
2025-07-05 14:17:25.325+00	116	telegraf	1041420528	96158	7181	1
2025-07-05 14:17:34.865+00	116	telegraf	978202981	96145	7182	1
2025-07-05 14:25:32.959+00	116	telegraf	1126982881	96120	7185	1
2025-07-05 14:48:11.362+00	116	telegraf	1041420528	96123	7200	1
2025-07-05 14:48:20.918+00	116	telegraf	978202981	96112	7201	1
2025-07-05 14:56:18.982+00	116	telegraf	1126982881	96098	7207	1
2025-07-05 15:18:57.41+00	116	telegraf	1041420528	96114	7220	1
2025-07-05 15:19:06.99+00	116	telegraf	978202981	96101	7221	1
2025-07-05 15:27:05.036+00	116	telegraf	1126982881	96092	7227	1
2025-07-05 15:49:43.477+00	116	telegraf	1041420528	96103	7238	1
2025-07-05 15:49:53.063+00	116	telegraf	978202981	96091	7239	1
2025-07-05 15:57:51.067+00	116	telegraf	1126982881	96079	7245	1
2025-07-05 16:51:15.567+00	116	telegraf	1041420528	96096	7276	1
2025-07-05 16:51:25.169+00	116	telegraf	978202981	96086	7277	1
2025-07-05 16:59:23.142+00	116	telegraf	1126982881	96065	7283	1
2025-07-05 17:30:09.195+00	116	telegraf	1126982881	96074	7305	1
2025-07-05 17:52:47.682+00	116	telegraf	1041420528	96104	7316	1
2025-07-05 18:00:55.22+00	116	telegraf	1126982881	96082	7323	1
2025-07-05 19:25:15.385+00	116	telegraf	978202981	96057	7404	1
2025-07-05 19:33:13.34+00	116	telegraf	1126982881	96037	7417	1
2025-07-05 19:55:51.815+00	116	telegraf	1041420528	96085	7436	1
2025-07-05 19:56:01.44+00	116	telegraf	978202981	96071	7439	1
2025-07-05 20:03:59.393+00	116	telegraf	1126982881	96066	7448	1
2025-07-05 20:26:37.87+00	116	telegraf	1041420528	96115	7472	1
2025-07-05 20:26:47.465+00	116	telegraf	978202981	96101	7474	1
2025-07-05 20:57:23.907+00	116	telegraf	1041420528	96108	7493	1
2025-07-05 20:57:33.5+00	116	telegraf	978202981	96094	7494	1
2025-07-05 21:05:31.461+00	116	telegraf	1126982881	96084	7498	1
2025-07-05 21:28:09.947+00	116	telegraf	1041420528	96110	7518	1
2025-07-05 21:28:19.55+00	116	telegraf	978202981	96096	7520	1
2025-07-05 21:36:17.497+00	116	telegraf	1126982881	96080	7531	1
2025-07-05 21:58:55.981+00	116	telegraf	1041420528	96120	7551	1
2025-07-05 21:59:05.593+00	116	telegraf	978202981	96106	7552	1
2025-07-05 22:07:03.554+00	116	telegraf	1126982881	96098	7558	1
2025-07-05 22:29:42.051+00	116	telegraf	1041420528	96106	7577	1
2025-07-05 22:29:51.627+00	116	telegraf	978202981	96092	7578	1
2025-07-05 22:37:49.574+00	116	telegraf	1126982881	96072	7584	1
2025-07-05 23:00:28.102+00	116	telegraf	1041420528	96084	7599	1
2025-07-05 23:00:37.667+00	116	telegraf	978202981	96070	7600	1
2025-07-05 23:08:35.612+00	116	telegraf	1126982881	96049	7605	1
2025-07-05 23:31:14.128+00	116	telegraf	1041420528	96057	7622	1
2025-07-05 23:31:23.697+00	116	telegraf	978202981	96043	7623	1
2025-07-07 09:07:45.601+00	116	telegraf	1041420528	100312	2	1
2025-07-07 09:07:18.53+00	116	telegraf	1126982881	100284	14	1
2025-07-07 09:07:55.455+00	116	telegraf	978202981	100301	15	1
2025-07-07 09:25:35.432+00	116	telegraf	527134251	100317	195	1
2025-07-07 09:27:09.246+00	116	telegraf	1523842139	100315	204	1
2025-07-07 09:27:10.157+00	116	telegraf	840973111	100328	205	1
2025-07-07 09:38:41.589+00	116	telegraf	978202981	100318	63	1
2025-07-07 09:56:21.505+00	116	telegraf	527134251	100321	24	1
2025-07-07 09:57:56.247+00	116	telegraf	840973111	100337	32	1
2025-07-07 09:57:55.387+00	116	telegraf	1523842139	100325	33	1
2025-07-07 09:59:49.046+00	116	telegraf	840973111	100335	41	1
2025-07-07 10:08:50.512+00	116	telegraf	1126982881	100320	107	1
2025-07-07 10:09:27.413+00	116	telegraf	978202981	100338	110	1
2025-07-07 11:10:22.691+00	116	telegraf	1126982881	100357	48	1
2025-07-07 11:10:49.791+00	116	telegraf	1041420528	100383	54	1
2025-07-07 11:10:59.625+00	116	telegraf	978202981	100372	57	1
2025-07-07 11:41:08.723+00	116	telegraf	1126982881	100365	85	1
2025-07-07 11:41:35.849+00	116	telegraf	1041420528	100392	87	1
2025-07-07 11:53:58.145+00	116	telegraf	3839865	100344	120	1
2025-07-07 12:11:54.743+00	116	telegraf	1126982881	100403	143	1
2025-07-07 12:12:21.879+00	116	telegraf	1041420528	100427	145	1
2025-07-07 12:12:31.739+00	116	telegraf	978202981	100417	146	1
2025-07-07 12:24:44.198+00	116	telegraf	3839865	100379	173	1
2025-07-07 12:42:40.832+00	116	telegraf	1126982881	100423	219	1
2025-07-07 12:48:59.52+00	116	telegraf	632461688	100417	234	1
2025-07-07 12:55:30.263+00	116	telegraf	3839865	100396	244	1
2025-07-07 12:57:39.319+00	116	telegraf	791308911	100450	281	1
2025-07-07 13:00:57.735+00	116	telegraf	527134251	100428	299	1
2025-07-07 13:04:25.317+00	116	telegraf	840973111	100439	353	1
2025-07-07 13:04:32.724+00	116	telegraf	1523842139	100430	355	1
2025-07-07 13:13:26.814+00	116	telegraf	1126982881	100427	396	1
2025-07-07 13:13:53.945+00	116	telegraf	1041420528	100449	403	1
2025-07-07 13:14:03.869+00	116	telegraf	978202981	100440	404	1
2025-07-07 13:25:31.352+00	116	telegraf	305822513	100410	488	1
2025-07-07 13:35:18.78+00	116	telegraf	1523842139	100458	556	1
2025-07-07 13:31:43.899+00	116	telegraf	527134251	100457	570	1
2025-07-07 13:44:12.838+00	116	telegraf	1126982881	100476	652	1
2025-07-07 13:44:39.997+00	116	telegraf	1041420528	100500	662	1
2025-07-07 13:56:17.434+00	116	telegraf	305822513	100456	745	1
2025-07-07 13:56:16.245+00	116	telegraf	333419537	100483	749	1
2025-07-07 13:57:02.278+00	116	telegraf	3839865	100449	752	1
2025-07-07 13:59:11.52+00	116	telegraf	791308911	100505	783	1
2025-07-07 13:59:06.697+00	116	telegraf	677224097	100504	784	1
2025-07-07 14:02:29.954+00	116	telegraf	527134251	100503	812	1
2025-07-07 14:05:57.522+00	116	telegraf	840973111	100506	832	1
2025-07-07 14:06:04.836+00	116	telegraf	1523842139	100493	834	1
2025-07-07 14:14:58.933+00	116	telegraf	1126982881	100506	925	1
2025-07-07 14:15:36.003+00	116	telegraf	978202981	100518	948	1
2025-07-07 14:27:03.596+00	116	telegraf	305822513	100497	1020	1
2025-07-07 14:27:48.333+00	116	telegraf	3839865	100492	1026	1
2025-07-07 14:29:52.817+00	116	telegraf	677224097	100542	1040	1
2025-07-07 14:29:57.613+00	116	telegraf	791308911	100545	1041	1
2025-07-07 14:45:44.965+00	116	telegraf	1126982881	100531	1141	1
2025-07-07 14:46:12.136+00	116	telegraf	1041420528	100559	1143	1
2025-07-07 14:51:18.073+00	116	telegraf	517905260	100612	1191	1
2025-07-07 14:52:03.801+00	116	telegraf	632461688	100587	1193	1
2025-07-08 08:02:11.43+00	116	telegraf	333419537	101132	45	1
2025-07-08 08:08:39.584+00	116	telegraf	791308911	101154	74	1
2025-07-08 08:31:16.49+00	116	telegraf	677224097	101145	162	1
2025-07-08 08:32:57.365+00	116	telegraf	333419537	101129	165	1
2025-07-08 08:39:25.624+00	116	telegraf	791308911	101151	178	1
2025-07-08 08:40:20.736+00	116	telegraf	632461688	101123	189	1
2025-07-08 08:41:34.071+00	116	telegraf	305822513	101103	193	1
2025-07-08 08:43:47.325+00	116	telegraf	1523842139	101154	199	1
2025-07-08 08:44:40.324+00	116	telegraf	840973111	101164	201	1
2025-07-08 08:47:15.672+00	116	telegraf	978202981	101142	204	1
2025-07-08 08:48:06.252+00	116	telegraf	1041420528	101159	206	1
2025-07-08 08:48:39.765+00	116	telegraf	1126982881	101128	209	1
2025-07-08 08:48:21.912+00	116	telegraf	3839865	101102	226	1
2025-07-08 09:02:02.635+00	116	telegraf	677224097	101169	256	1
2025-07-08 09:03:43.512+00	116	telegraf	333419537	101160	260	1
2025-07-08 09:10:11.765+00	116	telegraf	791308911	101174	274	1
2025-07-08 09:14:33.538+00	116	telegraf	1523842139	101173	287	1
2025-07-08 09:14:30.223+00	116	telegraf	527134251	101173	288	1
2025-07-08 09:15:26.494+00	116	telegraf	840973111	101177	289	1
2025-07-08 09:11:06.892+00	116	telegraf	632461688	101146	290	1
2025-07-08 09:12:20.226+00	116	telegraf	305822513	101127	291	1
2025-07-08 09:18:01.852+00	116	telegraf	978202981	101163	299	1
2025-07-08 09:18:52.287+00	116	telegraf	1041420528	101173	301	1
2025-07-09 09:23:05.565+00	116	telegraf	978202981	101792	2	1
2025-07-09 09:23:28.636+00	116	telegraf	1126982881	101780	5	1
2025-07-09 09:54:14.63+00	116	telegraf	1126982881	101782	53	1
2025-07-09 10:24:37.596+00	116	telegraf	978202981	101808	106	1
2025-07-09 10:25:00.687+00	116	telegraf	1126982881	101789	107	1
2025-07-09 10:26:58.957+00	116	telegraf	1041420528	101813	119	1
\.


--
-- Data for Name: _hyper_6_20_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_6_20_chunk ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
2025-07-10 07:28:57.056+00	116	telegraf	1041420528	101167	49	1
2025-07-10 07:29:07.106+00	116	telegraf	978202981	101159	51	1
2025-07-10 07:29:29.829+00	116	telegraf	1126982881	101139	55	1
2025-07-10 07:59:43.07+00	116	telegraf	1041420528	101177	85	1
2025-07-10 07:59:53.139+00	116	telegraf	978202981	101169	86	1
2025-07-10 08:00:15.915+00	116	telegraf	1126982881	101151	92	1
2025-07-10 08:30:39.249+00	116	telegraf	978202981	101173	117	1
2025-07-10 08:31:01.961+00	116	telegraf	1126982881	101158	118	1
2025-07-10 09:01:15.172+00	116	telegraf	1041420528	101171	162	1
2025-07-10 09:01:25.301+00	116	telegraf	978202981	101162	163	1
2025-07-10 09:01:47.971+00	116	telegraf	1126982881	101146	165	1
2025-07-10 09:32:01.183+00	116	telegraf	1041420528	101176	184	1
2025-07-10 09:32:11.373+00	116	telegraf	978202981	101166	185	1
2025-07-10 09:32:33.963+00	116	telegraf	1126982881	101151	186	1
2025-07-10 10:03:20.034+00	116	telegraf	1126982881	101142	209	1
2025-07-10 12:05:51.396+00	116	telegraf	1041420528	101102	287	1
2025-07-10 12:06:01.734+00	116	telegraf	978202981	101092	288	1
2025-07-10 12:06:24.2+00	116	telegraf	1126982881	101077	289	1
2025-07-10 12:36:37.43+00	116	telegraf	1041420528	101074	307	1
2025-07-10 12:36:47.804+00	116	telegraf	978202981	101062	308	1
2025-07-10 12:37:10.234+00	116	telegraf	1126982881	101047	309	1
2025-07-10 13:07:23.492+00	116	telegraf	1041420528	101072	328	1
2025-07-10 13:07:33.875+00	116	telegraf	978202981	101061	329	1
2025-07-10 13:07:56.27+00	116	telegraf	1126982881	101047	330	1
2025-07-10 13:38:09.525+00	116	telegraf	1041420528	101044	346	1
2025-07-10 13:38:19.916+00	116	telegraf	978202981	101033	347	1
2025-07-10 13:38:42.311+00	116	telegraf	1126982881	101017	348	1
2025-07-10 14:08:55.557+00	116	telegraf	1041420528	101030	365	1
2025-07-10 14:09:28.371+00	116	telegraf	1126982881	101006	367	1
2025-07-10 14:39:41.59+00	116	telegraf	1041420528	100995	383	1
2025-07-10 14:39:52.031+00	116	telegraf	978202981	100983	384	1
2025-07-10 14:40:14.392+00	116	telegraf	1126982881	100968	385	1
2025-07-10 15:10:38.114+00	116	telegraf	978202981	100943	414	1
2025-07-10 15:11:00.464+00	116	telegraf	1126982881	100928	415	1
2025-07-10 15:41:13.701+00	116	telegraf	1041420528	100936	432	1
2025-07-10 15:41:24.191+00	116	telegraf	978202981	100923	433	1
2025-07-10 15:41:46.495+00	116	telegraf	1126982881	100907	434	1
2025-07-10 16:11:59.764+00	116	telegraf	1041420528	100904	453	1
2025-07-10 16:12:10.265+00	116	telegraf	978202981	100894	454	1
2025-07-10 16:12:32.55+00	116	telegraf	1126982881	100880	455	1
2025-07-10 16:42:45.807+00	116	telegraf	1041420528	100883	478	1
2025-07-10 16:42:56.355+00	116	telegraf	978202981	100872	479	1
2025-07-10 16:43:18.584+00	116	telegraf	1126982881	100857	480	1
2025-07-10 17:13:31.843+00	116	telegraf	1041420528	100870	498	1
2025-07-10 17:13:42.424+00	116	telegraf	978202981	100860	499	1
2025-07-10 17:14:04.59+00	116	telegraf	1126982881	100843	500	1
2025-07-10 17:44:17.881+00	116	telegraf	1041420528	100871	516	1
2025-07-10 17:44:28.492+00	116	telegraf	978202981	100861	517	1
2025-07-10 17:44:50.626+00	116	telegraf	1126982881	100847	518	1
2025-07-11 07:04:15.024+00	116	telegraf	1041420528	100864	13	1
2025-07-11 07:04:25.769+00	116	telegraf	978202981	100855	14	1
2025-07-11 07:04:47.721+00	116	telegraf	1126982881	100839	15	1
2025-07-11 07:35:01.025+00	116	telegraf	1041420528	100863	32	1
2025-07-11 07:35:33.77+00	116	telegraf	1126982881	100839	34	1
2025-07-11 09:07:19.112+00	116	telegraf	1041420528	100848	104	1
2025-07-11 09:07:29.914+00	116	telegraf	978202981	100837	105	1
2025-07-11 09:07:51.89+00	116	telegraf	1126982881	100819	106	1
2025-07-12 05:55:20.74+00	116	telegraf	978202981	95791	15	1
2025-07-12 06:25:58.188+00	116	telegraf	1126982881	95799	33	1
2025-07-12 06:25:55.891+00	116	telegraf	1041420528	95827	34	1
2025-07-12 06:26:06.769+00	116	telegraf	978202981	95814	35	1
2025-07-12 06:56:52.824+00	116	telegraf	978202981	95818	56	1
2025-07-12 07:27:27.964+00	116	telegraf	1041420528	95831	72	1
2025-07-12 07:27:30.27+00	116	telegraf	1126982881	95805	73	1
2025-07-12 07:27:38.851+00	116	telegraf	978202981	95819	74	1
2025-07-12 07:58:24.895+00	116	telegraf	978202981	95810	93	1
2025-07-12 08:29:02.383+00	116	telegraf	1126982881	95776	109	1
2025-07-12 08:29:10.916+00	116	telegraf	978202981	95790	111	1
2025-07-12 08:59:48.452+00	116	telegraf	1126982881	95753	129	1
2025-07-12 08:59:46.087+00	116	telegraf	1041420528	95781	130	1
2025-07-12 08:59:56.999+00	116	telegraf	978202981	95768	131	1
2025-07-12 09:30:34.527+00	116	telegraf	1126982881	95762	150	1
2025-07-12 09:30:43.044+00	116	telegraf	978202981	95777	152	1
2025-07-12 14:07:26.519+00	116	telegraf	1041420528	95565	322	1
2025-07-12 14:07:28.946+00	116	telegraf	1126982881	95538	323	1
2025-07-12 14:07:37.482+00	116	telegraf	978202981	95553	324	1
2025-07-12 14:38:15.023+00	116	telegraf	1126982881	95547	344	1
2025-07-12 14:38:12.548+00	116	telegraf	1041420528	95572	345	1
2025-07-12 14:38:23.516+00	116	telegraf	978202981	95561	346	1
2025-07-12 15:09:01.052+00	116	telegraf	1126982881	95551	366	1
2025-07-12 15:08:58.598+00	116	telegraf	1041420528	95576	367	1
2025-07-12 15:09:09.553+00	116	telegraf	978202981	95565	368	1
2025-07-12 16:41:19.261+00	116	telegraf	1126982881	95490	424	1
2025-07-12 16:41:16.693+00	116	telegraf	1041420528	95515	425	1
2025-07-12 16:41:27.685+00	116	telegraf	978202981	95503	426	1
2025-07-12 17:12:13.712+00	116	telegraf	978202981	95498	445	1
2025-07-12 17:42:51.348+00	116	telegraf	1126982881	95485	463	1
2025-07-12 17:42:48.761+00	116	telegraf	1041420528	95509	464	1
2025-07-12 17:42:59.784+00	116	telegraf	978202981	95498	465	1
2025-07-12 18:13:37.374+00	116	telegraf	1126982881	95495	482	1
2025-07-12 18:13:45.83+00	116	telegraf	978202981	95508	484	1
2025-07-12 18:44:23.431+00	116	telegraf	1126982881	95521	503	1
2025-07-12 18:44:20.876+00	116	telegraf	1041420528	95546	504	1
2025-07-12 18:44:31.886+00	116	telegraf	978202981	95535	505	1
2025-07-12 19:15:06.909+00	116	telegraf	1041420528	95611	523	1
2025-07-12 19:15:17.93+00	116	telegraf	978202981	95601	524	1
2025-07-12 20:16:41.53+00	116	telegraf	1126982881	95683	558	1
2025-07-12 20:16:38.991+00	116	telegraf	1041420528	95708	559	1
2025-07-12 20:47:25.017+00	116	telegraf	1041420528	95737	576	1
2025-07-12 20:47:27.606+00	116	telegraf	1126982881	95712	577	1
2025-07-12 20:47:36.054+00	116	telegraf	978202981	95725	578	1
2025-07-12 21:18:13.629+00	116	telegraf	1126982881	95733	594	1
2025-07-12 21:18:22.1+00	116	telegraf	978202981	95747	595	1
2025-07-12 21:18:11.08+00	116	telegraf	1041420528	95757	596	1
2025-07-12 21:48:57.106+00	116	telegraf	1041420528	95746	615	1
2025-07-12 21:49:08.139+00	116	telegraf	978202981	95735	616	1
2025-07-13 06:32:02.517+00	116	telegraf	1126982881	95775	937	1
2025-07-13 06:31:59.781+00	116	telegraf	1041420528	95800	938	1
2025-07-13 06:32:10.912+00	116	telegraf	978202981	95789	939	1
2025-07-13 07:02:48.608+00	116	telegraf	1126982881	95771	959	1
2025-07-13 07:02:45.817+00	116	telegraf	1041420528	95796	960	1
2025-07-13 07:02:56.958+00	116	telegraf	978202981	95786	961	1
2025-07-13 07:33:42.995+00	116	telegraf	978202981	95785	982	1
2025-07-13 10:07:24.939+00	116	telegraf	1126982881	95762	1073	1
2025-07-13 10:07:22.088+00	116	telegraf	1041420528	95787	1074	1
2025-07-13 10:07:33.258+00	116	telegraf	978202981	95775	1075	1
2025-07-13 10:38:10.988+00	116	telegraf	1126982881	95757	1094	1
2025-07-13 10:38:08.123+00	116	telegraf	1041420528	95782	1095	1
2025-07-13 10:38:19.297+00	116	telegraf	978202981	95771	1096	1
2025-07-13 11:08:57.044+00	116	telegraf	1126982881	95751	1114	1
2025-07-13 11:08:54.171+00	116	telegraf	1041420528	95776	1115	1
2025-07-13 11:09:05.347+00	116	telegraf	978202981	95766	1116	1
2025-07-13 11:39:40.225+00	116	telegraf	1041420528	95764	1135	1
2025-07-13 11:39:43.09+00	116	telegraf	1126982881	95741	1136	1
2025-07-13 11:39:51.382+00	116	telegraf	978202981	95753	1137	1
2025-07-13 12:10:29.135+00	116	telegraf	1126982881	95735	1153	1
2025-07-13 12:10:26.288+00	116	telegraf	1041420528	95759	1154	1
2025-07-13 12:10:37.452+00	116	telegraf	978202981	95750	1155	1
2025-07-13 13:12:01.207+00	116	telegraf	1126982881	95739	1196	1
2025-07-13 13:11:58.448+00	116	telegraf	1041420528	95763	1198	1
2025-07-13 14:44:19.36+00	116	telegraf	1126982881	95731	1255	1
2025-07-13 14:44:16.597+00	116	telegraf	1041420528	95755	1256	1
2025-07-13 14:44:27.693+00	116	telegraf	978202981	95746	1257	1
2025-07-14 08:10:25.101+00	116	telegraf	1126982881	96504	1912	1
2025-07-14 08:10:22.149+00	116	telegraf	1041420528	96528	1913	1
2025-07-14 08:10:33.457+00	116	telegraf	978202981	96518	1914	1
2025-07-15 08:47:12.326+00	116	telegraf	1041420528	96603	2814	1
2025-07-15 08:47:15.257+00	116	telegraf	1126982881	96579	2815	1
2025-07-15 08:47:24.093+00	116	telegraf	978202981	96593	2816	1
2025-07-16 07:21:01.533+00	116	telegraf	1126982881	96477	3750	1
2025-07-16 07:21:10.232+00	116	telegraf	978202981	96491	3752	1
2025-07-16 08:53:19.727+00	116	telegraf	1126982881	96459	3811	1
2025-07-16 08:53:16.502+00	116	telegraf	1041420528	96485	3812	1
2025-07-16 08:53:28.388+00	116	telegraf	978202981	96474	3813	1
2025-07-16 12:28:38.809+00	116	telegraf	1041420528	96330	3943	1
2025-07-16 12:28:42.148+00	116	telegraf	1126982881	96304	3944	1
2025-07-16 12:28:50.669+00	116	telegraf	978202981	96321	3945	1
2025-07-16 12:59:28.192+00	116	telegraf	1126982881	96281	3962	1
2025-07-16 12:59:24.837+00	116	telegraf	1041420528	96308	3963	1
2025-07-16 13:30:14.22+00	116	telegraf	1126982881	96254	3980	1
2025-07-16 13:30:10.89+00	116	telegraf	1041420528	96280	3981	1
2025-07-16 14:01:00.276+00	116	telegraf	1126982881	96267	3998	1
2025-07-16 14:00:56.928+00	116	telegraf	1041420528	96293	3999	1
2025-07-16 14:01:08.832+00	116	telegraf	978202981	96282	4000	1
2025-07-16 14:31:42.973+00	116	telegraf	1041420528	96257	4018	1
2025-07-16 14:31:46.345+00	116	telegraf	1126982881	96231	4019	1
2025-07-16 14:31:54.881+00	116	telegraf	978202981	96245	4020	1
2025-07-16 15:02:32.414+00	116	telegraf	1126982881	96223	4036	1
2025-07-16 15:02:29.016+00	116	telegraf	1041420528	96250	4037	1
2025-07-16 15:02:40.947+00	116	telegraf	978202981	96238	4038	1
2025-07-16 15:33:26.999+00	116	telegraf	978202981	96210	4057	1
2025-07-16 16:04:04.545+00	116	telegraf	1126982881	96205	4074	1
2025-07-16 16:04:01.092+00	116	telegraf	1041420528	96231	4075	1
2025-07-16 16:04:13.061+00	116	telegraf	978202981	96219	4076	1
2025-07-16 18:07:08.739+00	116	telegraf	1126982881	96218	4152	1
2025-07-16 18:07:05.284+00	116	telegraf	1041420528	96244	4153	1
2025-07-16 18:37:54.84+00	116	telegraf	1126982881	96233	4172	1
2025-07-16 18:38:03.354+00	116	telegraf	978202981	96246	4174	1
2025-07-16 19:08:37.388+00	116	telegraf	1041420528	96280	4193	1
2025-07-16 19:08:40.899+00	116	telegraf	1126982881	96255	4194	1
2025-07-16 19:39:26.963+00	116	telegraf	1126982881	96256	4215	1
2025-07-16 19:39:23.469+00	116	telegraf	1041420528	96282	4216	1
2025-07-16 19:39:35.476+00	116	telegraf	978202981	96270	4218	1
2025-07-16 20:10:13.013+00	116	telegraf	1126982881	96266	4242	1
2025-07-16 20:10:09.491+00	116	telegraf	1041420528	96293	4243	1
2025-07-16 20:10:21.531+00	116	telegraf	978202981	96280	4244	1
\.


--
-- Data for Name: _hyper_6_25_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_6_25_chunk ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
2025-07-17 05:54:44.234+00	116	telegraf	1041420528	96233	4605	1
2025-07-17 05:54:48.193+00	116	telegraf	1126982881	96207	4606	1
2025-07-17 05:54:56.565+00	116	telegraf	978202981	96222	4607	1
2025-07-17 06:25:34.211+00	116	telegraf	1126982881	96224	4626	1
2025-07-17 06:25:30.253+00	116	telegraf	1041420528	96249	4628	1
2025-07-17 06:25:42.636+00	116	telegraf	978202981	96238	4629	1
2025-07-17 06:56:28.667+00	116	telegraf	978202981	96232	4652	1
2025-07-17 07:27:06.317+00	116	telegraf	1126982881	96219	4669	1
2025-07-17 07:27:02.317+00	116	telegraf	1041420528	96244	4670	1
2025-07-17 07:57:48.373+00	116	telegraf	1041420528	96256	4688	1
2025-07-17 07:57:52.385+00	116	telegraf	1126982881	96231	4689	1
2025-07-17 07:58:00.782+00	116	telegraf	978202981	96245	4690	1
2025-07-17 08:28:46.841+00	116	telegraf	978202981	96239	4709	1
2025-07-17 08:59:24.469+00	116	telegraf	1126982881	96219	4726	1
2025-07-17 08:59:20.479+00	116	telegraf	1041420528	96244	4727	1
2025-07-17 08:59:32.87+00	116	telegraf	978202981	96234	4728	1
2025-07-17 09:30:10.535+00	116	telegraf	1126982881	96198	4744	1
2025-07-17 09:30:06.499+00	116	telegraf	1041420528	96222	4745	1
2025-07-17 09:30:18.909+00	116	telegraf	978202981	96211	4746	1
2025-07-17 10:00:52.536+00	116	telegraf	1041420528	96222	4762	1
2025-07-17 10:00:56.6+00	116	telegraf	1126982881	96198	4763	1
2025-07-17 10:31:42.633+00	116	telegraf	1126982881	96174	4780	1
2025-07-17 10:31:38.567+00	116	telegraf	1041420528	96199	4781	1
2025-07-17 11:02:28.687+00	116	telegraf	1126982881	96157	4801	1
2025-07-17 11:02:24.616+00	116	telegraf	1041420528	96182	4802	1
2025-07-17 12:34:46.849+00	116	telegraf	1126982881	96082	4859	1
2025-07-17 12:34:42.729+00	116	telegraf	1041420528	96106	4860	1
2025-07-17 12:34:55.21+00	116	telegraf	978202981	96100	4861	1
2025-07-17 13:05:32.921+00	116	telegraf	1126982881	96081	4877	1
2025-07-17 13:05:28.777+00	116	telegraf	1041420528	96106	4878	1
2025-07-17 13:05:41.252+00	116	telegraf	978202981	96095	4879	1
2025-07-17 13:36:18.975+00	116	telegraf	1126982881	96066	4896	1
2025-07-17 13:36:14.85+00	116	telegraf	1041420528	96092	4897	1
2025-07-17 13:36:27.294+00	116	telegraf	978202981	96080	4898	1
2025-07-17 14:07:05.031+00	116	telegraf	1126982881	96062	4916	1
2025-07-17 14:07:13.32+00	116	telegraf	978202981	96075	4917	1
2025-07-17 15:28:53.966+00	116	telegraf	1523842139	100290	98	1
2025-07-17 15:33:19.417+00	116	telegraf	527134251	100293	107	1
2025-07-17 15:39:23.231+00	116	telegraf	1126982881	96039	4974	1
2025-07-17 15:39:19.136+00	116	telegraf	1041420528	96065	4975	1
2025-07-17 15:39:31.456+00	116	telegraf	978202981	96052	4976	1
2025-07-17 15:59:40.102+00	116	telegraf	1523842139	100264	183	1
2025-07-17 16:04:05.477+00	116	telegraf	527134251	100259	186	1
2025-07-17 16:10:05.187+00	116	telegraf	1041420528	96051	4995	1
2025-07-17 16:10:09.26+00	116	telegraf	1126982881	96025	4996	1
2025-07-17 16:10:17.546+00	116	telegraf	978202981	96039	4997	1
2025-07-17 16:41:03.577+00	116	telegraf	978202981	96019	5016	1
2025-07-17 17:11:41.451+00	116	telegraf	1126982881	95984	5032	1
2025-07-17 17:11:37.268+00	116	telegraf	1041420528	96009	5033	1
2025-07-17 17:11:49.643+00	116	telegraf	978202981	95998	5034	1
2025-07-17 17:42:23.342+00	116	telegraf	1041420528	96014	5052	1
2025-07-17 17:42:35.696+00	116	telegraf	978202981	96002	5053	1
2025-07-17 18:13:21.738+00	116	telegraf	978202981	96001	5077	1
2025-07-17 18:44:07.777+00	116	telegraf	978202981	95998	5095	1
2025-07-17 19:14:45.712+00	116	telegraf	1126982881	95984	5113	1
2025-07-17 19:14:41.525+00	116	telegraf	1041420528	96009	5114	1
2025-07-17 19:14:53.811+00	116	telegraf	978202981	95997	5115	1
2025-07-17 19:45:31.741+00	116	telegraf	1126982881	96004	5132	1
2025-07-17 19:45:27.551+00	116	telegraf	1041420528	96028	5133	1
2025-07-17 19:45:39.849+00	116	telegraf	978202981	96017	5134	1
2025-07-17 20:16:17.783+00	116	telegraf	1126982881	96017	5157	1
2025-07-17 20:16:13.626+00	116	telegraf	1041420528	96042	5158	1
2025-07-17 20:16:25.905+00	116	telegraf	978202981	96031	5159	1
2025-07-17 20:46:59.681+00	116	telegraf	1041420528	96058	5186	1
2025-07-17 20:47:03.815+00	116	telegraf	1126982881	96033	5187	1
2025-07-17 20:47:11.932+00	116	telegraf	978202981	96046	5188	1
2025-07-17 21:17:49.854+00	116	telegraf	1126982881	96054	5207	1
2025-07-17 21:17:45.751+00	116	telegraf	1041420528	96080	5208	1
2025-07-17 21:48:44.059+00	116	telegraf	978202981	96083	5232	1
2025-07-18 07:02:20.652+00	116	telegraf	1041420528	95898	5571	1
2025-07-18 07:02:24.866+00	116	telegraf	1126982881	95872	5572	1
2025-07-18 07:33:06.699+00	116	telegraf	1041420528	95876	5590	1
2025-07-18 07:33:10.92+00	116	telegraf	1126982881	95849	5591	1
2025-07-18 07:33:18.945+00	116	telegraf	978202981	95864	5592	1
2025-07-18 08:03:56.953+00	116	telegraf	1126982881	95854	5619	1
2025-07-18 08:03:52.741+00	116	telegraf	1041420528	95879	5620	1
2025-07-18 08:04:04.983+00	116	telegraf	978202981	95867	5621	1
2025-07-18 08:34:42.993+00	116	telegraf	1126982881	95852	5638	1
2025-07-18 08:34:38.809+00	116	telegraf	1041420528	95878	5639	1
2025-07-18 08:34:51.024+00	116	telegraf	978202981	95867	5640	1
2025-07-18 09:05:24.842+00	116	telegraf	1041420528	95884	5657	1
2025-07-18 09:05:37.065+00	116	telegraf	978202981	95873	5658	1
2025-07-18 09:36:10.887+00	116	telegraf	1041420528	95888	5674	1
2025-07-18 09:36:23.14+00	116	telegraf	978202981	95877	5676	1
2025-07-18 10:07:01.103+00	116	telegraf	1126982881	95839	5692	1
2025-07-18 10:06:56.944+00	116	telegraf	1041420528	95865	5693	1
2025-07-18 10:37:55.281+00	116	telegraf	978202981	95827	5712	1
2025-07-18 11:08:33.169+00	116	telegraf	1126982881	95789	5730	1
2025-07-18 11:08:29.027+00	116	telegraf	1041420528	95815	5732	1
2025-07-18 11:08:41.354+00	116	telegraf	978202981	95804	5733	1
2025-07-18 11:39:27.395+00	116	telegraf	978202981	95776	5751	1
2025-07-18 12:10:01.129+00	116	telegraf	1041420528	95771	5769	1
2025-07-18 12:10:05.32+00	116	telegraf	1126982881	95746	5770	1
2025-07-18 12:10:13.442+00	116	telegraf	978202981	95761	5771	1
2025-07-19 16:45:08.151+00	116	telegraf	978202981	95515	7049	1
2025-07-19 16:46:30.923+00	116	telegraf	1126982881	95498	7051	1
2025-07-19 17:15:54.198+00	116	telegraf	978202981	95502	7086	1
2025-07-19 17:16:11.711+00	116	telegraf	1041420528	95510	7087	1
2025-07-19 17:17:16.969+00	116	telegraf	1126982881	95487	7089	1
2025-07-19 17:46:40.251+00	116	telegraf	978202981	95460	7104	1
2025-07-19 17:46:57.781+00	116	telegraf	1041420528	95470	7106	1
2025-07-19 17:48:03.023+00	116	telegraf	1126982881	95449	7110	1
2025-07-19 18:17:26.306+00	116	telegraf	978202981	95479	7122	1
2025-07-19 18:48:29.853+00	116	telegraf	1041420528	95476	7151	1
2025-07-19 18:49:35.139+00	116	telegraf	1126982881	95450	7152	1
2025-07-19 19:19:15.888+00	116	telegraf	1041420528	95481	7169	1
2025-07-19 19:20:21.19+00	116	telegraf	1126982881	95457	7170	1
2025-07-19 19:49:44.444+00	116	telegraf	978202981	95499	7188	1
2025-07-19 19:50:01.937+00	116	telegraf	1041420528	95508	7189	1
2025-07-19 19:51:07.254+00	116	telegraf	1126982881	95483	7190	1
2025-07-20 08:08:27.126+00	116	telegraf	1041420528	95263	7644	1
2025-07-20 08:38:55.684+00	116	telegraf	978202981	95253	7667	1
2025-07-20 08:39:13.172+00	116	telegraf	1041420528	95264	7669	1
2025-07-20 08:40:18.782+00	116	telegraf	1126982881	95238	7670	1
2025-07-20 09:09:41.765+00	116	telegraf	978202981	95250	7694	1
2025-07-20 09:11:04.865+00	116	telegraf	1126982881	95234	7698	1
2025-07-20 09:40:27.815+00	116	telegraf	978202981	95261	7717	1
2025-07-20 09:41:50.898+00	116	telegraf	1126982881	95250	7720	1
2025-07-20 10:11:13.908+00	116	telegraf	978202981	95265	7738	1
2025-07-20 10:12:36.942+00	116	telegraf	1126982881	95252	7740	1
2025-07-20 10:41:59.934+00	116	telegraf	978202981	95263	7756	1
2025-07-20 10:42:17.357+00	116	telegraf	1041420528	95274	7758	1
2025-07-20 10:43:22.992+00	116	telegraf	1126982881	95248	7759	1
2025-07-20 12:14:18.058+00	116	telegraf	978202981	95180	7815	1
2025-07-20 12:14:35.532+00	116	telegraf	1041420528	95189	7816	1
2025-07-20 12:15:41.212+00	116	telegraf	1126982881	95163	7817	1
2025-07-20 12:45:04.095+00	116	telegraf	978202981	95135	7834	1
2025-07-20 12:45:20.919+00	116	telegraf	840973111	100036	96	1
2025-07-20 12:45:21.558+00	116	telegraf	1041420528	95145	7836	1
2025-07-20 12:45:22.435+00	116	telegraf	527134251	100028	97	1
2025-07-20 12:46:27.236+00	116	telegraf	1126982881	95117	7838	1
2025-07-20 12:46:31.274+00	116	telegraf	1523842139	100022	102	1
2025-07-20 13:15:50.152+00	116	telegraf	978202981	95078	7854	1
2025-07-20 13:16:06.954+00	116	telegraf	840973111	100027	188	1
2025-07-20 13:16:07.642+00	116	telegraf	1041420528	95090	7855	1
2025-07-20 13:16:08.551+00	116	telegraf	527134251	100019	189	1
2025-07-20 13:17:13.302+00	116	telegraf	1126982881	95066	7857	1
2025-07-20 13:17:17.298+00	116	telegraf	1523842139	100016	190	1
2025-07-20 14:17:22.305+00	116	telegraf	978202981	95017	7890	1
2025-07-20 14:17:39.091+00	116	telegraf	840973111	99996	316	1
2025-07-20 14:17:39.744+00	116	telegraf	1041420528	95028	7891	1
2025-07-20 14:17:40.662+00	116	telegraf	527134251	99989	317	1
2025-07-20 14:18:45.392+00	116	telegraf	1126982881	95007	7894	1
2025-07-20 14:18:49.45+00	116	telegraf	1523842139	99979	325	1
2025-07-20 14:48:08.376+00	116	telegraf	978202981	95033	7909	1
2025-07-20 14:48:25.18+00	116	telegraf	840973111	99994	452	1
2025-07-20 14:49:31.445+00	116	telegraf	1126982881	95020	7912	1
2025-07-20 14:49:35.548+00	116	telegraf	1523842139	99984	457	1
2025-07-20 15:10:46.164+00	116	telegraf	1523842139	99984	51	1
2025-07-20 15:13:08.66+00	116	telegraf	1523842139	99979	69	1
2025-07-20 15:19:11.797+00	116	telegraf	1041420528	95033	7931	1
2025-07-20 15:19:26.535+00	116	telegraf	1523842139	99973	122	1
2025-07-20 15:20:17.511+00	116	telegraf	1126982881	95008	7934	1
2025-07-20 15:22:10.606+00	116	telegraf	840973111	99987	150	1
2025-07-20 15:52:56.57+00	116	telegraf	840973111	99967	303	1
2025-07-20 15:57:44.699+00	116	telegraf	978202981	95103	7958	1
2025-07-20 15:58:07.234+00	116	telegraf	1126982881	95101	7960	1
2025-07-20 15:58:02.05+00	116	telegraf	1041420528	95122	7961	1
2025-07-20 16:08:13.201+00	116	telegraf	527134251	99939	329	1
2025-07-20 16:28:48.08+00	116	telegraf	1041420528	95159	7983	1
2025-07-20 16:28:53.264+00	116	telegraf	1126982881	95135	7984	1
2025-07-20 16:59:34.113+00	116	telegraf	1041420528	95191	8003	1
2025-07-20 16:59:39.294+00	116	telegraf	1126982881	95167	8004	1
2025-07-20 17:22:59.159+00	116	telegraf	978202981	95280	8024	1
2025-07-20 17:23:16.479+00	116	telegraf	1041420528	95292	8025	1
2025-07-20 17:23:21.668+00	116	telegraf	1126982881	95268	8026	1
2025-07-20 17:54:07.696+00	116	telegraf	1126982881	95302	8050	1
2025-07-20 17:54:02.527+00	116	telegraf	1041420528	95327	8051	1
2025-07-20 18:55:17.345+00	116	telegraf	978202981	95332	8099	1
2025-07-20 19:18:21.697+00	116	telegraf	1126982881	95420	8112	1
2025-07-20 19:18:16.447+00	116	telegraf	1041420528	95444	8113	1
2025-07-20 19:18:29.438+00	116	telegraf	978202981	95438	8114	1
2025-07-20 19:30:22.738+00	116	telegraf	1041420528	95338	8125	1
2025-07-20 19:30:28.006+00	116	telegraf	1126982881	95311	8126	1
2025-07-20 19:44:05.104+00	116	telegraf	1126982881	94338	8139	1
2025-07-20 19:44:35.368+00	116	telegraf	1126982881	95396	8142	1
2025-07-20 19:47:01.41+00	116	telegraf	1041420528	95441	8156	1
2025-07-20 19:47:14.451+00	116	telegraf	978202981	95434	8158	1
2025-07-20 22:15:24.088+00	116	telegraf	1126982881	95579	58	1
2025-07-20 22:16:49.589+00	116	telegraf	1041420528	95606	59	1
2025-07-20 22:17:02.581+00	116	telegraf	978202981	95596	60	1
2025-07-21 07:11:03.683+00	116	telegraf	1126982881	95412	430	1
2025-07-21 07:11:28.499+00	116	telegraf	1041420528	95437	431	1
2025-07-21 07:41:49.703+00	116	telegraf	1126982881	95404	454	1
2025-07-21 07:42:14.537+00	116	telegraf	1041420528	95428	456	1
2025-07-21 08:12:35.786+00	116	telegraf	1126982881	95425	476	1
2025-07-21 17:37:20.683+00	116	telegraf	527134251	100291	598	1
2025-07-21 17:58:05.552+00	116	telegraf	1523842139	100311	640	1
2025-07-21 18:02:04.466+00	116	telegraf	840973111	100324	648	1
2025-07-21 19:03:36.529+00	116	telegraf	840973111	100397	728	1
2025-07-21 19:09:38.724+00	116	telegraf	527134251	100397	733	1
2025-07-21 21:32:33.099+00	116	telegraf	1126982881	95895	140	1
2025-07-21 21:33:10.677+00	116	telegraf	978202981	95911	143	1
2025-07-21 21:33:27.941+00	116	telegraf	1523842139	100545	1097	1
2025-07-22 08:18:40.133+00	116	telegraf	1126982881	96126	539	1
2025-07-22 08:19:04.735+00	116	telegraf	1041420528	96155	540	1
2025-07-22 08:19:17.563+00	116	telegraf	978202981	96144	541	1
2025-07-22 08:49:26.169+00	116	telegraf	1126982881	96158	558	1
2025-07-22 08:49:50.765+00	116	telegraf	1041420528	96187	559	1
2025-07-22 08:50:03.614+00	116	telegraf	978202981	96175	560	1
2025-07-22 11:23:16.502+00	116	telegraf	1126982881	96133	650	1
2025-07-22 11:23:40.959+00	116	telegraf	1041420528	96162	651	1
2025-07-22 11:23:53.875+00	116	telegraf	978202981	96148	652	1
2025-07-22 11:54:02.548+00	116	telegraf	1126982881	96112	668	1
2025-07-22 11:54:26.992+00	116	telegraf	1041420528	96141	669	1
2025-07-22 11:54:39.921+00	116	telegraf	978202981	96127	670	1
2025-07-22 12:24:48.599+00	116	telegraf	1126982881	96103	689	1
2025-07-22 12:25:13.079+00	116	telegraf	1041420528	96131	690	1
2025-07-22 12:25:25.997+00	116	telegraf	978202981	96118	691	1
2025-07-22 12:55:34.642+00	116	telegraf	1126982881	96103	707	1
2025-07-22 12:55:59.141+00	116	telegraf	1041420528	96129	708	1
2025-07-22 12:56:12.047+00	116	telegraf	978202981	96117	709	1
2025-07-22 13:26:20.676+00	116	telegraf	1126982881	96089	726	1
2025-07-22 13:26:45.18+00	116	telegraf	1041420528	96114	730	1
2025-07-22 13:26:58.074+00	116	telegraf	978202981	96102	731	1
2025-07-22 13:51:03.613+00	116	telegraf	1126982881	96546	746	1
2025-07-22 13:51:33.875+00	116	telegraf	1126982881	96074	749	1
2025-07-22 13:57:31.231+00	116	telegraf	1041420528	96103	769	1
2025-07-22 13:57:44.122+00	116	telegraf	978202981	96090	770	1
2025-07-22 17:32:53.517+00	116	telegraf	1041420528	96051	1113	1
2025-07-22 17:33:06.428+00	116	telegraf	978202981	96040	1116	1
2025-07-22 18:03:39.593+00	116	telegraf	1041420528	96062	1200	1
2025-07-22 18:03:52.497+00	116	telegraf	978202981	96050	1201	1
2025-07-22 20:00:46.533+00	116	telegraf	1126982881	96052	1346	1
2025-07-22 20:06:43.816+00	116	telegraf	1041420528	96093	1359	1
2025-07-22 20:06:56.718+00	116	telegraf	978202981	96079	1360	1
2025-07-22 20:31:32.566+00	116	telegraf	1126982881	96059	1423	1
2025-07-22 20:37:29.87+00	116	telegraf	1041420528	96088	1440	1
2025-07-22 20:37:42.781+00	116	telegraf	978202981	96074	1441	1
2025-07-22 21:02:18.651+00	116	telegraf	1126982881	96047	1453	1
2025-07-22 21:08:15.913+00	116	telegraf	1041420528	96077	1460	1
2025-07-22 21:08:28.818+00	116	telegraf	978202981	96062	1461	1
2025-07-22 21:24:06.396+00	116	telegraf	840973111	101177	7	1
2025-07-22 21:25:42.527+00	116	telegraf	527134251	101168	9	1
2025-07-22 21:33:04.747+00	116	telegraf	1126982881	96043	1476	1
2025-07-22 21:39:01.958+00	116	telegraf	1041420528	96072	1479	1
2025-07-22 21:39:14.892+00	116	telegraf	978202981	96057	1480	1
2025-07-22 21:39:31.619+00	116	telegraf	1523842139	101157	35	1
2025-07-22 21:54:52.416+00	116	telegraf	840973111	101166	99	1
2025-07-22 21:56:28.607+00	116	telegraf	527134251	101157	102	1
2025-07-22 22:03:50.811+00	116	telegraf	1126982881	96040	1494	1
2025-07-22 22:09:48.021+00	116	telegraf	1041420528	96073	1497	1
2025-07-22 22:10:00.916+00	116	telegraf	978202981	96059	1498	1
2025-07-22 22:10:17.587+00	116	telegraf	1523842139	101149	122	1
2025-07-22 22:25:38.486+00	116	telegraf	840973111	101168	139	1
2025-07-22 22:27:14.711+00	116	telegraf	527134251	101161	143	1
2025-07-22 22:34:36.879+00	116	telegraf	1126982881	96060	1512	1
2025-07-22 22:40:34.052+00	116	telegraf	1041420528	96091	1515	1
2025-07-22 22:40:46.994+00	116	telegraf	978202981	96078	1516	1
2025-07-22 22:41:03.684+00	116	telegraf	1523842139	101148	211	1
2025-07-22 22:56:24.537+00	116	telegraf	840973111	101157	255	1
2025-07-22 22:58:00.767+00	116	telegraf	527134251	101151	257	1
2025-07-22 23:05:22.918+00	116	telegraf	1126982881	96060	1530	1
2025-07-22 23:11:20.095+00	116	telegraf	1041420528	96082	1533	1
2025-07-22 23:11:33.031+00	116	telegraf	978202981	96068	1534	1
2025-07-22 23:36:08.96+00	116	telegraf	1126982881	96034	1548	1
2025-07-22 23:42:06.127+00	116	telegraf	1041420528	96059	1551	1
2025-07-22 23:42:19.105+00	116	telegraf	978202981	96046	1552	1
2025-07-23 07:17:39.808+00	116	telegraf	1126982881	95940	1831	1
2025-07-23 07:23:36.78+00	116	telegraf	1041420528	95969	1836	1
2025-07-23 07:23:49.794+00	116	telegraf	978202981	95956	1837	1
2025-07-23 07:48:25.899+00	116	telegraf	1126982881	95945	1874	1
2025-07-23 07:54:22.804+00	116	telegraf	1041420528	95979	1879	1
2025-07-23 07:54:35.876+00	116	telegraf	978202981	95966	1880	1
2025-07-23 07:59:01.423+00	116	telegraf	1126982881	95522	1883	1
2025-07-23 07:59:31.696+00	116	telegraf	1126982881	95958	1888	1
2025-07-23 08:06:35.396+00	116	telegraf	1126982881	95704	1911	1
2025-07-23 08:07:05.669+00	116	telegraf	1126982881	95944	1912	1
2025-07-23 08:25:08.878+00	116	telegraf	1041420528	95959	1953	1
2025-07-23 08:25:21.903+00	116	telegraf	978202981	95946	1954	1
2025-07-23 08:37:51.717+00	116	telegraf	1126982881	95927	1977	1
2025-07-23 09:26:40.945+00	116	telegraf	1041420528	95944	2011	1
2025-07-23 09:26:54.033+00	116	telegraf	978202981	95931	2012	1
2025-07-23 09:39:23.845+00	116	telegraf	1126982881	95910	2020	1
2025-07-23 09:57:26.97+00	116	telegraf	1041420528	95924	2034	1
2025-07-23 09:57:40.068+00	116	telegraf	978202981	95910	2038	1
2025-07-23 12:13:14.132+00	116	telegraf	1126982881	95858	2126	1
2025-07-23 13:02:03.259+00	116	telegraf	1041420528	95934	2174	1
2025-07-23 13:02:16.34+00	116	telegraf	978202981	95922	2175	1
2025-07-23 13:14:46.253+00	116	telegraf	1126982881	95936	2184	1
2025-07-23 13:32:49.285+00	116	telegraf	1041420528	95963	2194	1
2025-07-23 13:33:02.359+00	116	telegraf	978202981	95950	2195	1
2025-07-23 13:45:32.305+00	116	telegraf	1126982881	95896	2204	1
2025-07-23 14:03:35.331+00	116	telegraf	1041420528	95884	2213	1
2025-07-23 14:03:48.439+00	116	telegraf	978202981	95871	2217	1
2025-07-23 14:34:21.354+00	116	telegraf	1041420528	95894	2244	1
2025-07-23 14:34:34.499+00	116	telegraf	978202981	95884	2245	1
2025-07-23 14:47:04.389+00	116	telegraf	1126982881	95857	2253	1
2025-07-23 15:05:07.397+00	116	telegraf	1041420528	95874	2264	1
2025-07-23 15:05:20.571+00	116	telegraf	978202981	95863	2265	1
2025-07-23 15:17:50.468+00	116	telegraf	1126982881	95838	2272	1
2025-07-23 15:35:53.496+00	116	telegraf	1041420528	95880	2285	1
2025-07-23 15:36:06.671+00	116	telegraf	978202981	95869	2286	1
2025-07-23 17:34:38.499+00	116	telegraf	978202981	95733	2375	1
2025-07-23 17:34:55.611+00	116	telegraf	1041420528	95741	2382	1
2025-07-23 17:51:40.717+00	116	telegraf	1126982881	95694	2396	1
2025-07-23 18:05:24.544+00	116	telegraf	978202981	95714	2404	1
2025-07-23 18:05:41.697+00	116	telegraf	1041420528	95723	2405	1
2025-07-23 18:22:26.777+00	116	telegraf	1126982881	95685	2414	1
2025-07-23 18:36:10.581+00	116	telegraf	978202981	95697	2422	1
2025-07-23 18:36:27.745+00	116	telegraf	1041420528	95708	2423	1
\.


--
-- Data for Name: _hyper_6_32_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_6_32_chunk ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
2025-07-25 12:08:20.641+00	116	telegraf	978202981	95924	3978	1
2025-07-25 12:08:37.495+00	116	telegraf	1041420528	95934	3989	1
2025-07-25 12:56:09.607+00	116	telegraf	1126982881	95895	4058	1
2025-07-25 13:09:52.749+00	116	telegraf	978202981	95904	4071	1
2025-07-25 13:10:09.562+00	116	telegraf	1041420528	95913	4073	1
2025-07-25 13:26:55.668+00	116	telegraf	1126982881	95890	4084	1
2025-07-25 13:40:38.778+00	116	telegraf	978202981	95913	4090	1
2025-07-25 13:40:55.609+00	116	telegraf	1041420528	95926	4092	1
2025-07-25 13:57:41.741+00	116	telegraf	1126982881	95888	4104	1
2025-07-25 14:11:24.832+00	116	telegraf	978202981	95915	4110	1
2025-07-25 14:11:41.647+00	116	telegraf	1041420528	95927	4111	1
2025-07-25 14:28:27.833+00	116	telegraf	1126982881	95882	4125	1
2025-07-25 14:42:10.856+00	116	telegraf	978202981	95890	4133	1
2025-07-25 14:42:27.657+00	116	telegraf	1041420528	95897	4135	1
2025-07-25 14:59:13.852+00	116	telegraf	1126982881	95842	4149	1
2025-07-25 15:12:56.912+00	116	telegraf	978202981	95884	4158	1
2025-07-25 15:13:13.677+00	116	telegraf	1041420528	95898	4159	1
2025-07-25 15:29:59.879+00	116	telegraf	1126982881	95880	4173	1
2025-07-25 15:43:42.976+00	116	telegraf	978202981	95909	4180	1
2025-07-25 15:43:59.7+00	116	telegraf	1041420528	95923	4181	1
2025-07-25 16:00:45.943+00	116	telegraf	1126982881	95912	4195	1
2025-07-25 16:14:29.034+00	116	telegraf	978202981	95935	4201	1
2025-07-25 16:14:45.806+00	116	telegraf	1041420528	95948	4203	1
2025-07-25 16:31:32.019+00	116	telegraf	1126982881	95915	4213	1
2025-07-25 16:45:15.059+00	116	telegraf	978202981	95951	4224	1
2025-07-25 16:45:31.841+00	116	telegraf	1041420528	95964	4225	1
2025-07-25 17:02:18.051+00	116	telegraf	1126982881	95946	4233	1
2025-07-25 17:16:01.096+00	116	telegraf	978202981	95956	4245	1
2025-07-25 17:16:17.896+00	116	telegraf	1041420528	95968	4247	1
2025-07-25 17:33:04.126+00	116	telegraf	1126982881	95937	4254	1
2025-07-25 17:46:47.145+00	116	telegraf	978202981	95951	4265	1
2025-07-25 17:47:03.923+00	116	telegraf	1041420528	95963	4266	1
2025-07-25 18:03:50.156+00	116	telegraf	1126982881	95935	4272	1
2025-07-25 18:17:33.2+00	116	telegraf	978202981	95953	4283	1
2025-07-25 18:17:49.982+00	116	telegraf	1041420528	95964	4284	1
2025-07-25 18:34:36.283+00	116	telegraf	1126982881	95946	4291	1
2025-07-25 18:48:19.222+00	116	telegraf	978202981	95972	4302	1
2025-07-25 18:48:36.016+00	116	telegraf	1041420528	95984	4303	1
2025-07-25 19:05:22.332+00	116	telegraf	1126982881	95969	4310	1
2025-07-25 19:19:05.283+00	116	telegraf	978202981	95997	4320	1
2025-07-25 19:19:22.056+00	116	telegraf	1041420528	96009	4321	1
2025-07-25 19:36:08.392+00	116	telegraf	1126982881	96001	4330	1
2025-07-25 19:49:51.347+00	116	telegraf	978202981	96018	4338	1
2025-07-25 19:50:08.098+00	116	telegraf	1041420528	96030	4339	1
2025-07-25 20:06:54.456+00	116	telegraf	1126982881	95994	4350	1
2025-07-25 20:20:37.412+00	116	telegraf	978202981	96005	4356	1
2025-07-25 20:20:54.153+00	116	telegraf	1041420528	96017	4357	1
2025-07-25 20:37:40.503+00	116	telegraf	1126982881	95997	4368	1
2025-07-25 20:51:23.452+00	116	telegraf	978202981	96017	4374	1
2025-07-25 20:51:40.191+00	116	telegraf	1041420528	96029	4375	1
2025-07-25 21:08:26.573+00	116	telegraf	1126982881	96014	4386	1
2025-07-25 21:22:09.507+00	116	telegraf	978202981	96031	4394	1
2025-07-25 21:22:26.217+00	116	telegraf	1041420528	96043	4395	1
2025-07-25 21:39:12.621+00	116	telegraf	1126982881	96022	4407	1
2025-07-25 21:52:55.524+00	116	telegraf	978202981	96040	4413	1
2025-07-25 21:53:12.258+00	116	telegraf	1041420528	96051	4414	1
2025-07-25 22:09:58.657+00	116	telegraf	1126982881	96025	4425	1
2025-07-25 22:23:41.567+00	116	telegraf	978202981	96037	4432	1
2025-07-25 22:23:58.335+00	116	telegraf	1041420528	96049	4433	1
2025-07-25 22:40:44.711+00	116	telegraf	1126982881	96024	4444	1
2025-07-25 22:54:27.6+00	116	telegraf	978202981	96038	4450	1
2025-07-25 22:54:44.372+00	116	telegraf	1041420528	96050	4451	1
2025-07-25 23:11:30.766+00	116	telegraf	1126982881	96022	4462	1
2025-07-25 23:25:13.635+00	116	telegraf	978202981	96039	4469	1
2025-07-25 23:25:30.448+00	116	telegraf	1041420528	96052	4470	1
2025-07-25 23:42:16.822+00	116	telegraf	1126982881	96024	4480	1
2025-07-25 23:55:59.677+00	116	telegraf	978202981	96036	4487	1
2025-07-25 23:56:16.478+00	116	telegraf	1041420528	96048	4490	1
2025-07-26 00:13:02.857+00	116	telegraf	1126982881	96017	4498	1
2025-07-26 00:26:45.702+00	116	telegraf	978202981	96039	4507	1
2025-07-26 00:27:02.504+00	116	telegraf	1041420528	96050	4508	1
2025-07-26 00:43:48.9+00	116	telegraf	1126982881	96021	4516	1
2025-07-26 00:57:31.757+00	116	telegraf	978202981	96036	4525	1
2025-07-26 00:57:48.553+00	116	telegraf	1041420528	96049	4526	1
2025-07-26 01:14:35.012+00	116	telegraf	1126982881	95996	4534	1
2025-07-26 01:28:17.856+00	116	telegraf	978202981	96011	4546	1
2025-07-26 01:28:34.586+00	116	telegraf	1041420528	96023	4547	1
2025-07-26 01:45:21.055+00	116	telegraf	1126982881	95982	4556	1
2025-07-26 01:59:03.894+00	116	telegraf	978202981	95997	4564	1
2025-07-26 01:59:20.62+00	116	telegraf	1041420528	96010	4565	1
2025-07-26 02:16:07.14+00	116	telegraf	1126982881	95974	4575	1
2025-07-26 02:29:49.955+00	116	telegraf	978202981	95982	4583	1
2025-07-26 02:30:06.674+00	116	telegraf	1041420528	95995	4584	1
2025-07-26 02:46:53.171+00	116	telegraf	1126982881	95966	4595	1
2025-07-26 03:00:35.99+00	116	telegraf	978202981	95977	4601	1
2025-07-26 03:00:52.742+00	116	telegraf	1041420528	95990	4602	1
2025-07-26 03:17:39.258+00	116	telegraf	1126982881	95968	4613	1
2025-07-26 03:31:22.025+00	116	telegraf	978202981	95976	4619	1
2025-07-26 03:31:38.79+00	116	telegraf	1041420528	95987	4620	1
2025-07-26 03:48:25.291+00	116	telegraf	1126982881	95953	4631	1
2025-07-26 04:02:08.081+00	116	telegraf	978202981	95982	4637	1
2025-07-26 04:02:24.834+00	116	telegraf	1041420528	95994	4638	1
2025-07-26 04:19:11.361+00	116	telegraf	1126982881	95960	4649	1
2025-07-26 04:32:54.098+00	116	telegraf	978202981	95983	4655	1
2025-07-26 04:33:10.859+00	116	telegraf	1041420528	95996	4656	1
2025-07-26 04:49:57.374+00	116	telegraf	1126982881	95980	4667	1
2025-07-26 05:03:40.152+00	116	telegraf	978202981	95996	4673	1
2025-07-26 05:03:56.898+00	116	telegraf	1041420528	96008	4674	1
2025-07-26 05:20:43.469+00	116	telegraf	1126982881	95978	4687	1
2025-07-26 05:34:26.196+00	116	telegraf	978202981	95998	4694	1
2025-07-26 05:34:42.93+00	116	telegraf	1041420528	96010	4695	1
2025-07-26 05:51:29.496+00	116	telegraf	1126982881	95971	4706	1
2025-07-26 06:05:12.24+00	116	telegraf	978202981	96005	4713	1
2025-07-26 06:05:28.983+00	116	telegraf	1041420528	96019	4714	1
2025-07-26 06:22:15.557+00	116	telegraf	1126982881	96006	4724	1
2025-07-26 06:35:58.278+00	116	telegraf	978202981	96029	4732	1
2025-07-26 06:36:15.006+00	116	telegraf	1041420528	96042	4735	1
2025-07-26 06:53:01.594+00	116	telegraf	1126982881	96017	4743	1
2025-07-26 07:06:44.307+00	116	telegraf	978202981	96037	4752	1
2025-07-26 07:07:01.052+00	116	telegraf	1041420528	96049	4753	1
2025-07-26 07:23:47.649+00	116	telegraf	1126982881	96028	4761	1
2025-07-26 07:37:30.342+00	116	telegraf	978202981	96058	4770	1
2025-07-26 07:37:47.063+00	116	telegraf	1041420528	96071	4771	1
2025-07-26 07:54:33.659+00	116	telegraf	1126982881	96049	4779	1
2025-07-26 08:08:16.385+00	116	telegraf	978202981	96079	4788	1
2025-07-26 08:08:33.117+00	116	telegraf	1041420528	96090	4789	1
2025-07-26 08:25:19.768+00	116	telegraf	1126982881	96062	4798	1
2025-07-26 08:39:02.475+00	116	telegraf	978202981	96093	4806	1
2025-07-26 08:39:19.171+00	116	telegraf	1041420528	96104	4807	1
2025-07-26 08:56:05.827+00	116	telegraf	1126982881	96084	4816	1
2025-07-26 09:09:48.514+00	116	telegraf	978202981	96104	4824	1
2025-07-26 09:10:05.203+00	116	telegraf	1041420528	96116	4825	1
2025-07-26 09:26:51.902+00	116	telegraf	1126982881	96082	4838	1
2025-07-26 09:40:34.554+00	116	telegraf	978202981	96086	4846	1
2025-07-26 09:40:51.236+00	116	telegraf	1041420528	96098	4847	1
2025-07-26 09:57:37.94+00	116	telegraf	1126982881	96066	4860	1
2025-07-26 10:11:20.642+00	116	telegraf	978202981	96088	4864	1
2025-07-26 10:11:37.262+00	116	telegraf	1041420528	96100	4865	1
2025-07-26 10:28:24.011+00	116	telegraf	1126982881	96074	4878	1
2025-07-26 10:42:06.679+00	116	telegraf	978202981	96078	4883	1
2025-07-26 10:42:23.303+00	116	telegraf	1041420528	96089	4884	1
2025-07-26 10:59:10.057+00	116	telegraf	1126982881	96053	4897	1
2025-07-26 11:12:52.723+00	116	telegraf	978202981	96062	4901	1
2025-07-26 11:13:09.349+00	116	telegraf	1041420528	96073	4902	1
2025-07-26 11:29:56.104+00	116	telegraf	1126982881	96039	4915	1
2025-07-26 11:43:38.762+00	116	telegraf	978202981	96070	4919	1
2025-07-26 11:43:55.444+00	116	telegraf	1041420528	96082	4920	1
2025-07-26 12:00:42.201+00	116	telegraf	1126982881	96032	4933	1
2025-07-26 12:14:24.807+00	116	telegraf	978202981	96055	4937	1
2025-07-26 12:14:41.493+00	116	telegraf	1041420528	96067	4939	1
2025-07-26 12:31:28.226+00	116	telegraf	1126982881	96021	4951	1
2025-07-26 12:41:33.482+00	116	telegraf	1126982881	96122	4955	1
2025-07-26 12:45:10.861+00	116	telegraf	978202981	96147	4957	1
2025-07-26 12:45:27.533+00	116	telegraf	1041420528	96157	4958	1
2025-07-26 13:12:19.59+00	116	telegraf	1126982881	96072	4973	1
2025-07-26 13:15:56.89+00	116	telegraf	978202981	96090	4976	1
2025-07-26 13:16:13.561+00	116	telegraf	1041420528	96100	4979	1
2025-07-26 13:43:05.629+00	116	telegraf	1126982881	96055	4994	1
2025-07-26 13:46:42.923+00	116	telegraf	978202981	96075	4999	1
2025-07-26 13:46:59.618+00	116	telegraf	1041420528	96086	5000	1
2025-07-26 14:13:51.682+00	116	telegraf	1126982881	96079	5016	1
2025-07-26 14:17:28.969+00	116	telegraf	978202981	96098	5020	1
2025-07-26 14:17:45.705+00	116	telegraf	1041420528	96109	5021	1
2025-07-26 14:44:37.745+00	116	telegraf	1126982881	96094	5050	1
2025-07-26 14:48:15.007+00	116	telegraf	978202981	96108	5054	1
2025-07-26 14:48:31.744+00	116	telegraf	1041420528	96120	5056	1
2025-07-26 15:15:23.802+00	116	telegraf	1126982881	96085	5070	1
2025-07-26 15:19:01.06+00	116	telegraf	978202981	96104	5074	1
2025-07-26 15:19:17.815+00	116	telegraf	1041420528	96116	5075	1
2025-07-26 15:46:09.833+00	116	telegraf	1126982881	96101	5088	1
2025-07-26 15:49:47.105+00	116	telegraf	978202981	96118	5092	1
2025-07-26 15:50:03.855+00	116	telegraf	1041420528	96130	5093	1
2025-07-26 16:16:55.886+00	116	telegraf	1126982881	96084	5106	1
2025-07-26 16:20:33.151+00	116	telegraf	978202981	96102	5110	1
2025-07-26 16:20:49.923+00	116	telegraf	1041420528	96114	5111	1
2025-07-26 16:47:41.926+00	116	telegraf	1126982881	96099	5124	1
2025-07-26 16:51:19.173+00	116	telegraf	978202981	96117	5128	1
2025-07-26 16:51:35.953+00	116	telegraf	1041420528	96129	5129	1
2025-07-26 17:18:27.987+00	116	telegraf	1126982881	96106	5142	1
2025-07-26 17:22:05.211+00	116	telegraf	978202981	96130	5146	1
2025-07-26 17:22:22+00	116	telegraf	1041420528	96142	5147	1
2025-07-26 17:49:14.054+00	116	telegraf	1126982881	96125	5164	1
2025-07-26 17:52:51.261+00	116	telegraf	978202981	96155	5167	1
2025-07-26 17:53:08.044+00	116	telegraf	1041420528	96168	5168	1
2025-07-26 18:20:00.097+00	116	telegraf	1126982881	96180	5182	1
2025-07-26 18:23:37.302+00	116	telegraf	978202981	96198	5185	1
2025-07-26 18:23:54.089+00	116	telegraf	1041420528	96209	5186	1
2025-07-26 18:50:46.145+00	116	telegraf	1126982881	96199	5209	1
2025-07-26 18:54:23.333+00	116	telegraf	978202981	96207	5212	1
2025-07-26 18:54:40.129+00	116	telegraf	1041420528	96217	5213	1
2025-07-26 19:21:32.203+00	116	telegraf	1126982881	96234	5227	1
2025-07-26 19:25:09.362+00	116	telegraf	978202981	96251	5230	1
2025-07-26 19:25:26.183+00	116	telegraf	1041420528	96261	5231	1
2025-07-26 19:52:18.283+00	116	telegraf	1126982881	96266	5246	1
2025-07-26 19:55:55.396+00	116	telegraf	978202981	96288	5250	1
2025-07-26 19:56:12.219+00	116	telegraf	1041420528	96299	5251	1
2025-07-26 20:23:04.314+00	116	telegraf	1126982881	96257	5264	1
2025-07-26 20:26:41.435+00	116	telegraf	978202981	96272	5268	1
2025-07-26 20:26:58.281+00	116	telegraf	1041420528	96283	5269	1
2025-07-26 20:53:50.349+00	116	telegraf	1126982881	96235	5286	1
2025-07-26 20:57:27.525+00	116	telegraf	978202981	96249	5290	1
2025-07-26 20:57:44.321+00	116	telegraf	1041420528	96260	5291	1
2025-07-26 21:24:36.412+00	116	telegraf	1126982881	96246	5305	1
2025-07-26 21:28:13.56+00	116	telegraf	978202981	96265	5308	1
2025-07-26 21:28:30.354+00	116	telegraf	1041420528	96276	5310	1
2025-07-26 21:55:22.492+00	116	telegraf	1126982881	96239	5329	1
2025-07-26 21:58:59.635+00	116	telegraf	978202981	96246	5333	1
2025-07-26 21:59:16.388+00	116	telegraf	1041420528	96258	5334	1
\.


--
-- Data for Name: _hyper_6_6_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_6_6_chunk ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
2025-06-28 12:39:32.065+00	116	\N	1126982881	96789	90	0.9
2025-06-28 12:39:33.987+00	116	\N	978202981	96804	91	0.9
2025-06-28 12:39:27.852+00	116	\N	1041420528	96813	93	0.9
2025-06-28 13:10:13.868+00	116	\N	1041420528	96781	112	0.9
2025-06-28 13:10:18.076+00	116	\N	1126982881	96756	113	0.9
2025-06-28 13:10:19.994+00	116	\N	978202981	96771	114	0.9
2025-06-28 13:40:59.962+00	116	\N	1041420528	96751	136	0.9
2025-06-28 13:41:04.136+00	116	\N	1126982881	96727	137	0.9
2025-06-28 13:41:06.053+00	116	\N	978202981	96743	138	0.9
2025-06-28 14:11:50.201+00	116	\N	1126982881	96702	154	0.9
2025-06-28 14:11:46.006+00	116	\N	1041420528	96727	155	0.9
2025-06-28 14:11:52.144+00	116	\N	978202981	96716	156	0.9
2025-06-28 14:42:36.236+00	116	\N	1126982881	96684	184	0.9
2025-06-28 14:42:38.202+00	116	\N	978202981	96698	185	0.9
2025-06-28 14:42:32.034+00	116	\N	1041420528	96710	186	0.9
2025-06-28 15:13:22.267+00	116	\N	1126982881	96668	202	0.9
2025-06-28 15:13:24.233+00	116	\N	978202981	96682	203	0.9
2025-06-28 15:13:18.097+00	116	\N	1041420528	96692	204	0.9
2025-06-28 15:44:04.081+00	116	\N	1041420528	96682	221	0.9
2025-06-28 15:44:08.265+00	116	\N	1126982881	96657	222	0.9
2025-06-28 15:44:10.288+00	116	\N	978202981	96671	223	0.9
2025-06-28 16:14:54.336+00	116	\N	1126982881	96644	243	0.9
2025-06-28 16:14:50.126+00	116	\N	1041420528	96669	244	0.9
2025-06-28 16:14:56.364+00	116	\N	978202981	96659	245	0.9
2025-06-28 16:45:36.173+00	116	\N	1041420528	96655	261	0.9
2025-06-28 16:45:40.339+00	116	\N	1126982881	96631	262	0.9
2025-06-28 16:45:42.392+00	116	\N	978202981	96645	263	0.9
2025-06-28 17:16:26.395+00	116	\N	1126982881	96624	281	0.9
2025-06-28 17:16:28.508+00	116	\N	978202981	96638	282	0.9
2025-06-28 17:16:22.214+00	116	\N	1041420528	96648	283	0.9
2025-06-28 17:47:12.452+00	116	\N	1126982881	96627	321	0.9
2025-06-28 17:47:08.272+00	116	\N	1041420528	96651	322	0.9
2025-06-28 17:47:14.562+00	116	\N	978202981	96640	323	0.9
2025-06-28 18:17:58.532+00	116	\N	1126982881	96633	343	0.9
2025-06-28 18:17:54.321+00	116	\N	1041420528	96658	344	0.9
2025-06-28 18:18:00.658+00	116	\N	978202981	96648	345	0.9
2025-06-28 18:48:44.591+00	116	\N	1126982881	96670	365	0.9
2025-06-28 18:48:46.709+00	116	\N	978202981	96685	366	0.9
2025-06-28 18:48:40.371+00	116	\N	1041420528	96695	367	0.9
2025-06-28 19:19:26.379+00	116	\N	1041420528	96708	383	0.9
2025-06-28 19:19:30.587+00	116	\N	1126982881	96684	384	0.9
2025-06-28 19:19:32.732+00	116	\N	978202981	96698	385	0.9
2025-06-28 19:50:12.469+00	116	\N	1041420528	96732	403	0.9
2025-06-28 19:50:16.663+00	116	\N	1126982881	96707	404	0.9
2025-06-28 19:50:18.821+00	116	\N	978202981	96723	405	0.9
2025-06-30 14:54:40.095+00	116	\N	1041420528	96058	765	0.9
2025-06-30 14:54:44.094+00	116	\N	1126982881	96029	767	0.9
2025-06-30 14:54:47.875+00	116	\N	978202981	96049	768	0.9
2025-06-30 15:25:26.124+00	116	\N	1041420528	96024	787	0.9
2025-06-30 15:25:30.149+00	116	\N	1126982881	95991	789	0.9
2025-06-30 15:25:33.909+00	116	\N	978202981	96015	790	0.9
2025-06-30 15:56:16.178+00	116	\N	1126982881	95970	807	0.9
2025-06-30 15:56:12.172+00	116	\N	1041420528	96003	808	0.9
2025-06-30 15:56:19.984+00	116	\N	978202981	95997	810	0.9
2025-06-30 16:27:02.22+00	116	\N	1126982881	95984	838	0.9
2025-06-30 16:26:58.24+00	116	\N	1041420528	96022	839	0.9
2025-06-30 16:27:06.03+00	116	\N	978202981	96014	841	0.9
2025-06-30 16:57:48.285+00	116	\N	1126982881	95958	857	0.9
2025-06-30 16:57:52.097+00	116	\N	978202981	95987	858	0.9
2025-06-30 16:57:44.257+00	116	\N	1041420528	95996	859	0.9
2025-06-30 17:28:30.334+00	116	\N	1041420528	95994	876	0.9
2025-06-30 17:28:34.323+00	116	\N	1126982881	95960	878	0.9
2025-06-30 17:28:38.137+00	116	\N	978202981	95988	879	0.9
2025-06-30 17:59:20.371+00	116	\N	1126982881	95996	899	0.9
2025-06-30 17:59:16.352+00	116	\N	1041420528	96031	900	0.9
2025-06-30 17:59:24.19+00	116	\N	978202981	96024	902	0.9
2025-06-30 18:30:02.4+00	116	\N	1041420528	96019	922	0.9
2025-06-30 18:30:06.387+00	116	\N	1126982881	95983	924	0.9
2025-06-30 18:30:10.246+00	116	\N	978202981	96010	925	0.9
2025-06-30 19:00:48.438+00	116	\N	1041420528	96019	947	0.9
2025-06-30 19:00:52.465+00	116	\N	1126982881	95982	949	0.9
2025-06-30 19:00:56.325+00	116	\N	978202981	96007	951	0.9
2025-06-30 19:25:35.335+00	116	\N	1126982881	96089	969	0.9
2025-06-30 19:25:31.317+00	116	\N	1041420528	96123	970	0.9
2025-06-30 19:25:39.257+00	116	\N	978202981	96114	971	0.9
2025-06-30 19:30:07.7+00	116	\N	1126982881	96200	974	0.9
2025-06-30 19:31:34.487+00	116	\N	1041420528	96227	978	0.9
2025-06-30 19:31:42.412+00	116	\N	978202981	96225	980	0.9
2025-06-30 20:00:53.742+00	116	\N	1126982881	96212	1043	0.9
2025-06-30 20:02:20.516+00	116	\N	1041420528	96250	1047	0.9
2025-06-30 20:02:28.501+00	116	\N	978202981	96238	1048	0.9
2025-06-30 20:31:39.791+00	116	\N	1126982881	96286	1076	0.9
2025-06-30 20:33:06.563+00	116	\N	1041420528	96321	1079	0.9
2025-06-30 20:33:14.557+00	116	\N	978202981	96308	1081	0.9
2025-06-30 21:02:25.816+00	116	\N	1126982881	96337	1111	0.9
2025-06-30 21:03:52.617+00	116	\N	1041420528	96364	1112	0.9
2025-06-30 21:04:00.623+00	116	\N	978202981	96351	1113	0.9
2025-06-30 21:33:11.866+00	116	\N	1126982881	96288	1132	0.9
2025-06-30 21:34:38.642+00	116	\N	1041420528	96312	1134	0.9
2025-06-30 21:34:46.659+00	116	\N	978202981	96299	1135	0.9
2025-06-30 22:03:57.922+00	116	\N	1126982881	96267	1153	0.9
2025-06-30 22:05:24.71+00	116	\N	1041420528	96297	1155	0.9
2025-06-30 22:05:32.773+00	116	\N	978202981	96285	1156	0.9
2025-07-01 05:46:55.38+00	116	\N	1041420528	96263	1496	0.9
2025-07-01 05:47:03.535+00	116	\N	978202981	96253	1497	0.9
2025-07-01 06:16:14.506+00	116	\N	1126982881	96231	1525	0.9
2025-07-01 06:17:49.58+00	116	\N	978202981	96248	1526	0.9
2025-07-01 06:17:41.413+00	116	\N	1041420528	96258	1527	0.9
2025-07-01 06:47:00.545+00	116	\N	1126982881	96240	1544	0.9
2025-07-01 06:48:27.468+00	116	\N	1041420528	96266	1545	0.9
2025-07-01 06:48:35.628+00	116	\N	978202981	96255	1546	0.9
2025-07-01 07:17:46.611+00	116	\N	1126982881	96234	1565	0.9
2025-07-01 07:19:13.542+00	116	\N	1041420528	96262	1567	0.9
2025-07-01 07:19:21.664+00	116	\N	978202981	96250	1568	0.9
2025-07-01 07:48:32.674+00	116	\N	1126982881	96224	1585	0.9
2025-07-01 07:50:07.744+00	116	\N	978202981	96239	1586	0.9
2025-07-01 07:49:59.593+00	116	\N	1041420528	96250	1587	0.9
2025-07-01 08:19:18.692+00	116	\N	1126982881	96210	1605	0.9
2025-07-01 08:20:45.642+00	116	\N	1041420528	96234	1606	0.9
2025-07-01 08:20:53.777+00	116	\N	978202981	96223	1607	0.9
2025-07-01 08:50:04.75+00	116	\N	1126982881	96212	1626	0.9
2025-07-01 08:51:31.721+00	116	\N	1041420528	96235	1628	0.9
2025-07-01 08:51:39.835+00	116	\N	978202981	96223	1629	0.9
2025-07-01 09:20:50.812+00	116	\N	1126982881	96207	1647	0.9
2025-07-01 09:22:17.768+00	116	\N	1041420528	96232	1649	0.9
2025-07-01 09:22:25.873+00	116	\N	978202981	96221	1650	0.9
2025-07-01 09:51:36.824+00	116	\N	1126982881	96183	1668	0.9
2025-07-01 09:53:03.818+00	116	\N	1041420528	96206	1669	0.9
2025-07-01 09:53:11.925+00	116	\N	978202981	96195	1670	0.9
2025-07-01 10:22:22.88+00	116	\N	1126982881	96175	1693	0.9
2025-07-01 10:23:49.851+00	116	\N	1041420528	96197	1694	0.9
2025-07-01 10:23:58.012+00	116	\N	978202981	96185	1695	0.9
2025-07-01 11:23:54.96+00	116	\N	1126982881	96137	1739	0.9
2025-07-01 11:25:21.952+00	116	\N	1041420528	96164	1742	0.9
2025-07-01 11:25:30.096+00	116	\N	978202981	96153	1743	0.9
2025-07-01 11:54:40.991+00	116	\N	1126982881	96109	1768	0.9
2025-07-01 11:56:07.995+00	116	\N	1041420528	96138	1771	0.9
2025-07-01 11:56:16.137+00	116	\N	978202981	96127	1772	0.9
2025-07-01 12:25:27.048+00	116	\N	1126982881	96091	1795	0.9
2025-07-01 12:26:54.028+00	116	\N	1041420528	96121	1797	0.9
2025-07-01 12:27:02.162+00	116	\N	978202981	96109	1799	0.9
2025-07-01 12:56:13.076+00	116	\N	1126982881	96075	1816	0.9
2025-07-01 12:57:40.107+00	116	\N	1041420528	96102	1817	0.9
2025-07-01 12:57:48.223+00	116	\N	978202981	96091	1818	0.9
2025-07-01 13:26:59.134+00	116	\N	1126982881	96048	1837	0.9
2025-07-01 13:28:26.148+00	116	\N	1041420528	96078	1839	0.9
2025-07-01 13:28:34.315+00	116	\N	978202981	96068	1840	0.9
2025-07-01 13:57:45.159+00	116	\N	1126982881	96015	1858	0.9
2025-07-01 13:59:12.173+00	116	\N	1041420528	96050	1860	0.9
2025-07-01 13:59:20.363+00	116	\N	978202981	96039	1861	0.9
2025-07-01 15:30:03.309+00	116	\N	1126982881	95944	1921	0.9
2025-07-01 15:31:30.321+00	116	\N	1041420528	95973	1924	0.9
2025-07-01 15:31:38.55+00	116	\N	978202981	95962	1925	0.9
2025-07-01 16:31:35.392+00	116	\N	1126982881	95914	1961	0.9
2025-07-01 16:33:10.623+00	116	\N	978202981	95940	1962	0.9
2025-07-01 16:33:02.416+00	116	\N	1041420528	95950	1963	0.9
2025-07-01 17:02:21.423+00	116	\N	1126982881	95908	1980	0.9
2025-07-01 17:03:48.457+00	116	\N	1041420528	95944	1981	0.9
2025-07-01 17:03:56.663+00	116	\N	978202981	95933	1982	0.9
2025-07-01 17:33:07.463+00	116	\N	1126982881	95913	2000	0.9
2025-07-01 17:34:34.498+00	116	\N	1041420528	95947	2001	0.9
2025-07-01 17:34:42.692+00	116	\N	978202981	95937	2002	0.9
2025-07-01 18:03:53.527+00	116	\N	1126982881	95917	2020	0.9
2025-07-01 18:05:20.523+00	116	\N	1041420528	95954	2023	0.9
2025-07-01 18:05:28.757+00	116	\N	978202981	95944	2024	0.9
2025-07-01 18:34:39.574+00	116	\N	1126982881	95945	2044	0.9
2025-07-01 18:36:14.824+00	116	\N	978202981	95972	2047	0.9
2025-07-01 18:36:06.558+00	116	\N	1041420528	95982	2048	0.9
2025-07-01 19:05:25.617+00	116	\N	1126982881	95966	2070	0.9
2025-07-01 19:06:52.641+00	116	\N	1041420528	96003	2073	0.9
2025-07-01 19:07:00.856+00	116	\N	978202981	95994	2074	0.9
2025-07-01 19:36:11.665+00	116	\N	1126982881	95988	2096	0.9
2025-07-01 19:37:38.702+00	116	\N	1041420528	96026	2097	0.9
2025-07-01 19:37:46.934+00	116	\N	978202981	96016	2098	0.9
2025-07-01 20:06:57.702+00	116	\N	1126982881	96018	2129	0.9
2025-07-01 20:08:24.738+00	116	\N	1041420528	96049	2131	0.9
2025-07-01 20:08:32.962+00	116	\N	978202981	96039	2133	0.9
2025-07-01 20:37:43.771+00	116	\N	1126982881	96033	2169	0.9
2025-07-01 20:39:10.808+00	116	\N	1041420528	96066	2170	0.9
2025-07-01 20:39:19.029+00	116	\N	978202981	96055	2171	0.9
2025-07-01 21:08:29.812+00	116	\N	1126982881	96051	2189	0.9
2025-07-01 21:09:56.833+00	116	\N	1041420528	96084	2190	0.9
2025-07-01 21:10:05.057+00	116	\N	978202981	96072	2192	0.9
2025-07-01 21:39:15.895+00	116	\N	1126982881	96048	2230	0.9
2025-07-01 21:40:42.874+00	116	\N	1041420528	96078	2233	0.9
2025-07-01 21:40:51.154+00	116	\N	978202981	96066	2234	0.9
2025-07-01 22:10:01.918+00	116	\N	1126982881	96056	2254	0.9
2025-07-01 22:11:28.917+00	116	\N	1041420528	96087	2257	0.9
2025-07-01 22:11:37.188+00	116	\N	978202981	96075	2258	0.9
2025-07-02 07:23:50.66+00	116	\N	1126982881	96123	2676	0.9
2025-07-02 07:25:17.673+00	116	\N	1041420528	96155	2681	0.9
2025-07-02 07:25:26.295+00	116	\N	978202981	96144	2682	0.9
2025-07-02 07:54:36.694+00	116	\N	1126982881	96133	2694	0.9
2025-07-02 07:56:03.723+00	116	\N	1041420528	96164	2699	0.9
2025-07-02 07:56:12.369+00	116	\N	978202981	96153	2700	0.9
2025-07-02 08:25:22.724+00	116	\N	1126982881	96133	2715	0.9
2025-07-02 08:26:49.747+00	116	\N	1041420528	96164	2717	0.9
2025-07-02 08:26:58.439+00	116	\N	978202981	96152	2718	0.9
2025-07-02 08:56:08.791+00	116	\N	1126982881	96130	2733	0.9
2025-07-02 08:57:35.788+00	116	\N	1041420528	96163	2735	0.9
2025-07-02 08:57:44.506+00	116	\N	978202981	96152	2736	0.9
2025-07-02 09:26:54.833+00	116	\N	1126982881	96137	2774	0.9
2025-07-02 09:28:21.83+00	116	\N	1041420528	96159	2782	0.9
2025-07-02 09:28:30.569+00	116	\N	978202981	96149	2783	0.9
2025-07-02 09:57:40.885+00	116	\N	1126982881	96133	2863	0.9
2025-07-02 09:59:07.859+00	116	\N	1041420528	96156	2864	0.9
2025-07-02 09:59:16.652+00	116	\N	978202981	96146	2865	0.9
2025-07-02 10:28:26.936+00	116	\N	1126982881	96119	2915	0.9
2025-07-02 10:29:53.891+00	116	\N	1041420528	96141	2916	0.9
2025-07-02 10:30:02.699+00	116	\N	978202981	96131	2917	0.9
2025-07-02 10:59:12.97+00	116	\N	1126982881	96117	2943	0.9
2025-07-02 11:00:39.942+00	116	\N	1041420528	96133	2944	0.9
2025-07-02 11:00:48.745+00	116	\N	978202981	96124	2945	0.9
2025-07-02 12:00:45.044+00	116	\N	1126982881	96078	3009	0.9
2025-07-02 12:02:12.029+00	116	\N	1041420528	96100	3010	0.9
2025-07-02 12:02:20.852+00	116	\N	978202981	96089	3011	0.9
2025-07-02 12:31:31.107+00	116	\N	1126982881	96048	3042	0.9
2025-07-02 12:32:58.061+00	116	\N	1041420528	96072	3044	0.9
2025-07-02 12:33:06.913+00	116	\N	978202981	96062	3045	0.9
2025-07-02 13:02:17.161+00	116	\N	1126982881	96021	3061	0.9
2025-07-02 13:03:44.125+00	116	\N	1041420528	96044	3062	0.9
2025-07-02 13:03:52.953+00	116	\N	978202981	96035	3063	0.9
2025-07-02 13:33:03.231+00	116	\N	1126982881	96016	3086	0.9
2025-07-02 13:34:30.188+00	116	\N	1041420528	96040	3087	0.9
2025-07-02 13:34:39.016+00	116	\N	978202981	96031	3088	0.9
2025-07-02 14:03:49.289+00	116	\N	1126982881	96008	3131	0.9
2025-07-02 14:05:16.225+00	116	\N	1041420528	96028	3135	0.9
2025-07-02 14:05:25.045+00	116	\N	978202981	96018	3136	0.9
2025-07-02 14:34:35.336+00	116	\N	1126982881	95980	3153	0.9
2025-07-02 14:36:02.262+00	116	\N	1041420528	96002	3156	0.9
2025-07-02 14:36:11.103+00	116	\N	978202981	95994	3157	0.9
2025-07-02 15:05:21.397+00	116	\N	1126982881	95965	3173	0.9
2025-07-02 15:06:48.299+00	116	\N	1041420528	95987	3174	0.9
2025-07-02 15:06:57.176+00	116	\N	978202981	95977	3175	0.9
2025-07-02 15:36:07.439+00	116	\N	1126982881	95961	3196	0.9
2025-07-02 15:37:34.363+00	116	\N	1041420528	95973	3202	0.9
2025-07-02 15:37:43.225+00	116	\N	978202981	95964	3204	0.9
2025-07-02 16:06:53.486+00	116	\N	1126982881	95937	3255	0.9
2025-07-02 16:08:20.423+00	116	\N	1041420528	95958	3258	0.9
2025-07-02 16:08:29.262+00	116	\N	978202981	95949	3259	0.9
2025-07-02 16:37:39.526+00	116	\N	1126982881	95924	3288	0.9
2025-07-02 16:39:06.468+00	116	\N	1041420528	95947	3289	0.9
2025-07-02 16:39:15.328+00	116	\N	978202981	95938	3290	0.9
2025-07-02 17:08:25.557+00	116	\N	1126982881	95922	3317	0.9
2025-07-02 17:09:52.509+00	116	\N	1041420528	95944	3318	0.9
2025-07-02 17:10:01.399+00	116	\N	978202981	95935	3319	0.9
2025-07-02 17:39:11.597+00	116	\N	1126982881	95923	3344	0.9
2025-07-02 17:40:38.539+00	116	\N	1041420528	95945	3345	0.9
2025-07-02 17:40:47.475+00	116	\N	978202981	95936	3346	0.9
2025-07-02 18:09:57.66+00	116	\N	1126982881	95939	3362	0.9
2025-07-02 18:11:24.574+00	116	\N	1041420528	95961	3363	0.9
2025-07-02 18:11:33.526+00	116	\N	978202981	95953	3364	0.9
2025-07-02 18:40:43.696+00	116	\N	1126982881	95998	3382	0.9
2025-07-02 18:42:10.617+00	116	\N	1041420528	96020	3383	0.9
2025-07-02 18:42:19.59+00	116	\N	978202981	96012	3384	0.9
2025-07-02 19:11:29.715+00	116	\N	1126982881	96061	3400	0.9
2025-07-02 19:12:56.66+00	116	\N	1041420528	96086	3401	0.9
2025-07-02 19:13:05.637+00	116	\N	978202981	96078	3402	0.9
2025-07-02 19:42:15.767+00	116	\N	1126982881	96132	3422	0.9
2025-07-02 19:43:42.694+00	116	\N	1041420528	96160	3423	0.9
2025-07-02 19:43:51.692+00	116	\N	978202981	96151	3424	0.9
2025-07-02 20:13:01.805+00	116	\N	1126982881	96199	3445	0.9
2025-07-02 20:14:28.75+00	116	\N	1041420528	96227	3447	0.9
2025-07-02 20:14:37.788+00	116	\N	978202981	96220	3448	0.9
2025-07-02 21:09:57.671+00	116	\N	1041420528	96382	3485	0.9
2025-07-02 21:10:01.529+00	116	\N	1126982881	96355	3486	0.9
2025-07-02 21:10:06.749+00	116	\N	978202981	96374	3487	0.9
2025-07-02 21:40:47.572+00	116	\N	1126982881	96431	3507	0.9
2025-07-02 21:40:43.72+00	116	\N	1041420528	96457	3508	0.9
2025-07-02 21:40:52.785+00	116	\N	978202981	96450	3509	0.9
2025-07-02 22:11:33.599+00	116	\N	1126982881	96402	3526	0.9
2025-07-02 22:11:29.8+00	116	\N	1041420528	96430	3527	0.9
2025-07-02 22:11:38.85+00	116	\N	978202981	96420	3528	0.9
2025-07-02 22:42:19.65+00	116	\N	1126982881	96364	3552	0.9
2025-07-02 22:42:15.825+00	116	\N	1041420528	96389	3553	0.9
2025-07-02 22:42:24.908+00	116	\N	978202981	96381	3554	0.9
2025-07-02 23:13:01.876+00	116	\N	1041420528	96374	3572	0.9
2025-07-02 23:13:05.699+00	116	\N	1126982881	96349	3573	0.9
2025-07-02 23:13:10.963+00	116	\N	978202981	96365	3574	0.9
2025-07-02 23:43:47.911+00	116	\N	1041420528	96344	3595	0.9
2025-07-02 23:43:51.756+00	116	\N	1126982881	96321	3596	0.9
2025-07-02 23:43:57.011+00	116	\N	978202981	96335	3597	0.9
\.


--
-- Data for Name: _hyper_7_11_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_7_11_chunk ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
2025-07-03 07:39:41.931+00	142	\N	1126982881	3.123	3946	0.9
2025-07-03 09:40:17.242+00	142	\N	1897240282	3.297	4027	0.9
2025-07-03 10:36:02.999+00	142	\N	1041420528	3.123	4065	0.9
2025-07-03 10:36:08.824+00	142	\N	978202981	3.134	4066	0.9
2025-07-03 11:42:41.636+00	142	\N	1126982881	3.126	4107	0.9
2025-07-03 15:45:41.353+00	142	\N	1126982881	3.13	4262	0.9
2025-07-03 17:46:15.819+00	142	\N	1897240282	3.296	4353	0.9
2025-07-03 18:42:02.484+00	142	\N	1041420528	3.123	4407	0.9
2025-07-03 18:42:08.322+00	142	\N	978202981	3.133	4408	0.9
2025-07-03 19:48:41.07+00	142	\N	1126982881	3.124	4471	0.9
2025-07-03 21:49:14.17+00	142	\N	1897240282	3.297	4594	0.9
2025-07-03 22:45:02.21+00	142	\N	1041420528	3.121	4681	0.9
2025-07-03 22:45:08.045+00	142	\N	978202981	3.136	4682	0.9
2025-07-03 23:51:40.78+00	142	\N	1126982881	3.116	4803	0.9
2025-07-04 09:58:11.756+00	142	\N	1897240282	3.302	5243	0.9
2025-07-04 12:00:39.885+00	142	\N	1126982881	3.119	5413	0.9
2025-07-04 14:01:11.018+00	142	\N	1897240282	3.295	5554	0.9
2025-07-04 20:06:39.328+00	142	telegraf	1126982881	3.116	6245	1
2025-07-04 22:07:09.719+00	142	telegraf	1897240282	3.299	6458	1
2025-07-04 23:03:00.568+00	142	telegraf	1041420528	3.113	6520	1
2025-07-04 23:03:06.402+00	142	telegraf	978202981	3.13	6521	1
2025-07-05 10:16:07.178+00	142	telegraf	1897240282	3.299	7025	1
2025-07-05 14:19:06.385+00	142	telegraf	1897240282	3.296	7183	1
2025-07-05 15:14:59.506+00	142	telegraf	1041420528	3.109	7214	1
2025-07-05 15:15:05.254+00	142	telegraf	978202981	3.121	7215	1
2025-07-05 20:24:37.541+00	142	telegraf	1126982881	3.109	7467	1
2025-07-05 22:25:04.75+00	142	telegraf	1897240282	3.298	7571	1
2025-07-05 23:20:58.992+00	142	telegraf	1041420528	3.11	7614	1
2025-07-05 23:21:04.691+00	142	telegraf	978202981	3.119	7615	1
2025-07-07 09:08:05.421+00	142	telegraf	1897240282	3.316	6	1
2025-07-07 09:10:55.129+00	142	telegraf	840973111	3.079	140	1
2025-07-07 09:10:56.261+00	142	telegraf	1523842139	3.092	141	1
2025-07-07 09:48:04.589+00	142	telegraf	1070166865	3.281	3	1
2025-07-07 11:48:01.373+00	142	telegraf	978202981	3.102	95	1
2025-07-07 11:47:55.451+00	142	telegraf	1041420528	3.086	96	1
2025-07-07 12:54:34.549+00	142	telegraf	1126982881	3.087	241	1
2025-07-07 13:13:55.172+00	142	telegraf	1523842139	3.093	408	1
2025-07-07 13:52:53.404+00	142	telegraf	3839865	3.077	722	1
2025-07-07 13:53:23.388+00	142	telegraf	632461688	3.085	727	1
2025-07-07 14:06:06.41+00	142	telegraf	840973111	3.073	835	1
2025-07-07 14:12:21.667+00	142	telegraf	333419537	3.074	873	1
2025-07-07 14:23:23.136+00	142	telegraf	305822513	3.094	1009	1
2025-07-07 14:53:32.089+00	142	telegraf	1897240282	3.299	1189	1
2025-07-08 08:02:54.053+00	142	telegraf	1041420528	3.084	47	1
2025-07-08 08:02:59.549+00	142	telegraf	978202981	3.102	49	1
2025-07-08 09:09:32.049+00	142	telegraf	1126982881	3.091	270	1
2025-07-09 09:23:36.518+00	142	telegraf	1897240282	3.3	6	1
2025-07-09 09:27:30.343+00	142	telegraf	1126982881	3.082	12	1
\.


--
-- Data for Name: _hyper_7_21_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_7_21_chunk ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
2025-07-10 08:38:50.907+00	142	telegraf	1041420528	3.078	140	1
2025-07-10 08:38:56.322+00	142	telegraf	978202981	3.088	141	1
2025-07-10 09:45:28.495+00	142	telegraf	1126982881	3.08	193	1
2025-07-10 12:41:56.024+00	142	telegraf	978202981	3.091	312	1
2025-07-10 12:41:50.837+00	142	telegraf	1041420528	3.074	313	1
2025-07-10 16:44:50.557+00	142	telegraf	1041420528	3.079	481	1
2025-07-10 16:44:55.747+00	142	telegraf	978202981	3.087	482	1
2025-07-10 17:51:27.898+00	142	telegraf	1126982881	3.077	522	1
2025-07-11 06:53:27.308+00	142	telegraf	1897240282	3.319	5	1
2025-07-11 08:56:49.44+00	142	telegraf	1041420528	3.077	95	1
2025-07-11 08:56:54.607+00	142	telegraf	978202981	3.086	96	1
2025-07-12 05:52:14.41+00	142	telegraf	1897240282	3.315	12	1
2025-07-12 06:18:24.722+00	142	telegraf	1126982881	3.077	27	1
2025-07-12 09:14:52.932+00	142	telegraf	978202981	3.09	138	1
2025-07-12 09:14:47.791+00	142	telegraf	1041420528	3.076	139	1
2025-07-12 10:21:24.422+00	142	telegraf	1126982881	3.078	181	1
2025-07-12 17:20:46.228+00	142	telegraf	1041420528	3.079	450	1
2025-07-12 17:20:52.365+00	142	telegraf	978202981	3.087	451	1
2025-07-12 18:01:12.257+00	142	telegraf	1897240282	3.299	473	1
2025-07-12 18:27:23.881+00	142	telegraf	1126982881	3.08	490	1
2025-07-12 21:23:45.945+00	142	telegraf	1041420528	3.077	600	1
2025-07-12 21:23:52.085+00	142	telegraf	978202981	3.09	601	1
2025-07-12 22:04:11.592+00	142	telegraf	1897240282	3.296	625	1
2025-07-13 06:36:23.037+00	142	telegraf	1126982881	3.085	942	1
2025-07-13 13:35:44.833+00	142	telegraf	1041420528	3.08	1211	1
2025-07-13 14:42:22.454+00	142	telegraf	1126982881	3.082	1254	1
2025-07-16 14:29:39.97+00	142	telegraf	1041420528	3.08	4016	1
2025-07-16 14:29:44.943+00	142	telegraf	978202981	3.088	4017	1
2025-07-16 15:09:56.174+00	142	telegraf	1897240282	3.298	4042	1
2025-07-16 15:36:17.236+00	142	telegraf	1126982881	3.075	4058	1
2025-07-16 19:12:55.503+00	142	telegraf	1897240282	3.294	4198	1
2025-07-16 19:39:16.938+00	142	telegraf	1126982881	3.077	4214	1
\.


--
-- Data for Name: _hyper_7_26_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_7_26_chunk ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
2025-07-17 06:41:38.852+00	142	telegraf	1041420528	3.077	4640	1
2025-07-17 06:41:43.834+00	142	telegraf	978202981	3.089	4641	1
2025-07-17 07:21:53.456+00	142	telegraf	1897240282	3.296	4665	1
2025-07-17 10:44:43.611+00	142	telegraf	978202981	3.089	4791	1
2025-07-17 10:44:38.583+00	142	telegraf	1041420528	3.078	4792	1
2025-07-17 15:27:52.227+00	142	telegraf	1897240282	3.293	4968	1
2025-07-17 15:54:15.504+00	142	telegraf	1126982881	3.082	4986	1
2025-07-17 19:30:51.72+00	142	telegraf	1897240282	3.297	5123	1
2025-07-17 19:57:15.22+00	142	telegraf	1126982881	3.08	5138	1
2025-07-18 06:59:37.249+00	142	telegraf	1041420528	3.077	5567	1
2025-07-18 06:59:42.246+00	142	telegraf	978202981	3.085	5568	1
2025-07-18 08:06:13.321+00	142	telegraf	1126982881	3.075	5622	1
2025-07-18 11:02:36.975+00	142	telegraf	1041420528	3.074	5726	1
2025-07-18 11:02:41.955+00	142	telegraf	978202981	3.087	5727	1
2025-07-18 11:42:49.137+00	142	telegraf	1897240282	3.292	5754	1
2025-07-18 12:09:13.017+00	142	telegraf	1126982881	3.075	5768	1
2025-07-19 19:26:39.716+00	142	telegraf	978202981	3.087	7175	1
2025-07-19 19:26:33.811+00	142	telegraf	1041420528	3.075	7176	1
2025-07-20 08:15:39.799+00	142	telegraf	1897240282	3.299	7651	1
2025-07-20 12:18:39.112+00	142	telegraf	1897240282	3.295	7820	1
2025-07-20 12:34:12.113+00	142	telegraf	1070166865	3.287	17	1
2025-07-20 12:45:09.668+00	142	telegraf	1126982881	3.075	7835	1
2025-07-20 13:04:31.086+00	142	telegraf	1523842139	3.067	134	1
2025-07-20 13:04:32.813+00	142	telegraf	527134251	3.054	135	1
2025-07-20 15:10:01.599+00	142	telegraf	840973111	3.06	45	1
2025-07-20 15:11:31.858+00	142	telegraf	527134251	3.045	61	1
2025-07-20 15:16:26.378+00	142	telegraf	1523842139	3.066	100	1
2025-07-20 15:22:44.234+00	142	telegraf	1523842139	3.068	158	1
2025-07-20 15:25:28.307+00	142	telegraf	840973111	3.06	183	1
2025-07-20 15:40:44.899+00	142	telegraf	527134251	3.044	253	1
2025-07-20 15:41:32.455+00	142	telegraf	1041420528	3.075	7945	1
2025-07-20 16:48:09.377+00	142	telegraf	1126982881	3.07	7997	1
2025-07-20 19:44:32.203+00	142	telegraf	1041420528	3.074	8146	1
2025-07-20 19:44:38.012+00	142	telegraf	978202981	3.079	8147	1
2025-07-22 08:20:10.84+00	142	telegraf	1897240282	3.294	542	1
2025-07-22 12:14:29.472+00	142	telegraf	1041420528	3.069	678	1
2025-07-22 12:14:34.186+00	142	telegraf	978202981	3.079	679	1
2025-07-22 12:23:10.519+00	142	telegraf	1897240282	3.298	687	1
2025-07-22 13:21:06.162+00	142	telegraf	1126982881	3.068	722	1
2025-07-22 20:20:28.953+00	142	telegraf	1041420528	3.069	1395	1
2025-07-22 20:20:33.643+00	142	telegraf	978202981	3.078	1396	1
2025-07-22 20:29:09.17+00	142	telegraf	1897240282	3.299	1420	1
2025-07-22 21:18:50.56+00	142	telegraf	1070166865	3.289	3	1
2025-07-22 21:20:49.167+00	142	telegraf	1523842139	3.063	4	1
2025-07-22 21:27:05.572+00	142	telegraf	1126982881	3.071	1470	1
2025-07-22 22:40:50.365+00	142	telegraf	840973111	3.053	210	1
2025-07-23 08:29:32.821+00	142	telegraf	978202981	3.078	1960	1
2025-07-23 08:29:28.106+00	142	telegraf	1041420528	3.069	1961	1
2025-07-23 08:38:06.788+00	142	telegraf	1897240282	3.303	1978	1
2025-07-23 09:36:04.676+00	142	telegraf	1126982881	3.061	2017	1
2025-07-23 13:39:04.373+00	142	telegraf	1126982881	3.066	2199	1
2025-07-23 17:42:04.075+00	142	telegraf	1126982881	3.065	2389	1
\.


--
-- Data for Name: _hyper_7_35_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_7_35_chunk ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
2025-07-25 13:08:24.392+00	142	telegraf	1041420528	3.063	4069	1
2025-07-25 13:08:29.478+00	142	telegraf	978202981	3.074	4070	1
2025-07-25 13:16:55.703+00	142	telegraf	1897240282	3.299	4080	1
2025-07-25 14:14:59.771+00	142	telegraf	1126982881	3.059	4115	1
2025-07-25 17:11:24.11+00	142	telegraf	1041420528	3.063	4239	1
2025-07-25 17:11:29.175+00	142	telegraf	978202981	3.073	4240	1
2025-07-25 17:19:54.864+00	142	telegraf	1897240282	3.298	4249	1
2025-07-25 18:17:59.453+00	142	telegraf	1126982881	3.06	4285	1
2025-07-25 21:14:23.849+00	142	telegraf	1041420528	3.062	4388	1
2025-07-25 21:14:28.907+00	142	telegraf	978202981	3.071	4389	1
2025-07-25 21:22:54.032+00	142	telegraf	1897240282	3.3	4396	1
2025-07-25 22:20:59.166+00	142	telegraf	1126982881	3.057	4431	1
2025-07-26 01:17:28.621+00	142	telegraf	978202981	3.071	4538	1
2025-07-26 01:17:23.594+00	142	telegraf	1041420528	3.063	4539	1
2025-07-26 01:25:53.205+00	142	telegraf	1897240282	3.299	4543	1
2025-07-26 02:23:58.888+00	142	telegraf	1126982881	3.057	4578	1
2025-07-26 05:20:23.35+00	142	telegraf	1041420528	3.063	4685	1
2025-07-26 05:20:28.376+00	142	telegraf	978202981	3.071	4686	1
2025-07-26 05:28:52.403+00	142	telegraf	1897240282	3.3	4692	1
2025-07-26 06:26:58.689+00	142	telegraf	1126982881	3.063	4729	1
2025-07-26 09:23:23.062+00	142	telegraf	1041420528	3.062	4833	1
2025-07-26 09:23:28.081+00	142	telegraf	978202981	3.067	4834	1
2025-07-26 09:31:51.566+00	142	telegraf	1897240282	3.294	4840	1
2025-07-26 10:29:58.381+00	142	telegraf	1126982881	3.061	4879	1
2025-07-26 13:26:22.785+00	142	telegraf	1041420528	3.063	4988	1
2025-07-26 13:26:27.797+00	142	telegraf	978202981	3.07	4989	1
2025-07-26 13:34:49.73+00	142	telegraf	1897240282	3.299	4990	1
2025-07-26 14:32:58.087+00	142	telegraf	1126982881	3.059	5031	1
2025-07-26 17:29:22.512+00	142	telegraf	1041420528	3.062	5154	1
2025-07-26 17:29:27.521+00	142	telegraf	978202981	3.07	5155	1
2025-07-26 17:37:48.944+00	142	telegraf	1897240282	3.299	5158	1
2025-07-26 18:35:57.803+00	142	telegraf	1126982881	3.058	5201	1
2025-07-26 21:32:22.236+00	142	telegraf	1041420528	3.062	5314	1
2025-07-26 21:32:27.251+00	142	telegraf	978202981	3.068	5315	1
2025-07-26 21:40:48.166+00	142	telegraf	1897240282	3.295	5318	1
\.


--
-- Data for Name: _hyper_7_7_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_7_7_chunk ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
2025-06-28 13:09:17.59+00	142	\N	978202981	3.161	110	0.9
2025-06-28 13:09:11.767+00	142	\N	1041420528	3.144	111	0.9
2025-06-28 14:15:50.845+00	142	\N	1126982881	3.151	158	0.9
2025-06-28 15:17:20.736+00	142	\N	1897240282	3.294	206	0.9
2025-06-28 17:12:11.505+00	142	\N	1041420528	3.148	279	0.9
2025-06-28 17:12:17.317+00	142	\N	978202981	3.164	280	0.9
2025-06-28 18:18:50.553+00	142	\N	1126982881	3.15	346	0.9
2025-06-28 19:20:19.938+00	142	\N	1897240282	3.298	386	0.9
2025-06-30 14:51:46.351+00	142	\N	1126982881	3.143	763	0.9
2025-06-30 16:52:28.878+00	142	\N	1897240282	3.298	851	0.9
2025-06-30 17:48:07.256+00	142	\N	1041420528	3.138	889	0.9
2025-06-30 17:48:13.073+00	142	\N	978202981	3.153	890	0.9
2025-06-30 20:55:28.143+00	142	\N	1897240282	3.298	1102	0.9
2025-06-30 21:51:06.989+00	142	\N	1041420528	3.141	1145	0.9
2025-06-30 21:51:12.797+00	142	\N	978202981	3.15	1146	0.9
2025-07-01 05:57:06.438+00	142	\N	1041420528	3.136	1511	0.9
2025-07-01 05:57:12.245+00	142	\N	978202981	3.149	1512	0.9
2025-07-01 07:03:45.228+00	142	\N	1126982881	3.141	1555	0.9
2025-07-01 09:04:25.937+00	142	\N	1897240282	3.295	1638	0.9
2025-07-01 10:00:06.16+00	142	\N	1041420528	3.135	1675	0.9
2025-07-01 10:00:11.979+00	142	\N	978202981	3.149	1676	0.9
2025-07-01 13:07:25.262+00	142	\N	1897240282	3.294	1825	0.9
2025-07-01 14:03:05.878+00	142	\N	1041420528	3.132	1863	0.9
2025-07-01 14:03:11.713+00	142	\N	978202981	3.149	1864	0.9
2025-07-01 18:06:05.619+00	142	\N	1041420528	3.131	2027	0.9
2025-07-01 18:06:11.438+00	142	\N	978202981	3.148	2028	0.9
2025-07-01 19:12:44.464+00	142	\N	1126982881	3.147	2077	0.9
2025-07-01 21:13:23.898+00	142	\N	1897240282	3.303	2196	0.9
2025-07-01 22:09:05.348+00	142	\N	1041420528	3.133	2252	0.9
2025-07-01 22:09:11.224+00	142	\N	978202981	3.147	2253	0.9
2025-07-02 09:22:21.562+00	142	\N	1897240282	3.297	2763	0.9
2025-07-02 10:18:04.591+00	142	\N	1041420528	3.124	2907	0.9
2025-07-02 10:18:10.423+00	142	\N	978202981	3.14	2908	0.9
2025-07-02 13:25:20.86+00	142	\N	1897240282	3.293	3083	0.9
2025-07-02 14:21:04.332+00	142	\N	1041420528	3.125	3145	0.9
2025-07-02 14:21:10.153+00	142	\N	978202981	3.137	3146	0.9
2025-07-02 15:27:43.044+00	142	\N	1126982881	3.131	3188	0.9
2025-07-02 17:28:20.193+00	142	\N	1897240282	3.294	3338	0.9
2025-07-02 18:24:04.054+00	142	\N	1041420528	3.127	3370	0.9
2025-07-02 18:24:09.886+00	142	\N	978202981	3.136	3371	0.9
2025-07-02 19:30:42.772+00	142	\N	1126982881	3.132	3416	0.9
2025-07-02 21:31:19.513+00	142	\N	1897240282	3.299	3499	0.9
2025-07-02 22:27:03.808+00	142	\N	1041420528	3.123	3537	0.9
2025-07-02 22:27:09.615+00	142	\N	978202981	3.139	3538	0.9
2025-07-02 23:33:42.505+00	142	\N	1126982881	3.133	3588	0.9
\.


--
-- Data for Name: mqtt_consumer; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.mqtt_consumer ("time", host, event_id, optional_periods_0, optional_periods_1, optional_periods_2, sensor_id, sensor_period, source_address) FROM stdin;
2025-07-07 09:59:47.737	telegraf	40	\N	\N	\N	1	\N	840973111
2025-07-07 10:00:06.742	telegraf	46	60	600	1800	0	30	840973111
2025-07-20 15:10:44.854	telegraf	50	\N	\N	\N	1	\N	1523842139
2025-07-20 15:11:03.864	telegraf	56	60	600	1800	0	30	1523842139
2025-07-20 15:13:07.351	telegraf	68	\N	\N	\N	1	\N	1523842139
2025-07-20 15:13:26.359	telegraf	74	60	600	1800	0	30	1523842139
2025-07-20 15:19:25.228	telegraf	121	\N	\N	\N	1	\N	1523842139
2025-07-20 15:19:44.232	telegraf	130	60	600	1800	0	30	1523842139
2025-07-20 15:22:09.296	telegraf	149	\N	\N	\N	1	\N	840973111
2025-07-20 15:22:28.302	telegraf	155	60	600	1800	0	30	840973111
2025-07-20 15:37:44.893	telegraf	234	60	600	1800	0	30	527134251
\.


--
-- Data for Name: sensor_button; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_button ("time", host, button, event_id, sensor_id, source_address) FROM stdin;
2025-07-04 18:14:43.491	telegraf	13	6083	125	1126982881
2025-07-04 18:17:13.688	telegraf	13	6096	125	1126982881
2025-07-04 19:39:43.381	telegraf	13	6204	125	1126982881
2025-07-08 08:27:56.097	telegraf	13	136	125	1041420528
2025-07-10 07:26:29.041	telegraf	13	30	125	978202981
2025-07-19 16:37:27.036	telegraf	13	7020	125	1041420528
2025-07-19 16:46:49.179	telegraf	13	7054	125	1041420528
2025-07-20 19:44:39.616	telegraf	13	8145	125	1126982881
2025-07-21 06:47:12.559	telegraf	13	391	125	1126982881
2025-07-21 21:25:09.526	telegraf	13	114	125	1126982881
2025-07-21 21:25:12.55	telegraf	13	115	125	1126982881
2025-07-22 13:51:22.454	telegraf	13	748	125	1126982881
2025-07-22 17:06:03.681	telegraf	13	1024	125	1126982881
2025-07-22 17:06:07.605	telegraf	13	1025	125	1126982881
2025-07-22 17:06:08.396	telegraf	13	1026	125	1126982881
2025-07-22 17:07:42.127	telegraf	13	1033	125	1126982881
2025-07-22 17:07:52.147	telegraf	13	1035	125	1126982881
2025-07-22 17:08:46.263	telegraf	13	1037	125	1126982881
2025-07-22 17:09:53.179	telegraf	13	1044	125	1126982881
2025-07-22 17:20:59.443	telegraf	13	1060	125	1126982881
2025-07-22 17:21:25.119	telegraf	13	1063	125	1126982881
2025-07-22 17:32:52.76	telegraf	13	1111	125	1126982881
2025-07-22 17:32:53.993	telegraf	13	1112	125	1126982881
2025-07-22 17:33:02.135	telegraf	13	1115	125	1126982881
2025-07-22 17:37:03.168	telegraf	13	1127	125	1126982881
2025-07-22 17:39:58.693	telegraf	13	1139	125	1126982881
2025-07-22 17:40:20.352	telegraf	13	1142	125	1126982881
2025-07-22 17:44:51.311	telegraf	13	1153	125	1126982881
2025-07-22 17:44:55.101	telegraf	13	1154	125	1126982881
2025-07-22 17:55:22.642	telegraf	13	1181	125	1126982881
2025-07-22 17:55:53.511	telegraf	13	1184	125	1126982881
2025-07-22 19:27:56.91	telegraf	13	1269	125	1126982881
2025-07-22 19:27:57.821	telegraf	13	1270	125	1126982881
2025-07-22 19:30:12.113	telegraf	13	1284	125	1126982881
2025-07-22 19:51:12.644	telegraf	13	1328	125	1126982881
2025-07-22 20:19:46.621	telegraf	13	1391	125	1126982881
2025-07-22 20:22:54.443	telegraf	13	1403	125	1126982881
2025-07-23 07:42:08.563	telegraf	13	1850	125	1126982881
2025-07-23 07:42:10.778	telegraf	13	1851	125	1126982881
2025-07-23 07:59:04.281	telegraf	13	1884	125	1126982881
2025-07-23 07:59:05.177	telegraf	13	1885	125	1126982881
2025-07-23 08:07:15.17	telegraf	13	1913	125	1126982881
2025-07-23 08:07:16.973	telegraf	13	1914	125	1126982881
2025-07-23 08:09:38.721	telegraf	13	1922	125	1126982881
2025-07-23 08:09:56.11	telegraf	13	1923	125	1126982881
2025-07-25 12:07:27.882	telegraf	13	3970	125	1126982881
2025-07-25 12:07:29.282	telegraf	13	3971	125	1126982881
2025-07-25 12:54:13.791	telegraf	13	4041	125	1126982881
2025-07-25 12:54:15.036	telegraf	13	4042	125	1126982881
2025-07-25 12:54:28.086	telegraf	13	4043	125	1126982881
2025-07-26 14:42:41.588	telegraf	13	5036	125	1126982881
2025-07-26 14:42:42.597	telegraf	13	5037	125	1126982881
\.


--
-- Data for Name: sensor_humidity; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_humidity ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_motion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_motion ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_neighbors_count; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_neighbors_count ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_neighbors_detail; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_neighbors_detail ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_pressure; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_pressure ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_temperature; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_temperature ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_voltage; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_voltage ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
\.


--
-- Name: chunk_column_stats_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_column_stats_id_seq', 1, false);


--
-- Name: chunk_constraint_name; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_constraint_name', 1, false);


--
-- Name: chunk_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_id_seq', 35, true);


--
-- Name: continuous_agg_migrate_plan_step_step_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.continuous_agg_migrate_plan_step_step_id_seq', 1, false);


--
-- Name: dimension_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.dimension_id_seq', 7, true);


--
-- Name: dimension_slice_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.dimension_slice_id_seq', 35, true);


--
-- Name: hypertable_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.hypertable_id_seq', 7, true);


--
-- Name: bgw_job_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_config; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_config.bgw_job_id_seq', 1000, false);


--
-- Name: _hyper_1_16_chunk_sensor_temperature_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_1_16_chunk_sensor_temperature_time_idx ON _timescaledb_internal._hyper_1_16_chunk USING btree ("time" DESC);


--
-- Name: _hyper_1_22_chunk_sensor_temperature_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_1_22_chunk_sensor_temperature_time_idx ON _timescaledb_internal._hyper_1_22_chunk USING btree ("time" DESC);


--
-- Name: _hyper_1_29_chunk_sensor_temperature_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_1_29_chunk_sensor_temperature_time_idx ON _timescaledb_internal._hyper_1_29_chunk USING btree ("time" DESC);


--
-- Name: _hyper_1_5_chunk_sensor_temperature_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_1_5_chunk_sensor_temperature_time_idx ON _timescaledb_internal._hyper_1_5_chunk USING btree ("time" DESC);


--
-- Name: _hyper_1_9_chunk_sensor_temperature_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_1_9_chunk_sensor_temperature_time_idx ON _timescaledb_internal._hyper_1_9_chunk USING btree ("time" DESC);


--
-- Name: _hyper_2_17_chunk_sensor_humidity_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_2_17_chunk_sensor_humidity_time_idx ON _timescaledb_internal._hyper_2_17_chunk USING btree ("time" DESC);


--
-- Name: _hyper_2_24_chunk_sensor_humidity_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_2_24_chunk_sensor_humidity_time_idx ON _timescaledb_internal._hyper_2_24_chunk USING btree ("time" DESC);


--
-- Name: _hyper_2_2_chunk_sensor_humidity_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_2_2_chunk_sensor_humidity_time_idx ON _timescaledb_internal._hyper_2_2_chunk USING btree ("time" DESC);


--
-- Name: _hyper_2_31_chunk_sensor_humidity_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_2_31_chunk_sensor_humidity_time_idx ON _timescaledb_internal._hyper_2_31_chunk USING btree ("time" DESC);


--
-- Name: _hyper_2_8_chunk_sensor_humidity_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_2_8_chunk_sensor_humidity_time_idx ON _timescaledb_internal._hyper_2_8_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_10_chunk_sensor_motion_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_3_10_chunk_sensor_motion_time_idx ON _timescaledb_internal._hyper_3_10_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_15_chunk_sensor_motion_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_3_15_chunk_sensor_motion_time_idx ON _timescaledb_internal._hyper_3_15_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1_chunk_sensor_motion_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_3_1_chunk_sensor_motion_time_idx ON _timescaledb_internal._hyper_3_1_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_23_chunk_sensor_motion_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_3_23_chunk_sensor_motion_time_idx ON _timescaledb_internal._hyper_3_23_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_30_chunk_sensor_motion_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_3_30_chunk_sensor_motion_time_idx ON _timescaledb_internal._hyper_3_30_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_13_chunk_sensor_neighbors_count_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_4_13_chunk_sensor_neighbors_count_time_idx ON _timescaledb_internal._hyper_4_13_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_18_chunk_sensor_neighbors_count_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_4_18_chunk_sensor_neighbors_count_time_idx ON _timescaledb_internal._hyper_4_18_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_27_chunk_sensor_neighbors_count_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_4_27_chunk_sensor_neighbors_count_time_idx ON _timescaledb_internal._hyper_4_27_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_33_chunk_sensor_neighbors_count_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_4_33_chunk_sensor_neighbors_count_time_idx ON _timescaledb_internal._hyper_4_33_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_3_chunk_sensor_neighbors_count_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_4_3_chunk_sensor_neighbors_count_time_idx ON _timescaledb_internal._hyper_4_3_chunk USING btree ("time" DESC);


--
-- Name: _hyper_5_14_chunk_sensor_neighbors_detail_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_5_14_chunk_sensor_neighbors_detail_time_idx ON _timescaledb_internal._hyper_5_14_chunk USING btree ("time" DESC);


--
-- Name: _hyper_5_19_chunk_sensor_neighbors_detail_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_5_19_chunk_sensor_neighbors_detail_time_idx ON _timescaledb_internal._hyper_5_19_chunk USING btree ("time" DESC);


--
-- Name: _hyper_5_28_chunk_sensor_neighbors_detail_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_5_28_chunk_sensor_neighbors_detail_time_idx ON _timescaledb_internal._hyper_5_28_chunk USING btree ("time" DESC);


--
-- Name: _hyper_5_34_chunk_sensor_neighbors_detail_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_5_34_chunk_sensor_neighbors_detail_time_idx ON _timescaledb_internal._hyper_5_34_chunk USING btree ("time" DESC);


--
-- Name: _hyper_5_4_chunk_sensor_neighbors_detail_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_5_4_chunk_sensor_neighbors_detail_time_idx ON _timescaledb_internal._hyper_5_4_chunk USING btree ("time" DESC);


--
-- Name: _hyper_6_12_chunk_sensor_pressure_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_6_12_chunk_sensor_pressure_time_idx ON _timescaledb_internal._hyper_6_12_chunk USING btree ("time" DESC);


--
-- Name: _hyper_6_20_chunk_sensor_pressure_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_6_20_chunk_sensor_pressure_time_idx ON _timescaledb_internal._hyper_6_20_chunk USING btree ("time" DESC);


--
-- Name: _hyper_6_25_chunk_sensor_pressure_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_6_25_chunk_sensor_pressure_time_idx ON _timescaledb_internal._hyper_6_25_chunk USING btree ("time" DESC);


--
-- Name: _hyper_6_32_chunk_sensor_pressure_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_6_32_chunk_sensor_pressure_time_idx ON _timescaledb_internal._hyper_6_32_chunk USING btree ("time" DESC);


--
-- Name: _hyper_6_6_chunk_sensor_pressure_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_6_6_chunk_sensor_pressure_time_idx ON _timescaledb_internal._hyper_6_6_chunk USING btree ("time" DESC);


--
-- Name: _hyper_7_11_chunk_sensor_voltage_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_7_11_chunk_sensor_voltage_time_idx ON _timescaledb_internal._hyper_7_11_chunk USING btree ("time" DESC);


--
-- Name: _hyper_7_21_chunk_sensor_voltage_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_7_21_chunk_sensor_voltage_time_idx ON _timescaledb_internal._hyper_7_21_chunk USING btree ("time" DESC);


--
-- Name: _hyper_7_26_chunk_sensor_voltage_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_7_26_chunk_sensor_voltage_time_idx ON _timescaledb_internal._hyper_7_26_chunk USING btree ("time" DESC);


--
-- Name: _hyper_7_35_chunk_sensor_voltage_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_7_35_chunk_sensor_voltage_time_idx ON _timescaledb_internal._hyper_7_35_chunk USING btree ("time" DESC);


--
-- Name: _hyper_7_7_chunk_sensor_voltage_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_7_7_chunk_sensor_voltage_time_idx ON _timescaledb_internal._hyper_7_7_chunk USING btree ("time" DESC);


--
-- Name: sensor_humidity_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_humidity_time_idx ON public.sensor_humidity USING btree ("time" DESC);


--
-- Name: sensor_motion_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_motion_time_idx ON public.sensor_motion USING btree ("time" DESC);


--
-- Name: sensor_neighbors_count_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_neighbors_count_time_idx ON public.sensor_neighbors_count USING btree ("time" DESC);


--
-- Name: sensor_neighbors_detail_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_neighbors_detail_time_idx ON public.sensor_neighbors_detail USING btree ("time" DESC);


--
-- Name: sensor_pressure_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_pressure_time_idx ON public.sensor_pressure USING btree ("time" DESC);


--
-- Name: sensor_temperature_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_temperature_time_idx ON public.sensor_temperature USING btree ("time" DESC);


--
-- Name: sensor_voltage_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_voltage_time_idx ON public.sensor_voltage USING btree ("time" DESC);


--
-- Name: sensor_humidity ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_humidity FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_motion ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_motion FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_neighbors_count ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_neighbors_count FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_neighbors_detail ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_neighbors_detail FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_pressure ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_pressure FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_temperature ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_temperature FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_voltage ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_voltage FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- PostgreSQL database dump complete
--

