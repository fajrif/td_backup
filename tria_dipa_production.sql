--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11
-- Dumped by pg_dump version 14.11

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

--
-- Name: tria_dipa_production; Type: DATABASE; Schema: -; Owner: deployer
--

CREATE DATABASE tria_dipa_production WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE tria_dipa_production OWNER TO deployer;

\connect tria_dipa_production

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
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    locale character varying
);


ALTER TABLE public.action_text_rich_texts OWNER TO deployer;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_text_rich_texts_id_seq OWNER TO deployer;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO deployer;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO deployer;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO deployer;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO deployer;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO deployer;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO deployer;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: addresses; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.addresses (
    id bigint NOT NULL,
    order_no integer DEFAULT 0 NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    complete_address character varying DEFAULT ''::character varying NOT NULL,
    phone1 character varying DEFAULT ''::character varying NOT NULL,
    phone2 character varying DEFAULT ''::character varying NOT NULL,
    fax character varying DEFAULT ''::character varying NOT NULL,
    email1 character varying DEFAULT ''::character varying NOT NULL,
    email2 character varying DEFAULT ''::character varying NOT NULL,
    longitude character varying DEFAULT ''::character varying NOT NULL,
    latitude character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.addresses OWNER TO deployer;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addresses_id_seq OWNER TO deployer;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: admins; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.admins (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp(6) without time zone,
    last_sign_in_at timestamp(6) without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    full_name character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    role_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.admins OWNER TO deployer;

--
-- Name: admins_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.admins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admins_id_seq OWNER TO deployer;

--
-- Name: admins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.admins_id_seq OWNED BY public.admins.id;


--
-- Name: appointments; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.appointments (
    id bigint NOT NULL,
    full_name character varying DEFAULT ''::character varying NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    message character varying DEFAULT ''::character varying NOT NULL,
    doctor_id integer DEFAULT 0 NOT NULL,
    session_date date NOT NULL,
    session_time character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.appointments OWNER TO deployer;

--
-- Name: appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_id_seq OWNER TO deployer;

--
-- Name: appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO deployer;

--
-- Name: archive_types; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.archive_types (
    id bigint NOT NULL,
    name jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.archive_types OWNER TO deployer;

--
-- Name: archive_types_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.archive_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archive_types_id_seq OWNER TO deployer;

--
-- Name: archive_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.archive_types_id_seq OWNED BY public.archive_types.id;


--
-- Name: archives; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.archives (
    id bigint NOT NULL,
    title jsonb DEFAULT '{}'::jsonb,
    short_description jsonb DEFAULT '{}'::jsonb,
    archive_type_id bigint,
    published_date timestamp(6) without time zone,
    status integer DEFAULT 1 NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    private integer DEFAULT 0,
    read_only integer DEFAULT 0
);


ALTER TABLE public.archives OWNER TO deployer;

--
-- Name: archives_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.archives_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archives_id_seq OWNER TO deployer;

--
-- Name: archives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.archives_id_seq OWNED BY public.archives.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    title jsonb DEFAULT '{}'::jsonb,
    short_description jsonb DEFAULT '{}'::jsonb,
    category_id bigint,
    published_date timestamp(6) without time zone,
    status integer DEFAULT 1 NOT NULL,
    video_url character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    slug jsonb DEFAULT '{}'::jsonb,
    meta_title jsonb DEFAULT '{}'::jsonb,
    meta_description jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.articles OWNER TO deployer;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO deployer;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: banner_sections; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.banner_sections (
    id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    style integer DEFAULT 0 NOT NULL,
    size integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.banner_sections OWNER TO deployer;

--
-- Name: banner_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.banner_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banner_sections_id_seq OWNER TO deployer;

--
-- Name: banner_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.banner_sections_id_seq OWNED BY public.banner_sections.id;


--
-- Name: banners; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.banners (
    id bigint NOT NULL,
    order_no integer DEFAULT 0 NOT NULL,
    title jsonb DEFAULT '{}'::jsonb,
    description jsonb DEFAULT '{}'::jsonb,
    banner_section_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    orientation character varying
);


ALTER TABLE public.banners OWNER TO deployer;

--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banners_id_seq OWNER TO deployer;

--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.categories OWNER TO deployer;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO deployer;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.contacts (
    id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    subject character varying DEFAULT ''::character varying NOT NULL,
    message text NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.contacts OWNER TO deployer;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO deployer;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: doctors; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.doctors (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    slug character varying DEFAULT ''::character varying NOT NULL,
    str_no character varying DEFAULT ''::character varying NOT NULL,
    profesional_name character varying DEFAULT ''::character varying NOT NULL,
    full_name character varying DEFAULT ''::character varying NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    alumni character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.doctors OWNER TO deployer;

--
-- Name: doctors_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.doctors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doctors_id_seq OWNER TO deployer;

--
-- Name: doctors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.events (
    id bigint NOT NULL,
    date date NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.events OWNER TO deployer;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO deployer;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: facilities; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.facilities (
    id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    slug character varying DEFAULT ''::character varying NOT NULL,
    headline jsonb DEFAULT '{}'::jsonb,
    description jsonb DEFAULT '{}'::jsonb,
    description1 jsonb DEFAULT '{}'::jsonb,
    description2 jsonb DEFAULT '{}'::jsonb,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.facilities OWNER TO deployer;

--
-- Name: facilities_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.facilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facilities_id_seq OWNER TO deployer;

--
-- Name: facilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.facilities_id_seq OWNED BY public.facilities.id;


--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.friendly_id_slugs (
    id bigint NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO deployer;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO deployer;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: institutions; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.institutions (
    id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    slug character varying DEFAULT ''::character varying NOT NULL,
    headline jsonb DEFAULT '{}'::jsonb,
    description jsonb DEFAULT '{}'::jsonb,
    description1 jsonb DEFAULT '{}'::jsonb,
    description2 jsonb DEFAULT '{}'::jsonb,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.institutions OWNER TO deployer;

--
-- Name: institutions_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.institutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutions_id_seq OWNER TO deployer;

--
-- Name: institutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.institutions_id_seq OWNED BY public.institutions.id;


--
-- Name: link_buttons; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.link_buttons (
    id bigint NOT NULL,
    linkable_type character varying NOT NULL,
    linkable_id bigint NOT NULL,
    objectable_type character varying,
    objectable_id bigint,
    route_category integer DEFAULT 0 NOT NULL,
    link_text character varying DEFAULT ''::character varying NOT NULL,
    link_url character varying DEFAULT ''::character varying NOT NULL,
    anchor character varying DEFAULT ''::character varying NOT NULL,
    open_new_tab integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.link_buttons OWNER TO deployer;

--
-- Name: link_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.link_buttons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.link_buttons_id_seq OWNER TO deployer;

--
-- Name: link_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.link_buttons_id_seq OWNED BY public.link_buttons.id;


--
-- Name: menus; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.menus (
    id bigint NOT NULL,
    section integer DEFAULT 0 NOT NULL,
    data jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.menus OWNER TO deployer;

--
-- Name: menus_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menus_id_seq OWNER TO deployer;

--
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.pages (
    id bigint NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    slug character varying DEFAULT ''::character varying NOT NULL,
    published_date timestamp(6) without time zone,
    status integer DEFAULT 1 NOT NULL,
    banner_section_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    meta_title jsonb DEFAULT '{}'::jsonb,
    meta_description jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.pages OWNER TO deployer;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO deployer;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.questions (
    id bigint NOT NULL,
    question jsonb DEFAULT '{}'::jsonb,
    answer jsonb DEFAULT '{}'::jsonb,
    category_name jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.questions OWNER TO deployer;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO deployer;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: report_types; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.report_types (
    id bigint NOT NULL,
    name jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.report_types OWNER TO deployer;

--
-- Name: report_types_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.report_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_types_id_seq OWNER TO deployer;

--
-- Name: report_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.report_types_id_seq OWNED BY public.report_types.id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.reports (
    id bigint NOT NULL,
    title jsonb DEFAULT '{}'::jsonb,
    short_description jsonb DEFAULT '{}'::jsonb,
    report_type_id bigint,
    published_date timestamp(6) without time zone,
    status integer DEFAULT 1 NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    private integer DEFAULT 0,
    read_only integer DEFAULT 0
);


ALTER TABLE public.reports OWNER TO deployer;

--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reports_id_seq OWNER TO deployer;

--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.roles OWNER TO deployer;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO deployer;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: schedules; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.schedules (
    id bigint NOT NULL,
    doctor_id integer DEFAULT 0 NOT NULL,
    day_code integer DEFAULT 0 NOT NULL,
    day_name character varying DEFAULT ''::character varying NOT NULL,
    start_time character varying DEFAULT '06:00'::character varying NOT NULL,
    end_time character varying DEFAULT '22:00'::character varying NOT NULL
);


ALTER TABLE public.schedules OWNER TO deployer;

--
-- Name: schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedules_id_seq OWNER TO deployer;

--
-- Name: schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.schedules_id_seq OWNED BY public.schedules.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO deployer;

--
-- Name: sections; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.sections (
    id bigint NOT NULL,
    page_id bigint,
    snippet_id bigint,
    bg_color character varying DEFAULT ''::character varying NOT NULL,
    css_class character varying DEFAULT ''::character varying NOT NULL,
    order_no integer DEFAULT 0 NOT NULL,
    hidden integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.sections OWNER TO deployer;

--
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sections_id_seq OWNER TO deployer;

--
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.sections_id_seq OWNED BY public.sections.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.settings (
    id bigint NOT NULL,
    admin_contact character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.settings OWNER TO deployer;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO deployer;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: snippets; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.snippets (
    id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    title jsonb DEFAULT '{}'::jsonb,
    caption jsonb DEFAULT '{}'::jsonb,
    short_description jsonb DEFAULT '{}'::jsonb,
    description jsonb DEFAULT '{}'::jsonb,
    title_tag character varying DEFAULT ''::character varying NOT NULL,
    text_color character varying DEFAULT ''::character varying NOT NULL,
    template character varying DEFAULT ''::character varying NOT NULL,
    bg_color character varying DEFAULT ''::character varying NOT NULL,
    css_class character varying DEFAULT ''::character varying NOT NULL,
    css_title character varying DEFAULT ''::character varying NOT NULL,
    css_desc character varying DEFAULT ''::character varying NOT NULL,
    orientation character varying,
    video_url character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    parent_id integer
);


ALTER TABLE public.snippets OWNER TO deployer;

--
-- Name: snippets_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.snippets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.snippets_id_seq OWNER TO deployer;

--
-- Name: snippets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.snippets_id_seq OWNED BY public.snippets.id;


--
-- Name: specialists; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.specialists (
    id bigint NOT NULL,
    name jsonb DEFAULT '{}'::jsonb,
    slug character varying DEFAULT ''::character varying NOT NULL,
    headline jsonb DEFAULT '{}'::jsonb,
    description jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.specialists OWNER TO deployer;

--
-- Name: specialists_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.specialists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.specialists_id_seq OWNER TO deployer;

--
-- Name: specialists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.specialists_id_seq OWNED BY public.specialists.id;


--
-- Name: specialities; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.specialities (
    id bigint NOT NULL,
    doctor_id bigint,
    specialist_id bigint
);


ALTER TABLE public.specialities OWNER TO deployer;

--
-- Name: specialities_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.specialities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.specialities_id_seq OWNER TO deployer;

--
-- Name: specialities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.specialities_id_seq OWNED BY public.specialities.id;


--
-- Name: testimonials; Type: TABLE; Schema: public; Owner: deployer
--

CREATE TABLE public.testimonials (
    id bigint NOT NULL,
    full_name character varying DEFAULT ''::character varying NOT NULL,
    comment character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.testimonials OWNER TO deployer;

--
-- Name: testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: deployer
--

CREATE SEQUENCE public.testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testimonials_id_seq OWNER TO deployer;

--
-- Name: testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deployer
--

ALTER SEQUENCE public.testimonials_id_seq OWNED BY public.testimonials.id;


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: admins id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.admins ALTER COLUMN id SET DEFAULT nextval('public.admins_id_seq'::regclass);


--
-- Name: appointments id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);


--
-- Name: archive_types id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.archive_types ALTER COLUMN id SET DEFAULT nextval('public.archive_types_id_seq'::regclass);


--
-- Name: archives id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.archives ALTER COLUMN id SET DEFAULT nextval('public.archives_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: banner_sections id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.banner_sections ALTER COLUMN id SET DEFAULT nextval('public.banner_sections_id_seq'::regclass);


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: doctors id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: facilities id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.facilities ALTER COLUMN id SET DEFAULT nextval('public.facilities_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Name: institutions id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.institutions ALTER COLUMN id SET DEFAULT nextval('public.institutions_id_seq'::regclass);


--
-- Name: link_buttons id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.link_buttons ALTER COLUMN id SET DEFAULT nextval('public.link_buttons_id_seq'::regclass);


--
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: report_types id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.report_types ALTER COLUMN id SET DEFAULT nextval('public.report_types_id_seq'::regclass);


--
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: schedules id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.schedules ALTER COLUMN id SET DEFAULT nextval('public.schedules_id_seq'::regclass);


--
-- Name: sections id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.sections ALTER COLUMN id SET DEFAULT nextval('public.sections_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: snippets id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.snippets ALTER COLUMN id SET DEFAULT nextval('public.snippets_id_seq'::regclass);


--
-- Name: specialists id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.specialists ALTER COLUMN id SET DEFAULT nextval('public.specialists_id_seq'::regclass);


--
-- Name: specialities id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.specialities ALTER COLUMN id SET DEFAULT nextval('public.specialities_id_seq'::regclass);


--
-- Name: testimonials id; Type: DEFAULT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.testimonials ALTER COLUMN id SET DEFAULT nextval('public.testimonials_id_seq'::regclass);


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at, locale) FROM stdin;
1	content	<p>In a groundbreaking development that is reshaping the landscape of cancer research, recent studies have unveiled the potential of gene therapy as a transformative approach to combat various types of cancers. This breakthrough brings renewed hope to patients and the medical community alike, as scientists delve into the intricate world of genetics to unlock new avenues for more effective and targeted cancer treatments.</p>\n\t\t<p>The research, conducted by a team of leading oncologists and geneticists, reveals that gene therapy holds the key to addressing the underlying genetic abnormalities that fuel the growth of cancer cells. Unlike traditional treatments such as chemotherapy and radiation, gene therapy aims to correct or replace faulty genes, offering a more precise and tailored approach to cancer treatment.</p>\n\t\t<p>One of the most promising aspects of this breakthrough is its potential applicability across diverse types of cancers. Rather than focusing on specific cancer types, gene therapy targets the fundamental genetic irregularities shared by many cancers, presenting a universal solution that transcends traditional boundaries. This versatility could mark a paradigm shift in cancer treatment, providing a unified approach that streamlines research efforts and offers new hope to patients facing a wide range of malignancies.</p>	Article	1	2024-07-24 04:41:06.196083	2024-07-24 04:41:06.196083	en
2	content	<p>In a remarkable stride forward for vaccine development, the medical community is witnessing an unprecedented breakthrough as malaria vaccines take center stage in the fight against this ancient and pervasive disease. Traditionally associated with preventing malaria infections, these vaccines are now revealing new and unexpected applications, sparking a revolution in the field and offering hope for addressing global health challenges beyond malaria.</p>\n\t\t<p>Historically, malaria vaccines have been primarily designed to provide protection against Plasmodium falciparum, the deadliest malaria parasite prevalent in many parts of the world. However, recent research has uncovered that these vaccines exhibit unexpected benefits beyond their original scope. Medical experts have observed that the immune responses triggered by malaria vaccines might have broader implications for the immune system, demonstrating potential efficacy against other infectious diseases.</p>\n\t\t<p>The newfound applications of malaria vaccines are prompting researchers to explore their adaptability and effectiveness in combatting a range of infections. This revolutionary shift in perspective is not only expanding the horizons of malaria vaccine research but also offering a novel approach to developing vaccines for other diseases. The cross-functional immune responses induced by these vaccines are proving to be a valuable asset in the ongoing quest for versatile and effective preventive measures against various pathogens.</p>	Article	2	2024-07-24 04:41:06.326685	2024-07-24 04:41:06.326685	en
3	content	<p>In a paradigm-shifting revelation, the scientific community is buzzing with excitement over a groundbreaking study that unearths an unexpected connection between our dietary choices and susceptibility to the common flu. Contrary to conventional wisdom that attributes flu vulnerability solely to viral exposure, this pioneering research illuminates the intricate interplay between our food habits and the body's immune response, offering a fresh perspective on influenza prevention and management.</p>\n\t\t<p>The study, led by a team of interdisciplinary researchers, delves into the intricate relationship between nutrition and immune function. Results indicate that certain dietary components have a discernible impact on the immune system's ability to mount a robust defense against influenza viruses. Understanding this link opens new avenues for both preventive measures and therapeutic interventions, potentially reshaping public health strategies related to seasonal flu outbreaks.</p>\n\t\t<p>One surprising finding of the study is the role of micronutrients, such as vitamins and minerals, in fortifying the body's defenses against the flu. Researchers discovered that deficiencies in key micronutrients compromise the immune system's effectiveness, rendering individuals more susceptible to influenza infections. This insight underscores the importance of a well-balanced diet in bolstering the body's natural defenses and highlights the potential role of nutritional supplementation in flu prevention.</p>	Article	3	2024-07-24 04:41:06.450743	2024-07-24 04:41:06.450743	en
4	content	<p>In a powerful demonstration of solidarity and shared commitment to global health, European countries are spearheading a collaborative initiative to transform the distribution of medicine in developing nations. This groundbreaking effort marks a significant step towards addressing healthcare disparities and fostering a collective response to the challenges faced by underserved communities around the world.</p>\n\t\t<p>The collaborative initiative, born out of the shared recognition of the urgent need for equitable access to essential medicines, brings together European nations in a unified front. This alliance aims not only to streamline the distribution process but also to enhance the efficiency of medical supply chains, ensuring that life-saving medications reach those who need them most in a timely manner.</p>\n\t\t<p>One key aspect of this global collaboration is the pooling of resources and expertise. European countries are leveraging their collective knowledge in medicine production, logistics, and public health to create a comprehensive and sustainable approach to medicine distribution. By sharing best practices, optimizing supply chain management, and coordinating efforts, these nations are working together to overcome logistical challenges and maximize the impact of their collective resources.</p>	Article	4	2024-07-24 04:41:06.648993	2024-07-24 04:41:06.648993	en
5	content	<div>Veritatis nihil nobis sint sit in consectetur a. Sit ipsam mollitia iusto amet facere at officiis culpa. Sit nostrum consequuntur similique eum amet. Unde veritatis quasi tempore velit veniam. Recusandae iste exercitationem velit ea. Explicabo voluptas ex error maiores accusamus. Aliquam laboriosam vero deserunt optio temporibus itaque. Quasi ratione culpa maxime reprehenderit. Illo sit quas eius rem laboriosam ea expedita cum. Facilis reiciendis dolore nulla deleniti inventore voluptatem officia laboriosam. Corrupti iusto suscipit inventore ipsum. Porro numquam reiciendis alias laudantium. Odio quidem porro minus est dicta facilis temporibus. Fugit neque quia id reiciendis ad. Consequuntur quasi sint quaerat assumenda nesciunt sapiente. Nemo minus accusantium libero veritatis. Sit ullam sequi cum soluta molestiae. Iusto ipsa animi soluta consequuntur sint. Aperiam quod harum ea sit minima placeat. Aut facere error facilis qui eos hic perspiciatis similique. Quis adipisci mollitia aliquid accusamus.</div>	Doctor	1	2024-07-24 04:41:10.519989	2024-07-24 19:19:59.544103	en
6	content	<div>Pulmonology Consultant Internal Medicine Specialist from Univeristy of Charlotte</div>	Doctor	2	2024-07-25 19:44:30.962864	2024-07-25 19:44:30.962864	en
9	content	<div>Molestias fuga quasi minus consectetur aspernatur labore. Numquam impedit a repudiandae temporibus doloremque dolor. Distinctio recusandae magnam aperiam ipsam voluptate similique et amet. Quisquam placeat deleniti sapiente quas dolorem debitis voluptatibus. Maiores ad tempore animi eveniet est. Occaecati quos minus numquam iure quo animi porro corrupti. Praesentium ducimus ea voluptas cumque expedita non minima nemo. Amet fuga quasi tenetur doloribus explicabo. Necessitatibus aspernatur amet eum architecto recusandae. Dicta minus maxime ad assumenda laboriosam alias. Iure perspiciatis nihil fugiat quia tempore impedit necessitatibus sed. Tempora adipisci sed ad doloremque atque quisquam eveniet officia. Eius quidem hic molestiae aut quaerat qui architecto. Excepturi laudantium numquam enim amet ipsa quaerat officiis.</div>	Doctor	5	2024-09-10 09:15:30.586035	2024-09-19 23:20:36.375711	en
13	content	<div>Quam at expedita deleniti rem rerum blanditiis. Quo voluptate nesciunt corrupti labore nisi repellendus placeat. Aperiam nisi dolore vero quas excepturi impedit facere. Blanditiis perspiciatis ipsam voluptates provident aperiam perferendis recusandae incidunt. Totam ratione reprehenderit alias voluptas nobis adipisci laudantium. Minus maiores consequatur quidem fuga. Dignissimos debitis consequuntur vel exercitationem cumque voluptas consequatur recusandae. Reprehenderit iure dolorem necessitatibus expedita fugiat. Cum occaecati voluptas nostrum repudiandae laboriosam autem.</div>	Doctor	9	2024-09-10 09:15:31.364767	2024-10-16 22:24:02.473144	en
14	content	<div>Doloremque magni quae laudantium debitis officia iusto. Perspiciatis doloribus quasi dolorem beatae inventore hic. Nisi beatae distinctio sint odio aut nam commodi. Eos esse voluptates eligendi magnam. Voluptatem porro excepturi numquam nisi officiis odio. Perferendis eligendi voluptas ipsa quam nesciunt. Cumque quia placeat vel voluptas ipsum quod deleniti vero. Placeat vitae in occaecati incidunt a tempore. Accusantium corporis iure similique facilis delectus dolorum.</div>	Doctor	10	2024-09-10 09:15:31.460349	2024-10-16 22:24:12.066677	en
37	content	<div>Quae quidem voluptatum placeat accusamus expedita ratione quisquam. Atque perferendis voluptates est vitae aspernatur error. Temporibus blanditiis voluptatum illo nisi magnam laudantium. Est optio autem ipsa accusamus recusandae eum quas. Accusamus eius quasi fuga nesciunt deserunt. Tenetur aperiam provident culpa debitis. Saepe similique vero aperiam reprehenderit culpa. Dolorem est numquam nesciunt quibusdam tempore culpa. Eaque illum voluptatum quia expedita ipsum maiores. Molestias exercitationem repellat doloremque delectus. Omnis a totam fugit natus quas vitae. Inventore tenetur hic modi repellat illo accusamus consequatur. Harum vel quos rerum qui vitae explicabo assumenda. Sapiente voluptates fugiat autem illum magni ipsum inventore fugit. Recusandae nisi rem veritatis sint maiores. Vel mollitia quas officiis sed quia aperiam dolore. Dolore quo nesciunt deleniti vitae. Dignissimos asperiores vero necessitatibus delectus maiores.</div>	Doctor	33	2024-09-10 09:15:34.087541	2024-10-16 22:22:46.805541	en
20	content	<div>Error numquam sit facere ducimus quo quasi. Nam unde ab illo suscipit dicta. Consectetur facere unde rerum perferendis animi rem commodi. Soluta numquam tempora cum natus. Ipsa provident nemo explicabo molestiae itaque quisquam. Blanditiis quas dolores repellendus explicabo doloremque facere. Labore praesentium ex cumque optio nemo. Error sequi similique atque consequuntur ea commodi. Maiores nam tempora saepe voluptates laudantium nostrum consequatur. Mollitia doloribus adipisci in quos. Tempora doloribus consectetur quibusdam quo voluptate adipisci id nostrum. Maxime quaerat sint maiores ipsa. Reiciendis blanditiis voluptatem nam aperiam suscipit sunt aliquam ea. Fugit asperiores adipisci modi mollitia. Quidem illum recusandae expedita deleniti minus ullam. Voluptatibus nobis quidem occaecati repudiandae quo et placeat. Molestiae minima odio pariatur architecto accusamus.</div>	Doctor	16	2024-09-10 09:15:32.350933	2024-10-16 22:23:52.157927	en
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	image	Article	1	1	2024-07-24 04:41:06.214414
2	thumbnail	Article	1	2	2024-07-24 04:41:06.238059
3	image	Article	2	3	2024-07-24 04:41:06.342365
4	thumbnail	Article	2	4	2024-07-24 04:41:06.358887
5	image	Article	3	5	2024-07-24 04:41:06.478784
6	thumbnail	Article	3	6	2024-07-24 04:41:06.502477
7	image	Article	4	7	2024-07-24 04:41:06.767123
8	thumbnail	Article	4	8	2024-07-24 04:41:06.791095
9	thumbnail	Facility	1	9	2024-07-24 04:41:07.062589
11	thumbnail	Facility	2	11	2024-07-24 04:41:07.209002
13	thumbnail	Facility	3	13	2024-07-24 04:41:07.348776
15	thumbnail	Facility	4	15	2024-07-24 04:41:07.426412
17	thumbnail	Facility	5	17	2024-07-24 04:41:07.585963
19	thumbnail	Facility	6	19	2024-07-24 04:41:07.675635
21	image	Institution	1	21	2024-07-24 04:41:07.876749
22	image1	Institution	1	22	2024-07-24 04:41:07.943478
23	image2	Institution	1	23	2024-07-24 04:41:07.958985
24	image	Institution	2	24	2024-07-24 04:41:08.115171
25	image1	Institution	2	25	2024-07-24 04:41:08.130929
26	image2	Institution	2	26	2024-07-24 04:41:08.146025
27	image	Institution	3	27	2024-07-24 04:41:08.286952
28	image1	Institution	3	28	2024-07-24 04:41:08.322449
29	image2	Institution	3	29	2024-07-24 04:41:08.344643
30	image	Institution	4	30	2024-07-24 04:41:08.426403
31	image1	Institution	4	31	2024-07-24 04:41:08.482718
32	image2	Institution	4	32	2024-07-24 04:41:08.518953
33	image	Specialist	1	33	2024-07-24 04:41:08.619628
34	image	Specialist	2	34	2024-07-24 04:41:08.703648
35	image	Specialist	3	35	2024-07-24 04:41:08.771477
36	image	Specialist	4	36	2024-07-24 04:41:08.840016
37	image	Specialist	5	37	2024-07-24 04:41:08.889691
38	image	Specialist	6	38	2024-07-24 04:41:08.951486
39	image	Specialist	7	39	2024-07-24 04:41:09.08735
40	image	Specialist	8	40	2024-07-24 04:41:09.155115
41	image	Specialist	9	41	2024-07-24 04:41:09.199812
42	image	Specialist	10	42	2024-07-24 04:41:09.278883
43	image	Specialist	11	43	2024-07-24 04:41:09.345728
44	image	Specialist	12	44	2024-07-24 04:41:09.386821
45	image	Specialist	13	45	2024-07-24 04:41:09.467279
46	image	Specialist	14	46	2024-07-24 04:41:09.54367
47	image	Specialist	15	47	2024-07-24 04:41:09.578485
48	image	Specialist	16	48	2024-07-24 04:41:09.621623
49	image	Specialist	17	49	2024-07-24 04:41:09.703346
50	image	Specialist	18	50	2024-07-24 04:41:09.744065
51	image	Specialist	19	51	2024-07-24 04:41:09.779736
52	image	Specialist	20	52	2024-07-24 04:41:09.842494
53	image	Specialist	21	53	2024-07-24 04:41:09.906108
54	image	Specialist	22	54	2024-07-24 04:41:09.949772
55	image	Specialist	23	55	2024-07-24 04:41:09.986561
56	image	Specialist	24	56	2024-07-24 04:41:10.027703
57	image	Specialist	25	57	2024-07-24 04:41:10.136724
58	image	Specialist	26	58	2024-07-24 04:41:10.172725
59	image	Specialist	27	59	2024-07-24 04:41:10.210863
60	image	Specialist	28	60	2024-07-24 04:41:10.318052
61	image	Specialist	29	61	2024-07-24 04:41:10.355944
62	image	Specialist	30	62	2024-07-24 04:41:10.38949
63	photo	Doctor	1	63	2024-07-24 04:41:10.538736
64	image	ActiveStorage::VariantRecord	1	64	2024-07-24 04:41:35.182819
65	image	ActiveStorage::VariantRecord	2	65	2024-07-24 04:41:35.329931
66	image	ActiveStorage::VariantRecord	3	66	2024-07-24 04:41:35.457774
67	image	ActiveStorage::VariantRecord	4	67	2024-07-24 04:41:35.629871
68	image	ActiveStorage::VariantRecord	5	68	2024-07-24 04:41:35.76661
69	image	ActiveStorage::VariantRecord	6	69	2024-07-24 04:41:35.934941
70	image	ActiveStorage::VariantRecord	7	70	2024-07-24 19:19:18.54612
71	image	ActiveStorage::VariantRecord	8	71	2024-07-24 19:19:18.6744
72	image	ActiveStorage::VariantRecord	9	72	2024-07-24 19:19:18.799256
73	image	ActiveStorage::VariantRecord	10	73	2024-07-24 19:19:18.963335
74	image	ActiveStorage::VariantRecord	11	74	2024-07-24 19:19:19.079906
75	image	ActiveStorage::VariantRecord	12	75	2024-07-24 19:19:19.200161
76	image	ActiveStorage::VariantRecord	13	76	2024-07-24 19:19:19.30715
77	image	ActiveStorage::VariantRecord	14	77	2024-07-24 19:19:19.395925
78	image	ActiveStorage::VariantRecord	15	78	2024-07-24 19:19:19.501923
79	image	ActiveStorage::VariantRecord	16	79	2024-07-24 19:19:19.616355
80	image	ActiveStorage::VariantRecord	17	80	2024-07-24 19:19:19.722487
81	image	ActiveStorage::VariantRecord	18	81	2024-07-24 19:19:19.819059
82	image	ActiveStorage::VariantRecord	19	82	2024-07-24 19:19:19.930635
83	image	ActiveStorage::VariantRecord	20	83	2024-07-24 19:19:20.038541
84	image	ActiveStorage::VariantRecord	21	84	2024-07-24 19:19:20.134512
85	image	ActiveStorage::VariantRecord	22	85	2024-07-24 19:19:20.239086
86	image	ActiveStorage::VariantRecord	23	86	2024-07-24 19:19:20.343592
87	image	ActiveStorage::VariantRecord	24	87	2024-07-24 19:19:20.453955
88	image	ActiveStorage::VariantRecord	25	88	2024-07-24 19:19:20.567194
89	image	ActiveStorage::VariantRecord	26	89	2024-07-24 19:19:20.672131
90	image	ActiveStorage::VariantRecord	27	90	2024-07-24 19:19:20.792349
91	image	ActiveStorage::VariantRecord	28	91	2024-07-24 19:19:20.914629
92	image	ActiveStorage::VariantRecord	29	92	2024-07-24 19:19:21.032128
93	image	ActiveStorage::VariantRecord	30	93	2024-07-24 19:19:21.169102
94	image	ActiveStorage::VariantRecord	31	94	2024-07-24 19:19:21.352347
95	image	ActiveStorage::VariantRecord	32	95	2024-07-24 19:19:21.630135
96	image	ActiveStorage::VariantRecord	33	96	2024-07-24 19:19:21.796427
97	image	ActiveStorage::VariantRecord	34	97	2024-07-24 19:19:21.931931
98	image	ActiveStorage::VariantRecord	35	98	2024-07-24 19:19:22.084034
99	image	ActiveStorage::VariantRecord	36	99	2024-07-24 19:19:22.228001
100	image	ActiveStorage::VariantRecord	37	100	2024-07-24 19:19:49.609274
101	image	ActiveStorage::VariantRecord	38	101	2024-07-24 19:19:49.742519
102	image	ActiveStorage::VariantRecord	39	102	2024-07-24 19:19:49.928578
103	image	ActiveStorage::VariantRecord	40	103	2024-07-24 19:19:50.024873
104	image	ActiveStorage::VariantRecord	41	104	2024-07-24 19:19:50.211006
105	image	ActiveStorage::VariantRecord	42	105	2024-07-24 19:19:50.274728
106	image	ActiveStorage::VariantRecord	43	106	2024-07-24 19:19:50.386015
107	image	ActiveStorage::VariantRecord	44	107	2024-07-24 19:19:50.595827
108	image	ActiveStorage::VariantRecord	45	108	2024-07-24 19:19:50.947144
109	image	ActiveStorage::VariantRecord	46	109	2024-07-24 19:19:51.058515
110	image	ActiveStorage::VariantRecord	47	110	2024-07-24 19:19:51.49805
111	image	ActiveStorage::VariantRecord	48	111	2024-07-24 19:20:06.480142
112	photo	Doctor	2	112	2024-07-25 19:44:30.984472
113	image	ActiveStorage::VariantRecord	49	113	2024-07-25 19:44:31.379701
114	photo	Testimonial	1	114	2024-07-29 00:07:09.168812
115	image	ActiveStorage::VariantRecord	50	115	2024-07-29 00:07:10.303429
116	image	ActiveStorage::VariantRecord	51	116	2024-07-29 00:07:14.775498
117	photo	Testimonial	2	117	2024-07-29 00:07:26.750997
118	image	ActiveStorage::VariantRecord	52	118	2024-07-29 00:07:27.099511
119	image	ActiveStorage::VariantRecord	53	119	2024-07-29 00:07:33.54107
120	photo	Testimonial	3	120	2024-07-29 00:07:44.403597
121	image	ActiveStorage::VariantRecord	54	121	2024-07-29 00:07:45.121098
122	image	ActiveStorage::VariantRecord	55	122	2024-07-29 00:07:51.826098
123	image	ActiveStorage::VariantRecord	56	123	2024-08-08 02:55:17.154632
124	image	ActiveStorage::VariantRecord	57	124	2024-08-11 23:49:59.501604
125	image	ActiveStorage::VariantRecord	58	125	2024-09-09 01:40:22.776973
126	image	ActiveStorage::VariantRecord	59	126	2024-09-09 01:40:22.822377
127	image	ActiveStorage::VariantRecord	60	127	2024-09-09 01:40:23.062797
128	image	ActiveStorage::VariantRecord	61	128	2024-09-09 01:40:23.08515
129	image	ActiveStorage::VariantRecord	63	129	2024-09-09 01:41:10.644991
130	image	ActiveStorage::VariantRecord	62	130	2024-09-09 01:41:10.650556
131	image	ActiveStorage::VariantRecord	64	131	2024-09-09 01:41:10.907414
132	image	ActiveStorage::VariantRecord	65	132	2024-09-09 01:41:11.013666
133	image	ActiveStorage::VariantRecord	66	133	2024-09-09 01:41:11.036561
134	image	ActiveStorage::VariantRecord	67	134	2024-09-09 01:41:11.323696
135	image	ActiveStorage::VariantRecord	68	135	2024-09-09 01:41:14.66973
136	image	ActiveStorage::VariantRecord	69	136	2024-09-09 01:41:14.70018
137	image	ActiveStorage::VariantRecord	70	137	2024-09-09 01:41:14.82256
138	image	ActiveStorage::VariantRecord	71	138	2024-09-09 01:41:14.960293
139	image	ActiveStorage::VariantRecord	72	139	2024-09-09 22:16:39.111888
140	image	ActiveStorage::VariantRecord	73	140	2024-09-09 23:15:22.285478
141	image	ActiveStorage::VariantRecord	74	141	2024-09-09 23:15:22.37693
142	image	ActiveStorage::VariantRecord	75	142	2024-09-09 23:15:22.553046
143	image	ActiveStorage::VariantRecord	76	143	2024-09-09 23:15:22.614484
144	image	ActiveStorage::VariantRecord	77	144	2024-09-09 23:15:22.677002
145	image	ActiveStorage::VariantRecord	78	145	2024-09-09 23:15:22.843767
146	image	ActiveStorage::VariantRecord	79	146	2024-09-09 23:15:23.167537
147	image	ActiveStorage::VariantRecord	81	147	2024-09-09 23:15:23.788484
148	image	ActiveStorage::VariantRecord	80	148	2024-09-09 23:15:23.800796
149	image	ActiveStorage::VariantRecord	82	149	2024-09-09 23:15:23.857223
150	image	ActiveStorage::VariantRecord	83	150	2024-09-09 23:15:33.339358
151	image	ActiveStorage::VariantRecord	84	151	2024-09-09 23:15:33.373615
152	image	ActiveStorage::VariantRecord	85	152	2024-09-09 23:15:33.436316
153	image	ActiveStorage::VariantRecord	86	153	2024-09-09 23:15:33.592772
154	image	ActiveStorage::VariantRecord	87	154	2024-09-09 23:15:33.626009
155	image	ActiveStorage::VariantRecord	88	155	2024-09-09 23:15:33.937838
156	image	ActiveStorage::VariantRecord	89	156	2024-09-09 23:15:33.954172
157	image	ActiveStorage::VariantRecord	90	157	2024-09-09 23:15:34.156213
158	image	ActiveStorage::VariantRecord	91	158	2024-09-09 23:15:34.473428
159	image	ActiveStorage::VariantRecord	92	159	2024-09-09 23:15:34.512617
181	image	ActiveStorage::VariantRecord	93	181	2024-09-10 21:49:29.210477
182	image	ActiveStorage::VariantRecord	94	182	2024-09-10 21:49:29.309022
183	image	ActiveStorage::VariantRecord	95	183	2024-09-10 21:49:29.541607
184	image	ActiveStorage::VariantRecord	96	184	2024-09-10 21:49:29.575963
185	image	ActiveStorage::VariantRecord	97	185	2024-09-10 21:49:29.636514
186	image	ActiveStorage::VariantRecord	98	186	2024-09-10 21:49:29.950022
187	image	ActiveStorage::VariantRecord	99	187	2024-09-10 21:49:30.444273
188	image	ActiveStorage::VariantRecord	100	188	2024-09-10 21:49:30.449048
189	image	ActiveStorage::VariantRecord	101	189	2024-09-10 21:49:36.980642
190	image	ActiveStorage::VariantRecord	102	190	2024-09-10 21:49:37.11756
191	image	ActiveStorage::VariantRecord	103	191	2024-09-10 21:49:37.144033
192	image	ActiveStorage::VariantRecord	104	192	2024-09-10 21:49:37.207159
193	image	ActiveStorage::VariantRecord	105	193	2024-09-10 21:49:44.331696
194	image	ActiveStorage::VariantRecord	106	194	2024-09-10 21:49:44.361483
195	image	ActiveStorage::VariantRecord	107	195	2024-09-10 21:49:44.379612
196	image	ActiveStorage::VariantRecord	108	196	2024-09-10 21:49:44.384197
197	image	ActiveStorage::VariantRecord	109	197	2024-09-10 21:49:44.454394
198	image	ActiveStorage::VariantRecord	110	198	2024-09-10 21:49:45.064931
199	image	ActiveStorage::VariantRecord	111	199	2024-09-10 21:49:45.147216
200	image	ActiveStorage::VariantRecord	112	200	2024-09-10 21:49:48.75009
201	image	ActiveStorage::VariantRecord	113	201	2024-09-10 21:49:48.872818
202	image	ActiveStorage::VariantRecord	114	202	2024-09-10 21:52:44.242117
203	image	ActiveStorage::VariantRecord	115	203	2024-09-10 21:52:44.499725
204	image	ActiveStorage::VariantRecord	116	204	2024-09-10 21:52:44.790155
205	image	ActiveStorage::VariantRecord	117	205	2024-09-10 21:52:45.068862
206	image	ActiveStorage::VariantRecord	118	206	2024-09-10 21:52:45.332751
207	image	ActiveStorage::VariantRecord	119	207	2024-09-10 21:52:45.623019
208	image	ActiveStorage::VariantRecord	120	208	2024-09-10 21:52:45.882171
209	image	ActiveStorage::VariantRecord	121	209	2024-09-10 21:52:46.127567
210	image	ActiveStorage::VariantRecord	122	210	2024-09-10 21:52:46.402204
211	image	ActiveStorage::VariantRecord	123	211	2024-09-10 22:05:17.55459
212	image	ActiveStorage::VariantRecord	124	212	2024-09-10 22:05:17.819866
213	image	ActiveStorage::VariantRecord	125	213	2024-09-10 22:05:56.150106
214	image	ActiveStorage::VariantRecord	126	214	2024-09-10 22:05:56.400851
215	image	ActiveStorage::VariantRecord	127	215	2024-09-10 22:06:17.006754
217	image	ActiveStorage::VariantRecord	128	217	2024-09-19 23:14:50.416801
221	image	ActiveStorage::VariantRecord	130	221	2024-09-19 23:15:58.474273
223	image	ActiveStorage::VariantRecord	131	223	2024-09-19 23:16:32.236104
227	image	ActiveStorage::VariantRecord	133	227	2024-09-19 23:19:50.621413
229	image	ActiveStorage::VariantRecord	134	229	2024-09-19 23:20:07.363831
233	image	ActiveStorage::VariantRecord	136	233	2024-09-19 23:21:00.487155
239	image	ActiveStorage::VariantRecord	139	239	2024-09-19 23:23:56.348976
241	image	ActiveStorage::VariantRecord	140	241	2024-09-19 23:24:22.16097
253	image	ActiveStorage::VariantRecord	146	253	2024-09-19 23:33:02.303336
257	image	ActiveStorage::VariantRecord	148	257	2024-09-19 23:34:21.492403
259	image	ActiveStorage::VariantRecord	149	259	2024-09-19 23:35:04.678063
261	image	ActiveStorage::VariantRecord	150	261	2024-09-19 23:35:35.748157
263	image	ActiveStorage::VariantRecord	151	263	2024-09-19 23:37:26.461953
265	image	ActiveStorage::VariantRecord	152	265	2024-09-19 23:37:47.738626
266	image	ActiveStorage::VariantRecord	153	266	2024-09-19 23:50:43.574265
267	image	ActiveStorage::VariantRecord	154	267	2024-09-19 23:54:59.461555
269	image	ActiveStorage::VariantRecord	156	269	2024-09-20 02:00:19.587375
271	image	ActiveStorage::VariantRecord	158	271	2024-09-20 02:00:20.014232
272	image	ActiveStorage::VariantRecord	159	272	2024-09-20 03:11:30.051438
273	image	ActiveStorage::VariantRecord	160	273	2024-09-20 04:10:27.588946
278	image	ActiveStorage::VariantRecord	163	278	2024-09-20 04:11:57.918235
279	image	ActiveStorage::VariantRecord	164	279	2024-09-20 04:12:01.081592
280	image	ActiveStorage::VariantRecord	165	280	2024-09-20 04:14:56.964218
281	image	ActiveStorage::VariantRecord	166	281	2024-09-20 04:15:10.253267
283	image	ActiveStorage::VariantRecord	167	283	2024-09-20 04:16:20.797073
285	image	ActiveStorage::VariantRecord	168	285	2024-09-20 04:19:21.90159
286	image	ActiveStorage::VariantRecord	169	286	2024-09-20 04:19:41.32187
287	image	Facility	4	287	2024-09-20 04:19:56.759046
288	image	ActiveStorage::VariantRecord	170	288	2024-09-20 04:20:00.122763
289	image	ActiveStorage::VariantRecord	171	289	2024-09-20 04:20:23.784553
290	image	Facility	5	290	2024-09-20 04:20:39.789062
291	image	ActiveStorage::VariantRecord	172	291	2024-09-20 04:20:45.641685
292	image	ActiveStorage::VariantRecord	174	292	2024-09-20 04:20:53.106316
293	image	Facility	6	293	2024-09-20 04:21:08.451329
294	image	ActiveStorage::VariantRecord	175	294	2024-09-20 04:21:12.44255
295	image	ActiveStorage::VariantRecord	176	295	2024-09-20 08:19:54.239178
296	image	Facility	1	296	2024-10-01 01:37:33.516082
297	image	ActiveStorage::VariantRecord	178	297	2024-10-01 01:37:36.755505
298	image	Facility	3	298	2024-10-01 01:37:53.343189
299	image	ActiveStorage::VariantRecord	180	299	2024-10-01 01:37:56.806031
300	image	Facility	2	300	2024-10-01 01:47:01.289537
301	image	ActiveStorage::VariantRecord	181	301	2024-10-01 01:47:04.400081
302	image	ActiveStorage::VariantRecord	182	302	2024-10-01 03:07:14.134028
303	image	ActiveStorage::VariantRecord	183	303	2024-10-01 03:07:16.336024
304	image	ActiveStorage::VariantRecord	184	304	2024-10-01 03:07:20.052097
305	image	ActiveStorage::VariantRecord	185	305	2024-10-01 03:07:20.231622
306	image	ActiveStorage::VariantRecord	186	306	2024-10-01 03:07:23.554473
307	image	ActiveStorage::VariantRecord	187	307	2024-10-01 03:07:26.16846
310	image	ActiveStorage::VariantRecord	190	310	2024-10-09 01:28:49.221978
311	image	ActiveStorage::VariantRecord	191	311	2024-10-09 02:30:00.233409
313	image	ActiveStorage::VariantRecord	193	313	2024-10-09 21:03:30.941047
314	image	ActiveStorage::VariantRecord	194	314	2024-10-09 21:06:12.010965
316	image	ActiveStorage::VariantRecord	196	316	2024-10-10 00:13:52.485553
320	image	ActiveStorage::VariantRecord	200	320	2024-10-10 00:13:53.251866
321	image	ActiveStorage::VariantRecord	201	321	2024-10-10 04:20:41.400156
323	image	ActiveStorage::VariantRecord	203	323	2024-10-10 20:19:50.08666
324	image	ActiveStorage::VariantRecord	204	324	2024-10-11 01:40:36.748541
325	image	ActiveStorage::VariantRecord	205	325	2024-10-14 05:43:48.583237
326	image	ActiveStorage::VariantRecord	206	326	2024-10-14 05:43:48.741642
327	image	ActiveStorage::VariantRecord	207	327	2024-10-14 05:43:48.844621
328	image	ActiveStorage::VariantRecord	208	328	2024-10-14 05:43:48.961487
329	image	ActiveStorage::VariantRecord	209	329	2024-10-14 05:43:49.061197
330	image	ActiveStorage::VariantRecord	210	330	2024-10-14 05:43:49.224985
331	image	ActiveStorage::VariantRecord	211	331	2024-10-14 05:43:49.407556
332	image	ActiveStorage::VariantRecord	212	332	2024-10-14 05:43:49.572382
333	image	ActiveStorage::VariantRecord	213	333	2024-10-14 05:43:49.769181
334	image	ActiveStorage::VariantRecord	214	334	2024-10-14 05:43:49.915066
335	image	ActiveStorage::VariantRecord	215	335	2024-10-14 05:43:50.055667
336	image	ActiveStorage::VariantRecord	216	336	2024-10-14 05:43:50.190734
337	image	ActiveStorage::VariantRecord	217	337	2024-10-14 05:43:50.317663
338	image	ActiveStorage::VariantRecord	218	338	2024-10-14 05:43:50.487737
339	image	ActiveStorage::VariantRecord	219	339	2024-10-14 05:43:50.699507
340	image	ActiveStorage::VariantRecord	220	340	2024-10-14 05:43:50.831635
341	image	ActiveStorage::VariantRecord	221	341	2024-10-14 05:43:50.953978
342	image	ActiveStorage::VariantRecord	222	342	2024-10-14 05:43:51.105871
343	image	ActiveStorage::VariantRecord	223	343	2024-10-14 05:43:51.254051
344	image	ActiveStorage::VariantRecord	224	344	2024-10-14 05:43:51.477605
345	image	ActiveStorage::VariantRecord	225	345	2024-10-14 05:43:51.690628
346	image	ActiveStorage::VariantRecord	226	346	2024-10-14 05:43:51.934604
347	image	ActiveStorage::VariantRecord	227	347	2024-10-14 05:43:52.148486
348	image	ActiveStorage::VariantRecord	228	348	2024-10-14 05:43:52.396087
349	image	ActiveStorage::VariantRecord	229	349	2024-10-14 05:43:52.525307
350	image	ActiveStorage::VariantRecord	230	350	2024-10-14 05:43:52.65366
351	image	ActiveStorage::VariantRecord	231	351	2024-10-14 05:43:52.792745
352	image	ActiveStorage::VariantRecord	232	352	2024-10-14 05:43:52.91089
353	image	ActiveStorage::VariantRecord	233	353	2024-10-14 05:43:53.035178
354	image	ActiveStorage::VariantRecord	234	354	2024-10-14 05:43:53.155083
356	image	ActiveStorage::VariantRecord	235	356	2024-10-15 22:11:54.918862
357	image	ActiveStorage::VariantRecord	236	357	2024-10-15 22:20:11.341879
359	image	ActiveStorage::VariantRecord	237	359	2024-10-16 02:28:42.518384
364	image	ActiveStorage::VariantRecord	241	364	2024-10-16 21:40:21.081238
365	image	ActiveStorage::VariantRecord	242	365	2024-10-17 00:49:48.699792
366	image	ActiveStorage::VariantRecord	243	366	2024-10-17 00:49:48.947148
367	image	ActiveStorage::VariantRecord	244	367	2024-10-17 00:51:19.219426
368	image	ActiveStorage::VariantRecord	245	368	2024-10-17 03:52:40.135627
369	photo	Doctor	3	369	2024-10-21 04:05:16.546717
370	image	ActiveStorage::VariantRecord	246	370	2024-10-21 04:05:17.148106
371	photo	Doctor	5	371	2024-10-21 04:05:36.013238
372	image	ActiveStorage::VariantRecord	247	372	2024-10-21 04:05:36.527811
373	photo	Doctor	6	373	2024-10-21 04:06:20.084591
374	image	ActiveStorage::VariantRecord	248	374	2024-10-21 04:06:20.548809
375	photo	Doctor	34	375	2024-10-21 04:06:35.534177
376	image	ActiveStorage::VariantRecord	249	376	2024-10-21 04:06:36.191086
377	photo	Doctor	11	377	2024-10-21 04:07:02.03209
378	image	ActiveStorage::VariantRecord	250	378	2024-10-21 04:07:02.526207
379	photo	Doctor	21	379	2024-10-21 04:07:22.487378
380	image	ActiveStorage::VariantRecord	251	380	2024-10-21 04:07:22.975039
381	photo	Doctor	23	381	2024-10-21 04:07:52.674791
382	image	ActiveStorage::VariantRecord	252	382	2024-10-21 04:07:53.1981
383	photo	Doctor	20	383	2024-10-21 04:08:15.075387
384	image	ActiveStorage::VariantRecord	253	384	2024-10-21 04:08:15.699402
385	photo	Doctor	13	385	2024-10-21 04:09:50.684221
386	image	ActiveStorage::VariantRecord	254	386	2024-10-21 04:09:52.061231
387	photo	Doctor	27	387	2024-10-21 04:10:40.339159
388	image	ActiveStorage::VariantRecord	255	388	2024-10-21 04:10:40.895514
389	photo	Doctor	28	389	2024-10-21 04:11:08.601437
390	image	ActiveStorage::VariantRecord	256	390	2024-10-21 04:11:09.029716
391	photo	Doctor	29	391	2024-10-21 04:11:27.348954
392	image	ActiveStorage::VariantRecord	257	392	2024-10-21 04:11:27.781669
393	photo	Doctor	31	393	2024-10-21 04:12:06.73954
394	image	ActiveStorage::VariantRecord	258	394	2024-10-21 04:12:07.164212
395	photo	Doctor	12	395	2024-10-21 04:12:21.164727
396	image	ActiveStorage::VariantRecord	259	396	2024-10-21 04:12:21.614146
397	photo	Doctor	30	397	2024-10-21 04:14:05.315475
398	image	ActiveStorage::VariantRecord	260	398	2024-10-21 04:14:05.782841
399	photo	Doctor	35	399	2024-10-21 04:14:20.068322
400	image	ActiveStorage::VariantRecord	261	400	2024-10-21 04:14:20.478544
401	photo	Doctor	22	401	2024-10-21 04:14:37.225089
402	image	ActiveStorage::VariantRecord	262	402	2024-10-21 04:14:37.657559
403	photo	Doctor	32	403	2024-10-21 04:14:53.44271
404	image	ActiveStorage::VariantRecord	263	404	2024-10-21 04:14:53.989053
405	photo	Doctor	7	405	2024-10-21 04:15:13.281615
406	image	ActiveStorage::VariantRecord	264	406	2024-10-21 04:15:13.706432
407	photo	Doctor	8	407	2024-10-21 04:15:24.988876
408	image	ActiveStorage::VariantRecord	265	408	2024-10-21 04:15:25.463026
409	photo	Doctor	24	409	2024-10-21 04:15:41.460538
410	image	ActiveStorage::VariantRecord	266	410	2024-10-21 04:15:41.899766
411	photo	Doctor	15	411	2024-10-21 04:15:56.248746
412	image	ActiveStorage::VariantRecord	267	412	2024-10-21 04:15:56.697536
413	photo	Doctor	14	413	2024-10-21 04:16:30.493906
414	image	ActiveStorage::VariantRecord	268	414	2024-10-21 04:16:30.951264
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
2	04hw9m64hk5i2quhz7trfdhhw49x	1.png	image/png	{"identified":true,"width":284,"height":344,"analyzed":true}	local	170994	Gb5O6R/27ETkQv9y5G1dXQ==	2024-07-24 04:41:06.235089
1	u4a4na6v6l2jmeewcmcip0rvte54	banner.png	image/png	{"identified":true,"width":1440,"height":440,"analyzed":true}	local	565309	slgWFMWJ6X1SCACO4I6LcQ==	2024-07-24 04:41:06.210231
4	01lbjn7msyjsjq6umrnegpxre99h	2.png	image/png	{"identified":true,"width":284,"height":344,"analyzed":true}	local	123724	b2Jz8o3CLScrPyQemfdv+w==	2024-07-24 04:41:06.355575
3	kng8ikkoyiufq6w50i4dn7e95qcp	banner.png	image/png	{"identified":true,"width":1440,"height":440,"analyzed":true}	local	565309	slgWFMWJ6X1SCACO4I6LcQ==	2024-07-24 04:41:06.338429
6	yycvrxhxdfo1w47ov09knklpboca	3.png	image/png	{"identified":true,"width":284,"height":344,"analyzed":true}	local	98582	qU9aeT9Zb+OMyPYKI/aaKQ==	2024-07-24 04:41:06.497308
5	sf9c0yhq96n8lrtgytygucudpnm1	banner.png	image/png	{"identified":true,"width":1440,"height":440,"analyzed":true}	local	565309	slgWFMWJ6X1SCACO4I6LcQ==	2024-07-24 04:41:06.473502
8	llymc5smq5kw57u3jvxrhx2novma	4.png	image/png	{"identified":true,"width":284,"height":344,"analyzed":true}	local	94247	AanRAqJcosd7mlzxn+y9nQ==	2024-07-24 04:41:06.786586
7	yw3dn45hswc6fqiw6ajh99a3hg7h	banner.png	image/png	{"identified":true,"width":1440,"height":440,"analyzed":true}	local	565309	slgWFMWJ6X1SCACO4I6LcQ==	2024-07-24 04:41:06.76178
9	i07wuc3cc5av3dubnci9yagyq2os	thumb1.png	image/png	{"identified":true,"width":276,"height":276,"analyzed":true}	local	110165	Iqr/hRmcMUBaYYmae2Ni5g==	2024-07-24 04:41:07.045467
10	lhxf1wnk2jblrwewwmlj82mydi6z	1.png	image/png	{"identified":true,"width":1133,"height":391,"analyzed":true}	local	588971	Ja00Em+r1lssCrhZv0rwaw==	2024-07-24 04:41:07.096597
11	2fbiw45yq4swa8mvaacowgu55fdm	thumb2.png	image/png	{"identified":true,"width":277,"height":276,"analyzed":true}	local	87030	P4/i/xqJL1Tqw9KiGFR99Q==	2024-07-24 04:41:07.204621
13	bjnz206alw1qkkvq6hxvai8df12d	thumb3.png	image/png	{"identified":true,"width":276,"height":276,"analyzed":true}	local	81026	Oi9VswnCvWlohnHuvwPJiQ==	2024-07-24 04:41:07.345038
12	iv9t4oym1obrnwtyuh2c6q28h8t4	2.png	image/png	{"identified":true,"width":1133,"height":391,"analyzed":true}	local	544880	mykO/QQQSROZIF5+pK3k9Q==	2024-07-24 04:41:07.222594
15	lsp8rzcwyg6e41v6vetx7pu5vruq	thumb4.png	image/png	{"identified":true,"width":277,"height":276,"analyzed":true}	local	125701	6y3iihAWyV8WkljqjKPgcQ==	2024-07-24 04:41:07.415243
14	hhscrahvwf8zoq06i7jcwaz9fr1u	3.png	image/png	{"identified":true,"width":1133,"height":391,"analyzed":true}	local	539220	P0GDccKMxKP58yyYBUTq5A==	2024-07-24 04:41:07.362034
17	cqu6lnr6v9abj7h3a15rgiudi5rf	thumb5.png	image/png	{"identified":true,"width":276,"height":276,"analyzed":true}	local	81026	Oi9VswnCvWlohnHuvwPJiQ==	2024-07-24 04:41:07.578525
16	b2piauxhh2jxk67gpb0lw6mcwnd0	4.png	image/png	{"identified":true,"width":1133,"height":391,"analyzed":true}	local	636188	uAprAqi4QAIB46N+u8Bd9w==	2024-07-24 04:41:07.441374
19	0r1ridy3l1xehul1kfignpib0qm1	thumb6.png	image/png	{"identified":true,"width":277,"height":276,"analyzed":true}	local	125701	6y3iihAWyV8WkljqjKPgcQ==	2024-07-24 04:41:07.669389
18	e70r889d0bfmq29wlz8bc1xh7cfz	5.png	image/png	{"identified":true,"width":1133,"height":391,"analyzed":true}	local	766103	xzzwW5lr0/3sLkUcQaKTRg==	2024-07-24 04:41:07.593892
20	enj9s8fedn1gchiykwauc7urx1p3	6.png	image/png	{"identified":true,"width":1133,"height":391,"analyzed":true}	local	611715	y1g/z/0vi7Vbd1+Diu24Cg==	2024-07-24 04:41:07.694955
21	6b8c2dhjz2zlg4ddf3iyqn9s5mht	1-1.png	image/png	{"identified":true,"width":554,"height":380,"analyzed":true}	local	409591	qsoB2yMYaNd3VK1wSYbusg==	2024-07-24 04:41:07.862788
38	8savuk1449oiw0ijyh56r7mgcrmm	1-6.png	image/png	{"identified":true}	local	40941	q2L5bRKgbzfrevU/jZaZTg==	2024-07-24 04:41:08.939221
22	w7gfxzgm0xy787evxkin1a0rf4rb	image1.png	image/png	{"identified":true,"width":552,"height":443,"analyzed":true}	local	312761	fHNbNQb8UvcF0uuFsdcc6w==	2024-07-24 04:41:07.940236
39	u2fji8olxptla6kiza8i1vxrbwut	1-7.png	image/png	{"identified":true}	local	37041	1xiWT19X+f+X7lnYJzG/0A==	2024-07-24 04:41:09.082143
23	9gwtvsewe9cy4w9939lf1dzka6i7	image2.png	image/png	{"identified":true,"width":553,"height":443,"analyzed":true}	local	362221	JWRihGgoZ4f1ikhA7xzmZw==	2024-07-24 04:41:07.955684
40	i781xw051x7bb39b9ch7y39s1587	1-8.png	image/png	{"identified":true}	local	45389	KtnGG1jidVwZQsGRasH72Q==	2024-07-24 04:41:09.147185
41	tq5vjthdxqzteiyg8gan7k0l3lxb	1-9.png	image/png	{"identified":true}	local	41574	99cG1wxJMahKf7n1YFpKIw==	2024-07-24 04:41:09.196658
24	89bhrbvrs7sr5vb69efrtyf4dmi5	1-2.png	image/png	{"identified":true,"width":554,"height":380,"analyzed":true}	local	257464	MXh4jdryK8Qm2Ufgddi3qw==	2024-07-24 04:41:08.111168
42	b9guyeloo0xi2pfzgrj0i5jem0r9	1-10.png	image/png	{"identified":true}	local	48928	WaIa9jzMoe07K3Xdnta1Yw==	2024-07-24 04:41:09.260539
25	hv83c960c0fkdmajavzrx5drqmkn	image1.png	image/png	{"identified":true,"width":552,"height":443,"analyzed":true}	local	312761	fHNbNQb8UvcF0uuFsdcc6w==	2024-07-24 04:41:08.127594
26	9pm6v5fnhp7tmfsqcin3ad13scwq	image2.png	image/png	{"identified":true,"width":553,"height":443,"analyzed":true}	local	362221	JWRihGgoZ4f1ikhA7xzmZw==	2024-07-24 04:41:08.142785
28	crvsfqz5nb1h9elg9a8tanwy6rar	image1.png	image/png	{"identified":true,"width":552,"height":443,"analyzed":true}	local	312761	fHNbNQb8UvcF0uuFsdcc6w==	2024-07-24 04:41:08.311303
30	1ramyigq8b5cddti9ma3f36i3tnl	1-4.png	image/png	{"identified":true,"width":554,"height":380,"analyzed":true}	local	220717	zjjX7TQpA1g/wx87gjTQ+w==	2024-07-24 04:41:08.418908
31	78k7x14fc1ctowywgt2pmz4uv7ov	image1.png	image/png	{"identified":true,"width":552,"height":443,"analyzed":true}	local	312761	fHNbNQb8UvcF0uuFsdcc6w==	2024-07-24 04:41:08.473853
32	f5tuhvgnaej5ygehuizb76byk4d2	image2.png	image/png	{"identified":true,"width":553,"height":443,"analyzed":true}	local	362221	JWRihGgoZ4f1ikhA7xzmZw==	2024-07-24 04:41:08.507075
35	bqeq9wh7lsvr6cjuvzn8uujciex5	1-3.png	image/png	{"identified":true,"width":500,"height":500,"analyzed":true}	local	43836	m5ufxUROvlgBacCxu0gecg==	2024-07-24 04:41:08.768388
34	ylzt24r4u2csxrknyqe2bhtoflr2	1-2.png	image/png	{"identified":true,"width":500,"height":500,"analyzed":true}	local	52268	r16Hr5HOFC2nh2fMRNHmZA==	2024-07-24 04:41:08.699434
36	s8wojd2b2wafslfknmisktr8kdk7	1-4.png	image/png	{"identified":true,"width":500,"height":500,"analyzed":true}	local	43168	3wz/AD4dPj1k1diPzA4nFQ==	2024-07-24 04:41:08.833748
43	6i2rfkhyrg8xnourr2owocl343hv	1-11.png	image/png	{"identified":true}	local	58584	wrESV8sJuksvQxbjE+B4vQ==	2024-07-24 04:41:09.342709
44	ltyoa0ejhfsxeat327bog82pwakn	1-12.png	image/png	{"identified":true}	local	54426	jWlItiagw7GQS5muy7gm8A==	2024-07-24 04:41:09.383604
45	k3ipstewizxmmsxm2eorefqkmh8u	1-13.png	image/png	{"identified":true}	local	48562	Fd8i6r8CLrnVkfS9KocF9g==	2024-07-24 04:41:09.460104
27	y6fphzo2lnt3owd79w14x4l60syg	1-3.png	image/png	{"identified":true,"width":554,"height":380,"analyzed":true}	local	173470	LpjX7xTEzcD0axYIFlpXRA==	2024-07-24 04:41:08.276698
46	g1rrqe1qwhhvjj6g0ca8zv3qgju0	1-14.png	image/png	{"identified":true}	local	56572	klgnnIRSMQaWoVwFaznCJw==	2024-07-24 04:41:09.540328
47	yt4f6d022qq7tcxpem9r4vyd64qi	1-15.png	image/png	{"identified":true}	local	51078	Rf4A9F6s97IMbCPI/O4Hng==	2024-07-24 04:41:09.573436
48	ex03uz1wm2diwsknzxehhk39bbob	1-16.png	image/png	{"identified":true}	local	57246	BWrUukkHvrnJr7RDDzjhzg==	2024-07-24 04:41:09.614765
29	981w8be2681z0j63ud0o7d1mi5gh	image2.png	image/png	{"identified":true,"width":553,"height":443,"analyzed":true}	local	362221	JWRihGgoZ4f1ikhA7xzmZw==	2024-07-24 04:41:08.340195
49	vjbeisi1ozx5dj9hxlkhf795gw10	1-17.png	image/png	{"identified":true}	local	47818	Ecm16Qr6AxQPL3lAlP8/uw==	2024-07-24 04:41:09.692551
50	uqqxg1pda1kvgcwp25t4xh0emhax	1-18.png	image/png	{"identified":true}	local	51097	4jcxty4J44ZDcj8kExd9oQ==	2024-07-24 04:41:09.738225
51	2hh9ux3v77t8nw1bsc41wfehlz7x	1-19.png	image/png	{"identified":true}	local	34118	XI+Jb94w40Cl0+/2NV6qGg==	2024-07-24 04:41:09.776443
52	jvdkqw1jvqmpl6sjzznl34p6mmdi	1-20.png	image/png	{"identified":true}	local	43686	nyZyzqmrTaxYKvpvCHQBEQ==	2024-07-24 04:41:09.837623
53	b52ocenf9mjqv3ayxkx9rj0fcmju	1-21.png	image/png	{"identified":true}	local	31658	0gdpol8RcdixHen0nc6wkA==	2024-07-24 04:41:09.896661
54	nsx35xnnc32w2wex4roormvo92zm	1-22.png	image/png	{"identified":true}	local	38600	KX/Fe3ez8juVvhiLvrH6gA==	2024-07-24 04:41:09.946169
55	r0jtfalslxo5jbj6k3jf56hnew7y	1-23.png	image/png	{"identified":true}	local	39044	88KvCiS2Yy1jogiEflWaKw==	2024-07-24 04:41:09.983004
56	mzrq89dcrf2ouf99y57u8qoxdplx	1-24.png	image/png	{"identified":true}	local	36417	OEc6mZe6VVS1HdUXoHcxxg==	2024-07-24 04:41:10.02295
33	9b42jjuq5wigs3twicefy2rhviay	1-1.png	image/png	{"identified":true,"width":500,"height":500,"analyzed":true}	local	39333	EGZAgr9Rd5XOzR522LDPeA==	2024-07-24 04:41:08.615271
57	99czqu0093gqr8c0nu9a1elcksoh	1-25.png	image/png	{"identified":true}	local	39312	Pcl4Hgni3ZQRd3DcMPMl3Q==	2024-07-24 04:41:10.132667
58	raihpbb7w4m43biyiruky86yne4z	1-26.png	image/png	{"identified":true}	local	45137	RuoZJTBkBTMuVeVrE4YneA==	2024-07-24 04:41:10.168885
59	vngq6u6jpqjsfygom4a0a3ndqtqy	1-27.png	image/png	{"identified":true}	local	37225	BaZJ9kbbwwgFYFeyz/XFiA==	2024-07-24 04:41:10.207779
60	wgrk2l12kf3kokn9baemxwjcrm1n	1-28.png	image/png	{"identified":true}	local	23089	mqZIhfziQOkGr9aH9qxlqg==	2024-07-24 04:41:10.310702
61	7xvkuwyw434tj4oniyfj5cea9r6u	1-29.png	image/png	{"identified":true}	local	44670	k5Lmd1gaJXClGACkE0tSEA==	2024-07-24 04:41:10.352412
62	o6ltbugvbyfs7t45fflas7bdph2i	1-30.png	image/png	{"identified":true}	local	41562	8h3MC+uNZ/Rwq0NbKsd95w==	2024-07-24 04:41:10.386327
37	h1tdvy2h6zduerrn2j699kfn2y5t	1-5.png	image/png	{"identified":true,"width":500,"height":500,"analyzed":true}	local	33739	96Xkw/BicbiEKJFpKE2qiA==	2024-07-24 04:41:08.886748
63	ih3gejxwgwe67k1r16i9b85hgzfj	thumb2.png	image/png	{"identified":true}	local	123724	b2Jz8o3CLScrPyQemfdv+w==	2024-07-24 04:41:10.535475
64	1qtvfibqvg7p6rakttldqlpbb33n	thumb1.png	image/png	{"identified":true,"width":276,"height":276,"analyzed":true}	local	107292	tSyskGQ2LvT9YGSJGbojkA==	2024-07-24 04:41:35.17772
65	apfn4ienq4siy88pjc4e98qvfsyk	thumb2.png	image/png	{"identified":true,"width":276,"height":275,"analyzed":true}	local	79784	c3RNvLK/mmU9Qdn2oc/7wg==	2024-07-24 04:41:35.326214
66	0eowlc1c3knks2yj4x25jdyyciy6	thumb3.png	image/png	{"identified":true,"width":276,"height":276,"analyzed":true}	local	78239	MtR6+E0oAift3kgkRJN9ww==	2024-07-24 04:41:35.454297
67	49xfmyvard2wacr1hntyz687rp4s	thumb4.png	image/png	{"identified":true,"width":276,"height":275,"analyzed":true}	local	111734	1hhdxhodU8MVyrVBWXSDBg==	2024-07-24 04:41:35.625543
68	1t96oa23vfc75zytgia1by5lgwr5	thumb5.png	image/png	{"identified":true,"width":276,"height":276,"analyzed":true}	local	78239	MtR6+E0oAift3kgkRJN9ww==	2024-07-24 04:41:35.763373
69	3b79h2vpsyaicbnwsu261mz1qumk	thumb6.png	image/png	{"identified":true,"width":276,"height":275,"analyzed":true}	local	111734	1hhdxhodU8MVyrVBWXSDBg==	2024-07-24 04:41:35.926261
70	cxsotrea0qoutbpjkjh80ed2qizk	1-1.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	17175	jAMW7u92G/nW1hUKy6kJcA==	2024-07-24 19:19:18.541213
71	01st7e0o2yyog8jf190tvf5jh98l	1-2.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	23453	Tu+RXNNKl7ieqEvprQGwrg==	2024-07-24 19:19:18.669653
72	4tb6a9uu47gaf8xtm7xweb57nrz5	1-3.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	19766	thgHqhk9U5Q2QSIfvl6P6w==	2024-07-24 19:19:18.790344
73	ais3s86xg9luh9yhbg50sk9oila6	1-4.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	19990	Wx1cJMSW91KJKBlNCKR7hg==	2024-07-24 19:19:18.956321
74	juz5c53uxpfy1i6xa9ul42uejyhl	1-10.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	23549	3StzwaxNEYvicpS3ahoKug==	2024-07-24 19:19:19.076247
75	oa55zcl3geflpc5ku9hb9zqda9kj	1-5.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	15595	I6kxb58oLm9T+8GtJQz+QA==	2024-07-24 19:19:19.194309
76	2lrc0hdihpfk6qbceeki7ain7yhb	1-6.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	18832	iCMiCsbDHdCmDzuu+QifdQ==	2024-07-24 19:19:19.302931
77	zuujz5gb62mk4amljiy9ppguru7k	1-7.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	16533	WMk1N8nz9D7w52MdvPfiLQ==	2024-07-24 19:19:19.393004
78	35uzz6zjwnlcl8kl8x7mjtgil23v	1-8.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	20041	jch6Lq2XRYrJS6Ejv/FhDA==	2024-07-24 19:19:19.487647
79	1d5f96skz8trk47eenu5rvhldeim	1-9.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	19345	eDnfshY5zyKiIoWXHSJCxw==	2024-07-24 19:19:19.612062
80	u5sk8lgwevtvgqukeiv22xqpiub6	1-11.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	26538	K7LbLvTYVCGn4WAQEFWrkQ==	2024-07-24 19:19:19.719349
81	rkfnr3i691uavthuqqz0iit4bjhv	1-12.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	24571	Av3k21nde7dXJaaMFq9R4A==	2024-07-24 19:19:19.8103
82	r0xeugg5vg7aon7nmy93o7psxg4k	1-13.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	21762	Nh87qmIM1131m3RhJ+q36g==	2024-07-24 19:19:19.925999
83	i9bwruml1fl8kl393himbf1xc9xr	1-14.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	25985	Z76uE86nITJfPbkydIyA8w==	2024-07-24 19:19:20.034181
84	p4eicrvzefzv10vkdvjwfmy7pwxr	1-15.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	22922	MgiwxB+NOBGV65sw649WCg==	2024-07-24 19:19:20.130207
85	hk5g6jx5ogzx9ainfk2vhl45hh8u	1-16.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	25997	opNtzfwnIM9Dn6u1b2VIyA==	2024-07-24 19:19:20.23546
86	01hmef4so6q0n7mc2lq7lo7qdyx4	1-17.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	21826	Eld3QEpNlvGtAvc5B5WInw==	2024-07-24 19:19:20.34025
87	rpu8r8w9idnfbna3hjugqpwjzuzv	1-18.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	22663	FvyA6hOyycbKRl7c903F+A==	2024-07-24 19:19:20.442547
88	poa2sdh76h3snf5n0rl7j1nw63a4	1-19.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	15917	CqesuPkyF9+SFnEaOYay+w==	2024-07-24 19:19:20.561088
89	dopyvgcsw0bdfzfg6pzowr4x9flq	1-20.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	21208	Ua6laoMNoXh5IoY1Hs/TWw==	2024-07-24 19:19:20.668664
90	oz8faypzy9iu61kjqb2nblje62bw	1-21.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	14501	WTtV+B5zrzcLTxv4s1mPtw==	2024-07-24 19:19:20.787408
91	1m0i4tna3p16trfx0uv6fkurujxm	1-22.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	16622	WfN6eIJUadcfaH8YUFQprQ==	2024-07-24 19:19:20.911079
92	5h83rfthsxocz71szcz6xf71b3nc	1-23.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	18785	IZOB9+oiEbsCve7qoFarOA==	2024-07-24 19:19:21.028331
93	ia7xp6giwh9hfay3zmcsrlcw5rgq	1-24.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	16763	d/DvWXAjnaegXhcZcyvBGw==	2024-07-24 19:19:21.163708
94	0zmtcwgcjyuqt8jfl78prq8ydxqg	1-25.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	17868	DmGt/etoZzz4lm32lmTxQQ==	2024-07-24 19:19:21.347723
95	az80xwzzg5og2q6nsl8fc4rjgcf2	1-26.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	20377	jadx3LIr51okZ3TwapqeAA==	2024-07-24 19:19:21.615623
96	sq5qlc6nohrstivpmfrzqq4wmbu2	1-27.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	16928	LMsWmlQOwP49WnRhhAvx+g==	2024-07-24 19:19:21.791988
97	pk4b5nv1lsw84pv05dttis1ho4v9	1-28.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	11336	ACjeJw22dCqiz1owPuz+GA==	2024-07-24 19:19:21.928008
98	w6rjiscpm0q4s4yltk1hmsqupu57	1-29.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	20732	E6DKNFl3XjtjCecPUFBCRQ==	2024-07-24 19:19:22.079124
99	eczsa7alotd7md22lesybvif0v0f	1-30.png	image/png	{"identified":true,"width":200,"height":200,"analyzed":true}	local	17481	gtP32lhxCqd+mACHnhB4Hw==	2024-07-24 19:19:22.223213
101	jf3qsb7mqkcj4wdrdb9e19a80enc	1-2.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8962	bqMofA/wbXQMeeiSFTqgKw==	2024-07-24 19:19:49.737751
100	sl8xep6ula9y4yzz1m4tsgpmgn1m	1-1.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6686	eF8mnbASLLfD0nm6kh86Ew==	2024-07-24 19:19:49.593975
102	549e7f9134up538oe8fbmm37dsb8	1-4.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7865	1zAhlzFP+yn5HCAQxs0Hcw==	2024-07-24 19:19:49.923531
103	6hgzgiicw8q25qal2gyimz9nw9un	1-3.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7640	8eJ6aU31x0IKWlILdEFWKQ==	2024-07-24 19:19:50.014837
104	mkqyru16htjixi8k9eadwojkte1v	1-10.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8867	C/rwbrmxROcT49sd70cxng==	2024-07-24 19:19:50.202132
105	5omttxk1twpq3htvexjgwav6kt0w	1-7.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6513	0CzcW46m6Qrueq8jsvj65w==	2024-07-24 19:19:50.264312
106	adqwjs74wzm1gyxio7iksp90xaf2	1-8.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7542	nh1VQE71NgsAD7ffvOasUg==	2024-07-24 19:19:50.360142
107	3m4krx4ndjazvur5urvepl8nwso6	1-6.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7380	YTkPNuy1fIKCxpTrTezu4Q==	2024-07-24 19:19:50.586351
108	zep5gzwoxp1pjtnerpg3o4k0s25u	1-5.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6496	cFej7B+M9UTMUVWxWfHOOw==	2024-07-24 19:19:50.942395
109	1mbjwgr65916rw64d7zz40wakv62	1-9.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7844	OFLE6Fqz6vuO3Bs1m5N93Q==	2024-07-24 19:19:51.04868
110	80f3fbwp16k23yo7v59s3dvoqozx	thumb2.png	image/png	{"identified":true,"width":83,"height":100,"analyzed":true}	local	14499	OyaBIrzPOnyG2nzvlFnI7w==	2024-07-24 19:19:51.493776
111	omuzfpezlsic0zt8tgadn14vts72	thumb2.png	image/png	{"identified":true,"width":284,"height":344,"analyzed":true}	local	121371	wkVZzm2KMIwxfRoBfsdSrQ==	2024-07-24 19:20:06.475954
112	t4pram7pgbd08r4srhtmbdl3jny8	doctor_2.png	image/png	{"identified":true,"width":487,"height":487,"analyzed":true}	local	94395	045hkpxKmiIOJOswahKUjQ==	2024-07-25 19:44:30.980871
113	6s70rnlda6gp01kf235gsry9x5hr	doctor_2.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	13460	cyXYLBjCkA5u01rlHJke9g==	2024-07-25 19:44:31.374659
114	q5mobsaje590259w3rvqs7unz6pm	1.png	image/png	{"identified":true,"width":80,"height":81,"analyzed":true}	local	13269	LQ8JjurMJA06AU1D95f7VA==	2024-07-29 00:07:09.164035
115	dquucasqvrmma1tjojov8gxu24lw	1.png	image/png	{"identified":true,"width":80,"height":81,"analyzed":true}	local	13143	rLKcKUloYVd41zhm8X4VBQ==	2024-07-29 00:07:10.298249
116	8mfbi28cehi071j1t01h40qja82s	1.png	image/png	{"identified":true,"width":79,"height":80,"analyzed":true}	local	13434	Rl07LaiTVkvbtcN4j9F+xg==	2024-07-29 00:07:14.771856
117	8hqwp3uoqsnazw2l21yx3povw1hn	2.png	image/png	{"identified":true,"width":80,"height":81,"analyzed":true}	local	10905	s5HDlUynYqBOxnFCK4nsrQ==	2024-07-29 00:07:26.747403
118	apb3lsx8154sx6uw1kn3ut4covir	2.png	image/png	{"identified":true,"width":80,"height":81,"analyzed":true}	local	10717	y6PYNkBrrhFjOkEuPRbjRA==	2024-07-29 00:07:27.095851
119	l7ajbky3wbfpol1llbg3u2jjmxgb	2.png	image/png	{"identified":true,"width":79,"height":80,"analyzed":true}	local	10937	RZFEHf/xUrtT/i6CFjPQ7g==	2024-07-29 00:07:33.537334
120	czm3uq4hvg879sa56n333u66mlwo	3.png	image/png	{"identified":true,"width":80,"height":81,"analyzed":true}	local	12382	r7U77J0c+o7A4Nyj52IJqg==	2024-07-29 00:07:44.400434
121	vf8h9oqzjimoyrybuwffmddr7711	3.png	image/png	{"identified":true,"width":80,"height":81,"analyzed":true}	local	12585	lksGs3Q0TJQ8WY08OOBwsg==	2024-07-29 00:07:45.116197
122	i9x65yfuh87nkfbtnav6i3rtqp2t	3.png	image/png	{"identified":true,"width":79,"height":80,"analyzed":true}	local	12762	gpOLtrbE9bHfnYPnseqTdQ==	2024-07-29 00:07:51.822193
123	5wrr7sc85x546c24yss4o3b4bhtk	2.png	image/png	{"identified":true,"width":1130,"height":390,"analyzed":true}	local	402601	ZOcv4cOG15GL24NtM7Rm+w==	2024-08-08 02:55:17.149928
124	oiqvrxp27xl5fzp7wcu1exdmobwa	doctor_2.png	image/png	{"identified":true,"width":284,"height":284,"analyzed":true}	local	75469	/jnaiHjxb77Wxb3h/0piTQ==	2024-08-11 23:49:59.497174
125	iczy5s8eytyqi4gbwq1v7rjdgty2	banner.png	image/png	{"identified":true,"width":100,"height":31,"analyzed":true}	local	4827	cB6OCTxWk32HF1JEjOn8mw==	2024-09-09 01:40:22.764805
126	fujn8tebgzcu7hyhwittwpkk0w9p	banner.png	image/png	{"identified":true,"width":100,"height":31,"analyzed":true}	local	4827	cB6OCTxWk32HF1JEjOn8mw==	2024-09-09 01:40:22.807191
127	xs0ac68s0zyn12qmwhqdjetj6vu3	banner.png	image/png	{"identified":true,"width":100,"height":31,"analyzed":true}	local	4827	cB6OCTxWk32HF1JEjOn8mw==	2024-09-09 01:40:23.049475
128	fsp7w1vtiqd6e5coxoynfq8qiaef	banner.png	image/png	{"identified":true,"width":100,"height":31,"analyzed":true}	local	4827	cB6OCTxWk32HF1JEjOn8mw==	2024-09-09 01:40:23.076022
129	5bah0wlixq8wzq5nyxoasc0kfr8k	2.png	image/png	{"identified":true,"width":100,"height":35,"analyzed":true}	local	6526	nx890ffIw4WB4B5Po0wmig==	2024-09-09 01:41:10.62713
130	ovcecv6t4yr443at18przoccletr	1.png	image/png	{"identified":true,"width":100,"height":35,"analyzed":true}	local	6900	kiv69r/et7E6uuc7x+LaQA==	2024-09-09 01:41:10.638627
131	jko0jpi1elqs707d76r5djqcpufd	3.png	image/png	{"identified":true,"width":100,"height":35,"analyzed":true}	local	6478	gx8RYnYIpK/gSobw6iIe5w==	2024-09-09 01:41:10.871679
132	uvm3dcrsbwtitfykyq402r070r4s	4.png	image/png	{"identified":true,"width":100,"height":35,"analyzed":true}	local	7702	IHw3h0TY9xquIE4jj925uw==	2024-09-09 01:41:10.998031
133	6cjl6ybnpzck549hk1m5cyrik1v3	6.png	image/png	{"identified":true,"width":100,"height":35,"analyzed":true}	local	6941	o1ntefwyBkv2XDuyTE82IA==	2024-09-09 01:41:11.020775
134	cmtdb9gykehs9ulog6jofrmyxxh4	5.png	image/png	{"identified":true,"width":100,"height":35,"analyzed":true}	local	8528	sVIX5jjjoeebHIntvQieEQ==	2024-09-09 01:41:11.319301
135	ec4xyl9a1c7nb62qyokb0p5itnt1	1-2.png	image/png	{"identified":true,"width":100,"height":69,"analyzed":true}	local	10199	bM93pAUd1tmw4pET6++Dgw==	2024-09-09 01:41:14.660184
136	5s81jru99ydpfyvy3w9huzknqlhg	1-1.png	image/png	{"identified":true,"width":100,"height":69,"analyzed":true}	local	15066	c6KJWD+z5Th5MhZ/Ajfapg==	2024-09-09 01:41:14.69541
137	i7cox11j93wcw2dg1gfre17wcnja	1-3.png	image/png	{"identified":true,"width":100,"height":69,"analyzed":true}	local	7269	21zT+Lvnoa5dYjUgqIRiZQ==	2024-09-09 01:41:14.811811
138	2w67i65s1lucdtksjmsdjmnpp92v	1-4.png	image/png	{"identified":true,"width":100,"height":69,"analyzed":true}	local	9489	RViodjn5mn47rChGF7kILQ==	2024-09-09 01:41:14.953176
139	wzki573seonhf1h4ab9fvg9kd30b	5.png	image/png	{"identified":true,"width":1130,"height":390,"analyzed":true}	local	599885	5ckFmfhsz1rc/7LSYcqdcA==	2024-09-09 22:16:39.107393
140	bbpittu53fauqacxmll80emcr9kz	1-11.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	10000	SIHxm5+K9Pe7A9ykVAuwsA==	2024-09-09 23:15:22.278991
141	oizt1chwlp87u1tz52w9fsdlrfw2	1-19.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6606	5RkcH2AiFXuSlqbGksRyjw==	2024-09-09 23:15:22.366062
142	2z6cxdqok8mghvjcesqu15uh7ss5	1-18.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8795	Tz6jJeUPdQ/sv1565hFndQ==	2024-09-09 23:15:22.535906
143	f24agbh3tp66yjnxxq0nwtyarj84	1-20.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8193	0iDh7llfR0NWwuPmGIIH3A==	2024-09-09 23:15:22.60766
144	uql3ojio4um33d6ibnprczxfety8	1-17.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8353	0/0Xs2qwsFbJhlc2jnTHHg==	2024-09-09 23:15:22.666095
145	guidb6rnfdltawhiooa8mmudhczn	1-13.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8179	rg79XfVdQ2D5CdW0HtxJxg==	2024-09-09 23:15:22.83912
146	o6dw6vw1g9ncppzjf9hv973g5x1d	1-12.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	9751	mMcZ/yEj8xZZCUyT2mOnuw==	2024-09-09 23:15:23.157407
147	pkq6h31o1gnaf43ry2ramhg7h5pq	1-14.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	9990	3ZPVAFVgk67tOQlcNoO/Bw==	2024-09-09 23:15:23.776475
148	bjlelsssho0w64cf8c19mn5idt71	1-15.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8775	g+PDEFMAHsL4Wo7HubI3oA==	2024-09-09 23:15:23.792869
149	79dgletwpggmfb2t0mr9hndli95k	1-16.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	9975	FbAyQ0WIUymaOYIGWhLE5g==	2024-09-09 23:15:23.850964
150	4gs9vekf1vaei20ojc4g06c7szit	1-23.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7406	vDl4IwAR6Vsen2z55taqcg==	2024-09-09 23:15:33.319098
151	fbs38oc8rdfyozyd5xg5bm2bbpy4	1-21.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	5888	Rp8rhMuap2IMveQbkFcR5w==	2024-09-09 23:15:33.364683
153	6ow0ydqy1oed0i4aiinxgcinqrvy	1-24.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6689	HZkS7NNSZkVm5NaJl+TzTQ==	2024-09-09 23:15:33.578448
152	vq1ty24a6vthavgq6k2tic5a4ybo	1-22.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6537	rvQJ3I+4rvTIFUh5ztn+sQ==	2024-09-09 23:15:33.430663
154	n76dhz4tf7c0pjbhw2fzfrs0nrk0	1-26.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8168	Ro8VBlLyjqydn1ZdEvXY8w==	2024-09-09 23:15:33.601821
155	bw7amlc8elrz2ismjatybicpce9i	1-28.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	4693	lGtTOFevRVcG6I6BueaEvg==	2024-09-09 23:15:33.922163
156	wo2m7t8x6icxrk0v3ehqqx0tlgb5	1-27.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6845	vT8N8NYKkLwoH0QPkrf80g==	2024-09-09 23:15:33.943645
158	aecvgvvuoy97akfgyiyjrgxzdujl	1-29.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7992	xNpQKtl/jPZ7IXVVqcjSGQ==	2024-09-09 23:15:34.467016
159	ee4rjkevoav36zelrioa5xyev1e9	1-30.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6784	gLaufc6jz1myQqhDsq4Thw==	2024-09-09 23:15:34.508703
157	9tbkrxbj8pth321zfbp2ixpcic7o	1-25.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7183	4iLKqtwDjA2Spw6HqplX8g==	2024-09-09 23:15:34.148594
160	b3n6drk2b40e370w96k0ri5cpv0d	pradana-soewondo.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1464878	NcbOUdOrJw7OP3d03+pj7g==	2024-09-10 09:15:30.335945
161	m6k562x00rmk831e5d2o9x7d2xmx	ladiswara.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1742662	a3T7Pj4F/335wrDSUsuf1A==	2024-09-10 09:15:30.60661
162	0tkbn7h5onb6edb61nodfehf2lvb	adiatmo-pratomo.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1610329	jvET4uqcpp3bAJMKeyOZ3Q==	2024-09-10 09:15:30.749194
163	l81xiszqs68jej7zqh85sq4wfqng	meryl-pulcheria.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1795537	WeA758S/D8KYK7/Gq7PJAA==	2024-09-10 09:15:30.906635
164	de9ht5tvqs687trvil05n09ei7l6	nurifah.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1497029	1qcDFFV51HUB7TLr3P3zSg==	2024-09-10 09:15:31.282279
165	yos2zuqfj04yte2ynjofqivbvq9b	aulia-zesario.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1507574	PB69NJMmXnP+4VezEIgZTQ==	2024-09-10 09:15:31.557357
166	vajzzaxa4qjyfpvma08age87fs7g	muhammad-reza-syah-anwar.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1562565	OjZUaqB1ZVZTZ+Zy/bWyWQ==	2024-09-10 09:15:31.684883
167	dlt6r64nzd1tghom2me3d7dkpoh1	tri-dewo-asmoro.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1454753	M1J880ay+K2RxL/eNEE7vQ==	2024-09-10 09:15:31.853247
168	rnwq1hts24uiychkeskop82ev6yj	harry-sugiarto.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1550811	p+WgaTkfA7jpglWcYgEBng==	2024-09-10 09:15:32.101501
169	e47qv38w117ciiplso56so0e7282	syamsu-alam.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1742019	fBB+EcveTizti9fDkIdz3A==	2024-09-10 09:15:32.199226
170	5lxmqxinacvy8i5d32qfz2qizl00	ronny-yoesyanto.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1528102	XFbzwB+tV8Vfxh/j+YlQTQ==	2024-09-10 09:15:32.636599
171	mrwzvky7e7ajfe60yj3ix6s6sm9b	satya-hanura.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1665447	ry6Y/+zvHe/nmbLy5ZgZ7Q==	2024-09-10 09:15:32.722645
172	6hfsiz7jrgk911073vcs2zxne9s0	ahdinar-rosdiana.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1793484	nGhQit8r6ghMDgmkvxmrHA==	2024-09-10 09:15:32.980943
173	j56u6ntr56vu5c8spkrvfdbl0do1	siti-masmuah.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1733948	Wsz11fVzu+nf+1FnaRX8rA==	2024-09-10 09:15:33.071668
174	04gvbad1im51l1akubl7n3tj339f	dinda-putri-husni-lubis.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1693732	MZ7ZhgTImgFXB+g4R1c+pQ==	2024-09-10 09:15:33.40853
175	7eq10ictle64iyryri7htdik5o6r	nirwan-husni-lubis.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1544969	n4+RaElkkwtbRVKwyChb/g==	2024-09-10 09:15:33.493821
176	rj1332of8mabodjzkyqaskpdnjaa	andreas-noerdin.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1615796	LbL0E4Bm4JTveXY0Bqh5DA==	2024-09-10 09:15:33.751528
177	k47c09o3ri643ymnw0ak6y884zdx	sumarini-markoem.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1762654	54Md0Oq4o5YsCq/qVUTbjg==	2024-09-10 09:15:33.867804
179	lp16vk9p3scw2vn8vcoi6v0s21am	reza-edward.png	image/png	{"identified":true}	local	1546780	+t2lk430TgWSlYB6MujU3w==	2024-09-10 09:15:34.16181
178	9v5wyqrm1ynszoy0f0y7p3hoi6om	indro-poerwanto.png	image/png	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	1701938	s0i0ePswrInfGU7lKtJo3g==	2024-09-10 09:15:33.992008
180	ror24zic41gll1smgugtu9f2aftr	aziz-djunaidi.png	image/png	{"identified":true}	local	1969941	uoYWwLtxs6Cn+kjn9nhShw==	2024-09-10 09:15:34.290885
181	opxin6b9ken9zz3bfb01292hcdbb	muhammad-reza-syah-anwar.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11323	RqF9iwzUnD2z5dSbrdm3lQ==	2024-09-10 21:49:29.189608
182	nw0c7k2bcwuapv9vi9ondxlsqf0w	tri-dewo-asmoro.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10075	QGTYJBQSGeDuX78DGLzm6A==	2024-09-10 21:49:29.291539
183	u3uiy162vttrrmnzo7ea90d7aely	pradana-soewondo.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10489	JHJZcFWkTntzNlOpuUGCbA==	2024-09-10 21:49:29.537484
184	nok408sztyvd5doivugje7pue73u	ahdinar-rosdiana.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11021	RTjQO+G6zatxhD59phtKYw==	2024-09-10 21:49:29.568534
185	19j3sj0u02eikjv5avcgr09emrfe	harry-sugiarto.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10678	UHokX0QUgX2f6++LOO1mFQ==	2024-09-10 21:49:29.630036
186	4nz5xj205gk6bly207qceveirarf	ladiswara.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	9738	YCCAaXxO/DdXW79zDfQEeg==	2024-09-10 21:49:29.945115
187	02cvs0aitddutedtstm2qtp7soj0	syamsu-alam.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11623	Vl+GTk2q+LqZIqN3lNYlDQ==	2024-09-10 21:49:30.435664
188	eka75yamdhmiaalv7r7i1gzf5qaf	meryl-pulcheria.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11557	LbCOrqVHlcZXo3HbepVwyQ==	2024-09-10 21:49:30.440142
189	dwbfwred1ka3cmmwgvem4382c9u4	nurifah.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10330	uQhq7NQ1TXLgeVmFkdPBYQ==	2024-09-10 21:49:36.964465
190	ghmx77dunj6l3x2faqb0bvpmkfi6	siti-masmuah.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10043	VdlB8IV9gDD2d6tvneEC3Q==	2024-09-10 21:49:37.113423
191	clg637yhex8q130pw5lmv8qd18ps	adiatmo-pratomo.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11388	hwrA8EbNGDamR1Y4EB3hbA==	2024-09-10 21:49:37.136143
192	u3c1h3rxfnl3q1pgo6f0x97qupht	aulia-zesario.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10291	PefiHTaKNmU2T42b5YlHQg==	2024-09-10 21:49:37.202076
196	yb3jd1xjfb3fs2384lor7eg152kf	nirwan-husni-lubis.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11103	pEdVUvIxSQMZG9ONiZcHbw==	2024-09-10 21:49:44.367326
197	nn59bmrbgxc15221eou9s0hbhn0g	reza-edward.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10399	nayajfC1FokQRVoKxsozDQ==	2024-09-10 21:49:44.449909
193	e6884vebmxjl2c33x7n60o2iyipu	ronny-yoesyanto.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10633	Zg1isc36zEx5z1njOzknBQ==	2024-09-10 21:49:44.309006
195	15yelynx4nzv92sl5i117fa29x0y	dinda-putri-husni-lubis.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11702	iJQ1YPgYU/4ov0NMeXucZw==	2024-09-10 21:49:44.355976
198	6nomow7arp8d5on4ex5ks7xipbze	sumarini-markoem.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11353	SuVGcAqX++ogazz01ye7CA==	2024-09-10 21:49:45.060882
201	32r4w5beypkrkczrwh75kj0mqx8j	aziz-djunaidi.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10288	DDhvnYmzkZIacECFS+fQHg==	2024-09-10 21:49:48.868573
194	9cc2jsuo5cgod3n19z6m58vh1rie	satya-hanura.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11371	Bo6xcyAb0lgnlA/fLLGC5A==	2024-09-10 21:49:44.342065
199	ctsfm5wuaveclwgazh5q2ae80zbh	andreas-noerdin.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	10975	QtXt8RWFcB8S/jzeLISR+A==	2024-09-10 21:49:45.139505
200	v7gmib7py9liuuqwx9ptk66d7q7o	indro-poerwanto.png	image/png	{"identified":true,"width":80,"height":100,"analyzed":true}	local	11371	DmqvR7DDdGqyRY4ZKJJLRQ==	2024-09-10 21:49:48.745935
202	0xlfql3sp06et8jzxv9wjwve7ehi	muhammad-reza-syah-anwar.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	89654	Yr2So+3fvUVrFjc5nPXdbw==	2024-09-10 21:52:44.235973
203	gdxt2lx4dva4s77yhwrejagknbh1	tri-dewo-asmoro.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	80334	I/prkwkTS7ln1zc/R/LRlw==	2024-09-10 21:52:44.494339
204	07jfk7zdn0xcmpzvxeog17qoeep7	ahdinar-rosdiana.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	97765	4iZg05ADwOv2cGzsvvX0rQ==	2024-09-10 21:52:44.785072
205	vxv812pa3ma2ub1mh8ysjbwfcq9z	harry-sugiarto.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	87097	nfQ7yjSdlfg0is2I4lPBcg==	2024-09-10 21:52:45.059018
206	2ls0b9sczk5xdz53oup1px1edqp5	pradana-soewondo.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	83984	WdAtwhMbF43n4k6dMqq9+g==	2024-09-10 21:52:45.327973
207	8rg6u3owlkyhe0wi5ip1086nido4	ladiswara.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	87624	7D3unVDWUPnPj/mHnrNlWA==	2024-09-10 21:52:45.619605
208	dlbkqkdllce5kgaz8hi873kl5g44	syamsu-alam.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	97817	mOX429CPWnUz5yVeh8rlgA==	2024-09-10 21:52:45.877995
209	secoyp3x509a95exo4sxlpyvdgwh	meryl-pulcheria.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	98341	KjAff4HPA9T78VxH3yO0vQ==	2024-09-10 21:52:46.124177
210	jhhz9gj8zke1zzbsyr6zuhbtftbb	adiatmo-pratomo.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	93644	5FKUfAFKLSSVbPu/UoU64w==	2024-09-10 21:52:46.393006
211	fdn4wtetmbg40pb6gly2er8sbiwr	reza-edward.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	86755	nfs7siIZVFpSdya+0lqmAw==	2024-09-10 22:05:17.550675
212	ci91qubkntkpv9imacl0opjlnvfs	indro-poerwanto.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	96602	DwQQ9b27y41HbswlkUL5gQ==	2024-09-10 22:05:17.817084
213	4ld2d52dm7mxaz8rdviq1n19oa9q	ronny-yoesyanto.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	88812	IpEpnxF8LBY8DXCFP7RyHg==	2024-09-10 22:05:56.145944
214	ejiswmm7yt01pvp5fgyenz7t6h6k	satya-hanura.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	95153	GYB0H0scn19nleFTrfU3yQ==	2024-09-10 22:05:56.395807
215	6gn52qxnhyx2z1vfcq17w6g3vw4i	siti-masmuah.png	image/png	{"identified":true,"width":275,"height":344,"analyzed":true}	local	92416	gk21wEGTtJ/ofFKg5ilj7A==	2024-09-10 22:06:17.003914
216	726kkoc4q66hc0hh33p8uhfz7pw4	dr.-Muhammad-Reza-Syah-Anwar.Sp.OG-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	324408	RDTFmavcrvZWZKG2HnhBNg==	2024-09-19 23:14:49.87373
217	tm8jt3jbbj8jldpbzu0rbaoeal6c	dr.-Muhammad-Reza-Syah-Anwar.Sp.OG-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7717	XCnMAkjkYhBtYxJ7+S1Hug==	2024-09-19 23:14:50.409298
220	bak6m90o49lwsr3p6kna84ffxa64	dr.-R.-Fidiaji-Hiltono-Santoso.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	304613	T0DkdsL1YNYmyX17Abdp5A==	2024-09-19 23:15:58.004588
221	zsk06te062tg9mtkrpsujyl9yqeh	dr.-R.-Fidiaji-Hiltono-Santoso.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7210	rW2AIk5rHcAlUV9TCzlO9g==	2024-09-19 23:15:58.467875
222	c53v0i1z4ty7ri1k3r1leu3v8c1e	dr.-Ahdinar-Rosdiana.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	384620	22Tp3O7mSvW1oltPvozmcA==	2024-09-19 23:16:31.777584
223	mye81nhk2fcgmckp88b48rsyokze	dr.-Ahdinar-Rosdiana.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7565	3TM9ye0kle3Mlm5VMKAN0A==	2024-09-19 23:16:32.231267
226	6cgr2i4xqhox7cfd5352gqxwtvne	Prof.-Dr.-dr.-Pradana-Soewondo,-Sp.PD-KEMD-(K).jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	404041	3wxVNV1fcxndvcae+UG4sw==	2024-09-19 23:19:49.958057
227	e3bjp2q93vponq2wwpurx7vewaf4	Prof.-Dr.-dr.-Pradana-Soewondo,-Sp.PD-KEMD-(K).jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7795	wSbyCYzJ0GhWclX2HonB/w==	2024-09-19 23:19:50.615653
228	qe7pnx3t3b2uzhs3kpzrdymcmoz5	Prof.-Dr.-dr.-Pradana-Soewondo,-Sp.PD-KEMD-(K).jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	404041	3wxVNV1fcxndvcae+UG4sw==	2024-09-19 23:20:06.70957
229	b2t2ez00vb0y8d6i3o6gxr7nagu0	Prof.-Dr.-dr.-Pradana-Soewondo,-Sp.PD-KEMD-(K).jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7795	wSbyCYzJ0GhWclX2HonB/w==	2024-09-19 23:20:07.35815
232	90swyax3swh99zwlxff9r802hh79	dr.-Syamsu-Alam,-Sp.-B-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	430212	FkXFkm85Cb4lyj6EhzOE9g==	2024-09-19 23:20:59.970621
233	9ut21udpi5zevnij1jhzpmv1nxi8	dr.-Syamsu-Alam,-Sp.-B-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	8045	sYCDB1EEXGOQIoeeWpY/vg==	2024-09-19 23:21:00.481782
239	eio6yk8dlhtoui9y7hdjealdlm3a	dr.-Nurifah,-SP.A.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	8994	faTmU4SmTSnx+qh/SzL2Zg==	2024-09-19 23:23:56.344118
241	zlphvpe074n7dxygw7nht1yssvyi	dr-Siti-Masmuah-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7069	5t6SkjNOjgIjv+tqfE25Bg==	2024-09-19 23:24:22.152631
238	puz73c2sulpq3k35ef0anthcyx9d	dr.-Nurifah,-SP.A.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	489335	qzXTK2JchviX+UEH6Phoew==	2024-09-19 23:23:55.860142
240	8dg7964jui1w19073d2xox4r1ucx	dr-Siti-Masmuah-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	375695	FrT9XWSL8coE4SJ1euf92A==	2024-09-19 23:24:21.646001
252	mme10xz0cpec210je51m87t6d7ip	drg.-Dinda-Putri-Husni-Lubis.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	397953	C+XwXfHl4Fw9qpPjdKBsTw==	2024-09-19 23:33:01.803594
253	zosa7ksztjy10p5hfwzz6676nwqj	drg.-Dinda-Putri-Husni-Lubis.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	8283	+XIQoD2TwMn6VHUlGCmcpg==	2024-09-19 23:33:02.292653
256	duvwa4k0t6dul8mazfft93m4t4z2	dr.-Muhammad-Syaifullah,-Sp.P.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	420877	grFkc5qxmNEyBmLwJlzq1g==	2024-09-19 23:34:20.875409
257	a5utftywiauwi2e98t2tf4nk0vr1	dr.-Muhammad-Syaifullah,-Sp.P.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	8285	f3tQP7hSysEAehzzukJUdw==	2024-09-19 23:34:21.485254
258	vws6t2cnv97adgyfl018n6dzbp46	dr.-Andreas-Noerdin,-Sp.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	372006	/hkGewb/g9t+xgyyw1XjOw==	2024-09-19 23:35:04.249536
259	zswtt5fvvxasorbm3s0gjjty32ea	dr.-Andreas-Noerdin,-Sp.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7461	GWKiOIai9Cnya+ZHqRcDgQ==	2024-09-19 23:35:04.672892
260	oq6gmd2deqbe5aho3lsdhgihoz50	dr.-Sumarini-Markoem,-Sp.M-4.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	410780	RR61EoWxzt8KudwMxdT7ug==	2024-09-19 23:35:35.284527
261	abez515z4949l26sn9qne970l7o3	dr.-Sumarini-Markoem,-Sp.M-4.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7925	kMZlktc5o4HrI1XkEGHZLQ==	2024-09-19 23:35:35.743265
262	sck4skaa6s7yb2hjzzmyo7m0r9i4	dr.-Indro-Poerwanto,-Sp.KK-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	366500	0IWd9StnjbwWP7kNNH1lkw==	2024-09-19 23:37:25.642681
263	q7ls2bbq8cnj8c4erdd0h9dmbaj4	dr.-Indro-Poerwanto,-Sp.KK-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7525	MhVF7mVA3Itd5TXf6oE3Mw==	2024-09-19 23:37:26.455533
264	p9srpxabackvqvk9d7a6id3grsy4	dr.-Aziz-Djunaidi,-Sp.KFR-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	412831	yik/rPQmG1iJ3RKYaWPMgw==	2024-09-19 23:37:47.159862
265	abhmrtl40eh4szsfdug2wtf30cu0	dr.-Aziz-Djunaidi,-Sp.KFR-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7356	j5JptlvPMOfY9zPOHj5pgQ==	2024-09-19 23:37:47.732654
266	c0u9lugclkussr99ia5ftjp8nd8v	4.png	image/png	{"identified":true,"width":1130,"height":390,"analyzed":true}	local	484479	UNP5E4CuqXUMnYVhOE6PJg==	2024-09-19 23:50:43.569406
267	wai2k50atshpgzayafqkomt0tmvm	dr.-R.-Fidiaji-Hiltono-Santoso.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	39191	p7JV7DfCpQxRxraGwADqwg==	2024-09-19 23:54:59.451063
269	2d0uo15abyrcpqk4tdfqno5peiux	dr.-Muhammad-Reza-Syah-Anwar.Sp.OG-2.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	41650	A8SDrLiODP+Tl/DuqfRS5A==	2024-09-20 02:00:19.582816
271	mhkgrh5e79dpvb0dvr0kgof6ss07	Prof.-Dr.-dr.-Pradana-Soewondo,-Sp.PD-KEMD-(K).jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	45834	/SRhO9LqDpldULnMsPQCMg==	2024-09-20 02:00:20.010052
272	euaq4mjkhimwuhc65yf0fsee4oux	1.png	image/png	{"identified":true,"width":1130,"height":390,"analyzed":true}	local	513834	vPOrT9lQ4HAEAy3bJuQfPQ==	2024-09-20 03:11:30.046998
273	nhhulnqfjr953fkdwz44z5klwlzp	thumb1.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	16221	0IT1GN/rGrm7RkNTsa0Hxg==	2024-09-20 04:10:27.583428
277	7vx6lqpc9ndl09qy49371klxcp0w	UGD HOMEPAGE.png	image/png	{"identified":true,"width":1129,"height":637,"analyzed":true}	local	990845	2po4PtDLF1G78XyYJ4yVqA==	2024-09-20 04:11:57.451255
278	duv2k53on5wxs1wulxxahey25jgz	UGD HOMEPAGE.png	image/png	{"identified":true,"width":100,"height":56,"analyzed":true}	local	11849	d+IbqvaGc8qSpdmyK3zhug==	2024-09-20 04:11:57.913937
279	bklcwstf4ipljrcv1qyblphvngdm	UGD HOMEPAGE.png	image/png	{"identified":true,"width":691,"height":390,"analyzed":true}	local	287644	ZzFXn7pN0xt9aWXt26/hnQ==	2024-09-20 04:12:01.075222
280	4sensnd11juayqattvmh710tocti	thumb2.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	14264	96ohdy47vJYVVU8BOPnUfQ==	2024-09-20 04:14:56.958692
283	s30fxmwctxavmay7bsy9w5bivf5f	PHARMACY HOMEPAGE.png	image/png	{"identified":true,"width":100,"height":57,"analyzed":true}	local	13065	QaECW1x9ad87JYo/AuriCg==	2024-09-20 04:16:20.792011
285	s1tzti21vua52hx8k5dqhkdvjx9m	ROOM PATIENT HOMEPAGE.png	image/png	{"identified":true,"width":100,"height":65,"analyzed":true}	local	14141	6em7JKSnXg1RjZJiSombRw==	2024-09-20 04:19:21.889166
288	lpib61pspg5lf6yqxdj2vvdyfbee	MEDICAL CHECKUP HOMEPAGE.png	image/png	{"identified":true,"width":100,"height":67,"analyzed":true}	local	15318	iXK7DI3NaGGO/s2+qg6UAg==	2024-09-20 04:20:00.118197
289	vuwhkh18ujnruz95vqfb5ic6ft0y	thumb5.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	12961	FtIxikGEqwYSsotyfhCxTw==	2024-09-20 04:20:23.77878
290	hit701ortqk66ftj6edrg5g9m7ts	opertion room homepage.png	image/png	{"identified":true,"width":8256,"height":5504,"analyzed":true}	local	46371892	zkBmE+OKXPNz747WS/Y4kQ==	2024-09-20 04:20:39.785271
291	xxzyqjut42po66jn8gzjyqpfabep	opertion room homepage.png	image/png	{"identified":true,"width":100,"height":67,"analyzed":true}	local	20245	YYF6AeVyVXUJRn4UgPejfg==	2024-09-20 04:20:45.637329
281	jj0htah5sx77l8cceq7nmb4rn5p9	thumb3.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	12961	a4u64oBAHdmh1Ax2hz3MFg==	2024-09-20 04:15:10.248639
282	xxj6vx3sgo4np97m2d8jkyf1obsh	PHARMACY HOMEPAGE.png	image/png	{"identified":true,"width":962,"height":547,"analyzed":true}	local	886106	465GzsLXvgS3XVdrILSIgw==	2024-09-20 04:16:20.306933
284	1253e2pe22wu4iq87d6od3gx7ij9	ROOM PATIENT HOMEPAGE.png	image/png	{"identified":true,"width":982,"height":642,"analyzed":true}	local	1058484	zU8P3Mzurv2m1IIKhv3tuw==	2024-09-20 04:19:21.408568
286	neplwwed1m39xqvamzjpq6poe9qx	thumb4.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	18066	qa0J271B/dOTNHS7u7WZDQ==	2024-09-20 04:19:41.317163
287	9j2l9qmd3ggi3d3fx6uv6fclhlzj	MEDICAL CHECKUP HOMEPAGE.png	image/png	{"identified":true,"width":5663,"height":3775,"analyzed":true}	local	21086907	OjPzT/AtwF5g7on8RoQd0w==	2024-09-20 04:19:56.755187
292	c4x2rve79ggqpeqr9f6uycc3xksk	thumb6.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	18066	hnbdC59v+5Ktv0l5G9dO0g==	2024-09-20 04:20:53.098086
293	mjje63fpmlr9i4bluw8rtylf0eq8	REHABILITATION HOMEPAGE.png	image/png	{"identified":true,"width":6720,"height":4480,"analyzed":true}	local	34073724	kIRd1J05g4LkS0vbwJl3qQ==	2024-09-20 04:21:08.448621
294	0ahrb1wp61fdvzrucmhoknuf8g6j	REHABILITATION HOMEPAGE.png	image/png	{"identified":true,"width":100,"height":67,"analyzed":true}	local	14874	aHlDCCAetSHO7icu00lMWg==	2024-09-20 04:21:12.438805
295	v9rh92mp47l0eqp5n8sj47omeiac	opertion room homepage.png	image/png	{"identified":true,"width":585,"height":390,"analyzed":true}	local	293483	ynu/A9oIT4xGKyKiJB5jTQ==	2024-09-20 08:19:54.235827
296	ce9shhneec6qg2vkkz54vmf6ltqe	IGD-ROOM.png	image/png	{"identified":true,"width":5663,"height":3775,"analyzed":true}	local	8923800	GpJX+gfstdEOFEFL6zIV0w==	2024-10-01 01:37:33.510084
297	2i0qy2uf9hv2dbwoyx7lwj82xixw	IGD-ROOM.png	image/png	{"identified":true,"width":100,"height":67,"analyzed":true}	local	9951	NTYVxsiz1mgWSBC1izTUqg==	2024-10-01 01:37:36.740196
298	gx5hrrtsvvcrc696xrnidsi0qvwd	farmasi-area.png	image/png	{"identified":true,"width":5663,"height":3775,"analyzed":true}	local	9290164	kNTqIawyrBFysbz/zsEjcA==	2024-10-01 01:37:53.337082
299	ohyc1eewa6oged9dbs5m938cbik0	farmasi-area.png	image/png	{"identified":true,"width":100,"height":67,"analyzed":true}	local	11447	sxHCDofCKWiKc8lZ/lU85w==	2024-10-01 01:37:56.799039
300	gxy0euh24jiqb9nzb9bmddq6tp9q	patient-room.png	image/png	{"identified":true,"width":5663,"height":3775,"analyzed":true}	local	7020815	9InwIqKz0LAqnlzU8AHKCQ==	2024-10-01 01:47:01.28533
301	0o9vo0b4appksdpzbhfm5jce3uyv	patient-room.png	image/png	{"identified":true,"width":100,"height":67,"analyzed":true}	local	11529	zHen2x1ysG1tnBvkOY/ITQ==	2024-10-01 01:47:04.392793
302	zubh5vfhy3rkym1fnryma02jgycc	IGD-ROOM.png	image/png	{"identified":true,"width":625,"height":417,"analyzed":true}	local	227716	frUQqCNX8Yk/Rgpy9Sg9JA==	2024-10-01 03:07:14.125179
303	1lc8co4kph6c40eerxretm9nm9hn	patient-room.png	image/png	{"identified":true,"width":625,"height":417,"analyzed":true}	local	247703	Eft8G0d+dB3rdCZbob9R6A==	2024-10-01 03:07:16.331182
304	bbhqercq0z4o6ptanobuak23tdkr	farmasi-area.png	image/png	{"identified":true,"width":625,"height":417,"analyzed":true}	local	268634	z1TCuGUDnKRCViWSWXnUCQ==	2024-10-01 03:07:20.047412
305	8cxssb14kn4wysffy7n2ikpnfjg1	MEDICAL CHECKUP HOMEPAGE.png	image/png	{"identified":true,"width":625,"height":417,"analyzed":true}	local	256795	x9+08vB00yo8W9nBxIbhuw==	2024-10-01 03:07:20.226918
306	ax3uo5m310kcd52n7knqpsikdg4a	REHABILITATION HOMEPAGE.png	image/png	{"identified":true,"width":625,"height":417,"analyzed":true}	local	280376	nqj+CZQIUVJlHGiR/yic1Q==	2024-10-01 03:07:23.55009
307	adjakpfy25hkzilfz8qvmdcmmb6a	opertion room homepage.png	image/png	{"identified":true,"width":625,"height":417,"analyzed":true}	local	327913	VMh4bJJMRZGQXrX1IWVa7w==	2024-10-01 03:07:26.16391
310	e59cvl6zsqrvgk7ztsn33hl2fcso	dr.-Ahdinar-Rosdiana.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	46803	rmFSS6VySmFnP/Kybc2BZw==	2024-10-09 01:28:49.218544
311	9i299hl9s55o3wfyr30qndshuisa	drg.-Dinda-Putri-Husni-Lubis.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	49293	YhD4ZXYZoIWKgwC33sbcRA==	2024-10-09 02:30:00.23051
313	ghngi8ot33rgzd74z2k9gkklzgcl	MEDICAL CHECKUP HOMEPAGE.png	image/png	{"identified":true,"width":585,"height":390,"analyzed":true}	local	230423	8fha0g6ntVhN1w3p4nBQKw==	2024-10-09 21:03:30.93565
314	drnxmbev2otuvy58swhfjkpmc3fw	REHABILITATION HOMEPAGE.png	image/png	{"identified":true,"width":585,"height":390,"analyzed":true}	local	250472	NtJZB6e1gcUlDhLOaWcptQ==	2024-10-09 21:06:12.00676
316	v5p4r1taosehjb6rc3n5ejhgv23e	dr.-Syamsu-Alam,-Sp.-B-2.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	48615	J3zGGKjNggJmSNIZxf5KSg==	2024-10-10 00:13:52.481826
320	e4f76eu6sfyhc55fa0qlvx7k8an6	dr.-Nurifah,-SP.A.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	59865	+JKgJUBDs19gFPtmpNz/uA==	2024-10-10 00:13:53.246421
321	umotufpy4cq4uxrogssmj8vd5c6w	patient-room.png	image/png	{"identified":true,"width":585,"height":390,"analyzed":true}	local	220111	f1KQ751se5qMLRwUQKFS3w==	2024-10-10 04:20:41.396806
323	dkgv75xltd68ruct07vcdgnpg95v	dr.-Indro-Poerwanto,-Sp.KK-2.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	44203	9MhahVqW5y8f7KblL8nb+g==	2024-10-10 20:19:50.081706
324	ih5kowuennqag83ddw1ho2q96030	farmasi-area.png	image/png	{"identified":true,"width":585,"height":390,"analyzed":true}	local	237678	ITNJS/de+iQA9Sy92FQDnQ==	2024-10-11 01:40:36.744351
325	mifo2nl56rwj11g7fbbkk4n376d3	1-1.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6686	MPdHROvcBt62ldKwP8tAcA==	2024-10-14 05:43:48.578586
326	a1toanpgo264gqw1egaq6x8fjyy1	1-2.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8962	wza2uD7Y6pBh7x7PdQqNcg==	2024-10-14 05:43:48.737865
327	5ywixlnby0ib5ljttaesiq7z8wlg	1-3.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7640	bIAnQOjRE03oBVHS6jJqJA==	2024-10-14 05:43:48.839347
328	86q0gegxlcjww4zvte8muhh5vhfw	1-4.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7865	wkyAaeKkom/7uhLUhTeVGw==	2024-10-14 05:43:48.955548
329	bv66up94ytjvuvnrt88v2oat8yp5	1-5.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6496	SrzvVZleIwyOeCm3w2VC2g==	2024-10-14 05:43:49.058191
330	sltodj5iue9laoiz6evh64k0bavy	1-6.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7380	ldsIDN9g5DavRb1Sreb/uQ==	2024-10-14 05:43:49.193976
331	1yb3p5oa9zbgexsr3q2dt6yzxk40	1-7.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6513	xKzNKEUuYlSq0zEQAbHOWg==	2024-10-14 05:43:49.400601
332	lw6fziga2ng9hf2wvbjt1aj1lt09	1-8.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7542	sPhEMB/AKHO2F/pG7vsoZg==	2024-10-14 05:43:49.546856
333	enxw9izv56y8keuood656a4h6ilg	1-9.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7844	SJU5a9MUgN2UygPMxt5dDg==	2024-10-14 05:43:49.763944
334	3pfj8qg74wva1npw06j5q60w4xr0	1-10.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8867	gMrVeB5aekJU5lbcwc4etw==	2024-10-14 05:43:49.910595
335	7741l4sdb5evn54dto0ox0vzv9oz	1-11.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	10000	67Zu1gzb0WDprQEggaMdVw==	2024-10-14 05:43:50.050219
336	824ohjt3xp65i57m5yxbk2xa9gr5	1-12.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	9751	/VKjfu+UuQDEhaJGw2i3pA==	2024-10-14 05:43:50.186843
337	4xbutctp4e3807o8tsv084tcbx61	1-13.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8179	jYbuxK40jUf9NpEIgHIW3Q==	2024-10-14 05:43:50.306233
338	3ec60w4d81ni2p6uxr6gpr8apy4n	1-14.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	9990	awJIGbbAXAqtM5cQfc25tA==	2024-10-14 05:43:50.473648
339	ldmf90ke0t1kkmc3ytfwz9w7jfa1	1-15.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8775	d3+cMsPCIitSOJAsM44WiA==	2024-10-14 05:43:50.695594
340	iogucuvmd5vv2tx1t7uidef5x782	1-16.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	9975	+Z2k160NlcfPoWdnfuugOw==	2024-10-14 05:43:50.825989
341	5myw0mbi904qh6sdzimx8p3v0ic3	1-17.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8353	Ioxc9MGz6be1iySHgQ6x0Q==	2024-10-14 05:43:50.948449
342	wtbcyl8198o6lv5tl6vn9rp0gube	1-18.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8795	Vmjpfsq4s8Absvp9D1/lJw==	2024-10-14 05:43:51.094897
343	qtwogagei54tz8ikum33zqurtsmz	1-19.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6606	kXKvrbV5K91zNMfrqgYxnA==	2024-10-14 05:43:51.248999
344	67yrl68t3n6zmp3ranlfr6mmj7fs	1-20.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8193	Y3MPmtmJvXkaRlKt34kWjw==	2024-10-14 05:43:51.470102
345	48luvdozzlhb3zdwo3693z7hfplu	1-21.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	5888	J0LTH3J9WEDRHt+sJPcYFQ==	2024-10-14 05:43:51.674214
346	pjuxctevp0sf5dte42j6npqoui4l	1-22.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6537	gOHpJFDQITERLDi1Nmk/ZQ==	2024-10-14 05:43:51.929182
347	xfi6374vxihdgult0eanzt7p8ea1	1-23.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7406	haRo4beuK3SlVlhsXue1gQ==	2024-10-14 05:43:52.143189
348	rqxd0ml7n8ozjiq157iv303uqm0l	1-24.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6689	7on42S41CNrknWZIXBbEmA==	2024-10-14 05:43:52.391104
349	rxrshsevaanhhf57k6qtz9ae6zdg	1-25.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7183	a9P7dpBIMN+oN84TsEvLjg==	2024-10-14 05:43:52.521527
350	y3lfpauny0n3ghsj85jkdrxg6xvz	1-26.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	8168	gRowiIeZ1yUDoU2aIRiUqA==	2024-10-14 05:43:52.6481
351	0h3vau9gns0ir924okijpx34tppn	1-27.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6845	7r3FiEmFVo5K16qwJvB2qQ==	2024-10-14 05:43:52.785985
352	1o30fzb92lln1k3v5lzl0qo3pcd1	1-28.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	4693	h0t8B+9d0Szp/IMej4/NPQ==	2024-10-14 05:43:52.906875
353	3zb880depv8s9et7950yk2t6k2sd	1-29.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	7992	MprfH4Qm2QY3yAxbWZs2qQ==	2024-10-14 05:43:53.030668
354	rdfnzyb0liredhwkxynk8lo6blxf	1-30.png	image/png	{"identified":true,"width":100,"height":100,"analyzed":true}	local	6784	Tp0z2LbxlkwAjvoYp3o9mA==	2024-10-14 05:43:53.151265
355	zm58d6m9vq0ofs6g991vcjgeoc1e	dr-Meryl-Pulcheria.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	390074	csohREnjMFfomlVVoe2iqA==	2024-10-15 22:11:54.392762
356	bmhmh95lkmdaobrbniq3x00gis98	dr-Meryl-Pulcheria.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	8640	4tIMlF7Cl9RLu9G0HtMENA==	2024-10-15 22:11:54.913819
357	rm67aadoxjylpt79nc2u688covcu	dr-Meryl-Pulcheria.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	56132	iryrR5TY20rCk9OdcatWYg==	2024-10-15 22:20:11.336931
358	fxabt9q6isioenr7gh7gx7t1rwbl	WhatsApp Image 2024-10-16 at 15.43.23 (1).jpeg	image/jpeg	{"identified":true,"width":1277,"height":1600,"analyzed":true}	local	254634	6wnNWQhf+dV0pxVRb4GmoA==	2024-10-16 02:28:41.875858
359	lu2idc7netjfah3at42jxxby13op	WhatsApp Image 2024-10-16 at 15.43.23 (1).jpeg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	3896	WOwORvVMxC1IioGa743EXQ==	2024-10-16 02:28:42.512254
379	3rs7zea8m6d1bf0wirwy0qlzl9gi	dr.-Satya-Hanura,-Sp.N-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	412177	Gqz+PITkHYICpTVDf4594Q==	2024-10-21 04:07:22.4767
364	2ygt81k9col0uk8q9e8toshhkk0t	WhatsApp Image 2024-10-16 at 15.43.23 (1).jpeg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	23081	W/2LlBYXSTkmqL0DhnV3pQ==	2024-10-16 21:40:21.077573
365	qrui8iip3hhtur1f20ol3e35bpn4	dr.-Sumarini-Markoem,-Sp.M-4.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	49019	tUzA/3yHawVe37ve6cC8NQ==	2024-10-17 00:49:48.693953
366	r51xteauyy7pyq0w2nmq8fay1ev9	dr.-Andreas-Noerdin,-Sp.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	43001	3qC542nkP8v9oWX6glVaZQ==	2024-10-17 00:49:48.942058
367	cbo4xiydq0abxg5zoiriikrvm628	dr.-Muhammad-Syaifullah,-Sp.P.jpg	image/jpeg	{"identified":true,"width":275,"height":344,"analyzed":true}	local	50847	4HeuHrAFeOWqVX3GeJ0ISg==	2024-10-17 00:51:19.216125
368	h48tt2jslv99sgmocgj74pgpfrc2	IGD-ROOM.png	image/png	{"identified":true,"width":585,"height":390,"analyzed":true}	local	201109	KGQWLriH2jaiDdm5UkCnvw==	2024-10-17 03:52:40.129801
369	vgc0c93pqie3vvzcjdfxqwuetj6p	Prof.-Dr.-dr.-Pradana-Soewondo,-Sp.PD-KEMD-(K).jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	403131	N2okZjIA1PpWFmW8W2F3og==	2024-10-21 04:05:16.543096
370	4polhdxhiwy3hxleuxu13835jg4x	Prof.-Dr.-dr.-Pradana-Soewondo,-Sp.PD-KEMD-(K).jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7557	vXzOLFyrjZHJ7OaqALjERg==	2024-10-21 04:05:17.143136
371	l8tsbl7gd37zkbrefypn3ci9fcxu	dr.-Ladiswara,-Sp.PD.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	422367	4y+CPLyhjYm82AuUUdUjpw==	2024-10-21 04:05:36.009417
372	9xietpc3i4lsug0egxsidqzk5k9h	dr.-Ladiswara,-Sp.PD.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7365	APuQ3Ab6SOWDO6dHGzUzxQ==	2024-10-21 04:05:36.523115
373	ckmw9in6tmez9gx5d8bhbygb6ezp	dr.-Adiatmo-Pratomo,-Sp.PD-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	350656	f3x/1s3QCgaJlLx4uaGyXw==	2024-10-21 04:06:20.080492
374	2hqbllqilqp1xl2i31714tiejlfm	dr.-Adiatmo-Pratomo,-Sp.PD-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	6975	XeXI5YTXR9PAzDnP7EZ70g==	2024-10-21 04:06:20.542495
375	qj1qfwsw0ab8naia27phomwjy85m	dr.-Reeza-Edward,-Sp.DV.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	391593	Q5iglMf6RfXDaUGj4M0TbQ==	2024-10-21 04:06:35.524399
376	w1hwuzuz4e5pprjenydhblzpbjod	dr.-Reeza-Edward,-Sp.DV.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7975	FtCRqOvp4PGCpnrgJQPckQ==	2024-10-21 04:06:36.185217
377	cjq36bhs4gu4spa5wrbr6fpsfklo	dr.-Aulia-Zesario,-Sp.-Og-3.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	366250	ek5+gEwuvsljaf8IGVWufQ==	2024-10-21 04:07:02.027836
378	etxz4w5xa245cbp5e3i7hkd3kgl1	dr.-Aulia-Zesario,-Sp.-Og-3.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7399	lcX5FmF6+VF76h+mXgh9Uw==	2024-10-21 04:07:02.520861
380	omrp2mamsos5ucx4pieux9w8g2un	dr.-Satya-Hanura,-Sp.N-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7887	PWzW7sd0AERNa61WZv/6Nw==	2024-10-21 04:07:22.971094
381	li9sl6pfcovr5q7i9smbsjthzxxz	dr-Siti-Masmuah-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	380149	A0/jDF+i4PkBy/JYNbJ4lQ==	2024-10-21 04:07:52.67047
382	rdwcfv303i6u44ysbayvc3xlgjjj	dr-Siti-Masmuah-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	6774	nJDHVyb+GROVwGIIpPFK/A==	2024-10-21 04:07:53.193565
383	43zwbhqf5w1rnco1xshf9r5ncnr7	dr.-Ronny-Yoesyanto,-Sp.S-3.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	372741	dOHH1KaBC81S60qXGcXgRA==	2024-10-21 04:08:15.064578
384	vhhhaqs45vnvw6j2t4qzyjmb9jym	dr.-Ronny-Yoesyanto,-Sp.S-3.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7189	cvgaoCOcfA+Uhg++0WEhFA==	2024-10-21 04:08:15.695475
385	e7dws71zp12yhkg6qefvvcsjuswy	dr.-Tri-Dewo-Asmoro,-Sp.B.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	387753	kWG2r45nCOSmaxRJT0raCw==	2024-10-21 04:09:50.670096
386	jbunxodz7efpcyzi9pmc0k33awoq	dr.-Tri-Dewo-Asmoro,-Sp.B.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7751	OGFgB/QsJu5kPtpUe1q6kg==	2024-10-21 04:09:52.045833
387	8vz8dxdsaxwv26k1hagwduqazea6	drg.-Dinda-Putri-Husni-Lubis.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	392176	dZx5iruGPehbgfel+cW+9g==	2024-10-21 04:10:40.334333
388	mk1wh985dycr2ns01yvtzs7glkma	drg.-Dinda-Putri-Husni-Lubis.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7723	t/j6/zLtCIpGB5TyUluAzg==	2024-10-21 04:10:40.890711
389	hracooqogaczjcyxy46zfxsqkvt6	drg.-Nirwan-Husni-Lubisa.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	452699	Q48KwciHTkcgXUbwe1+Dgw==	2024-10-21 04:11:08.598057
390	3jxwklyveprqx8kj5jtc6i2xi9gk	drg.-Nirwan-Husni-Lubisa.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	8098	AiY50rWDQ6kFnyBpUjoPtA==	2024-10-21 04:11:09.025978
391	fge57is89p2826924odszejxp445	dr.-Muhammad-Syaifullah,-Sp.P.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	431533	lcU9ocFAmma2mLB+uhGVZw==	2024-10-21 04:11:27.344641
392	ji18prly6sx90748p9aamw4xutr5	dr.-Muhammad-Syaifullah,-Sp.P.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	8047	4qNlm/M09gkwWqXRJE2WRA==	2024-10-21 04:11:27.777669
393	dyja7r0wt8zwrx59stuenvsmvzfz	dr.-Sumarini-Markoem,-Sp.M-4.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	394290	ow36eCEGyOEk0lBVWxJBVA==	2024-10-21 04:12:06.736268
394	fu9l77mq2cbn0sp5pvebbtto22tm	dr.-Sumarini-Markoem,-Sp.M-4.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7181	X8DZ+EFS8TI2HdTnKPyCEw==	2024-10-21 04:12:07.159025
395	sa7wh79wpumeucjlgnmfqh24q7w9	dr.-Muhammad-Reza-Syah-Anwar.Sp.OG-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	334750	cPlh4+KINrvqxVyN5UfIhg==	2024-10-21 04:12:21.160807
396	r0osip9bdl1mjh3ryzgfme1lvamw	dr.-Muhammad-Reza-Syah-Anwar.Sp.OG-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7288	0VO1Sj/DS273AMUjUKJaug==	2024-10-21 04:12:21.609536
397	78dti5vh3xzwxw7bt3kk8paj05hv	dr.-Andreas-Noerdin,-Sp.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	376043	+JIu6gio93wr/HEh28MDhg==	2024-10-21 04:14:05.312754
398	aevbv7696k2qc3xge0ghzp52yb86	dr.-Andreas-Noerdin,-Sp.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7087	MXHoIrzNBfPTr5Pd/50wMg==	2024-10-21 04:14:05.764248
399	oj5cvq687opeljz40kt69j525ohk	dr.-Aziz-Djunaidi,-Sp.KFR-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	392247	dg93dTvnBa+y1NO71C784w==	2024-10-21 04:14:20.065774
402	z1wo49xtoaoau1g4e3ss6kkloqyi	dr.-Ahdinar-Rosdiana.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	6838	IHA9IrsueeJZ7Uf+2cGR8Q==	2024-10-21 04:14:37.652525
403	y5th8tmgfavwozirzkl858hpg9pl	dr.-Indro-Poerwanto,-Sp.KK-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	389543	yoIitsADHQInKOUUeKgEVQ==	2024-10-21 04:14:53.439437
406	qwy47kjxqy03ugkwrhfankdoc05v	dr-Meryl-Pulcheria.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7400	hfmJwDAGINAVsQ+K5laR6A==	2024-10-21 04:15:13.702787
407	hftdm6gtmk2aecbfd91945433d8a	dr.-Nurifah,-SP.A.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	491818	vXS+ZMtHMK1YxSrLpQHlWw==	2024-10-21 04:15:24.985924
410	ugiepgdfs8yb7mnkqncir9z1n8nm	dr.-R.-Fidiaji-Hiltono-Santoso(1).jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	6867	m9Ue1qonNyF/T3JzwfH6og==	2024-10-21 04:15:41.896326
411	b9bq7f6erya983ksyin92xyzzs3j	dr.-Syamsu-Alam,-Sp.-B-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	443631	tUsRJLErwJGZAXYalNoieA==	2024-10-21 04:15:56.245929
413	u76gdjlzwgqbubd9xg3ocqp04hhs	dr.-Harry-Sugiarto,-Sp.B-2.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	389616	S1YbZWbCSVeR5LH1vwT9/g==	2024-10-21 04:16:30.491081
400	gheg36oopa927qk5y9hely8j3jov	dr.-Aziz-Djunaidi,-Sp.KFR-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	6599	ew1nCS9MmWfeZXNwrIvyCg==	2024-10-21 04:14:20.474689
401	8vixtyukxiaapsgfhgw9hdim41rp	dr.-Ahdinar-Rosdiana.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	378973	tFzJLL1COyTDtpGN1KkXhQ==	2024-10-21 04:14:37.222388
404	4xshytpvdzal7pgxfyl68erga6nr	dr.-Indro-Poerwanto,-Sp.KK-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7162	PGiSKMiN8iVfg4cZRPk/8g==	2024-10-21 04:14:53.983943
405	tykud43c3v7yu9gs3yontqaheavp	dr-Meryl-Pulcheria.jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	363859	G2i10xdk+8gA6icJNC60Cg==	2024-10-21 04:15:13.276481
408	5c9kwja2zneoruymufqrifdvkvtk	dr.-Nurifah,-SP.A.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	8701	KfPmrR+vsC0E+gtyg29cxw==	2024-10-21 04:15:25.452968
409	nupree2zj13v1f9lr3790carrdpj	dr.-R.-Fidiaji-Hiltono-Santoso(1).jpg	image/jpeg	{"identified":true,"width":1000,"height":1253,"analyzed":true}	local	322918	f3S0lEzV93Q/4Jkmz8ZvHw==	2024-10-21 04:15:41.458146
412	1d1wzenypluf0dsb4657ludeyu6l	dr.-Syamsu-Alam,-Sp.-B-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	7520	aKPy4gpQfFr2yjBFoSxe8g==	2024-10-21 04:15:56.692483
414	pkc1b4v1jjvpmqw4soai598zhveq	dr.-Harry-Sugiarto,-Sp.B-2.jpg	image/jpeg	{"identified":true,"width":80,"height":100,"analyzed":true}	local	6788	hHLpcX6mTRQhZFwqtzn2Cw==	2024-10-21 04:16:30.948062
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
1	9	StUJ27EffkE2yKck89vGrT/XtZs=
2	11	StUJ27EffkE2yKck89vGrT/XtZs=
3	13	StUJ27EffkE2yKck89vGrT/XtZs=
4	15	StUJ27EffkE2yKck89vGrT/XtZs=
5	17	StUJ27EffkE2yKck89vGrT/XtZs=
6	19	StUJ27EffkE2yKck89vGrT/XtZs=
7	33	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
8	34	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
9	35	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
10	36	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
11	42	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
12	37	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
13	38	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
14	39	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
15	40	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
16	41	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
17	43	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
18	44	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
19	45	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
20	46	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
21	47	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
22	48	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
23	49	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
24	50	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
25	51	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
26	52	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
27	53	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
28	54	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
29	55	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
30	56	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
31	57	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
32	58	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
33	59	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
34	60	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
35	61	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
36	62	hI+tDtvE0IjoWfC+hG8sAyT2gQ4=
37	33	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
38	34	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
39	36	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
40	35	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
41	42	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
42	39	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
43	40	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
44	38	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
45	37	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
46	41	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
47	63	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
48	63	OcOMhCqcABiANYL4QOjupjohIlM=
49	112	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
50	114	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
51	114	0OhC6uS/nbV+UzAjIhojAwRYVg8=
52	117	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
53	117	0OhC6uS/nbV+UzAjIhojAwRYVg8=
54	120	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
55	120	0OhC6uS/nbV+UzAjIhojAwRYVg8=
56	12	HVS76tyNhlC/0QUoDG2c9jWuoVY=
57	112	OcOMhCqcABiANYL4QOjupjohIlM=
58	1	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
59	3	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
60	5	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
61	7	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
62	10	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
63	12	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
64	14	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
65	16	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
66	20	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
67	18	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
68	24	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
69	21	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
70	27	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
71	30	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
72	18	HVS76tyNhlC/0QUoDG2c9jWuoVY=
73	43	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
74	51	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
75	50	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
76	52	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
77	49	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
78	45	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
79	44	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
80	47	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
81	46	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
82	48	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
83	55	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
84	53	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
85	54	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
86	56	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
87	58	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
88	60	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
89	59	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
90	57	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
91	61	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
92	62	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
93	166	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
94	167	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
95	160	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
96	172	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
97	168	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
98	161	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
99	169	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
100	163	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
101	164	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
102	173	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
103	162	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
104	165	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
105	170	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
106	171	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
107	174	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
108	175	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
111	176	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
112	178	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
109	179	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
110	177	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
113	180	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
114	166	OcOMhCqcABiANYL4QOjupjohIlM=
115	167	OcOMhCqcABiANYL4QOjupjohIlM=
116	172	OcOMhCqcABiANYL4QOjupjohIlM=
117	168	OcOMhCqcABiANYL4QOjupjohIlM=
118	160	OcOMhCqcABiANYL4QOjupjohIlM=
119	161	OcOMhCqcABiANYL4QOjupjohIlM=
120	169	OcOMhCqcABiANYL4QOjupjohIlM=
121	163	OcOMhCqcABiANYL4QOjupjohIlM=
122	162	OcOMhCqcABiANYL4QOjupjohIlM=
123	179	OcOMhCqcABiANYL4QOjupjohIlM=
124	178	OcOMhCqcABiANYL4QOjupjohIlM=
125	170	OcOMhCqcABiANYL4QOjupjohIlM=
126	171	OcOMhCqcABiANYL4QOjupjohIlM=
127	173	OcOMhCqcABiANYL4QOjupjohIlM=
128	216	58nLvjR5lLpeOdoWw8+s844W40I=
130	220	58nLvjR5lLpeOdoWw8+s844W40I=
131	222	58nLvjR5lLpeOdoWw8+s844W40I=
133	226	58nLvjR5lLpeOdoWw8+s844W40I=
134	228	58nLvjR5lLpeOdoWw8+s844W40I=
136	232	58nLvjR5lLpeOdoWw8+s844W40I=
139	238	58nLvjR5lLpeOdoWw8+s844W40I=
140	240	58nLvjR5lLpeOdoWw8+s844W40I=
146	252	58nLvjR5lLpeOdoWw8+s844W40I=
148	256	58nLvjR5lLpeOdoWw8+s844W40I=
149	258	58nLvjR5lLpeOdoWw8+s844W40I=
150	260	58nLvjR5lLpeOdoWw8+s844W40I=
151	262	58nLvjR5lLpeOdoWw8+s844W40I=
152	264	58nLvjR5lLpeOdoWw8+s844W40I=
153	16	HVS76tyNhlC/0QUoDG2c9jWuoVY=
154	220	iXM28mUCyno7xAeKhYRHdA3U8KA=
156	216	iXM28mUCyno7xAeKhYRHdA3U8KA=
158	228	iXM28mUCyno7xAeKhYRHdA3U8KA=
159	10	HVS76tyNhlC/0QUoDG2c9jWuoVY=
160	9	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
163	277	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
164	277	HVS76tyNhlC/0QUoDG2c9jWuoVY=
165	11	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
166	13	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
167	282	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
168	284	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
169	15	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
170	287	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
171	17	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
172	290	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
174	19	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
175	293	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
176	290	HVS76tyNhlC/0QUoDG2c9jWuoVY=
178	296	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
180	298	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
181	300	uyx6Kcit1Aa78Mrn7bVgZ7OZn0Y=
182	296	SS+TEFgK2qbnLq7aJQ76A5lJo5Q=
183	300	SS+TEFgK2qbnLq7aJQ76A5lJo5Q=
184	298	SS+TEFgK2qbnLq7aJQ76A5lJo5Q=
185	287	SS+TEFgK2qbnLq7aJQ76A5lJo5Q=
186	293	SS+TEFgK2qbnLq7aJQ76A5lJo5Q=
187	290	SS+TEFgK2qbnLq7aJQ76A5lJo5Q=
190	222	iXM28mUCyno7xAeKhYRHdA3U8KA=
191	252	iXM28mUCyno7xAeKhYRHdA3U8KA=
193	287	HVS76tyNhlC/0QUoDG2c9jWuoVY=
194	293	HVS76tyNhlC/0QUoDG2c9jWuoVY=
196	232	iXM28mUCyno7xAeKhYRHdA3U8KA=
200	238	iXM28mUCyno7xAeKhYRHdA3U8KA=
201	300	HVS76tyNhlC/0QUoDG2c9jWuoVY=
203	262	iXM28mUCyno7xAeKhYRHdA3U8KA=
204	298	HVS76tyNhlC/0QUoDG2c9jWuoVY=
205	33	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
206	34	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
207	35	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
208	36	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
209	37	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
210	38	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
211	39	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
212	40	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
213	41	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
214	42	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
215	43	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
216	44	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
217	45	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
218	46	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
219	47	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
220	48	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
221	49	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
222	50	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
223	51	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
224	52	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
225	53	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
226	54	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
227	55	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
228	56	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
229	57	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
230	58	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
231	59	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
232	60	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
233	61	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
234	62	2Bqx5vdSCVhcpp5LZVhC+s+XC9A=
235	355	58nLvjR5lLpeOdoWw8+s844W40I=
236	355	iXM28mUCyno7xAeKhYRHdA3U8KA=
237	358	6/MbmLdOctrj7ukuFyVm7nWShm4=
241	358	du3mkKKFTlftZrlaoCKeF3xxaZo=
242	260	iXM28mUCyno7xAeKhYRHdA3U8KA=
243	258	iXM28mUCyno7xAeKhYRHdA3U8KA=
244	256	iXM28mUCyno7xAeKhYRHdA3U8KA=
245	296	HVS76tyNhlC/0QUoDG2c9jWuoVY=
246	369	58nLvjR5lLpeOdoWw8+s844W40I=
247	371	58nLvjR5lLpeOdoWw8+s844W40I=
248	373	58nLvjR5lLpeOdoWw8+s844W40I=
249	375	58nLvjR5lLpeOdoWw8+s844W40I=
250	377	58nLvjR5lLpeOdoWw8+s844W40I=
251	379	58nLvjR5lLpeOdoWw8+s844W40I=
252	381	58nLvjR5lLpeOdoWw8+s844W40I=
253	383	58nLvjR5lLpeOdoWw8+s844W40I=
254	385	58nLvjR5lLpeOdoWw8+s844W40I=
255	387	58nLvjR5lLpeOdoWw8+s844W40I=
256	389	58nLvjR5lLpeOdoWw8+s844W40I=
257	391	58nLvjR5lLpeOdoWw8+s844W40I=
258	393	58nLvjR5lLpeOdoWw8+s844W40I=
259	395	58nLvjR5lLpeOdoWw8+s844W40I=
260	397	58nLvjR5lLpeOdoWw8+s844W40I=
261	399	58nLvjR5lLpeOdoWw8+s844W40I=
262	401	58nLvjR5lLpeOdoWw8+s844W40I=
263	403	58nLvjR5lLpeOdoWw8+s844W40I=
264	405	58nLvjR5lLpeOdoWw8+s844W40I=
265	407	58nLvjR5lLpeOdoWw8+s844W40I=
266	409	58nLvjR5lLpeOdoWw8+s844W40I=
267	411	58nLvjR5lLpeOdoWw8+s844W40I=
268	413	58nLvjR5lLpeOdoWw8+s844W40I=
\.


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.addresses (id, order_no, name, complete_address, phone1, phone2, fax, email1, email2, longitude, latitude, created_at, updated_at) FROM stdin;
1	1	Hospital	<strong>Jl. Raya Pasar Minggu No.3A</strong><br/>Pancoran Jakarta Selatan<br/>Jakarta 12780	(021) 797-4071	(021) 797-4070		info@triadipa.com				2024-07-24 04:41:05.91461	2024-07-24 04:41:05.91461
\.


--
-- Data for Name: admins; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.admins (id, email, encrypted_password, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, full_name, created_at, updated_at, role_id) FROM stdin;
2	developer@veritasgroup.com	$2a$12$EdAxSnL20QAnxXZBII569.HMLSGV7dgr3NJXcTCdDo3Mt.EG2fLla	0	\N	\N	\N	\N	Admin Website	2024-07-24 04:41:05.851555	2024-07-24 04:41:05.851555	2
3	admin@triadipa.com	$2a$12$MkUCsk309JqnnRsIjDIdz.yUnV.G4dSneXCAv7TrZ3s7K8ptk5r1u	1	2024-11-08 00:39:28.381037	2024-11-08 00:39:28.381037	203.142.86.243	203.142.86.243	Aryana	2024-11-08 00:38:26.942021	2024-11-08 00:39:28.381746	1
1	admin@veritasgroup.com	$2a$12$YzeMxX31LHRJU/tv1xtCwuNKALoU0TxciFTk.ICTxSx6ZU9Ah9vbG	9	2024-11-11 06:14:07.214718	2024-11-08 00:37:47.854313	125.162.166.82	180.252.84.116	Administrator	2024-07-24 04:41:05.602558	2024-11-11 06:14:07.215716	1
\.


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.appointments (id, full_name, email, phone, message, doctor_id, session_date, session_time, created_at, updated_at) FROM stdin;
1	Fajry Fachriansyah	fajri82@gmail.com	0812-838-45754		2	2024-07-29	15:00 - 16:00	2024-07-26 00:15:57.666599	2024-07-26 00:15:57.666599
2	Fajry Fachriansyah	fajri82@gmail.com	0812-838-45754		1	2024-08-13	09:00 - 12:00	2024-07-29 01:10:49.943075	2024-07-29 01:10:49.943075
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-07-24 04:40:58.643607	2024-07-24 04:40:58.643612
\.


--
-- Data for Name: archive_types; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.archive_types (id, name) FROM stdin;
\.


--
-- Data for Name: archives; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.archives (id, title, short_description, archive_type_id, published_date, status, created_at, updated_at, private, read_only) FROM stdin;
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.articles (id, title, short_description, category_id, published_date, status, video_url, created_at, updated_at, slug, meta_title, meta_description) FROM stdin;
1	{"en": "Breakthrough Discovery in Cancer Research"}	{"en": "New research shows gene therapy may be the key to beating all types of cancers"}	1	2024-07-24 04:41:06.129728	1		2024-07-24 04:41:06.190686	2024-07-24 04:41:06.752135	{"en": "breakthrough-discovery-in-cancer-research"}	{}	{}
2	{"en": "Revolutionary Vaccine Development"}	{"en": "Doctors have found new applications for malaria vaccines"}	1	2024-07-24 04:41:06.294833	1		2024-07-24 04:41:06.322978	2024-07-24 04:41:07.006144	{"en": "revolutionary-vaccine-development"}	{}	{}
3	{"en": "Groundbreaking Study Reveals Surprising Link"}	{"en": "Scientists have discovered that there is a connection between food and the common flu"}	2	2024-07-24 04:41:06.407123	1		2024-07-24 04:41:06.443198	2024-07-24 04:41:07.325618	{"en": "groundbreaking-study-reveals-surprising-link"}	{}	{}
4	{"en": "Global Collaboration in Medicine"}	{"en": "European countries are working together on a new global initiative in the distribution of medicine in developing countries"}	2	2024-07-24 04:41:06.61098	1		2024-07-24 04:41:06.634018	2024-07-24 04:41:07.556564	{"en": "global-collaboration-in-medicine"}	{}	{}
\.


--
-- Data for Name: banner_sections; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.banner_sections (id, name, style, size) FROM stdin;
\.


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.banners (id, order_no, title, description, banner_section_id, created_at, updated_at, orientation) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.categories (id, name) FROM stdin;
1	{"en": "Medical & Healthcare"}
2	{"en": "Nutirion / Dietary"}
3	{"en": "Obesity / Weight Loss"}
4	{"en": "Supplements"}
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.contacts (id, name, email, phone, subject, message, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.doctors (id, email, slug, str_no, profesional_name, full_name, title, phone, alumni, created_at, updated_at) FROM stdin;
6	adiatmo.pratomo@triadipa.com	adiatmo-pratomo	STR-500020300032	Adiatmo Pratomo, Sp.PD	Adiatmo Pratomo	Internal Medicine Specialist	1-274-814-4697		2024-09-10 09:15:30.723119	2024-10-21 04:06:20.215151
5	ladiswara@triadipa.com	ladiswara	STR-500020300032	Ladiswara, Sp.PD	Ladiswara	Internal Medicine Specialist	551.681.5660		2024-09-10 09:15:30.576551	2024-10-21 04:05:36.127358
21	satya.hanura@triadipa.com	satya-hanura	STR-500020300032	Satya Hanura, Sp.N	Satya Hanura	Neurologist Specialist	772-786-8582 x583		2024-09-10 09:15:32.704062	2024-10-21 04:07:22.599677
13	tri.dewo@triadipa.com	tri-dewo-asmoro	STR-500020300032	Tri Dewo Asmoro, Sp.B	Tri Dewo Asmoro	General Surgeon	(716)780-0473 x94210		2024-09-10 09:15:31.830967	2024-10-21 04:09:51.170041
11	aulia.zesario@triadipa.com	aulia-zesario	STR-500020300032	Aulia Zesario, Sp.OG	Aulia Zesario	Obstetrician Gynecologist	560.670.3254 x013		2024-09-10 09:15:31.541728	2024-10-21 04:07:02.137089
20	ronny.yoesyanto@triadipa.com	ronny-yoesyanto	STR-500020300032	Ronny Yoesyanto, Sp.S	Ronny Yoesyanto	Neurologist Specialist	945-692-4007		2024-09-10 09:15:32.622642	2024-10-21 04:08:15.3137
23	siti.masmuah@triadipa.com	siti-masmu-ah	STR-500020300032	Siti Masmu'ah, Sp.JP	Siti Masmu'ah	Cardiovascular Specialist	(215)567-7493 x0264		2024-09-10 09:15:33.054044	2024-10-21 04:07:52.833803
19	evamfitri@triadipa.com	eva-miranda-fitri	STR-500020300032	Eva Miranda Fitri, Sp.THT-KLK	Eva Miranda Fitri	ENT Specialist	1-677-497-9578		2024-09-10 09:15:32.537267	2024-10-21 04:08:38.431934
26	anny-tri-dewo@triadipa.com	anny-tri-dewo	STR-500020300032	Anny Tri Dewo, Drg. Sp.KGA	Anny Tri Dewo	Dentist	(281)554-6871		2024-09-10 09:15:33.34088	2024-10-21 04:11:52.360952
27	dinda.lubis@triadipa.com	dinda-putri-husni-lubis	STR-500020300032	Dinda Putri Husni Lubis, Drg. MM	Dinda Putri Husni Lubis	Dentist	1-842-862-9844 x5085		2024-09-10 09:15:33.394996	2024-10-21 04:10:40.490429
9	irene.akasia@triadipa.com	irene-akasia-oktariana	STR-500020300032	Irene Akasia Oktariana, Sp.A	Irene Akasia Oktariana	Pediatric Specialist	795-240-8436 x654		2024-09-10 09:15:31.361625	2024-10-16 22:24:02.480999
17	dewo.aksoro@triadipa.com	dewi-aksoro	STR-500020300032	Dewo Aksoro, Sp.THT-KL	Dewi Aksoro	ENT Specialist	527.666.0397		2024-09-10 09:15:32.43976	2024-10-21 04:12:37.504165
4	budiman@triadipa.com	budiman-d	STR-500020300032	Budiman D, Sp.PD-KEMD	Budiman D	Internal Medicine Specialist	1-588-552-0064 x048		2024-09-10 09:15:30.48538	2024-10-21 04:06:02.613679
3	pradana.soewondo@triadipa.com	pradana-soewondo	STR-500020300032	Pradana Soewondo, Sp.PD–KEMD	Pradana Soewondo	Internal Medicine Specialist	(445)636-4058 x515		2024-09-10 09:15:30.317599	2024-10-21 04:05:16.682645
8	nurifah@triadipa.com	nurifah	STR-500020300032	Nurifah, Sp.A	Nurifah	Pediatric Specialist	1-934-237-0203		2024-09-10 09:15:31.262119	2024-10-21 04:15:25.08454
28	nirwan.lubis@triadipa.com	nirwan-husni-lubis	STR-500020300032	Nirwan Husni Lubis, Drg. Sp.BM-MARS	Nirwan Husni Lubis	Dentist	1-789-734-2174 x552		2024-09-10 09:15:33.476598	2024-10-21 04:11:08.692814
35	aziz-djunaidi@triadipa.com	aziz-djunaidi	STR-500020300032	Aziz Djunaidi, Sp.KFR	Aziz Djunaidi	Physiotherapist	1-464-225-2600 x940		2024-09-10 09:15:34.270448	2024-10-21 04:14:20.155895
32	indro@triadipa.com	indro-poerwanto	STR-500020300032	Indro Poerwanto, Sp.KK	Indro Poerwanto	Dermatologist	747.346.7678		2024-09-10 09:15:33.976517	2024-10-21 04:14:53.574146
31	sumarini@triadipa.com	sumarini-markoem	STR-500020300032	Sumarini Markoem, Sp.M	Sumarini Markoem	Ophthalmologist	(979)904-3897		2024-09-10 09:15:33.848218	2024-10-21 04:12:06.841164
18	dini.widiarni@triadipa.com	dini-widiarni	STR-500020300032	Dini Widiarni P, Sp.THT-KLK	Dini Widiarni	ENT Specialist	1-630-506-4409		2024-09-10 09:15:32.491573	2024-10-21 04:12:54.815866
25	anindya@triadipa.com	anindya-athalia-putri-asmoro	STR-500020300032	Anindya Athalia Putri Asmoro, Drg. MM-MARS	Anindya Athalia Putri Asmoro	Dentist	721-908-4367 x1690		2024-09-10 09:15:33.271187	2024-10-21 04:13:03.189385
22	ahdinar.rosdiana@triadipa.com	ahdinar-rosdiana	STR-500020300032	Ahdinar Rosdiana Dewi, Sp.N	Ahdinar Rosdiana	Neurologist Specialist	(690)390-5784 x99150		2024-09-10 09:15:32.966421	2024-10-21 04:14:37.332134
30	andreasnoerdin@triadipa.com	andreas-noerdin	STR-500020300032	Andreas Noerdin, Sp.M	Andreas Noerdin	Ophthalmologist	(269)602-4855 x1335		2024-09-10 09:15:33.73544	2024-10-21 04:14:05.407881
15	syamsu.alam@triadipa.com	syamsu-alam	STR-500020300032	Syamsu Alam, Sp.B	Syamsu Alam	General Surgeon	(740)735-6862		2024-09-10 09:15:32.172359	2024-10-21 04:15:56.349208
7	meryl.pulcheria@triadipa.com	meryl-pulcheria	STR-500020300032	Meryl Pulcheria, Sp.PD	Meryl Pulcheria	Internal Medicine Specialist	761-270-0109 x665		2024-09-10 09:15:30.880642	2024-10-21 04:15:13.381849
24	fidiaji@triadipa.com	fidiaji-hiltono-santoso	STR-500020300032	R. Fidiaji Hiltono Santoso, Sp.PD-KKV	Fidiaji Hiltono Santoso	Cardiovascular Specialist	938.591.7868 x61829		2024-09-10 09:15:33.178254	2024-10-21 04:15:41.551461
33	chasanah@triadipa.com	chasanah-gatam-joesoef	STR-500020300032	Chasanah Gatam Joesoef, Sp.KK	Chasanah Gatam Joesoef	Dermatologist	(514)998-6778 x1192		2024-09-10 09:15:34.084628	2024-10-16 22:22:46.811502
10	ari.kusuma@triadipa.com	ari-kusuma-januarto	STR-500020300032	Ari Kusuma Januarto, Sp.OG	Ari Kusuma Januarto	Obstetrician Gynecologist	452.603.6659		2024-09-10 09:15:31.457028	2024-10-16 22:24:12.077553
16	nanda.perdana@triadipa.com	nanda-perdana	STR-500020300032	M. F Nanda Perdana, Sp.OT	Nanda Perdana	Orthopedy Specialist	(371)798-1126		2024-09-10 09:15:32.34413	2024-10-16 22:23:52.168037
29	syaifullah@triadipa.com	muhammad-syaifullah	STR-500020300032	Muhammad Syaifullah, Sp.P	Muhammad Syaifullah	Pulmonologist Specialist	691.698.0894		2024-09-10 09:15:33.654399	2024-10-21 04:11:27.478696
14	harry.sugiarto@triadipa.com	harry-sugiarto	STR-500020300032	Harry Sugiarto, Sp.B	Harry Sugiarto	General Surgeon	418.918.3565		2024-09-10 09:15:32.070132	2024-10-21 04:16:30.588376
34	reza.edward@triadipa.com	reza-edward	STR-500020300032	Reza Edward, Sp.DV	Reza Edward	Dermatologist	1-857-215-5548 x392		2024-09-10 09:15:34.146809	2024-10-21 04:06:41.627281
12	msyahanwar@triadipa.com	muhammad-syah-reza-anwar	STR-500020300032	Muhammad Syah Reza Anwar, Sp.OG	Muhammad Syah Reza Anwar	Obstetrician Gynecologist	1-302-736-7975		2024-09-10 09:15:31.6678	2024-10-21 04:12:21.279492
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.events (id, date, title, description, created_at, updated_at) FROM stdin;
1	2024-08-01	Burning the entire Hospital specifically start the fire on Emergency room		2024-07-30 05:43:34.122042	2024-07-30 19:40:14.245545
2	2024-08-02	Investing in Ibu Kota Nusantara (IKN): Indonesia’s New Capital City		2024-07-30 19:40:56.785415	2024-07-30 19:40:56.785415
\.


--
-- Data for Name: facilities; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.facilities (id, name, slug, headline, description, description1, description2, created_at, updated_at) FROM stdin;
1	24 HR EMERGENCY SERVICES	24-hr-emergency-services	{"en": "Around the clock emergency services to treat any illnesses, or major or minor injuries."}	{"en": "\\r\\n\\t\\t<p>The 24-hour emergency services at Tria Dipa Hospital are committed to respond swiftly and effectively to unforeseen medical crises. We operate around the clock and act as the frontline in medical emergencies, providing immediate care to individuals facing life-threatening situations. Our emergency services are also available to patients who need to be evaluated by a physician beyond regular examination hours.</p>\\r\\n\\t\\t<p>Our team of dedicated healthcare professionals, including doctors, nurses, and support staff, are trained to handle a wide range of emergencies. Their expertise helps them make quick decisions, communicate effectively, and have the ability to prioritize cases based on urgency. This multidisciplinary approach ensures that patients receive the timely and comprehensive care needed during critical moments.</p>\\r\\n\\t\\t<p>Emergency services are crucial for those experiencing sudden and severe health issues, from trauma and accidents to acute illnesses. Having the ability to stabilize patients in an emergency helps lay the foundation for further treatment and recovery. Our emergency services are equipped with:</p>\\r\\n\\t\\t<ul>\\r\\n\\t\\t\\t<li>Nurse Station</li>\\r\\n\\t\\t\\t<li>Waiting area</li>\\r\\n\\t\\t\\t<li>Restroom</li>\\r\\n\\t\\t\\t<li>Examination Rooms</li>\\r\\n\\t\\t\\t<li>Trauma Rooms</li>\\r\\n\\t\\t\\t<li>Ambulance Bay</li>\\r\\n\\t\\t</ul>\\r\\n\\t"}	{}	{}	2024-07-24 04:41:07.025017	2024-10-01 01:37:34.639753
6	REHABILITATION	rehabilitation	{"en": "Rehabilitation services for in-patient and out-patient care."}	{"en": "\\r\\n\\t\\t<p>Rehabilitation services within Tria Dipa Hospital are focused on the restoration of physical, mental, and emotional well-being for individuals facing a range of health challenges. These services are given to patients recovering from surgeries, injuries, or chronic conditions, offering comprehensive programs designed to enhance functionality, independence, and overall quality of life.</p>\\r\\n\\t\\t<p>Our first step is to bring together a team of healthcare professionals with diverse expertise. Physiatrists, physical therapists, occupational therapists, and other specialists collaborate to create personalized rehabilitation plans tailored to the needs of each patient. This results in a patient-centered approach to recovery.</p>\\r\\n\\t\\t<p>The psychological and emotional well-being of our patients are important components of rehabilitation services, and our counselors and therapists are available both for in-patient and out-patient care.</p>\\r\\n\\t"}	{}	{}	2024-07-24 04:41:07.658921	2024-09-20 04:21:10.212736
4	MEDICAL CHECK UP	medical-check-up	{"en": "Hassle-free medical check ups to help you with prevention and immediate care."}	{"en": "\\r\\n\\t\\t<p>Medical check-ups serve as proactive measures to detect and address potential health issues before they escalate. At Tria Dipa Hospital, our healthcare professionals use these examinations to advise on preventive healthcare, early intervention, and overall well-being.</p>\\r\\n\\t\\t<p>During these medical check-ups, our physicians also address both the mental and emotional aspects of our patients' well-being. Our comprehensive check-ups include assessments of mental health, stress levels, and lifestyle factors and gives a complete understanding of their overall health status.Our healthcare professionals provide guidance on healthy lifestyle choices, nutrition, exercise, and stress management. This educational component allows our patients to make informed decisions about their health.</p>\\r\\n\\t"}	{}	{}	2024-07-24 04:41:07.404243	2024-09-20 04:19:58.340021
5	OPERATION ROOM	operation-room	{"en": "State of the art operation rooms for all kinds of surgical procedures."}	{"en": "\\r\\n\\t\\t<p>The Operating rooms in Tria Dipa Hospital are the epicenters of surgical precision, where our medical teams orchestrate intricate procedures with the utmost care and expertise. These specialized environments are designed to provide a sterile, controlled setting that optimizes conditions for successful surgeries, ensuring the safety and well-being of patients undergoing various medical interventions.</p>\\r\\n\\t\\t<p>The layout and design of our operating rooms are planned to accommodate the specific needs of surgical procedures. Sterility is very important, and everything from the ventilation system to the materials used in construction is chosen to minimize the risk of infection. We are equipped with advanced surgical technology.</p>\\r\\n\\t\\t<p>Surgeons, anesthesiologists, nurses, and technicians work seamlessly to execute precise and complex procedures.</p>\\r\\n\\t"}	{}	{}	2024-07-24 04:41:07.570751	2024-09-20 04:20:42.516398
3	PHARMACY	pharmacy	{"en": "Our pharmacists are here to help our patients sort their medicine and advise them on their use."}	{"en": "\\r\\n\\t\\t<p>Our pharmacy is the central hub for medication management and we make sure that patients receive safe and effective pharmaceutical interventions. From prescription processing to drug dispensing and patient education, the pharmacy is a critical component to our patient care.</p>\\r\\n\\t\\t<p>The pharmacists and pharmacy technicians at Tria Dipa Hospital meticulously review each prescription, verify dosage, potential interactions, and patient-specific considerations. This not only safeguards against errors but also contributes to the hospital's commitment to patient safety and quality care.</p>\\r\\n\\t\\t<p>Our pharmacy works closely with other departments in the hospital, to develop and implement medication regimens tailored to individual patient needs and ensure that medications are aligned with their treatment plans. We also make sure our pharmacy provides a comprehensive patient education. Our pharmacists educate patients about their prescribed medications, including proper administration, potential side effects, and the importance of adherence.</p>\\r\\n\\t"}	{}	{}	2024-07-24 04:41:07.333718	2024-10-01 01:37:54.543842
2	PATIENT ROOMS	patient-rooms	{"en": "Comfortable patient rooms that facilitate an enjoyable stay while you heal."}	{"en": "\\r\\n\\t\\t<p>Tria Dipa Hospital patient rooms serve as more than just spaces for medical care, they are sanctuaries where healing and comfort intertwine. Designed with the well-being of patients in mind, these rooms play a crucial role in fostering an environment for recovery. From the layout to the amenities, it is crafted to provide not only the necessary medical care but also a sense of tranquility that aids in the healing process.</p>\\r\\n\\t\\t<p>The patient room experience emphasizes privacy and comfort. We prioritize creating individual spaces where patients can receive personalized care without compromising their confidentiality. This dedication to privacy contributes to a peaceful atmosphere that encourages rest and recovery.</p>\\r\\n\\t\\t<p>The design of patient rooms incorporates a welcoming atmosphere for our patients to have visitors during their stay. Our rooms are equipped with state-of-the-art medical technology to ensure that healthcare professionals have the tools they need. Our patient rooms also have interactive entertainment systems to bedside controls for lighting and temperature, to help our patients stay comfortable during their stay.</p>\\r\\n\\t"}	{}	{}	2024-07-24 04:41:07.191376	2024-10-01 01:47:02.336638
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) FROM stdin;
\.


--
-- Data for Name: institutions; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.institutions (id, name, slug, headline, description, description1, description2, created_at, updated_at) FROM stdin;
2	X HOSPITAL	x-hospital	{"en": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis."}	{"en": "<p>Reiciendis asperiores ullam iure occaecati excepturi sapiente. Ducimus itaque dolor est dolorem molestias maiores impedit possimus. Magni numquam ratione adipisci voluptatum voluptatibus iure ut ullam. Excepturi quisquam assumenda harum eum aliquam. Impedit sit quos accusantium modi laboriosam. Ea minus quia laborum numquam enim nobis. Aliquid nesciunt eum nobis occaecati velit. Aut sit blanditiis optio voluptatibus voluptates repellat eveniet ipsam. Veritatis aliquam dolores dolorem eveniet. Perspiciatis iste dolores maiores nemo debitis. Quis nesciunt ea alias quaerat repellat. Ullam nihil necessitatibus nemo perferendis ad sapiente animi eveniet. Alias natus dolore architecto dolorum. Cumque quaerat facere voluptas voluptatum quae consectetur. Nobis reprehenderit deserunt nulla tenetur repellat ut. Rem eum facere iusto molestias delectus fuga. Earum quasi suscipit quod modi. Natus odio quidem amet iure voluptates ducimus reprehenderit ipsum. Voluptas consequuntur cumque impedit suscipit deserunt excepturi rem. Sed consectetur explicabo unde occaecati et dignissimos voluptas laudantium. Totam nam laborum atque ratione excepturi aliquam.</p><p>Minima at voluptas totam debitis. Est eius eum rerum laudantium. Ea dolor impedit doloribus atque ex sint. Quis ducimus ipsam sunt ratione deleniti unde. Inventore accusamus ipsam officiis est error. Facilis magni modi qui adipisci magnam. Quae quia voluptatibus amet sunt asperiores adipisci ipsam quos. Suscipit aspernatur blanditiis iure ducimus maxime. Iste ex aspernatur aperiam ratione quas. Laborum sint tempore alias at facere dicta. Sapiente nihil ducimus voluptatem eligendi tenetur. Odit cumque sunt repellendus rerum. Est rerum at provident quod quidem iste corrupti asperiores. Itaque accusamus nobis ipsa iste enim excepturi veniam. Odit dolorum corrupti eos doloribus deserunt quas. Saepe modi voluptate fugit harum deserunt laborum eos corrupti. Enim perspiciatis quidem corporis distinctio excepturi. Earum cupiditate assumenda porro asperiores facilis nemo. Deleniti distinctio rem odit tempore fugiat non possimus. Rem porro inventore autem consequuntur asperiores quos quod enim.</p>"}	{"en": "<p>Reiciendis asperiores ullam iure occaecati excepturi sapiente. Ducimus itaque dolor est dolorem molestias maiores impedit possimus. Magni numquam ratione adipisci voluptatum voluptatibus iure ut ullam. Excepturi quisquam assumenda harum eum aliquam. Impedit sit quos accusantium modi laboriosam. Ea minus quia laborum numquam enim nobis. Aliquid nesciunt eum nobis occaecati velit. Aut sit blanditiis optio voluptatibus voluptates repellat eveniet ipsam. Veritatis aliquam dolores dolorem eveniet. Perspiciatis iste dolores maiores nemo debitis. Quis nesciunt ea alias quaerat repellat. Ullam nihil necessitatibus nemo perferendis ad sapiente animi eveniet. Alias natus dolore architecto dolorum. Cumque quaerat facere voluptas voluptatum quae consectetur. Nobis reprehenderit deserunt nulla tenetur repellat ut. Rem eum facere iusto molestias delectus fuga. Earum quasi suscipit quod modi. Natus odio quidem amet iure voluptates ducimus reprehenderit ipsum. Voluptas consequuntur cumque impedit suscipit deserunt excepturi rem. Sed consectetur explicabo unde occaecati et dignissimos voluptas laudantium. Totam nam laborum atque ratione excepturi aliquam.</p><p>Minima at voluptas totam debitis. Est eius eum rerum laudantium. Ea dolor impedit doloribus atque ex sint. Quis ducimus ipsam sunt ratione deleniti unde. Inventore accusamus ipsam officiis est error. Facilis magni modi qui adipisci magnam. Quae quia voluptatibus amet sunt asperiores adipisci ipsam quos. Suscipit aspernatur blanditiis iure ducimus maxime. Iste ex aspernatur aperiam ratione quas. Laborum sint tempore alias at facere dicta. Sapiente nihil ducimus voluptatem eligendi tenetur. Odit cumque sunt repellendus rerum. Est rerum at provident quod quidem iste corrupti asperiores. Itaque accusamus nobis ipsa iste enim excepturi veniam. Odit dolorum corrupti eos doloribus deserunt quas. Saepe modi voluptate fugit harum deserunt laborum eos corrupti. Enim perspiciatis quidem corporis distinctio excepturi. Earum cupiditate assumenda porro asperiores facilis nemo. Deleniti distinctio rem odit tempore fugiat non possimus. Rem porro inventore autem consequuntur asperiores quos quod enim.</p>"}	{"en": "<p>Reiciendis asperiores ullam iure occaecati excepturi sapiente. Ducimus itaque dolor est dolorem molestias maiores impedit possimus. Magni numquam ratione adipisci voluptatum voluptatibus iure ut ullam. Excepturi quisquam assumenda harum eum aliquam. Impedit sit quos accusantium modi laboriosam. Ea minus quia laborum numquam enim nobis. Aliquid nesciunt eum nobis occaecati velit. Aut sit blanditiis optio voluptatibus voluptates repellat eveniet ipsam. Veritatis aliquam dolores dolorem eveniet. Perspiciatis iste dolores maiores nemo debitis. Quis nesciunt ea alias quaerat repellat. Ullam nihil necessitatibus nemo perferendis ad sapiente animi eveniet. Alias natus dolore architecto dolorum. Cumque quaerat facere voluptas voluptatum quae consectetur. Nobis reprehenderit deserunt nulla tenetur repellat ut. Rem eum facere iusto molestias delectus fuga. Earum quasi suscipit quod modi. Natus odio quidem amet iure voluptates ducimus reprehenderit ipsum. Voluptas consequuntur cumque impedit suscipit deserunt excepturi rem. Sed consectetur explicabo unde occaecati et dignissimos voluptas laudantium. Totam nam laborum atque ratione excepturi aliquam.</p><p>Minima at voluptas totam debitis. Est eius eum rerum laudantium. Ea dolor impedit doloribus atque ex sint. Quis ducimus ipsam sunt ratione deleniti unde. Inventore accusamus ipsam officiis est error. Facilis magni modi qui adipisci magnam. Quae quia voluptatibus amet sunt asperiores adipisci ipsam quos. Suscipit aspernatur blanditiis iure ducimus maxime. Iste ex aspernatur aperiam ratione quas. Laborum sint tempore alias at facere dicta. Sapiente nihil ducimus voluptatem eligendi tenetur. Odit cumque sunt repellendus rerum. Est rerum at provident quod quidem iste corrupti asperiores. Itaque accusamus nobis ipsa iste enim excepturi veniam. Odit dolorum corrupti eos doloribus deserunt quas. Saepe modi voluptate fugit harum deserunt laborum eos corrupti. Enim perspiciatis quidem corporis distinctio excepturi. Earum cupiditate assumenda porro asperiores facilis nemo. Deleniti distinctio rem odit tempore fugiat non possimus. Rem porro inventore autem consequuntur asperiores quos quod enim.</p>"}	2024-07-24 04:41:08.102116	2024-07-24 04:41:09.48776
3	X WELLNESS CENTER	x-wellness-center	{"en": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis."}	{"en": "<p>Culpa asperiores facilis voluptatibus assumenda voluptatum. Facilis architecto occaecati fugiat ipsum. Non exercitationem officia repellat perferendis commodi. Molestiae et eaque ratione animi praesentium sint. Ea blanditiis cupiditate optio debitis laborum voluptatem. Explicabo ratione possimus tempora quis illum tenetur eveniet nulla. Itaque officia voluptatem nam dolorem nobis. Autem sit fugit doloribus est ipsum dolorum. Molestiae corrupti quis quos tempore ex possimus. Sed praesentium minima ipsam dicta ratione molestias deleniti unde. Tenetur amet veniam natus inventore eius ullam quis ipsam. Repellendus expedita magni pariatur possimus. Voluptatem voluptates est corrupti dignissimos nesciunt ad aliquid natus. Nisi alias vero fuga vel. Pariatur ullam maxime sunt natus voluptates exercitationem corporis veritatis. Nisi nemo autem fugiat perferendis. Fugit eveniet facere quisquam ut nulla enim voluptas sunt. Doloremque minus occaecati labore iure earum. Quisquam aspernatur recusandae ipsam provident.</p><p>Dolor accusantium earum molestias voluptate quos eum culpa ipsa. Quod sit recusandae praesentium voluptate. Corrupti ratione eos distinctio odio. Quaerat quis nam veniam provident autem totam non aperiam. Ipsa modi quam hic iusto deserunt omnis error. Alias voluptate dolore voluptatem enim consequuntur. Expedita sint similique libero ad itaque doloribus dolor perferendis. Architecto alias cum corporis nulla consequatur assumenda quidem. Soluta culpa earum tempora nulla reprehenderit. Dolor doloribus beatae illum consequuntur optio. Ipsam mollitia accusamus minus ea omnis id nobis neque. Quasi consectetur quos modi numquam. Cum in quam ratione id. Neque eos architecto rerum optio consequatur excepturi minima tenetur. Consectetur saepe nam voluptatum nisi fugiat iure molestiae. Beatae maiores reiciendis iste voluptas pariatur libero qui occaecati. Magni inventore quasi itaque reprehenderit incidunt laudantium culpa deleniti. Laudantium tenetur praesentium quo magni. Explicabo doloribus ipsa facilis quaerat possimus sequi. Officia adipisci asperiores libero id ab delectus temporibus.</p>"}	{"en": "<p>Culpa asperiores facilis voluptatibus assumenda voluptatum. Facilis architecto occaecati fugiat ipsum. Non exercitationem officia repellat perferendis commodi. Molestiae et eaque ratione animi praesentium sint. Ea blanditiis cupiditate optio debitis laborum voluptatem. Explicabo ratione possimus tempora quis illum tenetur eveniet nulla. Itaque officia voluptatem nam dolorem nobis. Autem sit fugit doloribus est ipsum dolorum. Molestiae corrupti quis quos tempore ex possimus. Sed praesentium minima ipsam dicta ratione molestias deleniti unde. Tenetur amet veniam natus inventore eius ullam quis ipsam. Repellendus expedita magni pariatur possimus. Voluptatem voluptates est corrupti dignissimos nesciunt ad aliquid natus. Nisi alias vero fuga vel. Pariatur ullam maxime sunt natus voluptates exercitationem corporis veritatis. Nisi nemo autem fugiat perferendis. Fugit eveniet facere quisquam ut nulla enim voluptas sunt. Doloremque minus occaecati labore iure earum. Quisquam aspernatur recusandae ipsam provident.</p><p>Dolor accusantium earum molestias voluptate quos eum culpa ipsa. Quod sit recusandae praesentium voluptate. Corrupti ratione eos distinctio odio. Quaerat quis nam veniam provident autem totam non aperiam. Ipsa modi quam hic iusto deserunt omnis error. Alias voluptate dolore voluptatem enim consequuntur. Expedita sint similique libero ad itaque doloribus dolor perferendis. Architecto alias cum corporis nulla consequatur assumenda quidem. Soluta culpa earum tempora nulla reprehenderit. Dolor doloribus beatae illum consequuntur optio. Ipsam mollitia accusamus minus ea omnis id nobis neque. Quasi consectetur quos modi numquam. Cum in quam ratione id. Neque eos architecto rerum optio consequatur excepturi minima tenetur. Consectetur saepe nam voluptatum nisi fugiat iure molestiae. Beatae maiores reiciendis iste voluptas pariatur libero qui occaecati. Magni inventore quasi itaque reprehenderit incidunt laudantium culpa deleniti. Laudantium tenetur praesentium quo magni. Explicabo doloribus ipsa facilis quaerat possimus sequi. Officia adipisci asperiores libero id ab delectus temporibus.</p>"}	{"en": "<p>Culpa asperiores facilis voluptatibus assumenda voluptatum. Facilis architecto occaecati fugiat ipsum. Non exercitationem officia repellat perferendis commodi. Molestiae et eaque ratione animi praesentium sint. Ea blanditiis cupiditate optio debitis laborum voluptatem. Explicabo ratione possimus tempora quis illum tenetur eveniet nulla. Itaque officia voluptatem nam dolorem nobis. Autem sit fugit doloribus est ipsum dolorum. Molestiae corrupti quis quos tempore ex possimus. Sed praesentium minima ipsam dicta ratione molestias deleniti unde. Tenetur amet veniam natus inventore eius ullam quis ipsam. Repellendus expedita magni pariatur possimus. Voluptatem voluptates est corrupti dignissimos nesciunt ad aliquid natus. Nisi alias vero fuga vel. Pariatur ullam maxime sunt natus voluptates exercitationem corporis veritatis. Nisi nemo autem fugiat perferendis. Fugit eveniet facere quisquam ut nulla enim voluptas sunt. Doloremque minus occaecati labore iure earum. Quisquam aspernatur recusandae ipsam provident.</p><p>Dolor accusantium earum molestias voluptate quos eum culpa ipsa. Quod sit recusandae praesentium voluptate. Corrupti ratione eos distinctio odio. Quaerat quis nam veniam provident autem totam non aperiam. Ipsa modi quam hic iusto deserunt omnis error. Alias voluptate dolore voluptatem enim consequuntur. Expedita sint similique libero ad itaque doloribus dolor perferendis. Architecto alias cum corporis nulla consequatur assumenda quidem. Soluta culpa earum tempora nulla reprehenderit. Dolor doloribus beatae illum consequuntur optio. Ipsam mollitia accusamus minus ea omnis id nobis neque. Quasi consectetur quos modi numquam. Cum in quam ratione id. Neque eos architecto rerum optio consequatur excepturi minima tenetur. Consectetur saepe nam voluptatum nisi fugiat iure molestiae. Beatae maiores reiciendis iste voluptas pariatur libero qui occaecati. Magni inventore quasi itaque reprehenderit incidunt laudantium culpa deleniti. Laudantium tenetur praesentium quo magni. Explicabo doloribus ipsa facilis quaerat possimus sequi. Officia adipisci asperiores libero id ab delectus temporibus.</p>"}	2024-07-24 04:41:08.245207	2024-07-24 04:41:09.706012
4	X INSTITUTION	x-institution	{"en": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis."}	{"en": "<p>Aliquid voluptate sunt soluta natus. Aliquid vel similique accusantium quo quam veniam. Quia voluptates eligendi aspernatur quibusdam reprehenderit facilis repellat. Consectetur quas autem molestiae reprehenderit nulla iste rem omnis. Explicabo asperiores ex voluptatum sunt similique. Laboriosam provident excepturi ratione delectus nisi voluptatibus. Delectus dolore enim totam similique expedita. Quo at eos doloribus a porro consequuntur maiores reprehenderit. Commodi praesentium doloribus similique dolorum tempora nobis excepturi veritatis. Eligendi temporibus impedit sed aspernatur. Asperiores saepe id cupiditate earum quod corporis ipsum. Pariatur impedit dolor minima reprehenderit. Blanditiis tempora ut recusandae quasi unde. Maxime aut quibusdam alias explicabo temporibus ex dignissimos facilis. Explicabo occaecati alias et iure porro aperiam excepturi. Adipisci cumque facilis perspiciatis odit. Officia vitae perferendis cumque iusto quas assumenda temporibus facilis. Omnis voluptas consequuntur excepturi magni tenetur necessitatibus architecto explicabo. Distinctio quae esse saepe non totam perspiciatis. Dicta suscipit quibusdam officia sit.</p><p>Necessitatibus sed corporis possimus enim delectus voluptatum recusandae velit. Porro sequi amet facere quod debitis expedita corporis. Dolor quae officia blanditiis dolores autem eos debitis. Sit nostrum ratione velit consectetur nesciunt necessitatibus praesentium at. Nam soluta alias recusandae debitis impedit quasi odit. Quam quidem adipisci cum aperiam itaque inventore. Assumenda labore sit numquam temporibus. In assumenda perspiciatis corrupti placeat inventore. In ab tempore corrupti maxime. Esse incidunt at ullam nulla dolore laborum eaque aspernatur. Quod inventore perspiciatis distinctio deserunt pariatur vero quasi maiores. Veniam suscipit qui omnis inventore odio. Cum quos veritatis fugiat aliquam earum delectus. Quidem laudantium optio in veritatis natus dolor dolore. Atque totam odio voluptate illo in consequuntur cumque nemo. In dolore facere cumque harum quis voluptas. Accusamus fugit sed perspiciatis adipisci culpa eum.</p>"}	{"en": "<p>Aliquid voluptate sunt soluta natus. Aliquid vel similique accusantium quo quam veniam. Quia voluptates eligendi aspernatur quibusdam reprehenderit facilis repellat. Consectetur quas autem molestiae reprehenderit nulla iste rem omnis. Explicabo asperiores ex voluptatum sunt similique. Laboriosam provident excepturi ratione delectus nisi voluptatibus. Delectus dolore enim totam similique expedita. Quo at eos doloribus a porro consequuntur maiores reprehenderit. Commodi praesentium doloribus similique dolorum tempora nobis excepturi veritatis. Eligendi temporibus impedit sed aspernatur. Asperiores saepe id cupiditate earum quod corporis ipsum. Pariatur impedit dolor minima reprehenderit. Blanditiis tempora ut recusandae quasi unde. Maxime aut quibusdam alias explicabo temporibus ex dignissimos facilis. Explicabo occaecati alias et iure porro aperiam excepturi. Adipisci cumque facilis perspiciatis odit. Officia vitae perferendis cumque iusto quas assumenda temporibus facilis. Omnis voluptas consequuntur excepturi magni tenetur necessitatibus architecto explicabo. Distinctio quae esse saepe non totam perspiciatis. Dicta suscipit quibusdam officia sit.</p><p>Necessitatibus sed corporis possimus enim delectus voluptatum recusandae velit. Porro sequi amet facere quod debitis expedita corporis. Dolor quae officia blanditiis dolores autem eos debitis. Sit nostrum ratione velit consectetur nesciunt necessitatibus praesentium at. Nam soluta alias recusandae debitis impedit quasi odit. Quam quidem adipisci cum aperiam itaque inventore. Assumenda labore sit numquam temporibus. In assumenda perspiciatis corrupti placeat inventore. In ab tempore corrupti maxime. Esse incidunt at ullam nulla dolore laborum eaque aspernatur. Quod inventore perspiciatis distinctio deserunt pariatur vero quasi maiores. Veniam suscipit qui omnis inventore odio. Cum quos veritatis fugiat aliquam earum delectus. Quidem laudantium optio in veritatis natus dolor dolore. Atque totam odio voluptate illo in consequuntur cumque nemo. In dolore facere cumque harum quis voluptas. Accusamus fugit sed perspiciatis adipisci culpa eum.</p>"}	{"en": "<p>Aliquid voluptate sunt soluta natus. Aliquid vel similique accusantium quo quam veniam. Quia voluptates eligendi aspernatur quibusdam reprehenderit facilis repellat. Consectetur quas autem molestiae reprehenderit nulla iste rem omnis. Explicabo asperiores ex voluptatum sunt similique. Laboriosam provident excepturi ratione delectus nisi voluptatibus. Delectus dolore enim totam similique expedita. Quo at eos doloribus a porro consequuntur maiores reprehenderit. Commodi praesentium doloribus similique dolorum tempora nobis excepturi veritatis. Eligendi temporibus impedit sed aspernatur. Asperiores saepe id cupiditate earum quod corporis ipsum. Pariatur impedit dolor minima reprehenderit. Blanditiis tempora ut recusandae quasi unde. Maxime aut quibusdam alias explicabo temporibus ex dignissimos facilis. Explicabo occaecati alias et iure porro aperiam excepturi. Adipisci cumque facilis perspiciatis odit. Officia vitae perferendis cumque iusto quas assumenda temporibus facilis. Omnis voluptas consequuntur excepturi magni tenetur necessitatibus architecto explicabo. Distinctio quae esse saepe non totam perspiciatis. Dicta suscipit quibusdam officia sit.</p><p>Necessitatibus sed corporis possimus enim delectus voluptatum recusandae velit. Porro sequi amet facere quod debitis expedita corporis. Dolor quae officia blanditiis dolores autem eos debitis. Sit nostrum ratione velit consectetur nesciunt necessitatibus praesentium at. Nam soluta alias recusandae debitis impedit quasi odit. Quam quidem adipisci cum aperiam itaque inventore. Assumenda labore sit numquam temporibus. In assumenda perspiciatis corrupti placeat inventore. In ab tempore corrupti maxime. Esse incidunt at ullam nulla dolore laborum eaque aspernatur. Quod inventore perspiciatis distinctio deserunt pariatur vero quasi maiores. Veniam suscipit qui omnis inventore odio. Cum quos veritatis fugiat aliquam earum delectus. Quidem laudantium optio in veritatis natus dolor dolore. Atque totam odio voluptate illo in consequuntur cumque nemo. In dolore facere cumque harum quis voluptas. Accusamus fugit sed perspiciatis adipisci culpa eum.</p>"}	2024-07-24 04:41:08.408515	2024-07-24 04:41:10.101533
1	TRIA DIPA HOSPITAL	tria-dipa-hospital	{"en": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis."}	{"en": "<p>Quos rem fugit quia aperiam neque officiis. Neque molestias expedita non quae quidem officiis cum optio. Ab consectetur tenetur eum accusantium natus. Voluptatem quis earum fugiat et sapiente quaerat eligendi incidunt. Unde itaque at quasi architecto. Ullam deserunt quo delectus possimus explicabo. Perferendis mollitia quia excepturi id nostrum cum at. Dicta vitae enim voluptates laudantium. Ipsum laborum quas neque enim cum. Nihil possimus voluptatibus libero numquam consequatur quo voluptas. Atque ratione et quam voluptates consectetur aliquam iure. Nisi dolore aliquam sequi excepturi nulla temporibus quasi saepe. Magnam possimus porro illum ratione vitae qui. Distinctio suscipit natus odit nisi voluptatem neque quae. Architecto illo officiis accusantium aperiam modi. Numquam animi id quidem laborum neque voluptate distinctio. Nam architecto molestias aliquid praesentium voluptatem ab aperiam. Earum possimus tempora illo ratione. Consequatur at nulla aliquid dolore commodi repellendus temporibus.</p><p>Quaerat in corrupti quasi omnis. Blanditiis veritatis aut veniam quaerat voluptate nobis. Rerum dignissimos ipsum eligendi dolore nobis corporis. Quia numquam incidunt delectus vitae quo soluta. Eaque alias at qui deleniti laboriosam ipsa unde. Dolorum consequuntur assumenda autem corporis blanditiis ducimus iusto. Doloribus autem laborum unde aliquam sunt consequatur. Mollitia excepturi libero consequatur reprehenderit tempore quasi ad omnis. Quidem nisi at iste repellat nobis ab. Est atque nulla molestiae harum soluta provident. Eveniet neque dolor quibusdam nulla itaque. Velit ipsum dolorum iste non corporis. Laborum sed cumque facilis consectetur nulla rerum impedit. Deleniti commodi odit mollitia nihil. Voluptates rem fugiat similique magni voluptatem vel. Quasi consequatur eaque quo aperiam totam fuga fugiat cupiditate. Sapiente eaque ex voluptas quos provident velit. Libero aut est maiores repudiandae. Facilis aspernatur dolorum hic cupiditate minima sit culpa iusto. Molestias minima cupiditate tenetur ea repudiandae culpa. Voluptatum blanditiis illum illo sunt fugiat earum.</p>"}	{"en": "<p>Quos rem fugit quia aperiam neque officiis. Neque molestias expedita non quae quidem officiis cum optio. Ab consectetur tenetur eum accusantium natus. Voluptatem quis earum fugiat et sapiente quaerat eligendi incidunt. Unde itaque at quasi architecto. Ullam deserunt quo delectus possimus explicabo. Perferendis mollitia quia excepturi id nostrum cum at. Dicta vitae enim voluptates laudantium. Ipsum laborum quas neque enim cum. Nihil possimus voluptatibus libero numquam consequatur quo voluptas. Atque ratione et quam voluptates consectetur aliquam iure. Nisi dolore aliquam sequi excepturi nulla temporibus quasi saepe. Magnam possimus porro illum ratione vitae qui. Distinctio suscipit natus odit nisi voluptatem neque quae. Architecto illo officiis accusantium aperiam modi. Numquam animi id quidem laborum neque voluptate distinctio. Nam architecto molestias aliquid praesentium voluptatem ab aperiam. Earum possimus tempora illo ratione. Consequatur at nulla aliquid dolore commodi repellendus temporibus.</p><p>Quaerat in corrupti quasi omnis. Blanditiis veritatis aut veniam quaerat voluptate nobis. Rerum dignissimos ipsum eligendi dolore nobis corporis. Quia numquam incidunt delectus vitae quo soluta. Eaque alias at qui deleniti laboriosam ipsa unde. Dolorum consequuntur assumenda autem corporis blanditiis ducimus iusto. Doloribus autem laborum unde aliquam sunt consequatur. Mollitia excepturi libero consequatur reprehenderit tempore quasi ad omnis. Quidem nisi at iste repellat nobis ab. Est atque nulla molestiae harum soluta provident. Eveniet neque dolor quibusdam nulla itaque. Velit ipsum dolorum iste non corporis. Laborum sed cumque facilis consectetur nulla rerum impedit. Deleniti commodi odit mollitia nihil. Voluptates rem fugiat similique magni voluptatem vel. Quasi consequatur eaque quo aperiam totam fuga fugiat cupiditate. Sapiente eaque ex voluptas quos provident velit. Libero aut est maiores repudiandae. Facilis aspernatur dolorum hic cupiditate minima sit culpa iusto. Molestias minima cupiditate tenetur ea repudiandae culpa. Voluptatum blanditiis illum illo sunt fugiat earum.</p>"}	{"en": "<p>Quos rem fugit quia aperiam neque officiis. Neque molestias expedita non quae quidem officiis cum optio. Ab consectetur tenetur eum accusantium natus. Voluptatem quis earum fugiat et sapiente quaerat eligendi incidunt. Unde itaque at quasi architecto. Ullam deserunt quo delectus possimus explicabo. Perferendis mollitia quia excepturi id nostrum cum at. Dicta vitae enim voluptates laudantium. Ipsum laborum quas neque enim cum. Nihil possimus voluptatibus libero numquam consequatur quo voluptas. Atque ratione et quam voluptates consectetur aliquam iure. Nisi dolore aliquam sequi excepturi nulla temporibus quasi saepe. Magnam possimus porro illum ratione vitae qui. Distinctio suscipit natus odit nisi voluptatem neque quae. Architecto illo officiis accusantium aperiam modi. Numquam animi id quidem laborum neque voluptate distinctio. Nam architecto molestias aliquid praesentium voluptatem ab aperiam. Earum possimus tempora illo ratione. Consequatur at nulla aliquid dolore commodi repellendus temporibus.</p><p>Quaerat in corrupti quasi omnis. Blanditiis veritatis aut veniam quaerat voluptate nobis. Rerum dignissimos ipsum eligendi dolore nobis corporis. Quia numquam incidunt delectus vitae quo soluta. Eaque alias at qui deleniti laboriosam ipsa unde. Dolorum consequuntur assumenda autem corporis blanditiis ducimus iusto. Doloribus autem laborum unde aliquam sunt consequatur. Mollitia excepturi libero consequatur reprehenderit tempore quasi ad omnis. Quidem nisi at iste repellat nobis ab. Est atque nulla molestiae harum soluta provident. Eveniet neque dolor quibusdam nulla itaque. Velit ipsum dolorum iste non corporis. Laborum sed cumque facilis consectetur nulla rerum impedit. Deleniti commodi odit mollitia nihil. Voluptates rem fugiat similique magni voluptatem vel. Quasi consequatur eaque quo aperiam totam fuga fugiat cupiditate. Sapiente eaque ex voluptas quos provident velit. Libero aut est maiores repudiandae. Facilis aspernatur dolorum hic cupiditate minima sit culpa iusto. Molestias minima cupiditate tenetur ea repudiandae culpa. Voluptatum blanditiis illum illo sunt fugiat earum.</p>"}	2024-07-24 04:41:07.839134	2024-07-24 04:41:09.16219
\.


--
-- Data for Name: link_buttons; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.link_buttons (id, linkable_type, linkable_id, objectable_type, objectable_id, route_category, link_text, link_url, anchor, open_new_tab) FROM stdin;
\.


--
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.menus (id, section, data) FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.pages (id, title, slug, published_date, status, banner_section_id, created_at, updated_at, meta_title, meta_description) FROM stdin;
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.questions (id, question, answer, category_name) FROM stdin;
1	{"en": "Domitila Botsford"}	{"en": "Ad neque numquam aperiam pariatur quo cupiditate qui. Repudiandae alias dolores consectetur eligendi. Quas cupiditate molestiae unde nostrum dolorem quae assumenda. Reprehenderit debitis odio ex provident. Blanditiis fuga rerum expedita et. Quidem molestias iure quas optio praesentium excepturi. Sunt non doloribus reiciendis ipsam excepturi quas. Quae deserunt animi quam voluptatibus. Voluptate veniam repellendus ad libero ex ipsa nostrum unde. Veritatis corrupti voluptate aspernatur cum. Ipsa cum quae saepe voluptas animi nemo. Quae fugit at officiis cumque reiciendis veritatis. Tempora laborum officia sint libero repudiandae reprehenderit. Pariatur cum autem earum sequi magni facilis perferendis. Pariatur corporis cupiditate suscipit accusamus necessitatibus. Error facere voluptates reprehenderit eligendi laudantium. Iure aut laudantium delectus quam sapiente."}	{"en": "General"}
2	{"en": "Lance Keebler"}	{"en": "Eius consectetur laborum saepe est nisi quia omnis dolorem. Facere dolorum libero facilis ducimus fugit. Et ipsum est dolorem quidem amet dolor doloribus quia. Optio fugit omnis laboriosam voluptatibus aut delectus. Praesentium minima facilis qui deserunt dicta libero. Nulla cupiditate corporis quam asperiores accusamus dolor placeat. Ipsum repudiandae culpa harum iusto eligendi."}	{"en": "General"}
3	{"en": "Yuk DuBuque"}	{"en": "Dolorum quae voluptatibus odio soluta a. Illum quae quam corrupti corporis laboriosam blanditiis enim libero. Ea error odit debitis ipsum nostrum corporis molestiae laboriosam. Numquam officiis harum nobis veniam nemo rem. Corrupti exercitationem minima deleniti culpa quod hic animi autem. Unde accusamus quis numquam quo delectus dolore voluptatibus. Totam odit itaque neque at atque quidem. Quasi doloribus qui nobis commodi dolore. Voluptatibus quod culpa quo harum molestias. Veniam expedita dicta voluptatibus natus ex in asperiores. Facilis odio suscipit fuga reprehenderit veritatis molestias. Possimus aspernatur optio esse maxime eveniet cum voluptates numquam. Quas temporibus sit doloremque quasi vel sapiente ut asperiores. Incidunt ut tenetur nulla a reiciendis qui. Consequuntur beatae officiis explicabo saepe velit. Voluptas minus ipsa cupiditate eos natus. Mollitia ab repellendus occaecati exercitationem temporibus earum rerum quae. Doloribus maiores qui reprehenderit praesentium dolor. Ipsam corrupti voluptatum maiores fuga."}	{"en": "General"}
4	{"en": "Brett Carroll"}	{"en": "Facere rem velit ex soluta dicta temporibus. Rerum perspiciatis consequatur exercitationem necessitatibus rem aliquid repellendus iusto. Reprehenderit incidunt reiciendis omnis esse consectetur ducimus qui. Necessitatibus laboriosam placeat veritatis deserunt dicta voluptatem porro quae. Eveniet non a laudantium fugiat facere. Rem nobis iusto et voluptas. Eaque voluptate natus libero deleniti minima consectetur voluptatibus. Architecto doloribus blanditiis itaque consequuntur dignissimos tempore labore tenetur. Minus nam eum dolor officiis saepe itaque praesentium explicabo. Occaecati sequi harum eos ad error autem. Quisquam iusto corporis eligendi ipsa tempora. At nihil neque ratione maiores error ipsa rerum fugiat. Nulla unde labore dignissimos amet aspernatur esse. Quas totam officia non aliquam soluta alias aliquid cupiditate. Voluptatum omnis sequi dicta porro veritatis consequatur ad laboriosam. Asperiores quas aut esse tempora soluta. Excepturi eaque voluptate quae soluta. Assumenda exercitationem soluta sapiente dolorum tempora neque consequatur fuga. Necessitatibus occaecati illum voluptas vero consequatur voluptate deserunt cumque. Impedit consectetur animi nulla reiciendis. Quam ea voluptates voluptas explicabo cum praesentium. Dolorem a velit harum iste magnam. Animi occaecati eum necessitatibus exercitationem tempora magnam dolores. Aliquam blanditiis totam sit quis quasi ab. Sunt aut rem minima praesentium exercitationem."}	{"en": "General"}
5	{"en": "Bryon Rau"}	{"en": "Eos optio similique fugiat vel rerum doloribus quod voluptas. A aliquid eaque voluptas magni. Aliquam fuga dolorem corrupti aspernatur suscipit quae minima mollitia. Incidunt perspiciatis quibusdam debitis sequi iste. Delectus praesentium quod ipsum quos voluptas. Ea laudantium perferendis est ab. Repellat similique atque voluptatibus dolor asperiores quos ut nisi. Natus atque eos reprehenderit necessitatibus optio. Voluptate quas assumenda incidunt quae esse. Voluptates minima veritatis exercitationem expedita dolorum voluptatibus ea. Similique libero nam non exercitationem odio neque. Ad odit at nemo officiis. Enim accusamus possimus suscipit dolorum quasi. Nesciunt necessitatibus cum repudiandae ipsum. Alias eligendi repudiandae cupiditate maiores consectetur hic aut veniam. Quasi tempora rem magnam modi deserunt quis ratione aut. Nostrum velit nam consectetur quisquam ipsa animi. Odio sequi magni officiis ut. Similique voluptate illo corrupti nihil ex molestias dicta culpa. Sint dolores veritatis voluptatibus consequuntur. Expedita nemo odio aperiam aspernatur."}	{"en": "General"}
\.


--
-- Data for Name: report_types; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.report_types (id, name) FROM stdin;
\.


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.reports (id, title, short_description, report_type_id, published_date, status, created_at, updated_at, private, read_only) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.roles (id, name, description) FROM stdin;
1	admin	System Administrator granted access to all resources
2	developer	Web Developer able to access to content resources
\.


--
-- Data for Name: schedules; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.schedules (id, doctor_id, day_code, day_name, start_time, end_time) FROM stdin;
1	1	1	Monday	07:00	12:00
2	1	2	Tuesday	09:00	12:00
3	2	1	Monday	15:00	16:00
4	2	3	Wednesday	07:00	09:00
5	3	1	Monday	15:00	18:00
6	3	3	Wednesday	15:00	18:00
7	3	5	Friday	15:00	18:00
8	3	6	Saturday	07:00	09:00
9	4	2	Tuesday	17:00	18:30
10	5	1	Monday	09:00	11:00
11	5	2	Tuesday	09:00	11:00
12	5	3	Wednesday	09:00	11:00
13	5	4	Thursday	09:00	11:00
14	6	1	Monday	16:00	19:00
15	6	2	Tuesday	16:00	19:00
16	6	4	Thursday	16:00	19:00
17	7	1	Monday	08:00	14:00
18	7	1	Monday	18:00	20:00
19	7	2	Tuesday	08:00	13:00
20	7	3	Wednesday	08:00	14:00
21	7	3	Wednesday	18:00	20:00
22	7	4	Thursday	08:00	14:00
23	7	5	Friday	08:00	13:00
24	7	5	Friday	18:00	20:00
25	7	6	Saturday	08:00	14:00
26	8	1	Monday	13:00	15:00
27	8	2	Tuesday	13:00	15:00
28	8	3	Wednesday	13:00	15:00
29	8	4	Thursday	13:00	15:00
30	9	1	Monday	18:00	19:00
31	9	2	Tuesday	12:00	13:00
32	9	3	Wednesday	18:00	19:00
33	9	4	Thursday	12:00	15:00
34	9	5	Friday	18:00	19:00
35	9	6	Saturday	07:00	09:00
36	10	1	Monday	16:00	17:00
37	10	2	Tuesday	16:00	17:00
38	10	3	Wednesday	16:00	17:00
39	11	1	Monday	08:00	12:00
40	11	2	Tuesday	08:00	10:00
41	11	3	Wednesday	08:00	12:00
42	11	4	Thursday	16:00	20:00
43	11	5	Friday	16:00	20:00
44	11	6	Saturday	08:00	11:00
45	12	1	Monday	08:00	12:00
46	12	2	Tuesday	08:00	10:00
47	12	3	Wednesday	08:00	12:00
48	12	4	Thursday	16:00	20:00
49	12	5	Friday	16:00	20:00
50	12	6	Saturday	08:00	11:00
51	13	1	Monday	08:00	10:00
52	13	2	Tuesday	09:00	12:00
53	13	3	Wednesday	08:00	10:00
54	13	4	Thursday	09:00	12:00
55	13	5	Friday	08:00	10:00
56	13	6	Saturday	09:00	12:00
57	14	3	Wednesday	15:00	16:00
58	14	5	Friday	15:00	16:00
59	15	1	Monday	16:00	19:00
60	15	2	Tuesday	16:00	19:00
61	15	3	Wednesday	16:00	19:00
62	15	4	Thursday	16:00	19:00
63	15	5	Friday	16:00	17:45
64	16	2	Tuesday	16:00	18:00
65	16	3	Wednesday	16:00	18:00
66	16	4	Thursday	16:00	18:00
67	16	5	Friday	16:00	18:00
68	17	1	Monday	09:00	10:00
69	17	3	Wednesday	09:00	10:00
70	17	5	Friday	09:00	10:00
71	18	2	Tuesday	17:00	19:00
72	18	5	Friday	17:00	19:00
73	19	1	Monday	13:00	20:00
74	19	2	Tuesday	08:00	14:00
75	19	3	Wednesday	13:00	20:00
76	19	4	Thursday	08:00	14:00
77	19	4	Thursday	18:00	20:00
78	19	5	Friday	14:00	17:00
79	19	6	Saturday	08:00	16:00
80	20	2	Tuesday	08:00	09:00
81	20	6	Saturday	08:00	09:30
82	21	1	Monday	14:30	16:00
83	21	2	Tuesday	14:30	16:00
84	21	3	Wednesday	14:30	16:00
85	21	4	Thursday	14:30	16:00
86	21	5	Friday	14:30	16:00
87	22	1	Monday	08:00	11:00
88	22	2	Tuesday	16:30	19:30
89	22	4	Thursday	16:30	19:30
90	23	1	Monday	08:30	09:30
91	23	3	Wednesday	08:30	09:30
92	24	1	Monday	18:00	19:00
93	24	3	Wednesday	18:00	19:00
94	24	5	Friday	18:00	19:00
95	25	1	Monday	12:00	15:00
96	25	2	Tuesday	12:00	15:00
97	25	3	Wednesday	10:00	15:00
98	25	4	Thursday	10:00	15:00
99	25	5	Friday	10:00	15:00
100	25	6	Saturday	09:00	13:00
101	26	1	Monday	09:00	12:00
102	26	2	Tuesday	09:00	12:00
103	26	6	Saturday	13:00	15:00
104	27	2	Tuesday	17:00	20:00
105	27	4	Thursday	17:00	20:00
106	27	6	Saturday	16:00	18:00
107	28	1	Monday	16:00	18:00
108	28	3	Wednesday	16:00	18:00
109	28	5	Friday	16:00	18:00
110	29	2	Tuesday	17:00	18:00
111	29	4	Thursday	17:00	18:00
112	30	1	Monday	16:00	18:00
113	30	3	Wednesday	09:00	10:30
114	30	3	Wednesday	15:00	17:00
115	30	5	Friday	15:00	17:00
116	30	6	Saturday	10:00	12:00
117	31	1	Monday	14:00	16:00
118	31	4	Thursday	14:00	16:00
119	32	2	Tuesday	11:30	13:00
120	32	4	Thursday	11:30	13:00
121	32	6	Saturday	11:30	13:00
122	33	2	Tuesday	14:00	15:00
123	33	5	Friday	14:00	15:00
124	34	1	Monday	18:00	19:00
125	34	3	Wednesday	18:00	19:00
126	35	1	Monday	14:00	15:30
127	35	4	Thursday	14:00	15:30
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.schema_migrations (version) FROM stdin;
20240311034938
20240311035114
20240311035542
20240311045445
20240311050012
20240311050013
20240311050025
20240311050026
20240311050112
20240311050113
20240311060147
20240315120339
20240315120346
20240318121438
20240318133036
20240319060652
20240319060713
20240319060921
20240320183145
20240419060818
20240423041001
20240423041143
20240424083125
20240429052417
20240516155903
20240517165350
20240525045310
20240528013927
20240723090141
20240723090203
20240723090227
20240723090250
20240723090301
20240723090311
20240723090320
20240723090334
20240725023453
20240725023503
20240730080231
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.sections (id, page_id, snippet_id, bg_color, css_class, order_no, hidden) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.settings (id, admin_contact, created_at, updated_at) FROM stdin;
1	admin@veritasgroup.com	2024-07-24 04:41:05.884385	2024-07-24 04:41:05.884385
\.


--
-- Data for Name: snippets; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.snippets (id, name, title, caption, short_description, description, title_tag, text_color, template, bg_color, css_class, css_title, css_desc, orientation, video_url, created_at, updated_at, parent_id) FROM stdin;
\.


--
-- Data for Name: specialists; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.specialists (id, name, slug, headline, description) FROM stdin;
1	{"en": "NEUROLOGY"}	neurology	{"en": "Our neurology team helps patients who are dealing with disorders of the nervous system, including the brain and spinal cord"}	{"en": "<p>Ratione itaque iusto quis inventore minima. Quis fugiat beatae error libero mollitia dolorem exercitationem. Officiis accusantium veritatis voluptatum neque repellat quas. Recusandae provident nemo omnis voluptate dolorum eius neque qui. Assumenda amet in rerum perferendis repellendus iure. Voluptatem amet nam quibusdam quia. Adipisci labore molestias quos harum dolores sapiente. Magnam expedita porro dolorem facere exercitationem numquam repellendus hic. Dicta animi est autem dolorem incidunt corrupti delectus at. Quis esse et praesentium molestiae expedita tenetur ad. Esse eius suscipit quis odit neque accusamus. Consequuntur ducimus perferendis tempore alias praesentium nam odit. Quo consequuntur quis praesentium rerum blanditiis maiores deleniti. Accusamus tenetur numquam culpa asperiores. Dolor commodi quis maiores molestias. Incidunt voluptatum maiores perferendis aut. Veritatis consequatur repudiandae earum ex a harum. Animi illum facere dolores cumque voluptatibus vel explicabo. Pariatur iure nulla enim ducimus minus quod. Nesciunt maiores doloremque ipsam dolor perspiciatis iste. Harum nulla ex asperiores in. Sint magni pariatur voluptate dolore fugit adipisci. Mollitia repellat nostrum dolorem doloremque dolore culpa.</p><p>Sit error voluptatibus debitis nobis nihil nemo quos. Excepturi quod inventore reiciendis dolorum accusantium. Est sunt ab earum voluptate dolorum. Consectetur occaecati soluta fugit unde quae laboriosam reprehenderit. Quod eaque odit nam totam sunt explicabo. Earum doloribus ducimus odit illum expedita. Aliquam ipsam omnis animi debitis voluptates. Esse ducimus fugit dolorum quas reprehenderit excepturi. Molestias at provident assumenda ab sit iure officiis. Aspernatur libero totam beatae suscipit excepturi ratione voluptates minus. Ea tenetur exercitationem quos ex quod repellat accusamus. Eaque molestiae inventore qui quasi quam minus laborum laudantium. Quaerat in modi tempora dolorem veritatis expedita possimus autem. Dicta sint optio unde commodi architecto laboriosam porro. Harum fugiat facilis accusamus sapiente nobis magnam ullam. Cum harum autem nobis saepe sapiente possimus placeat. Illo dolores eum provident impedit cum alias molestiae soluta.</p>"}
2	{"en": "CARDIOLOGY"}	cardiology	{"en": "Our cardiologists treat patients who may have diseases and abnormalities of the heart"}	{"en": "<p>Numquam explicabo excepturi officia delectus maiores natus tempore magni. Laborum harum possimus numquam doloribus voluptates minima. Optio nobis aliquid sequi vero blanditiis. Porro quaerat eos autem harum unde nemo quae. Beatae cupiditate minus eveniet reiciendis repudiandae. Culpa repudiandae illum eaque nihil tempora. Totam nulla quibusdam praesentium nostrum tempore repudiandae minus vel. Ad doloremque sint voluptates hic accusantium quos delectus dolor. Molestias voluptates eligendi ab blanditiis excepturi et ad. Harum ab commodi enim quas sapiente sed magnam aperiam. Nam autem quaerat distinctio neque inventore labore quos voluptate. Veniam molestias ex amet occaecati voluptas. Eius assumenda laudantium nulla maiores. Non ratione illum eaque dolor modi quaerat totam. Rerum ut veniam eum eos sint. Explicabo repellendus recusandae eos ex dolores. Earum aut quos voluptatem maiores rem. Odio dolores ducimus quaerat enim quo veniam minima.</p><p>Beatae sint alias recusandae quidem corrupti. Recusandae eos eligendi corporis maiores repellat quam. Tempore quidem earum voluptatibus molestiae autem repudiandae reiciendis quod. Cupiditate itaque accusamus molestiae dicta dolorum temporibus suscipit nulla. Nulla odit aliquid nam consequuntur a et sequi. Quos dolor eligendi animi repellat consequuntur atque fugit minima. Tempora asperiores velit mollitia magni eveniet. Magni voluptates mollitia odio excepturi labore laudantium. Quod minus illo deserunt vero. Recusandae maiores cumque explicabo nostrum. Eos mollitia fugiat magnam illo. Adipisci eveniet sit doloribus quis dolore cum quisquam quae. Incidunt beatae labore officiis dignissimos quam. At asperiores necessitatibus optio perferendis impedit nam. Occaecati asperiores nemo dolore ut rem animi. Rerum molestiae iste nihil inventore magnam doloremque sed fuga. Tempore voluptates ipsum iusto autem ipsam numquam nesciunt. Nihil magni dolor vero recusandae ipsam autem eius. Minus quasi soluta eius distinctio itaque cum. Odit vitae modi voluptates non facilis.</p>"}
3	{"en": "DENTISTRY"}	dentistry	{"en": "Our dentists diagnose, prevent, and treat diseases, disorders, and conditions of the mouth"}	{"en": "<p>Explicabo enim sapiente distinctio sed eius aliquam adipisci. Totam alias minus aperiam labore sint. Impedit tempore occaecati quasi voluptatibus. Voluptatum aperiam corrupti sint magni voluptate aut ullam consequatur. Animi corrupti est quasi non iusto ab ut reprehenderit. Dolorum magni ea quia adipisci. Reiciendis qui maxime omnis facere officiis eveniet. Laboriosam labore ut modi aut dicta. Minus debitis exercitationem ut nemo. Reiciendis voluptates porro aut facilis. Pariatur doloremque quam tenetur quo beatae facere adipisci delectus. Natus eum nam voluptatum repudiandae laboriosam ullam dolores ipsa. Quos quas iure at provident excepturi necessitatibus perferendis fugit. Eaque natus cumque enim illo quaerat magni eligendi. Nulla nisi harum quo culpa libero. Eligendi explicabo praesentium similique facere. Minus in consectetur repellendus magni nemo. Deserunt at velit esse corrupti exercitationem ex atque. Voluptatem facilis magni consequuntur pariatur repellat totam aperiam. Tenetur quod nobis iusto porro necessitatibus. Quaerat hic magnam earum laborum rem nulla dolorum. Temporibus deserunt excepturi culpa accusamus. Cumque voluptate maiores veniam ea dolores dignissimos. Quas dolorem accusantium qui facilis laboriosam asperiores omnis.</p><p>Fugiat fugit architecto iure voluptas dolor. Animi ratione quia laudantium distinctio quis vitae dolore. Neque saepe harum similique cumque magni veniam quis. Minima earum rerum est in animi recusandae. Commodi aperiam provident a laudantium debitis sunt. Vitae ratione quasi eos quod natus. Architecto porro est ad occaecati ut iste sint nostrum. Deleniti doloribus soluta odit repellat inventore quia placeat voluptatum. Delectus optio inventore dolorum nemo assumenda aut. Sed consequatur voluptas dolore sapiente ipsum. Ratione magnam exercitationem assumenda est tenetur. Dicta quas repellendus ipsam voluptatum aliquam laudantium. Voluptatibus cumque consectetur animi dolorem nostrum amet. Odit tenetur deserunt perferendis similique modi corrupti. Velit tenetur nemo eaque incidunt. Quaerat dolore cum sed commodi. Incidunt harum dicta fugiat similique quas. Porro provident dolorem similique animi. Porro provident quis occaecati excepturi ad perspiciatis suscipit fugit. Officiis occaecati tempore quaerat quas. Quasi voluptatum vel minus deserunt exercitationem rerum impedit non. Accusantium nihil odio aut soluta. Similique quasi vero excepturi occaecati hic voluptates et porro.</p>"}
4	{"en": "DERMATOLOGY"}	dermatology	{"en": "Our dermatologists are experts of skin, nails, hair, and its diseases"}	{"en": "<p>Voluptatibus dolores iste officia pariatur et ad molestias voluptatum. Qui alias animi temporibus adipisci exercitationem quas ex voluptas. Quos aliquam sunt blanditiis repudiandae exercitationem soluta ipsam eum. Et laboriosam quisquam molestias accusantium ducimus mollitia. Nobis repellendus dolorum occaecati consequatur fuga. Eaque adipisci expedita quod suscipit hic tenetur. Doloribus qui iure odio maiores delectus saepe. Dolorem non laudantium ullam rem vitae possimus delectus. Accusantium suscipit nulla occaecati minus. Impedit dolorum soluta officia eos sint tenetur. Nemo explicabo occaecati deserunt corrupti blanditiis animi veniam. Quo esse nesciunt illum a reprehenderit dolor ipsa. Temporibus architecto dolor fuga consequuntur deserunt expedita. Praesentium non rerum dolor ipsa error aspernatur nam eveniet. Necessitatibus repellat eveniet officia veritatis. Optio quis officia omnis tenetur vel. Expedita ducimus est odit sit sunt natus iste.</p><p>Maiores voluptatem aliquam soluta eos tempore. Doloremque perferendis esse voluptas nobis. Dolores laboriosam vero odio temporibus. Placeat corporis soluta quo neque dicta. Maxime perferendis praesentium labore eveniet ipsa fuga tempore. Voluptatibus earum tenetur iste quia sed optio. Modi est nesciunt illum culpa doloribus laborum labore facilis. Veritatis laborum enim ipsam error. Ad beatae fuga laborum doloribus a placeat vero. Libero similique aliquam ullam laudantium quidem laborum. Praesentium eveniet ipsam consequatur tempore maxime. Minus ex nemo itaque atque veritatis debitis sit quam. Perspiciatis consequatur odit error ipsam libero. Vel cupiditate odit rerum dolorem consequuntur sit. Asperiores fugit quasi quis sit dignissimos magnam consectetur cupiditate. Perferendis aliquam fugit porro ex necessitatibus minus sit consequatur.</p>"}
10	{"en": "UROLOGY"}	urology	{"en": "Specialists that deal with the male and female urinary tract and the male reproductive organs"}	{"en": "<p>Sed illo quae vero ducimus aliquid culpa ab quis. Soluta repudiandae accusantium cumque magnam. Recusandae maiores dolorum perspiciatis sequi consequatur debitis eligendi. Totam ratione natus placeat quod maiores eius ipsam rem. Laudantium error eum ab illum quos pariatur. Aut reiciendis ipsum nisi repudiandae vero alias illum corporis. Officiis sit porro fuga reiciendis sint. Officia impedit asperiores non nam. Optio libero ea facilis temporibus itaque ab esse. Corporis iure tempore sapiente non inventore dolorum. Adipisci quaerat laboriosam quam aliquam amet tempore reiciendis totam. Aperiam est maxime voluptatum voluptas. Voluptate perferendis aperiam minus hic asperiores amet. Excepturi inventore suscipit voluptates totam. Ullam asperiores unde veniam laborum quaerat blanditiis. Recusandae qui fugiat velit fugit repudiandae.</p><p>Ab tempore explicabo quas deleniti. Et quas ipsa magnam provident exercitationem perspiciatis blanditiis. Consectetur provident quae fugiat officiis aspernatur. In sunt quia repudiandae mollitia nobis error numquam rem. Adipisci ea voluptatibus nesciunt est porro molestias. Reprehenderit non ex corporis doloribus. Praesentium at assumenda adipisci quo unde rerum voluptatem. Distinctio veritatis quia quo esse quasi voluptate explicabo. Numquam impedit provident eos enim. Ex fugiat deleniti illum fugit. Non eveniet illo quisquam rerum dignissimos neque ducimus repellendus. Placeat a corrupti ratione adipisci voluptatum voluptatem odio. Aliquam similique eos quia nam accusamus. Ullam quod at nihil temporibus illo. Facilis error adipisci nulla tempore ab explicabo ipsam. Minus dignissimos corporis ad voluptas. Explicabo maxime molestias temporibus modi inventore esse accusamus quo. Quis ipsa corrupti eos temporibus. Debitis corporis cumque ducimus dicta optio. Quod assumenda nobis vitae vero a error. Aperiam distinctio quos libero minus dolorum aspernatur ea placeat. Debitis labore suscipit dignissimos molestias.</p>"}
5	{"en": "OPHTHALMOLOGY"}	ophthalmology	{"en": "Our ophthalmology team medicates patients with diseases of the eye"}	{"en": "<p>Cum molestiae accusantium explicabo vero cumque deleniti dicta tempore. Aliquam quam aut quod veniam dolore eos sint. Laudantium delectus ex ut quod. Quidem adipisci deleniti perspiciatis consequuntur recusandae dignissimos quam ut. Perspiciatis maiores asperiores libero maxime ipsam animi. Possimus dolore pariatur soluta ex aliquid ea culpa reiciendis. Porro vel pariatur ullam quas. Debitis quibusdam quam aperiam repudiandae. Harum vel laborum sequi ratione earum eaque similique et. Quos laudantium aperiam nulla occaecati ut praesentium. Voluptas quis corporis ad aspernatur tempora vitae. Iste nostrum earum ipsa distinctio voluptatum id. Eaque aperiam aliquid illum consequuntur quis fuga porro. Laudantium praesentium assumenda ducimus est magnam. Accusamus commodi tempore enim inventore. Quisquam iste officiis doloremque laudantium excepturi ipsam. Delectus sequi ipsa iure libero quos occaecati officia. Aut nam veniam officiis maiores facere. Sit officia harum doloremque iure occaecati nemo veritatis. Eos quo voluptatum expedita qui voluptate. Error blanditiis deleniti ab velit adipisci aut excepturi. Maxime voluptates aspernatur temporibus impedit nobis.</p><p>Corrupti sequi minima unde voluptatem tenetur dolore. Distinctio voluptates aspernatur eos aliquid eius sunt commodi quos. Optio similique dolore quos ab recusandae perferendis. Possimus aspernatur ratione illum unde saepe. Soluta minima exercitationem velit autem ipsam deserunt. Deserunt nihil voluptates iusto aut ea. Optio architecto excepturi laborum debitis aperiam perferendis ad. Vero ut magnam iure quam. Adipisci ut cum est necessitatibus hic excepturi quasi. Enim a iste ipsa quo facilis. Facilis libero explicabo amet ab omnis. Aliquid sequi perferendis ducimus illo quibusdam. Natus qui quibusdam deserunt mollitia alias numquam. Assumenda a esse asperiores illum quis voluptatum recusandae. Quaerat iure omnis unde eum repellat quis. Ipsa quae dolorem alias saepe consectetur placeat expedita quibusdam. Ducimus vel officiis deserunt at odit. Aliquam officia eveniet explicabo alias. Alias deserunt officiis voluptate id reiciendis autem ex quis. Voluptatibus molestias doloremque quo reprehenderit sed sequi eligendi. Animi laborum perferendis numquam ut id laudantium. Est quisquam dolorum delectus iure molestiae quae.</p>"}
6	{"en": "GASTROENTEROLOGY"}	gastroenterology	{"en": "Patients who have problems with their digestive system and its disorders, are seen by our team of gastric specialists"}	{"en": "<p>Vel aperiam quos saepe itaque praesentium modi ullam tempore. Dicta qui nulla beatae temporibus quis quidem corporis. Quas molestias facere vel reprehenderit. Iusto suscipit quam incidunt perferendis nobis. Doloremque repudiandae maxime necessitatibus ea doloribus. Blanditiis qui quidem quod quasi corrupti magnam quaerat. Dignissimos ratione nostrum voluptatem perferendis odio dolore vero. Occaecati quam consequuntur consectetur rem. Eos accusantium iusto reiciendis occaecati. Eius cum minima quis ea cupiditate molestiae saepe. Voluptas labore nihil doloremque iste quia necessitatibus adipisci temporibus. Repellat facere iure blanditiis quaerat inventore enim. Optio hic occaecati debitis ab alias esse quidem. Quos sapiente fugit maiores possimus pariatur quo culpa magni. Aperiam repellendus assumenda quam in vero modi. Voluptatibus similique ad est suscipit iste ducimus error. Harum atque occaecati temporibus a maiores id ipsum quisquam. Natus alias deserunt similique assumenda rem. Repudiandae corporis fugiat natus quod. Mollitia aliquid quasi tempore itaque.</p><p>Quam molestiae error dolores doloremque praesentium itaque. Rem minima odit quis doloribus ipsa. Voluptas quibusdam nisi commodi rem. Commodi facere ipsum beatae corrupti. Illo esse ea corporis tempore explicabo. Eligendi praesentium sed repellat voluptatum. Perferendis eius quas impedit nulla et. Porro aut modi eaque rem similique. Aspernatur ea inventore nisi culpa quos labore. Magnam itaque odit quod ab nostrum totam inventore. Reiciendis voluptatibus temporibus ea accusantium eum porro. Blanditiis placeat quos nemo error consequuntur velit. Similique quae minima optio suscipit delectus ratione sed. Quod natus voluptates optio nostrum amet nisi neque ab. Ad officiis eum veritatis voluptates similique nulla sunt dignissimos. Quae aspernatur quis expedita odio. Officia delectus inventore ut itaque dolore temporibus. Debitis quasi dolorum distinctio accusantium mollitia. Minus error suscipit iure aspernatur pariatur tempore. Eum ut soluta molestias maxime distinctio. Ut illum eius quod facilis alias voluptates iusto rem.</p>"}
7	{"en": "GENERAL SURGERY"}	general-surgery	{"en": "Our general surgeons are equipped to perform all kinds of medical procedures"}	{"en": "<p>Perferendis ut fugit error nemo accusantium ducimus facere ipsum. Quos consectetur est animi repudiandae incidunt culpa. Aut reprehenderit officiis fugiat ipsum quae eligendi. Temporibus nulla quasi ea eveniet. Alias amet atque dolorum quae sit ab deleniti animi. Distinctio maiores dolorum quibusdam architecto quo quisquam rem voluptas. Cupiditate ipsa doloremque reiciendis quisquam labore nam quasi facere. Est illum veritatis laborum repellendus. Commodi fuga atque pariatur animi nobis cum. Deleniti et unde dolores voluptatum similique voluptas quibusdam. Tempora error sit saepe temporibus placeat quidem quaerat praesentium. Dolore aliquam officiis distinctio culpa ducimus eveniet. Veniam aperiam modi dicta accusamus. Consequatur aliquid voluptate officia quasi sequi enim. Harum deleniti perspiciatis hic porro officia. Nihil tenetur deleniti quo repudiandae inventore corrupti eligendi doloribus. Non sunt labore unde possimus optio. Eaque est doloribus voluptates ad ratione. Perspiciatis atque delectus accusamus nihil voluptates dolore.</p><p>Omnis libero hic quibusdam numquam id sint dicta maiores. Aliquid voluptatem magnam impedit alias saepe. Placeat voluptates soluta earum deserunt possimus architecto ipsa iusto. Eaque a ipsa quaerat corrupti. Nostrum voluptatibus qui dignissimos fuga aperiam maiores. Accusamus facilis nemo provident laudantium ad. Saepe error ducimus deserunt placeat corrupti eaque. Deserunt enim unde nobis sed. Fugit voluptatum accusamus dolorum repellendus consequatur. Alias fuga excepturi optio nobis exercitationem tenetur. Optio provident repellendus maiores laborum dignissimos ad. Ad maxime eligendi animi neque enim id illo. Rerum quaerat reprehenderit iusto neque. Eaque sequi illum voluptatum amet quidem cumque veritatis est. Ad minima eligendi iusto esse. Vero molestiae dolorum velit deserunt ratione dolorem. Recusandae id culpa inventore minima vitae nemo. Odio iusto incidunt laudantium ab magnam quaerat necessitatibus. Sed debitis culpa beatae maiores et.</p>"}
8	{"en": "HAEMATOLOGY"}	haematology	{"en": "Our hematology department can study blood samples to determine specific diseases and treat them"}	{"en": "<p>Consectetur magni atque alias neque. Est numquam officiis voluptatum repudiandae occaecati optio nemo aliquid. Laborum tempora nulla illum facere eaque quo esse culpa. Tenetur veniam ullam commodi reprehenderit. Nihil mollitia earum eligendi qui deserunt eius optio tenetur. Voluptatum dolorum quidem eaque corporis commodi. Voluptatem molestiae reprehenderit illo debitis magni nisi. Voluptas voluptate dolore sapiente voluptatum et hic delectus accusantium. Voluptate molestias suscipit labore dignissimos ea. Dolore assumenda dolores magnam ad quam corporis consequatur atque. Ipsa cum sit consequatur totam itaque non corporis. Sequi incidunt provident nemo magni velit. Voluptatum cumque sapiente ab mollitia. Sequi aliquam sed dolores perspiciatis pariatur animi. Nam expedita possimus quo esse quis cumque numquam. Blanditiis ut minima repudiandae maxime amet eveniet. Culpa error corrupti odit aut odio. Rerum tempore architecto ipsum atque. Ea illum laudantium occaecati modi commodi non. Alias ducimus possimus nostrum a ex. Itaque voluptas sit dicta vel molestiae. Alias eaque explicabo officia neque. Numquam voluptatem minima in excepturi corporis atque ducimus optio. Laudantium commodi excepturi neque deserunt necessitatibus.</p><p>Voluptate ratione repellendus voluptatem porro alias tempore sapiente. Sint quam porro laboriosam eligendi illo eos. Accusamus nam nemo alias voluptates. Molestias commodi maiores reiciendis libero quos magnam. Ipsa facere quod illum exercitationem vero. Quia natus maiores modi placeat ullam. Ut repellendus quis error laboriosam ipsam ipsa. A perspiciatis praesentium quod temporibus. Incidunt fugiat nam officiis alias tempora nisi. Animi ab voluptates fugit eveniet natus facilis explicabo adipisci. Fugiat occaecati nihil in earum eaque. Quis sapiente consequuntur mollitia vero. Culpa sint molestiae dolorem ducimus. Expedita consequuntur voluptatem qui molestiae. In sint sapiente iste deleniti blanditiis laboriosam mollitia. Ex similique sapiente atque quas provident doloribus suscipit nihil. Quae impedit totam velit ratione repellat reprehenderit magnam reiciendis. Maxime quo deserunt libero assumenda cum autem illo ex. Blanditiis nihil quasi nostrum eaque perspiciatis recusandae voluptas cupiditate. Natus accusantium necessitatibus incidunt nobis et corporis provident. Aspernatur at sunt hic reiciendis. Nulla quaerat mollitia beatae maxime.</p>"}
9	{"en": "PEDIATRIC"}	pediatric	{"en": "Pediatric specialists to support the health and medical care of infants, children, and adolescents"}	{"en": "<p>Optio officiis beatae maiores inventore quasi incidunt esse error. Exercitationem alias illo quod sint consequatur cumque. Error blanditiis animi illo voluptate reiciendis ea alias. Officia commodi alias corrupti iure voluptates maiores illo dolore. Minus corporis eius perspiciatis impedit. Commodi asperiores enim doloribus explicabo aut. Quae cupiditate voluptatem minima assumenda molestias possimus ipsum. Est rerum dolore alias eligendi. Soluta quidem veritatis sunt illum atque facere architecto. Odio quae voluptas laborum id laudantium ex hic. Distinctio alias iste pariatur maxime ratione modi cumque. Voluptate dicta odit voluptatum vel amet iste id. Maiores sed dolor commodi maxime minus vitae enim earum. Incidunt accusamus asperiores aliquam minus eius facere cumque est. Repellat ipsam debitis accusantium voluptates. Nemo aliquam reprehenderit ipsum animi. Quam molestias mollitia ducimus numquam ipsam ad commodi. Doloribus quos earum unde distinctio quam enim dolores doloremque. Omnis hic vitae neque necessitatibus illum cum ipsum. Voluptate nam fugiat cumque dolore iusto eius. Illo sapiente omnis nam animi voluptate impedit.</p><p>Dignissimos iure architecto et illo sed dolore nihil. Corporis temporibus nostrum eveniet impedit repellat. Similique eos autem quisquam accusamus. Qui praesentium cumque aperiam repellendus. Nisi totam quae esse maiores est. Aut similique voluptas cupiditate aliquid tempore necessitatibus. Repellendus laborum minima adipisci nemo consequuntur. Nesciunt consectetur officiis sequi quam tempore unde minima ullam. Repudiandae eum a earum delectus repellendus. Quibusdam necessitatibus eaque consequuntur saepe. Numquam eum aliquid placeat voluptates in nam fuga similique. Praesentium ea laborum voluptas reprehenderit sunt excepturi laboriosam. Quidem ab saepe labore nihil. Illo tenetur alias excepturi ullam. Quas dolorum minus dicta error consequuntur. Voluptatem totam eligendi enim cumque nulla voluptas error dolorum. Placeat omnis accusamus temporibus magnam aliquam qui aliquid. Unde suscipit quod nisi delectus. Fugiat ipsa cumque quam delectus id distinctio. Sunt maxime sint necessitatibus architecto. Totam doloribus animi officiis fuga in modi odio eveniet.</p>"}
11	{"en": "ONCOLOGY"}	oncology	{"en": "Oncology specialists to advise in the prevention, diagnosis, and treatment of cancer"}	{"en": "<p>Porro impedit voluptate consequuntur expedita soluta. Labore asperiores tenetur quas expedita quasi nihil fuga. Dolor blanditiis explicabo dignissimos odio odit veniam. Voluptatum nostrum officiis perferendis ullam ducimus eius quaerat. Aspernatur dolorum temporibus rem ipsa nesciunt soluta fuga vel. Consectetur quos temporibus labore voluptatibus veniam vero. Officia assumenda rerum voluptas fugiat. Saepe eius esse est quasi consequatur. Officia cupiditate eum quidem fugiat consequatur perspiciatis in. Dolores quisquam odio veniam natus neque minima suscipit. Aliquam doloribus dolore libero ipsa totam dolores eaque. Optio deserunt suscipit rerum possimus tempore. Minus modi mollitia doloremque quibusdam. Ratione reiciendis magni iusto inventore molestias. Ex numquam tempore nam iusto qui ullam mollitia. Qui quo officiis vel optio provident reprehenderit et. Quos culpa voluptate aliquam accusamus. Quae tenetur harum a voluptatem odio dolorem amet. Totam dolore iure sit illo praesentium vitae. Cumque sed perferendis accusamus ipsam repellendus ratione minus quae.</p><p>Placeat pariatur ex minus repellendus odit. Dolores illum rem harum excepturi animi. Vel minima laudantium quod accusantium neque dolores earum eos. Dolores fugiat dolorum temporibus officia et. Repellat temporibus non provident quos. Iste voluptatibus quis pariatur repudiandae totam harum rerum. Voluptatum eveniet optio assumenda enim. Quidem perspiciatis aut eligendi harum alias. Eligendi ad voluptatum possimus quam laborum dolorem. A dolore ab pariatur dignissimos quisquam iste quae eveniet. Laudantium fugit assumenda voluptatem vel illo. Nostrum eligendi error iusto libero aspernatur in similique dolorum. Suscipit enim officia culpa impedit. Expedita ad magnam doloribus nulla assumenda. Eum corrupti consequatur pariatur cum fuga. Molestias deserunt eos eaque ex nemo. Ipsum ullam quam est autem nobis. Occaecati ipsum maxime ipsa necessitatibus qui. Quasi dolores itaque reprehenderit asperiores quaerat magnam officiis praesentium. In a ullam dolorem et perferendis vitae sed aspernatur.</p>"}
12	{"en": "NEFROLOGY"}	nefrology	{"en": "Advising our patients in the treatment of the kidneys are what our team of nephrologists can help with"}	{"en": "<p>Harum distinctio rerum ipsa blanditiis asperiores. Quaerat sunt tenetur provident maiores ratione. Provident tempore eos maiores ratione. Nihil natus porro dignissimos quidem veniam rem temporibus tempore. Ab itaque accusamus in corporis labore totam natus. Magni deleniti magnam fuga laboriosam dolores in. Iste cum dicta quasi ducimus neque consequuntur dolor. Minima eos quo ex repellat molestias repudiandae. Laboriosam consequatur aliquam quaerat omnis facere hic similique ut. Repellendus magnam velit ducimus similique illo architecto. Quod nemo officia neque voluptates dolorum ullam ratione repellat. Rem voluptatum quibusdam quisquam ipsam. Quia voluptate delectus vitae rem dolores aperiam sapiente. Quisquam rerum sit dolorum molestias fugiat. Nam aliquam fuga est vero expedita quo amet. A sapiente hic corrupti aliquid. Neque illo ab id delectus asperiores aliquam. Amet nihil excepturi labore vitae magni nisi dolorum. Porro soluta recusandae nostrum ipsa reprehenderit labore.</p><p>Corporis fugit nesciunt laboriosam eaque distinctio enim. Nostrum magnam ad voluptatem illum eos error. Quo nostrum voluptas et eos mollitia voluptates. At explicabo dolorum placeat blanditiis totam aliquid. Deserunt soluta reiciendis est doloremque dolor sit ratione. Nemo eum eligendi omnis ipsum. Aliquam excepturi fuga vel fugiat ea. Rem optio neque reprehenderit nesciunt veritatis. Optio nam modi mollitia sed quidem quam quis. Minima reprehenderit dolorum quaerat tempore qui maiores. Quia placeat doloribus iste provident mollitia a. Soluta vero aspernatur ut qui exercitationem sequi. Quasi impedit nulla mollitia rerum molestias. Quaerat atque dolor voluptate nam. Modi corporis quia harum illum earum optio repellendus corrupti. Ipsam iste omnis non odit suscipit dignissimos harum numquam. Eos quibusdam nisi aperiam suscipit. Debitis explicabo molestias optio quo quia ipsum. Provident quos reiciendis corporis dolor eligendi libero nesciunt error.</p>"}
13	{"en": "RADIOTHERAPY"}	radiotherapy	{"en": "Treating diseases with our radiotherapy specialists"}	{"en": "<p>Doloribus omnis autem atque quis dignissimos consectetur eos aut. Cupiditate blanditiis praesentium laborum nisi. Ullam atque harum dolores hic totam reiciendis veritatis dolor. Repellendus voluptates qui molestias id laborum eius facilis nemo. Ex quibusdam quis et voluptatum nemo eaque vel. Distinctio necessitatibus vero laboriosam minima magnam veniam quo facere. Ea adipisci repudiandae dolores doloremque. Animi ullam nisi consequatur amet ut rem itaque modi. Ab qui dignissimos debitis fugiat corrupti. Earum incidunt porro atque ad maiores ab quas. Ex nulla esse laboriosam dolore error. Aliquam repellendus quo dolore velit quos. Beatae illum perspiciatis sint dolore harum voluptatem quia. Amet a perferendis odit ipsa. Placeat nobis incidunt enim deleniti. Quas id veniam eum magni iste reiciendis explicabo ea. Accusamus nesciunt deleniti recusandae magni. Dicta doloremque dolor beatae vitae ex eos error quaerat. Mollitia fuga cum iusto voluptas atque explicabo totam. Corporis fuga voluptatum autem modi.</p><p>Id accusamus repellat dolore tempora incidunt molestias itaque. Molestias odit fugit asperiores corrupti dolore labore amet. Quis quibusdam illo commodi tenetur aut voluptas aliquid quia. Debitis eveniet soluta adipisci deleniti nobis molestiae. Cupiditate ut occaecati incidunt rem quaerat quisquam doloremque nulla. Praesentium est perferendis ab delectus animi. Libero excepturi eveniet minus molestiae quisquam eligendi. Iste illo labore quibusdam vitae. Blanditiis accusamus repudiandae aliquam voluptatem voluptatibus. Adipisci ipsum ut expedita corporis libero labore corrupti. Alias tempora esse sequi aut molestias. Tempore aliquam quam accusamus quos maxime consequatur. Voluptatum quibusdam perspiciatis nihil cupiditate voluptates. Voluptates architecto quam sequi et expedita vitae aperiam commodi. Saepe repudiandae nam inventore facilis cupiditate. Ipsa ducimus at culpa asperiores optio. Eum dolorum natus recusandae porro fuga eos. Ut error nesciunt quis voluptatibus minima dolore. Tempore numquam aut asperiores dolor. Atque sit tenetur iure tempore ex maiores. Harum dolorem magnam quia aliquid quaerat.</p>"}
14	{"en": "PEDIATRIC SURGERY"}	pediatric-surgery	{"en": "Our pediatric surgical team is top of their field in performing surgical procedures on infants, children, and adolescents"}	{"en": "<p>Nostrum illum cum ut laborum cupiditate doloribus doloremque assumenda. Impedit porro ullam aut dolor accusamus aliquam. Sapiente hic cum quisquam omnis qui. Cum fugiat dolore odio quis. Esse error laboriosam quaerat illo porro. Vel itaque voluptatem quia eos tempora. Facere tenetur minus assumenda reiciendis inventore sequi expedita necessitatibus. Nam sint quae unde veritatis. Dolores iusto officia alias placeat optio. Ea commodi dolores distinctio voluptatibus inventore. Sequi eos sunt optio pariatur. Cum nulla vero pariatur odio non. Placeat quae architecto labore excepturi aliquam. Rerum ad eligendi pariatur illo earum quasi. Repellendus et tenetur enim facere nulla iusto ducimus. Beatae itaque perferendis error dolores culpa officia commodi. Quod similique distinctio debitis cupiditate odit explicabo. Ea eaque nulla totam ratione. Laudantium adipisci molestiae corporis cumque nam tenetur omnis. Ipsam recusandae molestias sunt facere laboriosam.</p><p>Optio consectetur excepturi sit ab vero ducimus eveniet commodi. Nihil eius totam facilis quaerat fugit beatae vel. Nisi sit quisquam sunt officiis dolores deserunt. Nisi iusto commodi mollitia impedit libero beatae. Mollitia animi culpa quod libero. Doloremque delectus harum soluta aut deleniti dolore possimus. Facere deleniti vel necessitatibus eveniet. Facere quis commodi inventore ipsum delectus tempore aut. Expedita consequatur ullam rerum occaecati inventore iste. Beatae tempore enim praesentium laboriosam harum. Inventore exercitationem quisquam modi atque non ullam numquam. Officia veniam iste temporibus corporis vero. Nam iure laudantium doloremque odio rem. Quaerat quam magni suscipit blanditiis nobis inventore. Eius nisi ipsa deserunt quas cupiditate. Officia nihil ab hic esse itaque animi facilis. Doloremque aperiam facere incidunt voluptatum. Ullam odio accusantium dolorum modi mollitia. Odio nisi totam nemo dolor quisquam minima distinctio. Quia porro magnam officiis in esse dignissimos.</p>"}
15	{"en": "MOUTH SURGERY"}	mouth-surgery	{"en": "Surgeons who perform surgical procedures involving the mouth, jaw, and related structures"}	{"en": "<p>Ducimus rerum doloribus animi a. Quibusdam odit illum maiores dicta pariatur debitis porro dolores. Neque repellendus temporibus quidem officia quam omnis incidunt placeat. Hic distinctio eveniet autem culpa provident maiores perferendis. Eligendi alias maiores corporis aspernatur atque sapiente mollitia. Quo voluptates amet praesentium consequatur neque ea. A occaecati qui veniam nihil unde velit. Vero eos natus architecto dignissimos optio officiis eligendi. Inventore officiis architecto ut dignissimos. Iure et laudantium voluptates in. Laborum excepturi ab nulla voluptatem qui quod autem. Perspiciatis ut laborum vero velit eveniet. Asperiores aspernatur quidem ipsum debitis quae. Vitae expedita voluptas minima cumque labore dolores ad. Molestiae hic aperiam enim nostrum. Maxime facere animi optio at magni quia sunt. Nisi sed asperiores rem alias aspernatur animi. Quam odio aut iste laborum occaecati nesciunt placeat. Officia eos nam aliquam nobis debitis unde non. Perspiciatis cumque cum tempore voluptate nam officia.</p><p>Fuga molestiae quaerat tenetur laborum dolore suscipit quo magnam. Nobis at iure reiciendis recusandae earum vero dicta sequi. Dolorum voluptatum libero repudiandae ipsum distinctio quisquam inventore. Facere aperiam cum quasi odit aliquid nihil corrupti dicta. Quasi laboriosam laborum quas placeat repudiandae omnis. Sequi fugiat quam repellendus ad. Quo pariatur dolor neque cumque quam. Soluta vel aliquid sint minima. Voluptate modi quia id assumenda sit saepe tempora. Repellendus quos iste earum veritatis atque sunt officiis. Alias consequuntur accusamus blanditiis veritatis libero. Doloribus dolorum officia officiis dicta consectetur eius. Accusantium autem corrupti quis nam. Vel tempora maxime nobis quis. Harum magnam modi totam eveniet maiores possimus deserunt. Neque deleniti possimus praesentium officiis temporibus nam reiciendis aut. Saepe accusamus vel sequi unde dolorem beatae sed ex. Hic deserunt officiis dolorum consequatur. Culpa illum excepturi reprehenderit eveniet perspiciatis nulla ullam. Labore accusantium magnam numquam alias optio. Quaerat perferendis quo natus accusamus voluptatum dolor debitis voluptatibus. Unde pariatur in nobis cum nesciunt tenetur. Nesciunt occaecati officia qui voluptates quidem.</p>"}
16	{"en": "PULMONOLOGY"}	pulmonology	{"en": "Our pulmonology team deals with diseases of the respiratory system"}	{"en": "<p>Maxime perferendis pariatur eaque occaecati labore quibusdam repudiandae. Quam numquam ea omnis nobis vitae porro veniam. Numquam neque repellat nesciunt laudantium ipsam culpa distinctio inventore. Fugit sequi ut libero reiciendis quidem nisi eius. Perferendis labore quod accusantium velit. Natus fuga possimus id tempore debitis consectetur. Atque ratione repellendus et saepe suscipit nulla illo. Corporis ullam odit ex molestiae voluptate. Modi architecto amet vel maxime totam similique saepe. Itaque soluta assumenda dolores voluptates cum quaerat minus. Est ducimus error iure ex. Eveniet non amet impedit laudantium voluptatem voluptatibus porro dolores. Eos a soluta quas fuga eligendi voluptate. Labore ea officiis blanditiis expedita est tempora nisi. Dolore quasi saepe ipsa tempora at quos accusamus. Corporis ut beatae omnis quia itaque. Occaecati ipsa ipsum illum reprehenderit. Praesentium inventore a quasi omnis nam ratione.</p><p>Voluptatibus itaque consequuntur nesciunt dolorum. Quia aspernatur consequatur magni reprehenderit neque rerum ipsa. Unde quos ducimus neque rem. Asperiores officiis et molestiae cum quis. Aliquid distinctio consequuntur cum unde exercitationem totam itaque dolor. Esse laborum voluptatum eaque eveniet repudiandae quisquam tempore nemo. Harum repellendus est expedita sunt veritatis excepturi amet. Expedita at porro ullam modi laudantium cum odit. Qui odio eveniet velit corporis veniam amet atque cum. Distinctio laudantium dicta voluptatum perferendis assumenda tempora voluptatem. Quia et quo nesciunt reiciendis. Sint ratione illum quisquam laboriosam quis itaque voluptatum fuga. Vero minus quis quos officiis quas sed deleniti asperiores. Corporis beatae debitis maxime quos dolore hic nesciunt soluta. Enim quasi quos similique eligendi. Magnam fugit minus cum culpa qui porro. Optio exercitationem explicabo deserunt labore dicta eveniet odit quae. Dicta possimus earum assumenda officia alias veniam. Quam porro fuga maxime eum aperiam at error. Consequuntur sit nisi temporibus enim similique veniam atque numquam. Modi fugiat hic laboriosam maxime incidunt occaecati. Unde eos eaque atque praesentium.</p>"}
17	{"en": "NUTRITION"}	nutrition	{"en": "Visit our nutritionists to learn about food and its effects on health, and the different ways it is providing nourishment"}	{"en": "<p>Laborum officiis harum rerum architecto eum. Ullam deleniti molestias libero saepe possimus. Ad eaque nulla sapiente sequi temporibus nemo. Rem dolore sequi atque porro ipsa. Iure magni adipisci optio delectus quod. Nisi placeat deserunt iure ducimus veritatis similique. Aspernatur deserunt explicabo non odio quia exercitationem sit. Iste unde amet quibusdam quidem id. Hic magnam nihil voluptatibus quae veritatis. Facere tenetur rem nesciunt minima debitis. Nesciunt minima minus porro harum aliquam at. Iusto ipsum ipsa eius rerum. Quo architecto consectetur officia laborum in vel et rem. Nam officia accusamus error qui accusantium. Vitae ad occaecati perferendis placeat illo. Debitis adipisci totam ipsa cumque vero illum quis sapiente. Quia unde illo nostrum modi ullam et. Suscipit laudantium ad eligendi dignissimos eaque explicabo eius. Sint itaque nesciunt eveniet rerum. Unde nulla mollitia consequatur deleniti aspernatur nisi. Illo quis sit perspiciatis possimus aliquam dolorem. Labore beatae libero numquam ipsa a. Suscipit eveniet voluptate nobis laudantium.</p><p>Fugit modi asperiores omnis molestiae occaecati facilis fugiat illo. Iure minus corrupti et ipsum quibusdam. Atque quam soluta aut consequatur similique. Dolor facilis sapiente deserunt quam exercitationem. Expedita quas illo consequatur incidunt odit. Quod maxime reprehenderit sequi esse earum. Voluptatibus id in ipsum dolores eaque ullam. Quo ea eveniet accusantium error magnam possimus exercitationem praesentium. Quis voluptates ad at nam. Quaerat facere tempore nemo temporibus eveniet adipisci. Fuga quibusdam et tempora debitis laborum asperiores necessitatibus molestias. Sed similique molestiae itaque optio. Explicabo dolor quam nobis necessitatibus. Voluptatibus veritatis voluptatem rerum repudiandae excepturi. Eaque exercitationem unde eius veritatis. Itaque officiis odio accusantium ullam natus. Quod amet beatae voluptate dolorem neque laboriosam dolorum iusto. Totam eligendi natus voluptatem rem officiis modi. Velit quod perferendis iusto maiores aut sed corporis eos. Expedita magnam debitis provident sapiente facere est.</p>"}
18	{"en": "OBGYN"}	obgyn	{"en": "Our specialists are here to advise patients on pregnancy, childbirth, and the postpartum period, as well as the health of the female reproductive system"}	{"en": "<p>Eaque ut natus libero tempore exercitationem facere. Sed minus cumque in non necessitatibus tempore accusamus. Sapiente aliquam ipsum odio qui aspernatur voluptatem ex quasi. Beatae illo quisquam amet perferendis aliquid quam. Sapiente reiciendis id animi beatae. Minima magnam suscipit consequuntur ipsam provident voluptatibus. Laudantium consequatur aut iste architecto et ullam. Laudantium ut error amet consequatur. Rerum corporis maiores nam necessitatibus reprehenderit voluptate dignissimos. Sed et laborum nemo neque consequuntur repellendus asperiores. Quod sit consectetur natus cumque sed. Eum at ea quas quaerat pariatur iure officiis quod. Modi doloremque illum ratione atque fugiat error. Repudiandae sunt magni consequuntur fuga. Nesciunt temporibus facere sapiente eum. Molestias vero omnis praesentium reiciendis pariatur. Fugiat qui quos voluptatibus sequi veritatis animi amet debitis. Harum soluta omnis nam quia iure. Itaque necessitatibus consequatur incidunt eos eum. Ipsa iure quibusdam necessitatibus praesentium deleniti assumenda cum ducimus. Ut temporibus nemo reiciendis ipsum porro dolores delectus. Officia sint atque repellat ut debitis officiis vel labore. Suscipit nulla doloribus earum illum nesciunt enim placeat esse. Ex officia minima nemo est natus. Veniam porro quasi eius maiores tempore.</p><p>Sunt assumenda hic nesciunt voluptates. Esse amet dignissimos ratione saepe maxime officiis hic. Corrupti labore id ipsam molestiae veritatis dolores facere. Sequi expedita reprehenderit aut veniam alias odit saepe repudiandae. Optio sequi ipsum corporis dolore. Molestiae exercitationem veniam distinctio dolore illo libero eaque nobis. Harum doloribus rerum debitis consectetur dolores molestiae. Rem quisquam esse aut quis reprehenderit doloribus quasi tenetur. Enim placeat soluta quaerat impedit harum esse atque optio. Mollitia cumque sed dignissimos atque eum. Eaque eos eius ab magnam. Maxime non adipisci laudantium commodi blanditiis sint voluptas. Officia aliquam vero error inventore. Id culpa quae omnis quibusdam dicta. Libero minima sunt incidunt quisquam. Ipsa nesciunt alias accusantium maiores ad doloremque. Autem veritatis pariatur doloribus sequi consequuntur eos. Cupiditate possimus dolor laboriosam cum nobis illum sit. Magnam sunt eius dolorem ipsa. Omnis quo nemo excepturi est tempora.</p>"}
19	{"en": "PLASTIC SURGERY"}	plastic-surgery	{"en": "A visit to our team of plastic surgeons to get the best advice and options on elective procedures"}	{"en": "<p>Maiores impedit pariatur eaque animi quod sed molestias quisquam. Voluptatibus deserunt aliquid earum voluptatum error blanditiis itaque unde. Veniam aliquam debitis mollitia dolorem rem. Soluta vero repellendus ipsam aliquid odio similique. Aspernatur aut doloribus error dicta unde. Et exercitationem eum vero debitis doloremque soluta maxime. Veritatis ipsam autem recusandae provident quis. Debitis itaque animi quidem dolorum quis deleniti similique omnis. Totam accusantium explicabo occaecati deserunt. Iste animi cumque voluptate a repellendus accusantium eveniet. Deleniti similique ratione at rem doloremque sapiente minus nisi. Temporibus optio tempore accusamus blanditiis porro molestias. Ipsa inventore hic velit ipsam veritatis autem est. Doloremque odit blanditiis cupiditate sunt quam. Libero autem numquam facilis tempore. Corrupti vitae fugit recusandae nihil maiores adipisci quae ullam. Unde ut corporis consequuntur deserunt voluptatibus officia natus debitis. Aut animi vitae odit adipisci dolorum. Rerum eligendi similique earum consequuntur minus accusamus expedita. Voluptatum velit nostrum minima quaerat delectus facilis. Quas ullam porro cum totam fuga.</p><p>Numquam quae ratione veniam eligendi. Tempore cum voluptatem autem reprehenderit laboriosam qui ad voluptatibus. Eligendi quia adipisci velit reiciendis. A modi ea nam ipsum eveniet dolor. Adipisci quis voluptate non quaerat in optio nisi aut. Aliquid similique ratione aperiam accusantium ab. Perspiciatis repellat ab quis a ut magnam. A cumque omnis tenetur harum ducimus soluta. Illo nesciunt id atque porro quisquam officia. Adipisci incidunt dolor sit sapiente asperiores. Explicabo minima veniam ex beatae asperiores odio error. Reiciendis amet nam eveniet similique eos ullam quos. Deserunt enim voluptate mollitia accusantium sit in. Iusto debitis dolorum suscipit quos inventore a provident alias. Hic quasi sed sit temporibus doloremque quo dolor provident. Debitis at temporibus nemo tempore alias modi aperiam commodi. Nulla maiores ullam ad labore officiis esse delectus adipisci. Quidem qui eius illo architecto officiis.</p>"}
20	{"en": "MEDICAL CHECK UP"}	medical-check-up	{"en": "We are prepared to give our patients a comprehensive examination on their health status"}	{"en": "<p>Maiores aliquam nihil modi ab voluptate amet facere nemo. Libero odio eum odit eos exercitationem aliquid hic qui. Omnis debitis consectetur recusandae quo quos cupiditate enim. Esse libero exercitationem ab sit corporis quod enim alias. Recusandae quidem modi sapiente nam vel rem ea. Eum ea dolor asperiores iste aliquid pariatur voluptatem. Delectus ut quisquam repudiandae ipsa iusto facere. Molestiae temporibus omnis error fugiat qui. Repellendus inventore eos cum necessitatibus. Officiis praesentium animi consequuntur atque. Mollitia occaecati id cum fuga voluptatibus alias. Expedita voluptatem sit dolorum corrupti provident numquam nesciunt odio. Minima nam vitae fugiat fuga cupiditate error ad dolor. Quos eos sunt aliquam ipsa dolore dignissimos exercitationem. Ea atque rerum molestias ratione doloremque alias esse. Voluptas excepturi modi explicabo asperiores at fuga facilis. Rem molestiae quaerat eligendi modi officiis illo explicabo pariatur. Suscipit quod beatae voluptatum quibusdam magnam at autem. Aspernatur sequi eligendi molestiae nemo recusandae laudantium doloremque. Distinctio reiciendis consequatur delectus quae saepe dicta. Laborum fugit quibusdam vel placeat doloribus. Officia dolor occaecati quisquam labore minus.</p><p>Amet officiis voluptates dolores molestiae asperiores. Tenetur necessitatibus rerum at labore. Dicta atque repudiandae pariatur maxime omnis placeat voluptatum minus. Minus ducimus blanditiis aliquid ea. Veritatis accusantium cumque temporibus necessitatibus dolor placeat. Deserunt itaque cupiditate odio consequuntur alias accusamus sit nulla. Sequi doloremque in nihil totam eius dicta nesciunt dolore. Quibusdam ipsam doloribus expedita modi aperiam earum. Fugit harum quis cum qui. Quis consectetur fugiat earum dolore et sapiente perferendis repellendus. Assumenda cupiditate commodi sunt consequatur eligendi repellendus. Voluptatibus ipsa tenetur fugit ex doloremque. Porro doloribus dignissimos numquam recusandae consectetur assumenda sit. Dolore maiores quam harum facere asperiores nostrum. Necessitatibus aliquam eaque repellendus a quia dignissimos quae. Voluptas dicta enim aliquam voluptatem at eveniet nobis. Distinctio nesciunt aliquid excepturi vitae necessitatibus quis exercitationem. Vitae quasi nihil alias dolores magnam quibusdam dolorem. Perspiciatis dicta et temporibus adipisci magnam harum. Vero quas necessitatibus quisquam ab rem nam. Laborum culpa cum quas officiis corrupti temporibus eius. Quas asperiores alias voluptate quae est sunt vel.</p>"}
21	{"en": "PSYCHIATRY"}	psychiatry	{"en": "Our Psychiatry department deals with the diagnosis, treatment, and prevention of mental illness"}	{"en": "<p>Aliquam voluptatibus recusandae temporibus sapiente minus. Ipsam a laborum non quas quam porro mollitia quaerat. Voluptates exercitationem possimus dicta rerum fuga itaque laudantium. Et laudantium quasi qui libero esse. Quo suscipit soluta recusandae veniam dolor ad vel. Nulla quod vero nemo necessitatibus architecto hic. Saepe natus deleniti alias ullam sapiente. Libero natus vero minus saepe excepturi facere. Hic culpa sequi iusto quae. Id blanditiis placeat omnis voluptatum corrupti aliquam. Delectus modi nostrum ipsa quidem ab. Maiores sit quos error blanditiis. Animi soluta minus inventore voluptate odio. Exercitationem iure quidem dicta asperiores nemo voluptatum. Consectetur blanditiis adipisci omnis ipsa quasi eos praesentium. Dignissimos reiciendis tempore architecto veritatis expedita id corrupti labore. Cumque eum commodi vel sapiente. Nisi minus expedita quaerat veniam officia. Optio qui eaque accusantium vero. Maxime labore voluptas odit dolorem itaque praesentium. Suscipit et vel quidem porro minus iure odio.</p><p>Quia eveniet minima culpa quas consectetur nesciunt architecto nam. Nulla mollitia placeat aliquam et sequi saepe aut nam. Quibusdam quae in doloremque laborum explicabo suscipit. Sunt consectetur commodi ratione voluptatum nobis officia sapiente. Tempore fugit quam beatae delectus sit tenetur consectetur doloribus. Alias minima ex velit aut adipisci laboriosam itaque. Aspernatur tempore voluptas asperiores suscipit adipisci fugiat nam architecto. Facere commodi numquam odit dolore reiciendis eius esse deleniti. Facere sit mollitia deserunt ullam. Reiciendis nam atque quisquam itaque reprehenderit. Itaque sequi animi commodi nihil maxime tenetur voluptas illum. Vitae quod dolore doloribus modi dolores quia. Culpa aperiam reprehenderit autem iusto eligendi exercitationem dignissimos perspiciatis. Quae eum sed dolorum amet corrupti. Asperiores ullam ex quia quasi cumque. Praesentium iusto id quam nobis sapiente harum. Modi quam dolorem laborum occaecati excepturi. Assumenda incidunt eligendi dolore id quidem ratione. Molestiae quia rerum mollitia doloremque in sint occaecati.</p>"}
22	{"en": "RADIOLOGY"}	radiology	{"en": "Our radiologists use medical imaging to diagnose and treat diseases"}	{"en": "<p>Omnis ipsa laborum commodi voluptatum. Eos nesciunt nisi mollitia non. Odit explicabo exercitationem modi eaque rerum. Quisquam dicta ipsum et ullam. Explicabo perspiciatis eligendi non quam laudantium. Soluta assumenda illo similique maiores. Ipsam illum error eum voluptate sed. Recusandae quibusdam vero eum facilis blanditiis placeat. Occaecati in veniam similique omnis iste voluptatem eos. Totam qui inventore illo natus asperiores. Nobis sit repellat vel minus voluptatibus. Alias unde blanditiis nostrum facilis illum fugiat ducimus soluta. Soluta inventore voluptates consequuntur laudantium necessitatibus quo ratione repellat. Voluptas omnis ad praesentium eaque ducimus. Repellat est illum eius quos vero ab. Molestiae beatae rem consequuntur unde praesentium est asperiores. Eligendi cumque magnam ipsum enim sapiente. Reiciendis eius sint consectetur alias doloremque ipsam. Sint odit ad voluptatum harum animi quidem non at. Quam eaque corporis libero ea nisi ab illo. Molestiae error et libero reprehenderit. Hic officia qui natus totam nam praesentium.</p><p>Rerum quas accusamus veniam deleniti. Vel aut officia quis et nam dolorum incidunt provident. Rerum recusandae aperiam enim culpa quos ipsa distinctio. Placeat facilis nobis corporis cupiditate voluptatum delectus aut. Blanditiis quos impedit beatae fuga sint. A totam provident quibusdam deserunt illo commodi molestias ad. Expedita ratione necessitatibus natus harum placeat id explicabo fugit. Placeat veritatis blanditiis eum dolore praesentium. Eius fuga perspiciatis consectetur ullam enim deleniti voluptates. Minus explicabo distinctio blanditiis quaerat est repellendus eos. Numquam consequuntur unde facilis tempora provident excepturi quas. Odio doloribus accusantium sapiente debitis saepe quo distinctio voluptatem. Maxime laudantium commodi nobis quasi architecto sit deserunt debitis. Occaecati cumque cupiditate ullam expedita ducimus natus. Perferendis et nostrum at ut expedita quas. Nesciunt necessitatibus ab dicta error. Blanditiis exercitationem praesentium sed eum rerum voluptate. Enim quam laudantium dolorem corrupti ipsum praesentium. Suscipit molestias delectus hic quae incidunt accusantium. Aut quisquam tenetur quae neque veniam a eius tempore.</p>"}
23	{"en": "ORTHOPAEDICS"}	orthopaedics	{"en": "Orthopedics surgeons to help patients with the preservation and restoration of the musculoskeletal system"}	{"en": "<p>Dolorum voluptatem mollitia quas sequi asperiores eveniet vel. Molestias eveniet reiciendis maxime quia aperiam. At delectus reiciendis eius quam pariatur voluptates. Distinctio officiis a repellat ratione corrupti aperiam dicta nam. Odio reiciendis dolor illum eaque provident nemo sint. Provident qui laborum quos labore veritatis. Temporibus quis voluptatum pariatur illo. Eum voluptatum quidem temporibus debitis sint dolores. Tempora aut sint doloribus eos. Quo natus consequuntur reprehenderit molestias nam ipsa. Temporibus sit quam porro autem veritatis. Ipsa voluptates aspernatur nihil aperiam quos rerum atque tempore. Sint temporibus officiis a ipsam. Architecto cum dolorum odit corporis sed incidunt. Voluptas id odit laudantium quisquam rerum. Repudiandae quasi rerum voluptatem eligendi est quidem fugiat. Neque ipsum cum sed quibusdam voluptate repellendus id. Quis reprehenderit beatae aliquam sapiente doloribus voluptatibus voluptates. Autem maiores praesentium hic adipisci saepe.</p><p>Architecto iusto ipsam eaque fugiat sint. Sapiente minus est aliquam corrupti maxime tempora. Qui quasi tempore voluptates odio modi. Nobis mollitia quibusdam minima quam sed dolores. Sed culpa omnis voluptatibus quo saepe cumque. Quam mollitia minus voluptas unde. Repellendus laboriosam officia corporis nihil. In temporibus ea at exercitationem saepe ratione. Ipsum et expedita ducimus voluptate eum illum. Est sunt expedita tempore laboriosam ullam numquam. Distinctio sunt quae fugit recusandae cum. Sed esse doloribus molestias facere nulla. Animi at magni impedit non eum. Laborum tenetur eveniet est molestias. In tempora aut assumenda vitae adipisci incidunt. Molestiae facere officiis atque deleniti. Architecto mollitia quisquam laudantium omnis cumque enim modi fugit. Maxime voluptas aperiam laborum voluptatibus eos laudantium distinctio. Et laboriosam repellendus ab at nemo.</p>"}
24	{"en": "OTOLARYNGOLOGY"}	otolaryngology	{"en": "The department has specialists that deal with ear, nose, and throat (ENT) and related structures"}	{"en": "<p>Soluta voluptate enim dicta non totam. Quaerat aspernatur dolor quidem assumenda quos. Possimus assumenda veniam quisquam labore. Officia corporis impedit itaque enim soluta doloremque sint provident. Quibusdam possimus delectus molestiae dignissimos modi. Cum perferendis laboriosam sapiente deserunt. Illum eum laborum rem voluptatem ad. Commodi facere quae suscipit natus. Dicta adipisci ea explicabo molestiae similique asperiores. Facere labore fugit illo vitae. Illum culpa fuga porro adipisci. Animi eius ut nemo error. Libero mollitia fuga laboriosam voluptatibus. At enim eveniet laboriosam sunt voluptas. Nemo vel dolorem cupiditate quidem repellendus odit beatae. Sequi facilis dolorem harum ipsa. Esse voluptate impedit praesentium fuga. Iusto nesciunt cupiditate fuga commodi. Esse nesciunt consequatur inventore harum vel. Pariatur expedita ab suscipit quasi libero architecto ullam iusto.</p><p>Ex consequatur quibusdam minima fugiat cum laborum. Porro voluptatibus totam optio sapiente distinctio cumque. Sapiente eligendi nemo accusamus architecto. Incidunt doloremque praesentium quos minus consequuntur. Voluptatum nobis quibusdam consectetur amet tempora. Repudiandae labore saepe quasi ad iste totam. Quibusdam similique necessitatibus facilis quaerat sapiente numquam reprehenderit unde. Doloribus earum quo itaque incidunt quos impedit. Modi maxime quas architecto atque neque amet. Ipsum explicabo expedita nemo ut dignissimos dolorum. Veritatis facere sunt ducimus ut molestiae. Ea ducimus doloremque iste soluta. Architecto libero minus quae dolorem ab exercitationem fugiat. Vel facilis ab omnis consectetur quos. Inventore laboriosam tempore voluptate velit exercitationem eius voluptatem delectus. Magnam atque molestiae id itaque culpa porro minima repellendus. Culpa fugiat illum incidunt nostrum. Pariatur occaecati harum architecto nobis perspiciatis. Repudiandae quis nesciunt dignissimos error.</p>"}
25	{"en": "PALLIATIVE CARE"}	palliative-care	{"en": "Our services also include specialized medical care focused on providing relief from the symptoms and stress of a serious illness"}	{"en": "<p>Enim fugiat pariatur laudantium placeat. Quisquam temporibus ea at hic quaerat praesentium adipisci. Sint quaerat laborum voluptate cupiditate incidunt voluptatem doloribus in. Aliquam occaecati esse molestias in. Impedit commodi quo fugit expedita sit maxime natus. Iusto veritatis aliquam accusamus inventore labore tempore aspernatur odio. Aperiam animi vel quo eum. Doloremque excepturi quibusdam neque corrupti maxime eligendi nisi. Assumenda eaque veniam culpa animi. Beatae repellendus aperiam aspernatur dolorum. Alias cumque fuga accusantium repellat. Molestias cupiditate incidunt eos odio repudiandae et praesentium. Distinctio molestiae iste consectetur consequuntur nulla asperiores mollitia. Cupiditate aspernatur provident unde nisi similique. Repellat est sequi ipsam nostrum eum. Quis similique fugit officiis id dicta ipsam. Molestiae alias illum amet ipsa repellat. Iure aut minus nobis nesciunt corporis. Eaque quam ipsam ut est. Sint vitae excepturi atque aliquid debitis est.</p><p>Maxime voluptatum aliquam dolorem magni. Exercitationem voluptatum quis nostrum esse occaecati quisquam. Magni dignissimos sint numquam quaerat. Recusandae repellendus est tenetur eligendi facilis soluta iure. Veniam quod tempora nemo excepturi adipisci sunt porro. Dolorem maxime repellat sint quod eveniet ab itaque necessitatibus. Placeat ad consectetur dolorum voluptatem pariatur. Numquam inventore ex nihil quas libero itaque ducimus. Odio accusantium neque voluptatibus illo ipsum totam molestiae. Officia quibusdam quidem veniam ut odit id. Explicabo totam delectus quasi ipsam possimus. At ab molestias qui temporibus ullam fugit. Excepturi placeat eligendi quo repellat. Quo aut hic voluptate sequi doloribus sunt. Soluta nulla error quia suscipit omnis. Voluptatibus porro incidunt numquam hic repudiandae magni. Sed temporibus doloribus minima necessitatibus accusantium ipsum officiis impedit. Beatae esse saepe sed atque vel officiis. Id occaecati earum impedit ipsum dignissimos. Officia iste laborum quia quis earum ducimus.</p>"}
26	{"en": "PHYSICAL THERAPY"}	physical-therapy	{"en": "Physical therapists that create specialized treatment plans that will fit the needs of a patients’ condition and help them heal"}	{"en": "<p>Ipsum eius perspiciatis odit impedit nam veniam. Totam numquam voluptas explicabo ab expedita in dolore. Impedit fugiat dolorem harum illo saepe voluptates vel. Numquam facilis aliquid natus voluptate quam soluta excepturi dolorem. Distinctio eveniet itaque consectetur voluptatibus. Mollitia beatae illo facere quasi quis in adipisci. Quas sit in quam accusamus sapiente culpa nesciunt totam. Expedita sapiente odio adipisci eveniet ex consequuntur error. Eveniet voluptates libero odio optio doloribus nisi eum. Harum alias totam suscipit repudiandae ipsum molestias debitis voluptatem. Quidem dolorum omnis explicabo exercitationem velit. Illo eveniet saepe in iste dicta hic quibusdam. Provident ex beatae itaque nobis quas. Officia accusantium perferendis qui dolorum itaque rerum. Cum doloremque consequatur incidunt voluptatibus illo fuga eaque. Deleniti placeat tempore animi quos consequuntur. Omnis nesciunt reprehenderit atque pariatur. Expedita cumque odit voluptatem sed totam culpa. Cum quo tempore ipsum harum ab earum dolorem.</p><p>Exercitationem maxime quo dolore facilis. Nihil blanditiis iusto ullam vero quisquam nesciunt doloremque amet. Dolores omnis corrupti debitis quas quaerat. Animi corporis accusantium beatae saepe tenetur. Eligendi tempora vitae magni sed non velit. Fuga repellendus tenetur cumque porro. Ipsum aut fuga debitis quis. Laboriosam suscipit totam aliquam eum minima officiis. Excepturi sapiente exercitationem reiciendis perspiciatis. Praesentium aut sint animi architecto tempore rerum voluptates. Autem architecto tenetur suscipit quis repellendus. Veniam atque quis a nemo excepturi. Vero quos qui asperiores ipsum at. Cupiditate animi consequuntur asperiores iure ad. In deserunt quam accusamus exercitationem occaecati neque. Sapiente corrupti mollitia at accusamus iste. Sit molestiae maiores veritatis corrupti similique ratione non. Cupiditate maiores repellat assumenda odio. Amet impedit facere quia quasi eos dicta totam blanditiis. Praesentium tempore sunt numquam adipisci cum.</p>"}
27	{"en": "ENDOCRINOLOGY"}	endocrinology	{"en": "Specialists that deal with endocrine glands and hormones"}	{"en": "<p>Facilis accusamus numquam reprehenderit commodi animi. Veritatis eaque vitae iure necessitatibus mollitia reprehenderit eius. Doloremque magnam quae esse voluptatem facilis. Praesentium aut nesciunt a accusamus facere blanditiis. Nulla inventore corporis dolore aliquid. Voluptates omnis doloribus nostrum pariatur animi quas consequatur odit. Illum dolorum pariatur nam voluptatem magni iste laborum. Eum iste nisi rem labore dicta laborum velit commodi. Sequi vitae fugiat magni voluptatibus repellendus tempore ratione non. Incidunt nemo iure cupiditate itaque consequuntur doloribus. Perspiciatis magni assumenda maxime sint velit iusto laboriosam debitis. Sequi cupiditate harum distinctio ullam ex. Quidem impedit error tenetur eos non accusamus culpa. Ipsa fugiat assumenda similique accusamus error. Asperiores sapiente laborum omnis rem. Id aut amet dicta vitae pariatur doloremque quis. Excepturi ut earum veniam laborum voluptatem autem doloremque blanditiis. Saepe maiores fugiat mollitia quasi ab doloribus iste laudantium. Quaerat doloremque natus inventore minima quasi amet tempora. Repellat facere minima iure fugit quae nemo autem perferendis. Ad consequatur vel at omnis aspernatur.</p><p>Ipsa sit ab repellendus ex. Eaque repellendus tempore architecto animi. Occaecati laboriosam modi molestias dolor sed. Nesciunt nemo pariatur molestiae ut. Incidunt facilis illo nostrum assumenda ex consequatur quos. Eum modi dolore fugiat esse unde delectus doloremque maiores. Laboriosam similique necessitatibus nemo quasi sapiente. Ducimus suscipit labore harum officia enim accusamus. Minus molestias autem eius omnis sit soluta quidem eligendi. Consequuntur recusandae facere iusto nam sed nesciunt officia. Rerum vel asperiores velit consectetur nobis fugiat ipsum non. Alias quaerat officia ex vel quam repudiandae aspernatur aliquid. Qui cum illum earum nam sapiente. Cumque vitae corporis voluptatibus possimus ad reiciendis nemo. Eum qui earum assumenda aliquam et voluptatum. Nostrum quasi sint aliquid porro. Cum nesciunt laborum iusto quaerat eum architecto. Ut in dolorem explicabo vel. Necessitatibus maiores aliquid alias ratione tempore laudantium. Nobis numquam vero maxime error est debitis harum tempora. Deleniti modi quo quod minima repellat. Ratione necessitatibus aperiam tempore maiores corrupti dicta incidunt libero. Nemo enim sunt vel eaque harum tempore ea. Quas alias quod eius enim praesentium.</p>"}
28	{"en": "TROPICAL INFECTION"}	tropical-infection	{"en": "We have specialists that diagnose and treat infections that are commonly found in tropical or subtropical regions"}	{"en": "<p>Maxime odio quaerat vitae architecto. Perferendis sequi animi blanditiis nisi aut saepe. Modi voluptas distinctio recusandae voluptate quam explicabo molestiae. Nam magnam id at quae quia ullam. Blanditiis accusantium iusto eum magnam numquam officiis. Voluptatibus quos perferendis accusantium molestiae expedita sequi impedit. Nihil quos consectetur similique corrupti dolore officia eos. Incidunt accusantium ratione nihil voluptatibus possimus dicta veniam. Labore asperiores cupiditate possimus libero. Quasi aliquam iusto commodi nesciunt sunt error delectus occaecati. Officia sequi blanditiis quo mollitia unde corrupti. Sed aliquid suscipit fuga similique nihil id itaque laboriosam. Perspiciatis soluta culpa sed adipisci ad nemo incidunt. Sequi soluta ut rerum quo pariatur consectetur. Nam neque deleniti in temporibus perferendis. Itaque eveniet ullam maxime cum quas non atque. Expedita fuga ad exercitationem illo. Dolorem ipsum fuga vero eligendi aperiam. Temporibus earum provident tempora illo molestias dignissimos sapiente magnam. Minus quia occaecati quis at. Nulla rem ad quasi quisquam voluptates. Nostrum excepturi dolores delectus quasi.</p><p>Nisi ipsam exercitationem sunt accusantium. Corporis minima temporibus optio id inventore nesciunt facilis ipsum. Recusandae distinctio repellat labore molestiae reprehenderit. Fuga nisi officia officiis quasi autem. Minima ratione quas amet aperiam incidunt beatae sequi. Voluptates enim commodi ad odio. Cupiditate omnis id reiciendis quam esse voluptas. Error voluptatibus eveniet saepe quibusdam at numquam. Reiciendis dolore molestias placeat repudiandae exercitationem laudantium. Numquam error earum praesentium enim iusto. Fugiat adipisci minus optio veniam sit dolor reiciendis quia. Occaecati hic molestias id officiis. Placeat consequuntur culpa id facilis ipsa et pariatur. Fugit modi impedit molestiae ipsam. Voluptas veniam esse iste fugiat sed neque tenetur accusantium. Ad maxime consectetur possimus repellat dicta cupiditate. Suscipit voluptate mollitia placeat laborum. Minima perferendis doloribus quaerat repellendus deleniti eaque officia. Impedit distinctio vel sunt tempore maxime.</p>"}
29	{"en": "NUCLEAR MEDICINE"}	nuclear-medicine	{"en": "Our hospital is equipped with medical imaging using radioactive substances to diagnose and treat diseases"}	{"en": "<p>Commodi consequuntur nam fugiat aut. Illo unde minima nobis earum accusantium sapiente. Nisi cumque dicta molestias dolor soluta eligendi. At tenetur voluptas minus amet totam nihil sit. Laborum vitae provident ullam aspernatur corrupti eius. Aliquid similique pariatur accusantium dicta earum. Repellendus laudantium consequatur veniam ut ipsa. Officia velit incidunt veniam deserunt. Ducimus dicta tempora voluptas aliquid sed doloremque dignissimos. Laborum similique cupiditate veniam assumenda iusto. Nemo dolores esse id ratione at placeat totam. Dolorem nihil ipsam velit praesentium. Esse ratione accusantium placeat illum. Dolorum hic dolores qui quidem totam. Quod similique beatae debitis eius ex. Mollitia nobis soluta inventore aliquam dolorem est. Laborum occaecati temporibus nostrum perspiciatis. Sunt consectetur error quam enim. Aut possimus numquam officia quaerat iure. Deserunt repudiandae explicabo ea ipsum soluta sint quos voluptatem.</p><p>Perspiciatis velit qui dolore est. Architecto nobis doloribus aspernatur labore quae quibusdam recusandae consectetur. Numquam nihil eius impedit occaecati maxime assumenda. Cumque mollitia dicta dolor iure. Est dolorem reiciendis dolor fugit excepturi. Placeat odio fugiat sunt in officiis. Quas molestias laudantium quibusdam vel iure ducimus omnis eos. Ad aliquam laboriosam natus qui exercitationem laudantium. Mollitia tempora alias vero veniam. Molestiae perferendis culpa expedita modi. Blanditiis praesentium rem sint fugiat exercitationem recusandae nostrum id. Quas commodi itaque saepe culpa suscipit quo similique ad. Cum quasi minus dolore dicta nobis ipsam quibusdam distinctio. Nulla soluta cupiditate molestiae voluptas ex quam temporibus a. Illo culpa ab mollitia quis reiciendis. Assumenda sequi eos sed rerum totam dolorem eligendi perferendis. Quisquam odit totam minus iste aspernatur. Enim sunt numquam eos incidunt facilis veritatis autem natus. Repellat nihil hic neque porro natus. At vel recusandae rerum necessitatibus. Omnis facilis occaecati sequi mollitia nostrum laborum numquam. Vero quas eaque maxime doloribus dolor laboriosam eligendi harum. Deserunt iusto suscipit nostrum modi.</p>"}
30	{"en": "PHARMACY"}	pharmacy	{"en": "Our pharmacists prepare and dispense the drugs and medications of our patients, and help advise them on their use"}	{"en": "<p>Consectetur occaecati doloribus quae quod vitae iusto non. Officiis molestiae consequuntur suscipit corporis fugit dignissimos hic dolore. Suscipit laboriosam numquam quos optio impedit. Rerum modi commodi quos magni. Praesentium architecto sit voluptate esse animi sapiente itaque. Omnis fugit ad cum iure impedit earum. Nulla delectus impedit deleniti ipsa. Excepturi autem ab voluptatibus id veritatis est. Quisquam enim praesentium excepturi accusantium quod in. Minus repellendus distinctio omnis dicta. Veritatis molestiae error sit veniam cupiditate illo. Nobis tempore delectus sint quod architecto explicabo distinctio dicta. Eum et cumque eligendi quibusdam laudantium soluta. Nesciunt doloremque quidem omnis ipsam. Quam eum maxime natus possimus. Accusamus ipsam praesentium nemo corrupti quo harum quas. Pariatur commodi fugit temporibus dicta itaque vero ab ipsam. Explicabo esse amet ipsam maxime perspiciatis libero vero iste. Provident eaque aliquam sit eos suscipit neque numquam non.</p><p>Nobis debitis magni eveniet natus ipsam. Eveniet provident quos veniam ratione saepe nam qui. Possimus repellendus laboriosam optio veniam laudantium. Voluptas molestias animi unde odit hic ad sed tempora. Reiciendis iure fugiat ipsam reprehenderit dicta deleniti repudiandae. Voluptatibus eveniet asperiores facere maiores vitae. Nam ut mollitia ex sit inventore. Dignissimos aliquid adipisci sapiente nulla quis. Est doloremque dolores perferendis alias voluptate exercitationem saepe. Tempore impedit hic occaecati esse architecto. Praesentium rerum amet itaque aperiam eligendi impedit. Maiores nobis ab optio animi aperiam veritatis. Aperiam ratione illum explicabo necessitatibus. Numquam inventore ab perspiciatis dolor libero. Error porro harum eaque quasi eligendi fuga. Soluta id tenetur magnam aliquam libero modi illo. Placeat ab atque molestiae velit perspiciatis reprehenderit similique. Nesciunt eveniet beatae delectus repellat itaque ab tempora. Quidem nesciunt consequatur vero vitae incidunt velit rerum. Ipsum error cum ducimus illo est fugit sit. Sapiente mollitia praesentium harum numquam atque soluta.</p>"}
\.


--
-- Data for Name: specialities; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.specialities (id, doctor_id, specialist_id) FROM stdin;
1	1	2
4	1	1
5	2	1
6	2	4
7	3	20
8	4	20
9	5	20
10	6	20
11	7	20
12	8	9
13	9	9
14	10	18
15	11	18
16	12	18
17	13	7
18	14	7
19	15	7
20	16	23
21	17	24
22	18	24
23	19	24
24	20	1
25	21	1
26	22	1
27	23	2
28	24	2
29	25	3
30	26	3
31	27	3
32	28	3
33	29	16
34	30	5
35	31	5
36	32	4
37	33	4
38	34	4
39	35	26
\.


--
-- Data for Name: testimonials; Type: TABLE DATA; Schema: public; Owner: deployer
--

COPY public.testimonials (id, full_name, comment) FROM stdin;
2	Richard Goebels	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
3	Louis Saha	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
1	Rebecca Lane	Siapa sangka, saya mengalami serangan jantung di usia semuda ini. Untunglah bertemu dr. Sari yang sangat komunikatif. Penanganan tim medis RS Tria Dipa juga sangat baik, perawatnya ramah dan cepat tanggap.
\.


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 39, true);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 414, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 414, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 268, true);


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.addresses_id_seq', 1, true);


--
-- Name: admins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.admins_id_seq', 3, true);


--
-- Name: appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.appointments_id_seq', 2, true);


--
-- Name: archive_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.archive_types_id_seq', 1, false);


--
-- Name: archives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.archives_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.articles_id_seq', 4, true);


--
-- Name: banner_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.banner_sections_id_seq', 1, false);


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.banners_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.categories_id_seq', 4, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, false);


--
-- Name: doctors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.doctors_id_seq', 35, true);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.events_id_seq', 2, true);


--
-- Name: facilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.facilities_id_seq', 6, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 1, false);


--
-- Name: institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.institutions_id_seq', 4, true);


--
-- Name: link_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.link_buttons_id_seq', 1, false);


--
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.menus_id_seq', 1, false);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.pages_id_seq', 1, false);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.questions_id_seq', 5, true);


--
-- Name: report_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.report_types_id_seq', 1, false);


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.reports_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- Name: schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.schedules_id_seq', 127, true);


--
-- Name: sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.sections_id_seq', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.settings_id_seq', 1, true);


--
-- Name: snippets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.snippets_id_seq', 1, false);


--
-- Name: specialists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.specialists_id_seq', 30, true);


--
-- Name: specialities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.specialities_id_seq', 39, true);


--
-- Name: testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deployer
--

SELECT pg_catalog.setval('public.testimonials_id_seq', 3, true);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: admins admins_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (id);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: archive_types archive_types_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.archive_types
    ADD CONSTRAINT archive_types_pkey PRIMARY KEY (id);


--
-- Name: archives archives_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.archives
    ADD CONSTRAINT archives_pkey PRIMARY KEY (id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: banner_sections banner_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.banner_sections
    ADD CONSTRAINT banner_sections_pkey PRIMARY KEY (id);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: facilities facilities_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.facilities
    ADD CONSTRAINT facilities_pkey PRIMARY KEY (id);


--
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: institutions institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_pkey PRIMARY KEY (id);


--
-- Name: link_buttons link_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.link_buttons
    ADD CONSTRAINT link_buttons_pkey PRIMARY KEY (id);


--
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: report_types report_types_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.report_types
    ADD CONSTRAINT report_types_pkey PRIMARY KEY (id);


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schedules schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sections sections_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: snippets snippets_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.snippets
    ADD CONSTRAINT snippets_pkey PRIMARY KEY (id);


--
-- Name: specialists specialists_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.specialists
    ADD CONSTRAINT specialists_pkey PRIMARY KEY (id);


--
-- Name: specialities specialities_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.specialities
    ADD CONSTRAINT specialities_pkey PRIMARY KEY (id);


--
-- Name: testimonials testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.testimonials
    ADD CONSTRAINT testimonials_pkey PRIMARY KEY (id);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name, locale);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_admins_on_email; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_admins_on_email ON public.admins USING btree (email);


--
-- Name: index_archives_on_archive_type_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_archives_on_archive_type_id ON public.archives USING btree (archive_type_id);


--
-- Name: index_archives_on_title; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_archives_on_title ON public.archives USING btree (title);


--
-- Name: index_articles_on_category_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_articles_on_category_id ON public.articles USING btree (category_id);


--
-- Name: index_articles_on_slug; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_articles_on_slug ON public.articles USING btree (slug);


--
-- Name: index_articles_on_title; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_articles_on_title ON public.articles USING btree (title);


--
-- Name: index_banners_on_banner_section_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_banners_on_banner_section_id ON public.banners USING btree (banner_section_id);


--
-- Name: index_doctors_on_full_name; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_doctors_on_full_name ON public.doctors USING btree (full_name);


--
-- Name: index_doctors_on_slug; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_doctors_on_slug ON public.doctors USING btree (slug);


--
-- Name: index_facilities_on_name; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_facilities_on_name ON public.facilities USING btree (name);


--
-- Name: index_facilities_on_slug; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_facilities_on_slug ON public.facilities USING btree (slug);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_type_and_sluggable_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type_and_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_type, sluggable_id);


--
-- Name: index_institutions_on_name; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_institutions_on_name ON public.institutions USING btree (name);


--
-- Name: index_institutions_on_slug; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_institutions_on_slug ON public.institutions USING btree (slug);


--
-- Name: index_link_buttons_on_linkable; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_link_buttons_on_linkable ON public.link_buttons USING btree (linkable_type, linkable_id);


--
-- Name: index_link_buttons_on_objectable; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_link_buttons_on_objectable ON public.link_buttons USING btree (objectable_type, objectable_id);


--
-- Name: index_pages_on_banner_section_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_pages_on_banner_section_id ON public.pages USING btree (banner_section_id);


--
-- Name: index_pages_on_slug; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_pages_on_slug ON public.pages USING btree (slug);


--
-- Name: index_pages_on_title; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_pages_on_title ON public.pages USING btree (title);


--
-- Name: index_reports_on_report_type_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_reports_on_report_type_id ON public.reports USING btree (report_type_id);


--
-- Name: index_reports_on_title; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_reports_on_title ON public.reports USING btree (title);


--
-- Name: index_schedules_on_doctor_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_schedules_on_doctor_id ON public.schedules USING btree (doctor_id);


--
-- Name: index_sections_on_page_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_sections_on_page_id ON public.sections USING btree (page_id);


--
-- Name: index_sections_on_snippet_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_sections_on_snippet_id ON public.sections USING btree (snippet_id);


--
-- Name: index_snippets_on_name; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_snippets_on_name ON public.snippets USING btree (name);


--
-- Name: index_specialists_on_name; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_specialists_on_name ON public.specialists USING btree (name);


--
-- Name: index_specialists_on_slug; Type: INDEX; Schema: public; Owner: deployer
--

CREATE UNIQUE INDEX index_specialists_on_slug ON public.specialists USING btree (slug);


--
-- Name: index_specialities_on_doctor_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_specialities_on_doctor_id ON public.specialities USING btree (doctor_id);


--
-- Name: index_specialities_on_specialist_id; Type: INDEX; Schema: public; Owner: deployer
--

CREATE INDEX index_specialities_on_specialist_id ON public.specialities USING btree (specialist_id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: deployer
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

