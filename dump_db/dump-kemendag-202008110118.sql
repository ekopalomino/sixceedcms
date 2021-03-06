PGDMP                         x            kemendag    11.8    11.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16393    kemendag    DATABASE     �   CREATE DATABASE kemendag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE kemendag;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    16917    about_us    TABLE     �   CREATE TABLE public.about_us (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.about_us;
       public         postgres    false    3            �            1259    16915    about_us_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.about_us_id_seq;
       public       postgres    false    235    3            �           0    0    about_us_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.about_us_id_seq OWNED BY public.about_us.id;
            public       postgres    false    234            �            1259    16925    about_us_translations    TABLE     (  CREATE TABLE public.about_us_translations (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    welcome_message character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.about_us_translations;
       public         postgres    false    3            �            1259    16923    about_us_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_us_translations_id_seq;
       public       postgres    false    3    237            �           0    0    about_us_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_us_translations_id_seq OWNED BY public.about_us_translations.id;
            public       postgres    false    236            �            1259    16868    albums    TABLE     ~  CREATE TABLE public.albums (
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
       public         postgres    false    3            �            1259    16866    albums_id_seq    SEQUENCE     v   CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.albums_id_seq;
       public       postgres    false    227    3            �           0    0    albums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;
            public       postgres    false    226            �            1259    16849    article_categories    TABLE     #  CREATE TABLE public.article_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 &   DROP TABLE public.article_categories;
       public         postgres    false    3            �            1259    16847    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.article_categories_id_seq;
       public       postgres    false    3    223            �           0    0    article_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.article_categories_id_seq OWNED BY public.article_categories.id;
            public       postgres    false    222            �            1259    16590    cities    TABLE     6  CREATE TABLE public.cities (
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
       public         postgres    false    3            �            1259    16588    cities_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public       postgres    false    3    217            �           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
            public       postgres    false    216            �            1259    16501 	   countries    TABLE     �   CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.countries;
       public         postgres    false    3            �            1259    16499    countries_id_seq    SEQUENCE     y   CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public       postgres    false    212    3            �           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
            public       postgres    false    211            �            1259    16821    duty_categories    TABLE     �   CREATE TABLE public.duty_categories (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 #   DROP TABLE public.duty_categories;
       public         postgres    false    3            �            1259    16819    duty_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.duty_categories_id_seq;
       public       postgres    false    219    3            �           0    0    duty_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.duty_categories_id_seq OWNED BY public.duty_categories.id;
            public       postgres    false    218            �            1259    16829    duty_category_translations    TABLE     �   CREATE TABLE public.duty_category_translations (
    id integer NOT NULL,
    duty_category_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 .   DROP TABLE public.duty_category_translations;
       public         postgres    false    3            �            1259    16827 !   duty_category_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_category_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.duty_category_translations_id_seq;
       public       postgres    false    3    221            �           0    0 !   duty_category_translations_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.duty_category_translations_id_seq OWNED BY public.duty_category_translations.id;
            public       postgres    false    220            �            1259    17118    event_translations    TABLE       CREATE TABLE public.event_translations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL
);
 &   DROP TABLE public.event_translations;
       public         postgres    false    3            �            1259    17116    event_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.event_translations_id_seq;
       public       postgres    false    251    3            �           0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
            public       postgres    false    250            �            1259    17107    events    TABLE       CREATE TABLE public.events (
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
       public         postgres    false    3            �            1259    17105    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public       postgres    false    3    249            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
            public       postgres    false    248            �            1259    16857    faq_categories    TABLE     C  CREATE TABLE public.faq_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by character varying(255) NOT NULL,
    updated_by character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 "   DROP TABLE public.faq_categories;
       public         postgres    false    3            �            1259    16855    faq_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faq_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.faq_categories_id_seq;
       public       postgres    false    225    3            �           0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
            public       postgres    false    224            �            1259    17096    faqs    TABLE     @  CREATE TABLE public.faqs (
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
       public         postgres    false    3            �            1259    17094    faqs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.faqs_id_seq;
       public       postgres    false    247    3            �           0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
            public       postgres    false    246            �            1259    16895    front_banners    TABLE     �  CREATE TABLE public.front_banners (
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
       public         postgres    false    3            �            1259    16893    front_banners_id_seq    SEQUENCE     }   CREATE SEQUENCE public.front_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.front_banners_id_seq;
       public       postgres    false    3    231            �           0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
            public       postgres    false    230            �            1259    16879    images    TABLE       CREATE TABLE public.images (
    id bigint NOT NULL,
    album_id integer NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.images;
       public         postgres    false    3            �            1259    16877    images_id_seq    SEQUENCE     v   CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public       postgres    false    3    229            �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
            public       postgres    false    228            �            1259    16490    log_activities    TABLE     i  CREATE TABLE public.log_activities (
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
       public         postgres    false    3            �            1259    16488    log_activities_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.log_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.log_activities_id_seq;
       public       postgres    false    210    3            �           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
            public       postgres    false    209            �            1259    16944    main_duties    TABLE     �   CREATE TABLE public.main_duties (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.main_duties;
       public         postgres    false    3            �            1259    16942    main_duties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_duties_id_seq;
       public       postgres    false    239    3            �           0    0    main_duties_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_duties_id_seq OWNED BY public.main_duties.id;
            public       postgres    false    238            �            1259    16952    main_duty_translations    TABLE     M  CREATE TABLE public.main_duty_translations (
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
       public         postgres    false    3            �            1259    16950    main_duty_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duty_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_duty_translations_id_seq;
       public       postgres    false    241    3            �           0    0    main_duty_translations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_duty_translations_id_seq OWNED BY public.main_duty_translations.id;
            public       postgres    false    240            �            1259    16396 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            �            1259    16394    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197    3            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    16441    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public         postgres    false    3            �            1259    16452    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public         postgres    false    3            �            1259    17161    official_translations    TABLE     �   CREATE TABLE public.official_translations (
    id bigint NOT NULL,
    official_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 )   DROP TABLE public.official_translations;
       public         postgres    false    3            �            1259    17159    official_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.official_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.official_translations_id_seq;
       public       postgres    false    3    255            �           0    0    official_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.official_translations_id_seq OWNED BY public.official_translations.id;
            public       postgres    false    254            �            1259    17139 	   officials    TABLE     �  CREATE TABLE public.officials (
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
       public         postgres    false    3            �            1259    17137    officials_id_seq    SEQUENCE     y   CREATE SEQUENCE public.officials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.officials_id_seq;
       public       postgres    false    253    3            �           0    0    officials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.officials_id_seq OWNED BY public.officials.id;
            public       postgres    false    252            �            1259    16412    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            �            1259    16421    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false    3            �            1259    16419    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    3    201            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    200            �            1259    17034    post_translations    TABLE     �   CREATE TABLE public.post_translations (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    slug character varying(255) NOT NULL
);
 %   DROP TABLE public.post_translations;
       public         postgres    false    3            �            1259    17032    post_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.post_translations_id_seq;
       public       postgres    false    3    245            �           0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
            public       postgres    false    244            �            1259    17012    posts    TABLE     �  CREATE TABLE public.posts (
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
       public         postgres    false    3            �            1259    17010    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public       postgres    false    243    3            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
            public       postgres    false    242            �            1259    16906    publications    TABLE     e  CREATE TABLE public.publications (
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
       public         postgres    false    3            �            1259    16904    publications_id_seq    SEQUENCE     |   CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.publications_id_seq;
       public       postgres    false    3    233            �           0    0    publications_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;
            public       postgres    false    232            �            1259    16577    regions    TABLE       CREATE TABLE public.regions (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.regions;
       public         postgres    false    3            �            1259    16575    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public       postgres    false    3    215            �           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
            public       postgres    false    214            �            1259    16463    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public         postgres    false    3            �            1259    16432    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    3            �            1259    16430    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    203    3            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    202            �            1259    16483    sites    TABLE     �   CREATE TABLE public.sites (
    id uuid NOT NULL,
    site_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sites;
       public         postgres    false    3            �            1259    16478    statuses    TABLE     �   CREATE TABLE public.statuses (
    id uuid NOT NULL,
    status_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.statuses;
       public         postgres    false    3                       1259    17182    units    TABLE       CREATE TABLE public.units (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    unit_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.units;
       public         postgres    false    3                        1259    17180    units_id_seq    SEQUENCE     u   CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.units_id_seq;
       public       postgres    false    257    3            �           0    0    units_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;
            public       postgres    false    256            �            1259    16402    users    TABLE       CREATE TABLE public.users (
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
       public         postgres    false    3            �            1259    16558    videos    TABLE       CREATE TABLE public.videos (
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
       public         postgres    false    3            ]           2604    16920    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235            ^           2604    16928    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236    237            Y           2604    16871 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227            W           2604    16852    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223            T           2604    16593 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217            R           2604    16504    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    212    212            U           2604    16824    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            V           2604    16832    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            e           2604    17121    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    250    251    251            d           2604    17110 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    249    249            X           2604    16860    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225            c           2604    17099    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246    247            [           2604    16898    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231            Z           2604    16882 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229            Q           2604    16493    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210            _           2604    16947    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    239    239            `           2604    16955    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241            N           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            g           2604    17164    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    254    255    255            f           2604    17142    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253            O           2604    16424    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            b           2604    17037    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            a           2604    17015    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243            \           2604    16909    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            S           2604    16580 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            P           2604    16435    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            h           2604    17185    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    256    257    257            w          0    16917    about_us 
   TABLE DATA               R   COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    235            y          0    16925    about_us_translations 
   TABLE DATA               q   COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM stdin;
    public       postgres    false    237            o          0    16868    albums 
   TABLE DATA               �   COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM stdin;
    public       postgres    false    227            k          0    16849    article_categories 
   TABLE DATA               x   COPY public.article_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    223            e          0    16590    cities 
   TABLE DATA               v   COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    217            `          0    16501 	   countries 
   TABLE DATA               e   COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    212            g          0    16821    duty_categories 
   TABLE DATA               f   COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    219            i          0    16829    duty_category_translations 
   TABLE DATA               g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public       postgres    false    221            �          0    17118    event_translations 
   TABLE DATA               \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public       postgres    false    251            �          0    17107    events 
   TABLE DATA               �   COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    249            m          0    16857    faq_categories 
   TABLE DATA               t   COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    225            �          0    17096    faqs 
   TABLE DATA               �   COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    247            s          0    16895    front_banners 
   TABLE DATA               �   COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id) FROM stdin;
    public       postgres    false    231            q          0    16879    images 
   TABLE DATA               Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public       postgres    false    229            ^          0    16490    log_activities 
   TABLE DATA               n   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    210            {          0    16944    main_duties 
   TABLE DATA               b   COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    239            }          0    16952    main_duty_translations 
   TABLE DATA               z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public       postgres    false    241            Q          0    16396 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197            X          0    16441    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    204            Y          0    16452    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    205            �          0    17161    official_translations 
   TABLE DATA               U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public       postgres    false    255            �          0    17139 	   officials 
   TABLE DATA               �   COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM stdin;
    public       postgres    false    253            S          0    16412    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    199            U          0    16421    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    201            �          0    17034    post_translations 
   TABLE DATA               V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public       postgres    false    245                      0    17012    posts 
   TABLE DATA               �   COPY public.posts (id, site_id, type, source, file, reporter_id, status_id, created_by, updated_by, created_at, updated_at, category_id, published_at) FROM stdin;
    public       postgres    false    243            u          0    16906    publications 
   TABLE DATA               |   COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file) FROM stdin;
    public       postgres    false    233            c          0    16577    regions 
   TABLE DATA               n   COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    215            Z          0    16463    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    206            W          0    16432    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    203            \          0    16483    sites 
   TABLE DATA               F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public       postgres    false    208            [          0    16478    statuses 
   TABLE DATA               K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public       postgres    false    207            �          0    17182    units 
   TABLE DATA               g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    257            R          0    16402    users 
   TABLE DATA               �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    198            a          0    16558    videos 
   TABLE DATA               �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM stdin;
    public       postgres    false    213            �           0    0    about_us_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.about_us_id_seq', 5, true);
            public       postgres    false    234            �           0    0    about_us_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 7, true);
            public       postgres    false    236            �           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 12, true);
            public       postgres    false    226            �           0    0    article_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.article_categories_id_seq', 12, true);
            public       postgres    false    222            �           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
            public       postgres    false    216            �           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 4, true);
            public       postgres    false    211            �           0    0    duty_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.duty_categories_id_seq', 9, true);
            public       postgres    false    218            �           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 18, true);
            public       postgres    false    220            �           0    0    event_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.event_translations_id_seq', 4, true);
            public       postgres    false    250            �           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 3, true);
            public       postgres    false    248            �           0    0    faq_categories_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, true);
            public       postgres    false    224            �           0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
            public       postgres    false    246            �           0    0    front_banners_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.front_banners_id_seq', 4, true);
            public       postgres    false    230            �           0    0    images_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.images_id_seq', 9, true);
            public       postgres    false    228            �           0    0    log_activities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.log_activities_id_seq', 177, true);
            public       postgres    false    209            �           0    0    main_duties_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.main_duties_id_seq', 5, true);
            public       postgres    false    238            �           0    0    main_duty_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 6, true);
            public       postgres    false    240            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 50, true);
            public       postgres    false    196            �           0    0    official_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.official_translations_id_seq', 2, true);
            public       postgres    false    254            �           0    0    officials_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.officials_id_seq', 1, true);
            public       postgres    false    252            �           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
            public       postgres    false    200            �           0    0    post_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.post_translations_id_seq', 27, true);
            public       postgres    false    244            �           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 17, true);
            public       postgres    false    242            �           0    0    publications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.publications_id_seq', 1, false);
            public       postgres    false    232            �           0    0    regions_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.regions_id_seq', 1, true);
            public       postgres    false    214            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
            public       postgres    false    202            �           0    0    units_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.units_id_seq', 2, true);
            public       postgres    false    256            �           2606    16922    about_us about_us_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.about_us
    ADD CONSTRAINT about_us_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.about_us DROP CONSTRAINT about_us_pkey;
       public         postgres    false    235            �           2606    16935 E   about_us_translations about_us_translations_about_us_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_locale_unique UNIQUE (about_us_id, locale);
 o   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_locale_unique;
       public         postgres    false    237    237            �           2606    16933 0   about_us_translations about_us_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_pkey;
       public         postgres    false    237            �           2606    16876    albums albums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.albums DROP CONSTRAINT albums_pkey;
       public         postgres    false    227            �           2606    16854 *   article_categories article_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.article_categories DROP CONSTRAINT article_categories_pkey;
       public         postgres    false    223            �           2606    16595    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public         postgres    false    217            �           2606    16506    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         postgres    false    212            �           2606    16826 $   duty_categories duty_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.duty_categories
    ADD CONSTRAINT duty_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.duty_categories DROP CONSTRAINT duty_categories_pkey;
       public         postgres    false    219            �           2606    16839 T   duty_category_translations duty_category_translations_duty_category_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_locale_unique UNIQUE (duty_category_id, locale);
 ~   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_locale_unique;
       public         postgres    false    221    221            �           2606    16837 :   duty_category_translations duty_category_translations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_pkey;
       public         postgres    false    221            �           2606    17128 <   event_translations event_translations_event_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_locale_unique UNIQUE (event_id, locale);
 f   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_locale_unique;
       public         postgres    false    251    251            �           2606    17126 *   event_translations event_translations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_pkey;
       public         postgres    false    251            �           2606    17136 1   event_translations event_translations_slug_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_slug_unique UNIQUE (slug);
 [   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_slug_unique;
       public         postgres    false    251            �           2606    17115    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public         postgres    false    249            �           2606    16865 "   faq_categories faq_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.faq_categories DROP CONSTRAINT faq_categories_pkey;
       public         postgres    false    225            �           2606    17104    faqs faqs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.faqs DROP CONSTRAINT faqs_pkey;
       public         postgres    false    247            �           2606    16903     front_banners front_banners_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.front_banners
    ADD CONSTRAINT front_banners_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.front_banners DROP CONSTRAINT front_banners_pkey;
       public         postgres    false    231            �           2606    16887    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public         postgres    false    229            �           2606    16498 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public         postgres    false    210            �           2606    16949    main_duties main_duties_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_duties
    ADD CONSTRAINT main_duties_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_duties DROP CONSTRAINT main_duties_pkey;
       public         postgres    false    239            �           2606    16962 H   main_duty_translations main_duty_translations_main_duty_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_locale_unique UNIQUE (main_duty_id, locale);
 r   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_locale_unique;
       public         postgres    false    241    241            �           2606    16960 2   main_duty_translations main_duty_translations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_pkey;
       public         postgres    false    241            j           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            v           2606    16451 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    204    204    204            y           2606    16462 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public         postgres    false    205    205    205            �           2606    17171 E   official_translations official_translations_official_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_locale_unique UNIQUE (official_id, locale);
 o   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_locale_unique;
       public         postgres    false    255    255            �           2606    17169 0   official_translations official_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_pkey;
       public         postgres    false    255            �           2606    17179 7   official_translations official_translations_slug_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_slug_unique UNIQUE (slug);
 a   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_slug_unique;
       public         postgres    false    255            �           2606    17147    officials officials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.officials
    ADD CONSTRAINT officials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.officials DROP CONSTRAINT officials_pkey;
       public         postgres    false    253            q           2606    16429    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    201            �           2606    17042 (   post_translations post_translations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_pkey;
       public         postgres    false    245            �           2606    17044 9   post_translations post_translations_post_id_locale_unique 
   CONSTRAINT        ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_locale_unique UNIQUE (post_id, locale);
 c   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_locale_unique;
       public         postgres    false    245    245            �           2606    17052 /   post_translations post_translations_slug_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_slug_unique UNIQUE (slug);
 Y   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_slug_unique;
       public         postgres    false    245            �           2606    17020    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public         postgres    false    243            �           2606    16914    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public         postgres    false    233            �           2606    16582    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public         postgres    false    215            {           2606    16477 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    206    206            s           2606    16440    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    203                       2606    16487    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public         postgres    false    208            }           2606    16482    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public         postgres    false    207            �           2606    17187    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public         postgres    false    257            l           2606    16411    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    198            n           2606    16409    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    198            �           2606    16565    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public         postgres    false    213            �           1259    16941 "   about_us_translations_locale_index    INDEX     f   CREATE INDEX about_us_translations_locale_index ON public.about_us_translations USING btree (locale);
 6   DROP INDEX public.about_us_translations_locale_index;
       public         postgres    false    237            �           1259    16845 '   duty_category_translations_locale_index    INDEX     p   CREATE INDEX duty_category_translations_locale_index ON public.duty_category_translations USING btree (locale);
 ;   DROP INDEX public.duty_category_translations_locale_index;
       public         postgres    false    221            �           1259    17134    event_translations_locale_index    INDEX     `   CREATE INDEX event_translations_locale_index ON public.event_translations USING btree (locale);
 3   DROP INDEX public.event_translations_locale_index;
       public         postgres    false    251            �           1259    16968 #   main_duty_translations_locale_index    INDEX     h   CREATE INDEX main_duty_translations_locale_index ON public.main_duty_translations USING btree (locale);
 7   DROP INDEX public.main_duty_translations_locale_index;
       public         postgres    false    241            t           1259    16444 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    204    204            w           1259    16455 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    205    205            �           1259    17177 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public         postgres    false    255            o           1259    16418    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    199            �           1259    17050    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public         postgres    false    245            �           2606    16936 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public       postgres    false    237    2974    235            �           2606    16596    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public       postgres    false    215    2951    217            �           2606    16840 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public       postgres    false    219    2955    221            �           2606    17129 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public       postgres    false    251    2999    249            �           2606    16888    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public       postgres    false    229    227    2966            �           2606    16963 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public       postgres    false    2981    241    239            �           2606    16445 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    2929    204    201            �           2606    16456 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    205    2931    203            �           2606    17172 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public       postgres    false    3008    253    255            �           2606    17045 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public       postgres    false    2988    245    243            �           2606    16583 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public       postgres    false    215    212    2947            �           2606    16466 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    2929    206    201            �           2606    16471 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    203    206    2931            w   ^   x�e̹�0ј��|a�7U�/E�_����c�3��|��p�d!+2�qd�՘�@	��S�ۿ����\����F�
.��[w���>�^      y   �   x�͎�� Eg�
�^JMJE�&��ŵ��-"J鋅�/��ɝN�p*��P-����!�
*�Z���uC�ey8��x�lset�9/�%k���z�)�v���d�cCs���c��%����r+9oh[�����4\�$��*�g�/=U�      o   4  x����J�0���)� ��t��M�"���d9[�nYIS��7u�y1�@�p��'Dt��7lyj�QWh���?D�hyZ���}ۜ�ɍ��.Jx �|"�DfWgeR䙔)$*߀�dJ�1�ʅ�xA�"Qn0#��ζ�X#�*!�\�<[U�>��cB����U,�hfۆj�96'���#�zr&p��iܡ��Tǖ�����,,~�7UV+�+VS�YC-9����o&���ԣ>�XLӕ[��]N6���ٿ�c����P_��\�`Tm�x���3�x�����Gqp�a      k   5  x����N�0 k�+��zmgS"�"����c'��R���D�()�]��h��Iܤ������o�M�R�+�u�dJu��ۣ@�dR別��V�LfU�	joP,�N"'�E�)`�Y�K~��B񲗢�h��C���DI,�j�_z�%��Jr���p�� W%l Z�:8�,���<�l�ѫl��/s��<�>���v���0��U����k7v�����s�����M�|��!Z�w�����*�֢D��v>���&����Og��E̫l[	�}�|L�㺺{����c�ʥ,�hW٦���,˾ M�E      e      x������ � �      `   W   x�3���K��K-�L�43�LJLK2�56I3�5147ӵ440�M1NIN3�4IM�H���4202�50�54S04�25�2��&����� ��D      g   `   x�m��� �3T�|_�@,�
���K����x*�>�fǴM����ѦХ�.龒�
d@�+<��f�ut#4�.݈`Ŭ�K��ŕ�#�����      i   |   x�E�1
1��z�s��RKE{AK��Lց5	I
���B�}�㛶�p�$͕�U�����)�,-�-�/�ڹ���s���8�c:@��bt4'aD1�hv2�Mt�����ކT�����"� ��7�      �   �   x�e���0E�ׯ�P)Bb�Y(-�@nI[H�{�i\^�ι/'N
�(F
)k�w/�=.k݂�I/�z+���Z��=tB*���S�-3�p���rUQ�kU�;�,�~O�-��՟���9/Г��NY9��g����B�      �   �   x���1�0�99E%f#�q'G`�]�]��m,tb@��d��O��faN@�'��0�=Z&�3�.8BB@����2݌bMe7wi�v47^�ɭ��&)@K�j!�)Q֌��ej2�]^�z-V u�),Vp���ɀ�r�$G��/��{Tз�mT�ґ���}�_\      m      x������ � �      �      x������ � �      s      x������ � �      q      x������ � �      ^      x��ks�8��?��O;U�M� o[�N)w��7�g6uv+���H"59��忟E��٢,91�J*v^�����F����`>��I�{�4��y��4N��$i�wFi:�NN��4�|1���`�O⁘���l~����9\t.~���j��t���
'q����ȏ����&��_1�+��b?��l6	~�gaz�M�ش�_��^������ �	��'�b�����1����1!�7"	������sl���ݾ����n�.#��u�A���n�˂�#:ԠFװ��a�=nx�Vi�֐���E<��4d������@e�'TV�gR��X�z$8Ǹ$#1'���m+�koam�{���� �*��y0��U��p:�6@�b�	�'�8��$Ԫ�Z�i{��4d��،'ǆ�q��L�!��O�3�JCN�s��gX*�-�]xJ|*��k�1���$Ɨ�8I��b*��K1)~��1��0ޥ�9�q�At2�P���Tt��o��z)֐�����1G�!B
�ϳp�����_"<� _��,�1D2o�(������o]=wl�>�EE���M��i�����	�&����Ǒk��>���e�=?�?��<�Ui�����&σ�*��G�탔�H��M�1=�JCD�mm�Jx�m��Ri��)|�(��B��x'����i�!b/�<;���X$iKq#E�:D�5D�{(�E��p���+�5D��P��M���cX#Ӈ#3T��B���0��5�ϗ$_�f�I0�H/c�H�Ti���;��a�U�;�������RC����(�<��h��~���ώ(>E�yG%�#����ݧ�Wxe���Y mv��}�M�#�Tn���	����h5�e�A<�t��s�q>���P̻���7Y4���D`n�G�JC���@h�芺*Q�ExBSFa�i�4D��V�LW�!��CX_h,5��E�B��QV�!h�-��Ϥ�VXh�$-­B�ǉJC&U"�!�Z�Ot�h����L�e�=CW�!S��U��ȥ�Lu��2\g��r#K���e�bX��+5d�!�v����0א�Q�h�L�/yQ�Ґ��QZ�*�����S)-�u���4��(eK�����Pj�<J��0�^9�;x���5�,5��h��]�q(4�*Qʕ���~�Sxh��U}r��)��Vb�BC�z|�zD2@��_�����T5�Һ%h�4Ĝǧ��ݙ�Z 5��%��V�K�G;�>)Si��������IT���;H��2E�fк+P/I�7��4�p���]���V��̱[%�k��MD��fh��j� �Ř��8o�t�yV�JC����_O���Xވ����zl�-���:�?n�}�t	R�Vn����BCܹ��.޽S�0���~(����EI^H�!5��m�~ �=r�f9<f;���|�Sžf�(��x�Y*Y�vMw9��=���������JCi��KϭN�U4dі����Ґe�����̵Ui<��,���K�T�*�xky����wY�v�������[:8,<���sxv�>xVu�KEC�S�7o�������,��w?>W�Oj�66�ۇ�Շ_%���!Ƴ�\D�*�R���W`L7��F'3y���;MH:]�`��%~�JC6mI6"��u���l���a�.QA���C
QVqT�Yq[��܂UӐ������e�HMC��Y[j~ �If�/ɗ��!�+�o�U"�`o����ϼMͭi��g��	�����Ґ]T���ɿv,������h�߅�7L�hH�_n3�j��Z09 <��WL���M+&{���>={e̸Ԑs�m�9�Trh�u8	�ۍ�3!��Y�|�A�S)N���{(�r���c�vZ5v��u���E��Kq��D����	@�j<���S��9$�<�6���!gcYKt#QJe�X��]j�Q䐵V�!�@X�ow}�u�鋮���.�����]c��]uVӐcm�ۛ�2EஓC�y:@��4�؝���i⾴̝L����Rlr�I\��g=lߗ%~��t[S����|8��Ґ�>~��U^�J��\��:Qe*���~������Gܻz�O�B$�x���E��ґ��_8}u������ӫ�+G�&	~ςh���OO����Y�Ö�,�����}^�9=?�z���=��w}���?��~���O��r�R����7���wY@�p-޵�[�k���ˣi��LG�!���)��0��1T��K��ԙ>`"�r�30Ury�s`��(�
�4�*��v�߲�G/�qX�r��RC���A�FT��Ґ��ǲo�<OZ���QӐ�n�˙e�I8`Fq�rI��J����s��[��򜎚���߃�q	pi�������a��T@�wCl�q��V��	2�Ҁ��9�!ã=��qq;]��wz�S�YI�<�JL�-�U���-Wi �w��0-V�_�I0N���U�i-������
vS�&�ܣP�ȥ��8n�n����[��SK�)5 i��%G�؞i�4�(#�Ϣ/R�&������o�8����$g��jERV� *H�[�ܶ���Ԫu7^n	�i��eٌ�U�x�i��얀��'ZK?�gȕ)���U�P��/��1z�Sz*I=�"e�J��+���.�Ud��5�޲]��=��H�*��~���P�>�t�h�`-EϚ&Y>��%�(���}x��xˤ���+=g��,�׷^�Y��x~XAo9=�]��Hp��K���z"��Z���RC��)�� ���Q:*P��>w�:[�[���i��n@�OSt5��4��.�h�M�) }�'"m�=w��g���5��۔�0čS5$�<�a}�S���	ݼ�5�M��b��Q��8h��2W<�RhVMDA���6֖@��f�pΚ�ח��q�0+�.��$k��±j+�����`ܼJ�μ�Z��"������_�p�Ɂ�����f����J`tl.����n�8+��Rd�m��KE^b"��X��|����d_���a�*�@���O�>�w\Py*����zu�R�ӛ���N�z*�j��n�T�-zĐ�)��i � {�4�Z������B�E�B��U4@hoB�0�d��+�{�� g�� ����+�*�����DDc���O�4D����VYu:��B�y#�}���<�1&�'!�~
�b����xA'�&���U4�K��}p�/^�&Ǳ`iV�_V4�k�}�)��%C�Qe��6���[�Z�h ������^�.jx�Qi��jmp���-W� ���4�G}�c���蚫-|qz-aΒ.�?~���-��t��v��]�����O�+p���k��7��s��<W����8�mֿ~N�m߁�{�н�������AK�9]�:��5�k��|�ٟ.^M
�h�����(���k* ��~����}~۶��t)Si@�Zҽ�x:��/��ۜ�ITе�>�����K�B�Sl�|<����{Q�Z��`t;9��;�����Z�^�j��%GW�!b���2&i�|n�6gkr�l�]����+E�����Q��ʍ3��F�X�������Rp�A�a��աe�Bv���?z:���aMP�t�.�@(��Y�]��}��em��N��Sg�Y��KH�o��_c�����[�s����0�ĂK`D��;��s��̨JC�6j��s1NC|�C1��T�#�J3޶��x+P*�%5���|��%�8	@��Q�3x��><˷O\&a�{�l������_��~t$�������� I�׉HC����}��ۧ��Y�a�4xjղ��~&w��wK�W�8
��]�d�*��e9���#K ��J��S��Z�|��]-�R� ��'�{k�޼�\]�.5 �*���e��&�$�niI�Y!�|6���/�[��,#�$�R���4H$�ŵ�Qs**�]K�v_N.^}���nK������V��|�������8��������x    ڭ��\C�8F�?E���      {      x������ � �      }      x������ � �      Q   �  x�m�ݎ� F��fC���.�ڦ;$��*�f�~����+.΁��B|#�bQY$��?;��Eo�ͯ���6�7�Al�w�m���nW��x(�RVu6����]Q��
���/�%\\�(��-����	t�j�`C, ���ee���N�Ӻ1��C1�zk4$G�q���TmRY4s��p�KF;@jPB��꟩���a%�����@�E�h��}��vL��R�FdNRw�_K�6�n�&�x_~U�ޒ��e��8��s�����X��p�.ZG���t�_�e`uf���垾f���߭ST������s���붼�)�m�40�vU�n��+˴��+����HR��_��VB:�/毶Ve��Y8�P�۟ܡvSN���e+� R �R�^�@�_ ��-j5�zP
I �!���?�|�asf��2M���S�x���ংH�E���Idh�^��?s��q? ���A      X      x������ � �      Y   -  x�}��m 1Dco/4D�'q��MD�0`'.���<r���}�^Uy�>�޿���W}��x��ۀ�[��\�;���}M�4H�L9ax8H6�&���/p�4@4pJ���`7	LCa���CT9�H���Amr[AM�a���@��ٵ��л�+E�Y�pu��uLY7pe�3���q��G��2��Q��'�\��h�׹�?G��	&L��0B�x%�L�&�ba�'��A06H4�5s�|n{��V3�fx�'<H���Q�5�2~:x���@�341�^��u]�I{��      �      x������ � �      �      x������ � �      S      x������ � �      U   �   x����
�0E��+����V�J� ��K()4��^��\���=�=�2�����?����m��L��Le�e���Z,�����	0���� )��x�/B'o�V9��,B/LT��J��.C��UX��h&����$J�1���2�*��J�d�~�"��G2%%��L2����K-��.U��e؅Ly/u?��q7�3�A�L4!�c�	+�.�      �   !
  x��[�n���������N6�8�4�&�ɬ1IP��bdZ��ȝu��}�>I�CJ��d:?�b�[�eK���9��#��������:S�r#\��Ȅ�y������*6C6*������sZ�ҬR��WױT����A��U�f�1yv��͛�x��ͱ�>a:���=�����!W&x��LW'l�g���HF�9{'���z���c�Z��J�ʠZ>�_�]�gLs'�B�"���������6�	�"���P�Rr�{{y��-��ڒ�ʭ�{Is��;��^N�O�#j%RL��v7�Ҿ���B?��+�g��Z�+�2�O6�X�Rv���Rq�/�%4_�٭Xؙu,/xʌХ�Y)d�I��k�����ssɰ=�Xsr�_����#�o�����i*�>KrN`+�ȋ?����T,�ӏۦZ��l)�^�,	'0-՜H�
=���Gւr8�x+���W��F�<�����@�)O�SϬ_5�\@ )�OcqˑZqi�ɩM�I��2���3�b�+3`�`��)��Mi	 ���0|IE"bo׊0�?Ǽ���ۆM�]���T*�^�6MW�Gw�3�ߚ�Oۯ	M7�K=��cC���ܲ���R��Qf �2`�(�,�	�VQ���wy�k6
��G�7Fc�or"�?@�q�+�
�2Z�� �؅��J��f���b���� �X�P��'�Y�R&���'�cw�r���rr�DP�\��E�������{�ZOw�(�pb���6(�7��H�ϑ�p8v^j\��_܌�ݣo`�-F���[k+�m���8?##(?��l�DX�+�R��������Z��n%��S2�94NHzեb��-��N(.>��?�
h�wՒ�C(%!tܳ�w9�¶��!;�������!.z��?�����,<���߯/j����,$��!: �u�x1����:��s��H]0�x� ���ٕ�i8�\�Fʉ��e����iYt]��n#L�>�1��8L�ڎ�>��R�S ���;��=��|��ưv��-H�V ���-R�/s2ٸ��x�&\N��xk �A�	R	�@�g>��exם�1���x��JZ&��WԭH�+��ә��6�u$t�y$m�4��-e�B��(��Z@��|<��@��%�l�w�5�zHad&���8��� �|��c��ܒ�Z"\ �,rU�G�8j\f �G�w�O�?��ι�i$�;s��x�ϥ��w����sTTLw���>7�&�a�^ڛ���Ƒ�Y���]�p�.���-�}�N��V.�D��g�`����F�ə�#��@��;��������)�Ui�D"���}�߆���������7@��X��Ll���u�L�c�jPE����d
ޚ��:�PJ�q��_�B4�b�[��8���ەRfJ�ei�:x��� ��DioT1$�R�
�CEC���UZ�G:�}v�}�J�K�(+)�Ųu��S*��@.��0���3Y�Җ��Rwڝ��1Y))�d�����G��з����BY�r\�y��۽rJ�aNe�@�	�}alq���e/��o���\s�������(�pYZ����z��/X8죰��s�gSJO\�L,hh� �'D}*L�̛鐲�>�q��Y��N�B��C1�sS0��1mq�2puA�TI����6�eU��y_FU��ct���vd�q*��ԁ�7 �ue8���G.'�\\��F�X��&"t�R��)6��7�`c���C�׶����:�2e�4g�\��(��H#�� ��6D2@�$�����F�jFڃ�o�E{0���#������H���`�w���`����H{0��U{0�5#A�:�o*�f��?mx|c�ew�5RR��K��h�]u�ѳ���~�΍��0�X� �(�|XA�_�k��(3�
dT]�YY�'(_���͞ћ��t�I+��F�4Y�������%u���y� Ia����
��	tug��>�����rd��u�"?�P���f�8��Ru�+��ǯæ��!�RA�bUc�U���RE�+*&I'�ٌE��S�*R7$��P�H|� %y.�ҟ+�A�C6�g��}}�5�X%��iʆ����a0-�	����Z�����F1�O�%;c�ww�1��)%��{�������� �U����	Қ_i�88P�Oo��,��^�������,vM'���\x�Ϯ��Y�k�s��OanA|TG�G��Ԓ(��>(�seu)RX͂-�&�{%�i����c���ka{�k1|f��_�H�"���4��ld~U�u�0���R�ɾ.����Eu����U뺿v�E�ςu+�q>"X���x��G���.<�Cr�B�n�u��[l�b���(_v�Cr�WPB�W���m���'����h8��[AB\|dx�v��s��+N�+N�+N�+N�+N�+N�+N�+N�,���G���?��oU[�~[�a��:G]l�4<�X����(]�򰎵�"��a�[�;<��!Y�Cn��O�n��_��i�         �  x�͓�N1�ד��N�}�o��J˄�$S���،oàR���O_'+(,"����/뷿Oǜ(���G���@�Xh0"-��ɉT�~�6���5�I@J�k�3�O�R��)�y�#5 �Q�U{0*H�1�d���9�)�(�`�0{"�D*5�|�ǩ��hE$A�|/E��9�H�4w��H��>A%�Ѐ�΂�,�<9ˊ\*�,��Jhg�{)��L�p\�$�O+�.Q�̈����Cڮ��M�ׯ�n����-�����T�w/�m���2�f������.Ā>��|��_���*��(_fR�\�7�X\]������v6�6�������j��/�d��oW�}wB�Ҽ"C��B�Ʌ����t�o����t�������l�0���{Vw��1���d���{��^���z6�      u      x������ � �      c      x������ � �      Z   ?   x�̹ !���1{��ׁD��LCe�n{��~�ƕCNRҒ��$'=p������h&v      W   E   x�3�tL����,.)J,�/�,OM�4202�50�54Q04�25�22�&�e�Y�Z�M����	61�=... `pW      \   M  x����j1E�����G�坍�p��	�dS�JCg��M?���N��ؠ��:��nU�1�UW�S��z6Ue�׻/��~���J�2
T�;��Q�+��ogѕjC��QG@V�$�I7�^��vW�̇u�i�>�Xy�cw�s�=���+:������dr@�!�R�d�$�k*��r�_�Ǎ�ׂ�8�rT����3��Vc���K�m������q�y���F:�,�M#�m��l z ���b(�C~IƱ��ľ��ex�>�����E��:rq6�V��� ���7�ڱg�$`�q�C������0�S��S	c�(�s�$I�����5Zr��K�O�?�=����)N�:
��Ҁ��D�A�-7#��<���穻�ߧ�T�&Lu)���r��CJɀ��T����f���"���1��ms�bF�B�*UI��ߨ�q���mx�,Kz�4�ҟ�R������� �4�O%���	qw=.G�dB21xD&�"S�4�-T����yw�-r���߆̳̣�����<�}�
�KI��P�k�-ʨ�,����Z0����a��_��䋿�;;;�	�x��      [   �   x���AJAE�]��D�T������nR���3��mA\�����R�� �uW��f�@�p!Z��r�̅�P��r�ۑ�[[qE�c����	��B�.-�)�����=�F�kk�MSZ�
24���@3����ey��y���H�8ۭ��){���]Y��u�P)�)�����_O�ߧk��J)_wPa      �   m   x�m�1�0 ��� ���s_�%[��E���D����6���z���.��foԇx��x�d;�6B1��;vs�$F5O7��LLH��me]K���-)��?P      R   >  x��V�r�H=�W��גk_8lla@6[}��n��맄{"&�u�!$�*2�U�^f�����4�@�q�����ZG	��W�R�_��ի�nו_��|���qR�����`�S�����{�΃�z6����y�09�����v�ER\�c����-� T)�3�aH�$+���"V�8�)��q2��jm5E��!� J �&5�k��٪�0�)� a��".F	F�v�hVq~����ǋ��uSβ �m�f�V2����:�������<Y<-P�܍�yJ2]�;��F������@)���AGg^_[�.�U5�B� �Ũ	�ϥ���q���P
{9��nB���lrn�{yv���~}1q���w6��m��}M�ys ���{f9	0ih�3̀����\ܘD�T]��2[Ur�0�h�S$��3�d�ĕ�G��^�V���z���l�y>꠭��r��͒�d���D���a3m���.o�(�0k���?��%&XJ"� �s�se�Ha!��.k��٪HYͽ��Y'N���A� C�(XY��/�=���������}�}��?O���c6��lHk�v|Y��X�?����8�>
����F����z��j1���R(�������`�
�"��B��t�P���e�Vyq��a��E	�8��l��z+��O)|�����as!��{}�l��[����@W�{�3�w{ˇSkgy���)��� f�*�
h�#�+"�����;����#C Do �T�G�d�XXZ�`���8�����r� x�{��K	��Y�����������v�4��;�|�^�����f������"p�YG�#�K$cu@
L�@̌B������?.��V�J���"HWhC�q�)��@�He��on��_&����uDe���l"z_��m4����t��ݫ�]e��z<8Ϧ��F�O�t9�����Kt�?��
(Ν�AGa��A'5�G�+l�Xf�� 	�P��+�810��Xo�7�8)�>l�i�o�o��o���շ{⥝����G2�}�̒�r�i.bH-��H�(��}� -	Ҟ��|tZ�@/lU���F	�<v^�P�R a�I����<_��?�R������z�O���i�-�t�t���0ݾ�|�f��zz�}:�w6G���K�ACCB���N ):v?<J
k�0ׁg5�G'(lը�R����lS���� $c���;�+s�������A��� �l�B]=x��~z:N7�eN��q<k�K����~zɥ��(b�R�؅0�N��Aq�࠹�� )�U%�j�ok��      a      x������ � �      �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16393    kemendag    DATABASE     �   CREATE DATABASE kemendag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE kemendag;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    16917    about_us    TABLE     �   CREATE TABLE public.about_us (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.about_us;
       public         postgres    false    3            �            1259    16915    about_us_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.about_us_id_seq;
       public       postgres    false    235    3            �           0    0    about_us_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.about_us_id_seq OWNED BY public.about_us.id;
            public       postgres    false    234            �            1259    16925    about_us_translations    TABLE     (  CREATE TABLE public.about_us_translations (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    welcome_message character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.about_us_translations;
       public         postgres    false    3            �            1259    16923    about_us_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_us_translations_id_seq;
       public       postgres    false    3    237            �           0    0    about_us_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_us_translations_id_seq OWNED BY public.about_us_translations.id;
            public       postgres    false    236            �            1259    16868    albums    TABLE     ~  CREATE TABLE public.albums (
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
       public         postgres    false    3            �            1259    16866    albums_id_seq    SEQUENCE     v   CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.albums_id_seq;
       public       postgres    false    227    3            �           0    0    albums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;
            public       postgres    false    226            �            1259    16849    article_categories    TABLE     #  CREATE TABLE public.article_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 &   DROP TABLE public.article_categories;
       public         postgres    false    3            �            1259    16847    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.article_categories_id_seq;
       public       postgres    false    3    223            �           0    0    article_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.article_categories_id_seq OWNED BY public.article_categories.id;
            public       postgres    false    222            �            1259    16590    cities    TABLE     6  CREATE TABLE public.cities (
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
       public         postgres    false    3            �            1259    16588    cities_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public       postgres    false    3    217            �           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
            public       postgres    false    216            �            1259    16501 	   countries    TABLE     �   CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.countries;
       public         postgres    false    3            �            1259    16499    countries_id_seq    SEQUENCE     y   CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public       postgres    false    212    3            �           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
            public       postgres    false    211            �            1259    16821    duty_categories    TABLE     �   CREATE TABLE public.duty_categories (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 #   DROP TABLE public.duty_categories;
       public         postgres    false    3            �            1259    16819    duty_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.duty_categories_id_seq;
       public       postgres    false    219    3            �           0    0    duty_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.duty_categories_id_seq OWNED BY public.duty_categories.id;
            public       postgres    false    218            �            1259    16829    duty_category_translations    TABLE     �   CREATE TABLE public.duty_category_translations (
    id integer NOT NULL,
    duty_category_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 .   DROP TABLE public.duty_category_translations;
       public         postgres    false    3            �            1259    16827 !   duty_category_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_category_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.duty_category_translations_id_seq;
       public       postgres    false    3    221            �           0    0 !   duty_category_translations_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.duty_category_translations_id_seq OWNED BY public.duty_category_translations.id;
            public       postgres    false    220            �            1259    17118    event_translations    TABLE       CREATE TABLE public.event_translations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL
);
 &   DROP TABLE public.event_translations;
       public         postgres    false    3            �            1259    17116    event_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.event_translations_id_seq;
       public       postgres    false    251    3            �           0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
            public       postgres    false    250            �            1259    17107    events    TABLE       CREATE TABLE public.events (
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
       public         postgres    false    3            �            1259    17105    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public       postgres    false    3    249            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
            public       postgres    false    248            �            1259    16857    faq_categories    TABLE     C  CREATE TABLE public.faq_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by character varying(255) NOT NULL,
    updated_by character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 "   DROP TABLE public.faq_categories;
       public         postgres    false    3            �            1259    16855    faq_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faq_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.faq_categories_id_seq;
       public       postgres    false    225    3            �           0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
            public       postgres    false    224            �            1259    17096    faqs    TABLE     @  CREATE TABLE public.faqs (
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
       public         postgres    false    3            �            1259    17094    faqs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.faqs_id_seq;
       public       postgres    false    247    3            �           0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
            public       postgres    false    246            �            1259    16895    front_banners    TABLE     �  CREATE TABLE public.front_banners (
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
       public         postgres    false    3            �            1259    16893    front_banners_id_seq    SEQUENCE     }   CREATE SEQUENCE public.front_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.front_banners_id_seq;
       public       postgres    false    3    231            �           0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
            public       postgres    false    230            �            1259    16879    images    TABLE       CREATE TABLE public.images (
    id bigint NOT NULL,
    album_id integer NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.images;
       public         postgres    false    3            �            1259    16877    images_id_seq    SEQUENCE     v   CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public       postgres    false    3    229            �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
            public       postgres    false    228            �            1259    16490    log_activities    TABLE     i  CREATE TABLE public.log_activities (
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
       public         postgres    false    3            �            1259    16488    log_activities_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.log_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.log_activities_id_seq;
       public       postgres    false    210    3            �           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
            public       postgres    false    209            �            1259    16944    main_duties    TABLE     �   CREATE TABLE public.main_duties (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.main_duties;
       public         postgres    false    3            �            1259    16942    main_duties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_duties_id_seq;
       public       postgres    false    239    3            �           0    0    main_duties_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_duties_id_seq OWNED BY public.main_duties.id;
            public       postgres    false    238            �            1259    16952    main_duty_translations    TABLE     M  CREATE TABLE public.main_duty_translations (
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
       public         postgres    false    3            �            1259    16950    main_duty_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duty_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_duty_translations_id_seq;
       public       postgres    false    241    3            �           0    0    main_duty_translations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_duty_translations_id_seq OWNED BY public.main_duty_translations.id;
            public       postgres    false    240            �            1259    16396 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            �            1259    16394    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197    3            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    16441    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public         postgres    false    3            �            1259    16452    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public         postgres    false    3            �            1259    17161    official_translations    TABLE     �   CREATE TABLE public.official_translations (
    id bigint NOT NULL,
    official_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 )   DROP TABLE public.official_translations;
       public         postgres    false    3            �            1259    17159    official_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.official_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.official_translations_id_seq;
       public       postgres    false    3    255            �           0    0    official_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.official_translations_id_seq OWNED BY public.official_translations.id;
            public       postgres    false    254            �            1259    17139 	   officials    TABLE     �  CREATE TABLE public.officials (
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
       public         postgres    false    3            �            1259    17137    officials_id_seq    SEQUENCE     y   CREATE SEQUENCE public.officials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.officials_id_seq;
       public       postgres    false    253    3            �           0    0    officials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.officials_id_seq OWNED BY public.officials.id;
            public       postgres    false    252            �            1259    16412    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            �            1259    16421    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false    3            �            1259    16419    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    3    201            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    200            �            1259    17034    post_translations    TABLE     �   CREATE TABLE public.post_translations (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    slug character varying(255) NOT NULL
);
 %   DROP TABLE public.post_translations;
       public         postgres    false    3            �            1259    17032    post_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.post_translations_id_seq;
       public       postgres    false    3    245            �           0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
            public       postgres    false    244            �            1259    17012    posts    TABLE     �  CREATE TABLE public.posts (
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
       public         postgres    false    3            �            1259    17010    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public       postgres    false    243    3            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
            public       postgres    false    242            �            1259    16906    publications    TABLE     e  CREATE TABLE public.publications (
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
       public         postgres    false    3            �            1259    16904    publications_id_seq    SEQUENCE     |   CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.publications_id_seq;
       public       postgres    false    3    233            �           0    0    publications_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;
            public       postgres    false    232            �            1259    16577    regions    TABLE       CREATE TABLE public.regions (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.regions;
       public         postgres    false    3            �            1259    16575    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public       postgres    false    3    215            �           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
            public       postgres    false    214            �            1259    16463    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public         postgres    false    3            �            1259    16432    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    3            �            1259    16430    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    203    3            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    202            �            1259    16483    sites    TABLE     �   CREATE TABLE public.sites (
    id uuid NOT NULL,
    site_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sites;
       public         postgres    false    3            �            1259    16478    statuses    TABLE     �   CREATE TABLE public.statuses (
    id uuid NOT NULL,
    status_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.statuses;
       public         postgres    false    3                       1259    17182    units    TABLE       CREATE TABLE public.units (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    unit_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.units;
       public         postgres    false    3                        1259    17180    units_id_seq    SEQUENCE     u   CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.units_id_seq;
       public       postgres    false    257    3            �           0    0    units_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;
            public       postgres    false    256            �            1259    16402    users    TABLE       CREATE TABLE public.users (
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
       public         postgres    false    3            �            1259    16558    videos    TABLE       CREATE TABLE public.videos (
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
       public         postgres    false    3            ]           2604    16920    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235            ^           2604    16928    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236    237            Y           2604    16871 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227            W           2604    16852    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223            T           2604    16593 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217            R           2604    16504    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    212    212            U           2604    16824    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            V           2604    16832    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            e           2604    17121    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    250    251    251            d           2604    17110 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    249    249            X           2604    16860    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225            c           2604    17099    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246    247            [           2604    16898    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231            Z           2604    16882 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229            Q           2604    16493    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210            _           2604    16947    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    239    239            `           2604    16955    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241            N           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            g           2604    17164    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    254    255    255            f           2604    17142    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253            O           2604    16424    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            b           2604    17037    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            a           2604    17015    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243            \           2604    16909    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            S           2604    16580 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            P           2604    16435    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            h           2604    17185    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    256    257    257            w          0    16917    about_us 
   TABLE DATA               R   COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    235   N       y          0    16925    about_us_translations 
   TABLE DATA               q   COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM stdin;
    public       postgres    false    237   �       o          0    16868    albums 
   TABLE DATA               �   COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM stdin;
    public       postgres    false    227   b       k          0    16849    article_categories 
   TABLE DATA               x   COPY public.article_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    223   �	       e          0    16590    cities 
   TABLE DATA               v   COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    217   �
       `          0    16501 	   countries 
   TABLE DATA               e   COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    212          g          0    16821    duty_categories 
   TABLE DATA               f   COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    219   o       i          0    16829    duty_category_translations 
   TABLE DATA               g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public       postgres    false    221   �       �          0    17118    event_translations 
   TABLE DATA               \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public       postgres    false    251   k       �          0    17107    events 
   TABLE DATA               �   COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    249          m          0    16857    faq_categories 
   TABLE DATA               t   COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    225   �       �          0    17096    faqs 
   TABLE DATA               �   COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    247   �       s          0    16895    front_banners 
   TABLE DATA               �   COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id) FROM stdin;
    public       postgres    false    231          q          0    16879    images 
   TABLE DATA               Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public       postgres    false    229   (       ^          0    16490    log_activities 
   TABLE DATA               n   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    210   E       {          0    16944    main_duties 
   TABLE DATA               b   COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    239   k       }          0    16952    main_duty_translations 
   TABLE DATA               z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public       postgres    false    241   �       Q          0    16396 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   �       X          0    16441    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    204   �        Y          0    16452    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    205   �        �          0    17161    official_translations 
   TABLE DATA               U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public       postgres    false    255   �       �          0    17139 	   officials 
   TABLE DATA               �   COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM stdin;
    public       postgres    false    253   	       S          0    16412    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    199   &       U          0    16421    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    201   C       �          0    17034    post_translations 
   TABLE DATA               V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public       postgres    false    245   5                 0    17012    posts 
   TABLE DATA               �   COPY public.posts (id, site_id, type, source, file, reporter_id, status_id, created_by, updated_by, created_at, updated_at, category_id, published_at) FROM stdin;
    public       postgres    false    243   f       u          0    16906    publications 
   TABLE DATA               |   COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file) FROM stdin;
    public       postgres    false    233           c          0    16577    regions 
   TABLE DATA               n   COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    215   =       Z          0    16463    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    206   Z       W          0    16432    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    203   �       \          0    16483    sites 
   TABLE DATA               F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public       postgres    false    208   �       [          0    16478    statuses 
   TABLE DATA               K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public       postgres    false    207   [       �          0    17182    units 
   TABLE DATA               g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    257   )       R          0    16402    users 
   TABLE DATA               �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    198   �       a          0    16558    videos 
   TABLE DATA               �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM stdin;
    public       postgres    false    213   �       �           0    0    about_us_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.about_us_id_seq', 5, true);
            public       postgres    false    234            �           0    0    about_us_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 7, true);
            public       postgres    false    236            �           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 12, true);
            public       postgres    false    226            �           0    0    article_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.article_categories_id_seq', 12, true);
            public       postgres    false    222            �           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
            public       postgres    false    216            �           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 4, true);
            public       postgres    false    211            �           0    0    duty_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.duty_categories_id_seq', 9, true);
            public       postgres    false    218            �           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 18, true);
            public       postgres    false    220            �           0    0    event_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.event_translations_id_seq', 4, true);
            public       postgres    false    250            �           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 3, true);
            public       postgres    false    248            �           0    0    faq_categories_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, true);
            public       postgres    false    224            �           0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
            public       postgres    false    246            �           0    0    front_banners_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.front_banners_id_seq', 4, true);
            public       postgres    false    230            �           0    0    images_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.images_id_seq', 9, true);
            public       postgres    false    228            �           0    0    log_activities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.log_activities_id_seq', 177, true);
            public       postgres    false    209            �           0    0    main_duties_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.main_duties_id_seq', 5, true);
            public       postgres    false    238            �           0    0    main_duty_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 6, true);
            public       postgres    false    240            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 50, true);
            public       postgres    false    196            �           0    0    official_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.official_translations_id_seq', 2, true);
            public       postgres    false    254            �           0    0    officials_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.officials_id_seq', 1, true);
            public       postgres    false    252            �           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
            public       postgres    false    200            �           0    0    post_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.post_translations_id_seq', 27, true);
            public       postgres    false    244            �           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 17, true);
            public       postgres    false    242            �           0    0    publications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.publications_id_seq', 1, false);
            public       postgres    false    232            �           0    0    regions_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.regions_id_seq', 1, true);
            public       postgres    false    214            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
            public       postgres    false    202            �           0    0    units_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.units_id_seq', 2, true);
            public       postgres    false    256            �           2606    16922    about_us about_us_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.about_us
    ADD CONSTRAINT about_us_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.about_us DROP CONSTRAINT about_us_pkey;
       public         postgres    false    235            �           2606    16935 E   about_us_translations about_us_translations_about_us_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_locale_unique UNIQUE (about_us_id, locale);
 o   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_locale_unique;
       public         postgres    false    237    237            �           2606    16933 0   about_us_translations about_us_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_pkey;
       public         postgres    false    237            �           2606    16876    albums albums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.albums DROP CONSTRAINT albums_pkey;
       public         postgres    false    227            �           2606    16854 *   article_categories article_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.article_categories DROP CONSTRAINT article_categories_pkey;
       public         postgres    false    223            �           2606    16595    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public         postgres    false    217            �           2606    16506    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         postgres    false    212            �           2606    16826 $   duty_categories duty_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.duty_categories
    ADD CONSTRAINT duty_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.duty_categories DROP CONSTRAINT duty_categories_pkey;
       public         postgres    false    219            �           2606    16839 T   duty_category_translations duty_category_translations_duty_category_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_locale_unique UNIQUE (duty_category_id, locale);
 ~   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_locale_unique;
       public         postgres    false    221    221            �           2606    16837 :   duty_category_translations duty_category_translations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_pkey;
       public         postgres    false    221            �           2606    17128 <   event_translations event_translations_event_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_locale_unique UNIQUE (event_id, locale);
 f   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_locale_unique;
       public         postgres    false    251    251            �           2606    17126 *   event_translations event_translations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_pkey;
       public         postgres    false    251            �           2606    17136 1   event_translations event_translations_slug_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_slug_unique UNIQUE (slug);
 [   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_slug_unique;
       public         postgres    false    251            �           2606    17115    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public         postgres    false    249            �           2606    16865 "   faq_categories faq_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.faq_categories DROP CONSTRAINT faq_categories_pkey;
       public         postgres    false    225            �           2606    17104    faqs faqs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.faqs DROP CONSTRAINT faqs_pkey;
       public         postgres    false    247            �           2606    16903     front_banners front_banners_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.front_banners
    ADD CONSTRAINT front_banners_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.front_banners DROP CONSTRAINT front_banners_pkey;
       public         postgres    false    231            �           2606    16887    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public         postgres    false    229            �           2606    16498 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public         postgres    false    210            �           2606    16949    main_duties main_duties_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_duties
    ADD CONSTRAINT main_duties_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_duties DROP CONSTRAINT main_duties_pkey;
       public         postgres    false    239            �           2606    16962 H   main_duty_translations main_duty_translations_main_duty_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_locale_unique UNIQUE (main_duty_id, locale);
 r   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_locale_unique;
       public         postgres    false    241    241            �           2606    16960 2   main_duty_translations main_duty_translations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_pkey;
       public         postgres    false    241            j           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            v           2606    16451 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    204    204    204            y           2606    16462 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public         postgres    false    205    205    205            �           2606    17171 E   official_translations official_translations_official_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_locale_unique UNIQUE (official_id, locale);
 o   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_locale_unique;
       public         postgres    false    255    255            �           2606    17169 0   official_translations official_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_pkey;
       public         postgres    false    255            �           2606    17179 7   official_translations official_translations_slug_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_slug_unique UNIQUE (slug);
 a   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_slug_unique;
       public         postgres    false    255            �           2606    17147    officials officials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.officials
    ADD CONSTRAINT officials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.officials DROP CONSTRAINT officials_pkey;
       public         postgres    false    253            q           2606    16429    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    201            �           2606    17042 (   post_translations post_translations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_pkey;
       public         postgres    false    245            �           2606    17044 9   post_translations post_translations_post_id_locale_unique 
   CONSTRAINT        ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_locale_unique UNIQUE (post_id, locale);
 c   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_locale_unique;
       public         postgres    false    245    245            �           2606    17052 /   post_translations post_translations_slug_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_slug_unique UNIQUE (slug);
 Y   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_slug_unique;
       public         postgres    false    245            �           2606    17020    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public         postgres    false    243            �           2606    16914    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public         postgres    false    233            �           2606    16582    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public         postgres    false    215            {           2606    16477 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    206    206            s           2606    16440    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    203                       2606    16487    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public         postgres    false    208            }           2606    16482    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public         postgres    false    207            �           2606    17187    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public         postgres    false    257            l           2606    16411    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    198            n           2606    16409    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    198            �           2606    16565    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public         postgres    false    213            �           1259    16941 "   about_us_translations_locale_index    INDEX     f   CREATE INDEX about_us_translations_locale_index ON public.about_us_translations USING btree (locale);
 6   DROP INDEX public.about_us_translations_locale_index;
       public         postgres    false    237            �           1259    16845 '   duty_category_translations_locale_index    INDEX     p   CREATE INDEX duty_category_translations_locale_index ON public.duty_category_translations USING btree (locale);
 ;   DROP INDEX public.duty_category_translations_locale_index;
       public         postgres    false    221            �           1259    17134    event_translations_locale_index    INDEX     `   CREATE INDEX event_translations_locale_index ON public.event_translations USING btree (locale);
 3   DROP INDEX public.event_translations_locale_index;
       public         postgres    false    251            �           1259    16968 #   main_duty_translations_locale_index    INDEX     h   CREATE INDEX main_duty_translations_locale_index ON public.main_duty_translations USING btree (locale);
 7   DROP INDEX public.main_duty_translations_locale_index;
       public         postgres    false    241            t           1259    16444 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    204    204            w           1259    16455 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    205    205            �           1259    17177 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public         postgres    false    255            o           1259    16418    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    199            �           1259    17050    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public         postgres    false    245            �           2606    16936 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public       postgres    false    237    2974    235            �           2606    16596    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public       postgres    false    215    2951    217            �           2606    16840 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public       postgres    false    219    2955    221            �           2606    17129 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public       postgres    false    251    2999    249            �           2606    16888    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public       postgres    false    229    227    2966            �           2606    16963 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public       postgres    false    2981    241    239            �           2606    16445 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    2929    204    201            �           2606    16456 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    205    2931    203            �           2606    17172 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public       postgres    false    3008    253    255            �           2606    17045 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public       postgres    false    2988    245    243            �           2606    16583 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public       postgres    false    215    212    2947            �           2606    16466 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    2929    206    201            �           2606    16471 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    203    206    2931           