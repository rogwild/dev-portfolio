--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg110+1)
-- Dumped by pg_dump version 16.0

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO "dev-portfolio";

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO "dev-portfolio";

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO "dev-portfolio";

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO "dev-portfolio";

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO "dev-portfolio";

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO "dev-portfolio";

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO "dev-portfolio";

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO "dev-portfolio";

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: components_elements_buttons; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_buttons (
    id integer NOT NULL,
    url text,
    description text,
    variant character varying(255),
    title text,
    additional_attributes jsonb,
    class_name character varying(255)
);


ALTER TABLE public.components_elements_buttons OWNER TO "dev-portfolio";

--
-- Name: components_elements_buttons_arrays; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_buttons_arrays (
    id integer NOT NULL,
    title text,
    class_name character varying(255),
    variant character varying(255),
    description text,
    url character varying(255),
    additional_attributes jsonb
);


ALTER TABLE public.components_elements_buttons_arrays OWNER TO "dev-portfolio";

--
-- Name: components_elements_buttons_arrays_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_buttons_arrays_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_elements_buttons_arrays_components OWNER TO "dev-portfolio";

--
-- Name: components_elements_buttons_arrays_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_buttons_arrays_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_buttons_arrays_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_buttons_arrays_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_buttons_arrays_components_id_seq OWNED BY public.components_elements_buttons_arrays_components.id;


--
-- Name: components_elements_buttons_arrays_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_buttons_arrays_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_buttons_arrays_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_buttons_arrays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_buttons_arrays_id_seq OWNED BY public.components_elements_buttons_arrays.id;


--
-- Name: components_elements_buttons_flyout_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_buttons_flyout_links (
    id integer NOT NULL,
    button_id integer,
    flyout_id integer
);


ALTER TABLE public.components_elements_buttons_flyout_links OWNER TO "dev-portfolio";

--
-- Name: components_elements_buttons_flyout_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_buttons_flyout_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_buttons_flyout_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_buttons_flyout_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_buttons_flyout_links_id_seq OWNED BY public.components_elements_buttons_flyout_links.id;


--
-- Name: components_elements_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_buttons_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_buttons_id_seq OWNED BY public.components_elements_buttons.id;


--
-- Name: components_elements_date_values; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_date_values (
    id integer NOT NULL,
    date_value date,
    datetime_value timestamp(6) without time zone,
    time_value time without time zone
);


ALTER TABLE public.components_elements_date_values OWNER TO "dev-portfolio";

--
-- Name: components_elements_date_values_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_date_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_date_values_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_date_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_date_values_id_seq OWNED BY public.components_elements_date_values.id;


--
-- Name: components_elements_faqs; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_faqs (
    id integer NOT NULL,
    description text,
    title text
);


ALTER TABLE public.components_elements_faqs OWNER TO "dev-portfolio";

--
-- Name: components_elements_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_faqs_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_faqs_id_seq OWNED BY public.components_elements_faqs.id;


--
-- Name: components_elements_features; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_features (
    id integer NOT NULL,
    description text,
    title text,
    subtitle text
);


ALTER TABLE public.components_elements_features OWNER TO "dev-portfolio";

--
-- Name: components_elements_features_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_features_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_features_id_seq OWNED BY public.components_elements_features.id;


--
-- Name: components_elements_fonts; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_fonts (
    id integer NOT NULL,
    weight character varying(255),
    style character varying(255),
    variant character varying(255)
);


ALTER TABLE public.components_elements_fonts OWNER TO "dev-portfolio";

--
-- Name: components_elements_fonts_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_fonts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_fonts_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_fonts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_fonts_id_seq OWNED BY public.components_elements_fonts.id;


--
-- Name: components_elements_input_options; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_input_options (
    id integer NOT NULL,
    title text,
    description text
);


ALTER TABLE public.components_elements_input_options OWNER TO "dev-portfolio";

--
-- Name: components_elements_input_options_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_input_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_input_options_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_input_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_input_options_id_seq OWNED BY public.components_elements_input_options.id;


--
-- Name: components_elements_inputs; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_inputs (
    id integer NOT NULL,
    placeholder character varying(255),
    variant character varying(255),
    is_required boolean,
    value text,
    name character varying(255),
    label text,
    class_name character varying(255),
    type character varying(255),
    multiple boolean,
    min double precision,
    max double precision,
    step double precision
);


ALTER TABLE public.components_elements_inputs OWNER TO "dev-portfolio";

--
-- Name: components_elements_inputs_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_inputs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_elements_inputs_components OWNER TO "dev-portfolio";

--
-- Name: components_elements_inputs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_inputs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_inputs_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_inputs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_inputs_components_id_seq OWNED BY public.components_elements_inputs_components.id;


--
-- Name: components_elements_inputs_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_inputs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_inputs_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_inputs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_inputs_id_seq OWNED BY public.components_elements_inputs.id;


--
-- Name: components_elements_logotypes; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_logotypes (
    id integer NOT NULL,
    title text,
    url text
);


ALTER TABLE public.components_elements_logotypes OWNER TO "dev-portfolio";

--
-- Name: components_elements_logotypes_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_logotypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_logotypes_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_logotypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_logotypes_id_seq OWNED BY public.components_elements_logotypes.id;


--
-- Name: components_elements_recievers; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_recievers (
    id integer NOT NULL,
    identifier character varying(255)
);


ALTER TABLE public.components_elements_recievers OWNER TO "dev-portfolio";

--
-- Name: components_elements_recievers_admin_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_recievers_admin_links (
    id integer NOT NULL,
    reciever_id integer,
    user_id integer
);


ALTER TABLE public.components_elements_recievers_admin_links OWNER TO "dev-portfolio";

--
-- Name: components_elements_recievers_admin_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_recievers_admin_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_recievers_admin_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_recievers_admin_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_recievers_admin_links_id_seq OWNED BY public.components_elements_recievers_admin_links.id;


--
-- Name: components_elements_recievers_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_recievers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_recievers_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_recievers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_recievers_id_seq OWNED BY public.components_elements_recievers.id;


--
-- Name: components_elements_recievers_user_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_recievers_user_links (
    id integer NOT NULL,
    reciever_id integer,
    user_id integer
);


ALTER TABLE public.components_elements_recievers_user_links OWNER TO "dev-portfolio";

--
-- Name: components_elements_recievers_user_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_recievers_user_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_recievers_user_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_recievers_user_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_recievers_user_links_id_seq OWNED BY public.components_elements_recievers_user_links.id;


--
-- Name: components_elements_request_inputs; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_request_inputs (
    id integer NOT NULL,
    key text,
    value text,
    is_true boolean,
    date_value date,
    datetime_value timestamp(6) without time zone
);


ALTER TABLE public.components_elements_request_inputs OWNER TO "dev-portfolio";

--
-- Name: components_elements_request_inputs_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_request_inputs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_elements_request_inputs_components OWNER TO "dev-portfolio";

--
-- Name: components_elements_request_inputs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_request_inputs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_request_inputs_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_request_inputs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_request_inputs_components_id_seq OWNED BY public.components_elements_request_inputs_components.id;


--
-- Name: components_elements_request_inputs_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_request_inputs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_request_inputs_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_request_inputs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_request_inputs_id_seq OWNED BY public.components_elements_request_inputs.id;


--
-- Name: components_elements_slides; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_slides (
    id integer NOT NULL,
    title text,
    description text,
    subtitle text
);


ALTER TABLE public.components_elements_slides OWNER TO "dev-portfolio";

--
-- Name: components_elements_slides_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_elements_slides_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_elements_slides_components OWNER TO "dev-portfolio";

--
-- Name: components_elements_slides_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_slides_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_slides_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_slides_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_slides_components_id_seq OWNED BY public.components_elements_slides_components.id;


--
-- Name: components_elements_slides_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_elements_slides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_elements_slides_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_elements_slides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_elements_slides_id_seq OWNED BY public.components_elements_slides.id;


--
-- Name: components_functions_configs; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_functions_configs (
    id integer NOT NULL,
    provider character varying(255),
    config jsonb
);


ALTER TABLE public.components_functions_configs OWNER TO "dev-portfolio";

--
-- Name: components_functions_configs_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_functions_configs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_functions_configs_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_functions_configs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_functions_configs_id_seq OWNED BY public.components_functions_configs.id;


--
-- Name: components_functions_form_side_effects; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_functions_form_side_effects (
    id integer NOT NULL,
    type character varying(255),
    provider character varying(255)
);


ALTER TABLE public.components_functions_form_side_effects OWNER TO "dev-portfolio";

--
-- Name: components_functions_form_side_effects_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_functions_form_side_effects_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_functions_form_side_effects_components OWNER TO "dev-portfolio";

--
-- Name: components_functions_form_side_effects_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_functions_form_side_effects_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_functions_form_side_effects_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_functions_form_side_effects_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_functions_form_side_effects_components_id_seq OWNED BY public.components_functions_form_side_effects_components.id;


--
-- Name: components_functions_form_side_effects_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_functions_form_side_effects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_functions_form_side_effects_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_functions_form_side_effects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_functions_form_side_effects_id_seq OWNED BY public.components_functions_form_side_effects.id;


--
-- Name: components_page_blocks_alert_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_alert_blocks (
    id integer NOT NULL,
    title text,
    subtitle text,
    description text,
    class_name character varying(255),
    anchor character varying(255),
    variant character varying(255)
);


ALTER TABLE public.components_page_blocks_alert_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_alert_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_alert_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_alert_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_alert_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_alert_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_alert_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_alert_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_alert_blocks_components_id_seq OWNED BY public.components_page_blocks_alert_blocks_components.id;


--
-- Name: components_page_blocks_alert_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_alert_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_alert_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_alert_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_alert_blocks_id_seq OWNED BY public.components_page_blocks_alert_blocks.id;


--
-- Name: components_page_blocks_contact_section_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_contact_section_blocks (
    id integer NOT NULL,
    title text,
    subtitle text,
    description text,
    anchor text,
    class_name text,
    variant character varying(255)
);


ALTER TABLE public.components_page_blocks_contact_section_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_contact_section_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_contact_section_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_contact_section_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_contact_section_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_contact_section_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_contact_section_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_contact_section_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_contact_section_blocks_components_id_seq OWNED BY public.components_page_blocks_contact_section_blocks_components.id;


--
-- Name: components_page_blocks_contact_section_blocks_form_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_contact_section_blocks_form_links (
    id integer NOT NULL,
    contact_section_block_id integer,
    form_id integer
);


ALTER TABLE public.components_page_blocks_contact_section_blocks_form_links OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_contact_section_blocks_form_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_contact_section_blocks_form_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_contact_section_blocks_form_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_contact_section_blocks_form_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_contact_section_blocks_form_links_id_seq OWNED BY public.components_page_blocks_contact_section_blocks_form_links.id;


--
-- Name: components_page_blocks_contact_section_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_contact_section_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_contact_section_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_contact_section_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_contact_section_blocks_id_seq OWNED BY public.components_page_blocks_contact_section_blocks.id;


--
-- Name: components_page_blocks_cta_section_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_cta_section_blocks (
    id integer NOT NULL,
    variant character varying(255),
    anchor character varying(255),
    class_name character varying(255),
    title text,
    description text,
    subtitle text
);


ALTER TABLE public.components_page_blocks_cta_section_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_cta_section_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_cta_section_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_cta_section_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_cta_section_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_cta_section_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_cta_section_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_cta_section_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_cta_section_blocks_components_id_seq OWNED BY public.components_page_blocks_cta_section_blocks_components.id;


--
-- Name: components_page_blocks_cta_section_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_cta_section_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_cta_section_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_cta_section_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_cta_section_blocks_id_seq OWNED BY public.components_page_blocks_cta_section_blocks.id;


--
-- Name: components_page_blocks_faqs_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_faqs_blocks (
    id integer NOT NULL,
    title text,
    description text,
    variant character varying(255),
    class_name character varying(255),
    anchor character varying(255),
    subtitle text
);


ALTER TABLE public.components_page_blocks_faqs_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_faqs_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_faqs_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_faqs_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_faqs_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_faqs_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_faqs_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_faqs_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_faqs_blocks_components_id_seq OWNED BY public.components_page_blocks_faqs_blocks_components.id;


--
-- Name: components_page_blocks_faqs_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_faqs_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_faqs_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_faqs_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_faqs_blocks_id_seq OWNED BY public.components_page_blocks_faqs_blocks.id;


--
-- Name: components_page_blocks_features_section_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_features_section_blocks (
    id integer NOT NULL,
    title text,
    description text,
    subtitle text,
    variant character varying(255),
    anchor character varying(255),
    class_name character varying(255)
);


ALTER TABLE public.components_page_blocks_features_section_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_features_section_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_features_section_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_features_section_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_features_section_blocks_component_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_features_section_blocks_component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_features_section_blocks_component_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_features_section_blocks_component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_features_section_blocks_component_id_seq OWNED BY public.components_page_blocks_features_section_blocks_components.id;


--
-- Name: components_page_blocks_features_section_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_features_section_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_features_section_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_features_section_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_features_section_blocks_id_seq OWNED BY public.components_page_blocks_features_section_blocks.id;


--
-- Name: components_page_blocks_footer_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_footer_blocks (
    id integer NOT NULL,
    copyrights text,
    description text,
    variant character varying(255),
    class_name character varying(255)
);


ALTER TABLE public.components_page_blocks_footer_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_footer_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_footer_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_footer_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_footer_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_footer_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_footer_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_footer_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_footer_blocks_components_id_seq OWNED BY public.components_page_blocks_footer_blocks_components.id;


--
-- Name: components_page_blocks_footer_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_footer_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_footer_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_footer_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_footer_blocks_id_seq OWNED BY public.components_page_blocks_footer_blocks.id;


--
-- Name: components_page_blocks_header_section_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_header_section_blocks (
    id integer NOT NULL,
    title text,
    description text,
    variant character varying(255),
    subtitle text,
    anchor character varying(255),
    class_name character varying(255)
);


ALTER TABLE public.components_page_blocks_header_section_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_header_section_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_header_section_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_header_section_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_header_section_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_header_section_blocks_id_seq OWNED BY public.components_page_blocks_header_section_blocks.id;


--
-- Name: components_page_blocks_hero_section_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_hero_section_blocks (
    id integer NOT NULL,
    title text,
    description text,
    variant character varying(255),
    anchor character varying(255),
    class_name character varying(255)
);


ALTER TABLE public.components_page_blocks_hero_section_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_hero_section_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_hero_section_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_hero_section_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_hero_section_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_hero_section_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_hero_section_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_hero_section_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_hero_section_blocks_components_id_seq OWNED BY public.components_page_blocks_hero_section_blocks_components.id;


--
-- Name: components_page_blocks_hero_section_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_hero_section_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_hero_section_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_hero_section_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_hero_section_blocks_id_seq OWNED BY public.components_page_blocks_hero_section_blocks.id;


--
-- Name: components_page_blocks_incentives_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_incentives_blocks (
    id integer NOT NULL,
    title text,
    description text,
    anchor character varying(255),
    class_name character varying(255),
    variant character varying(255),
    subtitle text
);


ALTER TABLE public.components_page_blocks_incentives_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_incentives_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_incentives_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_incentives_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_incentives_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_incentives_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_incentives_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_incentives_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_incentives_blocks_components_id_seq OWNED BY public.components_page_blocks_incentives_blocks_components.id;


--
-- Name: components_page_blocks_incentives_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_incentives_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_incentives_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_incentives_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_incentives_blocks_id_seq OWNED BY public.components_page_blocks_incentives_blocks.id;


--
-- Name: components_page_blocks_logotypes_cloud_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_logotypes_cloud_blocks (
    id integer NOT NULL,
    variant character varying(255),
    title text,
    description text,
    anchor character varying(255),
    class_name character varying(255),
    subtitle text
);


ALTER TABLE public.components_page_blocks_logotypes_cloud_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_logotypes_cloud_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_logotypes_cloud_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_logotypes_cloud_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_logotypes_cloud_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_logotypes_cloud_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_logotypes_cloud_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_logotypes_cloud_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_logotypes_cloud_blocks_components_id_seq OWNED BY public.components_page_blocks_logotypes_cloud_blocks_components.id;


--
-- Name: components_page_blocks_logotypes_cloud_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_logotypes_cloud_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_logotypes_cloud_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_logotypes_cloud_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_logotypes_cloud_blocks_id_seq OWNED BY public.components_page_blocks_logotypes_cloud_blocks.id;


--
-- Name: components_page_blocks_navbar_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_navbar_blocks (
    id integer NOT NULL,
    variant character varying(255),
    description text,
    class_name character varying(255)
);


ALTER TABLE public.components_page_blocks_navbar_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_navbar_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_navbar_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_navbar_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_navbar_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_navbar_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_navbar_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_navbar_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_navbar_blocks_components_id_seq OWNED BY public.components_page_blocks_navbar_blocks_components.id;


--
-- Name: components_page_blocks_navbar_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_navbar_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_navbar_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_navbar_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_navbar_blocks_id_seq OWNED BY public.components_page_blocks_navbar_blocks.id;


--
-- Name: components_page_blocks_not_found_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_not_found_blocks (
    id integer NOT NULL,
    variant character varying(255),
    title text,
    description text,
    class_name text,
    anchor text,
    subtitle text
);


ALTER TABLE public.components_page_blocks_not_found_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_not_found_blocks_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_not_found_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_blocks_not_found_blocks_components OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_not_found_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_not_found_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_not_found_blocks_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_not_found_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_not_found_blocks_components_id_seq OWNED BY public.components_page_blocks_not_found_blocks_components.id;


--
-- Name: components_page_blocks_not_found_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_not_found_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_not_found_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_not_found_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_not_found_blocks_id_seq OWNED BY public.components_page_blocks_not_found_blocks.id;


--
-- Name: components_page_blocks_pricing_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_pricing_blocks (
    id integer NOT NULL,
    variant character varying(255),
    title text,
    subtitle text,
    description text,
    class_name text,
    anchor character varying(255)
);


ALTER TABLE public.components_page_blocks_pricing_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_pricing_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_pricing_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_pricing_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_pricing_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_pricing_blocks_id_seq OWNED BY public.components_page_blocks_pricing_blocks.id;


--
-- Name: components_page_blocks_pricing_blocks_tiers_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_pricing_blocks_tiers_links (
    id integer NOT NULL,
    pricing_block_id integer,
    tier_id integer,
    tier_order double precision
);


ALTER TABLE public.components_page_blocks_pricing_blocks_tiers_links OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_pricing_blocks_tiers_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_pricing_blocks_tiers_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_pricing_blocks_tiers_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_pricing_blocks_tiers_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_pricing_blocks_tiers_links_id_seq OWNED BY public.components_page_blocks_pricing_blocks_tiers_links.id;


--
-- Name: components_page_blocks_reviews_list_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_reviews_list_blocks (
    id integer NOT NULL,
    variant character varying(255),
    show_all boolean,
    anchor character varying(255),
    class_name character varying(255),
    title text,
    subtitle text,
    description text
);


ALTER TABLE public.components_page_blocks_reviews_list_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_reviews_list_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_reviews_list_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_reviews_list_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_reviews_list_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_reviews_list_blocks_id_seq OWNED BY public.components_page_blocks_reviews_list_blocks.id;


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_reviews_list_blocks_reviews_links (
    id integer NOT NULL,
    reviews_list_block_id integer,
    review_id integer,
    review_order double precision
);


ALTER TABLE public.components_page_blocks_reviews_list_blocks_reviews_links OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_reviews_list_blocks_reviews_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_reviews_list_blocks_reviews_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_reviews_list_blocks_reviews_links_id_seq OWNED BY public.components_page_blocks_reviews_list_blocks_reviews_links.id;


--
-- Name: components_page_blocks_reviews_table_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_reviews_table_blocks (
    id integer NOT NULL,
    variant character varying(255),
    anchor character varying(255),
    class_name character varying(255)
);


ALTER TABLE public.components_page_blocks_reviews_table_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_reviews_table_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_reviews_table_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_reviews_table_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_reviews_table_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_reviews_table_blocks_id_seq OWNED BY public.components_page_blocks_reviews_table_blocks.id;


--
-- Name: components_page_blocks_slider_blocks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_slider_blocks (
    id integer NOT NULL,
    variant character varying(255),
    anchor character varying(255),
    class_name character varying(255),
    title text,
    description text,
    subtitle text
);


ALTER TABLE public.components_page_blocks_slider_blocks OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_slider_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_slider_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_slider_blocks_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_slider_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_slider_blocks_id_seq OWNED BY public.components_page_blocks_slider_blocks.id;


--
-- Name: components_page_blocks_slider_blocks_slider_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.components_page_blocks_slider_blocks_slider_links (
    id integer NOT NULL,
    slider_block_id integer,
    slider_id integer
);


ALTER TABLE public.components_page_blocks_slider_blocks_slider_links OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_slider_blocks_slider_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.components_page_blocks_slider_blocks_slider_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_page_blocks_slider_blocks_slider_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: components_page_blocks_slider_blocks_slider_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.components_page_blocks_slider_blocks_slider_links_id_seq OWNED BY public.components_page_blocks_slider_blocks_slider_links.id;


--
-- Name: configurations; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.configurations (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.configurations OWNER TO "dev-portfolio";

--
-- Name: configurations_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.configurations_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.configurations_components OWNER TO "dev-portfolio";

--
-- Name: configurations_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.configurations_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.configurations_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: configurations_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.configurations_components_id_seq OWNED BY public.configurations_components.id;


--
-- Name: configurations_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.configurations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.configurations_id_seq OWNER TO "dev-portfolio";

--
-- Name: configurations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.configurations_id_seq OWNED BY public.configurations.id;


--
-- Name: currencies; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.currencies (
    id integer NOT NULL,
    title character varying(255),
    unicode character varying(255),
    is_default boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.currencies OWNER TO "dev-portfolio";

--
-- Name: currencies_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.currencies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.currencies_id_seq OWNER TO "dev-portfolio";

--
-- Name: currencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.currencies_id_seq OWNED BY public.currencies.id;


--
-- Name: currencies_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.currencies_localizations_links (
    id integer NOT NULL,
    currency_id integer,
    inv_currency_id integer,
    currency_order double precision
);


ALTER TABLE public.currencies_localizations_links OWNER TO "dev-portfolio";

--
-- Name: currencies_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.currencies_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.currencies_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: currencies_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.currencies_localizations_links_id_seq OWNED BY public.currencies_localizations_links.id;


--
-- Name: email_templates; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.email_templates (
    id integer NOT NULL,
    template_reference_id integer,
    design jsonb,
    name character varying(255),
    subject character varying(255),
    body_html text,
    body_text text,
    enabled boolean,
    tags jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.email_templates OWNER TO "dev-portfolio";

--
-- Name: email_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.email_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.email_templates_id_seq OWNER TO "dev-portfolio";

--
-- Name: email_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.email_templates_id_seq OWNED BY public.email_templates.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO "dev-portfolio";

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO "dev-portfolio";

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO "dev-portfolio";

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO "dev-portfolio";

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_morphs_id_seq OWNER TO "dev-portfolio";

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: flyouts; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.flyouts (
    id integer NOT NULL,
    variant character varying(255),
    title character varying(255),
    uid character varying(255),
    class_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.flyouts OWNER TO "dev-portfolio";

--
-- Name: flyouts_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.flyouts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.flyouts_components OWNER TO "dev-portfolio";

--
-- Name: flyouts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.flyouts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.flyouts_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: flyouts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.flyouts_components_id_seq OWNED BY public.flyouts_components.id;


--
-- Name: flyouts_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.flyouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.flyouts_id_seq OWNER TO "dev-portfolio";

--
-- Name: flyouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.flyouts_id_seq OWNED BY public.flyouts.id;


--
-- Name: flyouts_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.flyouts_localizations_links (
    id integer NOT NULL,
    flyout_id integer,
    inv_flyout_id integer,
    flyout_order double precision
);


ALTER TABLE public.flyouts_localizations_links OWNER TO "dev-portfolio";

--
-- Name: flyouts_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.flyouts_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.flyouts_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: flyouts_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.flyouts_localizations_links_id_seq OWNED BY public.flyouts_localizations_links.id;


--
-- Name: footers; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.footers (
    id integer NOT NULL,
    title character varying(255),
    uid character varying(255),
    variant character varying(255),
    class_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.footers OWNER TO "dev-portfolio";

--
-- Name: footers_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.footers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.footers_components OWNER TO "dev-portfolio";

--
-- Name: footers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.footers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footers_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: footers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.footers_components_id_seq OWNED BY public.footers_components.id;


--
-- Name: footers_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footers_id_seq OWNER TO "dev-portfolio";

--
-- Name: footers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.footers_id_seq OWNED BY public.footers.id;


--
-- Name: footers_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.footers_localizations_links (
    id integer NOT NULL,
    footer_id integer,
    inv_footer_id integer,
    footer_order double precision
);


ALTER TABLE public.footers_localizations_links OWNER TO "dev-portfolio";

--
-- Name: footers_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.footers_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footers_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: footers_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.footers_localizations_links_id_seq OWNED BY public.footers_localizations_links.id;


--
-- Name: form_requests; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.form_requests (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.form_requests OWNER TO "dev-portfolio";

--
-- Name: form_requests_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.form_requests_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.form_requests_components OWNER TO "dev-portfolio";

--
-- Name: form_requests_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.form_requests_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.form_requests_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: form_requests_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.form_requests_components_id_seq OWNED BY public.form_requests_components.id;


--
-- Name: form_requests_form_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.form_requests_form_links (
    id integer NOT NULL,
    form_request_id integer,
    form_id integer,
    form_request_order double precision
);


ALTER TABLE public.form_requests_form_links OWNER TO "dev-portfolio";

--
-- Name: form_requests_form_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.form_requests_form_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.form_requests_form_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: form_requests_form_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.form_requests_form_links_id_seq OWNED BY public.form_requests_form_links.id;


--
-- Name: form_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.form_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.form_requests_id_seq OWNER TO "dev-portfolio";

--
-- Name: form_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.form_requests_id_seq OWNED BY public.form_requests.id;


--
-- Name: forms; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.forms (
    id integer NOT NULL,
    class_name text,
    additional_attributes jsonb,
    variant character varying(255),
    uid character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.forms OWNER TO "dev-portfolio";

--
-- Name: forms_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.forms_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.forms_components OWNER TO "dev-portfolio";

--
-- Name: forms_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.forms_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.forms_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: forms_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.forms_components_id_seq OWNED BY public.forms_components.id;


--
-- Name: forms_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.forms_id_seq OWNER TO "dev-portfolio";

--
-- Name: forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.forms_id_seq OWNED BY public.forms.id;


--
-- Name: forms_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.forms_localizations_links (
    id integer NOT NULL,
    form_id integer,
    inv_form_id integer,
    form_order double precision
);


ALTER TABLE public.forms_localizations_links OWNER TO "dev-portfolio";

--
-- Name: forms_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.forms_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.forms_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: forms_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.forms_localizations_links_id_seq OWNED BY public.forms_localizations_links.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO "dev-portfolio";

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO "dev-portfolio";

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: layouts; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.layouts (
    id integer NOT NULL,
    title character varying(255),
    uid character varying(255),
    variant character varying(255),
    class_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.layouts OWNER TO "dev-portfolio";

--
-- Name: layouts_footer_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.layouts_footer_links (
    id integer NOT NULL,
    layout_id integer,
    footer_id integer,
    layout_order double precision
);


ALTER TABLE public.layouts_footer_links OWNER TO "dev-portfolio";

--
-- Name: layouts_footer_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.layouts_footer_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.layouts_footer_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: layouts_footer_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.layouts_footer_links_id_seq OWNED BY public.layouts_footer_links.id;


--
-- Name: layouts_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.layouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.layouts_id_seq OWNER TO "dev-portfolio";

--
-- Name: layouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.layouts_id_seq OWNED BY public.layouts.id;


--
-- Name: layouts_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.layouts_localizations_links (
    id integer NOT NULL,
    layout_id integer,
    inv_layout_id integer,
    layout_order double precision
);


ALTER TABLE public.layouts_localizations_links OWNER TO "dev-portfolio";

--
-- Name: layouts_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.layouts_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.layouts_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: layouts_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.layouts_localizations_links_id_seq OWNED BY public.layouts_localizations_links.id;


--
-- Name: layouts_modals_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.layouts_modals_links (
    id integer NOT NULL,
    layout_id integer,
    modal_id integer,
    modal_order double precision,
    layout_order double precision
);


ALTER TABLE public.layouts_modals_links OWNER TO "dev-portfolio";

--
-- Name: layouts_modals_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.layouts_modals_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.layouts_modals_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: layouts_modals_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.layouts_modals_links_id_seq OWNED BY public.layouts_modals_links.id;


--
-- Name: layouts_navbar_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.layouts_navbar_links (
    id integer NOT NULL,
    layout_id integer,
    navbar_id integer,
    layout_order double precision
);


ALTER TABLE public.layouts_navbar_links OWNER TO "dev-portfolio";

--
-- Name: layouts_navbar_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.layouts_navbar_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.layouts_navbar_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: layouts_navbar_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.layouts_navbar_links_id_seq OWNED BY public.layouts_navbar_links.id;


--
-- Name: layouts_sidebar_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.layouts_sidebar_links (
    id integer NOT NULL,
    layout_id integer,
    sidebar_id integer,
    layout_order double precision
);


ALTER TABLE public.layouts_sidebar_links OWNER TO "dev-portfolio";

--
-- Name: layouts_sidebar_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.layouts_sidebar_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.layouts_sidebar_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: layouts_sidebar_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.layouts_sidebar_links_id_seq OWNED BY public.layouts_sidebar_links.id;


--
-- Name: layouts_slide_overs_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.layouts_slide_overs_links (
    id integer NOT NULL,
    layout_id integer,
    slide_over_id integer,
    slide_over_order double precision,
    layout_order double precision
);


ALTER TABLE public.layouts_slide_overs_links OWNER TO "dev-portfolio";

--
-- Name: layouts_slide_overs_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.layouts_slide_overs_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.layouts_slide_overs_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: layouts_slide_overs_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.layouts_slide_overs_links_id_seq OWNED BY public.layouts_slide_overs_links.id;


--
-- Name: layouts_topbar_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.layouts_topbar_links (
    id integer NOT NULL,
    layout_id integer,
    topbar_id integer,
    layout_order double precision
);


ALTER TABLE public.layouts_topbar_links OWNER TO "dev-portfolio";

--
-- Name: layouts_topbar_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.layouts_topbar_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.layouts_topbar_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: layouts_topbar_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.layouts_topbar_links_id_seq OWNED BY public.layouts_topbar_links.id;


--
-- Name: loaders; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.loaders (
    id integer NOT NULL,
    variant character varying(255),
    class_name character varying(255),
    anchor character varying(255),
    title text,
    subtitle text,
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.loaders OWNER TO "dev-portfolio";

--
-- Name: loaders_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.loaders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.loaders_id_seq OWNER TO "dev-portfolio";

--
-- Name: loaders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.loaders_id_seq OWNED BY public.loaders.id;


--
-- Name: metatags; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.metatags (
    id integer NOT NULL,
    title text,
    description text,
    script text,
    gtm_key character varying(255),
    is_default boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.metatags OWNER TO "dev-portfolio";

--
-- Name: metatags_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.metatags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.metatags_id_seq OWNER TO "dev-portfolio";

--
-- Name: metatags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.metatags_id_seq OWNED BY public.metatags.id;


--
-- Name: metatags_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.metatags_localizations_links (
    id integer NOT NULL,
    metatag_id integer,
    inv_metatag_id integer,
    metatag_order double precision
);


ALTER TABLE public.metatags_localizations_links OWNER TO "dev-portfolio";

--
-- Name: metatags_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.metatags_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.metatags_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: metatags_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.metatags_localizations_links_id_seq OWNED BY public.metatags_localizations_links.id;


--
-- Name: modals; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.modals (
    id integer NOT NULL,
    uid character varying(255),
    dialog_panel_class_name character varying(255),
    variant character varying(255),
    title character varying(255),
    class_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.modals OWNER TO "dev-portfolio";

--
-- Name: modals_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.modals_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.modals_components OWNER TO "dev-portfolio";

--
-- Name: modals_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.modals_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modals_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: modals_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.modals_components_id_seq OWNED BY public.modals_components.id;


--
-- Name: modals_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.modals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modals_id_seq OWNER TO "dev-portfolio";

--
-- Name: modals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.modals_id_seq OWNED BY public.modals.id;


--
-- Name: modals_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.modals_localizations_links (
    id integer NOT NULL,
    modal_id integer,
    inv_modal_id integer,
    modal_order double precision
);


ALTER TABLE public.modals_localizations_links OWNER TO "dev-portfolio";

--
-- Name: modals_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.modals_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modals_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: modals_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.modals_localizations_links_id_seq OWNED BY public.modals_localizations_links.id;


--
-- Name: navbars; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.navbars (
    id integer NOT NULL,
    title character varying(255),
    uid character varying(255),
    variant character varying(255),
    class_name character varying(255),
    "position" character varying(255),
    side character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.navbars OWNER TO "dev-portfolio";

--
-- Name: navbars_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.navbars_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.navbars_components OWNER TO "dev-portfolio";

--
-- Name: navbars_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.navbars_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.navbars_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: navbars_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.navbars_components_id_seq OWNED BY public.navbars_components.id;


--
-- Name: navbars_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.navbars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.navbars_id_seq OWNER TO "dev-portfolio";

--
-- Name: navbars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.navbars_id_seq OWNED BY public.navbars.id;


--
-- Name: navbars_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.navbars_localizations_links (
    id integer NOT NULL,
    navbar_id integer,
    inv_navbar_id integer,
    navbar_order double precision
);


ALTER TABLE public.navbars_localizations_links OWNER TO "dev-portfolio";

--
-- Name: navbars_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.navbars_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.navbars_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: navbars_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.navbars_localizations_links_id_seq OWNED BY public.navbars_localizations_links.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.pages OWNER TO "dev-portfolio";

--
-- Name: pages_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.pages_components OWNER TO "dev-portfolio";

--
-- Name: pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_id_seq OWNER TO "dev-portfolio";

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_layout_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.pages_layout_links (
    id integer NOT NULL,
    page_id integer,
    layout_id integer,
    page_order double precision
);


ALTER TABLE public.pages_layout_links OWNER TO "dev-portfolio";

--
-- Name: pages_layout_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.pages_layout_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_layout_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: pages_layout_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.pages_layout_links_id_seq OWNED BY public.pages_layout_links.id;


--
-- Name: pages_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.pages_localizations_links (
    id integer NOT NULL,
    page_id integer,
    inv_page_id integer,
    page_order double precision
);


ALTER TABLE public.pages_localizations_links OWNER TO "dev-portfolio";

--
-- Name: pages_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.pages_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: pages_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.pages_localizations_links_id_seq OWNED BY public.pages_localizations_links.id;


--
-- Name: pages_metatag_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.pages_metatag_links (
    id integer NOT NULL,
    page_id integer,
    metatag_id integer,
    page_order double precision
);


ALTER TABLE public.pages_metatag_links OWNER TO "dev-portfolio";

--
-- Name: pages_metatag_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.pages_metatag_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_metatag_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: pages_metatag_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.pages_metatag_links_id_seq OWNED BY public.pages_metatag_links.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    name text,
    title text,
    description text,
    subtitle text,
    rating integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.reviews OWNER TO "dev-portfolio";

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_id_seq OWNER TO "dev-portfolio";

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: robots; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.robots (
    id integer NOT NULL,
    robots text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.robots OWNER TO "dev-portfolio";

--
-- Name: robots_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.robots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.robots_id_seq OWNER TO "dev-portfolio";

--
-- Name: robots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.robots_id_seq OWNED BY public.robots.id;


--
-- Name: sidebars; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.sidebars (
    id integer NOT NULL,
    variant character varying(255),
    title character varying(255),
    uid character varying(255),
    class_name character varying(255),
    side character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.sidebars OWNER TO "dev-portfolio";

--
-- Name: sidebars_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.sidebars_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.sidebars_components OWNER TO "dev-portfolio";

--
-- Name: sidebars_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.sidebars_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sidebars_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: sidebars_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.sidebars_components_id_seq OWNED BY public.sidebars_components.id;


--
-- Name: sidebars_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.sidebars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sidebars_id_seq OWNER TO "dev-portfolio";

--
-- Name: sidebars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.sidebars_id_seq OWNED BY public.sidebars.id;


--
-- Name: sidebars_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.sidebars_localizations_links (
    id integer NOT NULL,
    sidebar_id integer,
    inv_sidebar_id integer,
    sidebar_order double precision
);


ALTER TABLE public.sidebars_localizations_links OWNER TO "dev-portfolio";

--
-- Name: sidebars_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.sidebars_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sidebars_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: sidebars_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.sidebars_localizations_links_id_seq OWNED BY public.sidebars_localizations_links.id;


--
-- Name: slide_overs; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.slide_overs (
    id integer NOT NULL,
    variant character varying(255),
    title character varying(255),
    uid character varying(255),
    class_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.slide_overs OWNER TO "dev-portfolio";

--
-- Name: slide_overs_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.slide_overs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.slide_overs_components OWNER TO "dev-portfolio";

--
-- Name: slide_overs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.slide_overs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.slide_overs_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: slide_overs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.slide_overs_components_id_seq OWNED BY public.slide_overs_components.id;


--
-- Name: slide_overs_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.slide_overs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.slide_overs_id_seq OWNER TO "dev-portfolio";

--
-- Name: slide_overs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.slide_overs_id_seq OWNED BY public.slide_overs.id;


--
-- Name: slide_overs_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.slide_overs_localizations_links (
    id integer NOT NULL,
    slide_over_id integer,
    inv_slide_over_id integer,
    slide_over_order double precision
);


ALTER TABLE public.slide_overs_localizations_links OWNER TO "dev-portfolio";

--
-- Name: slide_overs_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.slide_overs_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.slide_overs_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: slide_overs_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.slide_overs_localizations_links_id_seq OWNED BY public.slide_overs_localizations_links.id;


--
-- Name: sliders; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.sliders (
    id integer NOT NULL,
    variant character varying(255),
    show_backdrop boolean,
    show_full_screen boolean,
    show_previews boolean,
    class_name character varying(255),
    aspect_ratio_class_name character varying(255),
    title character varying(255),
    uid character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.sliders OWNER TO "dev-portfolio";

--
-- Name: sliders_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.sliders_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.sliders_components OWNER TO "dev-portfolio";

--
-- Name: sliders_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.sliders_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sliders_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: sliders_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.sliders_components_id_seq OWNED BY public.sliders_components.id;


--
-- Name: sliders_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sliders_id_seq OWNER TO "dev-portfolio";

--
-- Name: sliders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.sliders_id_seq OWNED BY public.sliders.id;


--
-- Name: sliders_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.sliders_localizations_links (
    id integer NOT NULL,
    slider_id integer,
    inv_slider_id integer,
    slider_order double precision
);


ALTER TABLE public.sliders_localizations_links OWNER TO "dev-portfolio";

--
-- Name: sliders_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.sliders_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sliders_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: sliders_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.sliders_localizations_links_id_seq OWNED BY public.sliders_localizations_links.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO "dev-portfolio";

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO "dev-portfolio";

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO "dev-portfolio";

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO "dev-portfolio";

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO "dev-portfolio";

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO "dev-portfolio";

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO "dev-portfolio";

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO "dev-portfolio";

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO "dev-portfolio";

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO "dev-portfolio";

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO "dev-portfolio";

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: telegrams; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.telegrams (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.telegrams OWNER TO "dev-portfolio";

--
-- Name: telegrams_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.telegrams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telegrams_id_seq OWNER TO "dev-portfolio";

--
-- Name: telegrams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.telegrams_id_seq OWNED BY public.telegrams.id;


--
-- Name: themes; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.themes (
    id integer NOT NULL,
    theme jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.themes OWNER TO "dev-portfolio";

--
-- Name: themes_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.themes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.themes_components OWNER TO "dev-portfolio";

--
-- Name: themes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.themes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.themes_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: themes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.themes_components_id_seq OWNED BY public.themes_components.id;


--
-- Name: themes_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.themes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.themes_id_seq OWNER TO "dev-portfolio";

--
-- Name: themes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.themes_id_seq OWNED BY public.themes.id;


--
-- Name: tiers; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.tiers (
    id integer NOT NULL,
    title text,
    description text,
    price double precision,
    type character varying(255),
    period integer,
    old_price double precision,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.tiers OWNER TO "dev-portfolio";

--
-- Name: tiers_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.tiers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.tiers_components OWNER TO "dev-portfolio";

--
-- Name: tiers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.tiers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tiers_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: tiers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.tiers_components_id_seq OWNED BY public.tiers_components.id;


--
-- Name: tiers_currency_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.tiers_currency_links (
    id integer NOT NULL,
    tier_id integer,
    currency_id integer,
    tier_order double precision
);


ALTER TABLE public.tiers_currency_links OWNER TO "dev-portfolio";

--
-- Name: tiers_currency_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.tiers_currency_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tiers_currency_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: tiers_currency_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.tiers_currency_links_id_seq OWNED BY public.tiers_currency_links.id;


--
-- Name: tiers_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.tiers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tiers_id_seq OWNER TO "dev-portfolio";

--
-- Name: tiers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.tiers_id_seq OWNED BY public.tiers.id;


--
-- Name: tiers_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.tiers_localizations_links (
    id integer NOT NULL,
    tier_id integer,
    inv_tier_id integer,
    tier_order double precision
);


ALTER TABLE public.tiers_localizations_links OWNER TO "dev-portfolio";

--
-- Name: tiers_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.tiers_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tiers_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: tiers_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.tiers_localizations_links_id_seq OWNED BY public.tiers_localizations_links.id;


--
-- Name: topbars; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.topbars (
    id integer NOT NULL,
    title character varying(255),
    uid character varying(255),
    variant character varying(255),
    class_name character varying(255),
    "position" character varying(255),
    side character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.topbars OWNER TO "dev-portfolio";

--
-- Name: topbars_components; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.topbars_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.topbars_components OWNER TO "dev-portfolio";

--
-- Name: topbars_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.topbars_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.topbars_components_id_seq OWNER TO "dev-portfolio";

--
-- Name: topbars_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.topbars_components_id_seq OWNED BY public.topbars_components.id;


--
-- Name: topbars_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.topbars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.topbars_id_seq OWNER TO "dev-portfolio";

--
-- Name: topbars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.topbars_id_seq OWNED BY public.topbars.id;


--
-- Name: topbars_localizations_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.topbars_localizations_links (
    id integer NOT NULL,
    topbar_id integer,
    inv_topbar_id integer,
    topbar_order double precision
);


ALTER TABLE public.topbars_localizations_links OWNER TO "dev-portfolio";

--
-- Name: topbars_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.topbars_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.topbars_localizations_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: topbars_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.topbars_localizations_links_id_seq OWNED BY public.topbars_localizations_links.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO "dev-portfolio";

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO "dev-portfolio";

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO "dev-portfolio";

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO "dev-portfolio";

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO "dev-portfolio";

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO "dev-portfolio";

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO "dev-portfolio";

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO "dev-portfolio";

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO "dev-portfolio";

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO "dev-portfolio";

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: dev-portfolio
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO "dev-portfolio";

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dev-portfolio
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNER TO "dev-portfolio";

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev-portfolio
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: components_elements_buttons id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_elements_buttons_id_seq'::regclass);


--
-- Name: components_elements_buttons_arrays id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_arrays ALTER COLUMN id SET DEFAULT nextval('public.components_elements_buttons_arrays_id_seq'::regclass);


--
-- Name: components_elements_buttons_arrays_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_arrays_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_buttons_arrays_components_id_seq'::regclass);


--
-- Name: components_elements_buttons_flyout_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_flyout_links ALTER COLUMN id SET DEFAULT nextval('public.components_elements_buttons_flyout_links_id_seq'::regclass);


--
-- Name: components_elements_date_values id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_date_values ALTER COLUMN id SET DEFAULT nextval('public.components_elements_date_values_id_seq'::regclass);


--
-- Name: components_elements_faqs id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_elements_faqs_id_seq'::regclass);


--
-- Name: components_elements_features id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_features ALTER COLUMN id SET DEFAULT nextval('public.components_elements_features_id_seq'::regclass);


--
-- Name: components_elements_fonts id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_fonts ALTER COLUMN id SET DEFAULT nextval('public.components_elements_fonts_id_seq'::regclass);


--
-- Name: components_elements_input_options id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_input_options ALTER COLUMN id SET DEFAULT nextval('public.components_elements_input_options_id_seq'::regclass);


--
-- Name: components_elements_inputs id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_inputs ALTER COLUMN id SET DEFAULT nextval('public.components_elements_inputs_id_seq'::regclass);


--
-- Name: components_elements_inputs_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_inputs_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_inputs_components_id_seq'::regclass);


--
-- Name: components_elements_logotypes id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_logotypes ALTER COLUMN id SET DEFAULT nextval('public.components_elements_logotypes_id_seq'::regclass);


--
-- Name: components_elements_recievers id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers ALTER COLUMN id SET DEFAULT nextval('public.components_elements_recievers_id_seq'::regclass);


--
-- Name: components_elements_recievers_admin_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_admin_links ALTER COLUMN id SET DEFAULT nextval('public.components_elements_recievers_admin_links_id_seq'::regclass);


--
-- Name: components_elements_recievers_user_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_user_links ALTER COLUMN id SET DEFAULT nextval('public.components_elements_recievers_user_links_id_seq'::regclass);


--
-- Name: components_elements_request_inputs id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_request_inputs ALTER COLUMN id SET DEFAULT nextval('public.components_elements_request_inputs_id_seq'::regclass);


--
-- Name: components_elements_request_inputs_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_request_inputs_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_request_inputs_components_id_seq'::regclass);


--
-- Name: components_elements_slides id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_slides ALTER COLUMN id SET DEFAULT nextval('public.components_elements_slides_id_seq'::regclass);


--
-- Name: components_elements_slides_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_slides_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_slides_components_id_seq'::regclass);


--
-- Name: components_functions_configs id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_functions_configs ALTER COLUMN id SET DEFAULT nextval('public.components_functions_configs_id_seq'::regclass);


--
-- Name: components_functions_form_side_effects id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_functions_form_side_effects ALTER COLUMN id SET DEFAULT nextval('public.components_functions_form_side_effects_id_seq'::regclass);


--
-- Name: components_functions_form_side_effects_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_functions_form_side_effects_components ALTER COLUMN id SET DEFAULT nextval('public.components_functions_form_side_effects_components_id_seq'::regclass);


--
-- Name: components_page_blocks_alert_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_alert_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_alert_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_alert_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_alert_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_alert_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_contact_section_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_contact_section_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_contact_section_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_contact_section_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_contact_section_blocks_form_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks_form_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_contact_section_blocks_form_links_id_seq'::regclass);


--
-- Name: components_page_blocks_cta_section_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_cta_section_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_cta_section_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_cta_section_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_cta_section_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_cta_section_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_faqs_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_faqs_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_faqs_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_faqs_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_faqs_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_faqs_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_features_section_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_features_section_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_features_section_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_features_section_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_features_section_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_features_section_blocks_component_id_seq'::regclass);


--
-- Name: components_page_blocks_footer_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_footer_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_footer_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_footer_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_footer_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_footer_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_header_section_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_header_section_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_header_section_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_hero_section_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_hero_section_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_hero_section_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_hero_section_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_hero_section_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_hero_section_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_incentives_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_incentives_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_incentives_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_incentives_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_incentives_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_incentives_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_logotypes_cloud_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_logotypes_cloud_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_logotypes_cloud_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_logotypes_cloud_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_logotypes_cloud_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_logotypes_cloud_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_navbar_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_navbar_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_navbar_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_navbar_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_navbar_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_navbar_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_not_found_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_not_found_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_not_found_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_not_found_blocks_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_not_found_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_not_found_blocks_components_id_seq'::regclass);


--
-- Name: components_page_blocks_pricing_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_pricing_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_pricing_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_pricing_blocks_tiers_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_pricing_blocks_tiers_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_pricing_blocks_tiers_links_id_seq'::regclass);


--
-- Name: components_page_blocks_reviews_list_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_reviews_list_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_reviews_list_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_reviews_list_blocks_reviews_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_reviews_list_blocks_reviews_links_id_seq'::regclass);


--
-- Name: components_page_blocks_reviews_table_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_reviews_table_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_reviews_table_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_slider_blocks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_slider_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_slider_blocks_id_seq'::regclass);


--
-- Name: components_page_blocks_slider_blocks_slider_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_slider_blocks_slider_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_blocks_slider_blocks_slider_links_id_seq'::regclass);


--
-- Name: configurations id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.configurations ALTER COLUMN id SET DEFAULT nextval('public.configurations_id_seq'::regclass);


--
-- Name: configurations_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.configurations_components ALTER COLUMN id SET DEFAULT nextval('public.configurations_components_id_seq'::regclass);


--
-- Name: currencies id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.currencies ALTER COLUMN id SET DEFAULT nextval('public.currencies_id_seq'::regclass);


--
-- Name: currencies_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.currencies_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.currencies_localizations_links_id_seq'::regclass);


--
-- Name: email_templates id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.email_templates ALTER COLUMN id SET DEFAULT nextval('public.email_templates_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: flyouts id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts ALTER COLUMN id SET DEFAULT nextval('public.flyouts_id_seq'::regclass);


--
-- Name: flyouts_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts_components ALTER COLUMN id SET DEFAULT nextval('public.flyouts_components_id_seq'::regclass);


--
-- Name: flyouts_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.flyouts_localizations_links_id_seq'::regclass);


--
-- Name: footers id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers ALTER COLUMN id SET DEFAULT nextval('public.footers_id_seq'::regclass);


--
-- Name: footers_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers_components ALTER COLUMN id SET DEFAULT nextval('public.footers_components_id_seq'::regclass);


--
-- Name: footers_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.footers_localizations_links_id_seq'::regclass);


--
-- Name: form_requests id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests ALTER COLUMN id SET DEFAULT nextval('public.form_requests_id_seq'::regclass);


--
-- Name: form_requests_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests_components ALTER COLUMN id SET DEFAULT nextval('public.form_requests_components_id_seq'::regclass);


--
-- Name: form_requests_form_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests_form_links ALTER COLUMN id SET DEFAULT nextval('public.form_requests_form_links_id_seq'::regclass);


--
-- Name: forms id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms ALTER COLUMN id SET DEFAULT nextval('public.forms_id_seq'::regclass);


--
-- Name: forms_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms_components ALTER COLUMN id SET DEFAULT nextval('public.forms_components_id_seq'::regclass);


--
-- Name: forms_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.forms_localizations_links_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: layouts id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts ALTER COLUMN id SET DEFAULT nextval('public.layouts_id_seq'::regclass);


--
-- Name: layouts_footer_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_footer_links ALTER COLUMN id SET DEFAULT nextval('public.layouts_footer_links_id_seq'::regclass);


--
-- Name: layouts_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.layouts_localizations_links_id_seq'::regclass);


--
-- Name: layouts_modals_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_modals_links ALTER COLUMN id SET DEFAULT nextval('public.layouts_modals_links_id_seq'::regclass);


--
-- Name: layouts_navbar_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_navbar_links ALTER COLUMN id SET DEFAULT nextval('public.layouts_navbar_links_id_seq'::regclass);


--
-- Name: layouts_sidebar_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_sidebar_links ALTER COLUMN id SET DEFAULT nextval('public.layouts_sidebar_links_id_seq'::regclass);


--
-- Name: layouts_slide_overs_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_slide_overs_links ALTER COLUMN id SET DEFAULT nextval('public.layouts_slide_overs_links_id_seq'::regclass);


--
-- Name: layouts_topbar_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_topbar_links ALTER COLUMN id SET DEFAULT nextval('public.layouts_topbar_links_id_seq'::regclass);


--
-- Name: loaders id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.loaders ALTER COLUMN id SET DEFAULT nextval('public.loaders_id_seq'::regclass);


--
-- Name: metatags id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.metatags ALTER COLUMN id SET DEFAULT nextval('public.metatags_id_seq'::regclass);


--
-- Name: metatags_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.metatags_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.metatags_localizations_links_id_seq'::regclass);


--
-- Name: modals id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals ALTER COLUMN id SET DEFAULT nextval('public.modals_id_seq'::regclass);


--
-- Name: modals_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals_components ALTER COLUMN id SET DEFAULT nextval('public.modals_components_id_seq'::regclass);


--
-- Name: modals_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.modals_localizations_links_id_seq'::regclass);


--
-- Name: navbars id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars ALTER COLUMN id SET DEFAULT nextval('public.navbars_id_seq'::regclass);


--
-- Name: navbars_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars_components ALTER COLUMN id SET DEFAULT nextval('public.navbars_components_id_seq'::regclass);


--
-- Name: navbars_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.navbars_localizations_links_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);


--
-- Name: pages_layout_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_layout_links ALTER COLUMN id SET DEFAULT nextval('public.pages_layout_links_id_seq'::regclass);


--
-- Name: pages_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.pages_localizations_links_id_seq'::regclass);


--
-- Name: pages_metatag_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_metatag_links ALTER COLUMN id SET DEFAULT nextval('public.pages_metatag_links_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: robots id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.robots ALTER COLUMN id SET DEFAULT nextval('public.robots_id_seq'::regclass);


--
-- Name: sidebars id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars ALTER COLUMN id SET DEFAULT nextval('public.sidebars_id_seq'::regclass);


--
-- Name: sidebars_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars_components ALTER COLUMN id SET DEFAULT nextval('public.sidebars_components_id_seq'::regclass);


--
-- Name: sidebars_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.sidebars_localizations_links_id_seq'::regclass);


--
-- Name: slide_overs id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs ALTER COLUMN id SET DEFAULT nextval('public.slide_overs_id_seq'::regclass);


--
-- Name: slide_overs_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs_components ALTER COLUMN id SET DEFAULT nextval('public.slide_overs_components_id_seq'::regclass);


--
-- Name: slide_overs_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.slide_overs_localizations_links_id_seq'::regclass);


--
-- Name: sliders id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders ALTER COLUMN id SET DEFAULT nextval('public.sliders_id_seq'::regclass);


--
-- Name: sliders_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders_components ALTER COLUMN id SET DEFAULT nextval('public.sliders_components_id_seq'::regclass);


--
-- Name: sliders_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.sliders_localizations_links_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: telegrams id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.telegrams ALTER COLUMN id SET DEFAULT nextval('public.telegrams_id_seq'::regclass);


--
-- Name: themes id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.themes ALTER COLUMN id SET DEFAULT nextval('public.themes_id_seq'::regclass);


--
-- Name: themes_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.themes_components ALTER COLUMN id SET DEFAULT nextval('public.themes_components_id_seq'::regclass);


--
-- Name: tiers id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers ALTER COLUMN id SET DEFAULT nextval('public.tiers_id_seq'::regclass);


--
-- Name: tiers_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_components ALTER COLUMN id SET DEFAULT nextval('public.tiers_components_id_seq'::regclass);


--
-- Name: tiers_currency_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_currency_links ALTER COLUMN id SET DEFAULT nextval('public.tiers_currency_links_id_seq'::regclass);


--
-- Name: tiers_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.tiers_localizations_links_id_seq'::regclass);


--
-- Name: topbars id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars ALTER COLUMN id SET DEFAULT nextval('public.topbars_id_seq'::regclass);


--
-- Name: topbars_components id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars_components ALTER COLUMN id SET DEFAULT nextval('public.topbars_components_id_seq'::regclass);


--
-- Name: topbars_localizations_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.topbars_localizations_links_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	{}	api::configuration.configuration	{"fields": ["configs.provider", "configs.config"]}	[]	2023-12-16 21:30:43.047	2023-12-16 21:30:43.047	\N	\N
2	plugin::content-manager.explorer.create	{}	api::currency.currency	{"fields": ["title", "unicode", "is_default", "tiers"]}	[]	2023-12-16 21:30:43.056	2023-12-16 21:30:43.056	\N	\N
3	plugin::content-manager.explorer.create	{}	api::flyout.flyout	{"fields": ["variant", "page_blocks", "title", "uid", "class_name"]}	[]	2023-12-16 21:30:43.061	2023-12-16 21:30:43.061	\N	\N
4	plugin::content-manager.explorer.create	{}	api::footer.footer	{"fields": ["title", "uid", "layouts", "page_blocks", "variant", "class_name"]}	[]	2023-12-16 21:30:43.064	2023-12-16 21:30:43.064	\N	\N
5	plugin::content-manager.explorer.create	{}	api::form.form	{"fields": ["inputs.placeholder", "inputs.variant", "inputs.is_required", "inputs.value", "inputs.name", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.label", "inputs.class_name", "inputs.type", "inputs.multiple", "inputs.min", "inputs.max", "inputs.step", "inputs.media", "inputs.additional_media", "inputs.extra_media", "class_name", "additional_attributes", "variant", "button.url", "button.media", "button.description", "button.variant", "button.additional_media", "button.title", "button.additional_attributes", "button.class_name", "button.flyout", "form_requests", "uid", "side_effects.type", "side_effects.recievers.identifier", "side_effects.recievers.admin", "side_effects.recievers.user", "side_effects.provider", "title"]}	[]	2023-12-16 21:30:43.068	2023-12-16 21:30:43.068	\N	\N
6	plugin::content-manager.explorer.create	{}	api::form-request.form-request	{"fields": ["inputs.key", "inputs.value", "inputs.files", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.is_true", "inputs.option.title", "inputs.option.description", "inputs.option.media", "inputs.option.additional_media", "inputs.date_value", "inputs.datetime_value", "inputs.dates.date_value", "inputs.dates.datetime_value", "inputs.dates.time_value", "files", "form"]}	[]	2023-12-16 21:30:43.073	2023-12-16 21:30:43.073	\N	\N
7	plugin::content-manager.explorer.create	{}	api::layout.layout	{"fields": ["title", "uid", "sidebar", "variant", "topbar", "footer", "slide_overs", "modals", "navbar", "class_name", "pages"]}	[]	2023-12-16 21:30:43.078	2023-12-16 21:30:43.078	\N	\N
8	plugin::content-manager.explorer.create	{}	api::loader.loader	{"fields": ["variant", "media", "additional_media", "class_name", "anchor", "title", "subtitle", "description"]}	[]	2023-12-16 21:30:43.082	2023-12-16 21:30:43.082	\N	\N
9	plugin::content-manager.explorer.create	{}	api::metatag.metatag	{"fields": ["title", "description", "script", "gtm_key", "favicon", "pages", "is_default"]}	[]	2023-12-16 21:30:43.087	2023-12-16 21:30:43.087	\N	\N
10	plugin::content-manager.explorer.create	{}	api::modal.modal	{"fields": ["uid", "page_blocks", "dialog_panel_class_name", "variant", "title", "layouts", "class_name"]}	[]	2023-12-16 21:30:43.092	2023-12-16 21:30:43.092	\N	\N
11	plugin::content-manager.explorer.create	{}	api::navbar.navbar	{"fields": ["title", "uid", "page_blocks", "variant", "class_name", "layouts", "position", "side"]}	[]	2023-12-16 21:30:43.097	2023-12-16 21:30:43.097	\N	\N
12	plugin::content-manager.explorer.create	{}	api::page.page	{"fields": ["title", "url", "layout", "page_blocks", "metatag"]}	[]	2023-12-16 21:30:43.102	2023-12-16 21:30:43.102	\N	\N
13	plugin::content-manager.explorer.create	{}	api::review.review	{"fields": ["name", "title", "description", "subtitle", "rating", "media", "additional_media"]}	[]	2023-12-16 21:30:43.106	2023-12-16 21:30:43.106	\N	\N
14	plugin::content-manager.explorer.create	{}	api::robot.robot	{"fields": ["robots"]}	[]	2023-12-16 21:30:43.111	2023-12-16 21:30:43.111	\N	\N
15	plugin::content-manager.explorer.create	{}	api::sidebar.sidebar	{"fields": ["variant", "title", "uid", "page_blocks", "class_name", "layouts", "side"]}	[]	2023-12-16 21:30:43.115	2023-12-16 21:30:43.115	\N	\N
16	plugin::content-manager.explorer.create	{}	api::slide-over.slide-over	{"fields": ["variant", "title", "uid", "class_name", "page_blocks", "layouts"]}	[]	2023-12-16 21:30:43.12	2023-12-16 21:30:43.12	\N	\N
17	plugin::content-manager.explorer.create	{}	api::slider.slider	{"fields": ["variant", "slides.title", "slides.description", "slides.subtitle", "slides.media", "slides.buttons.url", "slides.buttons.media", "slides.buttons.description", "slides.buttons.variant", "slides.buttons.additional_media", "slides.buttons.title", "slides.buttons.additional_attributes", "slides.buttons.class_name", "slides.buttons.flyout", "slides.additional_media", "show_backdrop", "show_full_screen", "show_previews", "class_name", "aspect_ratio_class_name", "title", "uid"]}	[]	2023-12-16 21:30:43.123	2023-12-16 21:30:43.123	\N	\N
18	plugin::content-manager.explorer.create	{}	api::telegram.telegram	{"fields": ["name"]}	[]	2023-12-16 21:30:43.127	2023-12-16 21:30:43.127	\N	\N
19	plugin::content-manager.explorer.create	{}	api::theme.theme	{"fields": ["theme", "fonts.media", "fonts.weight", "fonts.style", "fonts.variant"]}	[]	2023-12-16 21:30:43.131	2023-12-16 21:30:43.131	\N	\N
20	plugin::content-manager.explorer.create	{}	api::tier.tier	{"fields": ["title", "description", "price", "currency", "type", "period", "features.media", "features.description", "features.additional_media", "features.title", "features.subtitle", "old_price", "buttons.url", "buttons.media", "buttons.description", "buttons.variant", "buttons.additional_media", "buttons.title", "buttons.additional_attributes", "buttons.class_name", "buttons.flyout"]}	[]	2023-12-16 21:30:43.135	2023-12-16 21:30:43.135	\N	\N
21	plugin::content-manager.explorer.create	{}	api::topbar.topbar	{"fields": ["title", "uid", "variant", "page_blocks", "layouts", "class_name", "position", "side"]}	[]	2023-12-16 21:30:43.139	2023-12-16 21:30:43.139	\N	\N
22	plugin::content-manager.explorer.read	{}	api::configuration.configuration	{"fields": ["configs.provider", "configs.config"]}	[]	2023-12-16 21:30:43.143	2023-12-16 21:30:43.143	\N	\N
23	plugin::content-manager.explorer.read	{}	api::currency.currency	{"fields": ["title", "unicode", "is_default", "tiers"]}	[]	2023-12-16 21:30:43.146	2023-12-16 21:30:43.146	\N	\N
24	plugin::content-manager.explorer.read	{}	api::flyout.flyout	{"fields": ["variant", "page_blocks", "title", "uid", "class_name"]}	[]	2023-12-16 21:30:43.149	2023-12-16 21:30:43.149	\N	\N
25	plugin::content-manager.explorer.read	{}	api::footer.footer	{"fields": ["title", "uid", "layouts", "page_blocks", "variant", "class_name"]}	[]	2023-12-16 21:30:43.154	2023-12-16 21:30:43.154	\N	\N
49	plugin::content-manager.explorer.update	{}	api::layout.layout	{"fields": ["title", "uid", "sidebar", "variant", "topbar", "footer", "slide_overs", "modals", "navbar", "class_name", "pages"]}	[]	2023-12-16 21:30:43.249	2023-12-16 21:30:43.249	\N	\N
50	plugin::content-manager.explorer.update	{}	api::loader.loader	{"fields": ["variant", "media", "additional_media", "class_name", "anchor", "title", "subtitle", "description"]}	[]	2023-12-16 21:30:43.252	2023-12-16 21:30:43.252	\N	\N
51	plugin::content-manager.explorer.update	{}	api::metatag.metatag	{"fields": ["title", "description", "script", "gtm_key", "favicon", "pages", "is_default"]}	[]	2023-12-16 21:30:43.255	2023-12-16 21:30:43.255	\N	\N
26	plugin::content-manager.explorer.read	{}	api::form.form	{"fields": ["inputs.placeholder", "inputs.variant", "inputs.is_required", "inputs.value", "inputs.name", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.label", "inputs.class_name", "inputs.type", "inputs.multiple", "inputs.min", "inputs.max", "inputs.step", "inputs.media", "inputs.additional_media", "inputs.extra_media", "class_name", "additional_attributes", "variant", "button.url", "button.media", "button.description", "button.variant", "button.additional_media", "button.title", "button.additional_attributes", "button.class_name", "button.flyout", "form_requests", "uid", "side_effects.type", "side_effects.recievers.identifier", "side_effects.recievers.admin", "side_effects.recievers.user", "side_effects.provider", "title"]}	[]	2023-12-16 21:30:43.158	2023-12-16 21:30:43.158	\N	\N
27	plugin::content-manager.explorer.read	{}	api::form-request.form-request	{"fields": ["inputs.key", "inputs.value", "inputs.files", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.is_true", "inputs.option.title", "inputs.option.description", "inputs.option.media", "inputs.option.additional_media", "inputs.date_value", "inputs.datetime_value", "inputs.dates.date_value", "inputs.dates.datetime_value", "inputs.dates.time_value", "files", "form"]}	[]	2023-12-16 21:30:43.162	2023-12-16 21:30:43.162	\N	\N
28	plugin::content-manager.explorer.read	{}	api::layout.layout	{"fields": ["title", "uid", "sidebar", "variant", "topbar", "footer", "slide_overs", "modals", "navbar", "class_name", "pages"]}	[]	2023-12-16 21:30:43.166	2023-12-16 21:30:43.166	\N	\N
29	plugin::content-manager.explorer.read	{}	api::loader.loader	{"fields": ["variant", "media", "additional_media", "class_name", "anchor", "title", "subtitle", "description"]}	[]	2023-12-16 21:30:43.172	2023-12-16 21:30:43.172	\N	\N
30	plugin::content-manager.explorer.read	{}	api::metatag.metatag	{"fields": ["title", "description", "script", "gtm_key", "favicon", "pages", "is_default"]}	[]	2023-12-16 21:30:43.18	2023-12-16 21:30:43.18	\N	\N
31	plugin::content-manager.explorer.read	{}	api::modal.modal	{"fields": ["uid", "page_blocks", "dialog_panel_class_name", "variant", "title", "layouts", "class_name"]}	[]	2023-12-16 21:30:43.184	2023-12-16 21:30:43.184	\N	\N
32	plugin::content-manager.explorer.read	{}	api::navbar.navbar	{"fields": ["title", "uid", "page_blocks", "variant", "class_name", "layouts", "position", "side"]}	[]	2023-12-16 21:30:43.188	2023-12-16 21:30:43.188	\N	\N
33	plugin::content-manager.explorer.read	{}	api::page.page	{"fields": ["title", "url", "layout", "page_blocks", "metatag"]}	[]	2023-12-16 21:30:43.191	2023-12-16 21:30:43.191	\N	\N
34	plugin::content-manager.explorer.read	{}	api::review.review	{"fields": ["name", "title", "description", "subtitle", "rating", "media", "additional_media"]}	[]	2023-12-16 21:30:43.195	2023-12-16 21:30:43.195	\N	\N
35	plugin::content-manager.explorer.read	{}	api::robot.robot	{"fields": ["robots"]}	[]	2023-12-16 21:30:43.198	2023-12-16 21:30:43.198	\N	\N
36	plugin::content-manager.explorer.read	{}	api::sidebar.sidebar	{"fields": ["variant", "title", "uid", "page_blocks", "class_name", "layouts", "side"]}	[]	2023-12-16 21:30:43.201	2023-12-16 21:30:43.201	\N	\N
37	plugin::content-manager.explorer.read	{}	api::slide-over.slide-over	{"fields": ["variant", "title", "uid", "class_name", "page_blocks", "layouts"]}	[]	2023-12-16 21:30:43.205	2023-12-16 21:30:43.205	\N	\N
38	plugin::content-manager.explorer.read	{}	api::slider.slider	{"fields": ["variant", "slides.title", "slides.description", "slides.subtitle", "slides.media", "slides.buttons.url", "slides.buttons.media", "slides.buttons.description", "slides.buttons.variant", "slides.buttons.additional_media", "slides.buttons.title", "slides.buttons.additional_attributes", "slides.buttons.class_name", "slides.buttons.flyout", "slides.additional_media", "show_backdrop", "show_full_screen", "show_previews", "class_name", "aspect_ratio_class_name", "title", "uid"]}	[]	2023-12-16 21:30:43.208	2023-12-16 21:30:43.208	\N	\N
39	plugin::content-manager.explorer.read	{}	api::telegram.telegram	{"fields": ["name"]}	[]	2023-12-16 21:30:43.212	2023-12-16 21:30:43.212	\N	\N
40	plugin::content-manager.explorer.read	{}	api::theme.theme	{"fields": ["theme", "fonts.media", "fonts.weight", "fonts.style", "fonts.variant"]}	[]	2023-12-16 21:30:43.215	2023-12-16 21:30:43.215	\N	\N
41	plugin::content-manager.explorer.read	{}	api::tier.tier	{"fields": ["title", "description", "price", "currency", "type", "period", "features.media", "features.description", "features.additional_media", "features.title", "features.subtitle", "old_price", "buttons.url", "buttons.media", "buttons.description", "buttons.variant", "buttons.additional_media", "buttons.title", "buttons.additional_attributes", "buttons.class_name", "buttons.flyout"]}	[]	2023-12-16 21:30:43.219	2023-12-16 21:30:43.219	\N	\N
42	plugin::content-manager.explorer.read	{}	api::topbar.topbar	{"fields": ["title", "uid", "variant", "page_blocks", "layouts", "class_name", "position", "side"]}	[]	2023-12-16 21:30:43.222	2023-12-16 21:30:43.222	\N	\N
43	plugin::content-manager.explorer.update	{}	api::configuration.configuration	{"fields": ["configs.provider", "configs.config"]}	[]	2023-12-16 21:30:43.227	2023-12-16 21:30:43.227	\N	\N
44	plugin::content-manager.explorer.update	{}	api::currency.currency	{"fields": ["title", "unicode", "is_default", "tiers"]}	[]	2023-12-16 21:30:43.231	2023-12-16 21:30:43.231	\N	\N
45	plugin::content-manager.explorer.update	{}	api::flyout.flyout	{"fields": ["variant", "page_blocks", "title", "uid", "class_name"]}	[]	2023-12-16 21:30:43.235	2023-12-16 21:30:43.235	\N	\N
46	plugin::content-manager.explorer.update	{}	api::footer.footer	{"fields": ["title", "uid", "layouts", "page_blocks", "variant", "class_name"]}	[]	2023-12-16 21:30:43.238	2023-12-16 21:30:43.238	\N	\N
47	plugin::content-manager.explorer.update	{}	api::form.form	{"fields": ["inputs.placeholder", "inputs.variant", "inputs.is_required", "inputs.value", "inputs.name", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.label", "inputs.class_name", "inputs.type", "inputs.multiple", "inputs.min", "inputs.max", "inputs.step", "inputs.media", "inputs.additional_media", "inputs.extra_media", "class_name", "additional_attributes", "variant", "button.url", "button.media", "button.description", "button.variant", "button.additional_media", "button.title", "button.additional_attributes", "button.class_name", "button.flyout", "form_requests", "uid", "side_effects.type", "side_effects.recievers.identifier", "side_effects.recievers.admin", "side_effects.recievers.user", "side_effects.provider", "title"]}	[]	2023-12-16 21:30:43.242	2023-12-16 21:30:43.242	\N	\N
48	plugin::content-manager.explorer.update	{}	api::form-request.form-request	{"fields": ["inputs.key", "inputs.value", "inputs.files", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.is_true", "inputs.option.title", "inputs.option.description", "inputs.option.media", "inputs.option.additional_media", "inputs.date_value", "inputs.datetime_value", "inputs.dates.date_value", "inputs.dates.datetime_value", "inputs.dates.time_value", "files", "form"]}	[]	2023-12-16 21:30:43.246	2023-12-16 21:30:43.246	\N	\N
99	plugin::content-manager.explorer.publish	{}	api::theme.theme	{}	[]	2023-12-16 21:30:43.477	2023-12-16 21:30:43.477	\N	\N
52	plugin::content-manager.explorer.update	{}	api::modal.modal	{"fields": ["uid", "page_blocks", "dialog_panel_class_name", "variant", "title", "layouts", "class_name"]}	[]	2023-12-16 21:30:43.259	2023-12-16 21:30:43.259	\N	\N
53	plugin::content-manager.explorer.update	{}	api::navbar.navbar	{"fields": ["title", "uid", "page_blocks", "variant", "class_name", "layouts", "position", "side"]}	[]	2023-12-16 21:30:43.262	2023-12-16 21:30:43.262	\N	\N
54	plugin::content-manager.explorer.update	{}	api::page.page	{"fields": ["title", "url", "layout", "page_blocks", "metatag"]}	[]	2023-12-16 21:30:43.266	2023-12-16 21:30:43.266	\N	\N
55	plugin::content-manager.explorer.update	{}	api::review.review	{"fields": ["name", "title", "description", "subtitle", "rating", "media", "additional_media"]}	[]	2023-12-16 21:30:43.269	2023-12-16 21:30:43.269	\N	\N
56	plugin::content-manager.explorer.update	{}	api::robot.robot	{"fields": ["robots"]}	[]	2023-12-16 21:30:43.273	2023-12-16 21:30:43.273	\N	\N
57	plugin::content-manager.explorer.update	{}	api::sidebar.sidebar	{"fields": ["variant", "title", "uid", "page_blocks", "class_name", "layouts", "side"]}	[]	2023-12-16 21:30:43.276	2023-12-16 21:30:43.276	\N	\N
58	plugin::content-manager.explorer.update	{}	api::slide-over.slide-over	{"fields": ["variant", "title", "uid", "class_name", "page_blocks", "layouts"]}	[]	2023-12-16 21:30:43.28	2023-12-16 21:30:43.28	\N	\N
59	plugin::content-manager.explorer.update	{}	api::slider.slider	{"fields": ["variant", "slides.title", "slides.description", "slides.subtitle", "slides.media", "slides.buttons.url", "slides.buttons.media", "slides.buttons.description", "slides.buttons.variant", "slides.buttons.additional_media", "slides.buttons.title", "slides.buttons.additional_attributes", "slides.buttons.class_name", "slides.buttons.flyout", "slides.additional_media", "show_backdrop", "show_full_screen", "show_previews", "class_name", "aspect_ratio_class_name", "title", "uid"]}	[]	2023-12-16 21:30:43.283	2023-12-16 21:30:43.283	\N	\N
60	plugin::content-manager.explorer.update	{}	api::telegram.telegram	{"fields": ["name"]}	[]	2023-12-16 21:30:43.287	2023-12-16 21:30:43.287	\N	\N
61	plugin::content-manager.explorer.update	{}	api::theme.theme	{"fields": ["theme", "fonts.media", "fonts.weight", "fonts.style", "fonts.variant"]}	[]	2023-12-16 21:30:43.29	2023-12-16 21:30:43.29	\N	\N
62	plugin::content-manager.explorer.update	{}	api::tier.tier	{"fields": ["title", "description", "price", "currency", "type", "period", "features.media", "features.description", "features.additional_media", "features.title", "features.subtitle", "old_price", "buttons.url", "buttons.media", "buttons.description", "buttons.variant", "buttons.additional_media", "buttons.title", "buttons.additional_attributes", "buttons.class_name", "buttons.flyout"]}	[]	2023-12-16 21:30:43.294	2023-12-16 21:30:43.294	\N	\N
63	plugin::content-manager.explorer.update	{}	api::topbar.topbar	{"fields": ["title", "uid", "variant", "page_blocks", "layouts", "class_name", "position", "side"]}	[]	2023-12-16 21:30:43.297	2023-12-16 21:30:43.297	\N	\N
64	plugin::content-manager.explorer.delete	{}	api::configuration.configuration	{}	[]	2023-12-16 21:30:43.301	2023-12-16 21:30:43.301	\N	\N
69	plugin::content-manager.explorer.delete	{}	api::form-request.form-request	{}	[]	2023-12-16 21:30:43.322	2023-12-16 21:30:43.322	\N	\N
71	plugin::content-manager.explorer.delete	{}	api::loader.loader	{}	[]	2023-12-16 21:30:43.332	2023-12-16 21:30:43.332	\N	\N
76	plugin::content-manager.explorer.delete	{}	api::review.review	{}	[]	2023-12-16 21:30:43.352	2023-12-16 21:30:43.352	\N	\N
77	plugin::content-manager.explorer.delete	{}	api::robot.robot	{}	[]	2023-12-16 21:30:43.355	2023-12-16 21:30:43.355	\N	\N
81	plugin::content-manager.explorer.delete	{}	api::telegram.telegram	{}	[]	2023-12-16 21:30:43.38	2023-12-16 21:30:43.38	\N	\N
82	plugin::content-manager.explorer.delete	{}	api::theme.theme	{}	[]	2023-12-16 21:30:43.384	2023-12-16 21:30:43.384	\N	\N
90	plugin::content-manager.explorer.publish	{}	api::loader.loader	{}	[]	2023-12-16 21:30:43.415	2023-12-16 21:30:43.415	\N	\N
95	plugin::content-manager.explorer.publish	{}	api::review.review	{}	[]	2023-12-16 21:30:43.447	2023-12-16 21:30:43.447	\N	\N
335	admin::users.read	{}	\N	{}	[]	2023-12-16 21:30:44.729	2023-12-16 21:30:44.729	\N	\N
102	plugin::upload.read	{}	\N	{}	[]	2023-12-16 21:30:43.489	2023-12-16 21:30:43.489	\N	\N
103	plugin::upload.configure-view	{}	\N	{}	[]	2023-12-16 21:30:43.494	2023-12-16 21:30:43.494	\N	\N
104	plugin::upload.assets.create	{}	\N	{}	[]	2023-12-16 21:30:43.504	2023-12-16 21:30:43.504	\N	\N
105	plugin::upload.assets.update	{}	\N	{}	[]	2023-12-16 21:30:43.512	2023-12-16 21:30:43.512	\N	\N
106	plugin::upload.assets.download	{}	\N	{}	[]	2023-12-16 21:30:43.517	2023-12-16 21:30:43.517	\N	\N
107	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-12-16 21:30:43.521	2023-12-16 21:30:43.521	\N	\N
108	plugin::content-manager.explorer.create	{}	api::configuration.configuration	{"fields": ["configs.provider", "configs.config"]}	["admin::is-creator"]	2023-12-16 21:30:43.529	2023-12-16 21:30:43.529	\N	\N
109	plugin::content-manager.explorer.create	{}	api::currency.currency	{"fields": ["title", "unicode", "is_default", "tiers"]}	["admin::is-creator"]	2023-12-16 21:30:43.537	2023-12-16 21:30:43.537	\N	\N
110	plugin::content-manager.explorer.create	{}	api::flyout.flyout	{"fields": ["variant", "page_blocks", "title", "uid", "class_name"]}	["admin::is-creator"]	2023-12-16 21:30:43.545	2023-12-16 21:30:43.545	\N	\N
111	plugin::content-manager.explorer.create	{}	api::footer.footer	{"fields": ["title", "uid", "layouts", "page_blocks", "variant", "class_name"]}	["admin::is-creator"]	2023-12-16 21:30:43.549	2023-12-16 21:30:43.549	\N	\N
112	plugin::content-manager.explorer.create	{}	api::form.form	{"fields": ["inputs.placeholder", "inputs.variant", "inputs.is_required", "inputs.value", "inputs.name", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.label", "inputs.class_name", "inputs.type", "inputs.multiple", "inputs.min", "inputs.max", "inputs.step", "inputs.media", "inputs.additional_media", "inputs.extra_media", "class_name", "additional_attributes", "variant", "button.url", "button.media", "button.description", "button.variant", "button.additional_media", "button.title", "button.additional_attributes", "button.class_name", "button.flyout", "form_requests", "uid", "side_effects.type", "side_effects.recievers.identifier", "side_effects.recievers.admin", "side_effects.recievers.user", "side_effects.provider", "title"]}	["admin::is-creator"]	2023-12-16 21:30:43.554	2023-12-16 21:30:43.554	\N	\N
113	plugin::content-manager.explorer.create	{}	api::form-request.form-request	{"fields": ["inputs.key", "inputs.value", "inputs.files", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.is_true", "inputs.option.title", "inputs.option.description", "inputs.option.media", "inputs.option.additional_media", "inputs.date_value", "inputs.datetime_value", "inputs.dates.date_value", "inputs.dates.datetime_value", "inputs.dates.time_value", "files", "form"]}	["admin::is-creator"]	2023-12-16 21:30:43.558	2023-12-16 21:30:43.558	\N	\N
114	plugin::content-manager.explorer.create	{}	api::layout.layout	{"fields": ["title", "uid", "sidebar", "variant", "topbar", "footer", "slide_overs", "modals", "navbar", "class_name", "pages"]}	["admin::is-creator"]	2023-12-16 21:30:43.563	2023-12-16 21:30:43.563	\N	\N
115	plugin::content-manager.explorer.create	{}	api::loader.loader	{"fields": ["variant", "media", "additional_media", "class_name", "anchor", "title", "subtitle", "description"]}	["admin::is-creator"]	2023-12-16 21:30:43.567	2023-12-16 21:30:43.567	\N	\N
116	plugin::content-manager.explorer.create	{}	api::metatag.metatag	{"fields": ["title", "description", "script", "gtm_key", "favicon", "pages", "is_default"]}	["admin::is-creator"]	2023-12-16 21:30:43.571	2023-12-16 21:30:43.571	\N	\N
117	plugin::content-manager.explorer.create	{}	api::modal.modal	{"fields": ["uid", "page_blocks", "dialog_panel_class_name", "variant", "title", "layouts", "class_name"]}	["admin::is-creator"]	2023-12-16 21:30:43.575	2023-12-16 21:30:43.575	\N	\N
118	plugin::content-manager.explorer.create	{}	api::navbar.navbar	{"fields": ["title", "uid", "page_blocks", "variant", "class_name", "layouts", "position", "side"]}	["admin::is-creator"]	2023-12-16 21:30:43.579	2023-12-16 21:30:43.579	\N	\N
119	plugin::content-manager.explorer.create	{}	api::page.page	{"fields": ["title", "url", "layout", "page_blocks", "metatag"]}	["admin::is-creator"]	2023-12-16 21:30:43.583	2023-12-16 21:30:43.583	\N	\N
120	plugin::content-manager.explorer.create	{}	api::review.review	{"fields": ["name", "title", "description", "subtitle", "rating", "media", "additional_media"]}	["admin::is-creator"]	2023-12-16 21:30:43.587	2023-12-16 21:30:43.587	\N	\N
121	plugin::content-manager.explorer.create	{}	api::robot.robot	{"fields": ["robots"]}	["admin::is-creator"]	2023-12-16 21:30:43.59	2023-12-16 21:30:43.59	\N	\N
122	plugin::content-manager.explorer.create	{}	api::sidebar.sidebar	{"fields": ["variant", "title", "uid", "page_blocks", "class_name", "layouts", "side"]}	["admin::is-creator"]	2023-12-16 21:30:43.594	2023-12-16 21:30:43.594	\N	\N
123	plugin::content-manager.explorer.create	{}	api::slide-over.slide-over	{"fields": ["variant", "title", "uid", "class_name", "page_blocks", "layouts"]}	["admin::is-creator"]	2023-12-16 21:30:43.598	2023-12-16 21:30:43.598	\N	\N
124	plugin::content-manager.explorer.create	{}	api::slider.slider	{"fields": ["variant", "slides.title", "slides.description", "slides.subtitle", "slides.media", "slides.buttons.url", "slides.buttons.media", "slides.buttons.description", "slides.buttons.variant", "slides.buttons.additional_media", "slides.buttons.title", "slides.buttons.additional_attributes", "slides.buttons.class_name", "slides.buttons.flyout", "slides.additional_media", "show_backdrop", "show_full_screen", "show_previews", "class_name", "aspect_ratio_class_name", "title", "uid"]}	["admin::is-creator"]	2023-12-16 21:30:43.604	2023-12-16 21:30:43.604	\N	\N
125	plugin::content-manager.explorer.create	{}	api::telegram.telegram	{"fields": ["name"]}	["admin::is-creator"]	2023-12-16 21:30:43.611	2023-12-16 21:30:43.611	\N	\N
126	plugin::content-manager.explorer.create	{}	api::theme.theme	{"fields": ["theme", "fonts.media", "fonts.weight", "fonts.style", "fonts.variant"]}	["admin::is-creator"]	2023-12-16 21:30:43.616	2023-12-16 21:30:43.616	\N	\N
127	plugin::content-manager.explorer.create	{}	api::tier.tier	{"fields": ["title", "description", "price", "currency", "type", "period", "features.media", "features.description", "features.additional_media", "features.title", "features.subtitle", "old_price", "buttons.url", "buttons.media", "buttons.description", "buttons.variant", "buttons.additional_media", "buttons.title", "buttons.additional_attributes", "buttons.class_name", "buttons.flyout"]}	["admin::is-creator"]	2023-12-16 21:30:43.62	2023-12-16 21:30:43.62	\N	\N
128	plugin::content-manager.explorer.create	{}	api::topbar.topbar	{"fields": ["title", "uid", "variant", "page_blocks", "layouts", "class_name", "position", "side"]}	["admin::is-creator"]	2023-12-16 21:30:43.623	2023-12-16 21:30:43.623	\N	\N
129	plugin::content-manager.explorer.read	{}	api::configuration.configuration	{"fields": ["configs.provider", "configs.config"]}	["admin::is-creator"]	2023-12-16 21:30:43.627	2023-12-16 21:30:43.627	\N	\N
336	admin::users.update	{}	\N	{}	[]	2023-12-16 21:30:44.733	2023-12-16 21:30:44.733	\N	\N
130	plugin::content-manager.explorer.read	{}	api::currency.currency	{"fields": ["title", "unicode", "is_default", "tiers"]}	["admin::is-creator"]	2023-12-16 21:30:43.631	2023-12-16 21:30:43.631	\N	\N
131	plugin::content-manager.explorer.read	{}	api::flyout.flyout	{"fields": ["variant", "page_blocks", "title", "uid", "class_name"]}	["admin::is-creator"]	2023-12-16 21:30:43.634	2023-12-16 21:30:43.634	\N	\N
132	plugin::content-manager.explorer.read	{}	api::footer.footer	{"fields": ["title", "uid", "layouts", "page_blocks", "variant", "class_name"]}	["admin::is-creator"]	2023-12-16 21:30:43.638	2023-12-16 21:30:43.638	\N	\N
133	plugin::content-manager.explorer.read	{}	api::form.form	{"fields": ["inputs.placeholder", "inputs.variant", "inputs.is_required", "inputs.value", "inputs.name", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.label", "inputs.class_name", "inputs.type", "inputs.multiple", "inputs.min", "inputs.max", "inputs.step", "inputs.media", "inputs.additional_media", "inputs.extra_media", "class_name", "additional_attributes", "variant", "button.url", "button.media", "button.description", "button.variant", "button.additional_media", "button.title", "button.additional_attributes", "button.class_name", "button.flyout", "form_requests", "uid", "side_effects.type", "side_effects.recievers.identifier", "side_effects.recievers.admin", "side_effects.recievers.user", "side_effects.provider", "title"]}	["admin::is-creator"]	2023-12-16 21:30:43.648	2023-12-16 21:30:43.648	\N	\N
134	plugin::content-manager.explorer.read	{}	api::form-request.form-request	{"fields": ["inputs.key", "inputs.value", "inputs.files", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.is_true", "inputs.option.title", "inputs.option.description", "inputs.option.media", "inputs.option.additional_media", "inputs.date_value", "inputs.datetime_value", "inputs.dates.date_value", "inputs.dates.datetime_value", "inputs.dates.time_value", "files", "form"]}	["admin::is-creator"]	2023-12-16 21:30:43.655	2023-12-16 21:30:43.655	\N	\N
135	plugin::content-manager.explorer.read	{}	api::layout.layout	{"fields": ["title", "uid", "sidebar", "variant", "topbar", "footer", "slide_overs", "modals", "navbar", "class_name", "pages"]}	["admin::is-creator"]	2023-12-16 21:30:43.664	2023-12-16 21:30:43.664	\N	\N
136	plugin::content-manager.explorer.read	{}	api::loader.loader	{"fields": ["variant", "media", "additional_media", "class_name", "anchor", "title", "subtitle", "description"]}	["admin::is-creator"]	2023-12-16 21:30:43.67	2023-12-16 21:30:43.67	\N	\N
137	plugin::content-manager.explorer.read	{}	api::metatag.metatag	{"fields": ["title", "description", "script", "gtm_key", "favicon", "pages", "is_default"]}	["admin::is-creator"]	2023-12-16 21:30:43.676	2023-12-16 21:30:43.676	\N	\N
138	plugin::content-manager.explorer.read	{}	api::modal.modal	{"fields": ["uid", "page_blocks", "dialog_panel_class_name", "variant", "title", "layouts", "class_name"]}	["admin::is-creator"]	2023-12-16 21:30:43.685	2023-12-16 21:30:43.685	\N	\N
139	plugin::content-manager.explorer.read	{}	api::navbar.navbar	{"fields": ["title", "uid", "page_blocks", "variant", "class_name", "layouts", "position", "side"]}	["admin::is-creator"]	2023-12-16 21:30:43.692	2023-12-16 21:30:43.692	\N	\N
140	plugin::content-manager.explorer.read	{}	api::page.page	{"fields": ["title", "url", "layout", "page_blocks", "metatag"]}	["admin::is-creator"]	2023-12-16 21:30:43.701	2023-12-16 21:30:43.701	\N	\N
141	plugin::content-manager.explorer.read	{}	api::review.review	{"fields": ["name", "title", "description", "subtitle", "rating", "media", "additional_media"]}	["admin::is-creator"]	2023-12-16 21:30:43.708	2023-12-16 21:30:43.708	\N	\N
142	plugin::content-manager.explorer.read	{}	api::robot.robot	{"fields": ["robots"]}	["admin::is-creator"]	2023-12-16 21:30:43.717	2023-12-16 21:30:43.717	\N	\N
143	plugin::content-manager.explorer.read	{}	api::sidebar.sidebar	{"fields": ["variant", "title", "uid", "page_blocks", "class_name", "layouts", "side"]}	["admin::is-creator"]	2023-12-16 21:30:43.724	2023-12-16 21:30:43.724	\N	\N
144	plugin::content-manager.explorer.read	{}	api::slide-over.slide-over	{"fields": ["variant", "title", "uid", "class_name", "page_blocks", "layouts"]}	["admin::is-creator"]	2023-12-16 21:30:43.728	2023-12-16 21:30:43.728	\N	\N
145	plugin::content-manager.explorer.read	{}	api::slider.slider	{"fields": ["variant", "slides.title", "slides.description", "slides.subtitle", "slides.media", "slides.buttons.url", "slides.buttons.media", "slides.buttons.description", "slides.buttons.variant", "slides.buttons.additional_media", "slides.buttons.title", "slides.buttons.additional_attributes", "slides.buttons.class_name", "slides.buttons.flyout", "slides.additional_media", "show_backdrop", "show_full_screen", "show_previews", "class_name", "aspect_ratio_class_name", "title", "uid"]}	["admin::is-creator"]	2023-12-16 21:30:43.734	2023-12-16 21:30:43.734	\N	\N
146	plugin::content-manager.explorer.read	{}	api::telegram.telegram	{"fields": ["name"]}	["admin::is-creator"]	2023-12-16 21:30:43.741	2023-12-16 21:30:43.741	\N	\N
147	plugin::content-manager.explorer.read	{}	api::theme.theme	{"fields": ["theme", "fonts.media", "fonts.weight", "fonts.style", "fonts.variant"]}	["admin::is-creator"]	2023-12-16 21:30:43.75	2023-12-16 21:30:43.75	\N	\N
148	plugin::content-manager.explorer.read	{}	api::tier.tier	{"fields": ["title", "description", "price", "currency", "type", "period", "features.media", "features.description", "features.additional_media", "features.title", "features.subtitle", "old_price", "buttons.url", "buttons.media", "buttons.description", "buttons.variant", "buttons.additional_media", "buttons.title", "buttons.additional_attributes", "buttons.class_name", "buttons.flyout"]}	["admin::is-creator"]	2023-12-16 21:30:43.759	2023-12-16 21:30:43.759	\N	\N
149	plugin::content-manager.explorer.read	{}	api::topbar.topbar	{"fields": ["title", "uid", "variant", "page_blocks", "layouts", "class_name", "position", "side"]}	["admin::is-creator"]	2023-12-16 21:30:43.767	2023-12-16 21:30:43.767	\N	\N
150	plugin::content-manager.explorer.update	{}	api::configuration.configuration	{"fields": ["configs.provider", "configs.config"]}	["admin::is-creator"]	2023-12-16 21:30:43.776	2023-12-16 21:30:43.776	\N	\N
151	plugin::content-manager.explorer.update	{}	api::currency.currency	{"fields": ["title", "unicode", "is_default", "tiers"]}	["admin::is-creator"]	2023-12-16 21:30:43.787	2023-12-16 21:30:43.787	\N	\N
152	plugin::content-manager.explorer.update	{}	api::flyout.flyout	{"fields": ["variant", "page_blocks", "title", "uid", "class_name"]}	["admin::is-creator"]	2023-12-16 21:30:43.797	2023-12-16 21:30:43.797	\N	\N
153	plugin::content-manager.explorer.update	{}	api::footer.footer	{"fields": ["title", "uid", "layouts", "page_blocks", "variant", "class_name"]}	["admin::is-creator"]	2023-12-16 21:30:43.806	2023-12-16 21:30:43.806	\N	\N
184	plugin::content-manager.explorer.delete	{}	api::robot.robot	{}	["admin::is-creator"]	2023-12-16 21:30:43.963	2023-12-16 21:30:43.963	\N	\N
337	admin::users.delete	{}	\N	{}	[]	2023-12-16 21:30:44.737	2023-12-16 21:30:44.737	\N	\N
154	plugin::content-manager.explorer.update	{}	api::form.form	{"fields": ["inputs.placeholder", "inputs.variant", "inputs.is_required", "inputs.value", "inputs.name", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.label", "inputs.class_name", "inputs.type", "inputs.multiple", "inputs.min", "inputs.max", "inputs.step", "inputs.media", "inputs.additional_media", "inputs.extra_media", "class_name", "additional_attributes", "variant", "button.url", "button.media", "button.description", "button.variant", "button.additional_media", "button.title", "button.additional_attributes", "button.class_name", "button.flyout", "form_requests", "uid", "side_effects.type", "side_effects.recievers.identifier", "side_effects.recievers.admin", "side_effects.recievers.user", "side_effects.provider", "title"]}	["admin::is-creator"]	2023-12-16 21:30:43.815	2023-12-16 21:30:43.815	\N	\N
155	plugin::content-manager.explorer.update	{}	api::form-request.form-request	{"fields": ["inputs.key", "inputs.value", "inputs.files", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.is_true", "inputs.option.title", "inputs.option.description", "inputs.option.media", "inputs.option.additional_media", "inputs.date_value", "inputs.datetime_value", "inputs.dates.date_value", "inputs.dates.datetime_value", "inputs.dates.time_value", "files", "form"]}	["admin::is-creator"]	2023-12-16 21:30:43.826	2023-12-16 21:30:43.826	\N	\N
156	plugin::content-manager.explorer.update	{}	api::layout.layout	{"fields": ["title", "uid", "sidebar", "variant", "topbar", "footer", "slide_overs", "modals", "navbar", "class_name", "pages"]}	["admin::is-creator"]	2023-12-16 21:30:43.836	2023-12-16 21:30:43.836	\N	\N
157	plugin::content-manager.explorer.update	{}	api::loader.loader	{"fields": ["variant", "media", "additional_media", "class_name", "anchor", "title", "subtitle", "description"]}	["admin::is-creator"]	2023-12-16 21:30:43.845	2023-12-16 21:30:43.845	\N	\N
158	plugin::content-manager.explorer.update	{}	api::metatag.metatag	{"fields": ["title", "description", "script", "gtm_key", "favicon", "pages", "is_default"]}	["admin::is-creator"]	2023-12-16 21:30:43.849	2023-12-16 21:30:43.849	\N	\N
159	plugin::content-manager.explorer.update	{}	api::modal.modal	{"fields": ["uid", "page_blocks", "dialog_panel_class_name", "variant", "title", "layouts", "class_name"]}	["admin::is-creator"]	2023-12-16 21:30:43.854	2023-12-16 21:30:43.854	\N	\N
160	plugin::content-manager.explorer.update	{}	api::navbar.navbar	{"fields": ["title", "uid", "page_blocks", "variant", "class_name", "layouts", "position", "side"]}	["admin::is-creator"]	2023-12-16 21:30:43.858	2023-12-16 21:30:43.858	\N	\N
161	plugin::content-manager.explorer.update	{}	api::page.page	{"fields": ["title", "url", "layout", "page_blocks", "metatag"]}	["admin::is-creator"]	2023-12-16 21:30:43.862	2023-12-16 21:30:43.862	\N	\N
162	plugin::content-manager.explorer.update	{}	api::review.review	{"fields": ["name", "title", "description", "subtitle", "rating", "media", "additional_media"]}	["admin::is-creator"]	2023-12-16 21:30:43.867	2023-12-16 21:30:43.867	\N	\N
163	plugin::content-manager.explorer.update	{}	api::robot.robot	{"fields": ["robots"]}	["admin::is-creator"]	2023-12-16 21:30:43.871	2023-12-16 21:30:43.871	\N	\N
164	plugin::content-manager.explorer.update	{}	api::sidebar.sidebar	{"fields": ["variant", "title", "uid", "page_blocks", "class_name", "layouts", "side"]}	["admin::is-creator"]	2023-12-16 21:30:43.875	2023-12-16 21:30:43.875	\N	\N
165	plugin::content-manager.explorer.update	{}	api::slide-over.slide-over	{"fields": ["variant", "title", "uid", "class_name", "page_blocks", "layouts"]}	["admin::is-creator"]	2023-12-16 21:30:43.879	2023-12-16 21:30:43.879	\N	\N
166	plugin::content-manager.explorer.update	{}	api::slider.slider	{"fields": ["variant", "slides.title", "slides.description", "slides.subtitle", "slides.media", "slides.buttons.url", "slides.buttons.media", "slides.buttons.description", "slides.buttons.variant", "slides.buttons.additional_media", "slides.buttons.title", "slides.buttons.additional_attributes", "slides.buttons.class_name", "slides.buttons.flyout", "slides.additional_media", "show_backdrop", "show_full_screen", "show_previews", "class_name", "aspect_ratio_class_name", "title", "uid"]}	["admin::is-creator"]	2023-12-16 21:30:43.882	2023-12-16 21:30:43.882	\N	\N
167	plugin::content-manager.explorer.update	{}	api::telegram.telegram	{"fields": ["name"]}	["admin::is-creator"]	2023-12-16 21:30:43.886	2023-12-16 21:30:43.886	\N	\N
168	plugin::content-manager.explorer.update	{}	api::theme.theme	{"fields": ["theme", "fonts.media", "fonts.weight", "fonts.style", "fonts.variant"]}	["admin::is-creator"]	2023-12-16 21:30:43.89	2023-12-16 21:30:43.89	\N	\N
169	plugin::content-manager.explorer.update	{}	api::tier.tier	{"fields": ["title", "description", "price", "currency", "type", "period", "features.media", "features.description", "features.additional_media", "features.title", "features.subtitle", "old_price", "buttons.url", "buttons.media", "buttons.description", "buttons.variant", "buttons.additional_media", "buttons.title", "buttons.additional_attributes", "buttons.class_name", "buttons.flyout"]}	["admin::is-creator"]	2023-12-16 21:30:43.894	2023-12-16 21:30:43.894	\N	\N
170	plugin::content-manager.explorer.update	{}	api::topbar.topbar	{"fields": ["title", "uid", "variant", "page_blocks", "layouts", "class_name", "position", "side"]}	["admin::is-creator"]	2023-12-16 21:30:43.898	2023-12-16 21:30:43.898	\N	\N
171	plugin::content-manager.explorer.delete	{}	api::configuration.configuration	{}	["admin::is-creator"]	2023-12-16 21:30:43.901	2023-12-16 21:30:43.901	\N	\N
176	plugin::content-manager.explorer.delete	{}	api::form-request.form-request	{}	["admin::is-creator"]	2023-12-16 21:30:43.928	2023-12-16 21:30:43.928	\N	\N
178	plugin::content-manager.explorer.delete	{}	api::loader.loader	{}	["admin::is-creator"]	2023-12-16 21:30:43.936	2023-12-16 21:30:43.936	\N	\N
183	plugin::content-manager.explorer.delete	{}	api::review.review	{}	["admin::is-creator"]	2023-12-16 21:30:43.957	2023-12-16 21:30:43.957	\N	\N
338	admin::roles.create	{}	\N	{}	[]	2023-12-16 21:30:44.74	2023-12-16 21:30:44.74	\N	\N
188	plugin::content-manager.explorer.delete	{}	api::telegram.telegram	{}	["admin::is-creator"]	2023-12-16 21:30:43.987	2023-12-16 21:30:43.987	\N	\N
189	plugin::content-manager.explorer.delete	{}	api::theme.theme	{}	["admin::is-creator"]	2023-12-16 21:30:43.991	2023-12-16 21:30:43.991	\N	\N
192	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2023-12-16 21:30:44.003	2023-12-16 21:30:44.003	\N	\N
193	plugin::upload.configure-view	{}	\N	{}	[]	2023-12-16 21:30:44.007	2023-12-16 21:30:44.007	\N	\N
194	plugin::upload.assets.create	{}	\N	{}	[]	2023-12-16 21:30:44.011	2023-12-16 21:30:44.011	\N	\N
195	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2023-12-16 21:30:44.018	2023-12-16 21:30:44.018	\N	\N
196	plugin::upload.assets.download	{}	\N	{}	[]	2023-12-16 21:30:44.022	2023-12-16 21:30:44.022	\N	\N
197	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-12-16 21:30:44.025	2023-12-16 21:30:44.025	\N	\N
198	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-12-16 21:30:44.071	2023-12-16 21:30:44.071	\N	\N
199	plugin::content-manager.explorer.create	{}	api::configuration.configuration	{"fields": ["configs.provider", "configs.config"]}	[]	2023-12-16 21:30:44.082	2023-12-16 21:30:44.082	\N	\N
200	plugin::content-manager.explorer.create	{}	api::currency.currency	{"fields": ["title", "unicode", "is_default", "tiers"], "locales": ["en"]}	[]	2023-12-16 21:30:44.091	2023-12-16 21:30:44.091	\N	\N
201	plugin::content-manager.explorer.create	{}	api::flyout.flyout	{"fields": ["variant", "page_blocks", "title", "uid", "class_name"], "locales": ["en"]}	[]	2023-12-16 21:30:44.095	2023-12-16 21:30:44.095	\N	\N
202	plugin::content-manager.explorer.create	{}	api::footer.footer	{"fields": ["title", "uid", "layouts", "page_blocks", "variant", "class_name"], "locales": ["en"]}	[]	2023-12-16 21:30:44.1	2023-12-16 21:30:44.1	\N	\N
203	plugin::content-manager.explorer.create	{}	api::form.form	{"fields": ["inputs.placeholder", "inputs.variant", "inputs.is_required", "inputs.value", "inputs.name", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.label", "inputs.class_name", "inputs.type", "inputs.multiple", "inputs.min", "inputs.max", "inputs.step", "inputs.media", "inputs.additional_media", "inputs.extra_media", "class_name", "additional_attributes", "variant", "button.url", "button.media", "button.description", "button.variant", "button.additional_media", "button.title", "button.additional_attributes", "button.class_name", "button.flyout", "form_requests", "uid", "side_effects.type", "side_effects.recievers.identifier", "side_effects.recievers.admin", "side_effects.recievers.user", "side_effects.provider", "title"], "locales": ["en"]}	[]	2023-12-16 21:30:44.109	2023-12-16 21:30:44.109	\N	\N
204	plugin::content-manager.explorer.create	{}	api::form-request.form-request	{"fields": ["inputs.key", "inputs.value", "inputs.files", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.is_true", "inputs.option.title", "inputs.option.description", "inputs.option.media", "inputs.option.additional_media", "inputs.date_value", "inputs.datetime_value", "inputs.dates.date_value", "inputs.dates.datetime_value", "inputs.dates.time_value", "files", "form"]}	[]	2023-12-16 21:30:44.118	2023-12-16 21:30:44.118	\N	\N
205	plugin::content-manager.explorer.create	{}	api::layout.layout	{"fields": ["title", "uid", "sidebar", "variant", "topbar", "footer", "slide_overs", "modals", "navbar", "class_name", "pages"], "locales": ["en"]}	[]	2023-12-16 21:30:44.125	2023-12-16 21:30:44.125	\N	\N
206	plugin::content-manager.explorer.create	{}	api::loader.loader	{"fields": ["variant", "media", "additional_media", "class_name", "anchor", "title", "subtitle", "description"]}	[]	2023-12-16 21:30:44.131	2023-12-16 21:30:44.131	\N	\N
207	plugin::content-manager.explorer.create	{}	api::metatag.metatag	{"fields": ["title", "description", "script", "gtm_key", "favicon", "pages", "is_default"], "locales": ["en"]}	[]	2023-12-16 21:30:44.136	2023-12-16 21:30:44.136	\N	\N
208	plugin::content-manager.explorer.create	{}	api::modal.modal	{"fields": ["uid", "page_blocks", "dialog_panel_class_name", "variant", "title", "layouts", "class_name"], "locales": ["en"]}	[]	2023-12-16 21:30:44.14	2023-12-16 21:30:44.14	\N	\N
209	plugin::content-manager.explorer.create	{}	api::navbar.navbar	{"fields": ["title", "uid", "page_blocks", "variant", "class_name", "layouts", "position", "side"], "locales": ["en"]}	[]	2023-12-16 21:30:44.144	2023-12-16 21:30:44.144	\N	\N
210	plugin::content-manager.explorer.create	{}	api::page.page	{"fields": ["title", "url", "layout", "page_blocks", "metatag"], "locales": ["en"]}	[]	2023-12-16 21:30:44.148	2023-12-16 21:30:44.148	\N	\N
211	plugin::content-manager.explorer.create	{}	api::review.review	{"fields": ["name", "title", "description", "subtitle", "rating", "media", "additional_media"]}	[]	2023-12-16 21:30:44.152	2023-12-16 21:30:44.152	\N	\N
212	plugin::content-manager.explorer.create	{}	api::robot.robot	{"fields": ["robots"]}	[]	2023-12-16 21:30:44.161	2023-12-16 21:30:44.161	\N	\N
213	plugin::content-manager.explorer.create	{}	api::sidebar.sidebar	{"fields": ["variant", "title", "uid", "page_blocks", "class_name", "layouts", "side"], "locales": ["en"]}	[]	2023-12-16 21:30:44.17	2023-12-16 21:30:44.17	\N	\N
214	plugin::content-manager.explorer.create	{}	api::slide-over.slide-over	{"fields": ["variant", "title", "uid", "class_name", "page_blocks", "layouts"], "locales": ["en"]}	[]	2023-12-16 21:30:44.174	2023-12-16 21:30:44.174	\N	\N
215	plugin::content-manager.explorer.create	{}	api::slider.slider	{"fields": ["variant", "slides.title", "slides.description", "slides.subtitle", "slides.media", "slides.buttons.url", "slides.buttons.media", "slides.buttons.description", "slides.buttons.variant", "slides.buttons.additional_media", "slides.buttons.title", "slides.buttons.additional_attributes", "slides.buttons.class_name", "slides.buttons.flyout", "slides.additional_media", "show_backdrop", "show_full_screen", "show_previews", "class_name", "aspect_ratio_class_name", "title", "uid"], "locales": ["en"]}	[]	2023-12-16 21:30:44.179	2023-12-16 21:30:44.179	\N	\N
216	plugin::content-manager.explorer.create	{}	api::telegram.telegram	{"fields": ["name"]}	[]	2023-12-16 21:30:44.183	2023-12-16 21:30:44.183	\N	\N
217	plugin::content-manager.explorer.create	{}	api::theme.theme	{"fields": ["theme", "fonts.media", "fonts.weight", "fonts.style", "fonts.variant"]}	[]	2023-12-16 21:30:44.187	2023-12-16 21:30:44.187	\N	\N
242	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-12-16 21:30:44.299	2023-12-16 21:30:44.299	\N	\N
339	admin::roles.read	{}	\N	{}	[]	2023-12-16 21:30:44.745	2023-12-16 21:30:44.745	\N	\N
218	plugin::content-manager.explorer.create	{}	api::tier.tier	{"fields": ["title", "description", "price", "currency", "type", "period", "features.media", "features.description", "features.additional_media", "features.title", "features.subtitle", "old_price", "buttons.url", "buttons.media", "buttons.description", "buttons.variant", "buttons.additional_media", "buttons.title", "buttons.additional_attributes", "buttons.class_name", "buttons.flyout"], "locales": ["en"]}	[]	2023-12-16 21:30:44.19	2023-12-16 21:30:44.19	\N	\N
219	plugin::content-manager.explorer.create	{}	api::topbar.topbar	{"fields": ["title", "uid", "variant", "page_blocks", "layouts", "class_name", "position", "side"], "locales": ["en"]}	[]	2023-12-16 21:30:44.195	2023-12-16 21:30:44.195	\N	\N
220	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-12-16 21:30:44.199	2023-12-16 21:30:44.199	\N	\N
221	plugin::content-manager.explorer.read	{}	api::configuration.configuration	{"fields": ["configs.provider", "configs.config"]}	[]	2023-12-16 21:30:44.203	2023-12-16 21:30:44.203	\N	\N
222	plugin::content-manager.explorer.read	{}	api::currency.currency	{"fields": ["title", "unicode", "is_default", "tiers"], "locales": ["en"]}	[]	2023-12-16 21:30:44.207	2023-12-16 21:30:44.207	\N	\N
223	plugin::content-manager.explorer.read	{}	api::flyout.flyout	{"fields": ["variant", "page_blocks", "title", "uid", "class_name"], "locales": ["en"]}	[]	2023-12-16 21:30:44.214	2023-12-16 21:30:44.214	\N	\N
224	plugin::content-manager.explorer.read	{}	api::footer.footer	{"fields": ["title", "uid", "layouts", "page_blocks", "variant", "class_name"], "locales": ["en"]}	[]	2023-12-16 21:30:44.218	2023-12-16 21:30:44.218	\N	\N
225	plugin::content-manager.explorer.read	{}	api::form.form	{"fields": ["inputs.placeholder", "inputs.variant", "inputs.is_required", "inputs.value", "inputs.name", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.label", "inputs.class_name", "inputs.type", "inputs.multiple", "inputs.min", "inputs.max", "inputs.step", "inputs.media", "inputs.additional_media", "inputs.extra_media", "class_name", "additional_attributes", "variant", "button.url", "button.media", "button.description", "button.variant", "button.additional_media", "button.title", "button.additional_attributes", "button.class_name", "button.flyout", "form_requests", "uid", "side_effects.type", "side_effects.recievers.identifier", "side_effects.recievers.admin", "side_effects.recievers.user", "side_effects.provider", "title"], "locales": ["en"]}	[]	2023-12-16 21:30:44.221	2023-12-16 21:30:44.221	\N	\N
226	plugin::content-manager.explorer.read	{}	api::form-request.form-request	{"fields": ["inputs.key", "inputs.value", "inputs.files", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.is_true", "inputs.option.title", "inputs.option.description", "inputs.option.media", "inputs.option.additional_media", "inputs.date_value", "inputs.datetime_value", "inputs.dates.date_value", "inputs.dates.datetime_value", "inputs.dates.time_value", "files", "form"]}	[]	2023-12-16 21:30:44.224	2023-12-16 21:30:44.224	\N	\N
227	plugin::content-manager.explorer.read	{}	api::layout.layout	{"fields": ["title", "uid", "sidebar", "variant", "topbar", "footer", "slide_overs", "modals", "navbar", "class_name", "pages"], "locales": ["en"]}	[]	2023-12-16 21:30:44.228	2023-12-16 21:30:44.228	\N	\N
228	plugin::content-manager.explorer.read	{}	api::loader.loader	{"fields": ["variant", "media", "additional_media", "class_name", "anchor", "title", "subtitle", "description"]}	[]	2023-12-16 21:30:44.232	2023-12-16 21:30:44.232	\N	\N
229	plugin::content-manager.explorer.read	{}	api::metatag.metatag	{"fields": ["title", "description", "script", "gtm_key", "favicon", "pages", "is_default"], "locales": ["en"]}	[]	2023-12-16 21:30:44.235	2023-12-16 21:30:44.235	\N	\N
230	plugin::content-manager.explorer.read	{}	api::modal.modal	{"fields": ["uid", "page_blocks", "dialog_panel_class_name", "variant", "title", "layouts", "class_name"], "locales": ["en"]}	[]	2023-12-16 21:30:44.239	2023-12-16 21:30:44.239	\N	\N
231	plugin::content-manager.explorer.read	{}	api::navbar.navbar	{"fields": ["title", "uid", "page_blocks", "variant", "class_name", "layouts", "position", "side"], "locales": ["en"]}	[]	2023-12-16 21:30:44.242	2023-12-16 21:30:44.242	\N	\N
232	plugin::content-manager.explorer.read	{}	api::page.page	{"fields": ["title", "url", "layout", "page_blocks", "metatag"], "locales": ["en"]}	[]	2023-12-16 21:30:44.246	2023-12-16 21:30:44.246	\N	\N
233	plugin::content-manager.explorer.read	{}	api::review.review	{"fields": ["name", "title", "description", "subtitle", "rating", "media", "additional_media"]}	[]	2023-12-16 21:30:44.249	2023-12-16 21:30:44.249	\N	\N
234	plugin::content-manager.explorer.read	{}	api::robot.robot	{"fields": ["robots"]}	[]	2023-12-16 21:30:44.254	2023-12-16 21:30:44.254	\N	\N
235	plugin::content-manager.explorer.read	{}	api::sidebar.sidebar	{"fields": ["variant", "title", "uid", "page_blocks", "class_name", "layouts", "side"], "locales": ["en"]}	[]	2023-12-16 21:30:44.262	2023-12-16 21:30:44.262	\N	\N
236	plugin::content-manager.explorer.read	{}	api::slide-over.slide-over	{"fields": ["variant", "title", "uid", "class_name", "page_blocks", "layouts"], "locales": ["en"]}	[]	2023-12-16 21:30:44.27	2023-12-16 21:30:44.27	\N	\N
237	plugin::content-manager.explorer.read	{}	api::slider.slider	{"fields": ["variant", "slides.title", "slides.description", "slides.subtitle", "slides.media", "slides.buttons.url", "slides.buttons.media", "slides.buttons.description", "slides.buttons.variant", "slides.buttons.additional_media", "slides.buttons.title", "slides.buttons.additional_attributes", "slides.buttons.class_name", "slides.buttons.flyout", "slides.additional_media", "show_backdrop", "show_full_screen", "show_previews", "class_name", "aspect_ratio_class_name", "title", "uid"], "locales": ["en"]}	[]	2023-12-16 21:30:44.273	2023-12-16 21:30:44.273	\N	\N
238	plugin::content-manager.explorer.read	{}	api::telegram.telegram	{"fields": ["name"]}	[]	2023-12-16 21:30:44.277	2023-12-16 21:30:44.277	\N	\N
239	plugin::content-manager.explorer.read	{}	api::theme.theme	{"fields": ["theme", "fonts.media", "fonts.weight", "fonts.style", "fonts.variant"]}	[]	2023-12-16 21:30:44.281	2023-12-16 21:30:44.281	\N	\N
240	plugin::content-manager.explorer.read	{}	api::tier.tier	{"fields": ["title", "description", "price", "currency", "type", "period", "features.media", "features.description", "features.additional_media", "features.title", "features.subtitle", "old_price", "buttons.url", "buttons.media", "buttons.description", "buttons.variant", "buttons.additional_media", "buttons.title", "buttons.additional_attributes", "buttons.class_name", "buttons.flyout"], "locales": ["en"]}	[]	2023-12-16 21:30:44.285	2023-12-16 21:30:44.285	\N	\N
241	plugin::content-manager.explorer.read	{}	api::topbar.topbar	{"fields": ["title", "uid", "variant", "page_blocks", "layouts", "class_name", "position", "side"], "locales": ["en"]}	[]	2023-12-16 21:30:44.296	2023-12-16 21:30:44.296	\N	\N
272	plugin::content-manager.explorer.delete	{}	api::loader.loader	{}	[]	2023-12-16 21:30:44.436	2023-12-16 21:30:44.436	\N	\N
243	plugin::content-manager.explorer.update	{}	api::configuration.configuration	{"fields": ["configs.provider", "configs.config"]}	[]	2023-12-16 21:30:44.303	2023-12-16 21:30:44.303	\N	\N
244	plugin::content-manager.explorer.update	{}	api::currency.currency	{"fields": ["title", "unicode", "is_default", "tiers"], "locales": ["en"]}	[]	2023-12-16 21:30:44.307	2023-12-16 21:30:44.307	\N	\N
245	plugin::content-manager.explorer.update	{}	api::flyout.flyout	{"fields": ["variant", "page_blocks", "title", "uid", "class_name"], "locales": ["en"]}	[]	2023-12-16 21:30:44.31	2023-12-16 21:30:44.31	\N	\N
246	plugin::content-manager.explorer.update	{}	api::footer.footer	{"fields": ["title", "uid", "layouts", "page_blocks", "variant", "class_name"], "locales": ["en"]}	[]	2023-12-16 21:30:44.314	2023-12-16 21:30:44.314	\N	\N
247	plugin::content-manager.explorer.update	{}	api::form.form	{"fields": ["inputs.placeholder", "inputs.variant", "inputs.is_required", "inputs.value", "inputs.name", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.label", "inputs.class_name", "inputs.type", "inputs.multiple", "inputs.min", "inputs.max", "inputs.step", "inputs.media", "inputs.additional_media", "inputs.extra_media", "class_name", "additional_attributes", "variant", "button.url", "button.media", "button.description", "button.variant", "button.additional_media", "button.title", "button.additional_attributes", "button.class_name", "button.flyout", "form_requests", "uid", "side_effects.type", "side_effects.recievers.identifier", "side_effects.recievers.admin", "side_effects.recievers.user", "side_effects.provider", "title"], "locales": ["en"]}	[]	2023-12-16 21:30:44.318	2023-12-16 21:30:44.318	\N	\N
248	plugin::content-manager.explorer.update	{}	api::form-request.form-request	{"fields": ["inputs.key", "inputs.value", "inputs.files", "inputs.options.title", "inputs.options.description", "inputs.options.media", "inputs.options.additional_media", "inputs.is_true", "inputs.option.title", "inputs.option.description", "inputs.option.media", "inputs.option.additional_media", "inputs.date_value", "inputs.datetime_value", "inputs.dates.date_value", "inputs.dates.datetime_value", "inputs.dates.time_value", "files", "form"]}	[]	2023-12-16 21:30:44.321	2023-12-16 21:30:44.321	\N	\N
249	plugin::content-manager.explorer.update	{}	api::layout.layout	{"fields": ["title", "uid", "sidebar", "variant", "topbar", "footer", "slide_overs", "modals", "navbar", "class_name", "pages"], "locales": ["en"]}	[]	2023-12-16 21:30:44.325	2023-12-16 21:30:44.325	\N	\N
250	plugin::content-manager.explorer.update	{}	api::loader.loader	{"fields": ["variant", "media", "additional_media", "class_name", "anchor", "title", "subtitle", "description"]}	[]	2023-12-16 21:30:44.328	2023-12-16 21:30:44.328	\N	\N
251	plugin::content-manager.explorer.update	{}	api::metatag.metatag	{"fields": ["title", "description", "script", "gtm_key", "favicon", "pages", "is_default"], "locales": ["en"]}	[]	2023-12-16 21:30:44.331	2023-12-16 21:30:44.331	\N	\N
252	plugin::content-manager.explorer.update	{}	api::modal.modal	{"fields": ["uid", "page_blocks", "dialog_panel_class_name", "variant", "title", "layouts", "class_name"], "locales": ["en"]}	[]	2023-12-16 21:30:44.335	2023-12-16 21:30:44.335	\N	\N
253	plugin::content-manager.explorer.update	{}	api::navbar.navbar	{"fields": ["title", "uid", "page_blocks", "variant", "class_name", "layouts", "position", "side"], "locales": ["en"]}	[]	2023-12-16 21:30:44.339	2023-12-16 21:30:44.339	\N	\N
254	plugin::content-manager.explorer.update	{}	api::page.page	{"fields": ["title", "url", "layout", "page_blocks", "metatag"], "locales": ["en"]}	[]	2023-12-16 21:30:44.347	2023-12-16 21:30:44.347	\N	\N
255	plugin::content-manager.explorer.update	{}	api::review.review	{"fields": ["name", "title", "description", "subtitle", "rating", "media", "additional_media"]}	[]	2023-12-16 21:30:44.355	2023-12-16 21:30:44.355	\N	\N
256	plugin::content-manager.explorer.update	{}	api::robot.robot	{"fields": ["robots"]}	[]	2023-12-16 21:30:44.358	2023-12-16 21:30:44.358	\N	\N
257	plugin::content-manager.explorer.update	{}	api::sidebar.sidebar	{"fields": ["variant", "title", "uid", "page_blocks", "class_name", "layouts", "side"], "locales": ["en"]}	[]	2023-12-16 21:30:44.363	2023-12-16 21:30:44.363	\N	\N
258	plugin::content-manager.explorer.update	{}	api::slide-over.slide-over	{"fields": ["variant", "title", "uid", "class_name", "page_blocks", "layouts"], "locales": ["en"]}	[]	2023-12-16 21:30:44.366	2023-12-16 21:30:44.366	\N	\N
259	plugin::content-manager.explorer.update	{}	api::slider.slider	{"fields": ["variant", "slides.title", "slides.description", "slides.subtitle", "slides.media", "slides.buttons.url", "slides.buttons.media", "slides.buttons.description", "slides.buttons.variant", "slides.buttons.additional_media", "slides.buttons.title", "slides.buttons.additional_attributes", "slides.buttons.class_name", "slides.buttons.flyout", "slides.additional_media", "show_backdrop", "show_full_screen", "show_previews", "class_name", "aspect_ratio_class_name", "title", "uid"], "locales": ["en"]}	[]	2023-12-16 21:30:44.37	2023-12-16 21:30:44.37	\N	\N
260	plugin::content-manager.explorer.update	{}	api::telegram.telegram	{"fields": ["name"]}	[]	2023-12-16 21:30:44.373	2023-12-16 21:30:44.373	\N	\N
261	plugin::content-manager.explorer.update	{}	api::theme.theme	{"fields": ["theme", "fonts.media", "fonts.weight", "fonts.style", "fonts.variant"]}	[]	2023-12-16 21:30:44.377	2023-12-16 21:30:44.377	\N	\N
262	plugin::content-manager.explorer.update	{}	api::tier.tier	{"fields": ["title", "description", "price", "currency", "type", "period", "features.media", "features.description", "features.additional_media", "features.title", "features.subtitle", "old_price", "buttons.url", "buttons.media", "buttons.description", "buttons.variant", "buttons.additional_media", "buttons.title", "buttons.additional_attributes", "buttons.class_name", "buttons.flyout"], "locales": ["en"]}	[]	2023-12-16 21:30:44.382	2023-12-16 21:30:44.382	\N	\N
263	plugin::content-manager.explorer.update	{}	api::topbar.topbar	{"fields": ["title", "uid", "variant", "page_blocks", "layouts", "class_name", "position", "side"], "locales": ["en"]}	[]	2023-12-16 21:30:44.388	2023-12-16 21:30:44.388	\N	\N
264	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2023-12-16 21:30:44.396	2023-12-16 21:30:44.396	\N	\N
265	plugin::content-manager.explorer.delete	{}	api::configuration.configuration	{}	[]	2023-12-16 21:30:44.404	2023-12-16 21:30:44.404	\N	\N
266	plugin::content-manager.explorer.delete	{}	api::currency.currency	{"locales": ["en"]}	[]	2023-12-16 21:30:44.413	2023-12-16 21:30:44.413	\N	\N
267	plugin::content-manager.explorer.delete	{}	api::flyout.flyout	{"locales": ["en"]}	[]	2023-12-16 21:30:44.417	2023-12-16 21:30:44.417	\N	\N
268	plugin::content-manager.explorer.delete	{}	api::footer.footer	{"locales": ["en"]}	[]	2023-12-16 21:30:44.42	2023-12-16 21:30:44.42	\N	\N
269	plugin::content-manager.explorer.delete	{}	api::form.form	{"locales": ["en"]}	[]	2023-12-16 21:30:44.424	2023-12-16 21:30:44.424	\N	\N
270	plugin::content-manager.explorer.delete	{}	api::form-request.form-request	{}	[]	2023-12-16 21:30:44.428	2023-12-16 21:30:44.428	\N	\N
271	plugin::content-manager.explorer.delete	{}	api::layout.layout	{"locales": ["en"]}	[]	2023-12-16 21:30:44.432	2023-12-16 21:30:44.432	\N	\N
273	plugin::content-manager.explorer.delete	{}	api::metatag.metatag	{"locales": ["en"]}	[]	2023-12-16 21:30:44.439	2023-12-16 21:30:44.439	\N	\N
274	plugin::content-manager.explorer.delete	{}	api::modal.modal	{"locales": ["en"]}	[]	2023-12-16 21:30:44.442	2023-12-16 21:30:44.442	\N	\N
275	plugin::content-manager.explorer.delete	{}	api::navbar.navbar	{"locales": ["en"]}	[]	2023-12-16 21:30:44.446	2023-12-16 21:30:44.446	\N	\N
276	plugin::content-manager.explorer.delete	{}	api::page.page	{"locales": ["en"]}	[]	2023-12-16 21:30:44.454	2023-12-16 21:30:44.454	\N	\N
277	plugin::content-manager.explorer.delete	{}	api::review.review	{}	[]	2023-12-16 21:30:44.464	2023-12-16 21:30:44.464	\N	\N
278	plugin::content-manager.explorer.delete	{}	api::robot.robot	{}	[]	2023-12-16 21:30:44.469	2023-12-16 21:30:44.469	\N	\N
279	plugin::content-manager.explorer.delete	{}	api::sidebar.sidebar	{"locales": ["en"]}	[]	2023-12-16 21:30:44.472	2023-12-16 21:30:44.472	\N	\N
280	plugin::content-manager.explorer.delete	{}	api::slide-over.slide-over	{"locales": ["en"]}	[]	2023-12-16 21:30:44.48	2023-12-16 21:30:44.48	\N	\N
281	plugin::content-manager.explorer.delete	{}	api::slider.slider	{"locales": ["en"]}	[]	2023-12-16 21:30:44.485	2023-12-16 21:30:44.485	\N	\N
282	plugin::content-manager.explorer.delete	{}	api::telegram.telegram	{}	[]	2023-12-16 21:30:44.492	2023-12-16 21:30:44.492	\N	\N
283	plugin::content-manager.explorer.delete	{}	api::theme.theme	{}	[]	2023-12-16 21:30:44.499	2023-12-16 21:30:44.499	\N	\N
284	plugin::content-manager.explorer.delete	{}	api::tier.tier	{"locales": ["en"]}	[]	2023-12-16 21:30:44.502	2023-12-16 21:30:44.502	\N	\N
285	plugin::content-manager.explorer.delete	{}	api::topbar.topbar	{"locales": ["en"]}	[]	2023-12-16 21:30:44.506	2023-12-16 21:30:44.506	\N	\N
286	plugin::content-manager.explorer.publish	{}	api::currency.currency	{"locales": ["en"]}	[]	2023-12-16 21:30:44.51	2023-12-16 21:30:44.51	\N	\N
287	plugin::content-manager.explorer.publish	{}	api::flyout.flyout	{"locales": ["en"]}	[]	2023-12-16 21:30:44.513	2023-12-16 21:30:44.513	\N	\N
288	plugin::content-manager.explorer.publish	{}	api::footer.footer	{"locales": ["en"]}	[]	2023-12-16 21:30:44.517	2023-12-16 21:30:44.517	\N	\N
289	plugin::content-manager.explorer.publish	{}	api::form.form	{"locales": ["en"]}	[]	2023-12-16 21:30:44.522	2023-12-16 21:30:44.522	\N	\N
290	plugin::content-manager.explorer.publish	{}	api::layout.layout	{"locales": ["en"]}	[]	2023-12-16 21:30:44.525	2023-12-16 21:30:44.525	\N	\N
291	plugin::content-manager.explorer.publish	{}	api::loader.loader	{}	[]	2023-12-16 21:30:44.528	2023-12-16 21:30:44.528	\N	\N
292	plugin::content-manager.explorer.publish	{}	api::metatag.metatag	{"locales": ["en"]}	[]	2023-12-16 21:30:44.532	2023-12-16 21:30:44.532	\N	\N
293	plugin::content-manager.explorer.publish	{}	api::modal.modal	{"locales": ["en"]}	[]	2023-12-16 21:30:44.535	2023-12-16 21:30:44.535	\N	\N
294	plugin::content-manager.explorer.publish	{}	api::navbar.navbar	{"locales": ["en"]}	[]	2023-12-16 21:30:44.541	2023-12-16 21:30:44.541	\N	\N
295	plugin::content-manager.explorer.publish	{}	api::page.page	{"locales": ["en"]}	[]	2023-12-16 21:30:44.547	2023-12-16 21:30:44.547	\N	\N
296	plugin::content-manager.explorer.publish	{}	api::review.review	{}	[]	2023-12-16 21:30:44.551	2023-12-16 21:30:44.551	\N	\N
297	plugin::content-manager.explorer.publish	{}	api::sidebar.sidebar	{"locales": ["en"]}	[]	2023-12-16 21:30:44.554	2023-12-16 21:30:44.554	\N	\N
298	plugin::content-manager.explorer.publish	{}	api::slide-over.slide-over	{"locales": ["en"]}	[]	2023-12-16 21:30:44.558	2023-12-16 21:30:44.558	\N	\N
299	plugin::content-manager.explorer.publish	{}	api::slider.slider	{"locales": ["en"]}	[]	2023-12-16 21:30:44.563	2023-12-16 21:30:44.563	\N	\N
300	plugin::content-manager.explorer.publish	{}	api::theme.theme	{}	[]	2023-12-16 21:30:44.568	2023-12-16 21:30:44.568	\N	\N
301	plugin::content-manager.explorer.publish	{}	api::tier.tier	{"locales": ["en"]}	[]	2023-12-16 21:30:44.572	2023-12-16 21:30:44.572	\N	\N
302	plugin::content-manager.explorer.publish	{}	api::topbar.topbar	{"locales": ["en"]}	[]	2023-12-16 21:30:44.576	2023-12-16 21:30:44.576	\N	\N
303	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2023-12-16 21:30:44.58	2023-12-16 21:30:44.58	\N	\N
304	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2023-12-16 21:30:44.584	2023-12-16 21:30:44.584	\N	\N
305	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2023-12-16 21:30:44.588	2023-12-16 21:30:44.588	\N	\N
306	plugin::content-type-builder.read	{}	\N	{}	[]	2023-12-16 21:30:44.591	2023-12-16 21:30:44.591	\N	\N
307	plugin::email.settings.read	{}	\N	{}	[]	2023-12-16 21:30:44.595	2023-12-16 21:30:44.595	\N	\N
308	plugin::upload.read	{}	\N	{}	[]	2023-12-16 21:30:44.598	2023-12-16 21:30:44.598	\N	\N
309	plugin::upload.assets.create	{}	\N	{}	[]	2023-12-16 21:30:44.602	2023-12-16 21:30:44.602	\N	\N
310	plugin::upload.assets.update	{}	\N	{}	[]	2023-12-16 21:30:44.605	2023-12-16 21:30:44.605	\N	\N
311	plugin::upload.assets.download	{}	\N	{}	[]	2023-12-16 21:30:44.608	2023-12-16 21:30:44.608	\N	\N
312	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-12-16 21:30:44.615	2023-12-16 21:30:44.615	\N	\N
313	plugin::upload.configure-view	{}	\N	{}	[]	2023-12-16 21:30:44.619	2023-12-16 21:30:44.619	\N	\N
314	plugin::upload.settings.read	{}	\N	{}	[]	2023-12-16 21:30:44.622	2023-12-16 21:30:44.622	\N	\N
315	plugin::i18n.locale.create	{}	\N	{}	[]	2023-12-16 21:30:44.625	2023-12-16 21:30:44.625	\N	\N
316	plugin::i18n.locale.read	{}	\N	{}	[]	2023-12-16 21:30:44.629	2023-12-16 21:30:44.629	\N	\N
317	plugin::i18n.locale.update	{}	\N	{}	[]	2023-12-16 21:30:44.635	2023-12-16 21:30:44.635	\N	\N
318	plugin::i18n.locale.delete	{}	\N	{}	[]	2023-12-16 21:30:44.639	2023-12-16 21:30:44.639	\N	\N
319	plugin::users-permissions.roles.create	{}	\N	{}	[]	2023-12-16 21:30:44.649	2023-12-16 21:30:44.649	\N	\N
320	plugin::users-permissions.roles.read	{}	\N	{}	[]	2023-12-16 21:30:44.657	2023-12-16 21:30:44.657	\N	\N
321	plugin::users-permissions.roles.update	{}	\N	{}	[]	2023-12-16 21:30:44.661	2023-12-16 21:30:44.661	\N	\N
322	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2023-12-16 21:30:44.665	2023-12-16 21:30:44.665	\N	\N
323	plugin::users-permissions.providers.read	{}	\N	{}	[]	2023-12-16 21:30:44.669	2023-12-16 21:30:44.669	\N	\N
324	plugin::users-permissions.providers.update	{}	\N	{}	[]	2023-12-16 21:30:44.672	2023-12-16 21:30:44.672	\N	\N
325	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2023-12-16 21:30:44.675	2023-12-16 21:30:44.675	\N	\N
326	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2023-12-16 21:30:44.68	2023-12-16 21:30:44.68	\N	\N
327	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2023-12-16 21:30:44.683	2023-12-16 21:30:44.683	\N	\N
328	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2023-12-16 21:30:44.686	2023-12-16 21:30:44.686	\N	\N
329	admin::marketplace.read	{}	\N	{}	[]	2023-12-16 21:30:44.69	2023-12-16 21:30:44.69	\N	\N
330	admin::webhooks.create	{}	\N	{}	[]	2023-12-16 21:30:44.696	2023-12-16 21:30:44.696	\N	\N
331	admin::webhooks.read	{}	\N	{}	[]	2023-12-16 21:30:44.7	2023-12-16 21:30:44.7	\N	\N
332	admin::webhooks.update	{}	\N	{}	[]	2023-12-16 21:30:44.71	2023-12-16 21:30:44.71	\N	\N
333	admin::webhooks.delete	{}	\N	{}	[]	2023-12-16 21:30:44.714	2023-12-16 21:30:44.714	\N	\N
334	admin::users.create	{}	\N	{}	[]	2023-12-16 21:30:44.721	2023-12-16 21:30:44.721	\N	\N
340	admin::roles.update	{}	\N	{}	[]	2023-12-16 21:30:44.749	2023-12-16 21:30:44.749	\N	\N
341	admin::roles.delete	{}	\N	{}	[]	2023-12-16 21:30:44.753	2023-12-16 21:30:44.753	\N	\N
342	admin::api-tokens.access	{}	\N	{}	[]	2023-12-16 21:30:44.756	2023-12-16 21:30:44.756	\N	\N
343	admin::api-tokens.create	{}	\N	{}	[]	2023-12-16 21:30:44.76	2023-12-16 21:30:44.76	\N	\N
344	admin::api-tokens.read	{}	\N	{}	[]	2023-12-16 21:30:44.764	2023-12-16 21:30:44.764	\N	\N
345	admin::api-tokens.update	{}	\N	{}	[]	2023-12-16 21:30:44.772	2023-12-16 21:30:44.772	\N	\N
346	admin::api-tokens.regenerate	{}	\N	{}	[]	2023-12-16 21:30:44.78	2023-12-16 21:30:44.78	\N	\N
347	admin::api-tokens.delete	{}	\N	{}	[]	2023-12-16 21:30:44.784	2023-12-16 21:30:44.784	\N	\N
348	admin::project-settings.update	{}	\N	{}	[]	2023-12-16 21:30:44.787	2023-12-16 21:30:44.787	\N	\N
349	admin::project-settings.read	{}	\N	{}	[]	2023-12-16 21:30:44.794	2023-12-16 21:30:44.794	\N	\N
350	admin::transfer.tokens.access	{}	\N	{}	[]	2023-12-16 21:30:44.802	2023-12-16 21:30:44.802	\N	\N
351	admin::transfer.tokens.create	{}	\N	{}	[]	2023-12-16 21:30:44.809	2023-12-16 21:30:44.809	\N	\N
352	admin::transfer.tokens.read	{}	\N	{}	[]	2023-12-16 21:30:44.816	2023-12-16 21:30:44.816	\N	\N
353	admin::transfer.tokens.update	{}	\N	{}	[]	2023-12-16 21:30:44.82	2023-12-16 21:30:44.82	\N	\N
354	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2023-12-16 21:30:44.824	2023-12-16 21:30:44.824	\N	\N
355	admin::transfer.tokens.delete	{}	\N	{}	[]	2023-12-16 21:30:44.828	2023-12-16 21:30:44.828	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	2	32
33	33	2	33
34	34	2	34
35	35	2	35
36	36	2	36
37	37	2	37
38	38	2	38
39	39	2	39
40	40	2	40
41	41	2	41
42	42	2	42
43	43	2	43
44	44	2	44
45	45	2	45
46	46	2	46
47	47	2	47
48	48	2	48
49	49	2	49
50	50	2	50
51	51	2	51
52	52	2	52
53	53	2	53
54	54	2	54
55	55	2	55
56	56	2	56
57	57	2	57
58	58	2	58
59	59	2	59
60	60	2	60
61	61	2	61
62	62	2	62
63	63	2	63
64	64	2	64
69	69	2	69
71	71	2	71
76	76	2	76
77	77	2	77
81	81	2	81
82	82	2	82
90	90	2	90
95	95	2	95
99	99	2	99
102	102	2	102
103	103	2	103
104	104	2	104
105	105	2	105
106	106	2	106
107	107	2	107
108	108	3	1
109	109	3	2
110	110	3	3
111	111	3	4
112	112	3	5
113	113	3	6
114	114	3	7
115	115	3	8
116	116	3	9
117	117	3	10
118	118	3	11
119	119	3	12
120	120	3	13
121	121	3	14
122	122	3	15
123	123	3	16
124	124	3	17
125	125	3	18
126	126	3	19
127	127	3	20
128	128	3	21
129	129	3	22
130	130	3	23
131	131	3	24
132	132	3	25
133	133	3	26
134	134	3	27
135	135	3	28
136	136	3	29
137	137	3	30
138	138	3	31
139	139	3	32
140	140	3	33
141	141	3	34
142	142	3	35
143	143	3	36
144	144	3	37
145	145	3	38
146	146	3	39
147	147	3	40
148	148	3	41
149	149	3	42
150	150	3	43
151	151	3	44
152	152	3	45
153	153	3	46
154	154	3	47
155	155	3	48
156	156	3	49
157	157	3	50
158	158	3	51
159	159	3	52
160	160	3	53
161	161	3	54
162	162	3	55
163	163	3	56
164	164	3	57
165	165	3	58
166	166	3	59
167	167	3	60
168	168	3	61
169	169	3	62
170	170	3	63
171	171	3	64
176	176	3	69
178	178	3	71
183	183	3	76
184	184	3	77
188	188	3	81
189	189	3	82
192	192	3	85
193	193	3	86
194	194	3	87
195	195	3	88
196	196	3	89
197	197	3	90
198	198	1	1
199	199	1	2
200	200	1	3
201	201	1	4
202	202	1	5
203	203	1	6
204	204	1	7
205	205	1	8
206	206	1	9
207	207	1	10
208	208	1	11
209	209	1	12
210	210	1	13
211	211	1	14
212	212	1	15
213	213	1	16
214	214	1	17
215	215	1	18
216	216	1	19
217	217	1	20
218	218	1	21
219	219	1	22
220	220	1	23
221	221	1	24
222	222	1	25
223	223	1	26
224	224	1	27
225	225	1	28
226	226	1	29
227	227	1	30
228	228	1	31
229	229	1	32
230	230	1	33
231	231	1	34
232	232	1	35
233	233	1	36
234	234	1	37
235	235	1	38
236	236	1	39
237	237	1	40
238	238	1	41
239	239	1	42
240	240	1	43
241	241	1	44
242	242	1	45
243	243	1	46
244	244	1	47
245	245	1	48
246	246	1	49
247	247	1	50
248	248	1	51
249	249	1	52
250	250	1	53
251	251	1	54
252	252	1	55
253	253	1	56
254	254	1	57
255	255	1	58
256	256	1	59
257	257	1	60
258	258	1	61
259	259	1	62
260	260	1	63
261	261	1	64
262	262	1	65
263	263	1	66
264	264	1	67
265	265	1	68
266	266	1	69
267	267	1	70
268	268	1	71
269	269	1	72
270	270	1	73
271	271	1	74
272	272	1	75
273	273	1	76
274	274	1	77
275	275	1	78
276	276	1	79
277	277	1	80
278	278	1	81
279	279	1	82
280	280	1	83
281	281	1	84
282	282	1	85
283	283	1	86
284	284	1	87
285	285	1	88
286	286	1	89
287	287	1	90
288	288	1	91
289	289	1	92
290	290	1	93
291	291	1	94
292	292	1	95
293	293	1	96
294	294	1	97
295	295	1	98
296	296	1	99
297	297	1	100
298	298	1	101
299	299	1	102
300	300	1	103
301	301	1	104
302	302	1	105
303	303	1	106
304	304	1	107
305	305	1	108
306	306	1	109
307	307	1	110
308	308	1	111
309	309	1	112
310	310	1	113
311	311	1	114
312	312	1	115
313	313	1	116
314	314	1	117
315	315	1	118
316	316	1	119
317	317	1	120
318	318	1	121
319	319	1	122
320	320	1	123
321	321	1	124
322	322	1	125
323	323	1	126
324	324	1	127
325	325	1	128
326	326	1	129
327	327	1	130
328	328	1	131
329	329	1	132
330	330	1	133
331	331	1	134
332	332	1	135
333	333	1	136
334	334	1	137
335	335	1	138
336	336	1	139
337	337	1	140
338	338	1	141
339	339	1	142
340	340	1	143
341	341	1	144
342	342	1	145
343	343	1	146
344	344	1	147
345	345	1	148
346	346	1	149
347	347	1	150
348	348	1	151
349	349	1	152
350	350	1	153
351	351	1	154
352	352	1	155
353	353	1	156
354	354	1	157
355	355	1	158
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-12-16 21:30:43.019	2023-12-16 21:30:43.019	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-12-16 21:30:43.026	2023-12-16 21:30:43.026	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2023-12-16 21:30:43.03	2023-12-16 21:30:43.03	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	rogwild	design	\N	rogwild.design@gmail.com	$2a$10$2su4QoDq5TZ7kDpUUJyPz.XYY5lpf1SNgOBjxJ872Q0LVzpS41rKW	\N	\N	t	f	\N	2023-12-16 21:31:11.847	2023-12-16 21:31:11.847	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: components_elements_buttons; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_buttons (id, url, description, variant, title, additional_attributes, class_name) FROM stdin;
\.


--
-- Data for Name: components_elements_buttons_arrays; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_buttons_arrays (id, title, class_name, variant, description, url, additional_attributes) FROM stdin;
\.


--
-- Data for Name: components_elements_buttons_arrays_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_buttons_arrays_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_elements_buttons_flyout_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_buttons_flyout_links (id, button_id, flyout_id) FROM stdin;
\.


--
-- Data for Name: components_elements_date_values; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_date_values (id, date_value, datetime_value, time_value) FROM stdin;
\.


--
-- Data for Name: components_elements_faqs; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_faqs (id, description, title) FROM stdin;
\.


--
-- Data for Name: components_elements_features; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_features (id, description, title, subtitle) FROM stdin;
\.


--
-- Data for Name: components_elements_fonts; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_fonts (id, weight, style, variant) FROM stdin;
\.


--
-- Data for Name: components_elements_input_options; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_input_options (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_elements_inputs; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_inputs (id, placeholder, variant, is_required, value, name, label, class_name, type, multiple, min, max, step) FROM stdin;
\.


--
-- Data for Name: components_elements_inputs_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_inputs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_elements_logotypes; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_logotypes (id, title, url) FROM stdin;
8	\N	\N
9	\N	\N
10	\N	\N
\.


--
-- Data for Name: components_elements_recievers; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_recievers (id, identifier) FROM stdin;
\.


--
-- Data for Name: components_elements_recievers_admin_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_recievers_admin_links (id, reciever_id, user_id) FROM stdin;
\.


--
-- Data for Name: components_elements_recievers_user_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_recievers_user_links (id, reciever_id, user_id) FROM stdin;
\.


--
-- Data for Name: components_elements_request_inputs; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_request_inputs (id, key, value, is_true, date_value, datetime_value) FROM stdin;
\.


--
-- Data for Name: components_elements_request_inputs_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_request_inputs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_elements_slides; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_slides (id, title, description, subtitle) FROM stdin;
\.


--
-- Data for Name: components_elements_slides_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_elements_slides_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_functions_configs; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_functions_configs (id, provider, config) FROM stdin;
\.


--
-- Data for Name: components_functions_form_side_effects; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_functions_form_side_effects (id, type, provider) FROM stdin;
\.


--
-- Data for Name: components_functions_form_side_effects_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_functions_form_side_effects_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_alert_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_alert_blocks (id, title, subtitle, description, class_name, anchor, variant) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_alert_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_alert_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_contact_section_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_contact_section_blocks (id, title, subtitle, description, anchor, class_name, variant) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_contact_section_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_contact_section_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_contact_section_blocks_form_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_contact_section_blocks_form_links (id, contact_section_block_id, form_id) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_cta_section_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_cta_section_blocks (id, variant, anchor, class_name, title, description, subtitle) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_cta_section_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_cta_section_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_faqs_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_faqs_blocks (id, title, description, variant, class_name, anchor, subtitle) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_faqs_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_faqs_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_features_section_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_features_section_blocks (id, title, description, subtitle, variant, anchor, class_name) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_features_section_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_features_section_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_footer_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_footer_blocks (id, copyrights, description, variant, class_name) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_footer_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_footer_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_header_section_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_header_section_blocks (id, title, description, variant, subtitle, anchor, class_name) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_hero_section_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_hero_section_blocks (id, title, description, variant, anchor, class_name) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_hero_section_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_hero_section_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_incentives_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_incentives_blocks (id, title, description, anchor, class_name, variant, subtitle) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_incentives_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_incentives_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_logotypes_cloud_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_logotypes_cloud_blocks (id, variant, title, description, anchor, class_name, subtitle) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_logotypes_cloud_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_logotypes_cloud_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_navbar_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_navbar_blocks (id, variant, description, class_name) FROM stdin;
8	simple-links-on-left	\N	\N
9	simple-links-on-left	\N	\N
10	simple-links-on-left	\N	\N
\.


--
-- Data for Name: components_page_blocks_navbar_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_navbar_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
10	8	8	elements.logotype	logotype	\N
11	9	9	elements.logotype	logotype	\N
12	10	10	elements.logotype	logotype	\N
\.


--
-- Data for Name: components_page_blocks_not_found_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_not_found_blocks (id, variant, title, description, class_name, anchor, subtitle) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_not_found_blocks_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_not_found_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_page_blocks_pricing_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_pricing_blocks (id, variant, title, subtitle, description, class_name, anchor) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_pricing_blocks_tiers_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_pricing_blocks_tiers_links (id, pricing_block_id, tier_id, tier_order) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_reviews_list_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_reviews_list_blocks (id, variant, show_all, anchor, class_name, title, subtitle, description) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_reviews_list_blocks_reviews_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_reviews_list_blocks_reviews_links (id, reviews_list_block_id, review_id, review_order) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_reviews_table_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_reviews_table_blocks (id, variant, anchor, class_name) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_slider_blocks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_slider_blocks (id, variant, anchor, class_name, title, description, subtitle) FROM stdin;
\.


--
-- Data for Name: components_page_blocks_slider_blocks_slider_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.components_page_blocks_slider_blocks_slider_links (id, slider_block_id, slider_id) FROM stdin;
\.


--
-- Data for Name: configurations; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.configurations (id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: configurations_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.configurations_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: currencies; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.currencies (id, title, unicode, is_default, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: currencies_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.currencies_localizations_links (id, currency_id, inv_currency_id, currency_order) FROM stdin;
\.


--
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.email_templates (id, template_reference_id, design, name, subject, body_html, body_text, enabled, tags, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	pexels-rubaitul-azad-13791405.jpg	\N	\N	1280	1707	{"large": {"ext": ".jpg", "url": "/uploads/large_pexels_rubaitul_azad_13791405_400d54aa75.jpg", "hash": "large_pexels_rubaitul_azad_13791405_400d54aa75", "mime": "image/jpeg", "name": "large_pexels-rubaitul-azad-13791405.jpg", "path": null, "size": 192.59, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_pexels_rubaitul_azad_13791405_400d54aa75.jpg", "hash": "small_pexels_rubaitul_azad_13791405_400d54aa75", "mime": "image/jpeg", "name": "small_pexels-rubaitul-azad-13791405.jpg", "path": null, "size": 50.98, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_pexels_rubaitul_azad_13791405_400d54aa75.jpg", "hash": "medium_pexels_rubaitul_azad_13791405_400d54aa75", "mime": "image/jpeg", "name": "medium_pexels-rubaitul-azad-13791405.jpg", "path": null, "size": 112.75, "width": 562, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_pexels_rubaitul_azad_13791405_400d54aa75.jpg", "hash": "thumbnail_pexels_rubaitul_azad_13791405_400d54aa75", "mime": "image/jpeg", "name": "thumbnail_pexels-rubaitul-azad-13791405.jpg", "path": null, "size": 5.92, "width": 117, "height": 156}}	pexels_rubaitul_azad_13791405_400d54aa75	.jpg	image/jpeg	391.99	/uploads/pexels_rubaitul_azad_13791405_400d54aa75.jpg	\N	local	\N	/	2023-12-17 04:54:21.832	2023-12-17 04:54:21.832	1	1
3	pexels-fauxels-3184454 (1).jpg	\N	\N	1280	854	{"large": {"ext": ".jpg", "url": "/uploads/large_pexels_fauxels_3184454_1_e9064a5544.jpg", "hash": "large_pexels_fauxels_3184454_1_e9064a5544", "mime": "image/jpeg", "name": "large_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 106.53, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_pexels_fauxels_3184454_1_e9064a5544.jpg", "hash": "small_pexels_fauxels_3184454_1_e9064a5544", "mime": "image/jpeg", "name": "small_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 34.91, "width": 500, "height": 334}, "medium": {"ext": ".jpg", "url": "/uploads/medium_pexels_fauxels_3184454_1_e9064a5544.jpg", "hash": "medium_pexels_fauxels_3184454_1_e9064a5544", "mime": "image/jpeg", "name": "medium_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 66.94, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_pexels_fauxels_3184454_1_e9064a5544.jpg", "hash": "thumbnail_pexels_fauxels_3184454_1_e9064a5544", "mime": "image/jpeg", "name": "thumbnail_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 9.81, "width": 234, "height": 156}}	pexels_fauxels_3184454_1_e9064a5544	.jpg	image/jpeg	125.47	/uploads/pexels_fauxels_3184454_1_e9064a5544.jpg	\N	local	\N	/	2023-12-18 12:43:45.972	2023-12-18 12:43:45.972	1	1
4	photo_2023-10-09 00.07.27.jpeg	\N	\N	1280	354	{"large": {"ext": ".jpeg", "url": "/uploads/large_photo_2023_10_09_00_07_27_159196b309.jpeg", "hash": "large_photo_2023_10_09_00_07_27_159196b309", "mime": "image/jpeg", "name": "large_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 15.11, "width": 1000, "height": 277}, "small": {"ext": ".jpeg", "url": "/uploads/small_photo_2023_10_09_00_07_27_159196b309.jpeg", "hash": "small_photo_2023_10_09_00_07_27_159196b309", "mime": "image/jpeg", "name": "small_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 7, "width": 500, "height": 138}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_photo_2023_10_09_00_07_27_159196b309.jpeg", "hash": "medium_photo_2023_10_09_00_07_27_159196b309", "mime": "image/jpeg", "name": "medium_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 11.05, "width": 750, "height": 207}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_photo_2023_10_09_00_07_27_159196b309.jpeg", "hash": "thumbnail_photo_2023_10_09_00_07_27_159196b309", "mime": "image/jpeg", "name": "thumbnail_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 3.25, "width": 245, "height": 67}}	photo_2023_10_09_00_07_27_159196b309	.jpeg	image/jpeg	18.20	/uploads/photo_2023_10_09_00_07_27_159196b309.jpeg	\N	local	\N	/1	2023-12-18 12:46:10.052	2023-12-18 12:46:10.052	1	1
5	W3P-Logo.png	\N	\N	1001	1001	{"large": {"ext": ".png", "url": "/uploads/large_W3_P_Logo_b18dea7c77.png", "hash": "large_W3_P_Logo_b18dea7c77", "mime": "image/png", "name": "large_W3P-Logo.png", "path": null, "size": 36.13, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_W3_P_Logo_b18dea7c77.png", "hash": "small_W3_P_Logo_b18dea7c77", "mime": "image/png", "name": "small_W3P-Logo.png", "path": null, "size": 12.7, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_W3_P_Logo_b18dea7c77.png", "hash": "medium_W3_P_Logo_b18dea7c77", "mime": "image/png", "name": "medium_W3P-Logo.png", "path": null, "size": 26.3, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_W3_P_Logo_b18dea7c77.png", "hash": "thumbnail_W3_P_Logo_b18dea7c77", "mime": "image/png", "name": "thumbnail_W3P-Logo.png", "path": null, "size": 2.91, "width": 156, "height": 156}}	W3_P_Logo_b18dea7c77	.png	image/png	6.09	/uploads/W3_P_Logo_b18dea7c77.png	\N	local	\N	/2/3	2023-12-18 12:52:05.717	2023-12-18 12:52:05.717	1	1
6	photo_2023-10-09 00.07.27.jpeg	\N	\N	1280	354	{"large": {"ext": ".jpeg", "url": "/uploads/large_photo_2023_10_09_00_07_27_61e36ce223.jpeg", "hash": "large_photo_2023_10_09_00_07_27_61e36ce223", "mime": "image/jpeg", "name": "large_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 15.11, "width": 1000, "height": 277}, "small": {"ext": ".jpeg", "url": "/uploads/small_photo_2023_10_09_00_07_27_61e36ce223.jpeg", "hash": "small_photo_2023_10_09_00_07_27_61e36ce223", "mime": "image/jpeg", "name": "small_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 7, "width": 500, "height": 138}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_photo_2023_10_09_00_07_27_61e36ce223.jpeg", "hash": "medium_photo_2023_10_09_00_07_27_61e36ce223", "mime": "image/jpeg", "name": "medium_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 11.05, "width": 750, "height": 207}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_photo_2023_10_09_00_07_27_61e36ce223.jpeg", "hash": "thumbnail_photo_2023_10_09_00_07_27_61e36ce223", "mime": "image/jpeg", "name": "thumbnail_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 3.25, "width": 245, "height": 67}}	photo_2023_10_09_00_07_27_61e36ce223	.jpeg	image/jpeg	18.20	/uploads/photo_2023_10_09_00_07_27_61e36ce223.jpeg	\N	local	\N	/	2023-12-18 13:07:48.056	2023-12-18 13:07:48.056	\N	\N
7	photo_2023-10-09 00.07.27.jpeg	\N	\N	1280	354	{"large": {"ext": ".jpeg", "url": "/uploads/large_photo_2023_10_09_00_07_27_e8a21cb99d.jpeg", "hash": "large_photo_2023_10_09_00_07_27_e8a21cb99d", "mime": "image/jpeg", "name": "large_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 15.11, "width": 1000, "height": 277}, "small": {"ext": ".jpeg", "url": "/uploads/small_photo_2023_10_09_00_07_27_e8a21cb99d.jpeg", "hash": "small_photo_2023_10_09_00_07_27_e8a21cb99d", "mime": "image/jpeg", "name": "small_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 7, "width": 500, "height": 138}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_photo_2023_10_09_00_07_27_e8a21cb99d.jpeg", "hash": "medium_photo_2023_10_09_00_07_27_e8a21cb99d", "mime": "image/jpeg", "name": "medium_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 11.05, "width": 750, "height": 207}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_photo_2023_10_09_00_07_27_e8a21cb99d.jpeg", "hash": "thumbnail_photo_2023_10_09_00_07_27_e8a21cb99d", "mime": "image/jpeg", "name": "thumbnail_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 3.25, "width": 245, "height": 67}}	photo_2023_10_09_00_07_27_e8a21cb99d	.jpeg	image/jpeg	18.20	/uploads/photo_2023_10_09_00_07_27_e8a21cb99d.jpeg	\N	local	\N	/	2023-12-18 13:09:08.855	2023-12-18 13:09:08.855	\N	\N
8	pexels-fauxels-3184454 (1).jpg	\N	\N	1280	854	{"large": {"ext": ".jpg", "url": "/uploads/large_pexels_fauxels_3184454_1_db6b2fa8aa.jpg", "hash": "large_pexels_fauxels_3184454_1_db6b2fa8aa", "mime": "image/jpeg", "name": "large_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 106.53, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_pexels_fauxels_3184454_1_db6b2fa8aa.jpg", "hash": "small_pexels_fauxels_3184454_1_db6b2fa8aa", "mime": "image/jpeg", "name": "small_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 34.91, "width": 500, "height": 334}, "medium": {"ext": ".jpg", "url": "/uploads/medium_pexels_fauxels_3184454_1_db6b2fa8aa.jpg", "hash": "medium_pexels_fauxels_3184454_1_db6b2fa8aa", "mime": "image/jpeg", "name": "medium_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 66.94, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_pexels_fauxels_3184454_1_db6b2fa8aa.jpg", "hash": "thumbnail_pexels_fauxels_3184454_1_db6b2fa8aa", "mime": "image/jpeg", "name": "thumbnail_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 9.81, "width": 234, "height": 156}}	pexels_fauxels_3184454_1_db6b2fa8aa	.jpg	image/jpeg	125.47	/uploads/pexels_fauxels_3184454_1_db6b2fa8aa.jpg	\N	local	\N	/	2023-12-18 13:09:09.095	2023-12-18 13:09:09.095	\N	\N
9	w3p-logo.png	\N	\N	1001	1001	{"large": {"ext": ".png", "url": "/uploads/large_w3p_logo_6e99e33e2b.png", "hash": "large_w3p_logo_6e99e33e2b", "mime": "image/png", "name": "large_w3p-logo.png", "path": null, "size": 36.13, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_w3p_logo_6e99e33e2b.png", "hash": "small_w3p_logo_6e99e33e2b", "mime": "image/png", "name": "small_w3p-logo.png", "path": null, "size": 12.7, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_w3p_logo_6e99e33e2b.png", "hash": "medium_w3p_logo_6e99e33e2b", "mime": "image/png", "name": "medium_w3p-logo.png", "path": null, "size": 26.3, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_w3p_logo_6e99e33e2b.png", "hash": "thumbnail_w3p_logo_6e99e33e2b", "mime": "image/png", "name": "thumbnail_w3p-logo.png", "path": null, "size": 2.91, "width": 156, "height": 156}}	w3p_logo_6e99e33e2b	.png	image/png	6.09	/uploads/w3p_logo_6e99e33e2b.png	\N	local	\N	/	2023-12-18 13:09:09.294	2023-12-18 13:09:09.294	\N	\N
10	photo_2023-10-09 00.07.27.jpeg	\N	\N	1280	354	{"large": {"ext": ".jpeg", "url": "/uploads/large_photo_2023_10_09_00_07_27_0596be980b.jpeg", "hash": "large_photo_2023_10_09_00_07_27_0596be980b", "mime": "image/jpeg", "name": "large_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 15.11, "width": 1000, "height": 277}, "small": {"ext": ".jpeg", "url": "/uploads/small_photo_2023_10_09_00_07_27_0596be980b.jpeg", "hash": "small_photo_2023_10_09_00_07_27_0596be980b", "mime": "image/jpeg", "name": "small_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 7, "width": 500, "height": 138}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_photo_2023_10_09_00_07_27_0596be980b.jpeg", "hash": "medium_photo_2023_10_09_00_07_27_0596be980b", "mime": "image/jpeg", "name": "medium_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 11.05, "width": 750, "height": 207}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_photo_2023_10_09_00_07_27_0596be980b.jpeg", "hash": "thumbnail_photo_2023_10_09_00_07_27_0596be980b", "mime": "image/jpeg", "name": "thumbnail_photo_2023-10-09 00.07.27.jpeg", "path": null, "size": 3.25, "width": 245, "height": 67}}	photo_2023_10_09_00_07_27_0596be980b	.jpeg	image/jpeg	18.20	/uploads/photo_2023_10_09_00_07_27_0596be980b.jpeg	\N	local	\N	/	2023-12-19 14:12:09.59	2023-12-19 14:12:09.59	\N	\N
11	pexels-fauxels-3184454 (1).jpg	\N	\N	1280	854	{"large": {"ext": ".jpg", "url": "/uploads/large_pexels_fauxels_3184454_1_b3447aa8bf.jpg", "hash": "large_pexels_fauxels_3184454_1_b3447aa8bf", "mime": "image/jpeg", "name": "large_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 106.53, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_pexels_fauxels_3184454_1_b3447aa8bf.jpg", "hash": "small_pexels_fauxels_3184454_1_b3447aa8bf", "mime": "image/jpeg", "name": "small_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 34.91, "width": 500, "height": 334}, "medium": {"ext": ".jpg", "url": "/uploads/medium_pexels_fauxels_3184454_1_b3447aa8bf.jpg", "hash": "medium_pexels_fauxels_3184454_1_b3447aa8bf", "mime": "image/jpeg", "name": "medium_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 66.94, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_pexels_fauxels_3184454_1_b3447aa8bf.jpg", "hash": "thumbnail_pexels_fauxels_3184454_1_b3447aa8bf", "mime": "image/jpeg", "name": "thumbnail_pexels-fauxels-3184454 (1).jpg", "path": null, "size": 9.81, "width": 234, "height": 156}}	pexels_fauxels_3184454_1_b3447aa8bf	.jpg	image/jpeg	125.47	/uploads/pexels_fauxels_3184454_1_b3447aa8bf.jpg	\N	local	\N	/	2023-12-19 14:12:09.757	2023-12-19 14:12:09.757	\N	\N
12	w3p-logo.png	\N	\N	1001	1001	{"large": {"ext": ".png", "url": "/uploads/large_w3p_logo_92290b1a67.png", "hash": "large_w3p_logo_92290b1a67", "mime": "image/png", "name": "large_w3p-logo.png", "path": null, "size": 36.13, "width": 1000, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_w3p_logo_92290b1a67.png", "hash": "small_w3p_logo_92290b1a67", "mime": "image/png", "name": "small_w3p-logo.png", "path": null, "size": 12.7, "width": 500, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_w3p_logo_92290b1a67.png", "hash": "medium_w3p_logo_92290b1a67", "mime": "image/png", "name": "medium_w3p-logo.png", "path": null, "size": 26.3, "width": 750, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_w3p_logo_92290b1a67.png", "hash": "thumbnail_w3p_logo_92290b1a67", "mime": "image/png", "name": "thumbnail_w3p-logo.png", "path": null, "size": 2.91, "width": 156, "height": 156}}	w3p_logo_92290b1a67	.png	image/png	6.09	/uploads/w3p_logo_92290b1a67.png	\N	local	\N	/	2023-12-19 14:12:09.913	2023-12-19 14:12:09.913	\N	\N
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
1	4	1	1
2	5	3	1
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
10	10	8	elements.logotype	media	1
11	11	9	elements.logotype	media	1
12	12	10	elements.logotype	media	1
\.


--
-- Data for Name: flyouts; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.flyouts (id, variant, title, uid, class_name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: flyouts_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.flyouts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: flyouts_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.flyouts_localizations_links (id, flyout_id, inv_flyout_id, flyout_order) FROM stdin;
\.


--
-- Data for Name: footers; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.footers (id, title, uid, variant, class_name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: footers_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.footers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: footers_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.footers_localizations_links (id, footer_id, inv_footer_id, footer_order) FROM stdin;
\.


--
-- Data for Name: form_requests; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.form_requests (id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: form_requests_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.form_requests_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: form_requests_form_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.form_requests_form_links (id, form_request_id, form_id, form_request_order) FROM stdin;
\.


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.forms (id, class_name, additional_attributes, variant, uid, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: forms_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.forms_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: forms_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.forms_localizations_links (id, form_id, inv_form_id, form_order) FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2023-12-16 21:30:42.94	2023-12-19 14:12:02.194	\N	\N
\.


--
-- Data for Name: layouts; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.layouts (id, title, uid, variant, class_name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: layouts_footer_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.layouts_footer_links (id, layout_id, footer_id, layout_order) FROM stdin;
\.


--
-- Data for Name: layouts_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.layouts_localizations_links (id, layout_id, inv_layout_id, layout_order) FROM stdin;
\.


--
-- Data for Name: layouts_modals_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.layouts_modals_links (id, layout_id, modal_id, modal_order, layout_order) FROM stdin;
\.


--
-- Data for Name: layouts_navbar_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.layouts_navbar_links (id, layout_id, navbar_id, layout_order) FROM stdin;
\.


--
-- Data for Name: layouts_sidebar_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.layouts_sidebar_links (id, layout_id, sidebar_id, layout_order) FROM stdin;
\.


--
-- Data for Name: layouts_slide_overs_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.layouts_slide_overs_links (id, layout_id, slide_over_id, slide_over_order, layout_order) FROM stdin;
\.


--
-- Data for Name: layouts_topbar_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.layouts_topbar_links (id, layout_id, topbar_id, layout_order) FROM stdin;
\.


--
-- Data for Name: loaders; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.loaders (id, variant, class_name, anchor, title, subtitle, description, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: metatags; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.metatags (id, title, description, script, gtm_key, is_default, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: metatags_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.metatags_localizations_links (id, metatag_id, inv_metatag_id, metatag_order) FROM stdin;
\.


--
-- Data for Name: modals; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.modals (id, uid, dialog_panel_class_name, variant, title, class_name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: modals_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.modals_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: modals_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.modals_localizations_links (id, modal_id, inv_modal_id, modal_order) FROM stdin;
\.


--
-- Data for Name: navbars; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.navbars (id, title, uid, variant, class_name, "position", side, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
5	Public Navbar 2	public-navbar-2	boxed	\N	fixed	top	2023-12-19 14:12:09.645	2023-12-19 14:12:09.645	2023-12-18 12:48:18.034	\N	\N	en
6	Navbar	navbar-1	boxed	\N	fixed	top	2023-12-19 14:12:09.791	2023-12-19 14:12:09.791	2023-12-18 12:50:17.132	\N	\N	en
7	New Navbar	new-navbar	boxed	\N	fixed	top	2023-12-19 14:12:09.952	2023-12-19 14:12:09.952	2023-12-18 12:52:36.319	\N	\N	en
\.


--
-- Data for Name: navbars_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.navbars_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
10	5	8	page-blocks.navbar-block	page_blocks	1
11	6	9	page-blocks.navbar-block	page_blocks	1
12	7	10	page-blocks.navbar-block	page_blocks	1
\.


--
-- Data for Name: navbars_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.navbars_localizations_links (id, navbar_id, inv_navbar_id, navbar_order) FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.pages (id, title, url, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: pages_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: pages_layout_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.pages_layout_links (id, page_id, layout_id, page_order) FROM stdin;
\.


--
-- Data for Name: pages_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.pages_localizations_links (id, page_id, inv_page_id, page_order) FROM stdin;
\.


--
-- Data for Name: pages_metatag_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.pages_metatag_links (id, page_id, metatag_id, page_order) FROM stdin;
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.reviews (id, name, title, description, subtitle, rating, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: robots; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.robots (id, robots, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: sidebars; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.sidebars (id, variant, title, uid, class_name, side, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: sidebars_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.sidebars_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: sidebars_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.sidebars_localizations_links (id, sidebar_id, inv_sidebar_id, sidebar_order) FROM stdin;
\.


--
-- Data for Name: slide_overs; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.slide_overs (id, variant, title, uid, class_name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: slide_overs_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.slide_overs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: slide_overs_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.slide_overs_localizations_links (id, slide_over_id, inv_slide_over_id, slide_over_order) FROM stdin;
\.


--
-- Data for Name: sliders; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.sliders (id, variant, show_backdrop, show_full_screen, show_previews, class_name, aspect_ratio_class_name, title, uid, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: sliders_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.sliders_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: sliders_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.sliders_localizations_links (id, slider_id, inv_slider_id, slider_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
4	plugin_content_manager_configuration_components::elements.feature	{"uid":"elements.feature","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}}},"layouts":{"list":["id","media","additional_media"],"edit":[[{"name":"media","size":6}],[{"name":"description","size":12}],[{"name":"additional_media","size":6}],[{"name":"title","size":12}],[{"name":"subtitle","size":12}]]},"isComponent":true}	object	\N	\N
7	plugin_content_manager_configuration_components::elements.input-option	{"uid":"elements.input-option","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","media","additional_media"],"edit":[[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"media","size":6},{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
8	plugin_content_manager_configuration_components::elements.logotype	{"uid":"elements.logotype","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","url","media","additional_media"],"edit":[[{"name":"title","size":12}],[{"name":"url","size":6},{"name":"media","size":6}],[{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
9	plugin_content_manager_configuration_components::elements.request-input	{"uid":"elements.request-input","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"key":{"edit":{"label":"key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"key","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}},"options":{"edit":{"label":"options","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"options","searchable":false,"sortable":false}},"is_true":{"edit":{"label":"is_true","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_true","searchable":true,"sortable":true}},"option":{"edit":{"label":"option","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"option","searchable":false,"sortable":false}},"date_value":{"edit":{"label":"date_value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date_value","searchable":true,"sortable":true}},"datetime_value":{"edit":{"label":"datetime_value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"datetime_value","searchable":true,"sortable":true}},"dates":{"edit":{"label":"dates","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dates","searchable":false,"sortable":false}}},"layouts":{"list":["id","key","value","files"],"edit":[[{"name":"key","size":6},{"name":"value","size":6}],[{"name":"files","size":6}],[{"name":"options","size":12}],[{"name":"is_true","size":4}],[{"name":"option","size":12}],[{"name":"date_value","size":4},{"name":"datetime_value","size":6}],[{"name":"dates","size":12}]]},"isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::elements.input	{"uid":"elements.input","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"placeholder","defaultSortBy":"placeholder","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"placeholder":{"edit":{"label":"placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"placeholder","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"is_required":{"edit":{"label":"is_required","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_required","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"options":{"edit":{"label":"options","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"options","searchable":false,"sortable":false}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"multiple":{"edit":{"label":"multiple","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"multiple","searchable":true,"sortable":true}},"min":{"edit":{"label":"min","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"min","searchable":true,"sortable":true}},"max":{"edit":{"label":"max","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"max","searchable":true,"sortable":true}},"step":{"edit":{"label":"step","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"step","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}},"extra_media":{"edit":{"label":"extra_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"extra_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","placeholder","variant","is_required"],"edit":[[{"name":"placeholder","size":6},{"name":"variant","size":6}],[{"name":"is_required","size":4},{"name":"value","size":6}],[{"name":"name","size":6}],[{"name":"options","size":12}],[{"name":"label","size":12}],[{"name":"class_name","size":6},{"name":"type","size":6}],[{"name":"multiple","size":4},{"name":"min","size":4},{"name":"max","size":4}],[{"name":"step","size":4},{"name":"media","size":6}],[{"name":"additional_media","size":6},{"name":"extra_media","size":6}]]},"isComponent":true}	object	\N	\N
18	plugin_content_manager_configuration_components::page-blocks.footer-block	{"uid":"page-blocks.footer-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"class_name","defaultSortBy":"class_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"copyrights":{"edit":{"label":"copyrights","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"copyrights","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"logotype":{"edit":{"label":"logotype","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logotype","searchable":false,"sortable":false}},"buttons_arrays":{"edit":{"label":"buttons_arrays","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons_arrays","searchable":false,"sortable":false}},"additional_buttons_arrays":{"edit":{"label":"additional_buttons_arrays","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_buttons_arrays","searchable":false,"sortable":false}},"extra_buttons_arrays":{"edit":{"label":"extra_buttons_arrays","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"extra_buttons_arrays","searchable":false,"sortable":false}}},"layouts":{"list":["id","variant","class_name","logotype"],"edit":[[{"name":"copyrights","size":12}],[{"name":"description","size":12}],[{"name":"variant","size":6},{"name":"class_name","size":6}],[{"name":"logotype","size":12}],[{"name":"buttons_arrays","size":12}],[{"name":"additional_buttons_arrays","size":12}],[{"name":"extra_buttons_arrays","size":12}]]},"isComponent":true}	object	\N	\N
24	plugin_content_manager_configuration_components::page-blocks.not-found-block	{"uid":"page-blocks.not-found-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","variant","class_name","anchor"],"edit":[[{"name":"variant","size":6}],[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"class_name","size":6},{"name":"anchor","size":6}],[{"name":"buttons","size":12}],[{"name":"subtitle","size":12}],[{"name":"media","size":6},{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
25	plugin_content_manager_configuration_components::page-blocks.logotypes-cloud-block	{"uid":"page-blocks.logotypes-cloud-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"logotypes":{"edit":{"label":"logotypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logotypes","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}}},"layouts":{"list":["id","variant","buttons","anchor"],"edit":[[{"name":"variant","size":6}],[{"name":"title","size":12}],[{"name":"buttons","size":12}],[{"name":"description","size":12}],[{"name":"anchor","size":6},{"name":"class_name","size":6}],[{"name":"logotypes","size":12}],[{"name":"subtitle","size":12}]]},"isComponent":true}	object	\N	\N
30	plugin_content_manager_configuration_components::page-blocks.pricing-block	{"uid":"page-blocks.pricing-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"tiers":{"edit":{"label":"tiers","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"tiers","searchable":false,"sortable":false}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","variant","class_name","tiers"],"edit":[[{"name":"variant","size":6}],[{"name":"title","size":12}],[{"name":"subtitle","size":12}],[{"name":"description","size":12}],[{"name":"class_name","size":6},{"name":"tiers","size":6}],[{"name":"anchor","size":6},{"name":"media","size":6}],[{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
32	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
31	plugin_content_manager_configuration_components::page-blocks.slider-block	{"uid":"page-blocks.slider-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"slider":{"edit":{"label":"slider","description":"","placeholder":"","visible":true,"editable":true,"mainField":"class_name"},"list":{"label":"slider","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}}},"layouts":{"list":["id","variant","slider","anchor"],"edit":[[{"name":"variant","size":6},{"name":"slider","size":6}],[{"name":"anchor","size":6},{"name":"class_name","size":6}],[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"subtitle","size":12}]]},"isComponent":true}	object	\N	\N
12	plugin_content_manager_configuration_components::functions.form-side-effect	{"uid":"functions.form-side-effect","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"recievers":{"edit":{"label":"recievers","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"recievers","searchable":false,"sortable":false}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","recievers","provider"],"edit":[[{"name":"type","size":6}],[{"name":"recievers","size":12}],[{"name":"provider","size":6}]]},"isComponent":true}	object	\N	\N
14	plugin_content_manager_configuration_components::page-blocks.alert-block	{"uid":"page-blocks.alert-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"class_name","defaultSortBy":"class_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}}},"layouts":{"list":["id","media","additional_media","buttons"],"edit":[[{"name":"title","size":12}],[{"name":"subtitle","size":12}],[{"name":"description","size":12}],[{"name":"media","size":6},{"name":"additional_media","size":6}],[{"name":"buttons","size":12}],[{"name":"class_name","size":6},{"name":"anchor","size":6}],[{"name":"variant","size":6}]]},"isComponent":true}	object	\N	\N
26	plugin_content_manager_configuration_components::page-blocks.navbar-block	{"uid":"page-blocks.navbar-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"class_name","defaultSortBy":"class_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"logotype":{"edit":{"label":"logotype","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logotype","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"additional_buttons":{"edit":{"label":"additional_buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_buttons","searchable":false,"sortable":false}},"extra_buttons":{"edit":{"label":"extra_buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"extra_buttons","searchable":false,"sortable":false}}},"layouts":{"list":["id","variant","class_name","logotype"],"edit":[[{"name":"variant","size":6}],[{"name":"description","size":12}],[{"name":"class_name","size":6}],[{"name":"logotype","size":12}],[{"name":"buttons","size":12}],[{"name":"additional_buttons","size":12}],[{"name":"extra_buttons","size":12}]]},"isComponent":true}	object	\N	\N
15	plugin_content_manager_configuration_components::page-blocks.cta-section-block	{"uid":"page-blocks.cta-section-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","variant","anchor","class_name"],"edit":[[{"name":"variant","size":6},{"name":"anchor","size":6}],[{"name":"class_name","size":6}],[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"media","size":6}],[{"name":"buttons","size":12}],[{"name":"subtitle","size":12}],[{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
63	plugin_content_manager_configuration_content_types::api::tier.tier	{"uid":"api::tier.tier","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"price":{"edit":{"label":"price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"currency":{"edit":{"label":"currency","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"currency","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"period":{"edit":{"label":"period","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"period","searchable":true,"sortable":true}},"features":{"edit":{"label":"features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"features","searchable":false,"sortable":false}},"old_price":{"edit":{"label":"old_price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"old_price","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","price","currency","type"],"edit":[[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"price","size":4},{"name":"currency","size":6}],[{"name":"type","size":6},{"name":"period","size":4}],[{"name":"features","size":12}],[{"name":"old_price","size":4}],[{"name":"buttons","size":12}]]}}	object	\N	\N
21	plugin_content_manager_configuration_components::page-blocks.header-section-block	{"uid":"page-blocks.header-section-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","media","variant","anchor"],"edit":[[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"media","size":6},{"name":"variant","size":6}],[{"name":"subtitle","size":12}],[{"name":"anchor","size":6},{"name":"class_name","size":6}],[{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
67	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
27	plugin_content_manager_configuration_components::page-blocks.reviews-list-block	{"uid":"page-blocks.reviews-list-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"reviews":{"edit":{"label":"reviews","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"reviews","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"show_all":{"edit":{"label":"show_all","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"show_all","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}}},"layouts":{"list":["id","reviews","variant","show_all"],"edit":[[{"name":"reviews","size":6},{"name":"variant","size":6}],[{"name":"show_all","size":4},{"name":"anchor","size":6}],[{"name":"class_name","size":6}],[{"name":"title","size":12}],[{"name":"subtitle","size":12}],[{"name":"description","size":12}]]},"isComponent":true}	object	\N	\N
33	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
68	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
69	plugin_upload_metrics	{"weeklySchedule":"42 35 21 * * 6","lastWeeklyUpdate":1702751742064}	object	\N	\N
56	plugin_content_manager_configuration_content_types::api::page.page	{"uid":"api::page.page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"layout":{"edit":{"label":"layout","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"layout","searchable":true,"sortable":true}},"page_blocks":{"edit":{"label":"page_blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_blocks","searchable":false,"sortable":false}},"metatag":{"edit":{"label":"metatag","description":"","placeholder":"","visible":true,"editable":true,"mainField":"gtm_key"},"list":{"label":"metatag","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","url","layout"],"edit":[[{"name":"title","size":6},{"name":"url","size":6}],[{"name":"layout","size":6}],[{"name":"page_blocks","size":12}],[{"name":"metatag","size":6}]]}}	object	\N	\N
40	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::flyout.flyout	{"uid":"api::flyout.flyout","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"page_blocks":{"edit":{"label":"page_blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_blocks","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","variant","title","uid"],"edit":[[{"name":"variant","size":6}],[{"name":"page_blocks","size":12}],[{"name":"title","size":6},{"name":"uid","size":6}],[{"name":"class_name","size":6}]]}}	object	\N	\N
65	plugin_content_manager_configuration_content_types::api::sidebar.sidebar	{"uid":"api::sidebar.sidebar","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"page_blocks":{"edit":{"label":"page_blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_blocks","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"layouts":{"edit":{"label":"layouts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"layouts","searchable":false,"sortable":false}},"side":{"edit":{"label":"side","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"side","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","variant","title","uid"],"edit":[[{"name":"variant","size":6},{"name":"title","size":6}],[{"name":"uid","size":6}],[{"name":"page_blocks","size":12}],[{"name":"class_name","size":6},{"name":"layouts","size":6}],[{"name":"side","size":6}]]}}	object	\N	\N
49	plugin_content_manager_configuration_content_types::api::form.form	{"uid":"api::form.form","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"inputs":{"edit":{"label":"inputs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"inputs","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"additional_attributes":{"edit":{"label":"additional_attributes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_attributes","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":false,"sortable":false}},"form_requests":{"edit":{"label":"form_requests","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"form_requests","searchable":false,"sortable":false}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"side_effects":{"edit":{"label":"side_effects","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"side_effects","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","inputs","class_name","variant"],"edit":[[{"name":"inputs","size":12}],[{"name":"class_name","size":6}],[{"name":"additional_attributes","size":12}],[{"name":"variant","size":6}],[{"name":"button","size":12}],[{"name":"form_requests","size":6},{"name":"uid","size":6}],[{"name":"side_effects","size":12}],[{"name":"title","size":6}]]}}	object	\N	\N
54	plugin_content_manager_configuration_content_types::api::modal.modal	{"uid":"api::modal.modal","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"dialog_panel_class_name","defaultSortBy":"dialog_panel_class_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"page_blocks":{"edit":{"label":"page_blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_blocks","searchable":false,"sortable":false}},"dialog_panel_class_name":{"edit":{"label":"dialog_panel_class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dialog_panel_class_name","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"layouts":{"edit":{"label":"layouts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"layouts","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","uid","dialog_panel_class_name","variant"],"edit":[[{"name":"uid","size":6}],[{"name":"page_blocks","size":12}],[{"name":"dialog_panel_class_name","size":6},{"name":"variant","size":6}],[{"name":"title","size":6},{"name":"layouts","size":6}],[{"name":"class_name","size":6}]]}}	object	\N	\N
74	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
16	plugin_content_manager_configuration_components::page-blocks.contact-section-block	{"uid":"page-blocks.contact-section-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"form":{"edit":{"label":"form","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"form","searchable":true,"sortable":true}},"buttons_arrays":{"edit":{"label":"buttons_arrays","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons_arrays","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","anchor","class_name","variant"],"edit":[[{"name":"title","size":12}],[{"name":"subtitle","size":12}],[{"name":"description","size":12}],[{"name":"anchor","size":6},{"name":"class_name","size":6}],[{"name":"variant","size":6},{"name":"media","size":6}],[{"name":"form","size":6}],[{"name":"buttons_arrays","size":12}],[{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
36	plugin_content_manager_configuration_content_types::admin::transfer-token	{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
41	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
46	plugin_content_manager_configuration_content_types::api::currency.currency	{"uid":"api::currency.currency","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"unicode":{"edit":{"label":"unicode","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"unicode","searchable":true,"sortable":true}},"is_default":{"edit":{"label":"is_default","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_default","searchable":true,"sortable":true}},"tiers":{"edit":{"label":"tiers","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"tiers","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","unicode","is_default"],"edit":[[{"name":"title","size":6},{"name":"unicode","size":6}],[{"name":"is_default","size":4},{"name":"tiers","size":6}]]}}	object	\N	\N
29	plugin_content_manager_configuration_components::page-blocks.features-section-block	{"uid":"page-blocks.features-section-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"features":{"edit":{"label":"features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"features","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","features","variant","anchor"],"edit":[[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"subtitle","size":12}],[{"name":"features","size":12}],[{"name":"variant","size":6},{"name":"anchor","size":6}],[{"name":"class_name","size":6},{"name":"media","size":6}],[{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
39	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
19	plugin_content_manager_configuration_components::elements.slide	{"uid":"elements.slide","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","media","buttons","additional_media"],"edit":[[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"subtitle","size":12}],[{"name":"media","size":6}],[{"name":"buttons","size":12}],[{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::metatag.metatag	{"uid":"api::metatag.metatag","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"gtm_key","defaultSortBy":"gtm_key","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"script":{"edit":{"label":"script","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"script","searchable":true,"sortable":true}},"gtm_key":{"edit":{"label":"gtm_key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gtm_key","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"pages":{"edit":{"label":"pages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"pages","searchable":false,"sortable":false}},"is_default":{"edit":{"label":"is_default","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_default","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","script"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"script","size":6},{"name":"gtm_key","size":6}],[{"name":"favicon","size":6},{"name":"pages","size":6}],[{"name":"is_default","size":4}]]}}	object	\N	\N
22	plugin_content_manager_configuration_components::page-blocks.hero-section-block	{"uid":"page-blocks.hero-section-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}}},"layouts":{"list":["id","media","buttons","variant"],"edit":[[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"media","size":6}],[{"name":"buttons","size":12}],[{"name":"variant","size":6},{"name":"anchor","size":6}],[{"name":"class_name","size":6},{"name":"additional_media","size":6}]]},"isComponent":true}	object	\N	\N
44	plugin_content_manager_configuration_content_types::plugin::email-designer.email-template	{"uid":"plugin::email-designer.email-template","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"templateReferenceId":{"edit":{"label":"templateReferenceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"templateReferenceId","searchable":true,"sortable":true}},"design":{"edit":{"label":"design","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"design","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"bodyHtml":{"edit":{"label":"bodyHtml","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bodyHtml","searchable":true,"sortable":true}},"bodyText":{"edit":{"label":"bodyText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bodyText","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enabled","searchable":true,"sortable":true}},"tags":{"edit":{"label":"tags","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tags","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","templateReferenceId","name","subject"],"edit":[[{"name":"templateReferenceId","size":4}],[{"name":"design","size":12}],[{"name":"name","size":6},{"name":"subject","size":6}],[{"name":"bodyHtml","size":6},{"name":"bodyText","size":6}],[{"name":"enabled","size":4}],[{"name":"tags","size":12}]]}}	object	\N	\N
57	plugin_content_manager_configuration_content_types::api::review.review	{"uid":"api::review.review","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"rating":{"edit":{"label":"rating","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rating","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","rating","media","additional_media"],"edit":[[{"name":"name","size":12}],[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"subtitle","size":12}],[{"name":"rating","size":4},{"name":"media","size":6}],[{"name":"additional_media","size":6}]]}}	object	\N	\N
38	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
48	plugin_content_manager_configuration_content_types::api::footer.footer	{"uid":"api::footer.footer","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"layouts":{"edit":{"label":"layouts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"layouts","searchable":false,"sortable":false}},"page_blocks":{"edit":{"label":"page_blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_blocks","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","uid","layouts"],"edit":[[{"name":"title","size":6},{"name":"uid","size":6}],[{"name":"layouts","size":6}],[{"name":"page_blocks","size":12}],[{"name":"variant","size":6},{"name":"class_name","size":6}]]}}	object	\N	\N
52	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
61	plugin_content_manager_configuration_content_types::api::slider.slider	{"uid":"api::slider.slider","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"class_name","defaultSortBy":"class_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"slides":{"edit":{"label":"slides","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slides","searchable":false,"sortable":false}},"show_backdrop":{"edit":{"label":"show_backdrop","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"show_backdrop","searchable":true,"sortable":true}},"show_full_screen":{"edit":{"label":"show_full_screen","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"show_full_screen","searchable":true,"sortable":true}},"show_previews":{"edit":{"label":"show_previews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"show_previews","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"aspect_ratio_class_name":{"edit":{"label":"aspect_ratio_class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"aspect_ratio_class_name","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","variant","slides","show_backdrop"],"edit":[[{"name":"variant","size":6}],[{"name":"slides","size":12}],[{"name":"show_backdrop","size":4},{"name":"show_full_screen","size":4},{"name":"show_previews","size":4}],[{"name":"class_name","size":6},{"name":"aspect_ratio_class_name","size":6}],[{"name":"title","size":6},{"name":"uid","size":6}]]}}	object	\N	\N
34	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
66	plugin_content_manager_configuration_content_types::api::telegram.telegram	{"uid":"api::telegram.telegram","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"edit":[[{"name":"name","size":6}]]}}	object	\N	\N
43	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]}}	object	\N	\N
50	plugin_content_manager_configuration_content_types::api::layout.layout	{"uid":"api::layout.layout","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"sidebar":{"edit":{"label":"sidebar","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"sidebar","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"topbar":{"edit":{"label":"topbar","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"topbar","searchable":true,"sortable":true}},"footer":{"edit":{"label":"footer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"footer","searchable":true,"sortable":true}},"slide_overs":{"edit":{"label":"slide_overs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"slide_overs","searchable":false,"sortable":false}},"modals":{"edit":{"label":"modals","description":"","placeholder":"","visible":true,"editable":true,"mainField":"dialog_panel_class_name"},"list":{"label":"modals","searchable":false,"sortable":false}},"navbar":{"edit":{"label":"navbar","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"navbar","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"pages":{"edit":{"label":"pages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"pages","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","uid","sidebar"],"edit":[[{"name":"title","size":6},{"name":"uid","size":6}],[{"name":"sidebar","size":6},{"name":"variant","size":6}],[{"name":"topbar","size":6},{"name":"footer","size":6}],[{"name":"slide_overs","size":6},{"name":"modals","size":6}],[{"name":"navbar","size":6},{"name":"class_name","size":6}],[{"name":"pages","size":6}]]}}	object	\N	\N
55	plugin_content_manager_configuration_content_types::api::navbar.navbar	{"uid":"api::navbar.navbar","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"page_blocks":{"edit":{"label":"page_blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_blocks","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"layouts":{"edit":{"label":"layouts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"layouts","searchable":false,"sortable":false}},"position":{"edit":{"label":"position","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"position","searchable":true,"sortable":true}},"side":{"edit":{"label":"side","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"side","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","uid","variant"],"edit":[[{"name":"title","size":6},{"name":"uid","size":6}],[{"name":"page_blocks","size":12}],[{"name":"variant","size":6},{"name":"class_name","size":6}],[{"name":"layouts","size":6},{"name":"position","size":6}],[{"name":"side","size":6}]]}}	object	\N	\N
64	plugin_content_manager_configuration_content_types::api::topbar.topbar	{"uid":"api::topbar.topbar","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"page_blocks":{"edit":{"label":"page_blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_blocks","searchable":false,"sortable":false}},"layouts":{"edit":{"label":"layouts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"layouts","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"position":{"edit":{"label":"position","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"position","searchable":true,"sortable":true}},"side":{"edit":{"label":"side","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"side","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","uid","variant"],"edit":[[{"name":"title","size":6},{"name":"uid","size":6}],[{"name":"variant","size":6}],[{"name":"page_blocks","size":12}],[{"name":"layouts","size":6},{"name":"class_name","size":6}],[{"name":"position","size":6},{"name":"side","size":6}]]}}	object	\N	\N
70	plugin_i18n_default_locale	"en"	string	\N	\N
71	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
72	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
73	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
5	plugin_content_manager_configuration_components::elements.font	{"uid":"elements.font","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"weight":{"edit":{"label":"weight","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"weight","searchable":true,"sortable":true}},"style":{"edit":{"label":"style","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"style","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}}},"layouts":{"list":["id","media","weight","style"],"edit":[[{"name":"media","size":6},{"name":"weight","size":6}],[{"name":"style","size":6},{"name":"variant","size":6}]]},"isComponent":true}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::email-designer.email-template":{"kind":"collectionType","collectionName":"email_templates","info":{"singularName":"email-template","pluralName":"email-templates","displayName":"Email-template","name":"email-template"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"options":{"draftAndPublish":false,"timestamps":true,"increments":true,"comment":""},"attributes":{"templateReferenceId":{"type":"integer","required":false,"unique":true},"design":{"type":"json"},"name":{"type":"string"},"subject":{"type":"string"},"bodyHtml":{"type":"text"},"bodyText":{"type":"text"},"enabled":{"type":"boolean","default":true},"tags":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"email_templates","info":{"singularName":"email-template","pluralName":"email-templates","displayName":"Email-template","name":"email-template"},"options":{"draftAndPublish":false,"timestamps":true,"increments":true,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"templateReferenceId":{"type":"integer","required":false,"unique":true},"design":{"type":"json"},"name":{"type":"string"},"subject":{"type":"string"},"bodyHtml":{"type":"text"},"bodyText":{"type":"text"},"enabled":{"type":"boolean","default":true},"tags":{"type":"json"}},"kind":"collectionType"},"modelType":"contentType","modelName":"email-template","connection":"default","uid":"plugin::email-designer.email-template","plugin":"email-designer","globalId":"EmailDesignerEmailTemplate"},"api::configuration.configuration":{"kind":"singleType","collectionName":"configurations","info":{"singularName":"configuration","pluralName":"configurations","displayName":"Configuration","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"configs":{"type":"component","repeatable":true,"component":"functions.config"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"configurations","info":{"singularName":"configuration","pluralName":"configurations","displayName":"Configuration","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"configs":{"type":"component","repeatable":true,"component":"functions.config"}},"kind":"singleType"},"modelType":"contentType","modelName":"configuration","connection":"default","uid":"api::configuration.configuration","apiName":"configuration","globalId":"Configuration","actions":{},"lifecycles":{}},"api::currency.currency":{"kind":"collectionType","collectionName":"currencies","info":{"singularName":"currency","pluralName":"currencies","displayName":"Currency","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"unicode":{"type":"string","required":true,"unique":false,"pluginOptions":{"i18n":{"localized":false}}},"is_default":{"type":"boolean","pluginOptions":{"i18n":{"localized":true}}},"tiers":{"type":"relation","relation":"oneToMany","target":"api::tier.tier","mappedBy":"currency"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::currency.currency"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"currencies","info":{"singularName":"currency","pluralName":"currencies","displayName":"Currency","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"unicode":{"type":"string","required":true,"unique":false,"pluginOptions":{"i18n":{"localized":false}}},"is_default":{"type":"boolean","pluginOptions":{"i18n":{"localized":true}}},"tiers":{"type":"relation","relation":"oneToMany","target":"api::tier.tier","mappedBy":"currency"}},"kind":"collectionType"},"modelType":"contentType","modelName":"currency","connection":"default","uid":"api::currency.currency","apiName":"currency","globalId":"Currency","actions":{},"lifecycles":{}},"api::flyout.flyout":{"kind":"collectionType","collectionName":"flyouts","info":{"singularName":"flyout","pluralName":"flyouts","displayName":"Flyout"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["simple"],"default":"simple","required":true},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["elements.buttons-array","elements.button","page-blocks.hero-section-block"]},"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title"},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::flyout.flyout"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"flyouts","info":{"singularName":"flyout","pluralName":"flyouts","displayName":"Flyout"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["simple"],"default":"simple","required":true},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["elements.buttons-array","elements.button","page-blocks.hero-section-block"]},"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title"},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"flyout","connection":"default","uid":"api::flyout.flyout","apiName":"flyout","globalId":"Flyout","actions":{},"lifecycles":{}},"api::footer.footer":{"kind":"collectionType","collectionName":"footers","info":{"singularName":"footer","pluralName":"footers","displayName":"Footer","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title","required":true},"layouts":{"type":"relation","relation":"oneToMany","target":"api::layout.layout","mappedBy":"footer"},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.footer-block"]},"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["boxed"],"default":"boxed","required":true},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::footer.footer"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"footers","info":{"singularName":"footer","pluralName":"footers","displayName":"Footer","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title","required":true},"layouts":{"type":"relation","relation":"oneToMany","target":"api::layout.layout","mappedBy":"footer"},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.footer-block"]},"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["boxed"],"default":"boxed","required":true},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"footer","connection":"default","uid":"api::footer.footer","apiName":"footer","globalId":"Footer","actions":{},"lifecycles":{}},"api::form.form":{"kind":"collectionType","collectionName":"forms","info":{"singularName":"form","pluralName":"forms","displayName":"Form","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"inputs":{"type":"component","repeatable":true,"component":"elements.input","pluginOptions":{"i18n":{"localized":true}}},"class_name":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"additional_attributes":{"type":"json","pluginOptions":{"i18n":{"localized":true}}},"variant":{"type":"enumeration","enum":["simple"],"default":"simple","required":true,"pluginOptions":{"i18n":{"localized":true}}},"button":{"type":"component","repeatable":false,"component":"elements.button","pluginOptions":{"i18n":{"localized":true}}},"form_requests":{"type":"relation","relation":"oneToMany","target":"api::form-request.form-request","mappedBy":"form"},"uid":{"type":"uid","required":true,"targetField":"title"},"side_effects":{"type":"component","repeatable":true,"component":"functions.form-side-effect","pluginOptions":{"i18n":{"localized":true}}},"title":{"type":"string","required":true,"pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::form.form"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"forms","info":{"singularName":"form","pluralName":"forms","displayName":"Form","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"inputs":{"type":"component","repeatable":true,"component":"elements.input","pluginOptions":{"i18n":{"localized":true}}},"class_name":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"additional_attributes":{"type":"json","pluginOptions":{"i18n":{"localized":true}}},"variant":{"type":"enumeration","enum":["simple"],"default":"simple","required":true,"pluginOptions":{"i18n":{"localized":true}}},"button":{"type":"component","repeatable":false,"component":"elements.button","pluginOptions":{"i18n":{"localized":true}}},"form_requests":{"type":"relation","relation":"oneToMany","target":"api::form-request.form-request","mappedBy":"form"},"uid":{"type":"uid","required":true,"targetField":"title"},"side_effects":{"type":"component","repeatable":true,"component":"functions.form-side-effect","pluginOptions":{"i18n":{"localized":true}}},"title":{"type":"string","required":true,"pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"form","connection":"default","uid":"api::form.form","apiName":"form","globalId":"Form","actions":{},"lifecycles":{}},"api::form-request.form-request":{"kind":"collectionType","collectionName":"form_requests","info":{"singularName":"form-request","pluralName":"form-requests","displayName":"Form Request","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"inputs":{"type":"component","repeatable":true,"component":"elements.request-input"},"files":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"form":{"type":"relation","relation":"manyToOne","target":"api::form.form","inversedBy":"form_requests"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"form_requests","info":{"singularName":"form-request","pluralName":"form-requests","displayName":"Form Request","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"inputs":{"type":"component","repeatable":true,"component":"elements.request-input"},"files":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"form":{"type":"relation","relation":"manyToOne","target":"api::form.form","inversedBy":"form_requests"}},"kind":"collectionType"},"modelType":"contentType","modelName":"form-request","connection":"default","uid":"api::form-request.form-request","apiName":"form-request","globalId":"FormRequest","actions":{},"lifecycles":{}},"api::layout.layout":{"kind":"collectionType","collectionName":"layouts","info":{"singularName":"layout","pluralName":"layouts","displayName":"Layout","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title"},"sidebar":{"type":"relation","relation":"manyToOne","target":"api::sidebar.sidebar","inversedBy":"layouts"},"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["wide","boxed"],"default":"wide","required":true},"topbar":{"type":"relation","relation":"manyToOne","target":"api::topbar.topbar","inversedBy":"layouts"},"footer":{"type":"relation","relation":"manyToOne","target":"api::footer.footer","inversedBy":"layouts"},"slide_overs":{"type":"relation","relation":"manyToMany","target":"api::slide-over.slide-over","inversedBy":"layouts"},"modals":{"type":"relation","relation":"manyToMany","target":"api::modal.modal","inversedBy":"layouts"},"navbar":{"type":"relation","relation":"manyToOne","target":"api::navbar.navbar","inversedBy":"layouts"},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"pages":{"type":"relation","relation":"oneToMany","target":"api::page.page","mappedBy":"layout"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::layout.layout"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"layouts","info":{"singularName":"layout","pluralName":"layouts","displayName":"Layout","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title"},"sidebar":{"type":"relation","relation":"manyToOne","target":"api::sidebar.sidebar","inversedBy":"layouts"},"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["wide","boxed"],"default":"wide","required":true},"topbar":{"type":"relation","relation":"manyToOne","target":"api::topbar.topbar","inversedBy":"layouts"},"footer":{"type":"relation","relation":"manyToOne","target":"api::footer.footer","inversedBy":"layouts"},"slide_overs":{"type":"relation","relation":"manyToMany","target":"api::slide-over.slide-over","inversedBy":"layouts"},"modals":{"type":"relation","relation":"manyToMany","target":"api::modal.modal","inversedBy":"layouts"},"navbar":{"type":"relation","relation":"manyToOne","target":"api::navbar.navbar","inversedBy":"layouts"},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"pages":{"type":"relation","relation":"oneToMany","target":"api::page.page","mappedBy":"layout"}},"kind":"collectionType"},"modelType":"contentType","modelName":"layout","connection":"default","uid":"api::layout.layout","apiName":"layout","globalId":"Layout","actions":{},"lifecycles":{}},"api::loader.loader":{"kind":"singleType","collectionName":"loaders","info":{"singularName":"loader","pluralName":"loaders","displayName":"Loader","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"variant":{"pluginOptions":{},"type":"enumeration","enum":["simple"],"default":"simple","required":true},"media":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"],"pluginOptions":{}},"additional_media":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"],"pluginOptions":{}},"class_name":{"pluginOptions":{},"type":"string"},"anchor":{"pluginOptions":{},"type":"string"},"title":{"pluginOptions":{},"type":"richtext"},"subtitle":{"pluginOptions":{},"type":"richtext"},"description":{"pluginOptions":{},"type":"richtext"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"loaders","info":{"singularName":"loader","pluralName":"loaders","displayName":"Loader","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"variant":{"pluginOptions":{},"type":"enumeration","enum":["simple"],"default":"simple","required":true},"media":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"],"pluginOptions":{}},"additional_media":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"],"pluginOptions":{}},"class_name":{"pluginOptions":{},"type":"string"},"anchor":{"pluginOptions":{},"type":"string"},"title":{"pluginOptions":{},"type":"richtext"},"subtitle":{"pluginOptions":{},"type":"richtext"},"description":{"pluginOptions":{},"type":"richtext"}},"kind":"singleType"},"modelType":"contentType","modelName":"loader","connection":"default","uid":"api::loader.loader","apiName":"loader","globalId":"Loader","actions":{},"lifecycles":{}},"api::metatag.metatag":{"kind":"collectionType","collectionName":"metatags","info":{"singularName":"metatag","pluralName":"metatags","displayName":"Metatag","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"text","required":true},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text","required":true},"script":{"pluginOptions":{"i18n":{"localized":false}},"type":"text"},"gtm_key":{"pluginOptions":{"i18n":{"localized":false}},"type":"string"},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"pages":{"type":"relation","relation":"oneToMany","target":"api::page.page","mappedBy":"metatag"},"is_default":{"pluginOptions":{"i18n":{"localized":true}},"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::metatag.metatag"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"metatags","info":{"singularName":"metatag","pluralName":"metatags","displayName":"Metatag","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"text","required":true},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text","required":true},"script":{"pluginOptions":{"i18n":{"localized":false}},"type":"text"},"gtm_key":{"pluginOptions":{"i18n":{"localized":false}},"type":"string"},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"pages":{"type":"relation","relation":"oneToMany","target":"api::page.page","mappedBy":"metatag"},"is_default":{"pluginOptions":{"i18n":{"localized":true}},"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"metatag","connection":"default","uid":"api::metatag.metatag","apiName":"metatag","globalId":"Metatag","actions":{},"lifecycles":{}},"api::modal.modal":{"kind":"collectionType","collectionName":"modals","info":{"singularName":"modal","pluralName":"modals","displayName":"Modal","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"uid":{"type":"uid","targetField":"title","required":true},"page_blocks":{"type":"dynamiczone","components":["page-blocks.hero-section-block","page-blocks.header-section-block","page-blocks.faqs-block","page-blocks.slider-block","page-blocks.alert-block"],"pluginOptions":{"i18n":{"localized":true}}},"dialog_panel_class_name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"variant":{"type":"enumeration","enum":["simple"],"default":"simple","required":true,"pluginOptions":{"i18n":{"localized":true}}},"title":{"type":"string","required":true,"pluginOptions":{"i18n":{"localized":true}}},"layouts":{"type":"relation","relation":"manyToMany","target":"api::layout.layout","mappedBy":"modals"},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::modal.modal"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"modals","info":{"singularName":"modal","pluralName":"modals","displayName":"Modal","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"uid":{"type":"uid","targetField":"title","required":true},"page_blocks":{"type":"dynamiczone","components":["page-blocks.hero-section-block","page-blocks.header-section-block","page-blocks.faqs-block","page-blocks.slider-block","page-blocks.alert-block"],"pluginOptions":{"i18n":{"localized":true}}},"dialog_panel_class_name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"variant":{"type":"enumeration","enum":["simple"],"default":"simple","required":true,"pluginOptions":{"i18n":{"localized":true}}},"title":{"type":"string","required":true,"pluginOptions":{"i18n":{"localized":true}}},"layouts":{"type":"relation","relation":"manyToMany","target":"api::layout.layout","mappedBy":"modals"},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"modal","connection":"default","uid":"api::modal.modal","apiName":"modal","globalId":"Modal","actions":{},"lifecycles":{}},"api::navbar.navbar":{"kind":"collectionType","collectionName":"navbars","info":{"singularName":"navbar","pluralName":"navbars","displayName":"Navbar","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title","required":true},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.navbar-block"]},"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["boxed"],"default":"boxed","required":true},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"layouts":{"type":"relation","relation":"oneToMany","target":"api::layout.layout","mappedBy":"navbar"},"position":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["fixed"],"default":"fixed","required":true},"side":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["top"],"default":"top","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::navbar.navbar"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"navbars","info":{"singularName":"navbar","pluralName":"navbars","displayName":"Navbar","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title","required":true},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.navbar-block"]},"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["boxed"],"default":"boxed","required":true},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"layouts":{"type":"relation","relation":"oneToMany","target":"api::layout.layout","mappedBy":"navbar"},"position":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["fixed"],"default":"fixed","required":true},"side":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["top"],"default":"top","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"navbar","connection":"default","uid":"api::navbar.navbar","apiName":"navbar","globalId":"Navbar","actions":{},"lifecycles":{}},"api::page.page":{"kind":"collectionType","collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true},"url":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true,"unique":false},"layout":{"type":"relation","relation":"manyToOne","target":"api::layout.layout","inversedBy":"pages"},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.hero-section-block","page-blocks.incentives-block","page-blocks.header-section-block","page-blocks.contact-section-block","page-blocks.cta-section-block","page-blocks.faqs-block","page-blocks.features-section-block","page-blocks.logotypes-cloud-block","page-blocks.not-found-block","page-blocks.pricing-block","page-blocks.reviews-table-block","page-blocks.slider-block","elements.buttons-array","elements.button","page-blocks.reviews-list-block","page-blocks.alert-block"]},"metatag":{"type":"relation","relation":"manyToOne","target":"api::metatag.metatag","inversedBy":"pages"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::page.page"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true},"url":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","required":true,"unique":false},"layout":{"type":"relation","relation":"manyToOne","target":"api::layout.layout","inversedBy":"pages"},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.hero-section-block","page-blocks.incentives-block","page-blocks.header-section-block","page-blocks.contact-section-block","page-blocks.cta-section-block","page-blocks.faqs-block","page-blocks.features-section-block","page-blocks.logotypes-cloud-block","page-blocks.not-found-block","page-blocks.pricing-block","page-blocks.reviews-table-block","page-blocks.slider-block","elements.buttons-array","elements.button","page-blocks.reviews-list-block","page-blocks.alert-block"]},"metatag":{"type":"relation","relation":"manyToOne","target":"api::metatag.metatag","inversedBy":"pages"}},"kind":"collectionType"},"modelType":"contentType","modelName":"page","connection":"default","uid":"api::page.page","apiName":"page","globalId":"Page","actions":{},"lifecycles":{}},"api::review.review":{"kind":"collectionType","collectionName":"reviews","info":{"singularName":"review","pluralName":"reviews","displayName":"Review","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"richtext"},"title":{"type":"richtext"},"description":{"type":"richtext"},"subtitle":{"type":"richtext"},"rating":{"type":"integer"},"media":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"additional_media":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"reviews","info":{"singularName":"review","pluralName":"reviews","displayName":"Review","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"richtext"},"title":{"type":"richtext"},"description":{"type":"richtext"},"subtitle":{"type":"richtext"},"rating":{"type":"integer"},"media":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"additional_media":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"review","connection":"default","uid":"api::review.review","apiName":"review","globalId":"Review","actions":{},"lifecycles":{}},"api::robot.robot":{"kind":"singleType","collectionName":"robots","info":{"singularName":"robot","pluralName":"robots","displayName":"Robot"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"robots":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"robots","info":{"singularName":"robot","pluralName":"robots","displayName":"Robot"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"robots":{"type":"text"}},"kind":"singleType"},"modelType":"contentType","modelName":"robot","connection":"default","uid":"api::robot.robot","apiName":"robot","globalId":"Robot","actions":{},"lifecycles":{}},"api::sidebar.sidebar":{"kind":"collectionType","collectionName":"sidebars","info":{"singularName":"sidebar","pluralName":"sidebars","displayName":"Sidebar","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["one-quarter"],"default":"one-quarter","required":true},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true},"uid":{"pluginOptions":{},"type":"uid","targetField":"title","required":true},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.hero-section-block","page-blocks.header-section-block","elements.button","elements.buttons-array"]},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"layouts":{"type":"relation","relation":"oneToMany","target":"api::layout.layout","mappedBy":"sidebar"},"side":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["left","right"],"default":"left","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::sidebar.sidebar"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"sidebars","info":{"singularName":"sidebar","pluralName":"sidebars","displayName":"Sidebar","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["one-quarter"],"default":"one-quarter","required":true},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true},"uid":{"pluginOptions":{},"type":"uid","targetField":"title","required":true},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.hero-section-block","page-blocks.header-section-block","elements.button","elements.buttons-array"]},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"layouts":{"type":"relation","relation":"oneToMany","target":"api::layout.layout","mappedBy":"sidebar"},"side":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["left","right"],"default":"left","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"sidebar","connection":"default","uid":"api::sidebar.sidebar","apiName":"sidebar","globalId":"Sidebar","actions":{},"lifecycles":{}},"api::slide-over.slide-over":{"kind":"collectionType","collectionName":"slide_overs","info":{"singularName":"slide-over","pluralName":"slide-overs","displayName":"Slide Over","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["right-side-half-width"],"default":"right-side-half-width","required":true},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true},"uid":{"pluginOptions":{},"type":"uid","targetField":"title","required":true},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.faqs-block"]},"layouts":{"type":"relation","relation":"manyToMany","target":"api::layout.layout","mappedBy":"slide_overs"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::slide-over.slide-over"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"slide_overs","info":{"singularName":"slide-over","pluralName":"slide-overs","displayName":"Slide Over","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["right-side-half-width"],"default":"right-side-half-width","required":true},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true},"uid":{"pluginOptions":{},"type":"uid","targetField":"title","required":true},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["page-blocks.faqs-block"]},"layouts":{"type":"relation","relation":"manyToMany","target":"api::layout.layout","mappedBy":"slide_overs"}},"kind":"collectionType"},"modelType":"contentType","modelName":"slide-over","connection":"default","uid":"api::slide-over.slide-over","apiName":"slide-over","globalId":"SlideOver","actions":{},"lifecycles":{}},"api::slider.slider":{"kind":"collectionType","collectionName":"sliders","info":{"singularName":"slider","pluralName":"sliders","displayName":"Slider","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"variant":{"type":"enumeration","enum":["fade-with-previews"],"default":"fade-with-previews","required":true,"pluginOptions":{"i18n":{"localized":true}}},"slides":{"type":"component","repeatable":true,"component":"elements.slide","pluginOptions":{"i18n":{"localized":true}}},"show_backdrop":{"type":"boolean","pluginOptions":{"i18n":{"localized":true}}},"show_full_screen":{"type":"boolean","pluginOptions":{"i18n":{"localized":true}}},"show_previews":{"type":"boolean","pluginOptions":{"i18n":{"localized":true}}},"class_name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"aspect_ratio_class_name":{"type":"string","required":true,"default":"aspect-h-1 aspect-w-1 xl:aspect-w-15 xl:aspect-h-10","pluginOptions":{"i18n":{"localized":true}}},"title":{"type":"string","required":true,"pluginOptions":{"i18n":{"localized":true}}},"uid":{"type":"uid","targetField":"title"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::slider.slider"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"sliders","info":{"singularName":"slider","pluralName":"sliders","displayName":"Slider","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"variant":{"type":"enumeration","enum":["fade-with-previews"],"default":"fade-with-previews","required":true,"pluginOptions":{"i18n":{"localized":true}}},"slides":{"type":"component","repeatable":true,"component":"elements.slide","pluginOptions":{"i18n":{"localized":true}}},"show_backdrop":{"type":"boolean","pluginOptions":{"i18n":{"localized":true}}},"show_full_screen":{"type":"boolean","pluginOptions":{"i18n":{"localized":true}}},"show_previews":{"type":"boolean","pluginOptions":{"i18n":{"localized":true}}},"class_name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"aspect_ratio_class_name":{"type":"string","required":true,"default":"aspect-h-1 aspect-w-1 xl:aspect-w-15 xl:aspect-h-10","pluginOptions":{"i18n":{"localized":true}}},"title":{"type":"string","required":true,"pluginOptions":{"i18n":{"localized":true}}},"uid":{"type":"uid","targetField":"title"}},"kind":"collectionType"},"modelType":"contentType","modelName":"slider","connection":"default","uid":"api::slider.slider","apiName":"slider","globalId":"Slider","actions":{},"lifecycles":{}},"api::telegram.telegram":{"kind":"collectionType","collectionName":"telegrams","info":{"singularName":"telegram","pluralName":"telegrams","displayName":"Telegram"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"telegrams","info":{"singularName":"telegram","pluralName":"telegrams","displayName":"Telegram"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"telegram","connection":"default","uid":"api::telegram.telegram","apiName":"telegram","globalId":"Telegram","actions":{},"lifecycles":{}},"api::theme.theme":{"kind":"singleType","collectionName":"themes","info":{"singularName":"theme","pluralName":"themes","displayName":"Theme","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"theme":{"type":"json"},"fonts":{"type":"component","repeatable":true,"component":"elements.font"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"themes","info":{"singularName":"theme","pluralName":"themes","displayName":"Theme","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"theme":{"type":"json"},"fonts":{"type":"component","repeatable":true,"component":"elements.font"}},"kind":"singleType"},"modelType":"contentType","modelName":"theme","connection":"default","uid":"api::theme.theme","apiName":"theme","globalId":"Theme","actions":{},"lifecycles":{}},"api::tier.tier":{"kind":"collectionType","collectionName":"tiers","info":{"singularName":"tier","pluralName":"tiers","displayName":"Tier","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext"},"price":{"pluginOptions":{"i18n":{"localized":true}},"type":"float"},"currency":{"type":"relation","relation":"manyToOne","target":"api::currency.currency","inversedBy":"tiers"},"type":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["one-time","regularly"]},"period":{"pluginOptions":{"i18n":{"localized":true}},"type":"integer"},"features":{"type":"component","repeatable":true,"pluginOptions":{"i18n":{"localized":true}},"component":"elements.feature"},"old_price":{"pluginOptions":{"i18n":{"localized":true}},"type":"float"},"buttons":{"type":"component","repeatable":true,"component":"elements.button","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::tier.tier"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"tiers","info":{"singularName":"tier","pluralName":"tiers","displayName":"Tier","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext"},"price":{"pluginOptions":{"i18n":{"localized":true}},"type":"float"},"currency":{"type":"relation","relation":"manyToOne","target":"api::currency.currency","inversedBy":"tiers"},"type":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["one-time","regularly"]},"period":{"pluginOptions":{"i18n":{"localized":true}},"type":"integer"},"features":{"type":"component","repeatable":true,"pluginOptions":{"i18n":{"localized":true}},"component":"elements.feature"},"old_price":{"pluginOptions":{"i18n":{"localized":true}},"type":"float"},"buttons":{"type":"component","repeatable":true,"component":"elements.button","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"tier","connection":"default","uid":"api::tier.tier","apiName":"tier","globalId":"Tier","actions":{},"lifecycles":{}},"api::topbar.topbar":{"kind":"collectionType","collectionName":"topbars","info":{"singularName":"topbar","pluralName":"topbars","displayName":"Topbar","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string"},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title","required":true},"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["boxed"],"default":"boxed","required":true},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["elements.button"]},"layouts":{"type":"relation","relation":"oneToMany","target":"api::layout.layout","mappedBy":"topbar"},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"position":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["fixed"],"default":"fixed","required":true},"side":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["top"],"default":"top","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::topbar.topbar"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"topbars","info":{"singularName":"topbar","pluralName":"topbars","displayName":"Topbar","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":false}},"type":"string"},"uid":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"title","required":true},"variant":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["boxed"],"default":"boxed","required":true},"page_blocks":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["elements.button"]},"layouts":{"type":"relation","relation":"oneToMany","target":"api::layout.layout","mappedBy":"topbar"},"class_name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"position":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["fixed"],"default":"fixed","required":true},"side":{"pluginOptions":{"i18n":{"localized":true}},"type":"enumeration","enum":["top"],"default":"top","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"topbar","connection":"default","uid":"api::topbar.topbar","apiName":"topbar","globalId":"Topbar","actions":{},"lifecycles":{}}}	object	\N	\N
2	plugin_content_manager_configuration_components::elements.button	{"uid":"elements.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"class_name","defaultSortBy":"class_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"additional_attributes":{"edit":{"label":"additional_attributes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_attributes","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"flyout":{"edit":{"label":"flyout","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"flyout","searchable":true,"sortable":true}}},"layouts":{"list":["id","url","media","variant"],"edit":[[{"name":"url","size":6},{"name":"media","size":6}],[{"name":"description","size":12}],[{"name":"variant","size":6},{"name":"additional_media","size":6}],[{"name":"title","size":12}],[{"name":"additional_attributes","size":12}],[{"name":"class_name","size":6},{"name":"flyout","size":6}]]},"isComponent":true}	object	\N	\N
20	plugin_content_manager_configuration_components::elements.reciever	{"uid":"elements.reciever","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"identifier":{"edit":{"label":"identifier","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"identifier","searchable":true,"sortable":true}},"admin":{"edit":{"label":"admin","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"admin","searchable":true,"sortable":true}},"user":{"edit":{"label":"user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"user","searchable":true,"sortable":true}}},"layouts":{"list":["id","identifier","admin","user"],"edit":[[{"name":"identifier","size":6},{"name":"admin","size":6}],[{"name":"user","size":6}]]},"isComponent":true}	object	\N	\N
3	plugin_content_manager_configuration_components::elements.buttons-array	{"uid":"elements.buttons-array","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"class_name","defaultSortBy":"class_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"additional_attributes":{"edit":{"label":"additional_attributes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_attributes","searchable":false,"sortable":false}}},"layouts":{"list":["id","buttons","class_name","media"],"edit":[[{"name":"title","size":12}],[{"name":"buttons","size":12}],[{"name":"class_name","size":6},{"name":"media","size":6}],[{"name":"variant","size":6}],[{"name":"description","size":12}],[{"name":"additional_media","size":6},{"name":"url","size":6}],[{"name":"additional_attributes","size":12}]]},"isComponent":true}	object	\N	\N
11	plugin_content_manager_configuration_components::elements.faq	{"uid":"elements.faq","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"description","size":12}],[{"name":"title","size":12}]]},"isComponent":true}	object	\N	\N
13	plugin_content_manager_configuration_components::functions.config	{"uid":"functions.config","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"config":{"edit":{"label":"config","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"config","searchable":false,"sortable":false}}},"layouts":{"list":["id","provider"],"edit":[[{"name":"provider","size":6}],[{"name":"config","size":12}]]},"isComponent":true}	object	\N	\N
17	plugin_content_manager_configuration_components::page-blocks.faqs-block	{"uid":"page-blocks.faqs-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"class_name","defaultSortBy":"class_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"faqs":{"edit":{"label":"faqs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"faqs","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}}},"layouts":{"list":["id","faqs","variant","class_name"],"edit":[[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"faqs","size":12}],[{"name":"variant","size":6},{"name":"class_name","size":6}],[{"name":"anchor","size":6}],[{"name":"subtitle","size":12}]]},"isComponent":true}	object	\N	\N
23	plugin_content_manager_configuration_components::page-blocks.incentives-block	{"uid":"page-blocks.incentives-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"features":{"edit":{"label":"features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"features","searchable":false,"sortable":false}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}}},"layouts":{"list":["id","features","anchor","class_name"],"edit":[[{"name":"title","size":12}],[{"name":"description","size":12}],[{"name":"features","size":12}],[{"name":"anchor","size":6},{"name":"class_name","size":6}],[{"name":"variant","size":6},{"name":"media","size":6}],[{"name":"additional_media","size":6}],[{"name":"subtitle","size":12}]]},"isComponent":true}	object	\N	\N
35	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
45	plugin_content_manager_configuration_content_types::api::configuration.configuration	{"uid":"api::configuration.configuration","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"configs":{"edit":{"label":"configs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"configs","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","configs","createdAt","updatedAt"],"edit":[[{"name":"configs","size":12}]]}}	object	\N	\N
37	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
58	plugin_content_manager_configuration_content_types::api::robot.robot	{"uid":"api::robot.robot","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"robots":{"edit":{"label":"robots","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"robots","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","robots","createdAt","updatedAt"],"edit":[[{"name":"robots","size":6}]]}}	object	\N	\N
59	plugin_content_manager_configuration_content_types::api::form-request.form-request	{"uid":"api::form-request.form-request","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"inputs":{"edit":{"label":"inputs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"inputs","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}},"form":{"edit":{"label":"form","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"form","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","inputs","files","form"],"edit":[[{"name":"inputs","size":12}],[{"name":"files","size":6},{"name":"form","size":6}]]}}	object	\N	\N
28	plugin_content_manager_configuration_components::page-blocks.reviews-table-block	{"uid":"page-blocks.reviews-table-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"anchor","defaultSortBy":"anchor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}}},"layouts":{"list":["id","variant","anchor","class_name"],"edit":[[{"name":"variant","size":6},{"name":"anchor","size":6}],[{"name":"class_name","size":6}]]},"isComponent":true}	object	\N	\N
62	plugin_content_manager_configuration_content_types::api::theme.theme	{"uid":"api::theme.theme","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"theme":{"edit":{"label":"theme","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"theme","searchable":false,"sortable":false}},"fonts":{"edit":{"label":"fonts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fonts","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","fonts","createdAt","updatedAt"],"edit":[[{"name":"theme","size":12}],[{"name":"fonts","size":12}]]}}	object	\N	\N
10	plugin_content_manager_configuration_components::elements.date-value	{"uid":"elements.date-value","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"date_value":{"edit":{"label":"date_value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date_value","searchable":true,"sortable":true}},"datetime_value":{"edit":{"label":"datetime_value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"datetime_value","searchable":true,"sortable":true}},"time_value":{"edit":{"label":"time_value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"time_value","searchable":true,"sortable":true}}},"layouts":{"list":["id","date_value","datetime_value","time_value"],"edit":[[{"name":"date_value","size":4},{"name":"datetime_value","size":6}],[{"name":"time_value","size":4}]]},"isComponent":true}	object	\N	\N
42	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
51	plugin_content_manager_configuration_content_types::api::loader.loader	{"uid":"api::loader.loader","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"class_name","defaultSortBy":"class_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"additional_media":{"edit":{"label":"additional_media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_media","searchable":false,"sortable":false}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"anchor":{"edit":{"label":"anchor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"anchor","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":false,"sortable":false}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","variant","media","additional_media"],"edit":[[{"name":"variant","size":6},{"name":"media","size":6}],[{"name":"additional_media","size":6},{"name":"class_name","size":6}],[{"name":"anchor","size":6}],[{"name":"title","size":12}],[{"name":"subtitle","size":12}],[{"name":"description","size":12}]]}}	object	\N	\N
60	plugin_content_manager_configuration_content_types::api::slide-over.slide-over	{"uid":"api::slide-over.slide-over","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"variant":{"edit":{"label":"variant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"variant","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"uid":{"edit":{"label":"uid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uid","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"page_blocks":{"edit":{"label":"page_blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_blocks","searchable":false,"sortable":false}},"layouts":{"edit":{"label":"layouts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"layouts","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","variant","title","uid"],"edit":[[{"name":"variant","size":6},{"name":"title","size":6}],[{"name":"uid","size":6},{"name":"class_name","size":6}],[{"name":"page_blocks","size":12}],[{"name":"layouts","size":6}]]}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
1	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"email_templates","indexes":[{"name":"email_templates_created_by_id_fk","columns":["created_by_id"]},{"name":"email_templates_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"email_templates_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"email_templates_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"template_reference_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"design","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body_html","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tags","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"configurations","indexes":[{"name":"configurations_created_by_id_fk","columns":["created_by_id"]},{"name":"configurations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"configurations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"configurations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"currencies","indexes":[{"name":"currencies_created_by_id_fk","columns":["created_by_id"]},{"name":"currencies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"currencies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"currencies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"unicode","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_default","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"flyouts","indexes":[{"type":"unique","name":"flyouts_uid_unique","columns":["uid"]},{"name":"flyouts_created_by_id_fk","columns":["created_by_id"]},{"name":"flyouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"flyouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"flyouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"footers","indexes":[{"type":"unique","name":"footers_uid_unique","columns":["uid"]},{"name":"footers_created_by_id_fk","columns":["created_by_id"]},{"name":"footers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"footers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"footers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"forms","indexes":[{"type":"unique","name":"forms_uid_unique","columns":["uid"]},{"name":"forms_created_by_id_fk","columns":["created_by_id"]},{"name":"forms_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"forms_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"forms_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"class_name","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"additional_attributes","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"form_requests","indexes":[{"name":"form_requests_created_by_id_fk","columns":["created_by_id"]},{"name":"form_requests_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"form_requests_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"form_requests_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts","indexes":[{"type":"unique","name":"layouts_uid_unique","columns":["uid"]},{"name":"layouts_created_by_id_fk","columns":["created_by_id"]},{"name":"layouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"layouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"layouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"loaders","indexes":[{"name":"loaders_created_by_id_fk","columns":["created_by_id"]},{"name":"loaders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"loaders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"loaders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"metatags","indexes":[{"name":"metatags_created_by_id_fk","columns":["created_by_id"]},{"name":"metatags_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"metatags_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"metatags_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"script","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gtm_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_default","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"modals","indexes":[{"type":"unique","name":"modals_uid_unique","columns":["uid"]},{"name":"modals_created_by_id_fk","columns":["created_by_id"]},{"name":"modals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"modals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"modals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"dialog_panel_class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"navbars","indexes":[{"type":"unique","name":"navbars_uid_unique","columns":["uid"]},{"name":"navbars_created_by_id_fk","columns":["created_by_id"]},{"name":"navbars_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"navbars_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"navbars_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"position","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"side","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pages","indexes":[{"name":"pages_created_by_id_fk","columns":["created_by_id"]},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"reviews","indexes":[{"name":"reviews_created_by_id_fk","columns":["created_by_id"]},{"name":"reviews_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"reviews_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"reviews_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"rating","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"robots","indexes":[{"name":"robots_created_by_id_fk","columns":["created_by_id"]},{"name":"robots_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"robots_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"robots_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"robots","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sidebars","indexes":[{"type":"unique","name":"sidebars_uid_unique","columns":["uid"]},{"name":"sidebars_created_by_id_fk","columns":["created_by_id"]},{"name":"sidebars_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sidebars_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sidebars_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"side","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"slide_overs","indexes":[{"type":"unique","name":"slide_overs_uid_unique","columns":["uid"]},{"name":"slide_overs_created_by_id_fk","columns":["created_by_id"]},{"name":"slide_overs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"slide_overs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"slide_overs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sliders","indexes":[{"type":"unique","name":"sliders_uid_unique","columns":["uid"]},{"name":"sliders_created_by_id_fk","columns":["created_by_id"]},{"name":"sliders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sliders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sliders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show_backdrop","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show_full_screen","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show_previews","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"aspect_ratio_class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"telegrams","indexes":[{"name":"telegrams_created_by_id_fk","columns":["created_by_id"]},{"name":"telegrams_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"telegrams_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"telegrams_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"themes","indexes":[{"name":"themes_created_by_id_fk","columns":["created_by_id"]},{"name":"themes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"themes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"themes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"theme","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tiers","indexes":[{"name":"tiers_created_by_id_fk","columns":["created_by_id"]},{"name":"tiers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"tiers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"tiers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"period","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"old_price","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"topbars","indexes":[{"type":"unique","name":"topbars_uid_unique","columns":["uid"]},{"name":"topbars_created_by_id_fk","columns":["created_by_id"]},{"name":"topbars_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"topbars_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"topbars_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uid","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"position","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"side","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_buttons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"additional_attributes","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_buttons_arrays","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"additional_attributes","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_date_values","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"date_value","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"datetime_value","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"time_value","type":"time","args":[{"precision":3}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_faqs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_features","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_fonts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"weight","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"style","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_input_options","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_inputs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_required","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"multiple","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"min","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"max","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"step","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_logotypes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_recievers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"identifier","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_request_inputs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_true","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date_value","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"datetime_value","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_slides","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_functions_configs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"config","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_functions_form_side_effects","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_alert_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_contact_section_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_cta_section_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_faqs_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_features_section_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_footer_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"copyrights","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_header_section_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_hero_section_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_incentives_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_logotypes_cloud_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_navbar_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_not_found_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_pricing_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_reviews_list_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"show_all","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_reviews_table_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_blocks_slider_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"variant","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"anchor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"configurations_components","indexes":[{"name":"configurations_field_index","columns":["field"]},{"name":"configurations_component_type_index","columns":["component_type"]},{"name":"configurations_entity_fk","columns":["entity_id"]},{"name":"configurations_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"configurations_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"configurations","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"currencies_localizations_links","indexes":[{"name":"currencies_localizations_links_fk","columns":["currency_id"]},{"name":"currencies_localizations_links_inv_fk","columns":["inv_currency_id"]},{"name":"currencies_localizations_links_unique","columns":["currency_id","inv_currency_id"],"type":"unique"},{"name":"currencies_localizations_links_order_fk","columns":["currency_order"]}],"foreignKeys":[{"name":"currencies_localizations_links_fk","columns":["currency_id"],"referencedColumns":["id"],"referencedTable":"currencies","onDelete":"CASCADE"},{"name":"currencies_localizations_links_inv_fk","columns":["inv_currency_id"],"referencedColumns":["id"],"referencedTable":"currencies","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"currency_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_currency_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"currency_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"flyouts_components","indexes":[{"name":"flyouts_field_index","columns":["field"]},{"name":"flyouts_component_type_index","columns":["component_type"]},{"name":"flyouts_entity_fk","columns":["entity_id"]},{"name":"flyouts_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"flyouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"flyouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"flyouts_localizations_links","indexes":[{"name":"flyouts_localizations_links_fk","columns":["flyout_id"]},{"name":"flyouts_localizations_links_inv_fk","columns":["inv_flyout_id"]},{"name":"flyouts_localizations_links_unique","columns":["flyout_id","inv_flyout_id"],"type":"unique"},{"name":"flyouts_localizations_links_order_fk","columns":["flyout_order"]}],"foreignKeys":[{"name":"flyouts_localizations_links_fk","columns":["flyout_id"],"referencedColumns":["id"],"referencedTable":"flyouts","onDelete":"CASCADE"},{"name":"flyouts_localizations_links_inv_fk","columns":["inv_flyout_id"],"referencedColumns":["id"],"referencedTable":"flyouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"flyout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_flyout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"flyout_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footers_components","indexes":[{"name":"footers_field_index","columns":["field"]},{"name":"footers_component_type_index","columns":["component_type"]},{"name":"footers_entity_fk","columns":["entity_id"]},{"name":"footers_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"footers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"footers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footers_localizations_links","indexes":[{"name":"footers_localizations_links_fk","columns":["footer_id"]},{"name":"footers_localizations_links_inv_fk","columns":["inv_footer_id"]},{"name":"footers_localizations_links_unique","columns":["footer_id","inv_footer_id"],"type":"unique"},{"name":"footers_localizations_links_order_fk","columns":["footer_order"]}],"foreignKeys":[{"name":"footers_localizations_links_fk","columns":["footer_id"],"referencedColumns":["id"],"referencedTable":"footers","onDelete":"CASCADE"},{"name":"footers_localizations_links_inv_fk","columns":["inv_footer_id"],"referencedColumns":["id"],"referencedTable":"footers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"footer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_footer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"footer_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"forms_components","indexes":[{"name":"forms_field_index","columns":["field"]},{"name":"forms_component_type_index","columns":["component_type"]},{"name":"forms_entity_fk","columns":["entity_id"]},{"name":"forms_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"forms_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"forms","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"forms_localizations_links","indexes":[{"name":"forms_localizations_links_fk","columns":["form_id"]},{"name":"forms_localizations_links_inv_fk","columns":["inv_form_id"]},{"name":"forms_localizations_links_unique","columns":["form_id","inv_form_id"],"type":"unique"},{"name":"forms_localizations_links_order_fk","columns":["form_order"]}],"foreignKeys":[{"name":"forms_localizations_links_fk","columns":["form_id"],"referencedColumns":["id"],"referencedTable":"forms","onDelete":"CASCADE"},{"name":"forms_localizations_links_inv_fk","columns":["inv_form_id"],"referencedColumns":["id"],"referencedTable":"forms","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"form_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_form_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"form_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"form_requests_components","indexes":[{"name":"form_requests_field_index","columns":["field"]},{"name":"form_requests_component_type_index","columns":["component_type"]},{"name":"form_requests_entity_fk","columns":["entity_id"]},{"name":"form_requests_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"form_requests_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"form_requests","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"form_requests_form_links","indexes":[{"name":"form_requests_form_links_fk","columns":["form_request_id"]},{"name":"form_requests_form_links_inv_fk","columns":["form_id"]},{"name":"form_requests_form_links_unique","columns":["form_request_id","form_id"],"type":"unique"},{"name":"form_requests_form_links_order_inv_fk","columns":["form_request_order"]}],"foreignKeys":[{"name":"form_requests_form_links_fk","columns":["form_request_id"],"referencedColumns":["id"],"referencedTable":"form_requests","onDelete":"CASCADE"},{"name":"form_requests_form_links_inv_fk","columns":["form_id"],"referencedColumns":["id"],"referencedTable":"forms","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"form_request_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"form_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"form_request_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_sidebar_links","indexes":[{"name":"layouts_sidebar_links_fk","columns":["layout_id"]},{"name":"layouts_sidebar_links_inv_fk","columns":["sidebar_id"]},{"name":"layouts_sidebar_links_unique","columns":["layout_id","sidebar_id"],"type":"unique"},{"name":"layouts_sidebar_links_order_inv_fk","columns":["layout_order"]}],"foreignKeys":[{"name":"layouts_sidebar_links_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"},{"name":"layouts_sidebar_links_inv_fk","columns":["sidebar_id"],"referencedColumns":["id"],"referencedTable":"sidebars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sidebar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"layout_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_topbar_links","indexes":[{"name":"layouts_topbar_links_fk","columns":["layout_id"]},{"name":"layouts_topbar_links_inv_fk","columns":["topbar_id"]},{"name":"layouts_topbar_links_unique","columns":["layout_id","topbar_id"],"type":"unique"},{"name":"layouts_topbar_links_order_inv_fk","columns":["layout_order"]}],"foreignKeys":[{"name":"layouts_topbar_links_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"},{"name":"layouts_topbar_links_inv_fk","columns":["topbar_id"],"referencedColumns":["id"],"referencedTable":"topbars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"topbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"layout_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_footer_links","indexes":[{"name":"layouts_footer_links_fk","columns":["layout_id"]},{"name":"layouts_footer_links_inv_fk","columns":["footer_id"]},{"name":"layouts_footer_links_unique","columns":["layout_id","footer_id"],"type":"unique"},{"name":"layouts_footer_links_order_inv_fk","columns":["layout_order"]}],"foreignKeys":[{"name":"layouts_footer_links_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"},{"name":"layouts_footer_links_inv_fk","columns":["footer_id"],"referencedColumns":["id"],"referencedTable":"footers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"footer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"layout_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_slide_overs_links","indexes":[{"name":"layouts_slide_overs_links_fk","columns":["layout_id"]},{"name":"layouts_slide_overs_links_inv_fk","columns":["slide_over_id"]},{"name":"layouts_slide_overs_links_unique","columns":["layout_id","slide_over_id"],"type":"unique"},{"name":"layouts_slide_overs_links_order_fk","columns":["slide_over_order"]},{"name":"layouts_slide_overs_links_order_inv_fk","columns":["layout_order"]}],"foreignKeys":[{"name":"layouts_slide_overs_links_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"},{"name":"layouts_slide_overs_links_inv_fk","columns":["slide_over_id"],"referencedColumns":["id"],"referencedTable":"slide_overs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"slide_over_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"slide_over_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"layout_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_modals_links","indexes":[{"name":"layouts_modals_links_fk","columns":["layout_id"]},{"name":"layouts_modals_links_inv_fk","columns":["modal_id"]},{"name":"layouts_modals_links_unique","columns":["layout_id","modal_id"],"type":"unique"},{"name":"layouts_modals_links_order_fk","columns":["modal_order"]},{"name":"layouts_modals_links_order_inv_fk","columns":["layout_order"]}],"foreignKeys":[{"name":"layouts_modals_links_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"},{"name":"layouts_modals_links_inv_fk","columns":["modal_id"],"referencedColumns":["id"],"referencedTable":"modals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"modal_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"modal_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"layout_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_navbar_links","indexes":[{"name":"layouts_navbar_links_fk","columns":["layout_id"]},{"name":"layouts_navbar_links_inv_fk","columns":["navbar_id"]},{"name":"layouts_navbar_links_unique","columns":["layout_id","navbar_id"],"type":"unique"},{"name":"layouts_navbar_links_order_inv_fk","columns":["layout_order"]}],"foreignKeys":[{"name":"layouts_navbar_links_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"},{"name":"layouts_navbar_links_inv_fk","columns":["navbar_id"],"referencedColumns":["id"],"referencedTable":"navbars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"navbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"layout_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_localizations_links","indexes":[{"name":"layouts_localizations_links_fk","columns":["layout_id"]},{"name":"layouts_localizations_links_inv_fk","columns":["inv_layout_id"]},{"name":"layouts_localizations_links_unique","columns":["layout_id","inv_layout_id"],"type":"unique"},{"name":"layouts_localizations_links_order_fk","columns":["layout_order"]}],"foreignKeys":[{"name":"layouts_localizations_links_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"},{"name":"layouts_localizations_links_inv_fk","columns":["inv_layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"layout_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"metatags_localizations_links","indexes":[{"name":"metatags_localizations_links_fk","columns":["metatag_id"]},{"name":"metatags_localizations_links_inv_fk","columns":["inv_metatag_id"]},{"name":"metatags_localizations_links_unique","columns":["metatag_id","inv_metatag_id"],"type":"unique"},{"name":"metatags_localizations_links_order_fk","columns":["metatag_order"]}],"foreignKeys":[{"name":"metatags_localizations_links_fk","columns":["metatag_id"],"referencedColumns":["id"],"referencedTable":"metatags","onDelete":"CASCADE"},{"name":"metatags_localizations_links_inv_fk","columns":["inv_metatag_id"],"referencedColumns":["id"],"referencedTable":"metatags","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"metatag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_metatag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"metatag_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"modals_components","indexes":[{"name":"modals_field_index","columns":["field"]},{"name":"modals_component_type_index","columns":["component_type"]},{"name":"modals_entity_fk","columns":["entity_id"]},{"name":"modals_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"modals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"modals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"modals_localizations_links","indexes":[{"name":"modals_localizations_links_fk","columns":["modal_id"]},{"name":"modals_localizations_links_inv_fk","columns":["inv_modal_id"]},{"name":"modals_localizations_links_unique","columns":["modal_id","inv_modal_id"],"type":"unique"},{"name":"modals_localizations_links_order_fk","columns":["modal_order"]}],"foreignKeys":[{"name":"modals_localizations_links_fk","columns":["modal_id"],"referencedColumns":["id"],"referencedTable":"modals","onDelete":"CASCADE"},{"name":"modals_localizations_links_inv_fk","columns":["inv_modal_id"],"referencedColumns":["id"],"referencedTable":"modals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"modal_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_modal_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"modal_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"navbars_components","indexes":[{"name":"navbars_field_index","columns":["field"]},{"name":"navbars_component_type_index","columns":["component_type"]},{"name":"navbars_entity_fk","columns":["entity_id"]},{"name":"navbars_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"navbars_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"navbars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"navbars_localizations_links","indexes":[{"name":"navbars_localizations_links_fk","columns":["navbar_id"]},{"name":"navbars_localizations_links_inv_fk","columns":["inv_navbar_id"]},{"name":"navbars_localizations_links_unique","columns":["navbar_id","inv_navbar_id"],"type":"unique"},{"name":"navbars_localizations_links_order_fk","columns":["navbar_order"]}],"foreignKeys":[{"name":"navbars_localizations_links_fk","columns":["navbar_id"],"referencedColumns":["id"],"referencedTable":"navbars","onDelete":"CASCADE"},{"name":"navbars_localizations_links_inv_fk","columns":["inv_navbar_id"],"referencedColumns":["id"],"referencedTable":"navbars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"navbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_navbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"navbar_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_components","indexes":[{"name":"pages_field_index","columns":["field"]},{"name":"pages_component_type_index","columns":["component_type"]},{"name":"pages_entity_fk","columns":["entity_id"]},{"name":"pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_layout_links","indexes":[{"name":"pages_layout_links_fk","columns":["page_id"]},{"name":"pages_layout_links_inv_fk","columns":["layout_id"]},{"name":"pages_layout_links_unique","columns":["page_id","layout_id"],"type":"unique"},{"name":"pages_layout_links_order_inv_fk","columns":["page_order"]}],"foreignKeys":[{"name":"pages_layout_links_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"},{"name":"pages_layout_links_inv_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_metatag_links","indexes":[{"name":"pages_metatag_links_fk","columns":["page_id"]},{"name":"pages_metatag_links_inv_fk","columns":["metatag_id"]},{"name":"pages_metatag_links_unique","columns":["page_id","metatag_id"],"type":"unique"},{"name":"pages_metatag_links_order_inv_fk","columns":["page_order"]}],"foreignKeys":[{"name":"pages_metatag_links_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"},{"name":"pages_metatag_links_inv_fk","columns":["metatag_id"],"referencedColumns":["id"],"referencedTable":"metatags","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"metatag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_localizations_links","indexes":[{"name":"pages_localizations_links_fk","columns":["page_id"]},{"name":"pages_localizations_links_inv_fk","columns":["inv_page_id"]},{"name":"pages_localizations_links_unique","columns":["page_id","inv_page_id"],"type":"unique"},{"name":"pages_localizations_links_order_fk","columns":["page_order"]}],"foreignKeys":[{"name":"pages_localizations_links_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"},{"name":"pages_localizations_links_inv_fk","columns":["inv_page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sidebars_components","indexes":[{"name":"sidebars_field_index","columns":["field"]},{"name":"sidebars_component_type_index","columns":["component_type"]},{"name":"sidebars_entity_fk","columns":["entity_id"]},{"name":"sidebars_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"sidebars_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"sidebars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sidebars_localizations_links","indexes":[{"name":"sidebars_localizations_links_fk","columns":["sidebar_id"]},{"name":"sidebars_localizations_links_inv_fk","columns":["inv_sidebar_id"]},{"name":"sidebars_localizations_links_unique","columns":["sidebar_id","inv_sidebar_id"],"type":"unique"},{"name":"sidebars_localizations_links_order_fk","columns":["sidebar_order"]}],"foreignKeys":[{"name":"sidebars_localizations_links_fk","columns":["sidebar_id"],"referencedColumns":["id"],"referencedTable":"sidebars","onDelete":"CASCADE"},{"name":"sidebars_localizations_links_inv_fk","columns":["inv_sidebar_id"],"referencedColumns":["id"],"referencedTable":"sidebars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"sidebar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_sidebar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sidebar_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"slide_overs_components","indexes":[{"name":"slide_overs_field_index","columns":["field"]},{"name":"slide_overs_component_type_index","columns":["component_type"]},{"name":"slide_overs_entity_fk","columns":["entity_id"]},{"name":"slide_overs_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"slide_overs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"slide_overs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"slide_overs_localizations_links","indexes":[{"name":"slide_overs_localizations_links_fk","columns":["slide_over_id"]},{"name":"slide_overs_localizations_links_inv_fk","columns":["inv_slide_over_id"]},{"name":"slide_overs_localizations_links_unique","columns":["slide_over_id","inv_slide_over_id"],"type":"unique"},{"name":"slide_overs_localizations_links_order_fk","columns":["slide_over_order"]}],"foreignKeys":[{"name":"slide_overs_localizations_links_fk","columns":["slide_over_id"],"referencedColumns":["id"],"referencedTable":"slide_overs","onDelete":"CASCADE"},{"name":"slide_overs_localizations_links_inv_fk","columns":["inv_slide_over_id"],"referencedColumns":["id"],"referencedTable":"slide_overs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slide_over_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_slide_over_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"slide_over_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sliders_components","indexes":[{"name":"sliders_field_index","columns":["field"]},{"name":"sliders_component_type_index","columns":["component_type"]},{"name":"sliders_entity_fk","columns":["entity_id"]},{"name":"sliders_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"sliders_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"sliders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sliders_localizations_links","indexes":[{"name":"sliders_localizations_links_fk","columns":["slider_id"]},{"name":"sliders_localizations_links_inv_fk","columns":["inv_slider_id"]},{"name":"sliders_localizations_links_unique","columns":["slider_id","inv_slider_id"],"type":"unique"},{"name":"sliders_localizations_links_order_fk","columns":["slider_order"]}],"foreignKeys":[{"name":"sliders_localizations_links_fk","columns":["slider_id"],"referencedColumns":["id"],"referencedTable":"sliders","onDelete":"CASCADE"},{"name":"sliders_localizations_links_inv_fk","columns":["inv_slider_id"],"referencedColumns":["id"],"referencedTable":"sliders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slider_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_slider_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"slider_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"themes_components","indexes":[{"name":"themes_field_index","columns":["field"]},{"name":"themes_component_type_index","columns":["component_type"]},{"name":"themes_entity_fk","columns":["entity_id"]},{"name":"themes_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"themes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"themes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tiers_components","indexes":[{"name":"tiers_field_index","columns":["field"]},{"name":"tiers_component_type_index","columns":["component_type"]},{"name":"tiers_entity_fk","columns":["entity_id"]},{"name":"tiers_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"tiers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"tiers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tiers_currency_links","indexes":[{"name":"tiers_currency_links_fk","columns":["tier_id"]},{"name":"tiers_currency_links_inv_fk","columns":["currency_id"]},{"name":"tiers_currency_links_unique","columns":["tier_id","currency_id"],"type":"unique"},{"name":"tiers_currency_links_order_inv_fk","columns":["tier_order"]}],"foreignKeys":[{"name":"tiers_currency_links_fk","columns":["tier_id"],"referencedColumns":["id"],"referencedTable":"tiers","onDelete":"CASCADE"},{"name":"tiers_currency_links_inv_fk","columns":["currency_id"],"referencedColumns":["id"],"referencedTable":"currencies","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tier_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"currency_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tier_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tiers_localizations_links","indexes":[{"name":"tiers_localizations_links_fk","columns":["tier_id"]},{"name":"tiers_localizations_links_inv_fk","columns":["inv_tier_id"]},{"name":"tiers_localizations_links_unique","columns":["tier_id","inv_tier_id"],"type":"unique"},{"name":"tiers_localizations_links_order_fk","columns":["tier_order"]}],"foreignKeys":[{"name":"tiers_localizations_links_fk","columns":["tier_id"],"referencedColumns":["id"],"referencedTable":"tiers","onDelete":"CASCADE"},{"name":"tiers_localizations_links_inv_fk","columns":["inv_tier_id"],"referencedColumns":["id"],"referencedTable":"tiers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tier_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_tier_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tier_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"topbars_components","indexes":[{"name":"topbars_field_index","columns":["field"]},{"name":"topbars_component_type_index","columns":["component_type"]},{"name":"topbars_entity_fk","columns":["entity_id"]},{"name":"topbars_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"topbars_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"topbars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"topbars_localizations_links","indexes":[{"name":"topbars_localizations_links_fk","columns":["topbar_id"]},{"name":"topbars_localizations_links_inv_fk","columns":["inv_topbar_id"]},{"name":"topbars_localizations_links_unique","columns":["topbar_id","inv_topbar_id"],"type":"unique"},{"name":"topbars_localizations_links_order_fk","columns":["topbar_order"]}],"foreignKeys":[{"name":"topbars_localizations_links_fk","columns":["topbar_id"],"referencedColumns":["id"],"referencedTable":"topbars","onDelete":"CASCADE"},{"name":"topbars_localizations_links_inv_fk","columns":["inv_topbar_id"],"referencedColumns":["id"],"referencedTable":"topbars","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"topbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_topbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"topbar_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_buttons_flyout_links","indexes":[{"name":"components_elements_buttons_flyout_links_fk","columns":["button_id"]},{"name":"components_elements_buttons_flyout_links_inv_fk","columns":["flyout_id"]},{"name":"components_elements_buttons_flyout_links_unique","columns":["button_id","flyout_id"],"type":"unique"}],"foreignKeys":[{"name":"components_elements_buttons_flyout_links_fk","columns":["button_id"],"referencedColumns":["id"],"referencedTable":"components_elements_buttons","onDelete":"CASCADE"},{"name":"components_elements_buttons_flyout_links_inv_fk","columns":["flyout_id"],"referencedColumns":["id"],"referencedTable":"flyouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"button_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"flyout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_buttons_arrays_components","indexes":[{"name":"components_elements_buttons_arrays_field_index","columns":["field"]},{"name":"components_elements_buttons_arrays_component_type_index","columns":["component_type"]},{"name":"components_elements_buttons_arrays_entity_fk","columns":["entity_id"]},{"name":"components_elements_buttons_arrays_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_elements_buttons_arrays_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_elements_buttons_arrays","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_inputs_components","indexes":[{"name":"components_elements_inputs_field_index","columns":["field"]},{"name":"components_elements_inputs_component_type_index","columns":["component_type"]},{"name":"components_elements_inputs_entity_fk","columns":["entity_id"]},{"name":"components_elements_inputs_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_elements_inputs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_elements_inputs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_recievers_admin_links","indexes":[{"name":"components_elements_recievers_admin_links_fk","columns":["reciever_id"]},{"name":"components_elements_recievers_admin_links_inv_fk","columns":["user_id"]},{"name":"components_elements_recievers_admin_links_unique","columns":["reciever_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"components_elements_recievers_admin_links_fk","columns":["reciever_id"],"referencedColumns":["id"],"referencedTable":"components_elements_recievers","onDelete":"CASCADE"},{"name":"components_elements_recievers_admin_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reciever_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_recievers_user_links","indexes":[{"name":"components_elements_recievers_user_links_fk","columns":["reciever_id"]},{"name":"components_elements_recievers_user_links_inv_fk","columns":["user_id"]},{"name":"components_elements_recievers_user_links_unique","columns":["reciever_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"components_elements_recievers_user_links_fk","columns":["reciever_id"],"referencedColumns":["id"],"referencedTable":"components_elements_recievers","onDelete":"CASCADE"},{"name":"components_elements_recievers_user_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reciever_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_request_inputs_components","indexes":[{"name":"components_elements_request_inputs_field_index","columns":["field"]},{"name":"components_elements_request_inputs_component_type_index","columns":["component_type"]},{"name":"components_elements_request_inputs_entity_fk","columns":["entity_id"]},{"name":"components_elements_request_inputs_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_elements_request_inputs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_elements_request_inputs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_slides_components","indexes":[{"name":"components_elements_slides_field_index","columns":["field"]},{"name":"components_elements_slides_component_type_index","columns":["component_type"]},{"name":"components_elements_slides_entity_fk","columns":["entity_id"]},{"name":"components_elements_slides_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_elements_slides_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_elements_slides","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_functions_form_side_effects_components","indexes":[{"name":"components_functions_form_side_effects_field_index","columns":["field"]},{"name":"components_functions_form_side_effects_component_type_index","columns":["component_type"]},{"name":"components_functions_form_side_effects_entity_fk","columns":["entity_id"]},{"name":"components_functions_form_side_effects_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_functions_form_side_effects_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_functions_form_side_effects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_alert_blocks_components","indexes":[{"name":"components_page_blocks_alert_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_alert_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_alert_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_alert_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_alert_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_alert_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_contact_section_blocks_components","indexes":[{"name":"components_page_blocks_contact_section_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_contact_section_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_contact_section_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_contact_section_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_contact_section_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_contact_section_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_contact_section_blocks_form_links","indexes":[{"name":"components_page_blocks_contact_section_blocks_form_links_fk","columns":["contact_section_block_id"]},{"name":"components_page_blocks_contact_section_blocks_form_links_inv_fk","columns":["form_id"]},{"name":"components_page_blocks_contact_section_blocks_form_links_unique","columns":["contact_section_block_id","form_id"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_contact_section_blocks_form_links_fk","columns":["contact_section_block_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_contact_section_blocks","onDelete":"CASCADE"},{"name":"components_page_blocks_contact_section_blocks_form_links_inv_fk","columns":["form_id"],"referencedColumns":["id"],"referencedTable":"forms","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"contact_section_block_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"form_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_cta_section_blocks_components","indexes":[{"name":"components_page_blocks_cta_section_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_cta_section_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_cta_section_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_cta_section_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_cta_section_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_cta_section_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_faqs_blocks_components","indexes":[{"name":"components_page_blocks_faqs_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_faqs_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_faqs_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_faqs_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_faqs_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_faqs_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_features_section_blocks_components","indexes":[{"name":"components_page_blocks_features_section_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_features_section_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_features_section_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_features_section_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_features_section_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_features_section_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_footer_blocks_components","indexes":[{"name":"components_page_blocks_footer_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_footer_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_footer_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_footer_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_footer_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_footer_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_hero_section_blocks_components","indexes":[{"name":"components_page_blocks_hero_section_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_hero_section_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_hero_section_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_hero_section_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_hero_section_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_hero_section_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_incentives_blocks_components","indexes":[{"name":"components_page_blocks_incentives_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_incentives_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_incentives_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_incentives_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_incentives_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_incentives_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_logotypes_cloud_blocks_components","indexes":[{"name":"components_page_blocks_logotypes_cloud_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_logotypes_cloud_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_logotypes_cloud_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_logotypes_cloud_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_logotypes_cloud_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_logotypes_cloud_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_navbar_blocks_components","indexes":[{"name":"components_page_blocks_navbar_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_navbar_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_navbar_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_navbar_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_navbar_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_navbar_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_not_found_blocks_components","indexes":[{"name":"components_page_blocks_not_found_blocks_field_index","columns":["field"]},{"name":"components_page_blocks_not_found_blocks_component_type_index","columns":["component_type"]},{"name":"components_page_blocks_not_found_blocks_entity_fk","columns":["entity_id"]},{"name":"components_page_blocks_not_found_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_not_found_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_not_found_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_pricing_blocks_tiers_links","indexes":[{"name":"components_page_blocks_pricing_blocks_tiers_links_fk","columns":["pricing_block_id"]},{"name":"components_page_blocks_pricing_blocks_tiers_links_inv_fk","columns":["tier_id"]},{"name":"components_page_blocks_pricing_blocks_tiers_links_unique","columns":["pricing_block_id","tier_id"],"type":"unique"},{"name":"components_page_blocks_pricing_blocks_tiers_links_order_fk","columns":["tier_order"]}],"foreignKeys":[{"name":"components_page_blocks_pricing_blocks_tiers_links_fk","columns":["pricing_block_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_pricing_blocks","onDelete":"CASCADE"},{"name":"components_page_blocks_pricing_blocks_tiers_links_inv_fk","columns":["tier_id"],"referencedColumns":["id"],"referencedTable":"tiers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pricing_block_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tier_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tier_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_reviews_list_blocks_reviews_links","indexes":[{"name":"components_page_blocks_reviews_list_blocks_reviews_links_fk","columns":["reviews_list_block_id"]},{"name":"components_page_blocks_reviews_list_blocks_reviews_links_inv_fk","columns":["review_id"]},{"name":"components_page_blocks_reviews_list_blocks_reviews_links_unique","columns":["reviews_list_block_id","review_id"],"type":"unique"},{"name":"components_page_blocks_reviews_list_blocks_reviews_links_order_fk","columns":["review_order"]}],"foreignKeys":[{"name":"components_page_blocks_reviews_list_blocks_reviews_links_fk","columns":["reviews_list_block_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_reviews_list_blocks","onDelete":"CASCADE"},{"name":"components_page_blocks_reviews_list_blocks_reviews_links_inv_fk","columns":["review_id"],"referencedColumns":["id"],"referencedTable":"reviews","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reviews_list_block_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"review_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"review_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_blocks_slider_blocks_slider_links","indexes":[{"name":"components_page_blocks_slider_blocks_slider_links_fk","columns":["slider_block_id"]},{"name":"components_page_blocks_slider_blocks_slider_links_inv_fk","columns":["slider_id"]},{"name":"components_page_blocks_slider_blocks_slider_links_unique","columns":["slider_block_id","slider_id"],"type":"unique"}],"foreignKeys":[{"name":"components_page_blocks_slider_blocks_slider_links_fk","columns":["slider_block_id"],"referencedColumns":["id"],"referencedTable":"components_page_blocks_slider_blocks","onDelete":"CASCADE"},{"name":"components_page_blocks_slider_blocks_slider_links_inv_fk","columns":["slider_id"],"referencedColumns":["id"],"referencedTable":"sliders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slider_block_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"slider_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-12-16 21:30:42.499	c8befc5e0dc0ab29915f856fed4bc012
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: telegrams; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.telegrams (id, name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: themes; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.themes (id, theme, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: themes_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.themes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: tiers; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.tiers (id, title, description, price, type, period, old_price, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: tiers_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.tiers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: tiers_currency_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.tiers_currency_links (id, tier_id, currency_id, tier_order) FROM stdin;
\.


--
-- Data for Name: tiers_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.tiers_localizations_links (id, tier_id, inv_tier_id, tier_order) FROM stdin;
\.


--
-- Data for Name: topbars; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.topbars (id, title, uid, variant, class_name, "position", side, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: topbars_components; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.topbars_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: topbars_localizations_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.topbars_localizations_links (id, topbar_id, inv_topbar_id, topbar_order) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2740	api::modal.modal.find	2023-12-19 14:18:38.582	2023-12-19 14:18:38.582	\N	\N
2741	api::modal.modal.findOne	2023-12-19 14:18:38.587	2023-12-19 14:18:38.587	\N	\N
2742	api::slider.slider.find	2023-12-19 14:18:38.591	2023-12-19 14:18:38.591	\N	\N
2743	api::slider.slider.findOne	2023-12-19 14:18:38.595	2023-12-19 14:18:38.595	\N	\N
2744	api::theme.theme.find	2023-12-19 14:18:38.599	2023-12-19 14:18:38.599	\N	\N
2745	api::robot.robot.find	2023-12-19 14:18:38.602	2023-12-19 14:18:38.602	\N	\N
2746	api::form.form.find	2023-12-19 14:18:38.605	2023-12-19 14:18:38.605	\N	\N
2747	api::form.form.findOne	2023-12-19 14:18:38.609	2023-12-19 14:18:38.609	\N	\N
2748	api::form-request.form-request.create	2023-12-19 14:18:38.612	2023-12-19 14:18:38.612	\N	\N
2749	api::review.review.find	2023-12-19 14:18:38.615	2023-12-19 14:18:38.615	\N	\N
2750	api::review.review.findOne	2023-12-19 14:18:38.618	2023-12-19 14:18:38.618	\N	\N
2751	api::tier.tier.find	2023-12-19 14:18:38.621	2023-12-19 14:18:38.621	\N	\N
2752	api::tier.tier.findOne	2023-12-19 14:18:38.624	2023-12-19 14:18:38.624	\N	\N
2753	api::currency.currency.find	2023-12-19 14:18:38.627	2023-12-19 14:18:38.627	\N	\N
2754	api::currency.currency.findOne	2023-12-19 14:18:38.631	2023-12-19 14:18:38.631	\N	\N
2755	api::slide-over.slide-over.find	2023-12-19 14:18:38.634	2023-12-19 14:18:38.634	\N	\N
2756	api::slide-over.slide-over.findOne	2023-12-19 14:18:38.641	2023-12-19 14:18:38.641	\N	\N
2757	api::sidebar.sidebar.find	2023-12-19 14:18:38.644	2023-12-19 14:18:38.644	\N	\N
2758	api::sidebar.sidebar.findOne	2023-12-19 14:18:38.647	2023-12-19 14:18:38.647	\N	\N
2759	api::topbar.topbar.find	2023-12-19 14:18:38.65	2023-12-19 14:18:38.65	\N	\N
2760	api::topbar.topbar.findOne	2023-12-19 14:18:38.653	2023-12-19 14:18:38.653	\N	\N
2761	api::navbar.navbar.find	2023-12-19 14:18:38.655	2023-12-19 14:18:38.655	\N	\N
2762	api::navbar.navbar.findOne	2023-12-19 14:18:38.658	2023-12-19 14:18:38.658	\N	\N
2763	api::footer.footer.find	2023-12-19 14:18:38.662	2023-12-19 14:18:38.662	\N	\N
2764	api::footer.footer.findOne	2023-12-19 14:18:38.666	2023-12-19 14:18:38.666	\N	\N
2765	api::layout.layout.find	2023-12-19 14:18:38.669	2023-12-19 14:18:38.669	\N	\N
2766	api::layout.layout.findOne	2023-12-19 14:18:38.673	2023-12-19 14:18:38.673	\N	\N
2767	api::layout.layout.findByPageUrl	2023-12-19 14:18:38.676	2023-12-19 14:18:38.676	\N	\N
2768	api::metatag.metatag.find	2023-12-19 14:18:38.679	2023-12-19 14:18:38.679	\N	\N
2769	api::metatag.metatag.findOne	2023-12-19 14:18:38.683	2023-12-19 14:18:38.683	\N	\N
2770	api::flyout.flyout.find	2023-12-19 14:18:38.686	2023-12-19 14:18:38.686	\N	\N
2771	api::flyout.flyout.findOne	2023-12-19 14:18:38.69	2023-12-19 14:18:38.69	\N	\N
2772	api::page.page.find	2023-12-19 14:18:38.693	2023-12-19 14:18:38.693	\N	\N
2773	api::page.page.findOne	2023-12-19 14:18:38.696	2023-12-19 14:18:38.696	\N	\N
2774	api::page.page.getByUrl	2023-12-19 14:18:38.699	2023-12-19 14:18:38.699	\N	\N
2775	api::page.page.getUrls	2023-12-19 14:18:38.702	2023-12-19 14:18:38.702	\N	\N
2776	api::loader.loader.find	2023-12-19 14:18:38.705	2023-12-19 14:18:38.705	\N	\N
2777	api::telegram.telegram.webhook	2023-12-19 14:18:38.708	2023-12-19 14:18:38.708	\N	\N
2778	plugin::i18n.locales.listLocales	2023-12-19 14:18:38.711	2023-12-19 14:18:38.711	\N	\N
2779	api::modal.modal.find	2023-12-19 14:18:38.714	2023-12-19 14:18:38.714	\N	\N
2780	api::modal.modal.findOne	2023-12-19 14:18:38.717	2023-12-19 14:18:38.717	\N	\N
2781	api::slider.slider.find	2023-12-19 14:18:38.72	2023-12-19 14:18:38.72	\N	\N
2782	api::slider.slider.findOne	2023-12-19 14:18:38.723	2023-12-19 14:18:38.723	\N	\N
2783	api::theme.theme.find	2023-12-19 14:18:38.726	2023-12-19 14:18:38.726	\N	\N
2784	api::robot.robot.find	2023-12-19 14:18:38.729	2023-12-19 14:18:38.729	\N	\N
2785	api::form.form.find	2023-12-19 14:18:38.733	2023-12-19 14:18:38.733	\N	\N
2786	api::form.form.findOne	2023-12-19 14:18:38.736	2023-12-19 14:18:38.736	\N	\N
2787	api::form-request.form-request.create	2023-12-19 14:18:38.739	2023-12-19 14:18:38.739	\N	\N
2788	api::review.review.find	2023-12-19 14:18:38.742	2023-12-19 14:18:38.742	\N	\N
2789	api::review.review.findOne	2023-12-19 14:18:38.745	2023-12-19 14:18:38.745	\N	\N
2790	api::tier.tier.find	2023-12-19 14:18:38.748	2023-12-19 14:18:38.748	\N	\N
2791	api::tier.tier.findOne	2023-12-19 14:18:38.751	2023-12-19 14:18:38.751	\N	\N
2792	api::currency.currency.find	2023-12-19 14:18:38.754	2023-12-19 14:18:38.754	\N	\N
2793	api::currency.currency.findOne	2023-12-19 14:18:38.759	2023-12-19 14:18:38.759	\N	\N
2794	api::slide-over.slide-over.find	2023-12-19 14:18:38.762	2023-12-19 14:18:38.762	\N	\N
2795	api::slide-over.slide-over.findOne	2023-12-19 14:18:38.765	2023-12-19 14:18:38.765	\N	\N
2796	api::sidebar.sidebar.find	2023-12-19 14:18:38.771	2023-12-19 14:18:38.771	\N	\N
2797	api::sidebar.sidebar.findOne	2023-12-19 14:18:38.775	2023-12-19 14:18:38.775	\N	\N
2798	api::topbar.topbar.find	2023-12-19 14:18:38.778	2023-12-19 14:18:38.778	\N	\N
2799	api::topbar.topbar.findOne	2023-12-19 14:18:38.781	2023-12-19 14:18:38.781	\N	\N
2800	api::navbar.navbar.find	2023-12-19 14:18:38.784	2023-12-19 14:18:38.784	\N	\N
2801	api::navbar.navbar.findOne	2023-12-19 14:18:38.787	2023-12-19 14:18:38.787	\N	\N
2802	api::footer.footer.find	2023-12-19 14:18:38.79	2023-12-19 14:18:38.79	\N	\N
2803	api::footer.footer.findOne	2023-12-19 14:18:38.793	2023-12-19 14:18:38.793	\N	\N
2804	api::layout.layout.find	2023-12-19 14:18:38.796	2023-12-19 14:18:38.796	\N	\N
2805	api::layout.layout.findOne	2023-12-19 14:18:38.8	2023-12-19 14:18:38.8	\N	\N
2806	api::layout.layout.findByPageUrl	2023-12-19 14:18:38.803	2023-12-19 14:18:38.803	\N	\N
2807	api::metatag.metatag.find	2023-12-19 14:18:38.806	2023-12-19 14:18:38.806	\N	\N
2808	api::metatag.metatag.findOne	2023-12-19 14:18:38.81	2023-12-19 14:18:38.81	\N	\N
2809	api::flyout.flyout.find	2023-12-19 14:18:38.813	2023-12-19 14:18:38.813	\N	\N
2810	api::flyout.flyout.findOne	2023-12-19 14:18:38.816	2023-12-19 14:18:38.816	\N	\N
2811	api::page.page.find	2023-12-19 14:18:38.819	2023-12-19 14:18:38.819	\N	\N
2812	api::page.page.findOne	2023-12-19 14:18:38.822	2023-12-19 14:18:38.822	\N	\N
2813	api::page.page.getByUrl	2023-12-19 14:18:38.825	2023-12-19 14:18:38.825	\N	\N
2814	api::page.page.getUrls	2023-12-19 14:18:38.829	2023-12-19 14:18:38.829	\N	\N
2815	api::loader.loader.find	2023-12-19 14:18:38.832	2023-12-19 14:18:38.832	\N	\N
2816	api::telegram.telegram.webhook	2023-12-19 14:18:38.835	2023-12-19 14:18:38.835	\N	\N
2817	plugin::i18n.locales.listLocales	2023-12-19 14:18:38.838	2023-12-19 14:18:38.838	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
2740	2740	1	1
2741	2741	1	2
2742	2742	1	3
2743	2743	1	4
2744	2744	1	5
2745	2745	1	6
2746	2746	1	7
2747	2747	1	8
2748	2748	1	9
2749	2749	1	10
2750	2750	1	11
2751	2751	1	12
2752	2752	1	13
2753	2753	1	14
2754	2754	1	15
2755	2755	1	16
2756	2756	1	17
2757	2757	1	18
2758	2758	1	19
2759	2759	1	20
2760	2760	1	21
2761	2761	1	22
2762	2762	1	23
2763	2763	1	24
2764	2764	1	25
2765	2765	1	26
2766	2766	1	27
2767	2767	1	28
2768	2768	1	29
2769	2769	1	30
2770	2770	1	31
2771	2771	1	32
2772	2772	1	33
2773	2773	1	34
2774	2774	1	35
2775	2775	1	36
2776	2776	1	37
2777	2777	1	38
2778	2778	1	39
2779	2779	2	1
2780	2780	2	2
2781	2781	2	3
2782	2782	2	4
2783	2783	2	5
2784	2784	2	6
2785	2785	2	7
2786	2786	2	8
2787	2787	2	9
2788	2788	2	10
2789	2789	2	11
2790	2790	2	12
2791	2791	2	13
2792	2792	2	14
2793	2793	2	15
2794	2794	2	16
2795	2795	2	17
2796	2796	2	18
2797	2797	2	19
2798	2798	2	20
2799	2799	2	21
2800	2800	2	22
2801	2801	2	23
2802	2802	2	24
2803	2803	2	25
2804	2804	2	26
2805	2805	2	27
2806	2806	2	28
2807	2807	2	29
2808	2808	2	30
2809	2809	2	31
2810	2810	2	32
2811	2811	2	33
2812	2812	2	34
2813	2813	2	35
2814	2814	2	36
2815	2815	2	37
2816	2816	2	38
2817	2817	2	39
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2023-12-16 21:30:42.97	2023-12-16 21:30:42.97	\N	\N
2	Public	Default role given to unauthenticated user.	public	2023-12-16 21:30:42.974	2023-12-16 21:30:42.974	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Testing	1	/1	2023-12-18 12:45:52.858	2023-12-18 12:45:52.858	1	1
2	New Folder	2	/2	2023-12-18 12:51:49.99	2023-12-18 12:51:49.99	1	1
3	Inside	3	/2/3	2023-12-18 12:51:56.278	2023-12-18 12:51:56.278	1	1
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: dev-portfolio
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
1	3	2	1
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 355, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 355, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: components_elements_buttons_arrays_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_buttons_arrays_components_id_seq', 1, false);


--
-- Name: components_elements_buttons_arrays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_buttons_arrays_id_seq', 1, false);


--
-- Name: components_elements_buttons_flyout_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_buttons_flyout_links_id_seq', 1, false);


--
-- Name: components_elements_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_buttons_id_seq', 1, false);


--
-- Name: components_elements_date_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_date_values_id_seq', 1, false);


--
-- Name: components_elements_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_faqs_id_seq', 1, false);


--
-- Name: components_elements_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_features_id_seq', 1, false);


--
-- Name: components_elements_fonts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_fonts_id_seq', 1, false);


--
-- Name: components_elements_input_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_input_options_id_seq', 1, false);


--
-- Name: components_elements_inputs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_inputs_components_id_seq', 1, false);


--
-- Name: components_elements_inputs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_inputs_id_seq', 1, false);


--
-- Name: components_elements_logotypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_logotypes_id_seq', 10, true);


--
-- Name: components_elements_recievers_admin_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_recievers_admin_links_id_seq', 1, false);


--
-- Name: components_elements_recievers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_recievers_id_seq', 1, false);


--
-- Name: components_elements_recievers_user_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_recievers_user_links_id_seq', 1, false);


--
-- Name: components_elements_request_inputs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_request_inputs_components_id_seq', 1, false);


--
-- Name: components_elements_request_inputs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_request_inputs_id_seq', 1, false);


--
-- Name: components_elements_slides_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_slides_components_id_seq', 1, false);


--
-- Name: components_elements_slides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_elements_slides_id_seq', 1, false);


--
-- Name: components_functions_configs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_functions_configs_id_seq', 1, false);


--
-- Name: components_functions_form_side_effects_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_functions_form_side_effects_components_id_seq', 1, false);


--
-- Name: components_functions_form_side_effects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_functions_form_side_effects_id_seq', 1, false);


--
-- Name: components_page_blocks_alert_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_alert_blocks_components_id_seq', 1, false);


--
-- Name: components_page_blocks_alert_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_alert_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_contact_section_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_contact_section_blocks_components_id_seq', 1, false);


--
-- Name: components_page_blocks_contact_section_blocks_form_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_contact_section_blocks_form_links_id_seq', 1, false);


--
-- Name: components_page_blocks_contact_section_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_contact_section_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_cta_section_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_cta_section_blocks_components_id_seq', 1, false);


--
-- Name: components_page_blocks_cta_section_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_cta_section_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_faqs_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_faqs_blocks_components_id_seq', 1, false);


--
-- Name: components_page_blocks_faqs_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_faqs_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_features_section_blocks_component_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_features_section_blocks_component_id_seq', 1, false);


--
-- Name: components_page_blocks_features_section_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_features_section_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_footer_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_footer_blocks_components_id_seq', 1, false);


--
-- Name: components_page_blocks_footer_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_footer_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_header_section_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_header_section_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_hero_section_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_hero_section_blocks_components_id_seq', 1, false);


--
-- Name: components_page_blocks_hero_section_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_hero_section_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_incentives_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_incentives_blocks_components_id_seq', 1, false);


--
-- Name: components_page_blocks_incentives_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_incentives_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_logotypes_cloud_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_logotypes_cloud_blocks_components_id_seq', 1, false);


--
-- Name: components_page_blocks_logotypes_cloud_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_logotypes_cloud_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_navbar_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_navbar_blocks_components_id_seq', 12, true);


--
-- Name: components_page_blocks_navbar_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_navbar_blocks_id_seq', 10, true);


--
-- Name: components_page_blocks_not_found_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_not_found_blocks_components_id_seq', 1, false);


--
-- Name: components_page_blocks_not_found_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_not_found_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_pricing_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_pricing_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_pricing_blocks_tiers_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_pricing_blocks_tiers_links_id_seq', 1, false);


--
-- Name: components_page_blocks_reviews_list_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_reviews_list_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_reviews_list_blocks_reviews_links_id_seq', 1, false);


--
-- Name: components_page_blocks_reviews_table_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_reviews_table_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_slider_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_slider_blocks_id_seq', 1, false);


--
-- Name: components_page_blocks_slider_blocks_slider_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.components_page_blocks_slider_blocks_slider_links_id_seq', 1, false);


--
-- Name: configurations_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.configurations_components_id_seq', 1, false);


--
-- Name: configurations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.configurations_id_seq', 1, false);


--
-- Name: currencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.currencies_id_seq', 1, false);


--
-- Name: currencies_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.currencies_localizations_links_id_seq', 1, false);


--
-- Name: email_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.email_templates_id_seq', 1, false);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 2, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.files_id_seq', 12, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 12, true);


--
-- Name: flyouts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.flyouts_components_id_seq', 1, false);


--
-- Name: flyouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.flyouts_id_seq', 1, false);


--
-- Name: flyouts_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.flyouts_localizations_links_id_seq', 1, false);


--
-- Name: footers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.footers_components_id_seq', 1, false);


--
-- Name: footers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.footers_id_seq', 1, false);


--
-- Name: footers_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.footers_localizations_links_id_seq', 1, false);


--
-- Name: form_requests_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.form_requests_components_id_seq', 1, false);


--
-- Name: form_requests_form_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.form_requests_form_links_id_seq', 1, false);


--
-- Name: form_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.form_requests_id_seq', 1, false);


--
-- Name: forms_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.forms_components_id_seq', 1, false);


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.forms_id_seq', 1, false);


--
-- Name: forms_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.forms_localizations_links_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: layouts_footer_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.layouts_footer_links_id_seq', 1, false);


--
-- Name: layouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.layouts_id_seq', 1, false);


--
-- Name: layouts_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.layouts_localizations_links_id_seq', 1, false);


--
-- Name: layouts_modals_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.layouts_modals_links_id_seq', 1, false);


--
-- Name: layouts_navbar_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.layouts_navbar_links_id_seq', 1, false);


--
-- Name: layouts_sidebar_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.layouts_sidebar_links_id_seq', 1, false);


--
-- Name: layouts_slide_overs_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.layouts_slide_overs_links_id_seq', 1, false);


--
-- Name: layouts_topbar_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.layouts_topbar_links_id_seq', 1, false);


--
-- Name: loaders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.loaders_id_seq', 1, false);


--
-- Name: metatags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.metatags_id_seq', 1, false);


--
-- Name: metatags_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.metatags_localizations_links_id_seq', 1, false);


--
-- Name: modals_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.modals_components_id_seq', 1, false);


--
-- Name: modals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.modals_id_seq', 1, false);


--
-- Name: modals_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.modals_localizations_links_id_seq', 1, false);


--
-- Name: navbars_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.navbars_components_id_seq', 12, true);


--
-- Name: navbars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.navbars_id_seq', 7, true);


--
-- Name: navbars_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.navbars_localizations_links_id_seq', 1, false);


--
-- Name: pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.pages_components_id_seq', 1, false);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.pages_id_seq', 1, false);


--
-- Name: pages_layout_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.pages_layout_links_id_seq', 1, false);


--
-- Name: pages_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.pages_localizations_links_id_seq', 1, false);


--
-- Name: pages_metatag_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.pages_metatag_links_id_seq', 1, false);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1, false);


--
-- Name: robots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.robots_id_seq', 1, false);


--
-- Name: sidebars_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.sidebars_components_id_seq', 1, false);


--
-- Name: sidebars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.sidebars_id_seq', 1, false);


--
-- Name: sidebars_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.sidebars_localizations_links_id_seq', 1, false);


--
-- Name: slide_overs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.slide_overs_components_id_seq', 1, false);


--
-- Name: slide_overs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.slide_overs_id_seq', 1, false);


--
-- Name: slide_overs_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.slide_overs_localizations_links_id_seq', 1, false);


--
-- Name: sliders_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.sliders_components_id_seq', 1, false);


--
-- Name: sliders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.sliders_id_seq', 1, false);


--
-- Name: sliders_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.sliders_localizations_links_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 74, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: telegrams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.telegrams_id_seq', 1, false);


--
-- Name: themes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.themes_components_id_seq', 1, false);


--
-- Name: themes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.themes_id_seq', 1, false);


--
-- Name: tiers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.tiers_components_id_seq', 1, false);


--
-- Name: tiers_currency_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.tiers_currency_links_id_seq', 1, false);


--
-- Name: tiers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.tiers_id_seq', 1, false);


--
-- Name: tiers_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.tiers_localizations_links_id_seq', 1, false);


--
-- Name: topbars_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.topbars_components_id_seq', 1, false);


--
-- Name: topbars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.topbars_id_seq', 1, false);


--
-- Name: topbars_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.topbars_localizations_links_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 2817, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 2817, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 3, true);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev-portfolio
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, true);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: components_elements_buttons_arrays_components components_elements_buttons_arrays_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_arrays_components
    ADD CONSTRAINT components_elements_buttons_arrays_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_buttons_arrays components_elements_buttons_arrays_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_arrays
    ADD CONSTRAINT components_elements_buttons_arrays_pkey PRIMARY KEY (id);


--
-- Name: components_elements_buttons_arrays_components components_elements_buttons_arrays_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_arrays_components
    ADD CONSTRAINT components_elements_buttons_arrays_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_elements_buttons_flyout_links components_elements_buttons_flyout_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_flyout_links
    ADD CONSTRAINT components_elements_buttons_flyout_links_pkey PRIMARY KEY (id);


--
-- Name: components_elements_buttons_flyout_links components_elements_buttons_flyout_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_flyout_links
    ADD CONSTRAINT components_elements_buttons_flyout_links_unique UNIQUE (button_id, flyout_id);


--
-- Name: components_elements_buttons components_elements_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons
    ADD CONSTRAINT components_elements_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_elements_date_values components_elements_date_values_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_date_values
    ADD CONSTRAINT components_elements_date_values_pkey PRIMARY KEY (id);


--
-- Name: components_elements_faqs components_elements_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_faqs
    ADD CONSTRAINT components_elements_faqs_pkey PRIMARY KEY (id);


--
-- Name: components_elements_features components_elements_features_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_features
    ADD CONSTRAINT components_elements_features_pkey PRIMARY KEY (id);


--
-- Name: components_elements_fonts components_elements_fonts_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_fonts
    ADD CONSTRAINT components_elements_fonts_pkey PRIMARY KEY (id);


--
-- Name: components_elements_input_options components_elements_input_options_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_input_options
    ADD CONSTRAINT components_elements_input_options_pkey PRIMARY KEY (id);


--
-- Name: components_elements_inputs_components components_elements_inputs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_inputs_components
    ADD CONSTRAINT components_elements_inputs_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_inputs components_elements_inputs_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_inputs
    ADD CONSTRAINT components_elements_inputs_pkey PRIMARY KEY (id);


--
-- Name: components_elements_inputs_components components_elements_inputs_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_inputs_components
    ADD CONSTRAINT components_elements_inputs_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_elements_logotypes components_elements_logotypes_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_logotypes
    ADD CONSTRAINT components_elements_logotypes_pkey PRIMARY KEY (id);


--
-- Name: components_elements_recievers_admin_links components_elements_recievers_admin_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_admin_links
    ADD CONSTRAINT components_elements_recievers_admin_links_pkey PRIMARY KEY (id);


--
-- Name: components_elements_recievers_admin_links components_elements_recievers_admin_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_admin_links
    ADD CONSTRAINT components_elements_recievers_admin_links_unique UNIQUE (reciever_id, user_id);


--
-- Name: components_elements_recievers components_elements_recievers_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers
    ADD CONSTRAINT components_elements_recievers_pkey PRIMARY KEY (id);


--
-- Name: components_elements_recievers_user_links components_elements_recievers_user_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_user_links
    ADD CONSTRAINT components_elements_recievers_user_links_pkey PRIMARY KEY (id);


--
-- Name: components_elements_recievers_user_links components_elements_recievers_user_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_user_links
    ADD CONSTRAINT components_elements_recievers_user_links_unique UNIQUE (reciever_id, user_id);


--
-- Name: components_elements_request_inputs_components components_elements_request_inputs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_request_inputs_components
    ADD CONSTRAINT components_elements_request_inputs_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_request_inputs components_elements_request_inputs_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_request_inputs
    ADD CONSTRAINT components_elements_request_inputs_pkey PRIMARY KEY (id);


--
-- Name: components_elements_request_inputs_components components_elements_request_inputs_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_request_inputs_components
    ADD CONSTRAINT components_elements_request_inputs_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_elements_slides_components components_elements_slides_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_slides_components
    ADD CONSTRAINT components_elements_slides_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_slides components_elements_slides_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_slides
    ADD CONSTRAINT components_elements_slides_pkey PRIMARY KEY (id);


--
-- Name: components_elements_slides_components components_elements_slides_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_slides_components
    ADD CONSTRAINT components_elements_slides_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_functions_configs components_functions_configs_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_functions_configs
    ADD CONSTRAINT components_functions_configs_pkey PRIMARY KEY (id);


--
-- Name: components_functions_form_side_effects_components components_functions_form_side_effects_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_functions_form_side_effects_components
    ADD CONSTRAINT components_functions_form_side_effects_components_pkey PRIMARY KEY (id);


--
-- Name: components_functions_form_side_effects components_functions_form_side_effects_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_functions_form_side_effects
    ADD CONSTRAINT components_functions_form_side_effects_pkey PRIMARY KEY (id);


--
-- Name: components_functions_form_side_effects_components components_functions_form_side_effects_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_functions_form_side_effects_components
    ADD CONSTRAINT components_functions_form_side_effects_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_alert_blocks_components components_page_blocks_alert_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_alert_blocks_components
    ADD CONSTRAINT components_page_blocks_alert_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_alert_blocks components_page_blocks_alert_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_alert_blocks
    ADD CONSTRAINT components_page_blocks_alert_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_alert_blocks_components components_page_blocks_alert_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_alert_blocks_components
    ADD CONSTRAINT components_page_blocks_alert_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_contact_section_blocks_components components_page_blocks_contact_section_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks_components
    ADD CONSTRAINT components_page_blocks_contact_section_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_contact_section_blocks_form_links components_page_blocks_contact_section_blocks_form_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks_form_links
    ADD CONSTRAINT components_page_blocks_contact_section_blocks_form_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_contact_section_blocks_form_links components_page_blocks_contact_section_blocks_form_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks_form_links
    ADD CONSTRAINT components_page_blocks_contact_section_blocks_form_links_unique UNIQUE (contact_section_block_id, form_id);


--
-- Name: components_page_blocks_contact_section_blocks components_page_blocks_contact_section_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks
    ADD CONSTRAINT components_page_blocks_contact_section_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_contact_section_blocks_components components_page_blocks_contact_section_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks_components
    ADD CONSTRAINT components_page_blocks_contact_section_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_cta_section_blocks_components components_page_blocks_cta_section_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_cta_section_blocks_components
    ADD CONSTRAINT components_page_blocks_cta_section_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_cta_section_blocks components_page_blocks_cta_section_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_cta_section_blocks
    ADD CONSTRAINT components_page_blocks_cta_section_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_cta_section_blocks_components components_page_blocks_cta_section_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_cta_section_blocks_components
    ADD CONSTRAINT components_page_blocks_cta_section_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_faqs_blocks_components components_page_blocks_faqs_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_faqs_blocks_components
    ADD CONSTRAINT components_page_blocks_faqs_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_faqs_blocks components_page_blocks_faqs_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_faqs_blocks
    ADD CONSTRAINT components_page_blocks_faqs_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_faqs_blocks_components components_page_blocks_faqs_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_faqs_blocks_components
    ADD CONSTRAINT components_page_blocks_faqs_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_features_section_blocks_components components_page_blocks_features_section_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_features_section_blocks_components
    ADD CONSTRAINT components_page_blocks_features_section_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_features_section_blocks components_page_blocks_features_section_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_features_section_blocks
    ADD CONSTRAINT components_page_blocks_features_section_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_features_section_blocks_components components_page_blocks_features_section_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_features_section_blocks_components
    ADD CONSTRAINT components_page_blocks_features_section_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_footer_blocks_components components_page_blocks_footer_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_footer_blocks_components
    ADD CONSTRAINT components_page_blocks_footer_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_footer_blocks components_page_blocks_footer_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_footer_blocks
    ADD CONSTRAINT components_page_blocks_footer_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_footer_blocks_components components_page_blocks_footer_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_footer_blocks_components
    ADD CONSTRAINT components_page_blocks_footer_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_header_section_blocks components_page_blocks_header_section_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_header_section_blocks
    ADD CONSTRAINT components_page_blocks_header_section_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_hero_section_blocks_components components_page_blocks_hero_section_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_hero_section_blocks_components
    ADD CONSTRAINT components_page_blocks_hero_section_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_hero_section_blocks components_page_blocks_hero_section_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_hero_section_blocks
    ADD CONSTRAINT components_page_blocks_hero_section_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_hero_section_blocks_components components_page_blocks_hero_section_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_hero_section_blocks_components
    ADD CONSTRAINT components_page_blocks_hero_section_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_incentives_blocks_components components_page_blocks_incentives_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_incentives_blocks_components
    ADD CONSTRAINT components_page_blocks_incentives_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_incentives_blocks components_page_blocks_incentives_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_incentives_blocks
    ADD CONSTRAINT components_page_blocks_incentives_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_incentives_blocks_components components_page_blocks_incentives_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_incentives_blocks_components
    ADD CONSTRAINT components_page_blocks_incentives_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_logotypes_cloud_blocks_components components_page_blocks_logotypes_cloud_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_logotypes_cloud_blocks_components
    ADD CONSTRAINT components_page_blocks_logotypes_cloud_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_logotypes_cloud_blocks components_page_blocks_logotypes_cloud_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_logotypes_cloud_blocks
    ADD CONSTRAINT components_page_blocks_logotypes_cloud_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_logotypes_cloud_blocks_components components_page_blocks_logotypes_cloud_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_logotypes_cloud_blocks_components
    ADD CONSTRAINT components_page_blocks_logotypes_cloud_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_navbar_blocks_components components_page_blocks_navbar_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_navbar_blocks_components
    ADD CONSTRAINT components_page_blocks_navbar_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_navbar_blocks components_page_blocks_navbar_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_navbar_blocks
    ADD CONSTRAINT components_page_blocks_navbar_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_navbar_blocks_components components_page_blocks_navbar_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_navbar_blocks_components
    ADD CONSTRAINT components_page_blocks_navbar_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_not_found_blocks_components components_page_blocks_not_found_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_not_found_blocks_components
    ADD CONSTRAINT components_page_blocks_not_found_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_not_found_blocks components_page_blocks_not_found_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_not_found_blocks
    ADD CONSTRAINT components_page_blocks_not_found_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_not_found_blocks_components components_page_blocks_not_found_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_not_found_blocks_components
    ADD CONSTRAINT components_page_blocks_not_found_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_blocks_pricing_blocks components_page_blocks_pricing_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_pricing_blocks
    ADD CONSTRAINT components_page_blocks_pricing_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_pricing_blocks_tiers_links components_page_blocks_pricing_blocks_tiers_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_pricing_blocks_tiers_links
    ADD CONSTRAINT components_page_blocks_pricing_blocks_tiers_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_pricing_blocks_tiers_links components_page_blocks_pricing_blocks_tiers_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_pricing_blocks_tiers_links
    ADD CONSTRAINT components_page_blocks_pricing_blocks_tiers_links_unique UNIQUE (pricing_block_id, tier_id);


--
-- Name: components_page_blocks_reviews_list_blocks components_page_blocks_reviews_list_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_reviews_list_blocks
    ADD CONSTRAINT components_page_blocks_reviews_list_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links components_page_blocks_reviews_list_blocks_reviews_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_reviews_list_blocks_reviews_links
    ADD CONSTRAINT components_page_blocks_reviews_list_blocks_reviews_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links components_page_blocks_reviews_list_blocks_reviews_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_reviews_list_blocks_reviews_links
    ADD CONSTRAINT components_page_blocks_reviews_list_blocks_reviews_links_unique UNIQUE (reviews_list_block_id, review_id);


--
-- Name: components_page_blocks_reviews_table_blocks components_page_blocks_reviews_table_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_reviews_table_blocks
    ADD CONSTRAINT components_page_blocks_reviews_table_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_slider_blocks components_page_blocks_slider_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_slider_blocks
    ADD CONSTRAINT components_page_blocks_slider_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_slider_blocks_slider_links components_page_blocks_slider_blocks_slider_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_slider_blocks_slider_links
    ADD CONSTRAINT components_page_blocks_slider_blocks_slider_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_blocks_slider_blocks_slider_links components_page_blocks_slider_blocks_slider_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_slider_blocks_slider_links
    ADD CONSTRAINT components_page_blocks_slider_blocks_slider_links_unique UNIQUE (slider_block_id, slider_id);


--
-- Name: configurations_components configurations_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.configurations_components
    ADD CONSTRAINT configurations_components_pkey PRIMARY KEY (id);


--
-- Name: configurations configurations_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.configurations
    ADD CONSTRAINT configurations_pkey PRIMARY KEY (id);


--
-- Name: configurations_components configurations_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.configurations_components
    ADD CONSTRAINT configurations_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: currencies_localizations_links currencies_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.currencies_localizations_links
    ADD CONSTRAINT currencies_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: currencies_localizations_links currencies_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.currencies_localizations_links
    ADD CONSTRAINT currencies_localizations_links_unique UNIQUE (currency_id, inv_currency_id);


--
-- Name: currencies currencies_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT currencies_pkey PRIMARY KEY (id);


--
-- Name: email_templates email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: flyouts_components flyouts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts_components
    ADD CONSTRAINT flyouts_components_pkey PRIMARY KEY (id);


--
-- Name: flyouts_localizations_links flyouts_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts_localizations_links
    ADD CONSTRAINT flyouts_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: flyouts_localizations_links flyouts_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts_localizations_links
    ADD CONSTRAINT flyouts_localizations_links_unique UNIQUE (flyout_id, inv_flyout_id);


--
-- Name: flyouts flyouts_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts
    ADD CONSTRAINT flyouts_pkey PRIMARY KEY (id);


--
-- Name: flyouts flyouts_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts
    ADD CONSTRAINT flyouts_uid_unique UNIQUE (uid);


--
-- Name: flyouts_components flyouts_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts_components
    ADD CONSTRAINT flyouts_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: footers_components footers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_components_pkey PRIMARY KEY (id);


--
-- Name: footers_localizations_links footers_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers_localizations_links
    ADD CONSTRAINT footers_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: footers_localizations_links footers_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers_localizations_links
    ADD CONSTRAINT footers_localizations_links_unique UNIQUE (footer_id, inv_footer_id);


--
-- Name: footers footers_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_pkey PRIMARY KEY (id);


--
-- Name: footers footers_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_uid_unique UNIQUE (uid);


--
-- Name: footers_components footers_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: form_requests_components form_requests_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests_components
    ADD CONSTRAINT form_requests_components_pkey PRIMARY KEY (id);


--
-- Name: form_requests_form_links form_requests_form_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests_form_links
    ADD CONSTRAINT form_requests_form_links_pkey PRIMARY KEY (id);


--
-- Name: form_requests_form_links form_requests_form_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests_form_links
    ADD CONSTRAINT form_requests_form_links_unique UNIQUE (form_request_id, form_id);


--
-- Name: form_requests form_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests
    ADD CONSTRAINT form_requests_pkey PRIMARY KEY (id);


--
-- Name: form_requests_components form_requests_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests_components
    ADD CONSTRAINT form_requests_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: forms_components forms_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms_components
    ADD CONSTRAINT forms_components_pkey PRIMARY KEY (id);


--
-- Name: forms_localizations_links forms_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms_localizations_links
    ADD CONSTRAINT forms_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: forms_localizations_links forms_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms_localizations_links
    ADD CONSTRAINT forms_localizations_links_unique UNIQUE (form_id, inv_form_id);


--
-- Name: forms forms_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (id);


--
-- Name: forms forms_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_uid_unique UNIQUE (uid);


--
-- Name: forms_components forms_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms_components
    ADD CONSTRAINT forms_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: layouts_footer_links layouts_footer_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_footer_links
    ADD CONSTRAINT layouts_footer_links_pkey PRIMARY KEY (id);


--
-- Name: layouts_footer_links layouts_footer_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_footer_links
    ADD CONSTRAINT layouts_footer_links_unique UNIQUE (layout_id, footer_id);


--
-- Name: layouts_localizations_links layouts_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_localizations_links
    ADD CONSTRAINT layouts_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: layouts_localizations_links layouts_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_localizations_links
    ADD CONSTRAINT layouts_localizations_links_unique UNIQUE (layout_id, inv_layout_id);


--
-- Name: layouts_modals_links layouts_modals_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_modals_links
    ADD CONSTRAINT layouts_modals_links_pkey PRIMARY KEY (id);


--
-- Name: layouts_modals_links layouts_modals_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_modals_links
    ADD CONSTRAINT layouts_modals_links_unique UNIQUE (layout_id, modal_id);


--
-- Name: layouts_navbar_links layouts_navbar_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_navbar_links
    ADD CONSTRAINT layouts_navbar_links_pkey PRIMARY KEY (id);


--
-- Name: layouts_navbar_links layouts_navbar_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_navbar_links
    ADD CONSTRAINT layouts_navbar_links_unique UNIQUE (layout_id, navbar_id);


--
-- Name: layouts layouts_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_pkey PRIMARY KEY (id);


--
-- Name: layouts_sidebar_links layouts_sidebar_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_sidebar_links
    ADD CONSTRAINT layouts_sidebar_links_pkey PRIMARY KEY (id);


--
-- Name: layouts_sidebar_links layouts_sidebar_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_sidebar_links
    ADD CONSTRAINT layouts_sidebar_links_unique UNIQUE (layout_id, sidebar_id);


--
-- Name: layouts_slide_overs_links layouts_slide_overs_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_slide_overs_links
    ADD CONSTRAINT layouts_slide_overs_links_pkey PRIMARY KEY (id);


--
-- Name: layouts_slide_overs_links layouts_slide_overs_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_slide_overs_links
    ADD CONSTRAINT layouts_slide_overs_links_unique UNIQUE (layout_id, slide_over_id);


--
-- Name: layouts_topbar_links layouts_topbar_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_topbar_links
    ADD CONSTRAINT layouts_topbar_links_pkey PRIMARY KEY (id);


--
-- Name: layouts_topbar_links layouts_topbar_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_topbar_links
    ADD CONSTRAINT layouts_topbar_links_unique UNIQUE (layout_id, topbar_id);


--
-- Name: layouts layouts_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_uid_unique UNIQUE (uid);


--
-- Name: loaders loaders_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.loaders
    ADD CONSTRAINT loaders_pkey PRIMARY KEY (id);


--
-- Name: metatags_localizations_links metatags_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.metatags_localizations_links
    ADD CONSTRAINT metatags_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: metatags_localizations_links metatags_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.metatags_localizations_links
    ADD CONSTRAINT metatags_localizations_links_unique UNIQUE (metatag_id, inv_metatag_id);


--
-- Name: metatags metatags_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.metatags
    ADD CONSTRAINT metatags_pkey PRIMARY KEY (id);


--
-- Name: modals_components modals_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals_components
    ADD CONSTRAINT modals_components_pkey PRIMARY KEY (id);


--
-- Name: modals_localizations_links modals_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals_localizations_links
    ADD CONSTRAINT modals_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: modals_localizations_links modals_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals_localizations_links
    ADD CONSTRAINT modals_localizations_links_unique UNIQUE (modal_id, inv_modal_id);


--
-- Name: modals modals_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals
    ADD CONSTRAINT modals_pkey PRIMARY KEY (id);


--
-- Name: modals modals_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals
    ADD CONSTRAINT modals_uid_unique UNIQUE (uid);


--
-- Name: modals_components modals_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals_components
    ADD CONSTRAINT modals_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: navbars_components navbars_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars_components
    ADD CONSTRAINT navbars_components_pkey PRIMARY KEY (id);


--
-- Name: navbars_localizations_links navbars_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars_localizations_links
    ADD CONSTRAINT navbars_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: navbars_localizations_links navbars_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars_localizations_links
    ADD CONSTRAINT navbars_localizations_links_unique UNIQUE (navbar_id, inv_navbar_id);


--
-- Name: navbars navbars_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars
    ADD CONSTRAINT navbars_pkey PRIMARY KEY (id);


--
-- Name: navbars navbars_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars
    ADD CONSTRAINT navbars_uid_unique UNIQUE (uid);


--
-- Name: navbars_components navbars_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars_components
    ADD CONSTRAINT navbars_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: pages_components pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_components_pkey PRIMARY KEY (id);


--
-- Name: pages_layout_links pages_layout_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_layout_links
    ADD CONSTRAINT pages_layout_links_pkey PRIMARY KEY (id);


--
-- Name: pages_layout_links pages_layout_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_layout_links
    ADD CONSTRAINT pages_layout_links_unique UNIQUE (page_id, layout_id);


--
-- Name: pages_localizations_links pages_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: pages_localizations_links pages_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_unique UNIQUE (page_id, inv_page_id);


--
-- Name: pages_metatag_links pages_metatag_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_metatag_links
    ADD CONSTRAINT pages_metatag_links_pkey PRIMARY KEY (id);


--
-- Name: pages_metatag_links pages_metatag_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_metatag_links
    ADD CONSTRAINT pages_metatag_links_unique UNIQUE (page_id, metatag_id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_components pages_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: robots robots_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.robots
    ADD CONSTRAINT robots_pkey PRIMARY KEY (id);


--
-- Name: sidebars_components sidebars_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars_components
    ADD CONSTRAINT sidebars_components_pkey PRIMARY KEY (id);


--
-- Name: sidebars_localizations_links sidebars_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars_localizations_links
    ADD CONSTRAINT sidebars_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: sidebars_localizations_links sidebars_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars_localizations_links
    ADD CONSTRAINT sidebars_localizations_links_unique UNIQUE (sidebar_id, inv_sidebar_id);


--
-- Name: sidebars sidebars_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars
    ADD CONSTRAINT sidebars_pkey PRIMARY KEY (id);


--
-- Name: sidebars sidebars_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars
    ADD CONSTRAINT sidebars_uid_unique UNIQUE (uid);


--
-- Name: sidebars_components sidebars_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars_components
    ADD CONSTRAINT sidebars_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: slide_overs_components slide_overs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs_components
    ADD CONSTRAINT slide_overs_components_pkey PRIMARY KEY (id);


--
-- Name: slide_overs_localizations_links slide_overs_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs_localizations_links
    ADD CONSTRAINT slide_overs_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: slide_overs_localizations_links slide_overs_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs_localizations_links
    ADD CONSTRAINT slide_overs_localizations_links_unique UNIQUE (slide_over_id, inv_slide_over_id);


--
-- Name: slide_overs slide_overs_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs
    ADD CONSTRAINT slide_overs_pkey PRIMARY KEY (id);


--
-- Name: slide_overs slide_overs_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs
    ADD CONSTRAINT slide_overs_uid_unique UNIQUE (uid);


--
-- Name: slide_overs_components slide_overs_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs_components
    ADD CONSTRAINT slide_overs_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: sliders_components sliders_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders_components
    ADD CONSTRAINT sliders_components_pkey PRIMARY KEY (id);


--
-- Name: sliders_localizations_links sliders_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders_localizations_links
    ADD CONSTRAINT sliders_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: sliders_localizations_links sliders_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders_localizations_links
    ADD CONSTRAINT sliders_localizations_links_unique UNIQUE (slider_id, inv_slider_id);


--
-- Name: sliders sliders_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders
    ADD CONSTRAINT sliders_pkey PRIMARY KEY (id);


--
-- Name: sliders sliders_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders
    ADD CONSTRAINT sliders_uid_unique UNIQUE (uid);


--
-- Name: sliders_components sliders_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders_components
    ADD CONSTRAINT sliders_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: telegrams telegrams_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.telegrams
    ADD CONSTRAINT telegrams_pkey PRIMARY KEY (id);


--
-- Name: themes_components themes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.themes_components
    ADD CONSTRAINT themes_components_pkey PRIMARY KEY (id);


--
-- Name: themes themes_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_pkey PRIMARY KEY (id);


--
-- Name: themes_components themes_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.themes_components
    ADD CONSTRAINT themes_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: tiers_components tiers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_components
    ADD CONSTRAINT tiers_components_pkey PRIMARY KEY (id);


--
-- Name: tiers_currency_links tiers_currency_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_currency_links
    ADD CONSTRAINT tiers_currency_links_pkey PRIMARY KEY (id);


--
-- Name: tiers_currency_links tiers_currency_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_currency_links
    ADD CONSTRAINT tiers_currency_links_unique UNIQUE (tier_id, currency_id);


--
-- Name: tiers_localizations_links tiers_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_localizations_links
    ADD CONSTRAINT tiers_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: tiers_localizations_links tiers_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_localizations_links
    ADD CONSTRAINT tiers_localizations_links_unique UNIQUE (tier_id, inv_tier_id);


--
-- Name: tiers tiers_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers
    ADD CONSTRAINT tiers_pkey PRIMARY KEY (id);


--
-- Name: tiers_components tiers_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_components
    ADD CONSTRAINT tiers_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: topbars_components topbars_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars_components
    ADD CONSTRAINT topbars_components_pkey PRIMARY KEY (id);


--
-- Name: topbars_localizations_links topbars_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars_localizations_links
    ADD CONSTRAINT topbars_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: topbars_localizations_links topbars_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars_localizations_links
    ADD CONSTRAINT topbars_localizations_links_unique UNIQUE (topbar_id, inv_topbar_id);


--
-- Name: topbars topbars_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars
    ADD CONSTRAINT topbars_pkey PRIMARY KEY (id);


--
-- Name: topbars topbars_uid_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars
    ADD CONSTRAINT topbars_uid_unique UNIQUE (uid);


--
-- Name: topbars_components topbars_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars_components
    ADD CONSTRAINT topbars_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: components_elements_buttons_arrays_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_buttons_arrays_component_type_index ON public.components_elements_buttons_arrays_components USING btree (component_type);


--
-- Name: components_elements_buttons_arrays_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_buttons_arrays_entity_fk ON public.components_elements_buttons_arrays_components USING btree (entity_id);


--
-- Name: components_elements_buttons_arrays_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_buttons_arrays_field_index ON public.components_elements_buttons_arrays_components USING btree (field);


--
-- Name: components_elements_buttons_flyout_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_buttons_flyout_links_fk ON public.components_elements_buttons_flyout_links USING btree (button_id);


--
-- Name: components_elements_buttons_flyout_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_buttons_flyout_links_inv_fk ON public.components_elements_buttons_flyout_links USING btree (flyout_id);


--
-- Name: components_elements_inputs_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_inputs_component_type_index ON public.components_elements_inputs_components USING btree (component_type);


--
-- Name: components_elements_inputs_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_inputs_entity_fk ON public.components_elements_inputs_components USING btree (entity_id);


--
-- Name: components_elements_inputs_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_inputs_field_index ON public.components_elements_inputs_components USING btree (field);


--
-- Name: components_elements_recievers_admin_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_recievers_admin_links_fk ON public.components_elements_recievers_admin_links USING btree (reciever_id);


--
-- Name: components_elements_recievers_admin_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_recievers_admin_links_inv_fk ON public.components_elements_recievers_admin_links USING btree (user_id);


--
-- Name: components_elements_recievers_user_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_recievers_user_links_fk ON public.components_elements_recievers_user_links USING btree (reciever_id);


--
-- Name: components_elements_recievers_user_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_recievers_user_links_inv_fk ON public.components_elements_recievers_user_links USING btree (user_id);


--
-- Name: components_elements_request_inputs_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_request_inputs_component_type_index ON public.components_elements_request_inputs_components USING btree (component_type);


--
-- Name: components_elements_request_inputs_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_request_inputs_entity_fk ON public.components_elements_request_inputs_components USING btree (entity_id);


--
-- Name: components_elements_request_inputs_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_request_inputs_field_index ON public.components_elements_request_inputs_components USING btree (field);


--
-- Name: components_elements_slides_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_slides_component_type_index ON public.components_elements_slides_components USING btree (component_type);


--
-- Name: components_elements_slides_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_slides_entity_fk ON public.components_elements_slides_components USING btree (entity_id);


--
-- Name: components_elements_slides_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_elements_slides_field_index ON public.components_elements_slides_components USING btree (field);


--
-- Name: components_functions_form_side_effects_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_functions_form_side_effects_component_type_index ON public.components_functions_form_side_effects_components USING btree (component_type);


--
-- Name: components_functions_form_side_effects_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_functions_form_side_effects_entity_fk ON public.components_functions_form_side_effects_components USING btree (entity_id);


--
-- Name: components_functions_form_side_effects_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_functions_form_side_effects_field_index ON public.components_functions_form_side_effects_components USING btree (field);


--
-- Name: components_page_blocks_alert_blocks_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_alert_blocks_component_type_index ON public.components_page_blocks_alert_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_alert_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_alert_blocks_entity_fk ON public.components_page_blocks_alert_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_alert_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_alert_blocks_field_index ON public.components_page_blocks_alert_blocks_components USING btree (field);


--
-- Name: components_page_blocks_contact_section_blocks_component_type_in; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_contact_section_blocks_component_type_in ON public.components_page_blocks_contact_section_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_contact_section_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_contact_section_blocks_entity_fk ON public.components_page_blocks_contact_section_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_contact_section_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_contact_section_blocks_field_index ON public.components_page_blocks_contact_section_blocks_components USING btree (field);


--
-- Name: components_page_blocks_contact_section_blocks_form_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_contact_section_blocks_form_links_fk ON public.components_page_blocks_contact_section_blocks_form_links USING btree (contact_section_block_id);


--
-- Name: components_page_blocks_contact_section_blocks_form_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_contact_section_blocks_form_links_inv_fk ON public.components_page_blocks_contact_section_blocks_form_links USING btree (form_id);


--
-- Name: components_page_blocks_cta_section_blocks_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_cta_section_blocks_component_type_index ON public.components_page_blocks_cta_section_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_cta_section_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_cta_section_blocks_entity_fk ON public.components_page_blocks_cta_section_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_cta_section_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_cta_section_blocks_field_index ON public.components_page_blocks_cta_section_blocks_components USING btree (field);


--
-- Name: components_page_blocks_faqs_blocks_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_faqs_blocks_component_type_index ON public.components_page_blocks_faqs_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_faqs_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_faqs_blocks_entity_fk ON public.components_page_blocks_faqs_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_faqs_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_faqs_blocks_field_index ON public.components_page_blocks_faqs_blocks_components USING btree (field);


--
-- Name: components_page_blocks_features_section_blocks_component_type_i; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_features_section_blocks_component_type_i ON public.components_page_blocks_features_section_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_features_section_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_features_section_blocks_entity_fk ON public.components_page_blocks_features_section_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_features_section_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_features_section_blocks_field_index ON public.components_page_blocks_features_section_blocks_components USING btree (field);


--
-- Name: components_page_blocks_footer_blocks_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_footer_blocks_component_type_index ON public.components_page_blocks_footer_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_footer_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_footer_blocks_entity_fk ON public.components_page_blocks_footer_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_footer_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_footer_blocks_field_index ON public.components_page_blocks_footer_blocks_components USING btree (field);


--
-- Name: components_page_blocks_hero_section_blocks_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_hero_section_blocks_component_type_index ON public.components_page_blocks_hero_section_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_hero_section_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_hero_section_blocks_entity_fk ON public.components_page_blocks_hero_section_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_hero_section_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_hero_section_blocks_field_index ON public.components_page_blocks_hero_section_blocks_components USING btree (field);


--
-- Name: components_page_blocks_incentives_blocks_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_incentives_blocks_component_type_index ON public.components_page_blocks_incentives_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_incentives_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_incentives_blocks_entity_fk ON public.components_page_blocks_incentives_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_incentives_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_incentives_blocks_field_index ON public.components_page_blocks_incentives_blocks_components USING btree (field);


--
-- Name: components_page_blocks_logotypes_cloud_blocks_component_type_in; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_logotypes_cloud_blocks_component_type_in ON public.components_page_blocks_logotypes_cloud_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_logotypes_cloud_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_logotypes_cloud_blocks_entity_fk ON public.components_page_blocks_logotypes_cloud_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_logotypes_cloud_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_logotypes_cloud_blocks_field_index ON public.components_page_blocks_logotypes_cloud_blocks_components USING btree (field);


--
-- Name: components_page_blocks_navbar_blocks_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_navbar_blocks_component_type_index ON public.components_page_blocks_navbar_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_navbar_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_navbar_blocks_entity_fk ON public.components_page_blocks_navbar_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_navbar_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_navbar_blocks_field_index ON public.components_page_blocks_navbar_blocks_components USING btree (field);


--
-- Name: components_page_blocks_not_found_blocks_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_not_found_blocks_component_type_index ON public.components_page_blocks_not_found_blocks_components USING btree (component_type);


--
-- Name: components_page_blocks_not_found_blocks_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_not_found_blocks_entity_fk ON public.components_page_blocks_not_found_blocks_components USING btree (entity_id);


--
-- Name: components_page_blocks_not_found_blocks_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_not_found_blocks_field_index ON public.components_page_blocks_not_found_blocks_components USING btree (field);


--
-- Name: components_page_blocks_pricing_blocks_tiers_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_pricing_blocks_tiers_links_fk ON public.components_page_blocks_pricing_blocks_tiers_links USING btree (pricing_block_id);


--
-- Name: components_page_blocks_pricing_blocks_tiers_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_pricing_blocks_tiers_links_inv_fk ON public.components_page_blocks_pricing_blocks_tiers_links USING btree (tier_id);


--
-- Name: components_page_blocks_pricing_blocks_tiers_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_pricing_blocks_tiers_links_order_fk ON public.components_page_blocks_pricing_blocks_tiers_links USING btree (tier_order);


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_reviews_list_blocks_reviews_links_fk ON public.components_page_blocks_reviews_list_blocks_reviews_links USING btree (reviews_list_block_id);


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_reviews_list_blocks_reviews_links_inv_fk ON public.components_page_blocks_reviews_list_blocks_reviews_links USING btree (review_id);


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links_order_; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_reviews_list_blocks_reviews_links_order_ ON public.components_page_blocks_reviews_list_blocks_reviews_links USING btree (review_order);


--
-- Name: components_page_blocks_slider_blocks_slider_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_slider_blocks_slider_links_fk ON public.components_page_blocks_slider_blocks_slider_links USING btree (slider_block_id);


--
-- Name: components_page_blocks_slider_blocks_slider_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX components_page_blocks_slider_blocks_slider_links_inv_fk ON public.components_page_blocks_slider_blocks_slider_links USING btree (slider_id);


--
-- Name: configurations_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX configurations_component_type_index ON public.configurations_components USING btree (component_type);


--
-- Name: configurations_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX configurations_created_by_id_fk ON public.configurations USING btree (created_by_id);


--
-- Name: configurations_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX configurations_entity_fk ON public.configurations_components USING btree (entity_id);


--
-- Name: configurations_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX configurations_field_index ON public.configurations_components USING btree (field);


--
-- Name: configurations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX configurations_updated_by_id_fk ON public.configurations USING btree (updated_by_id);


--
-- Name: currencies_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX currencies_created_by_id_fk ON public.currencies USING btree (created_by_id);


--
-- Name: currencies_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX currencies_localizations_links_fk ON public.currencies_localizations_links USING btree (currency_id);


--
-- Name: currencies_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX currencies_localizations_links_inv_fk ON public.currencies_localizations_links USING btree (inv_currency_id);


--
-- Name: currencies_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX currencies_localizations_links_order_fk ON public.currencies_localizations_links USING btree (currency_order);


--
-- Name: currencies_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX currencies_updated_by_id_fk ON public.currencies USING btree (updated_by_id);


--
-- Name: email_templates_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX email_templates_created_by_id_fk ON public.email_templates USING btree (created_by_id);


--
-- Name: email_templates_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX email_templates_updated_by_id_fk ON public.email_templates USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: flyouts_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX flyouts_component_type_index ON public.flyouts_components USING btree (component_type);


--
-- Name: flyouts_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX flyouts_created_by_id_fk ON public.flyouts USING btree (created_by_id);


--
-- Name: flyouts_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX flyouts_entity_fk ON public.flyouts_components USING btree (entity_id);


--
-- Name: flyouts_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX flyouts_field_index ON public.flyouts_components USING btree (field);


--
-- Name: flyouts_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX flyouts_localizations_links_fk ON public.flyouts_localizations_links USING btree (flyout_id);


--
-- Name: flyouts_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX flyouts_localizations_links_inv_fk ON public.flyouts_localizations_links USING btree (inv_flyout_id);


--
-- Name: flyouts_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX flyouts_localizations_links_order_fk ON public.flyouts_localizations_links USING btree (flyout_order);


--
-- Name: flyouts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX flyouts_updated_by_id_fk ON public.flyouts USING btree (updated_by_id);


--
-- Name: footers_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX footers_component_type_index ON public.footers_components USING btree (component_type);


--
-- Name: footers_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX footers_created_by_id_fk ON public.footers USING btree (created_by_id);


--
-- Name: footers_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX footers_entity_fk ON public.footers_components USING btree (entity_id);


--
-- Name: footers_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX footers_field_index ON public.footers_components USING btree (field);


--
-- Name: footers_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX footers_localizations_links_fk ON public.footers_localizations_links USING btree (footer_id);


--
-- Name: footers_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX footers_localizations_links_inv_fk ON public.footers_localizations_links USING btree (inv_footer_id);


--
-- Name: footers_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX footers_localizations_links_order_fk ON public.footers_localizations_links USING btree (footer_order);


--
-- Name: footers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX footers_updated_by_id_fk ON public.footers USING btree (updated_by_id);


--
-- Name: form_requests_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX form_requests_component_type_index ON public.form_requests_components USING btree (component_type);


--
-- Name: form_requests_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX form_requests_created_by_id_fk ON public.form_requests USING btree (created_by_id);


--
-- Name: form_requests_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX form_requests_entity_fk ON public.form_requests_components USING btree (entity_id);


--
-- Name: form_requests_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX form_requests_field_index ON public.form_requests_components USING btree (field);


--
-- Name: form_requests_form_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX form_requests_form_links_fk ON public.form_requests_form_links USING btree (form_request_id);


--
-- Name: form_requests_form_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX form_requests_form_links_inv_fk ON public.form_requests_form_links USING btree (form_id);


--
-- Name: form_requests_form_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX form_requests_form_links_order_inv_fk ON public.form_requests_form_links USING btree (form_request_order);


--
-- Name: form_requests_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX form_requests_updated_by_id_fk ON public.form_requests USING btree (updated_by_id);


--
-- Name: forms_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX forms_component_type_index ON public.forms_components USING btree (component_type);


--
-- Name: forms_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX forms_created_by_id_fk ON public.forms USING btree (created_by_id);


--
-- Name: forms_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX forms_entity_fk ON public.forms_components USING btree (entity_id);


--
-- Name: forms_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX forms_field_index ON public.forms_components USING btree (field);


--
-- Name: forms_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX forms_localizations_links_fk ON public.forms_localizations_links USING btree (form_id);


--
-- Name: forms_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX forms_localizations_links_inv_fk ON public.forms_localizations_links USING btree (inv_form_id);


--
-- Name: forms_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX forms_localizations_links_order_fk ON public.forms_localizations_links USING btree (form_order);


--
-- Name: forms_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX forms_updated_by_id_fk ON public.forms USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: layouts_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_created_by_id_fk ON public.layouts USING btree (created_by_id);


--
-- Name: layouts_footer_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_footer_links_fk ON public.layouts_footer_links USING btree (layout_id);


--
-- Name: layouts_footer_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_footer_links_inv_fk ON public.layouts_footer_links USING btree (footer_id);


--
-- Name: layouts_footer_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_footer_links_order_inv_fk ON public.layouts_footer_links USING btree (layout_order);


--
-- Name: layouts_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_localizations_links_fk ON public.layouts_localizations_links USING btree (layout_id);


--
-- Name: layouts_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_localizations_links_inv_fk ON public.layouts_localizations_links USING btree (inv_layout_id);


--
-- Name: layouts_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_localizations_links_order_fk ON public.layouts_localizations_links USING btree (layout_order);


--
-- Name: layouts_modals_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_modals_links_fk ON public.layouts_modals_links USING btree (layout_id);


--
-- Name: layouts_modals_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_modals_links_inv_fk ON public.layouts_modals_links USING btree (modal_id);


--
-- Name: layouts_modals_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_modals_links_order_fk ON public.layouts_modals_links USING btree (modal_order);


--
-- Name: layouts_modals_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_modals_links_order_inv_fk ON public.layouts_modals_links USING btree (layout_order);


--
-- Name: layouts_navbar_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_navbar_links_fk ON public.layouts_navbar_links USING btree (layout_id);


--
-- Name: layouts_navbar_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_navbar_links_inv_fk ON public.layouts_navbar_links USING btree (navbar_id);


--
-- Name: layouts_navbar_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_navbar_links_order_inv_fk ON public.layouts_navbar_links USING btree (layout_order);


--
-- Name: layouts_sidebar_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_sidebar_links_fk ON public.layouts_sidebar_links USING btree (layout_id);


--
-- Name: layouts_sidebar_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_sidebar_links_inv_fk ON public.layouts_sidebar_links USING btree (sidebar_id);


--
-- Name: layouts_sidebar_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_sidebar_links_order_inv_fk ON public.layouts_sidebar_links USING btree (layout_order);


--
-- Name: layouts_slide_overs_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_slide_overs_links_fk ON public.layouts_slide_overs_links USING btree (layout_id);


--
-- Name: layouts_slide_overs_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_slide_overs_links_inv_fk ON public.layouts_slide_overs_links USING btree (slide_over_id);


--
-- Name: layouts_slide_overs_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_slide_overs_links_order_fk ON public.layouts_slide_overs_links USING btree (slide_over_order);


--
-- Name: layouts_slide_overs_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_slide_overs_links_order_inv_fk ON public.layouts_slide_overs_links USING btree (layout_order);


--
-- Name: layouts_topbar_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_topbar_links_fk ON public.layouts_topbar_links USING btree (layout_id);


--
-- Name: layouts_topbar_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_topbar_links_inv_fk ON public.layouts_topbar_links USING btree (topbar_id);


--
-- Name: layouts_topbar_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_topbar_links_order_inv_fk ON public.layouts_topbar_links USING btree (layout_order);


--
-- Name: layouts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX layouts_updated_by_id_fk ON public.layouts USING btree (updated_by_id);


--
-- Name: loaders_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX loaders_created_by_id_fk ON public.loaders USING btree (created_by_id);


--
-- Name: loaders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX loaders_updated_by_id_fk ON public.loaders USING btree (updated_by_id);


--
-- Name: metatags_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX metatags_created_by_id_fk ON public.metatags USING btree (created_by_id);


--
-- Name: metatags_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX metatags_localizations_links_fk ON public.metatags_localizations_links USING btree (metatag_id);


--
-- Name: metatags_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX metatags_localizations_links_inv_fk ON public.metatags_localizations_links USING btree (inv_metatag_id);


--
-- Name: metatags_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX metatags_localizations_links_order_fk ON public.metatags_localizations_links USING btree (metatag_order);


--
-- Name: metatags_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX metatags_updated_by_id_fk ON public.metatags USING btree (updated_by_id);


--
-- Name: modals_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX modals_component_type_index ON public.modals_components USING btree (component_type);


--
-- Name: modals_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX modals_created_by_id_fk ON public.modals USING btree (created_by_id);


--
-- Name: modals_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX modals_entity_fk ON public.modals_components USING btree (entity_id);


--
-- Name: modals_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX modals_field_index ON public.modals_components USING btree (field);


--
-- Name: modals_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX modals_localizations_links_fk ON public.modals_localizations_links USING btree (modal_id);


--
-- Name: modals_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX modals_localizations_links_inv_fk ON public.modals_localizations_links USING btree (inv_modal_id);


--
-- Name: modals_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX modals_localizations_links_order_fk ON public.modals_localizations_links USING btree (modal_order);


--
-- Name: modals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX modals_updated_by_id_fk ON public.modals USING btree (updated_by_id);


--
-- Name: navbars_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX navbars_component_type_index ON public.navbars_components USING btree (component_type);


--
-- Name: navbars_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX navbars_created_by_id_fk ON public.navbars USING btree (created_by_id);


--
-- Name: navbars_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX navbars_entity_fk ON public.navbars_components USING btree (entity_id);


--
-- Name: navbars_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX navbars_field_index ON public.navbars_components USING btree (field);


--
-- Name: navbars_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX navbars_localizations_links_fk ON public.navbars_localizations_links USING btree (navbar_id);


--
-- Name: navbars_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX navbars_localizations_links_inv_fk ON public.navbars_localizations_links USING btree (inv_navbar_id);


--
-- Name: navbars_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX navbars_localizations_links_order_fk ON public.navbars_localizations_links USING btree (navbar_order);


--
-- Name: navbars_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX navbars_updated_by_id_fk ON public.navbars USING btree (updated_by_id);


--
-- Name: pages_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_component_type_index ON public.pages_components USING btree (component_type);


--
-- Name: pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_created_by_id_fk ON public.pages USING btree (created_by_id);


--
-- Name: pages_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_entity_fk ON public.pages_components USING btree (entity_id);


--
-- Name: pages_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_field_index ON public.pages_components USING btree (field);


--
-- Name: pages_layout_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_layout_links_fk ON public.pages_layout_links USING btree (page_id);


--
-- Name: pages_layout_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_layout_links_inv_fk ON public.pages_layout_links USING btree (layout_id);


--
-- Name: pages_layout_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_layout_links_order_inv_fk ON public.pages_layout_links USING btree (page_order);


--
-- Name: pages_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_localizations_links_fk ON public.pages_localizations_links USING btree (page_id);


--
-- Name: pages_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_localizations_links_inv_fk ON public.pages_localizations_links USING btree (inv_page_id);


--
-- Name: pages_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_localizations_links_order_fk ON public.pages_localizations_links USING btree (page_order);


--
-- Name: pages_metatag_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_metatag_links_fk ON public.pages_metatag_links USING btree (page_id);


--
-- Name: pages_metatag_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_metatag_links_inv_fk ON public.pages_metatag_links USING btree (metatag_id);


--
-- Name: pages_metatag_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_metatag_links_order_inv_fk ON public.pages_metatag_links USING btree (page_order);


--
-- Name: pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX pages_updated_by_id_fk ON public.pages USING btree (updated_by_id);


--
-- Name: reviews_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX reviews_created_by_id_fk ON public.reviews USING btree (created_by_id);


--
-- Name: reviews_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX reviews_updated_by_id_fk ON public.reviews USING btree (updated_by_id);


--
-- Name: robots_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX robots_created_by_id_fk ON public.robots USING btree (created_by_id);


--
-- Name: robots_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX robots_updated_by_id_fk ON public.robots USING btree (updated_by_id);


--
-- Name: sidebars_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sidebars_component_type_index ON public.sidebars_components USING btree (component_type);


--
-- Name: sidebars_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sidebars_created_by_id_fk ON public.sidebars USING btree (created_by_id);


--
-- Name: sidebars_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sidebars_entity_fk ON public.sidebars_components USING btree (entity_id);


--
-- Name: sidebars_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sidebars_field_index ON public.sidebars_components USING btree (field);


--
-- Name: sidebars_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sidebars_localizations_links_fk ON public.sidebars_localizations_links USING btree (sidebar_id);


--
-- Name: sidebars_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sidebars_localizations_links_inv_fk ON public.sidebars_localizations_links USING btree (inv_sidebar_id);


--
-- Name: sidebars_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sidebars_localizations_links_order_fk ON public.sidebars_localizations_links USING btree (sidebar_order);


--
-- Name: sidebars_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sidebars_updated_by_id_fk ON public.sidebars USING btree (updated_by_id);


--
-- Name: slide_overs_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX slide_overs_component_type_index ON public.slide_overs_components USING btree (component_type);


--
-- Name: slide_overs_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX slide_overs_created_by_id_fk ON public.slide_overs USING btree (created_by_id);


--
-- Name: slide_overs_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX slide_overs_entity_fk ON public.slide_overs_components USING btree (entity_id);


--
-- Name: slide_overs_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX slide_overs_field_index ON public.slide_overs_components USING btree (field);


--
-- Name: slide_overs_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX slide_overs_localizations_links_fk ON public.slide_overs_localizations_links USING btree (slide_over_id);


--
-- Name: slide_overs_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX slide_overs_localizations_links_inv_fk ON public.slide_overs_localizations_links USING btree (inv_slide_over_id);


--
-- Name: slide_overs_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX slide_overs_localizations_links_order_fk ON public.slide_overs_localizations_links USING btree (slide_over_order);


--
-- Name: slide_overs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX slide_overs_updated_by_id_fk ON public.slide_overs USING btree (updated_by_id);


--
-- Name: sliders_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sliders_component_type_index ON public.sliders_components USING btree (component_type);


--
-- Name: sliders_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sliders_created_by_id_fk ON public.sliders USING btree (created_by_id);


--
-- Name: sliders_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sliders_entity_fk ON public.sliders_components USING btree (entity_id);


--
-- Name: sliders_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sliders_field_index ON public.sliders_components USING btree (field);


--
-- Name: sliders_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sliders_localizations_links_fk ON public.sliders_localizations_links USING btree (slider_id);


--
-- Name: sliders_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sliders_localizations_links_inv_fk ON public.sliders_localizations_links USING btree (inv_slider_id);


--
-- Name: sliders_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sliders_localizations_links_order_fk ON public.sliders_localizations_links USING btree (slider_order);


--
-- Name: sliders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX sliders_updated_by_id_fk ON public.sliders USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: telegrams_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX telegrams_created_by_id_fk ON public.telegrams USING btree (created_by_id);


--
-- Name: telegrams_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX telegrams_updated_by_id_fk ON public.telegrams USING btree (updated_by_id);


--
-- Name: themes_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX themes_component_type_index ON public.themes_components USING btree (component_type);


--
-- Name: themes_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX themes_created_by_id_fk ON public.themes USING btree (created_by_id);


--
-- Name: themes_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX themes_entity_fk ON public.themes_components USING btree (entity_id);


--
-- Name: themes_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX themes_field_index ON public.themes_components USING btree (field);


--
-- Name: themes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX themes_updated_by_id_fk ON public.themes USING btree (updated_by_id);


--
-- Name: tiers_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_component_type_index ON public.tiers_components USING btree (component_type);


--
-- Name: tiers_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_created_by_id_fk ON public.tiers USING btree (created_by_id);


--
-- Name: tiers_currency_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_currency_links_fk ON public.tiers_currency_links USING btree (tier_id);


--
-- Name: tiers_currency_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_currency_links_inv_fk ON public.tiers_currency_links USING btree (currency_id);


--
-- Name: tiers_currency_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_currency_links_order_inv_fk ON public.tiers_currency_links USING btree (tier_order);


--
-- Name: tiers_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_entity_fk ON public.tiers_components USING btree (entity_id);


--
-- Name: tiers_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_field_index ON public.tiers_components USING btree (field);


--
-- Name: tiers_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_localizations_links_fk ON public.tiers_localizations_links USING btree (tier_id);


--
-- Name: tiers_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_localizations_links_inv_fk ON public.tiers_localizations_links USING btree (inv_tier_id);


--
-- Name: tiers_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_localizations_links_order_fk ON public.tiers_localizations_links USING btree (tier_order);


--
-- Name: tiers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX tiers_updated_by_id_fk ON public.tiers USING btree (updated_by_id);


--
-- Name: topbars_component_type_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX topbars_component_type_index ON public.topbars_components USING btree (component_type);


--
-- Name: topbars_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX topbars_created_by_id_fk ON public.topbars USING btree (created_by_id);


--
-- Name: topbars_entity_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX topbars_entity_fk ON public.topbars_components USING btree (entity_id);


--
-- Name: topbars_field_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX topbars_field_index ON public.topbars_components USING btree (field);


--
-- Name: topbars_localizations_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX topbars_localizations_links_fk ON public.topbars_localizations_links USING btree (topbar_id);


--
-- Name: topbars_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX topbars_localizations_links_inv_fk ON public.topbars_localizations_links USING btree (inv_topbar_id);


--
-- Name: topbars_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX topbars_localizations_links_order_fk ON public.topbars_localizations_links USING btree (topbar_order);


--
-- Name: topbars_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX topbars_updated_by_id_fk ON public.topbars USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dev-portfolio
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_elements_buttons_arrays_components components_elements_buttons_arrays_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_arrays_components
    ADD CONSTRAINT components_elements_buttons_arrays_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_elements_buttons_arrays(id) ON DELETE CASCADE;


--
-- Name: components_elements_buttons_flyout_links components_elements_buttons_flyout_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_flyout_links
    ADD CONSTRAINT components_elements_buttons_flyout_links_fk FOREIGN KEY (button_id) REFERENCES public.components_elements_buttons(id) ON DELETE CASCADE;


--
-- Name: components_elements_buttons_flyout_links components_elements_buttons_flyout_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_buttons_flyout_links
    ADD CONSTRAINT components_elements_buttons_flyout_links_inv_fk FOREIGN KEY (flyout_id) REFERENCES public.flyouts(id) ON DELETE CASCADE;


--
-- Name: components_elements_inputs_components components_elements_inputs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_inputs_components
    ADD CONSTRAINT components_elements_inputs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_elements_inputs(id) ON DELETE CASCADE;


--
-- Name: components_elements_recievers_admin_links components_elements_recievers_admin_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_admin_links
    ADD CONSTRAINT components_elements_recievers_admin_links_fk FOREIGN KEY (reciever_id) REFERENCES public.components_elements_recievers(id) ON DELETE CASCADE;


--
-- Name: components_elements_recievers_admin_links components_elements_recievers_admin_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_admin_links
    ADD CONSTRAINT components_elements_recievers_admin_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: components_elements_recievers_user_links components_elements_recievers_user_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_user_links
    ADD CONSTRAINT components_elements_recievers_user_links_fk FOREIGN KEY (reciever_id) REFERENCES public.components_elements_recievers(id) ON DELETE CASCADE;


--
-- Name: components_elements_recievers_user_links components_elements_recievers_user_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_recievers_user_links
    ADD CONSTRAINT components_elements_recievers_user_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: components_elements_request_inputs_components components_elements_request_inputs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_request_inputs_components
    ADD CONSTRAINT components_elements_request_inputs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_elements_request_inputs(id) ON DELETE CASCADE;


--
-- Name: components_elements_slides_components components_elements_slides_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_elements_slides_components
    ADD CONSTRAINT components_elements_slides_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_elements_slides(id) ON DELETE CASCADE;


--
-- Name: components_functions_form_side_effects_components components_functions_form_side_effects_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_functions_form_side_effects_components
    ADD CONSTRAINT components_functions_form_side_effects_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_functions_form_side_effects(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_alert_blocks_components components_page_blocks_alert_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_alert_blocks_components
    ADD CONSTRAINT components_page_blocks_alert_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_alert_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_contact_section_blocks_components components_page_blocks_contact_section_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks_components
    ADD CONSTRAINT components_page_blocks_contact_section_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_contact_section_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_contact_section_blocks_form_links components_page_blocks_contact_section_blocks_form_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks_form_links
    ADD CONSTRAINT components_page_blocks_contact_section_blocks_form_links_fk FOREIGN KEY (contact_section_block_id) REFERENCES public.components_page_blocks_contact_section_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_contact_section_blocks_form_links components_page_blocks_contact_section_blocks_form_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_contact_section_blocks_form_links
    ADD CONSTRAINT components_page_blocks_contact_section_blocks_form_links_inv_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_cta_section_blocks_components components_page_blocks_cta_section_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_cta_section_blocks_components
    ADD CONSTRAINT components_page_blocks_cta_section_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_cta_section_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_faqs_blocks_components components_page_blocks_faqs_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_faqs_blocks_components
    ADD CONSTRAINT components_page_blocks_faqs_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_faqs_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_features_section_blocks_components components_page_blocks_features_section_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_features_section_blocks_components
    ADD CONSTRAINT components_page_blocks_features_section_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_features_section_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_footer_blocks_components components_page_blocks_footer_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_footer_blocks_components
    ADD CONSTRAINT components_page_blocks_footer_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_footer_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_hero_section_blocks_components components_page_blocks_hero_section_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_hero_section_blocks_components
    ADD CONSTRAINT components_page_blocks_hero_section_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_hero_section_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_incentives_blocks_components components_page_blocks_incentives_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_incentives_blocks_components
    ADD CONSTRAINT components_page_blocks_incentives_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_incentives_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_logotypes_cloud_blocks_components components_page_blocks_logotypes_cloud_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_logotypes_cloud_blocks_components
    ADD CONSTRAINT components_page_blocks_logotypes_cloud_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_logotypes_cloud_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_navbar_blocks_components components_page_blocks_navbar_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_navbar_blocks_components
    ADD CONSTRAINT components_page_blocks_navbar_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_navbar_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_not_found_blocks_components components_page_blocks_not_found_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_not_found_blocks_components
    ADD CONSTRAINT components_page_blocks_not_found_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_blocks_not_found_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_pricing_blocks_tiers_links components_page_blocks_pricing_blocks_tiers_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_pricing_blocks_tiers_links
    ADD CONSTRAINT components_page_blocks_pricing_blocks_tiers_links_fk FOREIGN KEY (pricing_block_id) REFERENCES public.components_page_blocks_pricing_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_pricing_blocks_tiers_links components_page_blocks_pricing_blocks_tiers_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_pricing_blocks_tiers_links
    ADD CONSTRAINT components_page_blocks_pricing_blocks_tiers_links_inv_fk FOREIGN KEY (tier_id) REFERENCES public.tiers(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links components_page_blocks_reviews_list_blocks_reviews_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_reviews_list_blocks_reviews_links
    ADD CONSTRAINT components_page_blocks_reviews_list_blocks_reviews_links_fk FOREIGN KEY (reviews_list_block_id) REFERENCES public.components_page_blocks_reviews_list_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_reviews_list_blocks_reviews_links components_page_blocks_reviews_list_blocks_reviews_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_reviews_list_blocks_reviews_links
    ADD CONSTRAINT components_page_blocks_reviews_list_blocks_reviews_links_inv_fk FOREIGN KEY (review_id) REFERENCES public.reviews(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_slider_blocks_slider_links components_page_blocks_slider_blocks_slider_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_slider_blocks_slider_links
    ADD CONSTRAINT components_page_blocks_slider_blocks_slider_links_fk FOREIGN KEY (slider_block_id) REFERENCES public.components_page_blocks_slider_blocks(id) ON DELETE CASCADE;


--
-- Name: components_page_blocks_slider_blocks_slider_links components_page_blocks_slider_blocks_slider_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.components_page_blocks_slider_blocks_slider_links
    ADD CONSTRAINT components_page_blocks_slider_blocks_slider_links_inv_fk FOREIGN KEY (slider_id) REFERENCES public.sliders(id) ON DELETE CASCADE;


--
-- Name: configurations configurations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.configurations
    ADD CONSTRAINT configurations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: configurations_components configurations_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.configurations_components
    ADD CONSTRAINT configurations_entity_fk FOREIGN KEY (entity_id) REFERENCES public.configurations(id) ON DELETE CASCADE;


--
-- Name: configurations configurations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.configurations
    ADD CONSTRAINT configurations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: currencies currencies_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT currencies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: currencies_localizations_links currencies_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.currencies_localizations_links
    ADD CONSTRAINT currencies_localizations_links_fk FOREIGN KEY (currency_id) REFERENCES public.currencies(id) ON DELETE CASCADE;


--
-- Name: currencies_localizations_links currencies_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.currencies_localizations_links
    ADD CONSTRAINT currencies_localizations_links_inv_fk FOREIGN KEY (inv_currency_id) REFERENCES public.currencies(id) ON DELETE CASCADE;


--
-- Name: currencies currencies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT currencies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: email_templates email_templates_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: email_templates email_templates_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: flyouts flyouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts
    ADD CONSTRAINT flyouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: flyouts_components flyouts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts_components
    ADD CONSTRAINT flyouts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.flyouts(id) ON DELETE CASCADE;


--
-- Name: flyouts_localizations_links flyouts_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts_localizations_links
    ADD CONSTRAINT flyouts_localizations_links_fk FOREIGN KEY (flyout_id) REFERENCES public.flyouts(id) ON DELETE CASCADE;


--
-- Name: flyouts_localizations_links flyouts_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts_localizations_links
    ADD CONSTRAINT flyouts_localizations_links_inv_fk FOREIGN KEY (inv_flyout_id) REFERENCES public.flyouts(id) ON DELETE CASCADE;


--
-- Name: flyouts flyouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.flyouts
    ADD CONSTRAINT flyouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: footers footers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: footers_components footers_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.footers(id) ON DELETE CASCADE;


--
-- Name: footers_localizations_links footers_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers_localizations_links
    ADD CONSTRAINT footers_localizations_links_fk FOREIGN KEY (footer_id) REFERENCES public.footers(id) ON DELETE CASCADE;


--
-- Name: footers_localizations_links footers_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers_localizations_links
    ADD CONSTRAINT footers_localizations_links_inv_fk FOREIGN KEY (inv_footer_id) REFERENCES public.footers(id) ON DELETE CASCADE;


--
-- Name: footers footers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: form_requests form_requests_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests
    ADD CONSTRAINT form_requests_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: form_requests_components form_requests_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests_components
    ADD CONSTRAINT form_requests_entity_fk FOREIGN KEY (entity_id) REFERENCES public.form_requests(id) ON DELETE CASCADE;


--
-- Name: form_requests_form_links form_requests_form_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests_form_links
    ADD CONSTRAINT form_requests_form_links_fk FOREIGN KEY (form_request_id) REFERENCES public.form_requests(id) ON DELETE CASCADE;


--
-- Name: form_requests_form_links form_requests_form_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests_form_links
    ADD CONSTRAINT form_requests_form_links_inv_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: form_requests form_requests_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.form_requests
    ADD CONSTRAINT form_requests_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: forms forms_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: forms_components forms_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms_components
    ADD CONSTRAINT forms_entity_fk FOREIGN KEY (entity_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_localizations_links forms_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms_localizations_links
    ADD CONSTRAINT forms_localizations_links_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_localizations_links forms_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms_localizations_links
    ADD CONSTRAINT forms_localizations_links_inv_fk FOREIGN KEY (inv_form_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms forms_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: layouts layouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: layouts_footer_links layouts_footer_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_footer_links
    ADD CONSTRAINT layouts_footer_links_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_footer_links layouts_footer_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_footer_links
    ADD CONSTRAINT layouts_footer_links_inv_fk FOREIGN KEY (footer_id) REFERENCES public.footers(id) ON DELETE CASCADE;


--
-- Name: layouts_localizations_links layouts_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_localizations_links
    ADD CONSTRAINT layouts_localizations_links_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_localizations_links layouts_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_localizations_links
    ADD CONSTRAINT layouts_localizations_links_inv_fk FOREIGN KEY (inv_layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_modals_links layouts_modals_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_modals_links
    ADD CONSTRAINT layouts_modals_links_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_modals_links layouts_modals_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_modals_links
    ADD CONSTRAINT layouts_modals_links_inv_fk FOREIGN KEY (modal_id) REFERENCES public.modals(id) ON DELETE CASCADE;


--
-- Name: layouts_navbar_links layouts_navbar_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_navbar_links
    ADD CONSTRAINT layouts_navbar_links_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_navbar_links layouts_navbar_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_navbar_links
    ADD CONSTRAINT layouts_navbar_links_inv_fk FOREIGN KEY (navbar_id) REFERENCES public.navbars(id) ON DELETE CASCADE;


--
-- Name: layouts_sidebar_links layouts_sidebar_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_sidebar_links
    ADD CONSTRAINT layouts_sidebar_links_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_sidebar_links layouts_sidebar_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_sidebar_links
    ADD CONSTRAINT layouts_sidebar_links_inv_fk FOREIGN KEY (sidebar_id) REFERENCES public.sidebars(id) ON DELETE CASCADE;


--
-- Name: layouts_slide_overs_links layouts_slide_overs_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_slide_overs_links
    ADD CONSTRAINT layouts_slide_overs_links_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_slide_overs_links layouts_slide_overs_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_slide_overs_links
    ADD CONSTRAINT layouts_slide_overs_links_inv_fk FOREIGN KEY (slide_over_id) REFERENCES public.slide_overs(id) ON DELETE CASCADE;


--
-- Name: layouts_topbar_links layouts_topbar_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_topbar_links
    ADD CONSTRAINT layouts_topbar_links_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_topbar_links layouts_topbar_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts_topbar_links
    ADD CONSTRAINT layouts_topbar_links_inv_fk FOREIGN KEY (topbar_id) REFERENCES public.topbars(id) ON DELETE CASCADE;


--
-- Name: layouts layouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: loaders loaders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.loaders
    ADD CONSTRAINT loaders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: loaders loaders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.loaders
    ADD CONSTRAINT loaders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: metatags metatags_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.metatags
    ADD CONSTRAINT metatags_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: metatags_localizations_links metatags_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.metatags_localizations_links
    ADD CONSTRAINT metatags_localizations_links_fk FOREIGN KEY (metatag_id) REFERENCES public.metatags(id) ON DELETE CASCADE;


--
-- Name: metatags_localizations_links metatags_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.metatags_localizations_links
    ADD CONSTRAINT metatags_localizations_links_inv_fk FOREIGN KEY (inv_metatag_id) REFERENCES public.metatags(id) ON DELETE CASCADE;


--
-- Name: metatags metatags_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.metatags
    ADD CONSTRAINT metatags_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: modals modals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals
    ADD CONSTRAINT modals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: modals_components modals_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals_components
    ADD CONSTRAINT modals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.modals(id) ON DELETE CASCADE;


--
-- Name: modals_localizations_links modals_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals_localizations_links
    ADD CONSTRAINT modals_localizations_links_fk FOREIGN KEY (modal_id) REFERENCES public.modals(id) ON DELETE CASCADE;


--
-- Name: modals_localizations_links modals_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals_localizations_links
    ADD CONSTRAINT modals_localizations_links_inv_fk FOREIGN KEY (inv_modal_id) REFERENCES public.modals(id) ON DELETE CASCADE;


--
-- Name: modals modals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.modals
    ADD CONSTRAINT modals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: navbars navbars_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars
    ADD CONSTRAINT navbars_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: navbars_components navbars_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars_components
    ADD CONSTRAINT navbars_entity_fk FOREIGN KEY (entity_id) REFERENCES public.navbars(id) ON DELETE CASCADE;


--
-- Name: navbars_localizations_links navbars_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars_localizations_links
    ADD CONSTRAINT navbars_localizations_links_fk FOREIGN KEY (navbar_id) REFERENCES public.navbars(id) ON DELETE CASCADE;


--
-- Name: navbars_localizations_links navbars_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars_localizations_links
    ADD CONSTRAINT navbars_localizations_links_inv_fk FOREIGN KEY (inv_navbar_id) REFERENCES public.navbars(id) ON DELETE CASCADE;


--
-- Name: navbars navbars_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.navbars
    ADD CONSTRAINT navbars_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages_components pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_layout_links pages_layout_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_layout_links
    ADD CONSTRAINT pages_layout_links_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_layout_links pages_layout_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_layout_links
    ADD CONSTRAINT pages_layout_links_inv_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: pages_localizations_links pages_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_localizations_links pages_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_inv_fk FOREIGN KEY (inv_page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_metatag_links pages_metatag_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_metatag_links
    ADD CONSTRAINT pages_metatag_links_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_metatag_links pages_metatag_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages_metatag_links
    ADD CONSTRAINT pages_metatag_links_inv_fk FOREIGN KEY (metatag_id) REFERENCES public.metatags(id) ON DELETE CASCADE;


--
-- Name: pages pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reviews reviews_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reviews reviews_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: robots robots_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.robots
    ADD CONSTRAINT robots_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: robots robots_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.robots
    ADD CONSTRAINT robots_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sidebars sidebars_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars
    ADD CONSTRAINT sidebars_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sidebars_components sidebars_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars_components
    ADD CONSTRAINT sidebars_entity_fk FOREIGN KEY (entity_id) REFERENCES public.sidebars(id) ON DELETE CASCADE;


--
-- Name: sidebars_localizations_links sidebars_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars_localizations_links
    ADD CONSTRAINT sidebars_localizations_links_fk FOREIGN KEY (sidebar_id) REFERENCES public.sidebars(id) ON DELETE CASCADE;


--
-- Name: sidebars_localizations_links sidebars_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars_localizations_links
    ADD CONSTRAINT sidebars_localizations_links_inv_fk FOREIGN KEY (inv_sidebar_id) REFERENCES public.sidebars(id) ON DELETE CASCADE;


--
-- Name: sidebars sidebars_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sidebars
    ADD CONSTRAINT sidebars_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: slide_overs slide_overs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs
    ADD CONSTRAINT slide_overs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: slide_overs_components slide_overs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs_components
    ADD CONSTRAINT slide_overs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.slide_overs(id) ON DELETE CASCADE;


--
-- Name: slide_overs_localizations_links slide_overs_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs_localizations_links
    ADD CONSTRAINT slide_overs_localizations_links_fk FOREIGN KEY (slide_over_id) REFERENCES public.slide_overs(id) ON DELETE CASCADE;


--
-- Name: slide_overs_localizations_links slide_overs_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs_localizations_links
    ADD CONSTRAINT slide_overs_localizations_links_inv_fk FOREIGN KEY (inv_slide_over_id) REFERENCES public.slide_overs(id) ON DELETE CASCADE;


--
-- Name: slide_overs slide_overs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.slide_overs
    ADD CONSTRAINT slide_overs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sliders sliders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders
    ADD CONSTRAINT sliders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sliders_components sliders_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders_components
    ADD CONSTRAINT sliders_entity_fk FOREIGN KEY (entity_id) REFERENCES public.sliders(id) ON DELETE CASCADE;


--
-- Name: sliders_localizations_links sliders_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders_localizations_links
    ADD CONSTRAINT sliders_localizations_links_fk FOREIGN KEY (slider_id) REFERENCES public.sliders(id) ON DELETE CASCADE;


--
-- Name: sliders_localizations_links sliders_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders_localizations_links
    ADD CONSTRAINT sliders_localizations_links_inv_fk FOREIGN KEY (inv_slider_id) REFERENCES public.sliders(id) ON DELETE CASCADE;


--
-- Name: sliders sliders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.sliders
    ADD CONSTRAINT sliders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: telegrams telegrams_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.telegrams
    ADD CONSTRAINT telegrams_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: telegrams telegrams_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.telegrams
    ADD CONSTRAINT telegrams_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: themes themes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: themes_components themes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.themes_components
    ADD CONSTRAINT themes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.themes(id) ON DELETE CASCADE;


--
-- Name: themes themes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tiers tiers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers
    ADD CONSTRAINT tiers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tiers_currency_links tiers_currency_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_currency_links
    ADD CONSTRAINT tiers_currency_links_fk FOREIGN KEY (tier_id) REFERENCES public.tiers(id) ON DELETE CASCADE;


--
-- Name: tiers_currency_links tiers_currency_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_currency_links
    ADD CONSTRAINT tiers_currency_links_inv_fk FOREIGN KEY (currency_id) REFERENCES public.currencies(id) ON DELETE CASCADE;


--
-- Name: tiers_components tiers_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_components
    ADD CONSTRAINT tiers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.tiers(id) ON DELETE CASCADE;


--
-- Name: tiers_localizations_links tiers_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_localizations_links
    ADD CONSTRAINT tiers_localizations_links_fk FOREIGN KEY (tier_id) REFERENCES public.tiers(id) ON DELETE CASCADE;


--
-- Name: tiers_localizations_links tiers_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers_localizations_links
    ADD CONSTRAINT tiers_localizations_links_inv_fk FOREIGN KEY (inv_tier_id) REFERENCES public.tiers(id) ON DELETE CASCADE;


--
-- Name: tiers tiers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.tiers
    ADD CONSTRAINT tiers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: topbars topbars_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars
    ADD CONSTRAINT topbars_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: topbars_components topbars_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars_components
    ADD CONSTRAINT topbars_entity_fk FOREIGN KEY (entity_id) REFERENCES public.topbars(id) ON DELETE CASCADE;


--
-- Name: topbars_localizations_links topbars_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars_localizations_links
    ADD CONSTRAINT topbars_localizations_links_fk FOREIGN KEY (topbar_id) REFERENCES public.topbars(id) ON DELETE CASCADE;


--
-- Name: topbars_localizations_links topbars_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars_localizations_links
    ADD CONSTRAINT topbars_localizations_links_inv_fk FOREIGN KEY (inv_topbar_id) REFERENCES public.topbars(id) ON DELETE CASCADE;


--
-- Name: topbars topbars_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.topbars
    ADD CONSTRAINT topbars_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dev-portfolio
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

