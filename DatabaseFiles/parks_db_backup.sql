--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-08-10 16:52:33

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
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 6073 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 260 (class 1259 OID 17855)
-- Name: accessibility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accessibility (
    accessibility_id integer NOT NULL,
    accessibility_name character varying(255)
);


ALTER TABLE public.accessibility OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 17854)
-- Name: accessibility_accessibility_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accessibility_accessibility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accessibility_accessibility_id_seq OWNER TO postgres;

--
-- TOC entry 6074 (class 0 OID 0)
-- Dependencies: 259
-- Name: accessibility_accessibility_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accessibility_accessibility_id_seq OWNED BY public.accessibility.accessibility_id;


--
-- TOC entry 232 (class 1259 OID 17566)
-- Name: activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activities (
    activity_id integer NOT NULL,
    activity_name character varying(255)
);


ALTER TABLE public.activities OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17565)
-- Name: activities_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activities_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.activities_activity_id_seq OWNER TO postgres;

--
-- TOC entry 6075 (class 0 OID 0)
-- Dependencies: 231
-- Name: activities_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activities_activity_id_seq OWNED BY public.activities.activity_id;


--
-- TOC entry 252 (class 1259 OID 17775)
-- Name: camp_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.camp_types (
    camp_type_id integer NOT NULL,
    camp_type_name character varying(255)
);


ALTER TABLE public.camp_types OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 17774)
-- Name: camp_types_camp_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.camp_types_camp_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.camp_types_camp_type_id_seq OWNER TO postgres;

--
-- TOC entry 6076 (class 0 OID 0)
-- Dependencies: 251
-- Name: camp_types_camp_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.camp_types_camp_type_id_seq OWNED BY public.camp_types.camp_type_id;


--
-- TOC entry 236 (class 1259 OID 17592)
-- Name: facilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facilities (
    facility_id integer NOT NULL,
    facility_name character varying(255)
);


ALTER TABLE public.facilities OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17591)
-- Name: facilities_facility_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facilities_facility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.facilities_facility_id_seq OWNER TO postgres;

--
-- TOC entry 6077 (class 0 OID 0)
-- Dependencies: 235
-- Name: facilities_facility_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facilities_facility_id_seq OWNED BY public.facilities.facility_id;


--
-- TOC entry 240 (class 1259 OID 17618)
-- Name: features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.features (
    feature_id integer NOT NULL,
    feature_name character varying(255)
);


ALTER TABLE public.features OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17617)
-- Name: features_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.features_feature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.features_feature_id_seq OWNER TO postgres;

--
-- TOC entry 6078 (class 0 OID 0)
-- Dependencies: 239
-- Name: features_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.features_feature_id_seq OWNED BY public.features.feature_id;


--
-- TOC entry 262 (class 1259 OID 17862)
-- Name: park_accessibility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_accessibility (
    park_accessibility_id integer NOT NULL,
    park_id integer,
    accessibility_id integer
);


ALTER TABLE public.park_accessibility OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 17861)
-- Name: park_accessibility_park_accessibility_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_accessibility_park_accessibility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.park_accessibility_park_accessibility_id_seq OWNER TO postgres;

--
-- TOC entry 6079 (class 0 OID 0)
-- Dependencies: 261
-- Name: park_accessibility_park_accessibility_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_accessibility_park_accessibility_id_seq OWNED BY public.park_accessibility.park_accessibility_id;


--
-- TOC entry 234 (class 1259 OID 17573)
-- Name: park_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_activities (
    park_activity_id integer NOT NULL,
    park_id integer,
    activity_id integer
);


ALTER TABLE public.park_activities OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17572)
-- Name: park_activities_park_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_activities_park_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.park_activities_park_activity_id_seq OWNER TO postgres;

--
-- TOC entry 6080 (class 0 OID 0)
-- Dependencies: 233
-- Name: park_activities_park_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_activities_park_activity_id_seq OWNED BY public.park_activities.park_activity_id;


--
-- TOC entry 254 (class 1259 OID 17782)
-- Name: park_camp_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_camp_types (
    park_camp_type_id integer NOT NULL,
    park_id integer,
    camp_type_id integer
);


ALTER TABLE public.park_camp_types OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 17781)
-- Name: park_camp_types_park_camp_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_camp_types_park_camp_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.park_camp_types_park_camp_type_id_seq OWNER TO postgres;

--
-- TOC entry 6081 (class 0 OID 0)
-- Dependencies: 253
-- Name: park_camp_types_park_camp_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_camp_types_park_camp_type_id_seq OWNED BY public.park_camp_types.park_camp_type_id;


--
-- TOC entry 238 (class 1259 OID 17599)
-- Name: park_facilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_facilities (
    park_facility_id integer NOT NULL,
    park_id integer,
    facility_id integer
);


ALTER TABLE public.park_facilities OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17598)
-- Name: park_facilities_park_facility_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_facilities_park_facility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.park_facilities_park_facility_id_seq OWNER TO postgres;

--
-- TOC entry 6082 (class 0 OID 0)
-- Dependencies: 237
-- Name: park_facilities_park_facility_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_facilities_park_facility_id_seq OWNED BY public.park_facilities.park_facility_id;


--
-- TOC entry 242 (class 1259 OID 17625)
-- Name: park_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_features (
    park_feature_id integer NOT NULL,
    park_id integer,
    feature_id integer
);


ALTER TABLE public.park_features OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 17624)
-- Name: park_features_park_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_features_park_feature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.park_features_park_feature_id_seq OWNER TO postgres;

--
-- TOC entry 6083 (class 0 OID 0)
-- Dependencies: 241
-- Name: park_features_park_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_features_park_feature_id_seq OWNED BY public.park_features.park_feature_id;


--
-- TOC entry 230 (class 1259 OID 17525)
-- Name: park_fire_risk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_fire_risk (
    park_fire_risk_id integer NOT NULL,
    park_id integer,
    fire_risk_date date NOT NULL,
    fire_risk_level character varying(30),
    CONSTRAINT park_fire_risk_fire_risk_level_check CHECK (((fire_risk_level)::text = ANY ((ARRAY['Low'::character varying, 'Moderate'::character varying, 'High'::character varying, 'Extreme'::character varying])::text[])))
);


ALTER TABLE public.park_fire_risk OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17524)
-- Name: park_fire_risk_park_fire_risk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_fire_risk_park_fire_risk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.park_fire_risk_park_fire_risk_id_seq OWNER TO postgres;

--
-- TOC entry 6084 (class 0 OID 0)
-- Dependencies: 229
-- Name: park_fire_risk_park_fire_risk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_fire_risk_park_fire_risk_id_seq OWNED BY public.park_fire_risk.park_fire_risk_id;


--
-- TOC entry 226 (class 1259 OID 17496)
-- Name: park_open_dates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_open_dates (
    park_open_dates_id integer NOT NULL,
    park_id integer,
    open_date date NOT NULL
);


ALTER TABLE public.park_open_dates OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17495)
-- Name: park_open_dates_park_open_dates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_open_dates_park_open_dates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.park_open_dates_park_open_dates_id_seq OWNER TO postgres;

--
-- TOC entry 6085 (class 0 OID 0)
-- Dependencies: 225
-- Name: park_open_dates_park_open_dates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_open_dates_park_open_dates_id_seq OWNED BY public.park_open_dates.park_open_dates_id;


--
-- TOC entry 258 (class 1259 OID 17808)
-- Name: park_trail_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_trail_types (
    park_trail_type_id integer NOT NULL,
    park_id integer,
    trail_type_id integer
);


ALTER TABLE public.park_trail_types OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 17807)
-- Name: park_trail_types_park_trail_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_trail_types_park_trail_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.park_trail_types_park_trail_type_id_seq OWNER TO postgres;

--
-- TOC entry 6086 (class 0 OID 0)
-- Dependencies: 257
-- Name: park_trail_types_park_trail_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_trail_types_park_trail_type_id_seq OWNED BY public.park_trail_types.park_trail_type_id;


--
-- TOC entry 228 (class 1259 OID 17510)
-- Name: park_weather; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_weather (
    park_weather_id integer NOT NULL,
    park_id integer,
    weather_date date NOT NULL,
    weather_condition character varying(30),
    CONSTRAINT park_weather_weather_condition_check CHECK (((weather_condition)::text = ANY ((ARRAY['Sunny'::character varying, 'Rain'::character varying, 'Snow'::character varying, 'Storm'::character varying, 'Cloudy'::character varying, 'Fog'::character varying, 'Windy'::character varying, 'Other'::character varying])::text[])))
);


ALTER TABLE public.park_weather OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17509)
-- Name: park_weather_park_weather_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_weather_park_weather_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.park_weather_park_weather_id_seq OWNER TO postgres;

--
-- TOC entry 6087 (class 0 OID 0)
-- Dependencies: 227
-- Name: park_weather_park_weather_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_weather_park_weather_id_seq OWNED BY public.park_weather.park_weather_id;


--
-- TOC entry 224 (class 1259 OID 17476)
-- Name: parks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parks (
    park_id integer NOT NULL,
    park_name character varying(255) NOT NULL,
    park_address character varying(255),
    park_state character varying(100),
    park_region character varying(100),
    park_level character varying(30),
    park_type character varying(30),
    park_description text,
    park_phone_number character varying(30),
    park_size numeric(10,2),
    park_min_elevation integer,
    park_max_elevation integer,
    park_latitude double precision,
    park_longitude double precision,
    park_location public.geography(Point,4326),
    park_time_zone character varying(50),
    park_entry_fee numeric(16,13),
    park_parking_fee numeric(16,13),
    park_average_rating numeric(3,2) DEFAULT 0,
    park_number_of_reviews integer,
    park_drone_permit character varying(30),
    park_fishing_permit character varying(30),
    park_hunting_permit character varying(30),
    park_pet_policy character varying(30),
    park_backcountry_permit character varying(30),
    park_other_fee numeric(16,13),
    park_photo_link character varying(150),
    park_agency character varying(100),
    CONSTRAINT parks_park_average_rating_check CHECK (((park_average_rating >= (0)::numeric) AND (park_average_rating <= (5)::numeric))),
    CONSTRAINT parks_park_drone_permit_check CHECK (((park_drone_permit)::text = ANY ((ARRAY['Permit Required'::character varying, 'Not Allowed'::character varying, 'No Permit Required'::character varying, 'Seasonal'::character varying])::text[]))),
    CONSTRAINT parks_park_entry_fee_check CHECK ((park_entry_fee >= (0)::numeric)),
    CONSTRAINT parks_park_fishing_permit_check CHECK (((park_fishing_permit)::text = ANY ((ARRAY['Permit Required'::character varying, 'Not Allowed'::character varying, 'No Permit Required'::character varying, 'Seasonal'::character varying])::text[]))),
    CONSTRAINT parks_park_hunting_permit_check CHECK (((park_hunting_permit)::text = ANY ((ARRAY['Permit Required'::character varying, 'Not Allowed'::character varying, 'No Permit Required'::character varying, 'Seasonal'::character varying])::text[]))),
    CONSTRAINT parks_park_level_check CHECK (((park_level)::text = ANY ((ARRAY['Federal'::character varying, 'State'::character varying, 'Regional'::character varying, 'County'::character varying, 'City/Municipal'::character varying, 'Tribal'::character varying, 'Private with Public Access'::character varying, 'Unknown/Other'::character varying])::text[]))),
    CONSTRAINT parks_park_number_of_reviews_check CHECK ((park_number_of_reviews >= 0)),
    CONSTRAINT parks_park_parking_fee_check CHECK ((park_parking_fee >= (0)::numeric)),
    CONSTRAINT parks_park_size_check CHECK ((park_size >= (0)::numeric)),
    CONSTRAINT parks_park_type_check CHECK (((park_type)::text = ANY ((ARRAY['Park'::character varying, 'Recreation Area'::character varying, 'Forest'::character varying, 'Wilderness Area'::character varying, 'Seashore'::character varying, 'Beach'::character varying, 'Historic Trail'::character varying, 'Monument'::character varying, 'Historic Site'::character varying, 'Preserve'::character varying, 'Memorial'::character varying, 'Other Park Designation'::character varying, 'Grassland'::character varying, 'Management Unit'::character varying, 'Marine Sanctuary'::character varying, 'Wildlife Refuge'::character varying, 'Wildlife Management Area'::character varying, 'Fish Hatchery'::character varying, 'Affiliated Area'::character varying, 'Historical Park'::character varying])::text[])))
);


