toc.dat                                                                                             0000600 0004000 0002000 00000230700 13714312441 0014441 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       )    *                x            kemendag    11.8    11.8 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         �           1262    16393    kemendag    DATABASE     �   CREATE DATABASE kemendag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE kemendag;
             postgres    false         �            1259    16917    about_us    TABLE     �   CREATE TABLE public.about_us (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.about_us;
       public         postgres    false         �            1259    16915    about_us_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.about_us_id_seq;
       public       postgres    false    235         �           0    0    about_us_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.about_us_id_seq OWNED BY public.about_us.id;
            public       postgres    false    234         �            1259    16925    about_us_translations    TABLE     (  CREATE TABLE public.about_us_translations (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    welcome_message character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.about_us_translations;
       public         postgres    false         �            1259    16923    about_us_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_us_translations_id_seq;
       public       postgres    false    237         �           0    0    about_us_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_us_translations_id_seq OWNED BY public.about_us_translations.id;
            public       postgres    false    236         �            1259    16868    albums    TABLE     ~  CREATE TABLE public.albums (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    cover_image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    slug character varying(255) NOT NULL
);
    DROP TABLE public.albums;
       public         postgres    false         �            1259    16866    albums_id_seq    SEQUENCE     v   CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.albums_id_seq;
       public       postgres    false    227         �           0    0    albums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;
            public       postgres    false    226         �            1259    16849    article_categories    TABLE     #  CREATE TABLE public.article_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 &   DROP TABLE public.article_categories;
       public         postgres    false         �            1259    16847    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.article_categories_id_seq;
       public       postgres    false    223         �           0    0    article_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.article_categories_id_seq OWNED BY public.article_categories.id;
            public       postgres    false    222         �            1259    16590    cities    TABLE     6  CREATE TABLE public.cities (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_id bigint NOT NULL,
    city_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.cities;
       public         postgres    false         �            1259    16588    cities_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public       postgres    false    217         �           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
            public       postgres    false    216         �            1259    16501 	   countries    TABLE     �   CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.countries;
       public         postgres    false         �            1259    16499    countries_id_seq    SEQUENCE     y   CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public       postgres    false    212         �           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
            public       postgres    false    211         �            1259    16821    duty_categories    TABLE     �   CREATE TABLE public.duty_categories (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 #   DROP TABLE public.duty_categories;
       public         postgres    false         �            1259    16819    duty_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.duty_categories_id_seq;
       public       postgres    false    219         �           0    0    duty_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.duty_categories_id_seq OWNED BY public.duty_categories.id;
            public       postgres    false    218         �            1259    16829    duty_category_translations    TABLE     �   CREATE TABLE public.duty_category_translations (
    id integer NOT NULL,
    duty_category_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 .   DROP TABLE public.duty_category_translations;
       public         postgres    false         �            1259    16827 !   duty_category_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_category_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.duty_category_translations_id_seq;
       public       postgres    false    221         �           0    0 !   duty_category_translations_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.duty_category_translations_id_seq OWNED BY public.duty_category_translations.id;
            public       postgres    false    220         �            1259    17118    event_translations    TABLE       CREATE TABLE public.event_translations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL
);
 &   DROP TABLE public.event_translations;
       public         postgres    false         �            1259    17116    event_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.event_translations_id_seq;
       public       postgres    false    251         �           0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
            public       postgres    false    250         �            1259    17107    events    TABLE       CREATE TABLE public.events (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    event_type integer NOT NULL,
    date_from timestamp(0) without time zone NOT NULL,
    date_to timestamp(0) without time zone NOT NULL,
    country_id integer NOT NULL,
    location character varying(255),
    brocure character varying(255),
    link character varying(255),
    status_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.events;
       public         postgres    false         �            1259    17105    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public       postgres    false    249         �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
            public       postgres    false    248         �            1259    16857    faq_categories    TABLE     C  CREATE TABLE public.faq_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by character varying(255) NOT NULL,
    updated_by character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 "   DROP TABLE public.faq_categories;
       public         postgres    false         �            1259    16855    faq_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faq_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.faq_categories_id_seq;
       public       postgres    false    225         �           0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
            public       postgres    false    224         �            1259    17096    faqs    TABLE     @  CREATE TABLE public.faqs (
    id bigint NOT NULL,
    faq_category_id integer NOT NULL,
    site_id uuid NOT NULL,
    pertanyaan text NOT NULL,
    jawaban text NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.faqs;
       public         postgres    false         �            1259    17094    faqs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.faqs_id_seq;
       public       postgres    false    247         �           0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
            public       postgres    false    246         �            1259    16895    front_banners    TABLE     �  CREATE TABLE public.front_banners (
    id bigint NOT NULL,
    "position" integer,
    type integer NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    link character varying(255),
    site_id uuid NOT NULL
);
 !   DROP TABLE public.front_banners;
       public         postgres    false         �            1259    16893    front_banners_id_seq    SEQUENCE     }   CREATE SEQUENCE public.front_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.front_banners_id_seq;
       public       postgres    false    231         �           0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
            public       postgres    false    230         �            1259    16879    images    TABLE       CREATE TABLE public.images (
    id bigint NOT NULL,
    album_id integer NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.images;
       public         postgres    false         �            1259    16877    images_id_seq    SEQUENCE     v   CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public       postgres    false    229         �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
            public       postgres    false    228         �            1259    16490    log_activities    TABLE     i  CREATE TABLE public.log_activities (
    id bigint NOT NULL,
    subject text NOT NULL,
    url character varying(255) NOT NULL,
    method character varying(255) NOT NULL,
    ip character varying(255) NOT NULL,
    agent character varying(255),
    user_id uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.log_activities;
       public         postgres    false         �            1259    16488    log_activities_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.log_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.log_activities_id_seq;
       public       postgres    false    210         �           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
            public       postgres    false    209         �            1259    16944    main_duties    TABLE     �   CREATE TABLE public.main_duties (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.main_duties;
       public         postgres    false         �            1259    16942    main_duties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_duties_id_seq;
       public       postgres    false    239         �           0    0    main_duties_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_duties_id_seq OWNED BY public.main_duties.id;
            public       postgres    false    238         �            1259    16952    main_duty_translations    TABLE     M  CREATE TABLE public.main_duty_translations (
    id bigint NOT NULL,
    main_duty_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category character varying(255),
    slug character varying(255) NOT NULL,
    "position" character varying(255) NOT NULL,
    mainduty text NOT NULL,
    function text NOT NULL
);
 *   DROP TABLE public.main_duty_translations;
       public         postgres    false         �            1259    16950    main_duty_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duty_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_duty_translations_id_seq;
       public       postgres    false    241         �           0    0    main_duty_translations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_duty_translations_id_seq OWNED BY public.main_duty_translations.id;
            public       postgres    false    240         �            1259    16396 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false         �            1259    16394    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197         �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196         �            1259    16441    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public         postgres    false         �            1259    16452    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public         postgres    false         �            1259    17161    official_translations    TABLE     �   CREATE TABLE public.official_translations (
    id bigint NOT NULL,
    official_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 )   DROP TABLE public.official_translations;
       public         postgres    false         �            1259    17159    official_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.official_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.official_translations_id_seq;
       public       postgres    false    255         �           0    0    official_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.official_translations_id_seq OWNED BY public.official_translations.id;
            public       postgres    false    254         �            1259    17139 	   officials    TABLE     �  CREATE TABLE public.officials (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    userpic character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    created_by uuid NOT NULL,
    updated_by uuid,
    unit_id bigint NOT NULL
);
    DROP TABLE public.officials;
       public         postgres    false         �            1259    17137    officials_id_seq    SEQUENCE     y   CREATE SEQUENCE public.officials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.officials_id_seq;
       public       postgres    false    253         �           0    0    officials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.officials_id_seq OWNED BY public.officials.id;
            public       postgres    false    252         �            1259    16412    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false         �            1259    16421    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false         �            1259    16419    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    201         �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    200         �            1259    17034    post_translations    TABLE     �   CREATE TABLE public.post_translations (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    slug character varying(255) NOT NULL
);
 %   DROP TABLE public.post_translations;
       public         postgres    false         �            1259    17032    post_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.post_translations_id_seq;
       public       postgres    false    245         �           0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
            public       postgres    false    244         �            1259    17012    posts    TABLE     �  CREATE TABLE public.posts (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    type character varying(255) NOT NULL,
    source character varying(255),
    file character varying(255),
    reporter_id uuid NOT NULL,
    status_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    category_id bigint NOT NULL,
    published_at timestamp without time zone
);
    DROP TABLE public.posts;
       public         postgres    false         �            1259    17010    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public       postgres    false    243         �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
            public       postgres    false    242         �            1259    16906    publications    TABLE     e  CREATE TABLE public.publications (
    id bigint NOT NULL,
    cover_image character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    file character varying(255)
);
     DROP TABLE public.publications;
       public         postgres    false         �            1259    16904    publications_id_seq    SEQUENCE     |   CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.publications_id_seq;
       public       postgres    false    233         �           0    0    publications_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;
            public       postgres    false    232         �            1259    16577    regions    TABLE       CREATE TABLE public.regions (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.regions;
       public         postgres    false         �            1259    16575    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public       postgres    false    215         �           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
            public       postgres    false    214         �            1259    16463    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public         postgres    false         �            1259    16432    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false         �            1259    16430    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    203         �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    202         �            1259    16483    sites    TABLE     �   CREATE TABLE public.sites (
    id uuid NOT NULL,
    site_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sites;
       public         postgres    false         �            1259    16478    statuses    TABLE     �   CREATE TABLE public.statuses (
    id uuid NOT NULL,
    status_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.statuses;
       public         postgres    false                    1259    17182    units    TABLE       CREATE TABLE public.units (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    unit_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.units;
       public         postgres    false                     1259    17180    units_id_seq    SEQUENCE     u   CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.units_id_seq;
       public       postgres    false    257         �           0    0    units_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;
            public       postgres    false    256         �            1259    16402    users    TABLE       CREATE TABLE public.users (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    site_id uuid,
    reporter character varying(255),
    last_login_at timestamp(0) without time zone,
    last_login_from character varying(255),
    status_id uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         postgres    false         �            1259    16558    videos    TABLE       CREATE TABLE public.videos (
    id uuid NOT NULL,
    video_id character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    thumbnail character varying(255) NOT NULL,
    thumbnail_small character varying(255) NOT NULL,
    player character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid
);
    DROP TABLE public.videos;
       public         postgres    false         ]           2604    16920    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235         ^           2604    16928    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236    237         Y           2604    16871 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227         W           2604    16852    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223         T           2604    16593 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217         R           2604    16504    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    212    212         U           2604    16824    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219         V           2604    16832    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221         e           2604    17121    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    250    251    251         d           2604    17110 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    249    249         X           2604    16860    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225         c           2604    17099    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246    247         [           2604    16898    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231         Z           2604    16882 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229         Q           2604    16493    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210         _           2604    16947    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    239    239         `           2604    16955    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241         N           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197         g           2604    17164    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    254    255    255         f           2604    17142    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253         O           2604    16424    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201         b           2604    17037    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245         a           2604    17015    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243         \           2604    16909    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233         S           2604    16580 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215         P           2604    16435    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203         h           2604    17185    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    256    257    257         w          0    16917    about_us 
   TABLE DATA               R   COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    235       3191.dat y          0    16925    about_us_translations 
   TABLE DATA               q   COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM stdin;
    public       postgres    false    237       3193.dat o          0    16868    albums 
   TABLE DATA               �   COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM stdin;
    public       postgres    false    227       3183.dat k          0    16849    article_categories 
   TABLE DATA               x   COPY public.article_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    223       3179.dat e          0    16590    cities 
   TABLE DATA               v   COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    217       3173.dat `          0    16501 	   countries 
   TABLE DATA               e   COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    212       3168.dat g          0    16821    duty_categories 
   TABLE DATA               f   COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    219       3175.dat i          0    16829    duty_category_translations 
   TABLE DATA               g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public       postgres    false    221       3177.dat �          0    17118    event_translations 
   TABLE DATA               \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public       postgres    false    251       3207.dat �          0    17107    events 
   TABLE DATA               �   COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    249       3205.dat m          0    16857    faq_categories 
   TABLE DATA               t   COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    225       3181.dat �          0    17096    faqs 
   TABLE DATA               �   COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    247       3203.dat s          0    16895    front_banners 
   TABLE DATA               �   COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id) FROM stdin;
    public       postgres    false    231       3187.dat q          0    16879    images 
   TABLE DATA               Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public       postgres    false    229       3185.dat ^          0    16490    log_activities 
   TABLE DATA               n   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    210       3166.dat {          0    16944    main_duties 
   TABLE DATA               b   COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    239       3195.dat }          0    16952    main_duty_translations 
   TABLE DATA               z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public       postgres    false    241       3197.dat Q          0    16396 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197       3153.dat X          0    16441    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    204       3160.dat Y          0    16452    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    205       3161.dat �          0    17161    official_translations 
   TABLE DATA               U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public       postgres    false    255       3211.dat �          0    17139 	   officials 
   TABLE DATA               �   COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM stdin;
    public       postgres    false    253       3209.dat S          0    16412    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    199       3155.dat U          0    16421    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    201       3157.dat �          0    17034    post_translations 
   TABLE DATA               V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public       postgres    false    245       3201.dat           0    17012    posts 
   TABLE DATA               �   COPY public.posts (id, site_id, type, source, file, reporter_id, status_id, created_by, updated_by, created_at, updated_at, category_id, published_at) FROM stdin;
    public       postgres    false    243       3199.dat u          0    16906    publications 
   TABLE DATA               |   COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file) FROM stdin;
    public       postgres    false    233       3189.dat c          0    16577    regions 
   TABLE DATA               n   COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    215       3171.dat Z          0    16463    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    206       3162.dat W          0    16432    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    203       3159.dat \          0    16483    sites 
   TABLE DATA               F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public       postgres    false    208       3164.dat [          0    16478    statuses 
   TABLE DATA               K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public       postgres    false    207       3163.dat �          0    17182    units 
   TABLE DATA               g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    257       3213.dat R          0    16402    users 
   TABLE DATA               �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    198       3154.dat a          0    16558    videos 
   TABLE DATA               �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM stdin;
    public       postgres    false    213       3169.dat �           0    0    about_us_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.about_us_id_seq', 5, true);
            public       postgres    false    234         �           0    0    about_us_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 7, true);
            public       postgres    false    236         �           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 12, true);
            public       postgres    false    226         �           0    0    article_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.article_categories_id_seq', 12, true);
            public       postgres    false    222         �           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
            public       postgres    false    216         �           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 4, true);
            public       postgres    false    211         �           0    0    duty_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.duty_categories_id_seq', 9, true);
            public       postgres    false    218         �           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 18, true);
            public       postgres    false    220         �           0    0    event_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.event_translations_id_seq', 4, true);
            public       postgres    false    250         �           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 3, true);
            public       postgres    false    248         �           0    0    faq_categories_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, true);
            public       postgres    false    224         �           0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
            public       postgres    false    246         �           0    0    front_banners_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.front_banners_id_seq', 4, true);
            public       postgres    false    230         �           0    0    images_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.images_id_seq', 9, true);
            public       postgres    false    228         �           0    0    log_activities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.log_activities_id_seq', 177, true);
            public       postgres    false    209         �           0    0    main_duties_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.main_duties_id_seq', 5, true);
            public       postgres    false    238         �           0    0    main_duty_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 6, true);
            public       postgres    false    240         �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 50, true);
            public       postgres    false    196         �           0    0    official_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.official_translations_id_seq', 2, true);
            public       postgres    false    254         �           0    0    officials_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.officials_id_seq', 1, true);
            public       postgres    false    252         �           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
            public       postgres    false    200         �           0    0    post_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.post_translations_id_seq', 27, true);
            public       postgres    false    244         �           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 17, true);
            public       postgres    false    242         �           0    0    publications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.publications_id_seq', 1, false);
            public       postgres    false    232         �           0    0    regions_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.regions_id_seq', 1, true);
            public       postgres    false    214         �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
            public       postgres    false    202         �           0    0    units_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.units_id_seq', 2, true);
            public       postgres    false    256         �           2606    16922    about_us about_us_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.about_us
    ADD CONSTRAINT about_us_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.about_us DROP CONSTRAINT about_us_pkey;
       public         postgres    false    235         �           2606    16935 E   about_us_translations about_us_translations_about_us_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_locale_unique UNIQUE (about_us_id, locale);
 o   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_locale_unique;
       public         postgres    false    237    237         �           2606    16933 0   about_us_translations about_us_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_pkey;
       public         postgres    false    237         �           2606    16876    albums albums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.albums DROP CONSTRAINT albums_pkey;
       public         postgres    false    227         �           2606    16854 *   article_categories article_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.article_categories DROP CONSTRAINT article_categories_pkey;
       public         postgres    false    223         �           2606    16595    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public         postgres    false    217         �           2606    16506    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         postgres    false    212         �           2606    16826 $   duty_categories duty_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.duty_categories
    ADD CONSTRAINT duty_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.duty_categories DROP CONSTRAINT duty_categories_pkey;
       public         postgres    false    219         �           2606    16839 T   duty_category_translations duty_category_translations_duty_category_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_locale_unique UNIQUE (duty_category_id, locale);
 ~   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_locale_unique;
       public         postgres    false    221    221         �           2606    16837 :   duty_category_translations duty_category_translations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_pkey;
       public         postgres    false    221         �           2606    17128 <   event_translations event_translations_event_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_locale_unique UNIQUE (event_id, locale);
 f   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_locale_unique;
       public         postgres    false    251    251         �           2606    17126 *   event_translations event_translations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_pkey;
       public         postgres    false    251         �           2606    17136 1   event_translations event_translations_slug_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_slug_unique UNIQUE (slug);
 [   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_slug_unique;
       public         postgres    false    251         �           2606    17115    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public         postgres    false    249         �           2606    16865 "   faq_categories faq_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.faq_categories DROP CONSTRAINT faq_categories_pkey;
       public         postgres    false    225         �           2606    17104    faqs faqs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.faqs DROP CONSTRAINT faqs_pkey;
       public         postgres    false    247         �           2606    16903     front_banners front_banners_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.front_banners
    ADD CONSTRAINT front_banners_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.front_banners DROP CONSTRAINT front_banners_pkey;
       public         postgres    false    231         �           2606    16887    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public         postgres    false    229         �           2606    16498 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public         postgres    false    210         �           2606    16949    main_duties main_duties_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_duties
    ADD CONSTRAINT main_duties_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_duties DROP CONSTRAINT main_duties_pkey;
       public         postgres    false    239         �           2606    16962 H   main_duty_translations main_duty_translations_main_duty_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_locale_unique UNIQUE (main_duty_id, locale);
 r   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_locale_unique;
       public         postgres    false    241    241         �           2606    16960 2   main_duty_translations main_duty_translations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_pkey;
       public         postgres    false    241         j           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197         v           2606    16451 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    204    204    204         y           2606    16462 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public         postgres    false    205    205    205         �           2606    17171 E   official_translations official_translations_official_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_locale_unique UNIQUE (official_id, locale);
 o   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_locale_unique;
       public         postgres    false    255    255         �           2606    17169 0   official_translations official_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_pkey;
       public         postgres    false    255         �           2606    17179 7   official_translations official_translations_slug_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_slug_unique UNIQUE (slug);
 a   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_slug_unique;
       public         postgres    false    255         �           2606    17147    officials officials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.officials
    ADD CONSTRAINT officials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.officials DROP CONSTRAINT officials_pkey;
       public         postgres    false    253         q           2606    16429    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    201         �           2606    17042 (   post_translations post_translations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_pkey;
       public         postgres    false    245         �           2606    17044 9   post_translations post_translations_post_id_locale_unique 
   CONSTRAINT        ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_locale_unique UNIQUE (post_id, locale);
 c   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_locale_unique;
       public         postgres    false    245    245         �           2606    17052 /   post_translations post_translations_slug_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_slug_unique UNIQUE (slug);
 Y   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_slug_unique;
       public         postgres    false    245         �           2606    17020    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public         postgres    false    243         �           2606    16914    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public         postgres    false    233         �           2606    16582    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public         postgres    false    215         {           2606    16477 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    206    206         s           2606    16440    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    203                    2606    16487    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public         postgres    false    208         }           2606    16482    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public         postgres    false    207         �           2606    17187    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public         postgres    false    257         l           2606    16411    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    198         n           2606    16409    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    198         �           2606    16565    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public         postgres    false    213         �           1259    16941 "   about_us_translations_locale_index    INDEX     f   CREATE INDEX about_us_translations_locale_index ON public.about_us_translations USING btree (locale);
 6   DROP INDEX public.about_us_translations_locale_index;
       public         postgres    false    237         �           1259    16845 '   duty_category_translations_locale_index    INDEX     p   CREATE INDEX duty_category_translations_locale_index ON public.duty_category_translations USING btree (locale);
 ;   DROP INDEX public.duty_category_translations_locale_index;
       public         postgres    false    221         �           1259    17134    event_translations_locale_index    INDEX     `   CREATE INDEX event_translations_locale_index ON public.event_translations USING btree (locale);
 3   DROP INDEX public.event_translations_locale_index;
       public         postgres    false    251         �           1259    16968 #   main_duty_translations_locale_index    INDEX     h   CREATE INDEX main_duty_translations_locale_index ON public.main_duty_translations USING btree (locale);
 7   DROP INDEX public.main_duty_translations_locale_index;
       public         postgres    false    241         t           1259    16444 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    204    204         w           1259    16455 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    205    205         �           1259    17177 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public         postgres    false    255         o           1259    16418    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    199         �           1259    17050    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public         postgres    false    245         �           2606    16936 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public       postgres    false    237    2974    235         �           2606    16596    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public       postgres    false    215    2951    217         �           2606    16840 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public       postgres    false    219    2955    221         �           2606    17129 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public       postgres    false    251    2999    249         �           2606    16888    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public       postgres    false    229    227    2966         �           2606    16963 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public       postgres    false    2981    241    239         �           2606    16445 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    2929    204    201         �           2606    16456 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    205    2931    203         �           2606    17172 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public       postgres    false    3008    253    255         �           2606    17045 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public       postgres    false    2988    245    243         �           2606    16583 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public       postgres    false    215    212    2947         �           2606    16466 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    2929    206    201         �           2606    16471 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    203    206    2931                                                                        3191.dat                                                                                            0000600 0004000 0002000 00000000171 13714312441 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	2872ac69-2f76-438b-8b83-31c52787027d	2020-08-05 01:49:49	2020-08-05 01:49:56	92876445-2b7c-4e2f-bb43-d3b71b608e4e
\.


                                                                                                                                                                                                                                                                                                                                                                                                       3193.dat                                                                                            0000600 0004000 0002000 00000000453 13714312441 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	5	id	<p>              <img data-filename="booklet.SMALL-2_page-0001.jpg" style="width: 769px;" src="/public/aboutus15965669890.png"></p>\n	\N	\N
7	5	en	<p>              <img data-filename="booklet.SMALL-2_page-0001.jpg" style="width: 769px;" src="/public/aboutus15965669890.png"></p>\n	\N	\N
\.


                                                                                                                                                                                                                     3183.dat                                                                                            0000600 0004000 0002000 00000001075 13714312441 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        11	Bakti Sosial Ramadhan 1440H	\N	SoLJtTGn_cover.jpg	2020-08-11 00:14:46	2020-08-11 00:14:46	92876445-2b7c-4e2f-bb43-d3b71b608e4e	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	bakti-sosial-ramadhan-1440h
12	Inspektur Jenderal Kementerian Perdagangan, Ibu Srie Agustina menyerahkan hadiah kepada peserta pelatihan terbaik.	\N	1LA5UrUD_cover.jpg	2020-08-11 00:16:07	2020-08-11 00:16:07	92876445-2b7c-4e2f-bb43-d3b71b608e4e	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	inspektur-jenderal-kementerian-perdagangan-ibu-srie-agustina-menyerahkan-hadiah-kepada-peserta-pelatihan-terbaik
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3179.dat                                                                                            0000600 0004000 0002000 00000002060 13714312441 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	Berita	659bafb5-34f7-4176-9102-d3dcf294ec8a	\N	2020-08-01 22:16:31	2020-08-01 22:16:31	35991cce-ca61-4d89-a3e3-d9e938dc4b2f
6	Sejarah	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-09 02:04:47	2020-08-09 02:04:47	92876445-2b7c-4e2f-bb43-d3b71b608e4e
7	Berita	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-09 02:04:53	2020-08-09 02:04:53	92876445-2b7c-4e2f-bb43-d3b71b608e4e
8	Tugas dan Fungsi	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-09 02:05:12	2020-08-09 02:05:12	92876445-2b7c-4e2f-bb43-d3b71b608e4e
9	Visi dan Misi	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-09 02:05:23	2020-08-09 02:05:23	92876445-2b7c-4e2f-bb43-d3b71b608e4e
10	Struktur Organisasi	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-09 02:05:46	2020-08-09 02:05:46	92876445-2b7c-4e2f-bb43-d3b71b608e4e
11	Pengumuman Diklat	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-09 02:32:09	2020-08-09 02:32:09	92876445-2b7c-4e2f-bb43-d3b71b608e4e
12	Undang-Undang/PERPPU	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-11 00:52:26	2020-08-11 00:52:26	92876445-2b7c-4e2f-bb43-d3b71b608e4e
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                3173.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3168.dat                                                                                            0000600 0004000 0002000 00000000141 13714312441 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Indonesia	659bafb5-34f7-4176-9102-d3dcf294ec8a	\N	2020-07-16 13:52:49	2020-07-16 13:52:49
\.


                                                                                                                                                                                                                                                                                                                                                                                                                               3175.dat                                                                                            0000600 0004000 0002000 00000000174 13714312441 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        9	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-04 14:09:56	2020-08-04 14:09:56	92876445-2b7c-4e2f-bb43-d3b71b608e4e
\.


                                                                                                                                                                                                                                                                                                                                                                                                    3177.dat                                                                                            0000600 0004000 0002000 00000000243 13714312441 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        17	9	en	Expert Staff of Trade Diplomacy	expert-staff-of-trade-diplomacy
18	9	id	Staf Ahli Bidang Diplomasi Perdagangan	staf-ahli-bidang-diplomasi-perdagangan
\.


                                                                                                                                                                                                                                                                                                                                                             3207.dat                                                                                            0000600 0004000 0002000 00000000321 13714312441 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	en	Testing	testing	<p>tjycdjyc</p>\n
2	2	id	Percobaan	percobaan	<p>frssnh</p>\n
3	3	en	Fun Talk	fun-talk	<p>vnknhiobger9372097252nkdvlnsv</p>\n
4	3	id	Fun Talk	fun-talk-1	<p>vdklnhjionhreobndfb</p>\n
\.


                                                                                                                                                                                                                                                                                                               3205.dat                                                                                            0000600 0004000 0002000 00000000657 13714312441 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	92876445-2b7c-4e2f-bb43-d3b71b608e4e	1	2020-06-08 00:00:00	2020-08-08 23:59:00	2	Jakarta	\N	#	2872ac69-2f76-438b-8b83-31c52787027d	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-06 01:43:26	2020-08-06 01:43:26
3	92876445-2b7c-4e2f-bb43-d3b71b608e4e	1	2020-06-08 06:00:00	2020-08-08 18:00:00	2	Jakarta	\N	#	2872ac69-2f76-438b-8b83-31c52787027d	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-06 01:50:15	2020-08-06 01:50:15
\.


                                                                                 3181.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3203.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3187.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3185.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3166.dat                                                                                            0000600 0004000 0002000 00000163142 13714312441 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Access Role Administrator Created	http://kemendag-backend.local/apps/roles/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-14 15:50:27	2020-07-14 15:50:27
2	Access Role tes Created	http://kemendag-backend.local/apps/roles/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-14 15:51:34	2020-07-14 15:51:34
3	Access Role tes Updated	http://kemendag-backend.local/apps/roles/update/2	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-14 15:57:32	2020-07-14 15:57:32
4	User eko berhasil diubah	http://kemendag-backend.local/apps/users/update/659bafb5-34f7-4176-9102-d3dcf294ec8a	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-14 16:15:22	2020-07-14 16:15:22
5	Negara  berhasil disimpan	http://kemendag-backend.local/apps/masterdata/countries/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-14 16:37:25	2020-07-14 16:37:25
6	User eko berhasil diubah	http://kemendag-backend.local/apps/users/update/659bafb5-34f7-4176-9102-d3dcf294ec8a	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-15 09:56:54	2020-07-15 09:56:54
7	User eko berhasil diubah	http://kemendag-backend.local/apps/users/update/659bafb5-34f7-4176-9102-d3dcf294ec8a	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-15 09:57:05	2020-07-15 09:57:05
8	User eko berhasil diubah	http://kemendag-backend.local/apps/users/update/659bafb5-34f7-4176-9102-d3dcf294ec8a	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-15 09:58:06	2020-07-15 09:58:06
9	User eko berhasil diubah	http://kemendag-backend.local/apps/users/update/659bafb5-34f7-4176-9102-d3dcf294ec8a	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-15 09:59:58	2020-07-15 09:59:58
10	Video Pajero Sport Lama | Dapat Dibawah 200Jt berhasil disimpan	http://kemendag-backend.local/apps/konten/media/berita-video/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:12:48	2020-07-16 13:12:48
11	Video Building your own camera - Stupid or Genius? berhasil diubah	http://kemendag-backend.local/apps/konten/media/berita-video/update/587ddaa5-362a-4d6f-9cb2-50ab8fba3d6f	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:24:48	2020-07-16 13:24:48
12	Video Building your own camera - Stupid or Genius? berhasil dihapus	http://kemendag-backend.local/apps/konten/media/berita-video/delete/587ddaa5-362a-4d6f-9cb2-50ab8fba3d6f	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:26:09	2020-07-16 13:26:09
13	Video Building your own camera - Stupid or Genius? berhasil dihapus	http://kemendag-backend.local/apps/konten/media/berita-video/delete/587ddaa5-362a-4d6f-9cb2-50ab8fba3d6f	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:26:47	2020-07-16 13:26:47
14	Negara  berhasil diubah	http://kemendag-backend.local/apps/masterdata/countries/update/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:41:12	2020-07-16 13:41:12
15	Negara  berhasil dihapus	http://kemendag-backend.local/apps/masterdata/countries/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:41:16	2020-07-16 13:41:16
16	Negara Indonesia berhasil disimpan	http://kemendag-backend.local/apps/masterdata/countries/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:52:49	2020-07-16 13:52:49
17	Negara DKI Jakarta berhasil disimpan	http://kemendag-backend.local/apps/masterdata/countries/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:52:58	2020-07-16 13:52:58
18	Negara DKI Jakarta berhasil dihapus	http://kemendag-backend.local/apps/masterdata/countries/delete/3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:53:17	2020-07-16 13:53:17
19	Negara DKI Jakarta berhasil disimpan	http://kemendag-backend.local/apps/masterdata/countries/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:53:34	2020-07-16 13:53:34
20	Negara DKI Jakarta berhasil dihapus	http://kemendag-backend.local/apps/masterdata/countries/delete/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:53:40	2020-07-16 13:53:40
21	Provinsi DKI Jakarta Berhasil Disimpan	http://kemendag-backend.local/apps/masterdata/region/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:54:43	2020-07-16 13:54:43
22	Provinsi Jawa Barat Berhasil Diubah	http://kemendag-backend.local/apps/masterdata/region/update/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 13:59:49	2020-07-16 13:59:49
23	{"id":1,"country_id":2,"region_name":"Jawa Barat","created_by":"659bafb5-34f7-4176-9102-d3dcf294ec8a","updated_by":"659bafb5-34f7-4176-9102-d3dcf294ec8a","created_at":"2020-07-16 13:54:43","updated_at":"2020-07-16 13:59:49"}	http://kemendag-backend.local/apps/masterdata/region/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 14:01:21	2020-07-16 14:01:21
24	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 14:46:24	2020-07-16 14:46:24
25	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-16 16:41:29	2020-07-16 16:41:29
26	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 20:34:30	2020-07-18 20:34:30
27	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 20:42:39	2020-07-18 20:42:39
28	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 20:47:05	2020-07-18 20:47:05
29	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 20:52:34	2020-07-18 20:52:34
30	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 21:32:05	2020-07-18 21:32:05
31	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 21:42:51	2020-07-18 21:42:51
32	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:47:01	2020-07-18 22:47:01
33	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:47:09	2020-07-18 22:47:09
34	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:47:58	2020-07-18 22:47:58
35	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:49:22	2020-07-18 22:49:22
36	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:49:43	2020-07-18 22:49:43
37	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:50:19	2020-07-18 22:50:19
38	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:50:25	2020-07-18 22:50:25
39	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:50:35	2020-07-18 22:50:35
40	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:54:50	2020-07-18 22:54:50
41	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:56:45	2020-07-18 22:56:45
42	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/5	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:56:53	2020-07-18 22:56:53
43	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/5	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:56:59	2020-07-18 22:56:59
44	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/5	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 22:59:51	2020-07-18 22:59:51
45	Kategori Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/delete/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:01:58	2020-07-18 23:01:58
46	Kategori Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:02:02	2020-07-18 23:02:02
47	Kategori Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/delete/3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:02:06	2020-07-18 23:02:06
48	Kategori Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/delete/2	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:02:08	2020-07-18 23:02:08
49	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:02:17	2020-07-18 23:02:17
50	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/6	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:02:24	2020-07-18 23:02:24
51	Kategori berhasil diubah	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/update/6	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:02:31	2020-07-18 23:02:31
52	Kategori Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/delete/6	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:02:47	2020-07-18 23:02:47
53	Kategori Artikel Berita Berhasil Disimpan	http://kemendag-backend.local/apps/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:13:57	2020-07-18 23:13:57
54	Kategori Artikel Beritadf Berhasil Diubah	http://kemendag-backend.local/apps/masterdata/kategori-artikel/update/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:16:59	2020-07-18 23:16:59
55	Kategori Artikel Berita Berhasil Disimpan	http://kemendag-backend.local/apps/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:21:32	2020-07-18 23:21:32
56	Kategori FAQ Umum Berhasil Disimpan	http://kemendag-backend.local/apps/masterdata/kategori-faq/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:29:41	2020-07-18 23:29:41
57	Kategori FAQ Umumvfd Berhasil Diubah	http://kemendag-backend.local/apps/masterdata/kategori-faq/update/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:31:09	2020-07-18 23:31:09
58	Kategori FAQ Umumvfd Berhasil Dihapus	http://kemendag-backend.local/apps/masterdata/kategori-faq/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.64	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-18 23:31:37	2020-07-18 23:31:37
59	Banner tes berhasil disimpan	http://kemendag-backend.local/apps/konten/banner-depan/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 11:11:46	2020-07-21 11:11:46
60	Banner tes berhasil dihapus	http://kemendag-backend.local/apps/konten/banner-depan/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:48:36	2020-07-21 12:48:36
61	Banner tes berhasil dihapus	http://kemendag-backend.local/apps/konten/banner-depan/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:49:02	2020-07-21 12:49:02
62	Banner tes berhasil dihapus	http://kemendag-backend.local/apps/konten/banner-depan/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:49:23	2020-07-21 12:49:23
63	Banner tes berhasil disimpan	http://kemendag-backend.local/apps/konten/banner-depan/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:50:52	2020-07-21 12:50:52
64	Banner tes berhasil dihapus	http://kemendag-backend.local/apps/konten/banner-depan/delete/2	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:51:35	2020-07-21 12:51:35
65	Banner tes berhasil disimpan	http://kemendag-backend.local/apps/konten/banner-depan/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:51:59	2020-07-21 12:51:59
66	Banner tes berhasil diubah	http://kemendag-backend.local/apps/konten/banner-depan/update/3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:55:59	2020-07-21 12:55:59
67	Banner tes berhasil diubah	http://kemendag-backend.local/apps/konten/banner-depan/update/3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:56:39	2020-07-21 12:56:39
68	Banner tesss berhasil diubah	http://kemendag-backend.local/apps/konten/banner-depan/update/3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:57:45	2020-07-21 12:57:45
69	Banner tesss berhasil diubah	http://kemendag-backend.local/apps/konten/banner-depan/update/3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:59:45	2020-07-21 12:59:45
70	Banner tesss berhasil dihapus	http://kemendag-backend.local/apps/konten/banner-depan/delete/3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.40	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-07-21 12:59:50	2020-07-21 12:59:50
71	Pesan Tentang Kami berhasil disimpan	http://kemendag-backend.local/apps/konten/tentang-kami/pesan/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.48	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 01:41:15	2020-08-01 01:41:15
72	Pesan Tentang Kami berhasil disimpan	http://kemendag-backend.local/apps/konten/tentang-kami/pesan/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.48	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 01:44:31	2020-08-01 01:44:31
73	Tentang Kami berhasil diubah	http://kemendag-backend.local/apps/konten/tentang-kami/pesan/update/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.48	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 01:53:48	2020-08-01 01:53:48
74	Tentang Kami berhasil diubah	http://kemendag-backend.local/apps/konten/tentang-kami/pesan/update/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.48	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 01:54:01	2020-08-01 01:54:01
75	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.48	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 02:25:08	2020-08-01 02:25:08
76	Tugas dan Fungsi Menteri Perdagangan dan Minister of Tradeberhasil disimpan	http://kemendag-backend.local/apps/konten/tentang-kami/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.48	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 02:44:53	2020-08-01 02:44:53
77	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36 Edg/84.0.522.48	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 03:48:39	2020-08-01 03:48:39
78	User mirza berhasil disimpan	http://kemendag-backend.local/apps/users/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 11:53:06	2020-08-01 11:53:06
79	Banner tes berhasil disimpan	http://kemendag-backend.local/apps/konten/banner-depan/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 12:04:03	2020-08-01 12:04:03
80	Banner tes berhasil diubah	http://kemendag-backend.local/apps/konten/banner-depan/update/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 12:07:31	2020-08-01 12:07:31
81	Banner tes berhasil dihapus	http://kemendag-backend.local/apps/konten/banner-depan/delete/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 12:08:44	2020-08-01 12:08:44
82	File Transparansi Kerja  dengan translasi  berhasil disimpan	http://kemendag-backend.local/apps/konten/tentang-kami/transparansi-kerja/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 12:15:09	2020-08-01 12:15:09
83	Kategori Artikel Daftar Perusahaan Ekspor Berhasil Disimpan	http://kemendag-backend.local/apps/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 13:21:17	2020-08-01 13:21:17
84	Kategori Artikel Berita Berhasil Disimpan	http://kemendag-backend.local/apps/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 22:16:31	2020-08-01 22:16:31
85	Kategori Artikel Daftar Perusahaan Ekspor Berhasil Disimpan	http://kemendag-backend.local/apps/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-01 22:17:27	2020-08-01 22:17:27
86	Tentang Kami berhasil dihapus	http://kemendag-backend.local/apps/konten/tentang-kami/pesan/delete/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-01 23:32:14	2020-08-01 23:32:14
87	Artikel Percobaan Berhasil Disimpan	http://kemendag-backend.local/apps/konten/artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.50	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-02 00:04:19	2020-08-02 00:04:19
88	Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/apps/konten/tentang-kami/tugas-dan-fungsi/delete/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-04 08:44:11	2020-08-04 08:44:11
89	Kategori Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/delete/7	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-04 08:45:31	2020-08-04 08:45:31
90	Kategori Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/delete/8	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-04 08:45:34	2020-08-04 08:45:34
91	Video [FUNNY ATC] Cargolux and Cathay FRIENDLY CHIT-CHAT on frequency =) berhasil disimpan	http://kemendag-backend.local/apps/konten/media/berita-video/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-04 08:56:46	2020-08-04 08:56:46
92	Video BEGINI RASANYA MAUNG YANG VIRAL ITU berhasil diubah	http://kemendag-backend.local/apps/konten/media/berita-video/update/b2324df2-9ca5-4e17-a965-7e3560964ca3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-04 08:59:38	2020-08-04 08:59:38
93	Video BEGINI RASANYA MAUNG YANG VIRAL ITU berhasil dihapus	http://kemendag-backend.local/apps/konten/media/berita-video/delete/b2324df2-9ca5-4e17-a965-7e3560964ca3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-04 08:59:53	2020-08-04 08:59:53
94	Kategori berhasil disimpan	http://kemendag-backend.local/apps/masterdata/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-04 14:09:56	2020-08-04 14:09:56
95	Tugas dan Fungsi Menteri Perdagangan dan Minister of Tradeberhasil disimpan	http://kemendag-backend.local/apps/konten/tentang-kami/tugas-dan-fungsi/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-04 14:10:32	2020-08-04 14:10:32
96	Tugas dan Fungsi Berhasil Diubah	http://kemendag-backend.local/apps/konten/tentang-kami/tugas-dan-fungsi/update/5	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-04 14:21:30	2020-08-04 14:21:30
97	Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/apps/konten/tentang-kami/tugas-dan-fungsi/delete/5	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-04 14:21:58	2020-08-04 14:21:58
98	Pesan Tentang Kami berhasil disimpan	http://kemendag-backend.local/apps/konten/tentang-kami/pesan/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-05 01:49:49	2020-08-05 01:49:49
99	Tentang Kami berhasil dipublish	http://kemendag-backend.local/apps/konten/tentang-kami/pesan/publish/5	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-05 01:49:56	2020-08-05 01:49:56
100	Artikel Percobaan Berhasil Disimpan	http://kemendag-backend.local/apps/konten/artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-05 11:19:21	2020-08-05 11:19:21
101	Artikel Percobaan berhasil dipublish	http://kemendag-backend.local/apps/konten/artikel/publish/6	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-05 14:30:04	2020-08-05 14:30:04
102	Artikel Percobaan berhasil dihapus	http://kemendag-backend.local/apps/konten/artikel/delete/6	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-05 14:30:45	2020-08-05 14:30:45
103	Kegiatan Percobaan Berhasil Disimpan	http://kemendag-backend.local/apps/konten/kegiatan/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-06 01:43:26	2020-08-06 01:43:26
104	Kegiatan Fun Talk Berhasil Disimpan	http://kemendag-backend.local/apps/konten/kegiatan/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-06 01:50:15	2020-08-06 01:50:15
105	Unit Kerja Direktur Berhasil Disimpan	http://kemendag-backend.local/cms/masterdata/unit-kerja/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-08 18:57:56	2020-08-08 18:57:56
106	Unit Kerja Direktur Berhasil Dihapus	http://kemendag-backend.local/cms/masterdata/unit-kerja/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-08 18:58:03	2020-08-08 18:58:03
107	Unit Kerja Direktur Berhasil Disimpan	http://kemendag-backend.local/cms/masterdata/unit-kerja/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-08 19:27:33	2020-08-08 19:27:33
108	Pejabat Agrinesia Raya Group Berhasil Disimpan	http://kemendag-backend.local/cms/konten/pejabat/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-08 19:31:01	2020-08-08 19:31:01
109	Pejabat Agrinesia Raya Group Berhasil Dihapus	http://kemendag-backend.local/cms/konten/pejabat/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-08 19:35:52	2020-08-08 19:35:52
110	Pejabat Agrinesia Raya Group Berhasil Dihapus	http://kemendag-backend.local/cms/konten/pejabat/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-08 19:36:51	2020-08-08 19:36:51
111	Kategori Artikel Daftar Perusahaan Ekspor Berhasil Dihapus	http://kemendag-backend.local/cms/masterdata/kategori-artikel/delete/5	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:04:32	2020-08-09 02:04:32
112	Kategori Artikel Sejarah Berhasil Disimpan	http://kemendag-backend.local/cms/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:04:47	2020-08-09 02:04:47
113	Kategori Artikel Berita Berhasil Disimpan	http://kemendag-backend.local/cms/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:04:53	2020-08-09 02:04:53
114	Kategori Artikel Tugas dan Fungsi Berhasil Disimpan	http://kemendag-backend.local/cms/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:05:12	2020-08-09 02:05:12
115	Kategori Artikel Visi dan Misi Berhasil Disimpan	http://kemendag-backend.local/cms/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:05:23	2020-08-09 02:05:23
116	Kategori Artikel Struktur Organisasi Berhasil Disimpan	http://kemendag-backend.local/cms/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:05:46	2020-08-09 02:05:46
117	Artikel Sejarah Berhasil Disimpan	http://kemendag-backend.local/cms/konten/artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:06:32	2020-08-09 02:06:32
118	Artikel Sejarah berhasil dipublish	http://kemendag-backend.local/cms/konten/artikel/publish/7	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:06:37	2020-08-09 02:06:37
119	Artikel Tugas dan Fungsi Berhasil Disimpan	http://kemendag-backend.local/cms/konten/artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:26:34	2020-08-09 02:26:34
120	Artikel Tugas dan Fungsi berhasil dipublish	http://kemendag-backend.local/cms/konten/artikel/publish/8	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:26:38	2020-08-09 02:26:38
121	Artikel Visi dan Misi Berhasil Disimpan	http://kemendag-backend.local/cms/konten/artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:29:35	2020-08-09 02:29:35
122	Artikel Visi dan Misi berhasil dipublish	http://kemendag-backend.local/cms/konten/artikel/publish/9	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:29:39	2020-08-09 02:29:39
123	Kategori Artikel Pengumuman Diklat Berhasil Disimpan	http://kemendag-backend.local/cms/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-09 02:32:09	2020-08-09 02:32:09
124	User rieco berhasil disimpan	http://kemendag-backend.local/cms/pengguna/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:12:33	2020-08-09 23:12:33
125	User john doe berhasil disimpan	http://kemendag-backend.local/cms/pengguna/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:13:34	2020-08-09 23:13:34
126	User jane doe berhasil disimpan	http://kemendag-backend.local/cms/pengguna/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:14:44	2020-08-09 23:14:44
127	User philips berhasil disimpan	http://kemendag-backend.local/cms/pengguna/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:15:26	2020-08-09 23:15:26
128	User heru berhasil disimpan	http://kemendag-backend.local/cms/pengguna/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:16:03	2020-08-09 23:16:03
129	User eka berhasil disimpan	http://kemendag-backend.local/cms/pengguna/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:16:54	2020-08-09 23:16:54
130	User demo berhasil disimpan	http://kemendag-backend.local/cms/pengguna/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:17:32	2020-08-09 23:17:32
131	User user berhasil disimpan	http://kemendag-backend.local/cms/pengguna/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:17:57	2020-08-09 23:17:57
132	User sample berhasil disimpan	http://kemendag-backend.local/cms/pengguna/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:18:35	2020-08-09 23:18:35
133	Artikel Atasi Kelangkaan, Kemendag Guyur 33.000 Ton Gula di Ibu Kota Berhasil Disimpan	http://kemendag-backend.local/cms/konten/artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	659bafb5-34f7-4176-9102-d3dcf294ec8a	2020-08-09 23:34:01	2020-08-09 23:34:01
134	Album tes berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 11:01:25	2020-08-10 11:01:25
135	Album Admin berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 11:05:44	2020-08-10 11:05:44
136	Album Admin berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 11:07:34	2020-08-10 11:07:34
137	Album Admin berhasil dihapus	http://kemendag-backend.local/cms/konten/media/berita-foto/delete/3	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 11:10:18	2020-08-10 11:10:18
138	Album Admin berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 11:10:33	2020-08-10 11:10:33
139	Album Admin berhasil dihapus	http://kemendag-backend.local/cms/konten/media/berita-foto/delete/4	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 13:23:14	2020-08-10 13:23:14
140	Album Admin berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 13:24:09	2020-08-10 13:24:09
141	Gambar msocvk1n_album_image.jpg berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 13:32:51	2020-08-10 13:32:51
142	Gambar msocvk1n_album_image.jpg berhasil dihapus	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/delete/1	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 13:33:58	2020-08-10 13:33:58
143	Album Admin berhasil dihapus	http://kemendag-backend.local/cms/konten/media/berita-foto/delete/5	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:17:44	2020-08-10 16:17:44
144	Album tes berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:19:52	2020-08-10 16:19:52
145	Album tes berhasil dihapus	http://kemendag-backend.local/cms/konten/media/berita-foto/delete/6	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:20:28	2020-08-10 16:20:28
146	Album tes berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:21:23	2020-08-10 16:21:23
147	Gambar JBnb9Yun_album_image.jpg berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:21:32	2020-08-10 16:21:32
148	Gambar 5dYYaxXX_album_image.jpg berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:21:43	2020-08-10 16:21:43
149	Album tes berhasil dihapus	http://kemendag-backend.local/cms/konten/media/berita-foto/delete/7	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:23:25	2020-08-10 16:23:25
150	Album tes berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:24:41	2020-08-10 16:24:41
151	Gambar HubUGilk_album_image.jpg berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:24:48	2020-08-10 16:24:48
152	Gambar 3hlWhcWc_album_image.jpg berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:24:54	2020-08-10 16:24:54
153	Album tes berhasil dihapus	http://kemendag-backend.local/cms/konten/media/berita-foto/delete/8	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 16:25:03	2020-08-10 16:25:03
154	Album tes berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:25:08	2020-08-10 21:25:08
155	Gambar PEKKU4jH_album_image.jpg berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:25:24	2020-08-10 21:25:24
156	Gambar SYIs7nw2_album_image.jpg berhasil disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:25:31	2020-08-10 21:25:31
157	Album tes berhasil dihapus	http://kemendag-backend.local/cms/konten/media/berita-foto/delete/9	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:26:16	2020-08-10 21:26:16
158	Berita Foto tes Berhasil Disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:36:23	2020-08-10 21:36:23
159	Foto FQIAq4cF_album_image.jpg Berhasil Disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:36:29	2020-08-10 21:36:29
160	Foto qOk1turj_album_image.jpg Berhasil Disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/konten/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:36:35	2020-08-10 21:36:35
161	Artikel Sejarah berhasil dihapus	http://kemendag-backend.local/cms/konten/artikel/delete/7	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:43:42	2020-08-10 21:43:42
162	Artikel  berhasil dihapus	http://kemendag-backend.local/cms/konten/artikel/delete/11	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:45:51	2020-08-10 21:45:51
163	Artikel Sejarah berhasil dipublish	http://kemendag-backend.local/cms/konten/artikel/publish/12	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:45:54	2020-08-10 21:45:54
164	Artikel Sejarah berhasil dihapus	http://kemendag-backend.local/cms/konten/artikel/delete/12	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:48:36	2020-08-10 21:48:36
165	Artikel Sejarah berhasil dipublish	http://kemendag-backend.local/cms/konten/artikel/publish/13	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-10 21:48:56	2020-08-10 21:48:56
166	Berita Foto tes Berhasil Dihapus	http://kemendag-backend.local/cms/konten/media/berita-foto/delete/10	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:13:08	2020-08-11 00:13:08
167	Artikel Sejarah berhasil dihapus	http://kemendag-backend.local/cms/konten/artikel/delete/13	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:14:08	2020-08-11 00:14:08
168	Artikel Visi dan Misi berhasil dihapus	http://kemendag-backend.local/cms/konten/artikel/delete/9	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:14:10	2020-08-11 00:14:10
169	Artikel Tugas dan Fungsi berhasil dihapus	http://kemendag-backend.local/cms/konten/artikel/delete/8	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:14:12	2020-08-11 00:14:12
170	Berita Foto Bakti Sosial Ramadhan 1440H Berhasil Disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:14:46	2020-08-11 00:14:46
171	Berita Foto Inspektur Jenderal Kementerian Perdagangan, Ibu Srie Agustina menyerahkan hadiah kepada peserta pelatihan terbaik. Berhasil Disimpan	http://kemendag-backend.local/cms/konten/media/berita-foto/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:16:07	2020-08-11 00:16:07
172	Artikel Pembukaan Pelatihan Teknis Juru Timbang Angkatan 3 Tahun 2019 Berhasil Disimpan	http://kemendag-backend.local/cms/konten/artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:17:37	2020-08-11 00:17:37
173	Artikel Pembukaan Pelatihan Teknis Juru Timbang Angkatan 3 Tahun 2019 berhasil dipublish	http://kemendag-backend.local/cms/konten/artikel/publish/14	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:17:41	2020-08-11 00:17:41
174	Artikel Pelatihan Kemetrologian Tahun 2021 Pendanaan APBD berhasil dipublish	http://kemendag-backend.local/cms/konten/artikel/publish/16	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:41:52	2020-08-11 00:41:52
175	Artikel Sejarah berhasil dipublish	http://kemendag-backend.local/cms/konten/artikel/publish/15	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:41:56	2020-08-11 00:41:56
176	Kategori Artikel Undang-Undang/PERPPU Berhasil Disimpan	http://kemendag-backend.local/cms/masterdata/kategori-artikel/store	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:52:26	2020-08-11 00:52:26
177	Artikel UU Nomor 2 Tahun 1981 berhasil dipublish	http://kemendag-backend.local/cms/konten/artikel/publish/17	POST	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 Edg/84.0.522.52	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2020-08-11 00:54:02	2020-08-11 00:54:02
\.


                                                                                                                                                                                                                                                                                                                                                                                                                              3195.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3197.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3153.dat                                                                                            0000600 0004000 0002000 00000002677 13714312441 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2020_07_14_023757_create_permission_tables	1
4	2020_07_14_043606_create_statuses_table	2
5	2020_07_14_054936_create_sites_table	3
6	2020_01_30_222019_create_log_activities_table	4
7	2020_07_14_162406_create_countries_table	5
10	2020_07_16_105338_create_videos_table	7
12	2020_07_16_134211_create_regions_table	8
13	2020_07_16_140203_create_cities_table	9
25	2020_07_16_141654_create_duty_categories_table	10
26	2020_07_16_141703_create_duty_category_translations_table	10
27	2020_07_18_205130_create_article_categories_table	11
28	2020_07_18_232316_create_faq_categories_table	12
29	2020_07_18_234124_create_albums_table	13
30	2020_07_18_234134_create_images_table	13
31	2020_07_21_105302_create_front_banners_table	14
32	2020_07_21_130203_create_publications_table	15
33	2020_07_21_131730_create_about_us_table	16
34	2020_07_21_131801_create_about_us_translations_table	16
35	2020_08_01_020425_create_main_duties_table	17
36	2020_08_01_020436_create_main_duty_translations_table	17
39	2020_08_01_131515_create_posts_table	20
40	2020_08_01_131525_create_post_translations_table	21
44	2020_08_05_150906_create_faqs_table	22
45	2020_08_05_160506_create_events_table	23
46	2020_08_05_160543_create_event_translations_table	23
47	2020_08_08_151933_create_officials_table	24
48	2020_08_08_151944_create_official_translations_table	25
49	2020_08_08_184337_create_units_table	26
\.


                                                                 3160.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3161.dat                                                                                            0000600 0004000 0002000 00000001244 13714312441 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Sixceed\\Models\\User	659bafb5-34f7-4176-9102-d3dcf294ec8a
1	Sixceed\\Models\\User	19ca6ed7-d6f4-43da-89b9-5d049051fb90
1	Sixceed\\Models\\User	1928c76b-56dc-4d52-8f33-f05b1d4b1885
1	Sixceed\\Models\\User	68ed91a2-bee9-48d3-a6e9-67a40cb30613
1	Sixceed\\Models\\User	4b264b7d-3ff7-4962-a29b-2297963b0fde
1	Sixceed\\Models\\User	e295e6ca-846f-4edb-9344-0006918715a6
1	Sixceed\\Models\\User	90588f83-6dbe-4c2d-adc2-48556e63bdce
1	Sixceed\\Models\\User	b0b43e1a-7543-4cbd-b731-80e4cd435a4e
1	Sixceed\\Models\\User	b357e454-12bf-4977-b410-d1753cad83a5
1	Sixceed\\Models\\User	a0fcc079-0712-474d-81be-13f4d3e68eeb
1	Sixceed\\Models\\User	86752583-a679-4cf8-a0e5-2705b34116e1
\.


                                                                                                                                                                                                                                                                                                                                                            3211.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3209.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3155.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3157.dat                                                                                            0000600 0004000 0002000 00000002370 13714312441 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can Access Setting	web	2020-07-14 15:12:08	2020-07-14 15:12:08
2	Can Create Setting	web	2020-07-14 15:12:08	2020-07-14 15:12:08
3	Can Edit Setting	web	2020-07-14 15:12:08	2020-07-14 15:12:08
4	Can Delete Setting	web	2020-07-14 15:12:08	2020-07-14 15:12:08
5	Can Access User Database	web	2020-07-14 15:12:08	2020-07-14 15:12:08
6	Can Create User	web	2020-07-14 15:12:08	2020-07-14 15:12:08
7	Can Edit User	web	2020-07-14 15:12:08	2020-07-14 15:12:08
8	Can Delete User	web	2020-07-14 15:12:08	2020-07-14 15:12:08
9	Can Access Activity Log	web	2020-07-14 15:12:08	2020-07-14 15:12:08
10	Can Run Maintenance	web	2020-07-14 15:12:08	2020-07-14 15:12:08
11	Can Access Master Data	web	2020-07-14 15:12:08	2020-07-14 15:12:08
12	Can Create Master Data	web	2020-07-14 15:12:08	2020-07-14 15:12:08
13	Can Edit Master Data	web	2020-07-14 15:12:08	2020-07-14 15:12:08
14	Can Delete Master Data	web	2020-07-14 15:12:08	2020-07-14 15:12:08
15	Can Create Content	web	2020-07-14 15:12:08	2020-07-14 15:12:08
16	Can Edit All Content	web	2020-07-14 15:12:08	2020-07-14 15:12:08
17	Can Delete All Content	web	2020-07-14 15:12:08	2020-07-14 15:12:08
18	Can Publish Content	web	2020-07-14 15:12:08	2020-07-14 15:12:08
19	Can Archieve Content	web	2020-07-14 15:12:08	2020-07-14 15:12:08
\.


                                                                                                                                                                                                                                                                        3201.dat                                                                                            0000600 0004000 0002000 00000037307 13714312441 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        25	16	id	Pelatihan Kemetrologian Tahun 2021 Pendanaan APBD	<p style="margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Dalam rangka pengembangan kapasitas sumber daya manusia (SDM) Kemetrologian, Pusat Pengembangan Sumber Daya Kemetrologian (PPSDK) akan menyelenggarakan Pelatihan Teknis Kemetrologian Tahun Anggaran 2021 melalui mekanisme pembiayaan APBD dari masing-masing daerah. Sehubungan hal tersebut kami informasikan hal-hal sebagai berikut:</p><ol style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"><li>Pelatihan Teknis Kemetrologian Tahun 2021 yang akan diselenggarakan oleh PPSDK sebanyak 22 jenis pelatihan dengan rincian persyaratan dan jadwal sebagaimana terlampir;</li><li>Metode pembelajaran pelatihan dapat dilaksanakan dengan memilih salah satu metode yaitu:<ul><li>Klasikal adalah metode pembelajaran secara tatap muka langsung di PPSDK.</li><li>Blended Learning adalah metode pembelajaran gabungan yang dilakukan secara tatap muka dan online.</li><li>Fully Online adalah metode pembelajaran secara online.</li></ul></li><li>Penyelenggaran pelatihan dengan pembiayaan APBD mengacu pada Peraturan Pemerintah Republik Indonesia Nomor 31 Tahun 2017 tentang Jenis dan Tarif atas Penerimaan Negara Bukan Pajak yang berlaku pada Kementerian Perdagangan dengan rincian sebagai berikut:<ul><li>Diklat/Pelatihan Teknis Kemetrologian (3 hari) per orang sebesar Rp. 3.000.000,-.</li><li>Tambahan Materi Diklat per orang per hari Rp. 1.000.000,-.</li><li>Kamar Asrama AC per kamar per minggu sebesar Rp. 500.000,-.</li><li>Kamar Asrama AC per kamar per hari sebesar Rp. 300.000,-.</li><li>Tarif tersebut tidak termasuk biaya konsumsi, uang harian dan transportasi peserta.</li></ul></li><li>Keterangan lebih lanjut mengenai pelaksanaan pelatihan dapat menghubungi Yenni Marlin (No Hp. 0812 9053 7494) di jam kerja 08.30 – 17.00 WIB.</li></ol>	pelatihan-kemetrologian-tahun-2021-pendanaan-apbd-1
13	10	id	Atasi Kelangkaan, Kemendag Guyur 33.000 Ton Gula di Ibu Kota	<span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Kementerian Perdagangan (Kemendag) tengah berupaya untuk menyuplai pasokan gula di wilayah DKI Jakarta dan sekitarnya. Dalam beberapa waktu ke depan akan ada 33.000 ton gula yang dipasok ke Jakarta.<br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Direktur Jenderal Perdagangan Dalam Negeri Kemendag, Suhanto mengatakan pihaknya telah melakukan kerja sama kepada dua produsen gula untuk memasok di Jakarta dan sekitarnya.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>&Atilde;&cent;&acirc;&#130;&not;&Aring;&#147;Akan dipasok 33.000 ton untuk wilayah DKI dan sekitarnya. Dan mulai sekarang ini kami menunjukkan pada masyarakat komitmen yang sudah dibuat bersama,&Atilde;&cent;&acirc;&#130;&not;&Acirc;&#157; katanya melalui rekaman yang dikirim oleh Humas Kemendag, Jumat (20/3).</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Suhanto menyebut kedua produsen itu adalah Gulaku dan Sungai Budi. Kedua produsen tersebut berasal dari Provinsi Lampung.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Suhanto menambahkan saat ini juga telah dilakukan operasi pasar di pasar tradisional Jakarta untuk memenuhi kebutuhan gula pasir. Ia mengakui jika harga gula di pasaran telah naik.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>&Atilde;&cent;&acirc;&#130;&not;&Aring;&#147;Khususnya gula pasir ini cukup dirasakan naik begitu tinggi. Sehingga masyarakat membeli di atas HET (Harga Eceran Tertinggi),&Atilde;&cent;&acirc;&#130;&not;&Acirc;&#157; sebutnya.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Dalam operasi pasar kali ini, Kemendag menjual harga gula pasir Rp 12.500 per kg. Pada hari ini pula khusus Pasar Petojo dipasok 5 ton. Operasi pasar ini akan dilakukan hingga harga gula eceran kembali normal.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Berdasarkan infopangan.jakarta.go.id (20/3), rata-rata harga gula dibanderol Rp 17.159 per kg. Sementara harga tertinggi berada di Pasar Pesanggrahan Rp 19.000 per kg. Sementara itu harga terendah Rp 14.000 per kg di Pasar Johar Baru.</span></span>\n	atasi-kelangkaan-kemendag-guyur-33-000-ton-gula-di-ibu-kota
14	10	en	Atasi Kelangkaan, Kemendag Guyur 33.000 Ton Gula di Ibu Kota	<span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Kementerian Perdagangan (Kemendag) tengah berupaya untuk menyuplai pasokan gula di wilayah DKI Jakarta dan sekitarnya. Dalam beberapa waktu ke depan akan ada 33.000 ton gula yang dipasok ke Jakarta.<br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Direktur Jenderal Perdagangan Dalam Negeri Kemendag, Suhanto mengatakan pihaknya telah melakukan kerja sama kepada dua produsen gula untuk memasok di Jakarta dan sekitarnya.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>&Atilde;&cent;&acirc;&#130;&not;&Aring;&#147;Akan dipasok 33.000 ton untuk wilayah DKI dan sekitarnya. Dan mulai sekarang ini kami menunjukkan pada masyarakat komitmen yang sudah dibuat bersama,&Atilde;&cent;&acirc;&#130;&not;&Acirc;&#157; katanya melalui rekaman yang dikirim oleh Humas Kemendag, Jumat (20/3).</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Suhanto menyebut kedua produsen itu adalah Gulaku dan Sungai Budi. Kedua produsen tersebut berasal dari Provinsi Lampung.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Suhanto menambahkan saat ini juga telah dilakukan operasi pasar di pasar tradisional Jakarta untuk memenuhi kebutuhan gula pasir. Ia mengakui jika harga gula di pasaran telah naik.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>&Atilde;&cent;&acirc;&#130;&not;&Aring;&#147;Khususnya gula pasir ini cukup dirasakan naik begitu tinggi. Sehingga masyarakat membeli di atas HET (Harga Eceran Tertinggi),&Atilde;&cent;&acirc;&#130;&not;&Acirc;&#157; sebutnya.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Dalam operasi pasar kali ini, Kemendag menjual harga gula pasir Rp 12.500 per kg. Pada hari ini pula khusus Pasar Petojo dipasok 5 ton. Operasi pasar ini akan dilakukan hingga harga gula eceran kembali normal.</span><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><br style='border-radius: 0px; color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'><span style='color: rgb(85, 85, 85); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 13px;'>Berdasarkan infopangan.jakarta.go.id (20/3), rata-rata harga gula dibanderol Rp 17.159 per kg. Sementara harga tertinggi berada di Pasar Pesanggrahan Rp 19.000 per kg. Sementara itu harga terendah Rp 14.000 per kg di Pasar Johar Baru.</span></span>\n	atasi-kelangkaan-kemendag-guyur-33-000-ton-gula-di-ibu-kota-1
20	14	id	Pembukaan Pelatihan Teknis Juru Timbang Angkatan 3 Tahun 2019	<span style='color: rgb(51, 51, 51); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; text-align: justify;'>Pelatihan Teknis Juru Timbang Angkatan 3 Tahun 2019 telah resmi dibuka oleh&nbsp;Kepala Bidang Sumber Daya Manusia Kemetrologian-Pusat Pengembangan Sumber Daya Kemetrologian (PPSDK), Bapak Permadi, pada tanggal 9 September 2019 di Kota Surakarta. Kepala&nbsp;Bidang Sumber Daya Manusia Kemetrologian-PPSDK menyampaikan bahwa&nbsp;Undang-undang Nomor 2 Tahun 1981 tentang metrologi legal bertujuan untuk melindungi kepentingan umum dalam hal kebenaran pengukuran serta memberikan kepastian hukum dalam hal pengukuran. Untuk mencapai tujuan tersebut maka pemerintah melaksanakan kegiatan metrologi legal yang meliputi tera/tera-ulang UTTP, penyuluhan, pengamatan, dan pengawasan UTTP, BDKT (Barang Dalam Keadaan Terbungkus), satuan SI (Sistem Internasional). Hal ini amat penting untuk dipahami dan dilaksanakan dengan sebaik-baiknya oleh seluruh jajaran Unit Metrologi Legal (UML) di masing-masing daerah kabupaten/kota. Sehingga diharapkan seluruh masyarakat akan merasakan manfaat yang telah diterima dari pelayanan kemetrologian tersebut.</span>\n	pembukaan-pelatihan-teknis-juru-timbang-angkatan-3-tahun-2019
21	14	en	Pembukaan Pelatihan Teknis Juru Timbang Angkatan 3 Tahun 2019	<span style='color: rgb(51, 51, 51); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; text-align: justify;'>Pelatihan Teknis Juru Timbang Angkatan 3 Tahun 2019 telah resmi dibuka oleh&nbsp;Kepala Bidang Sumber Daya Manusia Kemetrologian-Pusat Pengembangan Sumber Daya Kemetrologian (PPSDK), Bapak Permadi, pada tanggal 9 September 2019 di Kota Surakarta. Kepala&nbsp;Bidang Sumber Daya Manusia Kemetrologian-PPSDK menyampaikan bahwa&nbsp;Undang-undang Nomor 2 Tahun 1981 tentang metrologi legal bertujuan untuk melindungi kepentingan umum dalam hal kebenaran pengukuran serta memberikan kepastian hukum dalam hal pengukuran. Untuk mencapai tujuan tersebut maka pemerintah melaksanakan kegiatan metrologi legal yang meliputi tera/tera-ulang UTTP, penyuluhan, pengamatan, dan pengawasan UTTP, BDKT (Barang Dalam Keadaan Terbungkus), satuan SI (Sistem Internasional). Hal ini amat penting untuk dipahami dan dilaksanakan dengan sebaik-baiknya oleh seluruh jajaran Unit Metrologi Legal (UML) di masing-masing daerah kabupaten/kota. Sehingga diharapkan seluruh masyarakat akan merasakan manfaat yang telah diterima dari pelayanan kemetrologian tersebut.</span>\n	pembukaan-pelatihan-teknis-juru-timbang-angkatan-3-tahun-2019-1
22	15	en	History	<p>              </p>	history
23	15	id	Sejarah	<p>              </p>	sejarah
24	16	en	Pelatihan Kemetrologian Tahun 2021 Pendanaan APBD	<p style="margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Dalam rangka pengembangan kapasitas sumber daya manusia (SDM) Kemetrologian, Pusat Pengembangan Sumber Daya Kemetrologian (PPSDK) akan menyelenggarakan Pelatihan Teknis Kemetrologian Tahun Anggaran 2021 melalui mekanisme pembiayaan APBD dari masing-masing daerah. Sehubungan hal tersebut kami informasikan hal-hal sebagai berikut:</p><ol style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"><li>Pelatihan Teknis Kemetrologian Tahun 2021 yang akan diselenggarakan oleh PPSDK sebanyak 22 jenis pelatihan dengan rincian persyaratan dan jadwal sebagaimana terlampir;</li><li>Metode pembelajaran pelatihan dapat dilaksanakan dengan memilih salah satu metode yaitu:<ul><li>Klasikal adalah metode pembelajaran secara tatap muka langsung di PPSDK.</li><li>Blended Learning adalah metode pembelajaran gabungan yang dilakukan secara tatap muka dan online.</li><li>Fully Online adalah metode pembelajaran secara online.</li></ul></li><li>Penyelenggaran pelatihan dengan pembiayaan APBD mengacu pada Peraturan Pemerintah Republik Indonesia Nomor 31 Tahun 2017 tentang Jenis dan Tarif atas Penerimaan Negara Bukan Pajak yang berlaku pada Kementerian Perdagangan dengan rincian sebagai berikut:<ul><li>Diklat/Pelatihan Teknis Kemetrologian (3 hari) per orang sebesar Rp. 3.000.000,-.</li><li>Tambahan Materi Diklat per orang per hari Rp. 1.000.000,-.</li><li>Kamar Asrama AC per kamar per minggu sebesar Rp. 500.000,-.</li><li>Kamar Asrama AC per kamar per hari sebesar Rp. 300.000,-.</li><li>Tarif tersebut tidak termasuk biaya konsumsi, uang harian dan transportasi peserta.</li></ul></li><li>Keterangan lebih lanjut mengenai pelaksanaan pelatihan dapat menghubungi Yenni Marlin (No Hp. 0812 9053 7494) di jam kerja 08.30 – 17.00 WIB.</li></ol>	pelatihan-kemetrologian-tahun-2021-pendanaan-apbd
26	17	en	UU Nomor 2 Tahun 1981	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(243, 243, 243);">Metrologi Legal</span>	uu-nomor-2-tahun-1981
27	17	id	UU Nomor 2 Tahun 1981	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(243, 243, 243);">Metrologi Legal</span>	uu-nomor-2-tahun-1981-1
\.


                                                                                                                                                                                                                                                                                                                         3199.dat                                                                                            0000600 0004000 0002000 00000002317 13714312441 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10	35991cce-ca61-4d89-a3e3-d9e938dc4b2f	write	\N	\N	659bafb5-34f7-4176-9102-d3dcf294ec8a	3bc97e4a-5e86-4d7c-86d5-7ee450a247ee	659bafb5-34f7-4176-9102-d3dcf294ec8a	\N	2020-08-09 23:34:01	2020-08-09 23:34:01	4	\N
14	92876445-2b7c-4e2f-bb43-d3b71b608e4e	write	\N	\N	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2872ac69-2f76-438b-8b83-31c52787027d	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-11 00:17:37	2020-08-11 00:17:41	7	\N
16	92876445-2b7c-4e2f-bb43-d3b71b608e4e	upload	\N	public/files/QOAQfQ3Zc5yIgHs9egd5dxVdHhiNEGDJ2A4FxzKv.pdf	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2872ac69-2f76-438b-8b83-31c52787027d	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-11 00:41:35	2020-08-11 00:41:52	11	\N
15	92876445-2b7c-4e2f-bb43-d3b71b608e4e	upload	\N	public/files/YSM7QT7WLggVOituA4d5cbr33jPGSLx3RNm49eP0.jpeg	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2872ac69-2f76-438b-8b83-31c52787027d	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-11 00:26:58	2020-08-11 00:41:56	6	\N
17	92876445-2b7c-4e2f-bb43-d3b71b608e4e	upload	\N	public/files/cJVAHYPt7hb2HQWPOqi1VLosCIDWY8Ma2nyIHnX8.pdf	19ca6ed7-d6f4-43da-89b9-5d049051fb90	2872ac69-2f76-438b-8b83-31c52787027d	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-11 00:53:56	2020-08-11 00:54:02	12	\N
\.


                                                                                                                                                                                                                                                                                                                 3189.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3171.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3162.dat                                                                                            0000600 0004000 0002000 00000000143 13714312441 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	1
9	1
10	1
11	1
12	1
13	1
14	1
15	1
16	1
17	1
18	1
19	1
1	2
2	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                             3159.dat                                                                                            0000600 0004000 0002000 00000000163 13714312441 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Administrator	web	2020-07-14 15:50:27	2020-07-14 15:50:27
2	tes	web	2020-07-14 15:51:34	2020-07-14 15:51:34
\.


                                                                                                                                                                                                                                                                                                                                                                                                             3164.dat                                                                                            0000600 0004000 0002000 00000002711 13714312441 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8689caab-d1d0-4b99-a814-d6e2d0b56361	Website Utama	2020-08-01 11:40:06	2020-08-01 11:40:06
85cd37d3-e818-4e04-b294-3491feb60285	Direktorat Jenderal Perdagangan Dalam Negeri	2020-08-01 11:40:06	2020-08-01 11:40:06
745572a6-c3a9-491a-b069-966d9cfa7054	Direktorat Jenderal Perdagangan Luar Negeri	2020-08-01 11:40:06	2020-08-01 11:40:06
4c565b80-f7e9-4421-81be-a831ae48edf2	Direktorat Jenderal Perundingan Perdagangan Internasional	2020-08-01 11:40:06	2020-08-01 11:40:06
e2fa0b3f-84e2-4046-ae68-fe5f987cbe7b	Direktorat Jenderal Perlindungan Konsumen dan Tertib Niaga	2020-08-01 11:40:06	2020-08-01 11:40:06
bc5397fc-f875-4326-846f-315e6e6fd0ba	Direktorat Jenderal Pengembangan Ekspor Nasional	2020-08-01 11:40:06	2020-08-01 11:40:06
2da488d4-a8e7-499a-b6e7-360ff17f9585	Badan Pengembangan Pengkajian Perdagangan	2020-08-01 11:40:06	2020-08-01 11:40:06
5a7826cf-e620-460f-9bfb-ef2adacf6471	Biro Advokasi Perdagangan	2020-08-01 11:40:06	2020-08-01 11:40:06
d59ba15e-5abf-4572-9992-64950d4f65ea	Komite Pengamanan Perdagangan	2020-08-01 11:40:06	2020-08-01 11:40:06
ee5c63f5-58b4-4ca5-9acb-09de683f6549	Komite Anti Dumping Indonesia	2020-08-01 11:40:06	2020-08-01 11:40:06
a0fe8237-c432-4d27-8edd-669cb9719278	Inspektorat Jenderal	2020-08-01 11:40:06	2020-08-01 11:40:06
92876445-2b7c-4e2f-bb43-d3b71b608e4e	Pusat Pengembangan Sumber Daya Kemetrologian	2020-08-01 11:40:06	2020-08-01 11:40:06
35991cce-ca61-4d89-a3e3-d9e938dc4b2f	Semua Situs	2020-08-01 11:40:06	2020-08-01 11:40:06
\.


                                                       3163.dat                                                                                            0000600 0004000 0002000 00000000532 13714312441 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        f13c7f2e-4723-47a7-b75c-fbec0aaca411	Active	2020-07-14 04:39:19	2020-07-14 04:39:19
a7083df1-6fa4-4b3f-b547-5cb45e721ce2	Suspended	2020-07-14 04:39:19	2020-07-14 04:39:19
3bc97e4a-5e86-4d7c-86d5-7ee450a247ee	Draft	2020-08-01 01:39:28	2020-08-01 01:39:28
2872ac69-2f76-438b-8b83-31c52787027d	Published	2020-08-01 01:39:28	2020-08-01 01:39:28
\.


                                                                                                                                                                      3213.dat                                                                                            0000600 0004000 0002000 00000000205 13714312441 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	92876445-2b7c-4e2f-bb43-d3b71b608e4e	Direktur	19ca6ed7-d6f4-43da-89b9-5d049051fb90	\N	2020-08-08 19:27:33	2020-08-08 19:27:33
\.


                                                                                                                                                                                                                                                                                                                                                                                           3154.dat                                                                                            0000600 0004000 0002000 00000005344 13714312441 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        b0b43e1a-7543-4cbd-b731-80e4cd435a4e	eka	eka@local.com	\N	$2y$10$7x9VVc2hWG75gxB3VUBf2OpLG8oe5UgmJZii1Gs0.sKMPiR/Uz3K2	\N	2da488d4-a8e7-499a-b6e7-360ff17f9585	\N	\N	\N	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-09 23:16:54	2020-08-09 23:16:54
b357e454-12bf-4977-b410-d1753cad83a5	demo	demo@local.com	\N	$2y$10$WjH7TbmD8gQf0fz4HOgmE.ZLF73ixLhyzjMMvyXjJj1LbCWZiK3Qa	\N	d59ba15e-5abf-4572-9992-64950d4f65ea	\N	\N	\N	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-09 23:17:32	2020-08-09 23:17:32
a0fcc079-0712-474d-81be-13f4d3e68eeb	user	user@local.com	\N	$2y$10$kVPvEBdX4WrJQXyEmOiQF.UoWPAjXdvWPcPLnxN/BPF/NS.riDT8.	\N	ee5c63f5-58b4-4ca5-9acb-09de683f6549	\N	\N	\N	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-09 23:17:57	2020-08-09 23:17:57
86752583-a679-4cf8-a0e5-2705b34116e1	sample	sample@local.com	\N	$2y$10$NtR3nQhiVL1oeC7KkkvoQ.nXUekhQx3PIPUDKDOeh4k/U1KQ25HWi	\N	a0fe8237-c432-4d27-8edd-669cb9719278	\N	\N	\N	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-09 23:18:35	2020-08-09 23:18:35
19ca6ed7-d6f4-43da-89b9-5d049051fb90	mirza	mirza@local.com	\N	$2y$10$LO8YUjbaIrEtmtiJwxOxTugVLyj7bn3ErqwRm6Nv7jhvQKHujsrGu	\N	92876445-2b7c-4e2f-bb43-d3b71b608e4e	\N	2020-08-11 00:10:29	127.0.0.1	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-01 11:53:06	2020-08-11 00:10:29
659bafb5-34f7-4176-9102-d3dcf294ec8a	eko	eko@local.com	\N	$2y$10$6ZirMo2Ai5Pb5h77M7tAg.n.Aq.5IdpRs4lHF9Y.ANOkGxEpc6.EW	\N	35991cce-ca61-4d89-a3e3-d9e938dc4b2f	\N	2020-08-09 23:12:02	127.0.0.1	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-07-14 04:31:49	2020-08-09 23:12:02
1928c76b-56dc-4d52-8f33-f05b1d4b1885	rieco	rieco@local.com	\N	$2y$10$8a1wzTQ.jXPFTpql7FQjk./pBTBNMp3130TuESQZa4NHnmeWDwXJa	\N	85cd37d3-e818-4e04-b294-3491feb60285	\N	\N	\N	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-09 23:12:32	2020-08-09 23:12:32
68ed91a2-bee9-48d3-a6e9-67a40cb30613	john doe	john@local.com	\N	$2y$10$CrA148NL0rjQX7OzKmqVTewQ/bNWrpSd/lQQGmWTygZN/l21tJ7xu	\N	745572a6-c3a9-491a-b069-966d9cfa7054	\N	\N	\N	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-09 23:13:34	2020-08-09 23:13:34
4b264b7d-3ff7-4962-a29b-2297963b0fde	jane doe	jane@local.com	\N	$2y$10$UDVjKP6o4FeDawqeHWm3SeHO7RHKldSCu.T6VrN0Ust5c3TkUnBsi	\N	4c565b80-f7e9-4421-81be-a831ae48edf2	\N	\N	\N	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-09 23:14:44	2020-08-09 23:14:44
e295e6ca-846f-4edb-9344-0006918715a6	philips	philips@local.com	\N	$2y$10$gBlMd2NmlPKNxPxTQjKKk.LoDyUKoq5iV9gVg9JROyeKVALnw8S5K	\N	e2fa0b3f-84e2-4046-ae68-fe5f987cbe7b	\N	\N	\N	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-09 23:15:25	2020-08-09 23:15:25
90588f83-6dbe-4c2d-adc2-48556e63bdce	heru	heru@local.com	\N	$2y$10$B7Hu47xIDd06NRoFzfA9Ge3MtxJwZYwnpki30vwWgHKk3OPT2CrZ2	\N	bc5397fc-f875-4326-846f-315e6e6fd0ba	\N	\N	\N	f13c7f2e-4723-47a7-b75c-fbec0aaca411	2020-08-09 23:16:03	2020-08-09 23:16:03
\.


                                                                                                                                                                                                                                                                                            3169.dat                                                                                            0000600 0004000 0002000 00000000005 13714312441 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000174473 13714312441 0015404 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8
-- Dumped by pg_dump version 11.8

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

DROP DATABASE kemendag;
--
-- Name: kemendag; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE kemendag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';


ALTER DATABASE kemendag OWNER TO postgres;

\connect kemendag

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

SET default_with_oids = false;

--
-- Name: about_us; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.about_us (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);


ALTER TABLE public.about_us OWNER TO postgres;

--
-- Name: about_us_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.about_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_us_id_seq OWNER TO postgres;

--
-- Name: about_us_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.about_us_id_seq OWNED BY public.about_us.id;


--
-- Name: about_us_translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.about_us_translations (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    welcome_message character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.about_us_translations OWNER TO postgres;

--
-- Name: about_us_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.about_us_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_us_translations_id_seq OWNER TO postgres;

--
-- Name: about_us_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.about_us_translations_id_seq OWNED BY public.about_us_translations.id;


--
-- Name: albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.albums (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    cover_image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.albums OWNER TO postgres;

--
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_id_seq OWNER TO postgres;

--
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;


--
-- Name: article_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);


ALTER TABLE public.article_categories OWNER TO postgres;

--
-- Name: article_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_categories_id_seq OWNER TO postgres;

--
-- Name: article_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_categories_id_seq OWNED BY public.article_categories.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_id bigint NOT NULL,
    city_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: duty_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.duty_categories (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);


ALTER TABLE public.duty_categories OWNER TO postgres;

--
-- Name: duty_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.duty_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.duty_categories_id_seq OWNER TO postgres;

--
-- Name: duty_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.duty_categories_id_seq OWNED BY public.duty_categories.id;


--
-- Name: duty_category_translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.duty_category_translations (
    id integer NOT NULL,
    duty_category_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.duty_category_translations OWNER TO postgres;

--
-- Name: duty_category_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.duty_category_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.duty_category_translations_id_seq OWNER TO postgres;

--
-- Name: duty_category_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.duty_category_translations_id_seq OWNED BY public.duty_category_translations.id;


--
-- Name: event_translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_translations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.event_translations OWNER TO postgres;

--
-- Name: event_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_translations_id_seq OWNER TO postgres;

--
-- Name: event_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    event_type integer NOT NULL,
    date_from timestamp(0) without time zone NOT NULL,
    date_to timestamp(0) without time zone NOT NULL,
    country_id integer NOT NULL,
    location character varying(255),
    brocure character varying(255),
    link character varying(255),
    status_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.events OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: faq_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faq_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by character varying(255) NOT NULL,
    updated_by character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);


ALTER TABLE public.faq_categories OWNER TO postgres;

--
-- Name: faq_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.faq_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faq_categories_id_seq OWNER TO postgres;

--
-- Name: faq_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;


--
-- Name: faqs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faqs (
    id bigint NOT NULL,
    faq_category_id integer NOT NULL,
    site_id uuid NOT NULL,
    pertanyaan text NOT NULL,
    jawaban text NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.faqs OWNER TO postgres;

--
-- Name: faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faqs_id_seq OWNER TO postgres;

--
-- Name: faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;


--
-- Name: front_banners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.front_banners (
    id bigint NOT NULL,
    "position" integer,
    type integer NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    link character varying(255),
    site_id uuid NOT NULL
);


ALTER TABLE public.front_banners OWNER TO postgres;

--
-- Name: front_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.front_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.front_banners_id_seq OWNER TO postgres;

--
-- Name: front_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id bigint NOT NULL,
    album_id integer NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: log_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log_activities (
    id bigint NOT NULL,
    subject text NOT NULL,
    url character varying(255) NOT NULL,
    method character varying(255) NOT NULL,
    ip character varying(255) NOT NULL,
    agent character varying(255),
    user_id uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.log_activities OWNER TO postgres;

--
-- Name: log_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_activities_id_seq OWNER TO postgres;

--
-- Name: log_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;


--
-- Name: main_duties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_duties (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);


ALTER TABLE public.main_duties OWNER TO postgres;

--
-- Name: main_duties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_duties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_duties_id_seq OWNER TO postgres;

--
-- Name: main_duties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_duties_id_seq OWNED BY public.main_duties.id;


--
-- Name: main_duty_translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_duty_translations (
    id bigint NOT NULL,
    main_duty_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category character varying(255),
    slug character varying(255) NOT NULL,
    "position" character varying(255) NOT NULL,
    mainduty text NOT NULL,
    function text NOT NULL
);


ALTER TABLE public.main_duty_translations OWNER TO postgres;

--
-- Name: main_duty_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_duty_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_duty_translations_id_seq OWNER TO postgres;

--
-- Name: main_duty_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_duty_translations_id_seq OWNED BY public.main_duty_translations.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: model_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);


ALTER TABLE public.model_has_permissions OWNER TO postgres;

--
-- Name: model_has_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);


ALTER TABLE public.model_has_roles OWNER TO postgres;

--
-- Name: official_translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.official_translations (
    id bigint NOT NULL,
    official_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.official_translations OWNER TO postgres;

--
-- Name: official_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.official_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.official_translations_id_seq OWNER TO postgres;

--
-- Name: official_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.official_translations_id_seq OWNED BY public.official_translations.id;


--
-- Name: officials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.officials (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    userpic character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    created_by uuid NOT NULL,
    updated_by uuid,
    unit_id bigint NOT NULL
);


ALTER TABLE public.officials OWNER TO postgres;

--
-- Name: officials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.officials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.officials_id_seq OWNER TO postgres;

--
-- Name: officials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.officials_id_seq OWNED BY public.officials.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.permissions OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: post_translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_translations (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.post_translations OWNER TO postgres;

--
-- Name: post_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_translations_id_seq OWNER TO postgres;

--
-- Name: post_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    type character varying(255) NOT NULL,
    source character varying(255),
    file character varying(255),
    reporter_id uuid NOT NULL,
    status_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    category_id bigint NOT NULL,
    published_at timestamp without time zone
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: publications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publications (
    id bigint NOT NULL,
    cover_image character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    file character varying(255)
);


ALTER TABLE public.publications OWNER TO postgres;

--
-- Name: publications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publications_id_seq OWNER TO postgres;

--
-- Name: publications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regions (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.regions OWNER TO postgres;

--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regions_id_seq OWNER TO postgres;

--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;


--
-- Name: role_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.role_has_permissions OWNER TO postgres;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sites (
    id uuid NOT NULL,
    site_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.sites OWNER TO postgres;

--
-- Name: statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statuses (
    id uuid NOT NULL,
    status_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.statuses OWNER TO postgres;

--
-- Name: units; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.units (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    unit_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.units OWNER TO postgres;

--
-- Name: units_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.units_id_seq OWNER TO postgres;

--
-- Name: units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    site_id uuid,
    reporter character varying(255),
    last_login_at timestamp(0) without time zone,
    last_login_from character varying(255),
    status_id uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.videos (
    id uuid NOT NULL,
    video_id character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    thumbnail character varying(255) NOT NULL,
    thumbnail_small character varying(255) NOT NULL,
    player character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid
);


ALTER TABLE public.videos OWNER TO postgres;

--
-- Name: about_us id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);


--
-- Name: about_us_translations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);


--
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);


--
-- Name: article_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: duty_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);


--
-- Name: duty_category_translations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);


--
-- Name: event_translations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: faq_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);


--
-- Name: faqs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);


--
-- Name: front_banners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: log_activities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);


--
-- Name: main_duties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);


--
-- Name: main_duty_translations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: official_translations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);


--
-- Name: officials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: post_translations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: publications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);


--
-- Name: regions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: units id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);


--
-- Data for Name: about_us; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM stdin;
\.
COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM '$$PATH$$/3191.dat';

--
-- Data for Name: about_us_translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM stdin;
\.
COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM '$$PATH$$/3193.dat';

--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM stdin;
\.
COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM '$$PATH$$/3183.dat';

--
-- Data for Name: article_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
\.
COPY public.article_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM '$$PATH$$/3179.dat';

--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM stdin;
\.
COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM '$$PATH$$/3173.dat';

--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM stdin;
\.
COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM '$$PATH$$/3168.dat';

--
-- Data for Name: duty_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
\.
COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM '$$PATH$$/3175.dat';

--
-- Data for Name: duty_category_translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
\.
COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM '$$PATH$$/3177.dat';

--
-- Data for Name: event_translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
\.
COPY public.event_translations (id, event_id, locale, title, slug, description) FROM '$$PATH$$/3207.dat';

--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
\.
COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM '$$PATH$$/3205.dat';

--
-- Data for Name: faq_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
\.
COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM '$$PATH$$/3181.dat';

--
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM stdin;
\.
COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM '$$PATH$$/3203.dat';

--
-- Data for Name: front_banners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id) FROM stdin;
\.
COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id) FROM '$$PATH$$/3187.dat';

--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
\.
COPY public.images (id, album_id, image, description, created_at, updated_at) FROM '$$PATH$$/3185.dat';

--
-- Data for Name: log_activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM stdin;
\.
COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM '$$PATH$$/3166.dat';

--
-- Data for Name: main_duties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
\.
COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM '$$PATH$$/3195.dat';

--
-- Data for Name: main_duty_translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
\.
COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM '$$PATH$$/3197.dat';

--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
\.
COPY public.migrations (id, migration, batch) FROM '$$PATH$$/3153.dat';

--
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
\.
COPY public.model_has_permissions (permission_id, model_type, model_id) FROM '$$PATH$$/3160.dat';

--
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
\.
COPY public.model_has_roles (role_id, model_type, model_id) FROM '$$PATH$$/3161.dat';

--
-- Data for Name: official_translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
\.
COPY public.official_translations (id, official_id, locale, title, slug) FROM '$$PATH$$/3211.dat';

--
-- Data for Name: officials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM stdin;
\.
COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM '$$PATH$$/3209.dat';

--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.
COPY public.password_resets (email, token, created_at) FROM '$$PATH$$/3155.dat';

--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
\.
COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM '$$PATH$$/3157.dat';

--
-- Data for Name: post_translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
\.
COPY public.post_translations (id, post_id, locale, title, content, slug) FROM '$$PATH$$/3201.dat';

--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, site_id, type, source, file, reporter_id, status_id, created_by, updated_by, created_at, updated_at, category_id, published_at) FROM stdin;
\.
COPY public.posts (id, site_id, type, source, file, reporter_id, status_id, created_by, updated_by, created_at, updated_at, category_id, published_at) FROM '$$PATH$$/3199.dat';

--
-- Data for Name: publications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file) FROM stdin;
\.
COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file) FROM '$$PATH$$/3189.dat';

--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM stdin;
\.
COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM '$$PATH$$/3171.dat';

--
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
\.
COPY public.role_has_permissions (permission_id, role_id) FROM '$$PATH$$/3162.dat';

--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
\.
COPY public.roles (id, name, guard_name, created_at, updated_at) FROM '$$PATH$$/3159.dat';

--
-- Data for Name: sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
\.
COPY public.sites (id, site_name, created_at, updated_at) FROM '$$PATH$$/3164.dat';

--
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
\.
COPY public.statuses (id, status_name, created_at, updated_at) FROM '$$PATH$$/3163.dat';

--
-- Data for Name: units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
\.
COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM '$$PATH$$/3213.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
\.
COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM '$$PATH$$/3154.dat';

--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM stdin;
\.
COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM '$$PATH$$/3169.dat';

--
-- Name: about_us_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.about_us_id_seq', 5, true);


--
-- Name: about_us_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.about_us_translations_id_seq', 7, true);


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.albums_id_seq', 12, true);


--
-- Name: article_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_categories_id_seq', 12, true);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 4, true);


--
-- Name: duty_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.duty_categories_id_seq', 9, true);


--
-- Name: duty_category_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 18, true);


--
-- Name: event_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_translations_id_seq', 4, true);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_id_seq', 3, true);


--
-- Name: faq_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, true);


--
-- Name: faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);


--
-- Name: front_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.front_banners_id_seq', 4, true);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 9, true);


--
-- Name: log_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_activities_id_seq', 177, true);


--
-- Name: main_duties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_duties_id_seq', 5, true);


--
-- Name: main_duty_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 6, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 50, true);


--
-- Name: official_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.official_translations_id_seq', 2, true);


--
-- Name: officials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.officials_id_seq', 1, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);


--
-- Name: post_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_translations_id_seq', 27, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 17, true);


--
-- Name: publications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publications_id_seq', 1, false);


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.regions_id_seq', 1, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- Name: units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.units_id_seq', 2, true);


--
-- Name: about_us about_us_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us
    ADD CONSTRAINT about_us_pkey PRIMARY KEY (id);


--
-- Name: about_us_translations about_us_translations_about_us_id_locale_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_locale_unique UNIQUE (about_us_id, locale);


--
-- Name: about_us_translations about_us_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_pkey PRIMARY KEY (id);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- Name: article_categories article_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: duty_categories duty_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duty_categories
    ADD CONSTRAINT duty_categories_pkey PRIMARY KEY (id);


--
-- Name: duty_category_translations duty_category_translations_duty_category_id_locale_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_locale_unique UNIQUE (duty_category_id, locale);


--
-- Name: duty_category_translations duty_category_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_pkey PRIMARY KEY (id);


--
-- Name: event_translations event_translations_event_id_locale_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_locale_unique UNIQUE (event_id, locale);


--
-- Name: event_translations event_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);


--
-- Name: event_translations event_translations_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_slug_unique UNIQUE (slug);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: faq_categories faq_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);


--
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);


--
-- Name: front_banners front_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.front_banners
    ADD CONSTRAINT front_banners_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: log_activities log_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);


--
-- Name: main_duties main_duties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_duties
    ADD CONSTRAINT main_duties_pkey PRIMARY KEY (id);


--
-- Name: main_duty_translations main_duty_translations_main_duty_id_locale_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_locale_unique UNIQUE (main_duty_id, locale);


--
-- Name: main_duty_translations main_duty_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: model_has_permissions model_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- Name: model_has_roles model_has_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- Name: official_translations official_translations_official_id_locale_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_locale_unique UNIQUE (official_id, locale);


--
-- Name: official_translations official_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_pkey PRIMARY KEY (id);


--
-- Name: official_translations official_translations_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_slug_unique UNIQUE (slug);


--
-- Name: officials officials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.officials
    ADD CONSTRAINT officials_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: post_translations post_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_pkey PRIMARY KEY (id);


--
-- Name: post_translations post_translations_post_id_locale_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_locale_unique UNIQUE (post_id, locale);


--
-- Name: post_translations post_translations_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_slug_unique UNIQUE (slug);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: publications publications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);


--
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: role_has_permissions role_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: sites sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- Name: units units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- Name: about_us_translations_locale_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX about_us_translations_locale_index ON public.about_us_translations USING btree (locale);


--
-- Name: duty_category_translations_locale_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX duty_category_translations_locale_index ON public.duty_category_translations USING btree (locale);


--
-- Name: event_translations_locale_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX event_translations_locale_index ON public.event_translations USING btree (locale);


--
-- Name: main_duty_translations_locale_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_duty_translations_locale_index ON public.main_duty_translations USING btree (locale);


--
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);


--
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);


--
-- Name: official_translations_locale_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: post_translations_locale_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);


--
-- Name: about_us_translations about_us_translations_about_us_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;


--
-- Name: cities cities_region_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: duty_category_translations duty_category_translations_duty_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;


--
-- Name: event_translations event_translations_event_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: images images_album_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: main_duty_translations main_duty_translations_main_duty_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: model_has_permissions model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: model_has_roles model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: official_translations official_translations_official_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;


--
-- Name: post_translations post_translations_post_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: regions regions_country_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     