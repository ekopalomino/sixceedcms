PGDMP                         x            kemendag    11.8    11.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public       postgres    false    217    3            �           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
            public       postgres    false    216                       1259    17216 
   contact_us    TABLE     �  CREATE TABLE public.contact_us (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    message text NOT NULL,
    sender_ip character varying(255) NOT NULL,
    assign_to uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    status_id uuid NOT NULL
);
    DROP TABLE public.contact_us;
       public         postgres    false    3                       1259    17226    contact_us_processes    TABLE     y  CREATE TABLE public.contact_us_processes (
    id bigint NOT NULL,
    message_id uuid NOT NULL,
    responses text NOT NULL,
    reply_by uuid,
    reply_at timestamp(0) without time zone,
    sent_by uuid,
    sent_at timestamp(0) without time zone,
    status_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.contact_us_processes;
       public         postgres    false    3                       1259    17224    contact_us_processes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_us_processes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.contact_us_processes_id_seq;
       public       postgres    false    3    264            �           0    0    contact_us_processes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.contact_us_processes_id_seq OWNED BY public.contact_us_processes.id;
            public       postgres    false    263            �            1259    16501 	   countries    TABLE     �   CREATE TABLE public.countries (
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
       public       postgres    false    3    251            �           0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
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
       public       postgres    false    249    3            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
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
       public       postgres    false    3    225            �           0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
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
       public       postgres    false    3    247            �           0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
            public       postgres    false    246                       1259    17210    footer_link_translations    TABLE     �   CREATE TABLE public.footer_link_translations (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.footer_link_translations;
       public         postgres    false    3                       1259    17208    footer_link_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footer_link_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.footer_link_translations_id_seq;
       public       postgres    false    261    3            �           0    0    footer_link_translations_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.footer_link_translations_id_seq OWNED BY public.footer_link_translations.id;
            public       postgres    false    260                       1259    17202    footer_links    TABLE     �   CREATE TABLE public.footer_links (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    urutan integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.footer_links;
       public         postgres    false    3                       1259    17200    footer_links_id_seq    SEQUENCE     |   CREATE SEQUENCE public.footer_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.footer_links_id_seq;
       public       postgres    false    259    3            �           0    0    footer_links_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.footer_links_id_seq OWNED BY public.footer_links.id;
            public       postgres    false    258            �            1259    16895    front_banners    TABLE     �  CREATE TABLE public.front_banners (
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
       public       postgres    false    231    3            �           0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
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
       public       postgres    false    229    3            �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
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
       public       postgres    false    3    210            �           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
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
            public       postgres    false    252                       1259    17270    oimls    TABLE     (  CREATE TABLE public.oimls (
    id bigint NOT NULL,
    category integer NOT NULL,
    reference_no character varying(255) NOT NULL,
    title text NOT NULL,
    link character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.oimls;
       public         postgres    false    3                       1259    17268    oimls_id_seq    SEQUENCE     u   CREATE SEQUENCE public.oimls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.oimls_id_seq;
       public       postgres    false    268    3            �           0    0    oimls_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.oimls_id_seq OWNED BY public.oimls.id;
            public       postgres    false    267            �            1259    16412    password_resets    TABLE     �   CREATE TABLE public.password_resets (
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
       public       postgres    false    201    3            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
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
       public       postgres    false    245    3            �           0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
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
       public       postgres    false    3    243            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
            public       postgres    false    242            
           1259    17261    publication_categories    TABLE     �   CREATE TABLE public.publication_categories (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    category_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.publication_categories;
       public         postgres    false    3            	           1259    17259    publication_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publication_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.publication_categories_id_seq;
       public       postgres    false    266    3            �           0    0    publication_categories_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.publication_categories_id_seq OWNED BY public.publication_categories.id;
            public       postgres    false    265            �            1259    16906    publications    TABLE     �  CREATE TABLE public.publications (
    id bigint NOT NULL,
    cover_image character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    file character varying(255),
    title character varying NOT NULL,
    category_id bigint NOT NULL
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
       public       postgres    false    215    3            �           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
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
       public         postgres    false    3            �           2604    16920    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234    235            �           2604    16928    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237                       2604    16871 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226    227            }           2604    16852    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223            z           2604    16593 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217            �           2604    17229    contact_us_processes id    DEFAULT     �   ALTER TABLE ONLY public.contact_us_processes ALTER COLUMN id SET DEFAULT nextval('public.contact_us_processes_id_seq'::regclass);
 F   ALTER TABLE public.contact_us_processes ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    263    264    264            x           2604    16504    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211    212            {           2604    16824    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            |           2604    16832    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            �           2604    17121    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250    251            �           2604    17110 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248    249            ~           2604    16860    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225            �           2604    17099    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    247    247            �           2604    17213    footer_link_translations id    DEFAULT     �   ALTER TABLE ONLY public.footer_link_translations ALTER COLUMN id SET DEFAULT nextval('public.footer_link_translations_id_seq'::regclass);
 J   ALTER TABLE public.footer_link_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    261    260    261            �           2604    17205    footer_links id    DEFAULT     r   ALTER TABLE ONLY public.footer_links ALTER COLUMN id SET DEFAULT nextval('public.footer_links_id_seq'::regclass);
 >   ALTER TABLE public.footer_links ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    258    259    259            �           2604    16898    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231            �           2604    16882 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229            w           2604    16493    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    210    210            �           2604    16947    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238    239            �           2604    16955    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240    241            t           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �           2604    17164    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    254    255    255            �           2604    17142    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253            �           2604    17273    oimls id    DEFAULT     d   ALTER TABLE ONLY public.oimls ALTER COLUMN id SET DEFAULT nextval('public.oimls_id_seq'::regclass);
 7   ALTER TABLE public.oimls ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    268    267    268            u           2604    16424    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �           2604    17037    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            �           2604    17015    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243            �           2604    17264    publication_categories id    DEFAULT     �   ALTER TABLE ONLY public.publication_categories ALTER COLUMN id SET DEFAULT nextval('public.publication_categories_id_seq'::regclass);
 H   ALTER TABLE public.publication_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    266    265    266            �           2604    16909    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            y           2604    16580 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215            v           2604    16435    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �           2604    17185    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    256    257    257            �          0    16917    about_us 
   TABLE DATA               R   COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    235            �          0    16925    about_us_translations 
   TABLE DATA               q   COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM stdin;
    public       postgres    false    237            �          0    16868    albums 
   TABLE DATA               �   COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM stdin;
    public       postgres    false    227            �          0    16849    article_categories 
   TABLE DATA               x   COPY public.article_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    223            �          0    16590    cities 
   TABLE DATA               v   COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    217            �          0    17216 
   contact_us 
   TABLE DATA               �   COPY public.contact_us (id, name, email, message, sender_ip, assign_to, created_at, updated_at, site_id, status_id) FROM stdin;
    public       postgres    false    262            �          0    17226    contact_us_processes 
   TABLE DATA               �   COPY public.contact_us_processes (id, message_id, responses, reply_by, reply_at, sent_by, sent_at, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    264            �          0    16501 	   countries 
   TABLE DATA               e   COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    212            �          0    16821    duty_categories 
   TABLE DATA               f   COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    219            �          0    16829    duty_category_translations 
   TABLE DATA               g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public       postgres    false    221            �          0    17118    event_translations 
   TABLE DATA               \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public       postgres    false    251            �          0    17107    events 
   TABLE DATA               �   COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    249            �          0    16857    faq_categories 
   TABLE DATA               t   COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    225            �          0    17096    faqs 
   TABLE DATA               �   COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    247            �          0    17210    footer_link_translations 
   TABLE DATA               N   COPY public.footer_link_translations (id, created_at, updated_at) FROM stdin;
    public       postgres    false    261            �          0    17202    footer_links 
   TABLE DATA               S   COPY public.footer_links (id, site_id, urutan, created_at, updated_at) FROM stdin;
    public       postgres    false    259            �          0    16895    front_banners 
   TABLE DATA               �   COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id) FROM stdin;
    public       postgres    false    231            �          0    16879    images 
   TABLE DATA               Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public       postgres    false    229            �          0    16490    log_activities 
   TABLE DATA               n   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    210            �          0    16944    main_duties 
   TABLE DATA               b   COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    239            �          0    16952    main_duty_translations 
   TABLE DATA               z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public       postgres    false    241            �          0    16396 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197            �          0    16441    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    204            �          0    16452    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    205            �          0    17161    official_translations 
   TABLE DATA               U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public       postgres    false    255            �          0    17139 	   officials 
   TABLE DATA               �   COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM stdin;
    public       postgres    false    253            �          0    17270    oimls 
   TABLE DATA               `   COPY public.oimls (id, category, reference_no, title, link, created_at, updated_at) FROM stdin;
    public       postgres    false    268            �          0    16412    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    199            �          0    16421    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    201            �          0    17034    post_translations 
   TABLE DATA               V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public       postgres    false    245            �          0    17012    posts 
   TABLE DATA               �   COPY public.posts (id, site_id, type, source, file, reporter_id, status_id, created_by, updated_by, created_at, updated_at, category_id, published_at) FROM stdin;
    public       postgres    false    243            �          0    17261    publication_categories 
   TABLE DATA               d   COPY public.publication_categories (id, site_id, category_name, created_at, updated_at) FROM stdin;
    public       postgres    false    266            �          0    16906    publications 
   TABLE DATA               �   COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file, title, category_id) FROM stdin;
    public       postgres    false    233            �          0    16577    regions 
   TABLE DATA               n   COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    215            �          0    16463    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    206            �          0    16432    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    203            �          0    16483    sites 
   TABLE DATA               F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public       postgres    false    208            �          0    16478    statuses 
   TABLE DATA               K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public       postgres    false    207            �          0    17182    units 
   TABLE DATA               g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    257            �          0    16402    users 
   TABLE DATA               �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    198            �          0    16558    videos 
   TABLE DATA               �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM stdin;
    public       postgres    false    213            �           0    0    about_us_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.about_us_id_seq', 1, false);
            public       postgres    false    234            �           0    0    about_us_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 1, false);
            public       postgres    false    236            �           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 1, false);
            public       postgres    false    226            �           0    0    article_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.article_categories_id_seq', 10, true);
            public       postgres    false    222            �           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
            public       postgres    false    216            �           0    0    contact_us_processes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.contact_us_processes_id_seq', 1, false);
            public       postgres    false    263            �           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 4, true);
            public       postgres    false    211            �           0    0    duty_categories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.duty_categories_id_seq', 1, false);
            public       postgres    false    218            �           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 1, false);
            public       postgres    false    220                        0    0    event_translations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.event_translations_id_seq', 1, false);
            public       postgres    false    250                       0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
            public       postgres    false    248                       0    0    faq_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, false);
            public       postgres    false    224                       0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
            public       postgres    false    246                       0    0    footer_link_translations_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.footer_link_translations_id_seq', 1, false);
            public       postgres    false    260                       0    0    footer_links_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.footer_links_id_seq', 1, false);
            public       postgres    false    258                       0    0    front_banners_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.front_banners_id_seq', 1, false);
            public       postgres    false    230                       0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 1, false);
            public       postgres    false    228                       0    0    log_activities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.log_activities_id_seq', 246, true);
            public       postgres    false    209            	           0    0    main_duties_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.main_duties_id_seq', 1, false);
            public       postgres    false    238            
           0    0    main_duty_translations_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 1, false);
            public       postgres    false    240                       0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 56, true);
            public       postgres    false    196                       0    0    official_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.official_translations_id_seq', 2, true);
            public       postgres    false    254                       0    0    officials_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.officials_id_seq', 1, true);
            public       postgres    false    252                       0    0    oimls_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.oimls_id_seq', 2, true);
            public       postgres    false    267                       0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
            public       postgres    false    200                       0    0    post_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.post_translations_id_seq', 1, false);
            public       postgres    false    244                       0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 1, false);
            public       postgres    false    242                       0    0    publication_categories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.publication_categories_id_seq', 2, true);
            public       postgres    false    265                       0    0    publications_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.publications_id_seq', 3, true);
            public       postgres    false    232                       0    0    regions_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.regions_id_seq', 1, true);
            public       postgres    false    214                       0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
            public       postgres    false    202                       0    0    units_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.units_id_seq', 1, false);
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
       public         postgres    false    217            �           2606    17223    contact_us contact_us_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.contact_us DROP CONSTRAINT contact_us_pkey;
       public         postgres    false    262            �           2606    17234 .   contact_us_processes contact_us_processes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.contact_us_processes
    ADD CONSTRAINT contact_us_processes_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.contact_us_processes DROP CONSTRAINT contact_us_processes_pkey;
       public         postgres    false    264            �           2606    16506    countries countries_pkey 
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
       public         postgres    false    247            �           2606    17215 6   footer_link_translations footer_link_translations_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.footer_link_translations
    ADD CONSTRAINT footer_link_translations_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.footer_link_translations DROP CONSTRAINT footer_link_translations_pkey;
       public         postgres    false    261            �           2606    17207    footer_links footer_links_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.footer_links
    ADD CONSTRAINT footer_links_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.footer_links DROP CONSTRAINT footer_links_pkey;
       public         postgres    false    259            �           2606    16903     front_banners front_banners_pkey 
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
       public         postgres    false    241            �           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            �           2606    16451 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    204    204    204            �           2606    16462 $   model_has_roles model_has_roles_pkey 
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
       public         postgres    false    253                        2606    17278    oimls oimls_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.oimls
    ADD CONSTRAINT oimls_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.oimls DROP CONSTRAINT oimls_pkey;
       public         postgres    false    268            �           2606    16429    permissions permissions_pkey 
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
       public         postgres    false    243            �           2606    17266 2   publication_categories publication_categories_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_pkey;
       public         postgres    false    266            �           2606    16914    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public         postgres    false    233            �           2606    16582    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public         postgres    false    215            �           2606    16477 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    206    206            �           2606    16440    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    203            �           2606    16487    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public         postgres    false    208            �           2606    16482    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public         postgres    false    207            �           2606    17187    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public         postgres    false    257            �           2606    16411    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    198            �           2606    16409    users users_pkey 
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
       public         postgres    false    241            �           1259    16444 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    204    204            �           1259    16455 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    205    205            �           1259    17177 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public         postgres    false    255            �           1259    16418    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    199            �           1259    17050    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public         postgres    false    245            	           2606    16936 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public       postgres    false    3017    235    237                       2606    16596    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public       postgres    false    217    2994    215                       2606    16840 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public       postgres    false    2998    221    219                       2606    17129 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public       postgres    false    251    3042    249                       2606    16888    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public       postgres    false    227    229    3009            
           2606    16963 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public       postgres    false    241    3024    239                       2606    16445 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    204    2972    201                       2606    16456 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    203    2974    205                       2606    17172 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public       postgres    false    255    253    3051                       2606    17045 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public       postgres    false    243    245    3031                       2606    16583 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public       postgres    false    212    215    2990                       2606    16466 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    2972    206    201                       2606    16471 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    203    2974    206            �      x������ � �      �      x������ � �      �      x������ � �      �   0  x����N� �5}�� �K���FG�q5hE#1�.|{IM�$Â�+�������zX�����F2jl����$�x��� � �Z�iMh�yG�l&I��8$�9Cf� �f��j-����(_��~��z�٬�A�����ػ-F�Y��C�g�C�F�ݤ6Qd6+�pp�������K��[��fEzTj%-��_68׿Wѡ�-Y���{��,f��˂���~���fE������1����>ҒA��Q9��z�l�n
#�K-��Y�dGҝQ6+����%�Q�      �      x������ � �      �      x������ � �      �      x������ � �      �   W   x�3���K��K-�L�43�LJLK2�56I3�5147ӵ440�M1NIN3�4IM�H���4202�50�54S04�25�2��&����� ��D      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x���r���?O��*����֖|�e;>����V
$GԘ��Itv�y��s�Ŷ1$5�$5#�0*���S��4�h��`��~?����8�G�I���E*Ӕ>O#�����b��I��ۓ���`<�����)�{~8�wE��?}>�0�X�뼟�3��s`�~����9�pJ��7
�+�F�t�Sz4���_��I�8tl��v�'oN߿����QD_G���)}~�N'ѡoC�Y�c.�,�eo��r0\���.�NГ�=�k�s�+��vf�����y ��/;��V��LP愎r�/![D��m�i��u6����p�ua�6�4":g�(��hJ{Qz!���eO^�k	ｂ��ϥO7|�cq:��L%-�Ǔ�Lv:��E�Ny؟.�Ek�k���B�`q�%���P+7t���܇�Z���܇�Z.����܇�i�Y���A4���(��ϳi����D���/�L.苸'���[���~j4MQr8��<�����>��z)Q��K�2
�ck�ϖ�x'Cz9]�t�GB�r����ϋ�,P�d^GI����>~=��;�7H	���eW��n���cɞޓ6(�<.�G����8.�l9���D��;{nh�F�m�ǃ<�aa�Gv��hd=�0M�	#;���r;(
om�:�s1����w�L�c�D�C���4��6_�ӷr$Ӆ�x-E�:E�4��[(6ңm]8�D��J2���Xc�ŵ�\#ܺk�p�.4��'�D�ن���1���4��!R�1�p�C|+� z`��"�=f�k��M� ��J#�����x�$d?>Yu��_�?��OV(~M �y>�	?��\m��ڻ�Wv�y�=+��޳����	b�f�oQ���������b!:�F�� ��4���ˡ�w2�/��<�h$ssC.0�p� ����+`�AxB�rfa�ma�A�B�C;�4�}�p7���\#п�]B|_��r�@�6oG�B�W�p���;!�q�a�Fl�"�#���Ot�x6�1L#�m��0�4b��a�1,�"��� �0�f�r#s��x�bb�Kv�Fl��бBV3��x�Ҡj�����L#6��Cah;D�A�a��P 2L#�D);"tC�e�J#��(�ч�S�ʙFD�Q�N�ܲ҈h=JцaP]qXkD��SE��*�p�$�-��� A[��Ub��F�{�T��d� �?�F�w�T5�Һ"�b��S}��d���5(��%�3�b�`���h�Շ!�F<�11�6�4��� 5�*��-�w��t?�X��dd���v�]��K�cW%�i����1Cs��V�� p+�\k�q���C4�
�4�b�WG�g��9���7�8����L#������AS=]�Ԭ�۬�߽ֈ���r�^��Y����4#�3�$Q�R�K̀^�Lw���W���� c�^v8?V=v�Q�B�#\L#�u����K����Z��j*���i�e�ޭ���ZA#.7�v��mL#�mF���9*��x��,���ۥǊY�����[�»�F\�v5��ȭ����u�.<��d�<�6xn��KA#�_�77�p|^1��70�n� ��F<�Z|M�\}���
�`>�eBO�d!�!=��=7�����#h�p��~�دC��Z�Z,+��`�!Y�����J���uk��{�m���c񄁸+D��*i���l~�yȝ<}����lm5�����GEf�/���g!�+����T��O��Øy��[҈�ρ�	�ٚk�i�[W����?�,�����@���܄˩5��а̿\e��4�i�a�<Z�WlL#�u;&���ۡ�U���m�h��πi��W�8Rn7�Ϥ�LO����tez��1P��~�/>�;R�UggN�O_҈�$������Y�r./$ 9�Ϧ鷞��&�,�*�����42C�Z���|�� �ш������/�h�u��
{ �~�������^`Uyz�Ug%���q{]W��:94������l,L�?�)���$�05�BN-KM<Y�i������,��O��L��4JA��T��?��|O�N�+�	����kDU`	6���ǫ��У���E��t8/��2�?��t��Ëw_��7ǧ��o�N�4��i��2J���ߞ~��-�x ����*D�b	���y����1�t���×#�����k������w�����[�z��bpλ�[9]1�+��z���V���|���V�����i$��{
�]��}=��Rv��@�:�-�'�,���H������3+?+T�H�l��q�e'��^�]������� E#���i$���ci��%���(i$�]˙-{�x~�4�u#:�Z�y�a��}���秎^�=%�1�ߝ�qpc��wҿM��2������z��{���:A�`�;'�0�ix�P?��ӥ#�٠�.1�4 (r�0硧r<2 � U�[� ��9K��zw�E�F�Ų�vUR
*��������ѧ�Wg�9׀�{�]���1>�y�vH��ğ\����9�d�mӀ��\�ʞ\Уa�n��$/%}�N������٪]�H��Ӏd�3�];y�V��9����F��z,ݼ�kI�l��=<�V��>@�J�Di�2׀2ߦ�l-�wuJ�JRϾH��i���"q���P�Q$��%vö��	�� �4`�����{C�m`���*���ȺH��|��t(�x.���3&r��Iw�Wz��@���wW^�߂W{}��Y~�yh{�r�J�A�QO��r��w�k�q�z�M�L����i�2���������$UI���M�b�� Ӏ# }���r�� ��h,f�s\u7qn�\�:���QZ;UCA���.�G�T\/�0�
_��Rq�1gE���"��id�]�+�y�4wM&��V$Jks�y+h��x�ꟊח�S���5`�.�p�K�
�[�A�5 ��E��U*t��luJ�f[+^�hb�eǫ,l4 �V�T5� ��0������l�]��+��Fd�U�u��Y���L�#)���+N���r�R�>�,��N����ޒ�L��P�V��=����f��E�h�[N�*�S�V:�t>]�rD�Y*��b�U�% :k�G�I���"t���]�p'�^1.+h�лä́�m�W���g�i �7v�#�¢JA�A�v�(KDԆh��� �&,c�;!��ЂY絜�dJ'�i��K~�
��D����a�X�/�D�����ty�w�����q\����/��E��F�U�veV�� ��lv�� tp�M���m��[!�1��w Ȋ�r zO��Y��,�߃�]���k��7t���/����ЭOW �+��펟�~:��]]\[k�9�?w (�{�K ����,{g������=�n�w�ݫ8Ⱦ�r���o�֧�T'�t�v��o?�s��)&4@hb�� ��f�Ꚃ �M�����L|}czx}�\`�u7t?9�{��ЭO�f�t�v��o?ey����i��﬏h��_<y���GQۭD�0��߫��&���zy�P5��c�i��֊�o?��b�~5l복L���p5��J-��l�#� _~p�9nL��ɩ�m4 g�z�q�V���E{]W~>�t���vMP�t�.A�����M�Ǧf᪶зN��[g�]��sHn�o�3k`�+V�'V���O�ލ���C5�x����8j�&yŌca�U���"����X��'9���ʄ�ޘX���(���d>[Ւ|�� g�(ԝ���[~̎O|N���E�H
�x	���^H zAG�L$�E�(]��c���#�{2��v�SsC��4xjŲғ�R�x��m؞F�$�ӷ�tIO�IO��?R�bT	`��ʋeB���O���+�j)h��ny��bқ7��{ҹ�E����t<�aiC�3U!�z6G��h�hX�JI|��[��4H$��U�����mg�(��՗Ï/?}�xfJ�����ţ�������0�L �  S��C |֬�j��]��g �;ϲ+��:�x:V���DUĽ�~j/k�;�	�#�p�h0ɻ�(
���]@t]O
�߳-��ElY�\ڡ�5@P����.lX",��Q�F�o�d�5��ǜY�Ln��Ks`����(=��0=L�H�k��%��YL0��4YhT����7�����z�t�)׀/R��$�-������4�ǃ���@�� ,�w�k�(vNwsۧ�{#��T5� .R;��N�Ir�O9���k���*co�pn�"���'�U1�0�z��:� Ӈ���b`0���;� ݇�j�.�t�74��!�0�B�`a�u�h��d*�En9�r;э5�����q-�Q�"��mk�M"~�̯�#�:�e�o��D��8m!F�a�W 1Z�x�I�������C���6$$n��C,���W��E���&�j�	dDVy���Rz�[�ȕ
$P(�>�n��h>�TW;3�S�|��s"'wI�\��鎠�C�
��
F;��&$J#ܲ��a��O{j7i���P~�P��n#mJ�,G�j�R�ƣ	j3+�C�j@�;�s�y��JS�8�R$����Ԗ�2�i�	���!�%��X$\���Զ�x��tƖ�
�|�2_d��$���7�4��쾙d���v<L��^�I&��W���F8�v�Z�wx��疨nO�x6-c��=m�3=v�W(mL�H�v��L���ǭ��Ҁ-����<�c{~E��4 ��l��}��X��pnGo<��؍�m�os=�W8�1��1��h���.�B��Ӹ���е�}��؞_�De�e$�3�; u�	&k�"q[ˡ�p�
��A��F8�-d3�Z���֤Wi��מO{26�6��Ѽ,D���5��5����4���f�fڤ�ׇ�v��e�/DcM��*P]���\�<kN�$;t��1�\�N�,��_%�d�����.���H���}:�ksH�v ���*>�z>b�R$�2		��nM�3�"q�IH�VT�h2�bєIH���:��4�m$�2		��:�+Ӏ/z&�$$���n'�e�E�-��pG���L�7N3		;�e[��K���;���(��(Q����эԔ��*�0�'s	滮�����t�,T�;u���i@ٽ�r�c^��.Uo����+Z,�������\�ޞ��B���g�1�j;�u�\�HP�]���%zAv��`O�5#q3�BK��C�����t�P��
��l�[��1� ���<FV�����`y�E�\���߭���Bm�>����L|�����w�N�$rO9����r,�K:=W��'s't��M��K����֧�^<���^{�FI���2�"�O�!�y�T�F�D�C�<k�":��_kW��_�����G�⻿�O��O��Oy��x�ѴBU2�B+�4x�>O|_'�z�Z��̰Ю>�L�g����M/ϟn��~���< ��?Κ��      �      x������ � �      �      x������ � �      �   3  x�m�ɒ�0@���R/b��T�d,�T���pj�>�$ha���=��~�B1��Q_�g�3���{�� V�Ӯ�y��ŭ.d��Bʨ�DQ��M�[~]�<��׈K�7���5��ُ&�������@��?���!�o�wp�����|��hˣ�!�a�6�%�Pe��i���N����;�R���.�S�� W��NA���@�F�Ѳ��-|�!���"jT@�Aj����i�b�u����I�)����.��;�76QWyL�)�7���!��v)=Ў��XVG����JK�U:E)�e����i*F@��R�,�s��~����6�-u���l�`9Н���IE���A����'�w�a��.k���9
y�v����K7Ʃ1]��״H��#Jzv�] Y���U�(�$]��ҙt/7�`�9��{M���u1�9y���oǄHw�E���M���N����&�Ӏ�%�}n��<���O��т��!xb��mN6r�-�>/�)�U����ˁרN��2n-v{4sI��])Q�ɘ}�ԁnJ7��P.��2��� �� *�      �      x������ � �      �   -  x�}��m 1Dco/4D�'q��MD�0`'.���<r���}�^Uy�>�޿���W}��x��ۀ�[��\�;���}M�4H�L9ax8H6�&���/p�4@4pJ���`7	LCa���CT9�H���Amr[AM�a���@��ٵ��л�+E�Y�pu��uLY7pe�3���q��G��2��Q��'�\��h�׹�?G��	&L��0B�x%�L�&�ba�'��A06H4�5s�|n{��V3�fx�'<H���Q�5�2~:x���@�341�^��u]�I{��      �      x������ � �      �      x������ � �      �   �   x�m��j�0���S�1>Ȓ�J�)ګO���+yA�����J��/���!��°3��U��AҦ�
�`
�`<��d�o��N����p���
�������H���p��0�F��S����(!#�K�?h�aZo�XB�덋�`�	맡,7�6�X�9�\���4�6&'�7��,σ��������T��zzz��S�^���u�a`�      �      x������ � �      �   �   x����
�0E��+����V�J� ��K()4��^��\���=�=�2�����?����m��L��Le�e���Z,�����	0���� )��x�/B'o�V9��,B/LT��J��.C��UX��h&����$J�1���2�*��J�d�~�"��G2%%��L2����K-��.U��e؅Ly/u?��q7�3�A�L4!�c�	+�.�      �      x������ � �      �      x������ � �      �   `   x�m���  �3L�5�V@6��^��/u�����H��c�����V��V��!sVc:SI�ꓪ�{_��EH��������Fk��oD      �   �   x����
�0@��+����k�R��v)ł�1Q������n-����ؾwEU��c�َI�6:Aw�������0��w��S�Ђ$!1G�+�露Fe��i����{J!��H��F�k�8��I����ǹ���<&B�K3|&����)����~���¦�Ӭ\�N8�_YV�      �      x������ � �      �   ?   x�̹ !���1{��ׁD��LCe�n{��~�ƕCNRҒ��$'=p������h&v      �   E   x�3�tL����,.)J,�/�,OM�4202�50�54Q04�25�22�&�e�Y�Z�M����	61�=... `pW      �   M  x����j1E�����G�坍�p��	�dS�JCg��M?���N��ؠ��:��nU�1�UW�S��z6Ue�׻/��~���J�2
T�;��Q�+��ogѕjC��QG@V�$�I7�^��vW�̇u�i�>�Xy�cw�s�=���+:������dr@�!�R�d�$�k*��r�_�Ǎ�ׂ�8�rT����3��Vc���K�m������q�y���F:�,�M#�m��l z ���b(�C~IƱ��ľ��ex�>�����E��:rq6�V��� ���7�ڱg�$`�q�C������0�S��S	c�(�s�$I�����5Zr��K�O�?�=����)N�:
��Ҁ��D�A�-7#��<���穻�ߧ�T�&Lu)���r��CJɀ��T����f���"���1��ms�bF�B�*UI��ߨ�q���mx�,Kz�4�ҟ�R������� �4�O%���	qw=.G�dB21xD&�"S�4�-T����yw�-r���߆̳̣�����<�}�
�KI��P�k�-ʨ�,����Z0����a��_��䋿�;;;�	�x��      �      x���MJA��ݧ�D*�T��w�@Х��*�����x~[W�&�����M9�P܎
��üզ�8ݷ���
�w��X�ײY%��B��Xb�Ԍ�as��.�O���o�FkU���ܥA�=��s
J�=���������S���T���
4dS�bP�D��I�@ҧǋ���_����ja9�6 rö-�][�^���A��?��Baa���BƎ4�&ۺCn��6�N��������cL�j��=�n@F�5��+M�~|[����֗�y���슊      �      x������ � �      �   C  x��V�r�H=�W����/�#�fq;�R+��`��O	�DtD���RE���e�4�x��`� j�F$��:J����W���Y�^'v���;�����g5�Z���	6?7�t�x���ɝg���������c�0�k�O���;M�th��Ji`x�C@"(&Y�+ bE�P�c�B��'� o��VS�*b�P�`RG��h��j�2
6!-b0� pH0b��D����u)�=[v��lZr�>iw8ߴ��~G���_\>���eo���v���$Ӆ�c�h�<`�8�	�Rp�t4p���`�:�e����Z(���: �� �@�\zo*�G�.��W��G�����˞/��0�:�d75���c6����<�5G���)9䭱L
��$0�����4J[�s�`aS�]�L�٪���$@�� ���, 3$F�U�z�_�_�R胷G�����v�V����.K���Zdg2�MZik�tU��4ì;��H���`)��;,���Ε5J ���tY'��V�%u
i���t	qǅ��9"��n��q;ݔB�=4��><,�g1�L7�ӱ?e53��O��β��l|��jk��z��^��b�k,����
0�+�8w�+@�Z�+w�n�C�
�"����R'�,l))p8b#��TF� U��`�l�ç�ZK	�������C�m��N��y�>��/Ka��}x==n��C,Y�}_wWB��S�����(��#��P�(��Bo"���5!<�3RpZ��A
�BC�a$8P☒�+�,�Wܥd���Í��[� ��d�4^v���G��v�Ϥ1������I{V���փX_��&>���"�Yjp���_��u���Q ��N"pU6v�Vpw�>�a ! D�@�$�P:����RB�F��q�,�G���u-:�r����qs�'���{�){�t��n��uz�]5_2눈/��H���X�X���큿;q�l(l��5�F8@B��c��2 c%'Bo��R�M)�Ik�LG|G;��O��;ې'���n�vO��ɘO89�1Kƫɶy��$��3#!�P*���lҒ �iԱ�����_���b�ۨ�ǉ��P
 �R��@L��~������g)�ys���`�����<Ζi�J���e��^Y>U��\���N��I>��:q�А3�qB@ʁ�Sς��/����:�cB�j�<)C��E���hgc�1�c����?�_�R�M�}��|�r�w���Pw�<��{�����~��q�ͻ�Gc|{x���XF�1s)X�b̿J@��Q<;8h��)��٪�&�j�?��      �      x������ � �          �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public       postgres    false    217    3            �           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
            public       postgres    false    216                       1259    17216 
   contact_us    TABLE     �  CREATE TABLE public.contact_us (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    message text NOT NULL,
    sender_ip character varying(255) NOT NULL,
    assign_to uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    status_id uuid NOT NULL
);
    DROP TABLE public.contact_us;
       public         postgres    false    3                       1259    17226    contact_us_processes    TABLE     y  CREATE TABLE public.contact_us_processes (
    id bigint NOT NULL,
    message_id uuid NOT NULL,
    responses text NOT NULL,
    reply_by uuid,
    reply_at timestamp(0) without time zone,
    sent_by uuid,
    sent_at timestamp(0) without time zone,
    status_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.contact_us_processes;
       public         postgres    false    3                       1259    17224    contact_us_processes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_us_processes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.contact_us_processes_id_seq;
       public       postgres    false    3    264            �           0    0    contact_us_processes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.contact_us_processes_id_seq OWNED BY public.contact_us_processes.id;
            public       postgres    false    263            �            1259    16501 	   countries    TABLE     �   CREATE TABLE public.countries (
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
       public       postgres    false    3    251            �           0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
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
       public       postgres    false    249    3            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
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
       public       postgres    false    3    225            �           0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
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
       public       postgres    false    3    247            �           0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
            public       postgres    false    246                       1259    17210    footer_link_translations    TABLE     �   CREATE TABLE public.footer_link_translations (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.footer_link_translations;
       public         postgres    false    3                       1259    17208    footer_link_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footer_link_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.footer_link_translations_id_seq;
       public       postgres    false    261    3            �           0    0    footer_link_translations_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.footer_link_translations_id_seq OWNED BY public.footer_link_translations.id;
            public       postgres    false    260                       1259    17202    footer_links    TABLE     �   CREATE TABLE public.footer_links (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    urutan integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.footer_links;
       public         postgres    false    3                       1259    17200    footer_links_id_seq    SEQUENCE     |   CREATE SEQUENCE public.footer_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.footer_links_id_seq;
       public       postgres    false    259    3            �           0    0    footer_links_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.footer_links_id_seq OWNED BY public.footer_links.id;
            public       postgres    false    258            �            1259    16895    front_banners    TABLE     �  CREATE TABLE public.front_banners (
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
       public       postgres    false    231    3            �           0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
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
       public       postgres    false    229    3            �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
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
       public       postgres    false    3    210            �           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
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
            public       postgres    false    252                       1259    17270    oimls    TABLE     (  CREATE TABLE public.oimls (
    id bigint NOT NULL,
    category integer NOT NULL,
    reference_no character varying(255) NOT NULL,
    title text NOT NULL,
    link character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.oimls;
       public         postgres    false    3                       1259    17268    oimls_id_seq    SEQUENCE     u   CREATE SEQUENCE public.oimls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.oimls_id_seq;
       public       postgres    false    268    3            �           0    0    oimls_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.oimls_id_seq OWNED BY public.oimls.id;
            public       postgres    false    267            �            1259    16412    password_resets    TABLE     �   CREATE TABLE public.password_resets (
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
       public       postgres    false    201    3            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
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
       public       postgres    false    245    3            �           0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
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
       public       postgres    false    3    243            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
            public       postgres    false    242            
           1259    17261    publication_categories    TABLE     �   CREATE TABLE public.publication_categories (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    category_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.publication_categories;
       public         postgres    false    3            	           1259    17259    publication_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publication_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.publication_categories_id_seq;
       public       postgres    false    266    3            �           0    0    publication_categories_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.publication_categories_id_seq OWNED BY public.publication_categories.id;
            public       postgres    false    265            �            1259    16906    publications    TABLE     �  CREATE TABLE public.publications (
    id bigint NOT NULL,
    cover_image character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    file character varying(255),
    title character varying NOT NULL,
    category_id bigint NOT NULL
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
       public       postgres    false    215    3            �           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
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
       public         postgres    false    3            �           2604    16920    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234    235            �           2604    16928    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237                       2604    16871 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226    227            }           2604    16852    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223            z           2604    16593 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217            �           2604    17229    contact_us_processes id    DEFAULT     �   ALTER TABLE ONLY public.contact_us_processes ALTER COLUMN id SET DEFAULT nextval('public.contact_us_processes_id_seq'::regclass);
 F   ALTER TABLE public.contact_us_processes ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    263    264    264            x           2604    16504    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211    212            {           2604    16824    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            |           2604    16832    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            �           2604    17121    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250    251            �           2604    17110 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248    249            ~           2604    16860    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225            �           2604    17099    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    247    247            �           2604    17213    footer_link_translations id    DEFAULT     �   ALTER TABLE ONLY public.footer_link_translations ALTER COLUMN id SET DEFAULT nextval('public.footer_link_translations_id_seq'::regclass);
 J   ALTER TABLE public.footer_link_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    261    260    261            �           2604    17205    footer_links id    DEFAULT     r   ALTER TABLE ONLY public.footer_links ALTER COLUMN id SET DEFAULT nextval('public.footer_links_id_seq'::regclass);
 >   ALTER TABLE public.footer_links ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    258    259    259            �           2604    16898    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231            �           2604    16882 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229            w           2604    16493    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    210    210            �           2604    16947    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238    239            �           2604    16955    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240    241            t           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �           2604    17164    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    254    255    255            �           2604    17142    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253            �           2604    17273    oimls id    DEFAULT     d   ALTER TABLE ONLY public.oimls ALTER COLUMN id SET DEFAULT nextval('public.oimls_id_seq'::regclass);
 7   ALTER TABLE public.oimls ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    268    267    268            u           2604    16424    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �           2604    17037    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            �           2604    17015    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243            �           2604    17264    publication_categories id    DEFAULT     �   ALTER TABLE ONLY public.publication_categories ALTER COLUMN id SET DEFAULT nextval('public.publication_categories_id_seq'::regclass);
 H   ALTER TABLE public.publication_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    266    265    266            �           2604    16909    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            y           2604    16580 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215            v           2604    16435    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �           2604    17185    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    256    257    257            �          0    16917    about_us 
   TABLE DATA               R   COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    235   �       �          0    16925    about_us_translations 
   TABLE DATA               q   COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM stdin;
    public       postgres    false    237   �       �          0    16868    albums 
   TABLE DATA               �   COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM stdin;
    public       postgres    false    227   �       �          0    16849    article_categories 
   TABLE DATA               x   COPY public.article_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    223   �       �          0    16590    cities 
   TABLE DATA               v   COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    217          �          0    17216 
   contact_us 
   TABLE DATA               �   COPY public.contact_us (id, name, email, message, sender_ip, assign_to, created_at, updated_at, site_id, status_id) FROM stdin;
    public       postgres    false    262   <       �          0    17226    contact_us_processes 
   TABLE DATA               �   COPY public.contact_us_processes (id, message_id, responses, reply_by, reply_at, sent_by, sent_at, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    264   Y       �          0    16501 	   countries 
   TABLE DATA               e   COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    212   v       �          0    16821    duty_categories 
   TABLE DATA               f   COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    219   �       �          0    16829    duty_category_translations 
   TABLE DATA               g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public       postgres    false    221   �       �          0    17118    event_translations 
   TABLE DATA               \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public       postgres    false    251   	       �          0    17107    events 
   TABLE DATA               �   COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    249   4	       �          0    16857    faq_categories 
   TABLE DATA               t   COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    225   Q	       �          0    17096    faqs 
   TABLE DATA               �   COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    247   n	       �          0    17210    footer_link_translations 
   TABLE DATA               N   COPY public.footer_link_translations (id, created_at, updated_at) FROM stdin;
    public       postgres    false    261   �	       �          0    17202    footer_links 
   TABLE DATA               S   COPY public.footer_links (id, site_id, urutan, created_at, updated_at) FROM stdin;
    public       postgres    false    259   �	       �          0    16895    front_banners 
   TABLE DATA               �   COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id) FROM stdin;
    public       postgres    false    231   �	       �          0    16879    images 
   TABLE DATA               Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public       postgres    false    229   �	       �          0    16490    log_activities 
   TABLE DATA               n   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    210   �	       �          0    16944    main_duties 
   TABLE DATA               b   COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    239   �       �          0    16952    main_duty_translations 
   TABLE DATA               z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public       postgres    false    241           �          0    16396 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197           �          0    16441    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    204   `       �          0    16452    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    205   }       �          0    17161    official_translations 
   TABLE DATA               U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public       postgres    false    255   �       �          0    17139 	   officials 
   TABLE DATA               �   COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM stdin;
    public       postgres    false    253   �       �          0    17270    oimls 
   TABLE DATA               `   COPY public.oimls (id, category, reference_no, title, link, created_at, updated_at) FROM stdin;
    public       postgres    false    268   �       �          0    16412    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    199   �       �          0    16421    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    201   �       �          0    17034    post_translations 
   TABLE DATA               V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public       postgres    false    245   �       �          0    17012    posts 
   TABLE DATA               �   COPY public.posts (id, site_id, type, source, file, reporter_id, status_id, created_by, updated_by, created_at, updated_at, category_id, published_at) FROM stdin;
    public       postgres    false    243          �          0    17261    publication_categories 
   TABLE DATA               d   COPY public.publication_categories (id, site_id, category_name, created_at, updated_at) FROM stdin;
    public       postgres    false    266   %       �          0    16906    publications 
   TABLE DATA               �   COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file, title, category_id) FROM stdin;
    public       postgres    false    233   �       �          0    16577    regions 
   TABLE DATA               n   COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    215   P       �          0    16463    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    206   m       �          0    16432    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    203   �       �          0    16483    sites 
   TABLE DATA               F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public       postgres    false    208          �          0    16478    statuses 
   TABLE DATA               K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public       postgres    false    207   n
       �          0    17182    units 
   TABLE DATA               g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    257   �       �          0    16402    users 
   TABLE DATA               �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    198   �       �          0    16558    videos 
   TABLE DATA               �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM stdin;
    public       postgres    false    213          �           0    0    about_us_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.about_us_id_seq', 1, false);
            public       postgres    false    234            �           0    0    about_us_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 1, false);
            public       postgres    false    236            �           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 1, false);
            public       postgres    false    226            �           0    0    article_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.article_categories_id_seq', 10, true);
            public       postgres    false    222            �           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
            public       postgres    false    216            �           0    0    contact_us_processes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.contact_us_processes_id_seq', 1, false);
            public       postgres    false    263            �           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 4, true);
            public       postgres    false    211            �           0    0    duty_categories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.duty_categories_id_seq', 1, false);
            public       postgres    false    218            �           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 1, false);
            public       postgres    false    220                        0    0    event_translations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.event_translations_id_seq', 1, false);
            public       postgres    false    250                       0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
            public       postgres    false    248                       0    0    faq_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, false);
            public       postgres    false    224                       0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
            public       postgres    false    246                       0    0    footer_link_translations_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.footer_link_translations_id_seq', 1, false);
            public       postgres    false    260                       0    0    footer_links_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.footer_links_id_seq', 1, false);
            public       postgres    false    258                       0    0    front_banners_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.front_banners_id_seq', 1, false);
            public       postgres    false    230                       0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 1, false);
            public       postgres    false    228                       0    0    log_activities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.log_activities_id_seq', 246, true);
            public       postgres    false    209            	           0    0    main_duties_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.main_duties_id_seq', 1, false);
            public       postgres    false    238            
           0    0    main_duty_translations_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 1, false);
            public       postgres    false    240                       0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 56, true);
            public       postgres    false    196                       0    0    official_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.official_translations_id_seq', 2, true);
            public       postgres    false    254                       0    0    officials_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.officials_id_seq', 1, true);
            public       postgres    false    252                       0    0    oimls_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.oimls_id_seq', 2, true);
            public       postgres    false    267                       0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
            public       postgres    false    200                       0    0    post_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.post_translations_id_seq', 1, false);
            public       postgres    false    244                       0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 1, false);
            public       postgres    false    242                       0    0    publication_categories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.publication_categories_id_seq', 2, true);
            public       postgres    false    265                       0    0    publications_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.publications_id_seq', 3, true);
            public       postgres    false    232                       0    0    regions_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.regions_id_seq', 1, true);
            public       postgres    false    214                       0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
            public       postgres    false    202                       0    0    units_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.units_id_seq', 1, false);
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
       public         postgres    false    217            �           2606    17223    contact_us contact_us_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.contact_us DROP CONSTRAINT contact_us_pkey;
       public         postgres    false    262            �           2606    17234 .   contact_us_processes contact_us_processes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.contact_us_processes
    ADD CONSTRAINT contact_us_processes_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.contact_us_processes DROP CONSTRAINT contact_us_processes_pkey;
       public         postgres    false    264            �           2606    16506    countries countries_pkey 
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
       public         postgres    false    247            �           2606    17215 6   footer_link_translations footer_link_translations_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.footer_link_translations
    ADD CONSTRAINT footer_link_translations_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.footer_link_translations DROP CONSTRAINT footer_link_translations_pkey;
       public         postgres    false    261            �           2606    17207    footer_links footer_links_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.footer_links
    ADD CONSTRAINT footer_links_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.footer_links DROP CONSTRAINT footer_links_pkey;
       public         postgres    false    259            �           2606    16903     front_banners front_banners_pkey 
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
       public         postgres    false    241            �           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            �           2606    16451 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    204    204    204            �           2606    16462 $   model_has_roles model_has_roles_pkey 
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
       public         postgres    false    253                        2606    17278    oimls oimls_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.oimls
    ADD CONSTRAINT oimls_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.oimls DROP CONSTRAINT oimls_pkey;
       public         postgres    false    268            �           2606    16429    permissions permissions_pkey 
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
       public         postgres    false    243            �           2606    17266 2   publication_categories publication_categories_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_pkey;
       public         postgres    false    266            �           2606    16914    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public         postgres    false    233            �           2606    16582    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public         postgres    false    215            �           2606    16477 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    206    206            �           2606    16440    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    203            �           2606    16487    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public         postgres    false    208            �           2606    16482    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public         postgres    false    207            �           2606    17187    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public         postgres    false    257            �           2606    16411    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    198            �           2606    16409    users users_pkey 
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
       public         postgres    false    241            �           1259    16444 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    204    204            �           1259    16455 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    205    205            �           1259    17177 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public         postgres    false    255            �           1259    16418    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    199            �           1259    17050    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public         postgres    false    245            	           2606    16936 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public       postgres    false    3017    235    237                       2606    16596    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public       postgres    false    217    2994    215                       2606    16840 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public       postgres    false    2998    221    219                       2606    17129 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public       postgres    false    251    3042    249                       2606    16888    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public       postgres    false    227    229    3009            
           2606    16963 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public       postgres    false    241    3024    239                       2606    16445 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    204    2972    201                       2606    16456 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    203    2974    205                       2606    17172 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public       postgres    false    255    253    3051                       2606    17045 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public       postgres    false    243    245    3031                       2606    16583 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public       postgres    false    212    215    2990                       2606    16466 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    2972    206    201                       2606    16471 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    203    2974    206           