ALTER TABLE public.parks OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17475)
-- Name: parks_park_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parks_park_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.parks_park_id_seq OWNER TO postgres;

--
-- TOC entry 6088 (class 0 OID 0)
-- Dependencies: 223
-- Name: parks_park_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parks_park_id_seq OWNED BY public.parks.park_id;


--
-- TOC entry 248 (class 1259 OID 17679)
-- Name: review_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.review_activities (
    review_activities_id integer NOT NULL,
    review_id integer,
    activity_id integer
);


ALTER TABLE public.review_activities OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 17678)
-- Name: review_activities_review_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.review_activities_review_activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.review_activities_review_activities_id_seq OWNER TO postgres;

--
-- TOC entry 6089 (class 0 OID 0)
-- Dependencies: 247
-- Name: review_activities_review_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.review_activities_review_activities_id_seq OWNED BY public.review_activities.review_activities_id;


--
-- TOC entry 246 (class 1259 OID 17658)
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    review_id integer NOT NULL,
    park_id integer,
    user_id integer,
    review_rating numeric(3,2),
    review_posting_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    review_contents text,
    CONSTRAINT reviews_review_rating_check CHECK (((review_rating >= (0)::numeric) AND (review_rating <= (5)::numeric)))
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 17657)
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_review_id_seq OWNER TO postgres;

--
-- TOC entry 6090 (class 0 OID 0)
-- Dependencies: 245
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_review_id_seq OWNED BY public.reviews.review_id;


--
-- TOC entry 250 (class 1259 OID 17698)
-- Name: saved_searches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.saved_searches (
    saved_search_id integer NOT NULL,
    saved_search_name character varying(100) NOT NULL,
    user_id integer,
    saved_search_config jsonb,
    saved_search_created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.saved_searches OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 17697)
-- Name: saved_searches_saved_search_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.saved_searches_saved_search_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.saved_searches_saved_search_id_seq OWNER TO postgres;

--
-- TOC entry 6091 (class 0 OID 0)
-- Dependencies: 249
-- Name: saved_searches_saved_search_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.saved_searches_saved_search_id_seq OWNED BY public.saved_searches.saved_search_id;


--
-- TOC entry 256 (class 1259 OID 17801)
-- Name: trail_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trail_types (
    trail_type_id integer NOT NULL,
    trail_type_name character varying(255)
);


ALTER TABLE public.trail_types OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 17800)
-- Name: trail_types_trail_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trail_types_trail_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trail_types_trail_type_id_seq OWNER TO postgres;

--
-- TOC entry 6092 (class 0 OID 0)
-- Dependencies: 255
-- Name: trail_types_trail_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trail_types_trail_type_id_seq OWNED BY public.trail_types.trail_type_id;


--
-- TOC entry 244 (class 1259 OID 17644)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(50) NOT NULL,
    user_email character varying(100) NOT NULL,
    password_hash text NOT NULL,
    user_created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 17643)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 6093 (class 0 OID 0)
-- Dependencies: 243
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 5771 (class 2604 OID 17858)
-- Name: accessibility accessibility_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accessibility ALTER COLUMN accessibility_id SET DEFAULT nextval('public.accessibility_accessibility_id_seq'::regclass);


--
-- TOC entry 5754 (class 2604 OID 17569)
-- Name: activities activity_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activities ALTER COLUMN activity_id SET DEFAULT nextval('public.activities_activity_id_seq'::regclass);


--
-- TOC entry 5767 (class 2604 OID 17778)
-- Name: camp_types camp_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camp_types ALTER COLUMN camp_type_id SET DEFAULT nextval('public.camp_types_camp_type_id_seq'::regclass);


--
-- TOC entry 5756 (class 2604 OID 17595)
-- Name: facilities facility_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facilities ALTER COLUMN facility_id SET DEFAULT nextval('public.facilities_facility_id_seq'::regclass);


--
-- TOC entry 5758 (class 2604 OID 17621)
-- Name: features feature_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.features ALTER COLUMN feature_id SET DEFAULT nextval('public.features_feature_id_seq'::regclass);


--
-- TOC entry 5772 (class 2604 OID 17865)
-- Name: park_accessibility park_accessibility_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_accessibility ALTER COLUMN park_accessibility_id SET DEFAULT nextval('public.park_accessibility_park_accessibility_id_seq'::regclass);


--
-- TOC entry 5755 (class 2604 OID 17576)
-- Name: park_activities park_activity_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_activities ALTER COLUMN park_activity_id SET DEFAULT nextval('public.park_activities_park_activity_id_seq'::regclass);


--
-- TOC entry 5768 (class 2604 OID 17785)
-- Name: park_camp_types park_camp_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_camp_types ALTER COLUMN park_camp_type_id SET DEFAULT nextval('public.park_camp_types_park_camp_type_id_seq'::regclass);


--
-- TOC entry 5757 (class 2604 OID 17602)
-- Name: park_facilities park_facility_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_facilities ALTER COLUMN park_facility_id SET DEFAULT nextval('public.park_facilities_park_facility_id_seq'::regclass);


--
-- TOC entry 5759 (class 2604 OID 17628)
-- Name: park_features park_feature_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_features ALTER COLUMN park_feature_id SET DEFAULT nextval('public.park_features_park_feature_id_seq'::regclass);


--
-- TOC entry 5753 (class 2604 OID 17528)
-- Name: park_fire_risk park_fire_risk_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_fire_risk ALTER COLUMN park_fire_risk_id SET DEFAULT nextval('public.park_fire_risk_park_fire_risk_id_seq'::regclass);


--
-- TOC entry 5751 (class 2604 OID 17499)
-- Name: park_open_dates park_open_dates_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_open_dates ALTER COLUMN park_open_dates_id SET DEFAULT nextval('public.park_open_dates_park_open_dates_id_seq'::regclass);


--
-- TOC entry 5770 (class 2604 OID 17811)
-- Name: park_trail_types park_trail_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_trail_types ALTER COLUMN park_trail_type_id SET DEFAULT nextval('public.park_trail_types_park_trail_type_id_seq'::regclass);


--
-- TOC entry 5752 (class 2604 OID 17513)
-- Name: park_weather park_weather_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_weather ALTER COLUMN park_weather_id SET DEFAULT nextval('public.park_weather_park_weather_id_seq'::regclass);


--
-- TOC entry 5749 (class 2604 OID 17479)
-- Name: parks park_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parks ALTER COLUMN park_id SET DEFAULT nextval('public.parks_park_id_seq'::regclass);


--
-- TOC entry 5764 (class 2604 OID 17682)
-- Name: review_activities review_activities_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.review_activities ALTER COLUMN review_activities_id SET DEFAULT nextval('public.review_activities_review_activities_id_seq'::regclass);


--
-- TOC entry 5762 (class 2604 OID 17661)
-- Name: reviews review_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN review_id SET DEFAULT nextval('public.reviews_review_id_seq'::regclass);


--
-- TOC entry 5765 (class 2604 OID 17701)
-- Name: saved_searches saved_search_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_searches ALTER COLUMN saved_search_id SET DEFAULT nextval('public.saved_searches_saved_search_id_seq'::regclass);


--
-- TOC entry 5769 (class 2604 OID 17804)
-- Name: trail_types trail_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trail_types ALTER COLUMN trail_type_id SET DEFAULT nextval('public.trail_types_trail_type_id_seq'::regclass);


--
-- TOC entry 5760 (class 2604 OID 17647)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 6065 (class 0 OID 17855)
-- Dependencies: 260
-- Data for Name: accessibility; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (1, 'Wheelchair Accessible');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (2, 'ASL Audio Guide');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (3, 'Interpretation Services');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (4, 'Touch Models');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (5, 'Audio Described Brochures');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (6, 'Open-Captioned Videos');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (7, 'Assistive Listening Devices');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (8, 'One-Way Portable Microphones');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (9, 'Soundscapes');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (10, 'Braille');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (11, 'Audio-Described Films');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (12, 'Audio Wayside Signs');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (13, 'Tactile Models');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (14, 'Audio & Large Print Exibits');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (15, 'Audio/Visual Tours');
INSERT INTO public.accessibility (accessibility_id, accessibility_name) VALUES (16, 'Beach Wheelchairs');


--
-- TOC entry 6037 (class 0 OID 17566)
-- Dependencies: 232
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.activities (activity_id, activity_name) VALUES (1, 'Hiking');
INSERT INTO public.activities (activity_id, activity_name) VALUES (2, 'Backpacking');
INSERT INTO public.activities (activity_id, activity_name) VALUES (4, 'Road Cycling');
INSERT INTO public.activities (activity_id, activity_name) VALUES (5, 'Equestiran Riding');
INSERT INTO public.activities (activity_id, activity_name) VALUES (6, 'Swimming');
INSERT INTO public.activities (activity_id, activity_name) VALUES (7, 'Non-Motorized Boating');
INSERT INTO public.activities (activity_id, activity_name) VALUES (8, 'Motorized Boating');
INSERT INTO public.activities (activity_id, activity_name) VALUES (9, 'Surfing');
INSERT INTO public.activities (activity_id, activity_name) VALUES (10, 'Scuba Diving/Snorkeling');
INSERT INTO public.activities (activity_id, activity_name) VALUES (11, 'Fishing');
INSERT INTO public.activities (activity_id, activity_name) VALUES (12, 'Tent Camping');
INSERT INTO public.activities (activity_id, activity_name) VALUES (13, 'RV Camping');
INSERT INTO public.activities (activity_id, activity_name) VALUES (14, 'Backcountry Camping');
INSERT INTO public.activities (activity_id, activity_name) VALUES (15, 'Guided Tours');
INSERT INTO public.activities (activity_id, activity_name) VALUES (16, 'Birdwatching');
INSERT INTO public.activities (activity_id, activity_name) VALUES (17, 'Whale Watching');
INSERT INTO public.activities (activity_id, activity_name) VALUES (18, 'Snow Sports');
INSERT INTO public.activities (activity_id, activity_name) VALUES (19, 'Rock Climbing');
INSERT INTO public.activities (activity_id, activity_name) VALUES (20, 'Geocaching');
INSERT INTO public.activities (activity_id, activity_name) VALUES (22, 'Hunting');
INSERT INTO public.activities (activity_id, activity_name) VALUES (21, 'Sledding');
INSERT INTO public.activities (activity_id, activity_name) VALUES (3, 'Mountain Biking');


--
-- TOC entry 6057 (class 0 OID 17775)
-- Dependencies: 252
-- Data for Name: camp_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.camp_types (camp_type_id, camp_type_name) VALUES (1, 'Tent');
INSERT INTO public.camp_types (camp_type_id, camp_type_name) VALUES (2, 'Backcountry');
INSERT INTO public.camp_types (camp_type_id, camp_type_name) VALUES (3, 'RV');
INSERT INTO public.camp_types (camp_type_id, camp_type_name) VALUES (4, 'Cabin');


--
-- TOC entry 6041 (class 0 OID 17592)
-- Dependencies: 236
-- Data for Name: facilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.facilities (facility_id, facility_name) VALUES (1, 'Restrooms');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (2, 'Showers');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (3, 'Potable Water');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (4, 'Visitor Center');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (5, 'Museum');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (6, 'Gift Shop');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (7, 'RV Hook-up');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (8, 'Picnic Area');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (9, 'Boat Launch/Dock');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (10, 'Fishing Pier');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (11, 'Parking Lot');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (12, 'Event Space');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (13, 'Educational Facility');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (14, 'Wi-Fi Access Point');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (15, 'Bike Rack');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (16, 'Bike Repair Station');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (17, 'EV Charging Station');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (18, 'Gas Station');
INSERT INTO public.facilities (facility_id, facility_name) VALUES (19, 'Ranger Station');


--
-- TOC entry 6045 (class 0 OID 17618)
-- Dependencies: 240
-- Data for Name: features; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.features (feature_id, feature_name) VALUES (10, 'Grassland');
INSERT INTO public.features (feature_id, feature_name) VALUES (11, 'Hot Spring');
INSERT INTO public.features (feature_id, feature_name) VALUES (3, 'River');
INSERT INTO public.features (feature_id, feature_name) VALUES (2, 'Canyon');
INSERT INTO public.features (feature_id, feature_name) VALUES (4, 'Lake/Reservoir');
INSERT INTO public.features (feature_id, feature_name) VALUES (1, 'Old-Growth Forest');
INSERT INTO public.features (feature_id, feature_name) VALUES (5, 'Beach');
INSERT INTO public.features (feature_id, feature_name) VALUES (6, 'Sand Dune');
INSERT INTO public.features (feature_id, feature_name) VALUES (7, 'Wetland/Marsh');
INSERT INTO public.features (feature_id, feature_name) VALUES (8, 'Desert');
INSERT INTO public.features (feature_id, feature_name) VALUES (9, 'Waterfall');
INSERT INTO public.features (feature_id, feature_name) VALUES (12, 'Rock Formation');
INSERT INTO public.features (feature_id, feature_name) VALUES (13, 'Cave');
INSERT INTO public.features (feature_id, feature_name) VALUES (14, 'Volcanic Feature');
INSERT INTO public.features (feature_id, feature_name) VALUES (15, 'Wildflower Field');
INSERT INTO public.features (feature_id, feature_name) VALUES (16, 'Tidepool');
INSERT INTO public.features (feature_id, feature_name) VALUES (17, 'Island');
INSERT INTO public.features (feature_id, feature_name) VALUES (18, 'Cultural/Historical Site');


--
-- TOC entry 6067 (class 0 OID 17862)
-- Dependencies: 262
-- Data for Name: park_accessibility; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (1, 59, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (2, 59, 2);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (3, 59, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (4, 59, 4);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (5, 59, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (6, 60, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (7, 60, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (8, 60, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (9, 60, 8);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (10, 60, 9);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (11, 60, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (12, 60, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (13, 60, 11);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (14, 60, 12);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (15, 60, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (16, 60, 14);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (17, 60, 15);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (18, 62, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (19, 62, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (20, 62, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (21, 63, 16);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (22, 63, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (23, 63, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (24, 63, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (25, 63, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (26, 63, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (27, 64, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (28, 64, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (29, 64, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (30, 64, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (31, 64, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (32, 64, 15);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (33, 65, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (34, 66, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (35, 66, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (36, 66, 14);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (37, 66, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (38, 67, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (39, 67, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (40, 67, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (41, 67, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (42, 67, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (43, 67, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (44, 68, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (45, 68, 16);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (46, 68, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (47, 68, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (48, 68, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (49, 68, 14);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (50, 68, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (51, 68, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (52, 69, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (53, 69, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (54, 69, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (55, 69, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (56, 69, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (58, 69, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (59, 69, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (60, 70, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (61, 70, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (62, 70, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (63, 70, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (64, 70, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (66, 70, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (67, 70, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (68, 71, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (69, 71, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (70, 71, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (71, 71, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (72, 71, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (73, 72, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (74, 72, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (75, 72, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (76, 73, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (77, 73, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (78, 73, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (79, 73, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (80, 74, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (81, 74, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (82, 74, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (83, 74, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (84, 74, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (85, 75, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (86, 75, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (87, 75, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (88, 75, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (89, 75, 14);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (90, 75, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (91, 75, 12);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (92, 75, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (93, 76, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (94, 76, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (95, 77, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (96, 77, 16);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (97, 78, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (98, 79, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (99, 79, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (100, 79, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (101, 79, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (102, 79, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (103, 82, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (104, 82, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (105, 83, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (106, 83, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (107, 83, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (108, 83, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (109, 83, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (110, 83, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (111, 84, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (112, 84, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (113, 84, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (114, 84, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (115, 84, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (116, 84, 13);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (117, 85, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (118, 86, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (119, 87, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (120, 87, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (121, 87, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (122, 87, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (123, 87, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (124, 87, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (125, 88, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (126, 88, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (127, 88, 14);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (128, 88, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (129, 91, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (130, 91, 6);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (131, 91, 7);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (132, 91, 15);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (133, 91, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (134, 91, 3);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (135, 91, 11);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (136, 91, 10);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (137, 92, 1);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (138, 92, 5);
INSERT INTO public.park_accessibility (park_accessibility_id, park_id, accessibility_id) VALUES (139, 92, 10);


--
-- TOC entry 6039 (class 0 OID 17573)
-- Dependencies: 234
-- Data for Name: park_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (1, 59, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (2, 60, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (3, 60, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (4, 60, 17);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (5, 60, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (6, 61, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (7, 61, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (8, 61, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (9, 62, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (10, 63, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (11, 63, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (12, 63, 6);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (13, 63, 10);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (14, 63, 7);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (15, 63, 8);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (16, 63, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (17, 63, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (18, 63, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (19, 63, 17);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (20, 64, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (21, 64, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (22, 64, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (23, 64, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (24, 64, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (25, 64, 21);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (26, 65, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (27, 65, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (28, 65, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (29, 65, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (30, 65, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (31, 65, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (32, 65, 21);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (33, 65, 18);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (34, 66, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (35, 66, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (36, 67, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (37, 67, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (38, 68, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (39, 68, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (40, 68, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (41, 68, 6);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (42, 68, 7);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (43, 68, 8);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (44, 68, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (45, 68, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (46, 68, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (47, 69, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (48, 69, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (49, 69, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (50, 70, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (51, 70, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (52, 70, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (53, 70, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (54, 70, 19);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (55, 70, 21);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (56, 71, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (57, 71, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (58, 71, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (59, 71, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (60, 71, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (61, 71, 19);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (62, 71, 21);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (63, 71, 6);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (64, 71, 7);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (65, 71, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (66, 71, 18);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (67, 71, 20);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (68, 72, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (69, 72, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (70, 72, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (71, 72, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (72, 72, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (73, 73, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (74, 74, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (75, 74, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (76, 74, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (77, 74, 21);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (78, 74, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (79, 74, 19);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (80, 74, 20);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (81, 75, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (82, 75, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (83, 75, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (84, 76, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (85, 76, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (86, 76, 19);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (87, 76, 20);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (88, 76, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (89, 76, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (90, 77, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (91, 77, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (92, 77, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (93, 77, 6);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (94, 77, 10);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (95, 77, 7);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (96, 77, 17);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (97, 77, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (98, 77, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (99, 77, 20);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (100, 78, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (101, 78, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (102, 78, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (103, 79, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (104, 79, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (105, 79, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (106, 79, 7);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (107, 79, 20);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (108, 79, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (109, 79, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (110, 82, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (111, 82, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (112, 82, 6);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (113, 82, 10);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (114, 82, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (115, 82, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (116, 82, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (117, 82, 17);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (118, 82, 19);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (119, 82, 20);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (120, 82, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (121, 82, 7);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (122, 83, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (123, 83, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (124, 83, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (125, 83, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (126, 83, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (127, 83, 6);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (128, 83, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (129, 83, 19);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (130, 83, 18);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (131, 84, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (132, 84, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (133, 84, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (134, 84, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (135, 84, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (136, 84, 6);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (137, 84, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (138, 84, 19);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (139, 84, 18);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (140, 84, 7);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (141, 85, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (142, 86, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (143, 87, 1);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (144, 87, 2);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (145, 87, 4);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (146, 87, 19);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (147, 87, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (148, 87, 16);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (149, 87, 6);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (150, 87, 7);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (151, 87, 11);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (152, 87, 18);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (153, 87, 20);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (154, 88, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (155, 91, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (156, 92, 15);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (157, 92, 6);
INSERT INTO public.park_activities (park_activity_id, park_id, activity_id) VALUES (158, 92, 7);


--
-- TOC entry 6059 (class 0 OID 17782)
-- Dependencies: 254
-- Data for Name: park_camp_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (1, 61, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (2, 61, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (3, 63, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (4, 63, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (5, 64, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (6, 64, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (7, 64, 4);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (8, 64, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (9, 65, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (10, 65, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (11, 65, 4);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (12, 65, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (13, 68, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (14, 68, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (15, 68, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (16, 70, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (17, 70, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (18, 70, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (19, 70, 4);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (20, 71, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (21, 71, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (22, 71, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (23, 71, 4);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (24, 72, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (25, 72, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (26, 72, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (27, 72, 4);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (28, 74, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (29, 74, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (30, 74, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (31, 75, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (32, 75, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (33, 75, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (34, 76, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (35, 76, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (36, 77, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (37, 77, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (38, 78, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (39, 79, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (40, 79, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (41, 79, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (42, 79, 4);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (43, 82, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (44, 83, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (45, 83, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (46, 83, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (47, 84, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (48, 84, 2);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (49, 84, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (50, 87, 1);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (51, 87, 3);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (52, 87, 4);
INSERT INTO public.park_camp_types (park_camp_type_id, park_id, camp_type_id) VALUES (53, 87, 2);


--
-- TOC entry 6043 (class 0 OID 17599)
-- Dependencies: 238
-- Data for Name: park_facilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (1, 59, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (2, 59, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (3, 59, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (4, 59, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (5, 59, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (6, 59, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (7, 59, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (8, 59, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (9, 60, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (10, 60, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (11, 60, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (12, 60, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (13, 60, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (14, 60, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (15, 60, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (16, 60, 14);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (17, 60, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (18, 62, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (19, 62, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (20, 62, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (21, 62, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (22, 62, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (23, 62, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (24, 62, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (25, 63, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (26, 63, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (27, 63, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (28, 63, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (29, 63, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (30, 63, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (31, 63, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (32, 63, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (33, 64, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (34, 64, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (35, 64, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (36, 64, 7);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (37, 64, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (38, 64, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (39, 64, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (40, 64, 18);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (41, 64, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (42, 65, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (43, 65, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (44, 65, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (45, 65, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (46, 65, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (47, 65, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (48, 65, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (49, 65, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (50, 66, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (51, 66, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (52, 66, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (53, 66, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (54, 66, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (55, 66, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (56, 66, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (57, 66, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (58, 67, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (59, 67, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (60, 67, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (61, 67, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (62, 67, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (63, 68, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (64, 68, 2);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (65, 68, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (66, 68, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (67, 68, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (68, 68, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (69, 68, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (70, 68, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (71, 68, 7);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (72, 68, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (73, 68, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (74, 68, 14);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (75, 68, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (76, 68, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (77, 69, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (78, 69, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (79, 69, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (80, 69, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (81, 69, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (82, 69, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (83, 69, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (84, 69, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (85, 70, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (86, 70, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (87, 70, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (88, 70, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (89, 70, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (90, 70, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (91, 70, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (92, 70, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (93, 71, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (94, 71, 2);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (95, 71, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (96, 71, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (97, 71, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (98, 71, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (99, 71, 7);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (100, 71, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (101, 71, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (102, 71, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (103, 71, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (104, 71, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (105, 71, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (106, 72, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (107, 72, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (108, 72, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (109, 72, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (110, 72, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (111, 72, 7);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (112, 72, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (113, 72, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (114, 72, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (115, 72, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (116, 72, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (117, 72, 14);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (118, 73, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (119, 73, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (120, 73, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (121, 73, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (122, 73, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (123, 73, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (124, 73, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (125, 73, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (126, 74, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (127, 74, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (128, 74, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (129, 74, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (130, 74, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (131, 74, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (132, 74, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (133, 74, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (134, 74, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (135, 74, 14);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (136, 75, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (137, 75, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (138, 75, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (139, 75, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (140, 75, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (141, 75, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (142, 75, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (143, 75, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (144, 75, 17);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (145, 76, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (146, 76, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (147, 76, 2);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (148, 76, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (149, 76, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (150, 76, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (151, 76, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (152, 76, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (153, 76, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (154, 76, 7);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (155, 76, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (156, 76, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (157, 77, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (158, 77, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (159, 77, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (160, 77, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (161, 77, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (162, 77, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (163, 77, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (164, 77, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (165, 77, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (166, 77, 17);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (167, 78, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (168, 78, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (169, 78, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (170, 78, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (171, 78, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (172, 78, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (173, 78, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (174, 78, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (175, 78, 17);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (176, 78, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (177, 79, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (178, 79, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (179, 79, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (180, 79, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (181, 79, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (182, 79, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (183, 79, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (184, 79, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (185, 82, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (186, 82, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (187, 82, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (188, 82, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (189, 82, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (190, 82, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (191, 82, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (192, 82, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (193, 82, 7);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (194, 82, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (195, 82, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (196, 82, 14);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (197, 82, 17);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (198, 82, 18);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (199, 83, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (200, 83, 2);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (201, 83, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (202, 83, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (203, 83, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (204, 83, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (205, 83, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (206, 83, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (207, 84, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (208, 84, 2);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (209, 84, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (210, 84, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (211, 84, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (212, 84, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (213, 84, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (214, 84, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (215, 85, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (216, 85, 2);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (217, 85, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (218, 85, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (219, 85, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (220, 85, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (221, 85, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (222, 85, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (223, 85, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (224, 86, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (225, 86, 2);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (226, 86, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (227, 86, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (228, 86, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (229, 86, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (230, 86, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (231, 86, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (232, 86, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (233, 87, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (234, 87, 2);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (235, 87, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (236, 87, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (237, 87, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (238, 87, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (239, 87, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (240, 87, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (241, 87, 19);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (242, 87, 12);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (243, 87, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (244, 87, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (245, 87, 17);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (246, 88, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (247, 88, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (248, 91, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (249, 91, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (250, 91, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (251, 91, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (252, 91, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (253, 91, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (254, 91, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (255, 91, 13);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (256, 91, 14);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (257, 91, 15);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (258, 91, 17);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (259, 92, 1);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (260, 92, 3);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (261, 92, 4);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (262, 92, 5);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (263, 92, 6);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (264, 92, 8);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (265, 92, 11);
INSERT INTO public.park_facilities (park_facility_id, park_id, facility_id) VALUES (266, 92, 13);


--
-- TOC entry 6047 (class 0 OID 17625)
-- Dependencies: 242
-- Data for Name: park_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (1, 59, 17);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (2, 60, 16);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (3, 61, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (4, 61, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (5, 61, 8);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (6, 63, 17);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (7, 63, 5);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (8, 63, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (9, 63, 6);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (10, 63, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (11, 63, 13);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (12, 63, 14);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (13, 63, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (14, 63, 16);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (15, 64, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (16, 64, 6);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (17, 64, 8);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (18, 64, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (19, 64, 13);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (20, 64, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (21, 65, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (22, 65, 9);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (23, 65, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (24, 68, 1);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (25, 68, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (26, 68, 5);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (27, 68, 6);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (28, 68, 7);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (29, 68, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (30, 68, 17);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (31, 69, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (32, 70, 8);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (33, 70, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (34, 70, 14);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (35, 71, 4);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (36, 71, 9);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (37, 71, 10);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (38, 71, 14);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (39, 71, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (40, 72, 8);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (41, 72, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (42, 72, 14);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (43, 72, 13);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (44, 73, 8);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (45, 73, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (46, 74, 8);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (47, 74, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (48, 74, 6);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (49, 74, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (50, 74, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (51, 74, 14);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (52, 75, 1);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (53, 75, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (54, 76, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (55, 76, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (56, 76, 13);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (57, 76, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (58, 76, 14);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (59, 77, 4);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (60, 77, 5);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (61, 77, 6);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (62, 77, 9);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (63, 77, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (64, 77, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (65, 77, 16);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (66, 77, 7);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (67, 78, 1);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (68, 78, 5);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (69, 78, 6);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (70, 78, 7);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (71, 79, 1);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (72, 79, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (73, 79, 5);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (74, 79, 6);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (75, 79, 7);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (76, 79, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (77, 79, 16);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (78, 82, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (79, 82, 4);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (80, 82, 5);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (81, 82, 7);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (82, 82, 9);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (83, 82, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (84, 82, 13);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (85, 82, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (86, 82, 16);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (87, 83, 1);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (88, 83, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (89, 83, 4);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (90, 83, 9);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (91, 83, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (92, 83, 14);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (93, 83, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (94, 83, 13);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (95, 84, 1);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (96, 84, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (97, 84, 4);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (98, 84, 9);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (99, 84, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (100, 84, 14);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (101, 84, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (102, 84, 13);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (103, 85, 4);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (104, 85, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (105, 86, 4);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (106, 86, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (107, 87, 9);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (108, 87, 1);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (109, 87, 4);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (110, 87, 12);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (111, 87, 15);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (112, 87, 2);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (113, 88, 18);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (114, 91, 18);
INSERT INTO public.park_features (park_feature_id, park_id, feature_id) VALUES (115, 92, 18);


--
-- TOC entry 6035 (class 0 OID 17525)
-- Dependencies: 230
-- Data for Name: park_fire_risk; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 6031 (class 0 OID 17496)
-- Dependencies: 226
-- Data for Name: park_open_dates; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 6063 (class 0 OID 17808)
-- Dependencies: 258
-- Data for Name: park_trail_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (1, 60, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (2, 61, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (3, 61, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (4, 63, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (5, 63, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (6, 64, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (7, 64, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (8, 64, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (9, 64, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (10, 65, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (11, 65, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (12, 65, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (13, 65, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (14, 68, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (15, 68, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (16, 68, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (17, 68, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (18, 69, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (19, 69, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (20, 69, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (21, 69, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (22, 70, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (23, 70, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (24, 70, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (25, 71, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (26, 71, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (27, 71, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (28, 71, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (29, 72, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (30, 72, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (31, 72, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (32, 72, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (33, 74, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (34, 74, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (35, 74, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (36, 75, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (37, 75, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (38, 76, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (39, 76, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (40, 76, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (41, 77, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (42, 77, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (43, 77, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (44, 77, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (45, 78, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (46, 78, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (47, 78, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (48, 79, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (49, 79, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (50, 79, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (51, 79, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (52, 82, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (53, 82, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (54, 82, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (55, 82, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (56, 83, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (57, 83, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (58, 83, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (59, 83, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (60, 84, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (61, 84, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (62, 84, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (63, 84, 4);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (64, 87, 1);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (65, 87, 3);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (66, 87, 2);
INSERT INTO public.park_trail_types (park_trail_type_id, park_id, trail_type_id) VALUES (67, 87, 4);


--
-- TOC entry 6033 (class 0 OID 17510)
-- Dependencies: 228
-- Data for Name: park_weather; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 6029 (class 0 OID 17476)
-- Dependencies: 224
-- Data for Name: parks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (59, 'Alcatraz Island', 'Alcatraz Island, San Francisco Bay, CA 94133', 'California', 'San Francisco Bay Area', 'Federal', 'Affiliated Area', 'Alcatraz Island is a historic site located in the San Francisco Bay, best known for its infamous federal penitentiary that operated from 1934 to 1963. Managed as part of the Golden Gate National Recreation Area, this Affiliated Area of the National Park Service also includes the remnants of a military fortification and the oldest operating lighthouse on the West Coast. Alcatraz has a layered history—once home to Civil War-era military prisoners, it later became a symbol of Native American resistance during the 1969-1971 occupation by activists calling for Indigenous rights.
Today, visitors can explore the island''s preserved prison buildings, historic gardens, and stunning bay views while learning about its multifaceted past through exhibits and ranger-led tours. Alcatraz is accessible only by ferry, and it remains one of the most popular cultural and historical attractions in the United States.', '415-561-4900', 22.00, 0, 82, 37.82697625, -122.4229542, '0101000020E6100000CC28965BDAE94240A6A503A3DCC94CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Service Animals Only', 'Not Allowed', 47.9500000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749436430/alcatraz-island-national-affiliated-area_w7mief.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (61, 'Castle Mountains', 'Castle Mountains National Monument, 2701 Barstow Road, Barstow, CA 92311', 'California', 'Desert', 'Federal', 'Monument', 'Castle Mountains National Monument is a vast and rugged desert landscape nestled between the New York and Castle Mountains in California’s eastern Mojave Desert. Established in 2016, the monument preserves over 20,000 acres of scenic high desert terrain, rich in biodiversity, cultural history, and geologic features.
Once a region of mining and homesteading, the monument now serves as a vital wildlife corridor connecting Mojave National Preserve to other protected lands. Visitors will find panoramic views, towering rock formations, blooming wildflowers in spring, and thriving populations of bighorn sheep, desert tortoises, and golden eagles.
The area remains largely undeveloped, offering solitude and self-guided adventure for those prepared to hike, camp, or ride horseback across its open desert Grassland and volcanic hills. Castle Mountains is a place for reflection, wilderness exploration, and immersion in the natural rhythms of the Mojave.', '760-252-6100', 20920.00, 4000, 5580, 35.3019091418431, -115.126617066681, '0101000020E61000002E4A71F5A4A6414056DF8781E53750C0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Service Animals Only', 'No Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749436757/castle-mountains-national-monument_hg1clz.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (62, 'César E. Chávez', '29700 Woodford-Tehachapi Rd, Keene, CA 93531', 'California', 'Central Valley', 'Federal', 'Monument', 'César E. Chávez National Monument, located in Keene, California, preserves the 116-acre La Paz ranch where César Chávez and the United Farm Workers led their campaign for farmworker rights from 1970 to 1993. Centered on Chávez’s restored office and library, the site features a visitor center with interpretive exhibits, a wheelchair-accessible Memorial Garden honoring Chávez and his wife Helen, and the Garden of the Southwest showcasing native plants from his Arizona childhood. Visitors can wander the cultural landscape of the old quarry buildings and meeting areas where UFW staff planned strikes and negotiated contracts, while learning about Chávez’s philosophy of nonviolent social change. Open year-round with no entrance fee, the monument offers educational programs, guided tours, and opportunities for reflection amid the Tehachapi Mountains’ serene, sun-baked hills. It stands as the first National Park Service unit dedicated to a contemporary Latino American and continues to inspire new generations committed to social justice.', '661-823-6134', 116.00, 2600, 2600, 35.2230997277212, -118.558632015135, '0101000020E61000008F2729888E9C4140903F02BF7EB84EC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed on Leash', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749436830/cesar-e-chavez-national-monument_b9rcmv.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (63, 'Channel Islands', '1901 Spinnaker Drive, Ventura, CA 93001', 'California', 'Los Angeles County', 'Federal', 'Park', 'Channel Islands National Park, off the coast of Southern California, protects five rugged islands—Anacapa, Santa Cruz, Santa Rosa, San Miguel, and Santa Barbara—along with their surrounding ocean waters. Accessible only by boat or small plane, the park offers visitors a chance to hike across windswept canyons and coastal bluffs, paddle through kelp forests rich with sea life, snorkel or dive among vibrant reefs, and camp under star-filled skies on primitive backcountry sites. Home to numerous endemic species—like the diminutive Island Fox—and critical seabird colonies, Channel Islands preserves both natural and cultural resources, from ancient Chumash village sites to historic ranch lands, providing an unparalleled wilderness experience just a short trip from the mainland.', '805 658-5730', 249561.00, 0, 740, 34.01426576779, -119.751553851379, '0101000020E6100000210EEF75D30141407A925915CD1F4EC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Permit Required', 'Not Allowed', 'Service Animals Only', 'No Permit Required', 70.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749436882/channel-islands-national-park_ofrcbv.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (76, 'Pinnacles', '500 East Entrance Road, Paicines, CA 95043', 'California', 'Central Coast', 'Federal', 'Park', 'Pinnacles National Park, located in central California, is a rugged landscape of jagged volcanic spires, massive rock walls, and shadowy talus caves. Born of ancient lava flows and tectonic movement, the park is a haven for hikers, climbers, and wildlife enthusiasts. Visitors can explore the dramatic High Peaks, squeeze through Bear Gulch and Balconies caves (seasonally open), or watch for soaring California condors overhead. While the park has two entrances—east and west—there is no road connecting them. Camping is available only on the east side, with RV and tent sites nestled in oak woodlands. From sunrise hikes to starlit skies, Pinnacles offers a dramatic, untamed corner of California wilderness.', '831-389-4486', 26606.00, 900, 3300, 36.4859715603074, -121.18228325188, '0101000020E61000003727EB50343E4240904841F1AA684DC0', NULL, 15.0000000000000, 30.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed (Limited)', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437730/pinnacles-national-park_b8z17u.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (64, 'Death Valley', 'P.O. Box 579, Death Valley, CA 92328', 'California', 'Desert', 'Federal', 'Park', 'Death Valley National Park spans over 3.4 million acres of the Mojave and Great Basin deserts, featuring the lowest, hottest, and driest landscapes in North America. Visitors traverse vast salt pans at Badwater Basin, climb Panamint Range peaks like Telescope Peak, explore colorful canyons such as Golden Canyon, and marvel at the Mesquite Flat Sand Dunes. The park preserves unique ecosystems—home to the Salt Creek and Saratoga Springs pupfish, desert bighorn sheep, and spectacular spring wildflower blooms—but also bears witness to human stories from Timbisha Shoshone traditions to 19th-century mining. With extremes of climate and topography, Death Valley offers unparalleled solitude, stargazing under some of the darkest skies in the National Park System, and a profound sense of place amid its stark beauty.', '760-786-3200', 3422024.00, -282, 11049, 36.5025682608106, -117.0806485, '0101000020E61000003518222854404240A803594FAD754FC0', NULL, 15.0000000000000, 30.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed (Limited)', 'Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437040/death-valley-national-park_ggchuw.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (65, 'Devils Postpile', 'P.O. Box 3999 Mammoth Lakes, CA 93546', 'California', 'High Sierra', 'Federal', 'Monument', 'Devils Postpile National Monument is a compact high-Sierra preserve centered on a rare hexagonal basalt column formation and the rushing San Joaquin River. Visitors arrive via a summer-only shuttle or a strenuous four-mile hike into Reds Meadow Valley, where eight miles of trails lead to the base and summit of the postpile, 101-foot Rainbow Falls, meadows rimmed by mixed-conifer forest, and gateway routes into the Ansel Adams and John Muir Wildernesses. The monument is unserviced—no campground or potable water—so travelers must be self-reliant, but they’re rewarded with ranger-led programs, verdant spring wildflower displays, backcountry skiing and snowshoeing in winter, and abundant wildlife viewing. With its blend of unique geology, glacially carved scenery, and quiet solitude, Devils Postpile offers a quintessential Sierra adventure just south of Mammoth Lakes.', '760-934-2289', 798.00, 7200, 8200, 37.6153636459095, -119.087707558552, '0101000020E6100000102A673CC4CE42401E34ACFFC5744EC0', NULL, 15.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Pets Allowed (Limited)', 'Permit Required', 15.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437100/devils-postpile-national-monument_b8sytt.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (66, 'Eugene O''Neill', '1000 Kuss Rd, Danville, CA 94526', 'California', 'San Francisco Bay Area', 'Federal', 'Historic Site', 'Eugene O’Neill National Historic Site preserves Tao House—a 14-acre retreat in the hills of Danville where the Nobel Prize–winning playwright lived and wrote from 1937 to 1944. Accessible only by NPS shuttle, the site offers guided tours of O’Neill’s restored study, living quarters, and surrounding gardens, along with interpretive exhibits in the adjacent 19th-century barn. Visitors stroll winding pathways through historic orchards and memorial plantings, take in valley vistas from shaded picnic areas, and explore the cultural landscapes that inspired masterpieces like Long Day’s Journey Into Night. With no overnight facilities, the monument emphasizes self-guided reflection, ranger-led storytelling, and immersive encounters with America’s theatrical legacy.', '925-228-8860', 158.00, 700, 700, 37.82579296, -122.027137, '0101000020E6100000C83B6E95B3E94240863E58C686FC4CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Pets Allowed (Limited)', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437179/eugene-oneill-national-historic-site_nku59x.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (67, 'Fort Point', '201 Marine Dr, San Francisco, CA 94129', 'California', 'San Francisco Bay Area', 'Federal', 'Historic Site', 'Fort Point National Historic Site stands sentinel beneath the south end of the Golden Gate Bridge, preserving a rare Third-System masonry fortress built between 1853 and 1861. Visitors explore vaulted casemates, gun platforms, and ramparts via self-guided walks or daily ranger-led history talks and candlelight tours, and children can earn badges through the Junior Ranger program. The site is fully ADA-accessible in key areas—including the parade ground, museum exhibits, and shuttle drop-off—and offers vault toilets, a small bookstore, and street-side parking (no potable water or camping). From its brick ramparts you’ll enjoy unobstructed views of the bridge and San Francisco Bay, and along the shoreline, coastal seabirds find roosts amid the rocky promontory. With no overnight facilities, Fort Point is a quintessential day-use destination that combines American coastal defense history, urban wilderness habitat, and spectacular engineering vistas.', '415-561-4959', 29.00, 0, 90, 37.8105944550699, -122.477087196439, '0101000020E61000000D6C218FC1E7424022FA86CEEEC24CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Service Animals Only', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437229/fort-point-national-historic-site_g2fj9j.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (68, 'Golden Gate', 'Golden Gate Bridge Plaza, San Francisco, CA 94129', 'California', 'San Francisco Bay Area', 'Federal', 'Recreation Area', 'Golden Gate NRA encompasses 82,116 acres and 59 miles of shoreline across diverse ecosystems—from redwood groves in Marin to headlands, beaches, historic military sites, and marine waters. With extensive trails, four Marin campgrounds, visitor centers, and rich wildlife habitats, GGNRA offers a unique combination of urban access and natural immersion. Activities span hiking, biking, horseback riding, camping, boating, fishing, and birdwatching, all supported by interpretive programs and cultural landmarks like Alcatraz and Fort Funston. Its scope as one of the world’s largest urban parks is matched by its biodiversity, conservation significance, and historical depth.', '415-561-4700', 82116.00, 0, 2300, 37.8457420705213, -122.529451622578, '0101000020E6100000C2DEB24641EC4240501BE2ED3ABC4CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Pets Allowed', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437288/golden-gate-national-recreation-area_wlhdb1.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (69, 'John Muir', '4202 Alhambra Ave, Martinez, CA 94553', 'California', 'San Francisco Bay Area', 'Federal', 'Historic Site', 'John Muir National Historic Site preserves John Muir’s 1882 Italianate Victorian home, the adjoining 1849 Martinez Adobe, family orchards, and the 325-acre Mount Wanda oak woodland where he walked with his daughters. Located in Martinez, California, this site honors the life and legacy of America’s foremost conservationist, where he lived from 1890 until his death in 1914. Visitors can tour the house—including Muir’s “scribble den,” where he composed influential essays and books—using park film, guided tours, or self‑guided materials. The site includes interpretive trails through orchards, picnic areas, and a nature trail on Mount Wanda featuring vibrant wildflowers and birdlife. A shuttle provides seasonal access to the family gravesite. With no camping or overnight facilities, the park offers an immersive, educational experience in both cultural heritage and natural landscape—emphasizing reflection on environmental stewardship and Muir’s enduring impact.', '925-228-8860', 345.00, 200, 200, 37.9919765445787, -122.131018193869, '0101000020E6100000ABAE6016F9FE42406A13BBCB3AEF4CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed on Leash', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437353/john-muir-national-historic-site_vqlafz.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (70, 'Joshua Tree', '74485 National Park Drive Twentynine Palms, CA 02277-3597', 'California', 'Desert', 'Federal', 'Park', 'Joshua Tree National Park, established as a national monument in 1936 and redesignated a national park in 1994, protects nearly 800,000 acres where the higher-elevation Mojave Desert meets the lower Colorado Desert in southeastern California. Renowned for its twisted Joshua trees (Yucca brevifolia), the park’s landscape ranges from rugged granite monoliths and vast boulder fields—popular with rock climbers—to colorful desert washes and expansive valleys carpeted with spring wildflowers. Visitors can hike more than 190 miles of trails, camp under internationally recognized dark skies at nine developed campgrounds, and explore cultural sites once occupied by Cahuilla and Serrano peoples. Wildlife includes bighorn sheep, coyotes, desert tortoises, and an array of reptiles and birds. With minimal services in its backcountry and a focus on self-sufficiency, Joshua Tree offers solitude, iconic scenery, and a profound sense of desert wilderness just a short drive from the Palm Springs and Coachella Valley communities.', '760-367-5500', 795156.00, 536, 5814, 33.861579891953, -115.8992872, '0101000020E6100000286AF93F48EE404078921914720650C0', NULL, 15.0000000000000, 30.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed on Leash', 'Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437393/joshua-tree-national-park_spime8.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (71, 'Lassen Volcanic', 'PO Box 100 Mineral, CA 96063', 'California', 'Shasta Cascade', 'Federal', 'Park', 'Lassen Volcanic National Park protects one of the most diverse volcanic landscapes on Earth, spanning high alpine forests, shimmering lakes, verdant meadows, and hydrothermal areas where steam vents, boiling springs, mud pots, and fumaroles sculpt the ground. Dominated by Mount Lassen—the largest plug dome volcano in the world—and graced by nearby peaks like Brokeoff Mountain and Cinder Cone, the park offers over 150 miles of trails that lead to crater rims, panoramic overlooks, and the surreal “Devastated Area” carved by the 1915 eruption. Visitors can paddle Manzanita Lake beneath a perfect volcanic reflection, soak in the historic Drakesbad Guest Ranch hot springs, or snowshoe across silent winter snowscapes. With four developed campgrounds, ranger-led volcano talks, and a year-round visitor center at Kohm Yah-mah-nee, Lassen combines raw geothermal energy, rich wildlife habitats, and cultural history to deliver a uniquely dynamic wilderness experience.', '530-595-4480', 106452.00, 5650, 10457, 40.4889300475985, -121.423988068271, '0101000020E6100000D03B8242953E4440E0704CC2BA494DC0', NULL, 15.0000000000000, 30.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Pets Allowed (Limited)', 'Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437447/lassen-volcanic-national-park_jgoygk.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (72, 'Lava Beds', '1 Indian Well, Tulelake, CA 96134', 'California', 'Shasta Cascade', 'Federal', 'Monument', 'Lava Beds National Monument, established in 1925 on the northeastern flank of Medicine Lake Volcano, preserves North America’s densest concentration of lava-tube caves and a stark high-desert landscape steeped in Modoc War history. Visitors begin at the accessible Visitor Center—home to touch exhibits, a bookstore, and park films—then explore over a dozen marked surface trails that circle collapsed tube trenches, spatter cones, and the Petroglyph Point pictograph panels. The Indian Well Campground offers basic tent and RV sites just a half-mile from the cave loop. Adventurers can join ranger-led tours into illuminated caves like Mushpot, self-guide across rugged lava flows, backcountry camp under the stars, or birdwatch desert scrub habitats. With no cabins or showers, no fishing or hunting, and a strict drone ban, Lava Beds delivers an immersive, self-sufficient experience in volcanic geology, Native American heritage, and subterranean wonder.', '530-667-8113', 46692.00, 4000, 5570, 41.7716837182988, -121.506715248723, '0101000020E61000007A793688C6E24440D42C69F4233F4DC0', NULL, 15.0000000000000, 25.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed (Limited)', 'No Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437497/lava-beds-national-monument_nftnob.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (73, 'Manzanar', 'Manzanar Reward Rd, California', 'California', 'High Sierra', 'Federal', 'Historic Site', 'Manzanar National Historic Site, located in California’s Owens Valley between the Sierra Nevada and the Inyo Mountains, preserves one of ten sites where Japanese Americans were unjustly incarcerated during World War II. Today, visitors can walk through reconstructed barracks and mess halls in Block 14, view interpretive exhibits at the award-winning Visitor Center, and follow the 3.2-mile driving tour past original and reconstructed camp features, including the poignant white obelisk at the cemetery. With no camping or recreational facilities, Manzanar instead offers a space for reflection, education, and remembrance—honoring the resilience of over 10,000 Japanese Americans who endured imprisonment in this remote, wind-swept desert landscape.', '760-878-2194', 814.00, 1200, 1200, 36.7247819823962, -118.154513553792, '0101000020E6100000958FEFA7C55C42405AD65DE638EC4EC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed on Leash', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437541/manzanar-national-historic-site_pwngdf.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (74, 'Mojave', '90942 Kelso Cima Rd, Essex, CA 92332', 'California', 'Desert', 'Federal', 'Preserve', 'Mojave National Preserve sprawls across 1.6 million acres of California desert between Los Angeles and Las Vegas, encompassing a dramatic range of ecosystems—from sweeping sand dunes and Joshua tree forests to rugged mountain canyons and dormant volcanic fields. At its heart is the historic Kelso Depot, a restored 1920s train station turned visitor center that introduces travelers to the area’s geology, wildlife, and human history. Visitors can hike the lava tube trail, climb the shifting Kelso Dunes, or camp beneath dark skies at Mid Hills or Hole-in-the-Wall. With opportunities for backcountry exploration, hunting, and wildlife watching, the preserve offers an untamed and less-crowded desert experience where solitude, silence, and stark beauty define the landscape.', '760-252-6100', 1542776.00, 880, 2417, 35.1233487158356, -115.52036960145, '0101000020E61000003D4206E4C98F414024FCB243B21E50C0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed on Leash', 'No Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437581/mojave-national-preserve_qewkdk.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (75, 'Muir Woods', 'Muir Woods National Monument 1 Muir Woods Rd Mill Valley, CA 94941', 'California', 'San Francisco Bay Area', 'Federal', 'Monument', 'Muir Woods National Monument, located just north of San Francisco in Marin County, protects a rare stand of old-growth coastal redwoods—some reaching heights over 250 feet. Visitors walk along peaceful boardwalks and soft forest trails that follow Redwood Creek through a fog-shrouded canyon. The monument''s accessible main trail allows everyone to experience the serenity of these ancient giants, while more adventurous hikers can climb into surrounding hills connecting to Mount Tamalpais State Park. Though no camping or biking is allowed, Muir Woods offers ranger programs, wildlife viewing, and a deep sense of reverence in a cathedral of trees. With limited parking and a required reservation system, the monument encourages low-impact visits to preserve its quiet, timeless forest.', '760-252-6100', 554.00, 130, 1250, 37.8964394868758, -122.580987771426, '0101000020E6100000BF7C7387BEF24240BA2C5531A2B54CC0', NULL, 15.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Service Animals Only', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437693/muir-woods-national-monument_q9pmxm.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (77, 'Point Reyes', '1 Bear Valley Road Point Reyes Station, CA 94956', 'California', 'San Francisco Bay Area', 'Federal', 'Seashore', 'Point Reyes National Seashore is a dramatic coastal landscape on the California coast just north of San Francisco. The park features sweeping ocean views, wind-swept headlands, and rolling pastures rich in wildlife and history. Visitors can hike to Alamere Falls, explore the rugged coastline, spot gray whales offshore, or watch tule elk grazing in the Grassland. The park protects sensitive habitats like estuaries, tidepools, and coastal prairies, and it’s renowned as one of the best birdwatching locations in the U.S. With historic structures like the Point Reyes Lighthouse and opportunities for kayaking, tidepooling, and backcountry camping, the seashore offers a diverse and immersive experience of Northern California’s wild coast.', '415-464-5100', 71028.00, 0, 2500, 38.0538510125172, -122.88766850828, '0101000020E610000016CF0897E4064340C89FD9E0608E4CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Pets Allowed (Limited)', 'Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437769/point-reyes-national-seashore_g41ldx.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (78, 'Presidio of San Francisco', '201 Fort Mason, San Francisco, CA 94123', 'California', 'San Francisco Bay Area', 'Federal', 'Other Park Designation', 'The Presidio of San Francisco, a 1,491-acre historic district within the Golden Gate National Recreation Area, blends military heritage, spectacular landscapes, and urban recreation. Once a Spanish, Mexican, and U.S. Army post, it now features restored officer quarters, trails winding through forests and coastal bluffs, and iconic overlooks of the Golden Gate Bridge. Visitors can tent camp at Rob Hill, bike its roads, paddle at Crissy Field, or stroll among art installations at Tunnel Tops. The Presidio Trust, funded through leasing former military buildings and hospitality ventures, maintains this vibrant urban park with visitor centers, picnic sites, playgrounds, a golf course, and cultural programs—all free to enter. Amidst towering eucalyptus and cypress trees, the Presidio offers military-era architecture, rich biodiversity, and family-friendly adventures just minutes from downtown San Francisco.', '415-561-4323', 1480.00, 0, 400, 37.7971419150633, -122.466656547043, '0101000020E6100000DDBB0BBF08E6424036FE279944C44CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed on Leash', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437994/presidio-of-san-francisco-national-other-park-designation_vysgbc.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (79, 'Redwood', '1111 Second Street, Crescent City, CA 95531', 'California', 'North Coast', 'Federal', 'Park', 'Redwood National and State Parks encompass over 133,000 acres of some of the world’s tallest coastal redwoods, ancient river canyons, fern-draped cliffs, and rugged Pacific beaches along California’s north coast. Trail lovers can stroll under cathedral-like trunks, wander through Fern Canyon’s verdant walls, or explore tidepool-rich beaches. Campers have options ranging from developed campsites and ADA cabins to remote backcountry sites along rivers or shorelines. Wildlife thrives here—from Roosevelt elk and salmon to banana slugs and migrating whales offshore. With five visitor centers, accessible infrastructure (including beach wheelchairs), ranger-guided programs, and strict protections against drones and hunting, the parks offer both awe-inspiring adventure and quiet reflection in one of America’s most iconic forest ecosystems.', '707-464-6101', 139091.00, 0, 1400, 41.3892815419796, -124.039853032456, '0101000020E610000092DE41FAD3B14440407A8818E6FA4BC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Pets Allowed (Limited)', 'Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749438049/redwood-national-park_eryfsr.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (82, 'Santa Monica Mountains', '26876 Mulholland Highway, Calabasas, CA 91302', 'California', 'Central Coast', 'Federal', 'Recreation Area', 'Santa Monica Mountains National Recreation Area protects 157,700 acres of coastal mountain wilderness nestled between Los Angeles and Ventura counties. As the world''s largest urban National Park, it offers over 500 miles of trails that wind through chaparral ridges, oak woodlands, and riparian canyons, with access to dramatic Pacific coastline and unique geology at sites like Sandstone Peak and Echo Cliffs. Recreational opportunities include hiking, mountain biking, horseback riding, climbing, wildlife viewing, and seasonal whale and wildflower sightings. While camping is limited to group sites at Circle X Ranch and nearby state parks fill gaps, the area delivers transformative day-use experiences. Cultural highlights—like Chumash heritage at Satwiwa, Western film sets at Paramount Ranch, and historic ranches—layered with ranger programs and accessible visitor facilities, make the preserve a richly diverse wilderness destination just minutes from urban hubs.', '805-370-2301', 147700.00, 0, 3000, 34.09228056632, -118.734588744915, '0101000020E61000004C337FD9CF0B41404A4AFAFEF8A14EC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Pets Allowed on Leash', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749438218/santa-monica-mountains-national-recreation-area_dkwkzf.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (83, 'Sequoia', '47050 Generals Highway, Three Rivers, CA 93271', 'California', 'High Sierra', 'Federal', 'Park', 'Sequoia National Park spans the western Sierra Nevada foothills to alpine elevations exceeding 14,000 ft, anchored by the world’s largest trees—the giant sequoias. Visitors traverse paved, wheelchair-accessible groves (General Sherman, Big Trees), scramble granite domes like Moro Rock, hike to Tokopah Falls, and embark on wilderness treks to Rae Lakes or Alta Meadow. Developed campgrounds and RV sites cluster near Giant Forest and Lodgepole, while backcountry permits unlock the high-country experience. Amenities include visitor centers, markets, shuttles, showers, and wheelchair rentals. Guided programs, fishing, horseback rides, and winter snowshoeing round out the year-round appeal. With breathtaking vistas, ancient trees, marble caverns like Crystal Cave, and cultural landmarks like Tunnel Log, the park delivers a full spectrum of Sierra adventure and accessibility.', '559-565-3341', 404064.00, 1700, 14000, 36.4829571065721, -118.566529356303, '0101000020E61000008A0CD989D13D4240343A4FF77BB74EC0', NULL, 20.0000000000000, 35.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Pets Allowed (Limited)', 'Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749438263/sequoia-national-park_u30yvd.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (84, 'Kings Canyon', '47050 Generals Highway, Three Rivers, CA 93271', 'California', 'High Sierra', 'Federal', 'Park', 'Kings Canyon National Park encompasses the dramatic depths of Kings Canyon—one of North America’s deepest river-carved gorges—alongside soaring granite cliffs, vast old-growth sequoia groves like the iconic General Grant Tree, and high-country meadows and lakes. Visitors can drive the 50-mile Kings Canyon Scenic Byway along Highway 180, stopping at accessible highlights like Roaring River Falls, Zumwalt Meadow boardwalk, and scenic viewpoints. Outdoor adventures span day hikes to Mist Falls, Big Baldy, and backpacking treks such as Rae Lakes; winter activities include cross-country skiing in Grant Grove. Campers enjoy developed tent and RV sites, while wilderness permits allow for backcountry solitude. Ranger-led programs, fishing, canoeing at Hume Lake, and guided horseback trips enrich the experience. Spectacular landscapes of sequoia giants, plunging canyons, falls, and alpine wilderness combine to make Kings Canyon a profound and accessible Sierra Nevada immersion.', '559-565-3341', 461901.00, 4000, 13000, 36.8851720648653, -118.553481194029, '0101000020E6100000F2F676514D714240E2583A8727B94EC0', NULL, 20.0000000000000, 35.0000000000000, 0.00, 0, 'Not Allowed', 'No Permit Required', 'Not Allowed', 'Pets Allowed (Limited)', 'Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749438263/sequoia-national-park_u30yvd.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (85, 'Tule Lake', '44340 CA-139, Tulelake, CA 96134', 'California', 'Shasta Cascade', 'Federal', 'Monument', 'Tule Lake National Monument commemorates the site of one of the ten WWII Japanese American incarceration camps—Tule Lake Segregation Center—where up to 18,700 Japanese Americans were forcibly held from 1942 to 1946. Located near the California–Oregon border, the monument preserves a range of camp structures and landscapes: the Cellhouse where the dissenters were detained, Block 6/7 gardens where families tried to maintain normalcy, and the cemetery and memorial groves honoring those who died here. The Visitor Center, co-located in the former Fairgrounds, offers exhibits, artifacts, and ranger-led programs that delve into resistance, loyalty questions, and camp life. No camping or recreational amenities exist; the focus is exclusively on education, reflection, and remembrance. Visitors are invited to walk shallow trails past original foundations and interpretive signs, listen to survivor stories, and acknowledge one of the most challenging chapters in American civil liberties history.', '530-664 4015', 1300.00, 4000, 5500, 41.8865735676801, -121.376724925653, '0101000020E610000090571F3E7BF14440BE5D467AC74F4DC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed on Leash', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749438306/tule-lake-national-monument_r8fxy2.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (86, 'Wiskeytown', 'PO Box 188, Whiskeytown, CA 96095', 'California', 'Shasta Cascade', 'Federal', 'Recreation Area', 'Whiskeytown National Recreation Area, part of the broader Whiskeytown–Shasta–Trinity NRA, centers on serene 3,458‑acre Whiskeytown Lake nestled in northern California’s foothills. Established in 1965, the park offers rugged canyon trails leading to dramatic Waterfall and panoramic overlooks, alongside lakeside amenities such as beaches, swimming spots, and a marina. Visitors enjoy miles of mixed-use hiking, biking, and equestrian routes; developed and primitive campsites; group camping at Dry Creek; kayak and paddleboard tours; motorized boating; and year-round fishing. Rich forests and riparian corridors support diverse wildlife, including nesting bald eagles and black bears. With a fully accessible Visitor Center featuring native plant gardens and exhibits, plus bear-safe camping protocols, Whiskeytown blends river canyon adventure, water recreation, and historic charm in a surprisingly tranquil corner of Northern California.', '530-664 4015', 203587.00, 930, 4250, 40.6011889489399, -122.523750814672, '0101000020E6100000ED346DC2F34C44407EDDB9BBF5BC4CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed on Leash', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749438394/whiskeytown-national-recreation-area_c9gemw.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (87, 'Yosemite', '9007 Village Dr, YOSEMITE NATIONAL PARK, CA 95389', 'California', 'High Sierra', 'Federal', 'Park', 'Yosemite National Park encompasses nearly 750,000 acres of the Sierra Nevada, from glacially carved granite valleys and towering Waterfall to majestic sequoia groves and high alpine wilderness. Home to iconic natural landmarks—El Capitan, Half Dome, Yosemite Falls, and Mariposa Grove—the park offers world-class rock climbing, scenic hikes ranging from valley walks to challenging high-country treks, and winter recreation centered on Badger Pass. Overnight stays span developed campgrounds, RV sites, historic lodging like The Ahwahnee, and wilderness backcountry with permits. Visitors during peak months must plan ahead with entrance and camping reservations. Supported by visitor centers, shuttle systems, accessibility amenities, and educational programs, Yosemite delivers a full spectrum of seasonal, multi-sport outdoor adventure amid one of the planet’s most storied landscapes.', '530-664 4015', 759620.00, 2127, 13114, 37.8631963342838, -119.537327291524, '0101000020E610000054E3AC377DEE4240FED3FBDB383B4EC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Permit Required', 'Not Allowed', 'Pets Allowed on Leash', 'Permit Required', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749438467/yosemite-national-park_e9tp21.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (88, 'Port Chicago Naval Magazine', '4202 Alhambra Ave, Martinez, CA 94553', 'California', 'San Francisco Bay Area', 'Federal', 'Memorial', 'Port Chicago Naval Magazine National Memorial, located on the Suisun Bay shoreline in Concord (within a still-active military terminal), commemorates the tragic July 17, 1944 explosion that killed 320 sailors and civilians—primarily African-American stevedores. The site marks a pivotal moment in military history, from segregation to the Port Chicago Mutiny and subsequent Navy desegregation. Access is strictly via advance-reserved NPS shuttle from John Muir NHS on select days (Thu–Sat). The visit includes ranger-led interpretation through a reflective plaza overlooking the remnants of pilings and a piece of the ship, plus memorial stones listing the names of the deceased. With no overnight facilities, parking, or camping on-site, the memorial is a focused, educational, and somber day-use destination that honors lives lost and the broader struggle for racial equity in America’s armed forces.', '925-228-8860 x6520', 5.00, 0, 5, 38.0558161705085, -122.029999632547, '0101000020E61000000376F9FB24074340C8A8D7F828FC4CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Service Animals Only', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749437769/point-reyes-national-seashore_g41ldx.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (91, 'Rosie the Riveter WWII Home Front', '1414 Harbour Way S #3000, Richmond, CA 94804', 'California', 'San Francisco Bay Area', 'Federal', 'Historical Park', 'Rosie the Riveter WWII Home Front National Historical Park in Richmond, California, preserves the rich legacy of America’s World War II home front. It interprets the monumental contributions of women and minorities in the shipyards and defense industries, highlighted through a restored Visitor Education Center housed in the historic Oil House, full of artifacts, films, and interactive displays. Nearby sites include the Rosie Memorial—a public art installation shaped like a Liberty ship’s keel—Richmond Shipyards 2 & 3, the SS Red Oak Victory museum ship, and the Ford Assembly Plant, where tanks and vehicles were built. Visitors can walk or bike along the interpretive San Francisco Bay Trail with historical markers, participate in ranger-led tours and Rosie Fridays events, and engage in educational programming such as Junior Ranger and school field trips. With free admission and accessible pathways, the park invites reflection on home front innovation, equity, and resilience in a site seamlessly woven into the urban fabric of Richmond’s waterfront.', '510-232-5050', 145.00, 0, 20, 37.9096518548542, -122.357165779493, '0101000020E610000019ACD3786FF44240E2E9486448D24CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Service Animals Only', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749438101/rosie-the-riveter-wwii-homoe-front-national-historic-park_wvd7at.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (92, 'San Francisco Maritime', '2 Marina Boulevard, Building E, 2nd Floor, San Francisco, CA 94123', 'California', 'San Francisco Bay Area', 'Federal', 'Historical Park', 'San Francisco Maritime National Historical Park preserves the city’s rich maritime legacy at Aquatic Park Cove and Hyde Street Pier. Established in 1988, the park features a collection of historic ships—including the Balclutha, C.A. Thayer, Eureka, and USS Pampanito—moored along a restored waterfront. Visitors can wander the decks of these vessels on docent-led or self-guided tours, explore the Maritime Museum in the WPA-era bathhouse with its vibrant murals, and learn through films and exhibits at the Visitor Center. The park offers walking tours, Junior Ranger programs, non-motorized boating, birdwatching, and educational outreach. With ADA access, service animals, and interpretive materials in audio and braille formats, the park is welcoming to diverse visitors. Free to enter, it also hosts special events and partnerships with the Maritime Park Association, making it an accessible urban maritime treasure that speaks to San Francisco’s seafaring past and living culture.', '415-447-5000', 50.00, 0, 100, 37.8064325844505, -122.423922560494, '0101000020E61000006352D42E39E742402252D1E7BCC94CC0', NULL, 0.0000000000000, 0.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Pets Allowed on Leash', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749438164/san-francisco-maritime-national-historical-park_z1xitv.jpg', 'National Parks Agency');
INSERT INTO public.parks (park_id, park_name, park_address, park_state, park_region, park_level, park_type, park_description, park_phone_number, park_size, park_min_elevation, park_max_elevation, park_latitude, park_longitude, park_location, park_time_zone, park_entry_fee, park_parking_fee, park_average_rating, park_number_of_reviews, park_drone_permit, park_fishing_permit, park_hunting_permit, park_pet_policy, park_backcountry_permit, park_other_fee, park_photo_link, park_agency) VALUES (60, 'Cabrillo', 'Cabrillo National Monument, 1800 Cabrillo Memorial Drive, San Diego, CA 92106', 'California', 'San Diego County', 'Federal', 'Monument', 'Cabrillo National Monument, located at the southern tip of the Point Loma Peninsula in San Diego, California, commemorates the landing of Juan Rodríguez Cabrillo in 1542 — the first European expedition to set foot on what is now the West Coast of the United States. This National Monument honors Cabrillo’s historic journey and the cultural exchanges it initiated.
In addition to its historical significance, the site offers breathtaking panoramic views of San Diego Bay, the Pacific Ocean, and the city skyline. Visitors can explore the Old Point Loma Lighthouse, tide pools rich with marine life, coastal sage scrub habitats, and seasonal whale watching. The park also features military history exhibits, including coastal defense batteries from World War II.
With its blend of cultural history, natural beauty, and marine biodiversity, Cabrillo National Monument is a unique educational and recreational destination within the National Park Service.', '619-523-4285', 144.00, 0, 422, 32.6722143821441, -117.241576269881, '0101000020E6100000D99AF11E0B5640408CAF5E0714614FC0', NULL, 0.0000000000000, 20.0000000000000, 0.00, 0, 'Not Allowed', 'Not Allowed', 'Not Allowed', 'Service Animals Only', 'Not Allowed', 0.0000000000000, 'https://res.cloudinary.com/def88aad2/image/upload/v1749436666/cabrillo-national-monument_bxlios.jpg', 'National Parks Agency');


--
-- TOC entry 6053 (class 0 OID 17679)
-- Dependencies: 248
-- Data for Name: review_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 6051 (class 0 OID 17658)
-- Dependencies: 246
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 6055 (class 0 OID 17698)
-- Dependencies: 250
-- Data for Name: saved_searches; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5748 (class 0 OID 16711)
-- Dependencies: 219
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 6061 (class 0 OID 17801)
-- Dependencies: 256
-- Data for Name: trail_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.trail_types (trail_type_id, trail_type_name) VALUES (1, 'Hiking');
INSERT INTO public.trail_types (trail_type_id, trail_type_name) VALUES (2, 'Mountain Biking');
INSERT INTO public.trail_types (trail_type_id, trail_type_name) VALUES (3, 'Horseback Riding');
INSERT INTO public.trail_types (trail_type_id, trail_type_name) VALUES (4, 'Wheelchair Accessible');


--
-- TOC entry 6049 (class 0 OID 17644)
-- Dependencies: 244
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 6094 (class 0 OID 0)
-- Dependencies: 259
-- Name: accessibility_accessibility_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accessibility_accessibility_id_seq', 16, true);


--
-- TOC entry 6095 (class 0 OID 0)
-- Dependencies: 231
-- Name: activities_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activities_activity_id_seq', 22, true);


--
-- TOC entry 6096 (class 0 OID 0)
-- Dependencies: 251
-- Name: camp_types_camp_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.camp_types_camp_type_id_seq', 4, true);


--
-- TOC entry 6097 (class 0 OID 0)
-- Dependencies: 235
-- Name: facilities_facility_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facilities_facility_id_seq', 24, true);


--
-- TOC entry 6098 (class 0 OID 0)
-- Dependencies: 239
-- Name: features_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.features_feature_id_seq', 18, true);


--
-- TOC entry 6099 (class 0 OID 0)
-- Dependencies: 261
-- Name: park_accessibility_park_accessibility_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_accessibility_park_accessibility_id_seq', 139, true);


--
-- TOC entry 6100 (class 0 OID 0)
-- Dependencies: 233
-- Name: park_activities_park_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_activities_park_activity_id_seq', 158, true);


--
-- TOC entry 6101 (class 0 OID 0)
-- Dependencies: 253
-- Name: park_camp_types_park_camp_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_camp_types_park_camp_type_id_seq', 53, true);


--
-- TOC entry 6102 (class 0 OID 0)
-- Dependencies: 237
-- Name: park_facilities_park_facility_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_facilities_park_facility_id_seq', 266, true);


--
-- TOC entry 6103 (class 0 OID 0)
-- Dependencies: 241
-- Name: park_features_park_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_features_park_feature_id_seq', 115, true);


--
-- TOC entry 6104 (class 0 OID 0)
-- Dependencies: 229
-- Name: park_fire_risk_park_fire_risk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_fire_risk_park_fire_risk_id_seq', 1, false);


--
-- TOC entry 6105 (class 0 OID 0)
-- Dependencies: 225
-- Name: park_open_dates_park_open_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_open_dates_park_open_dates_id_seq', 1, false);


--
-- TOC entry 6106 (class 0 OID 0)
-- Dependencies: 257
-- Name: park_trail_types_park_trail_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_trail_types_park_trail_type_id_seq', 67, true);


--
-- TOC entry 6107 (class 0 OID 0)
-- Dependencies: 227
-- Name: park_weather_park_weather_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_weather_park_weather_id_seq', 1, false);


--
-- TOC entry 6108 (class 0 OID 0)
-- Dependencies: 223
-- Name: parks_park_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parks_park_id_seq', 92, true);


--
-- TOC entry 6109 (class 0 OID 0)
-- Dependencies: 247
-- Name: review_activities_review_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.review_activities_review_activities_id_seq', 1, false);


--
-- TOC entry 6110 (class 0 OID 0)
-- Dependencies: 245
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 1, false);


--
-- TOC entry 6111 (class 0 OID 0)
-- Dependencies: 249
-- Name: saved_searches_saved_search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.saved_searches_saved_search_id_seq', 1, false);


--
-- TOC entry 6112 (class 0 OID 0)
-- Dependencies: 255
-- Name: trail_types_trail_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trail_types_trail_type_id_seq', 4, true);


--
-- TOC entry 6113 (class 0 OID 0)
-- Dependencies: 243
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);


--
-- TOC entry 5853 (class 2606 OID 17860)
-- Name: accessibility accessibility_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accessibility
    ADD CONSTRAINT accessibility_pkey PRIMARY KEY (accessibility_id);


--
-- TOC entry 5806 (class 2606 OID 17571)
-- Name: activities activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (activity_id);


--
-- TOC entry 5841 (class 2606 OID 17780)
-- Name: camp_types camp_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camp_types
    ADD CONSTRAINT camp_types_pkey PRIMARY KEY (camp_type_id);


--
-- TOC entry 5812 (class 2606 OID 17597)
-- Name: facilities facilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facilities
    ADD CONSTRAINT facilities_pkey PRIMARY KEY (facility_id);


--
-- TOC entry 5818 (class 2606 OID 17623)
-- Name: features features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (feature_id);


--
-- TOC entry 5855 (class 2606 OID 17869)
-- Name: park_accessibility park_accessibility_park_id_accessibility_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_accessibility
    ADD CONSTRAINT park_accessibility_park_id_accessibility_id_key UNIQUE (park_id, accessibility_id);


--
-- TOC entry 5857 (class 2606 OID 17867)
-- Name: park_accessibility park_accessibility_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_accessibility
    ADD CONSTRAINT park_accessibility_pkey PRIMARY KEY (park_accessibility_id);


--
-- TOC entry 5808 (class 2606 OID 17580)
-- Name: park_activities park_activities_park_id_activity_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_activities
    ADD CONSTRAINT park_activities_park_id_activity_id_key UNIQUE (park_id, activity_id);


--
-- TOC entry 5810 (class 2606 OID 17578)
-- Name: park_activities park_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_activities
    ADD CONSTRAINT park_activities_pkey PRIMARY KEY (park_activity_id);


--
-- TOC entry 5843 (class 2606 OID 17789)
-- Name: park_camp_types park_camp_types_park_id_camp_type_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_camp_types
    ADD CONSTRAINT park_camp_types_park_id_camp_type_id_key UNIQUE (park_id, camp_type_id);


--
-- TOC entry 5845 (class 2606 OID 17787)
-- Name: park_camp_types park_camp_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_camp_types
    ADD CONSTRAINT park_camp_types_pkey PRIMARY KEY (park_camp_type_id);


--
-- TOC entry 5814 (class 2606 OID 17606)
-- Name: park_facilities park_facilities_park_id_facility_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_facilities
    ADD CONSTRAINT park_facilities_park_id_facility_id_key UNIQUE (park_id, facility_id);


--
-- TOC entry 5816 (class 2606 OID 17604)
-- Name: park_facilities park_facilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_facilities
    ADD CONSTRAINT park_facilities_pkey PRIMARY KEY (park_facility_id);


--
-- TOC entry 5820 (class 2606 OID 17632)
-- Name: park_features park_features_park_id_feature_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_features
    ADD CONSTRAINT park_features_park_id_feature_id_key UNIQUE (park_id, feature_id);


--
-- TOC entry 5822 (class 2606 OID 17630)
-- Name: park_features park_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_features
    ADD CONSTRAINT park_features_pkey PRIMARY KEY (park_feature_id);


--
-- TOC entry 5802 (class 2606 OID 17533)
-- Name: park_fire_risk park_fire_risk_park_id_fire_risk_date_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_fire_risk
    ADD CONSTRAINT park_fire_risk_park_id_fire_risk_date_key UNIQUE (park_id, fire_risk_date);


--
-- TOC entry 5804 (class 2606 OID 17531)
-- Name: park_fire_risk park_fire_risk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_fire_risk
    ADD CONSTRAINT park_fire_risk_pkey PRIMARY KEY (park_fire_risk_id);


--
-- TOC entry 5794 (class 2606 OID 17503)
-- Name: park_open_dates park_open_dates_park_id_open_date_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_open_dates
    ADD CONSTRAINT park_open_dates_park_id_open_date_key UNIQUE (park_id, open_date);


--
-- TOC entry 5796 (class 2606 OID 17501)
-- Name: park_open_dates park_open_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_open_dates
    ADD CONSTRAINT park_open_dates_pkey PRIMARY KEY (park_open_dates_id);


--
-- TOC entry 5849 (class 2606 OID 17815)
-- Name: park_trail_types park_trail_types_park_id_trail_type_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_trail_types
    ADD CONSTRAINT park_trail_types_park_id_trail_type_id_key UNIQUE (park_id, trail_type_id);


--
-- TOC entry 5851 (class 2606 OID 17813)
-- Name: park_trail_types park_trail_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_trail_types
    ADD CONSTRAINT park_trail_types_pkey PRIMARY KEY (park_trail_type_id);


--
-- TOC entry 5798 (class 2606 OID 17518)
-- Name: park_weather park_weather_park_id_weather_date_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_weather
    ADD CONSTRAINT park_weather_park_id_weather_date_key UNIQUE (park_id, weather_date);


--
-- TOC entry 5800 (class 2606 OID 17516)
-- Name: park_weather park_weather_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_weather
    ADD CONSTRAINT park_weather_pkey PRIMARY KEY (park_weather_id);


--
-- TOC entry 5792 (class 2606 OID 17494)
-- Name: parks parks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parks
    ADD CONSTRAINT parks_pkey PRIMARY KEY (park_id);


--
-- TOC entry 5833 (class 2606 OID 17684)
-- Name: review_activities review_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.review_activities
    ADD CONSTRAINT review_activities_pkey PRIMARY KEY (review_activities_id);


--
-- TOC entry 5835 (class 2606 OID 17686)
-- Name: review_activities review_activities_review_id_activity_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.review_activities
    ADD CONSTRAINT review_activities_review_id_activity_id_key UNIQUE (review_id, activity_id);


--
-- TOC entry 5831 (class 2606 OID 17667)
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- TOC entry 5837 (class 2606 OID 17706)
-- Name: saved_searches saved_searches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_searches
    ADD CONSTRAINT saved_searches_pkey PRIMARY KEY (saved_search_id);


--
-- TOC entry 5839 (class 2606 OID 17708)
-- Name: saved_searches saved_searches_user_id_saved_search_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_searches
    ADD CONSTRAINT saved_searches_user_id_saved_search_name_key UNIQUE (user_id, saved_search_name);


--
-- TOC entry 5847 (class 2606 OID 17806)
-- Name: trail_types trail_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trail_types
    ADD CONSTRAINT trail_types_pkey PRIMARY KEY (trail_type_id);


--
-- TOC entry 5824 (class 2606 OID 17652)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 5826 (class 2606 OID 17656)
-- Name: users users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_email_key UNIQUE (user_email);


--
-- TOC entry 5828 (class 2606 OID 17654)
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- TOC entry 5789 (class 1259 OID 17716)
-- Name: idx_location_gist; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_location_gist ON public.parks USING gist (park_location);


--
-- TOC entry 5790 (class 1259 OID 17714)
-- Name: idx_parks_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_parks_state ON public.parks USING btree (park_state);


--
-- TOC entry 5829 (class 1259 OID 17715)
-- Name: idx_reviews_park_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_reviews_park_id ON public.reviews USING btree (park_id);


--
-- TOC entry 5876 (class 2606 OID 17875)
-- Name: park_accessibility park_accessibility_accessibility_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_accessibility
    ADD CONSTRAINT park_accessibility_accessibility_id_fkey FOREIGN KEY (accessibility_id) REFERENCES public.accessibility(accessibility_id) ON DELETE CASCADE;


--
-- TOC entry 5877 (class 2606 OID 17870)
-- Name: park_accessibility park_accessibility_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_accessibility
    ADD CONSTRAINT park_accessibility_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5861 (class 2606 OID 17586)
-- Name: park_activities park_activities_activity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_activities
    ADD CONSTRAINT park_activities_activity_id_fkey FOREIGN KEY (activity_id) REFERENCES public.activities(activity_id) ON DELETE CASCADE;


--
-- TOC entry 5862 (class 2606 OID 17581)
-- Name: park_activities park_activities_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_activities
    ADD CONSTRAINT park_activities_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5872 (class 2606 OID 17795)
-- Name: park_camp_types park_camp_types_camp_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_camp_types
    ADD CONSTRAINT park_camp_types_camp_type_id_fkey FOREIGN KEY (camp_type_id) REFERENCES public.camp_types(camp_type_id) ON DELETE CASCADE;


--
-- TOC entry 5873 (class 2606 OID 17790)
-- Name: park_camp_types park_camp_types_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_camp_types
    ADD CONSTRAINT park_camp_types_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5863 (class 2606 OID 17612)
-- Name: park_facilities park_facilities_facility_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_facilities
    ADD CONSTRAINT park_facilities_facility_id_fkey FOREIGN KEY (facility_id) REFERENCES public.facilities(facility_id) ON DELETE CASCADE;


--
-- TOC entry 5864 (class 2606 OID 17607)
-- Name: park_facilities park_facilities_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_facilities
    ADD CONSTRAINT park_facilities_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5865 (class 2606 OID 17638)
-- Name: park_features park_features_feature_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_features
    ADD CONSTRAINT park_features_feature_id_fkey FOREIGN KEY (feature_id) REFERENCES public.features(feature_id) ON DELETE CASCADE;


--
-- TOC entry 5866 (class 2606 OID 17633)
-- Name: park_features park_features_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_features
    ADD CONSTRAINT park_features_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5860 (class 2606 OID 17534)
-- Name: park_fire_risk park_fire_risk_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_fire_risk
    ADD CONSTRAINT park_fire_risk_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5858 (class 2606 OID 17504)
-- Name: park_open_dates park_open_dates_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_open_dates
    ADD CONSTRAINT park_open_dates_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5874 (class 2606 OID 17816)
-- Name: park_trail_types park_trail_types_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_trail_types
    ADD CONSTRAINT park_trail_types_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5875 (class 2606 OID 17821)
-- Name: park_trail_types park_trail_types_trail_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_trail_types
    ADD CONSTRAINT park_trail_types_trail_type_id_fkey FOREIGN KEY (trail_type_id) REFERENCES public.trail_types(trail_type_id) ON DELETE CASCADE;


--
-- TOC entry 5859 (class 2606 OID 17519)
-- Name: park_weather park_weather_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_weather
    ADD CONSTRAINT park_weather_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5869 (class 2606 OID 17692)
-- Name: review_activities review_activities_activity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.review_activities
    ADD CONSTRAINT review_activities_activity_id_fkey FOREIGN KEY (activity_id) REFERENCES public.activities(activity_id) ON DELETE CASCADE;


--
-- TOC entry 5870 (class 2606 OID 17687)
-- Name: review_activities review_activities_review_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.review_activities
    ADD CONSTRAINT review_activities_review_id_fkey FOREIGN KEY (review_id) REFERENCES public.reviews(review_id) ON DELETE CASCADE;


--
-- TOC entry 5867 (class 2606 OID 17668)
-- Name: reviews reviews_park_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_park_id_fkey FOREIGN KEY (park_id) REFERENCES public.parks(park_id) ON DELETE CASCADE;


--
-- TOC entry 5868 (class 2606 OID 17673)
-- Name: reviews reviews_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- TOC entry 5871 (class 2606 OID 17709)
-- Name: saved_searches saved_searches_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saved_searches
    ADD CONSTRAINT saved_searches_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


-- Completed on 2025-08-10 16:52:33

--
-- PostgreSQL database dump complete
--

