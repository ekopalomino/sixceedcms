PGDMP     ;                    x            kemendag     11.8 (Ubuntu 11.8-1.pgdg18.04+1)    11.8    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            $           1262    16384    kemendag    DATABASE     z   CREATE DATABASE kemendag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE kemendag;
             postgres    false            �            1259    16385    about_us    TABLE     �   CREATE TABLE public.about_us (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.about_us;
       public         postgres    false            �            1259    16388    about_us_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.about_us_id_seq;
       public       postgres    false    196            %           0    0    about_us_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.about_us_id_seq OWNED BY public.about_us.id;
            public       postgres    false    197            �            1259    16390    about_us_translations    TABLE     (  CREATE TABLE public.about_us_translations (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    welcome_message character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.about_us_translations;
       public         postgres    false            �            1259    16396    about_us_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_us_translations_id_seq;
       public       postgres    false    198            &           0    0    about_us_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_us_translations_id_seq OWNED BY public.about_us_translations.id;
            public       postgres    false    199            �            1259    16398    albums    TABLE     ~  CREATE TABLE public.albums (
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
       public         postgres    false            �            1259    16404    albums_id_seq    SEQUENCE     v   CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.albums_id_seq;
       public       postgres    false    200            '           0    0    albums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;
            public       postgres    false    201            �            1259    16406    article_categories    TABLE     #  CREATE TABLE public.article_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 &   DROP TABLE public.article_categories;
       public         postgres    false            �            1259    16409    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.article_categories_id_seq;
       public       postgres    false    202            (           0    0    article_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.article_categories_id_seq OWNED BY public.article_categories.id;
            public       postgres    false    203            �            1259    16411    cities    TABLE     6  CREATE TABLE public.cities (
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
       public         postgres    false            �            1259    16414    cities_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public       postgres    false    204            )           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
            public       postgres    false    205            �            1259    16416 
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
       public         postgres    false            �            1259    16422    contact_us_processes    TABLE     y  CREATE TABLE public.contact_us_processes (
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
       public         postgres    false            �            1259    16428    contact_us_processes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_us_processes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.contact_us_processes_id_seq;
       public       postgres    false    207            *           0    0    contact_us_processes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.contact_us_processes_id_seq OWNED BY public.contact_us_processes.id;
            public       postgres    false    208            �            1259    16430 	   countries    TABLE     �   CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.countries;
       public         postgres    false            �            1259    16433    countries_id_seq    SEQUENCE     y   CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public       postgres    false    209            +           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
            public       postgres    false    210            �            1259    16435    duty_categories    TABLE     �   CREATE TABLE public.duty_categories (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 #   DROP TABLE public.duty_categories;
       public         postgres    false            �            1259    16438    duty_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.duty_categories_id_seq;
       public       postgres    false    211            ,           0    0    duty_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.duty_categories_id_seq OWNED BY public.duty_categories.id;
            public       postgres    false    212            �            1259    16440    duty_category_translations    TABLE     �   CREATE TABLE public.duty_category_translations (
    id integer NOT NULL,
    duty_category_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 .   DROP TABLE public.duty_category_translations;
       public         postgres    false            �            1259    16446 !   duty_category_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_category_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.duty_category_translations_id_seq;
       public       postgres    false    213            -           0    0 !   duty_category_translations_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.duty_category_translations_id_seq OWNED BY public.duty_category_translations.id;
            public       postgres    false    214            �            1259    16448    event_translations    TABLE       CREATE TABLE public.event_translations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL
);
 &   DROP TABLE public.event_translations;
       public         postgres    false            �            1259    16454    event_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.event_translations_id_seq;
       public       postgres    false    215            .           0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
            public       postgres    false    216            �            1259    16456    events    TABLE       CREATE TABLE public.events (
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
       public         postgres    false            �            1259    16462    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public       postgres    false    217            /           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
            public       postgres    false    218            �            1259    16464    faq_categories    TABLE     C  CREATE TABLE public.faq_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by character varying(255) NOT NULL,
    updated_by character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 "   DROP TABLE public.faq_categories;
       public         postgres    false            �            1259    16470    faq_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faq_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.faq_categories_id_seq;
       public       postgres    false    219            0           0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
            public       postgres    false    220            �            1259    16472    faqs    TABLE     @  CREATE TABLE public.faqs (
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
       public         postgres    false            �            1259    16478    faqs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.faqs_id_seq;
       public       postgres    false    221            1           0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
            public       postgres    false    222            �            1259    16480    footer_link_translations    TABLE     �   CREATE TABLE public.footer_link_translations (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.footer_link_translations;
       public         postgres    false            �            1259    16483    footer_link_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footer_link_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.footer_link_translations_id_seq;
       public       postgres    false    223            2           0    0    footer_link_translations_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.footer_link_translations_id_seq OWNED BY public.footer_link_translations.id;
            public       postgres    false    224            �            1259    16485    footer_links    TABLE     �   CREATE TABLE public.footer_links (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    urutan integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.footer_links;
       public         postgres    false            �            1259    16488    footer_links_id_seq    SEQUENCE     |   CREATE SEQUENCE public.footer_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.footer_links_id_seq;
       public       postgres    false    225            3           0    0    footer_links_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.footer_links_id_seq OWNED BY public.footer_links.id;
            public       postgres    false    226            �            1259    16490    front_banners    TABLE     �  CREATE TABLE public.front_banners (
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
       public         postgres    false            �            1259    16496    front_banners_id_seq    SEQUENCE     }   CREATE SEQUENCE public.front_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.front_banners_id_seq;
       public       postgres    false    227            4           0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
            public       postgres    false    228            �            1259    16498    images    TABLE       CREATE TABLE public.images (
    id bigint NOT NULL,
    album_id integer NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.images;
       public         postgres    false            �            1259    16504    images_id_seq    SEQUENCE     v   CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public       postgres    false    229            5           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
            public       postgres    false    230            �            1259    16506    log_activities    TABLE     i  CREATE TABLE public.log_activities (
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
       public         postgres    false            �            1259    16512    log_activities_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.log_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.log_activities_id_seq;
       public       postgres    false    231            6           0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
            public       postgres    false    232            �            1259    16514    main_duties    TABLE     �   CREATE TABLE public.main_duties (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.main_duties;
       public         postgres    false            �            1259    16517    main_duties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_duties_id_seq;
       public       postgres    false    233            7           0    0    main_duties_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_duties_id_seq OWNED BY public.main_duties.id;
            public       postgres    false    234            �            1259    16519    main_duty_translations    TABLE     M  CREATE TABLE public.main_duty_translations (
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
       public         postgres    false            �            1259    16525    main_duty_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duty_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_duty_translations_id_seq;
       public       postgres    false    235            8           0    0    main_duty_translations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_duty_translations_id_seq OWNED BY public.main_duty_translations.id;
            public       postgres    false    236            �            1259    16527 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false            �            1259    16530    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    237            9           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    238            �            1259    16532    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public         postgres    false            �            1259    16535    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public         postgres    false            �            1259    16538    official_translations    TABLE     �   CREATE TABLE public.official_translations (
    id bigint NOT NULL,
    official_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 )   DROP TABLE public.official_translations;
       public         postgres    false            �            1259    16544    official_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.official_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.official_translations_id_seq;
       public       postgres    false    241            :           0    0    official_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.official_translations_id_seq OWNED BY public.official_translations.id;
            public       postgres    false    242            �            1259    16546 	   officials    TABLE     �  CREATE TABLE public.officials (
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
       public         postgres    false            �            1259    16552    officials_id_seq    SEQUENCE     y   CREATE SEQUENCE public.officials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.officials_id_seq;
       public       postgres    false    243            ;           0    0    officials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.officials_id_seq OWNED BY public.officials.id;
            public       postgres    false    244            �            1259    16554    oimls    TABLE     (  CREATE TABLE public.oimls (
    id bigint NOT NULL,
    category integer NOT NULL,
    reference_no character varying(255) NOT NULL,
    title text NOT NULL,
    link character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.oimls;
       public         postgres    false            �            1259    16560    oimls_id_seq    SEQUENCE     u   CREATE SEQUENCE public.oimls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.oimls_id_seq;
       public       postgres    false    245            <           0    0    oimls_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.oimls_id_seq OWNED BY public.oimls.id;
            public       postgres    false    246            �            1259    16562    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false            �            1259    16568    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false            �            1259    16574    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    248            =           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    249            �            1259    16576    post_translations    TABLE     �   CREATE TABLE public.post_translations (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    slug character varying(255) NOT NULL
);
 %   DROP TABLE public.post_translations;
       public         postgres    false            �            1259    16582    post_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.post_translations_id_seq;
       public       postgres    false    250            >           0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
            public       postgres    false    251            �            1259    16584    posts    TABLE       CREATE TABLE public.posts (
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
    published_at timestamp without time zone,
    menteri_id integer,
    peraturan_lain_id integer
);
    DROP TABLE public.posts;
       public         postgres    false            �            1259    16590    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public       postgres    false    252            ?           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
            public       postgres    false    253            �            1259    16592    publication_categories    TABLE     �   CREATE TABLE public.publication_categories (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    category_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.publication_categories;
       public         postgres    false            �            1259    16595    publication_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publication_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.publication_categories_id_seq;
       public       postgres    false    254            @           0    0    publication_categories_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.publication_categories_id_seq OWNED BY public.publication_categories.id;
            public       postgres    false    255                        1259    16597    publications    TABLE     �  CREATE TABLE public.publications (
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
       public         postgres    false                       1259    16603    publications_id_seq    SEQUENCE     |   CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.publications_id_seq;
       public       postgres    false    256            A           0    0    publications_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;
            public       postgres    false    257                       1259    16605    regions    TABLE       CREATE TABLE public.regions (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.regions;
       public         postgres    false                       1259    16608    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public       postgres    false    258            B           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
            public       postgres    false    259                       1259    16610    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public         postgres    false                       1259    16613    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false                       1259    16619    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    261            C           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    262                       1259    16621    sites    TABLE     �   CREATE TABLE public.sites (
    id uuid NOT NULL,
    site_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sites;
       public         postgres    false                       1259    16624    statuses    TABLE     �   CREATE TABLE public.statuses (
    id uuid NOT NULL,
    status_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.statuses;
       public         postgres    false            	           1259    16627    units    TABLE       CREATE TABLE public.units (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    unit_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.units;
       public         postgres    false            
           1259    16630    units_id_seq    SEQUENCE     u   CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.units_id_seq;
       public       postgres    false    265            D           0    0    units_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;
            public       postgres    false    266                       1259    16632    users    TABLE     B  CREATE TABLE public.users (
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
    updated_at timestamp(0) without time zone,
    avatar character varying(255)
);
    DROP TABLE public.users;
       public         postgres    false                       1259    16638    videos    TABLE       CREATE TABLE public.videos (
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
       public         postgres    false            �           2604    16644    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            �           2604    16645    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �           2604    16646 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            �           2604    16647    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            �           2604    16648 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204            �           2604    16649    contact_us_processes id    DEFAULT     �   ALTER TABLE ONLY public.contact_us_processes ALTER COLUMN id SET DEFAULT nextval('public.contact_us_processes_id_seq'::regclass);
 F   ALTER TABLE public.contact_us_processes ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207            �           2604    16650    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209            �           2604    16651    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211            �           2604    16652    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    213            �           2604    16653    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    215            �           2604    16654 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    217            �           2604    16655    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219            �           2604    16656    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221            �           2604    16657    footer_link_translations id    DEFAULT     �   ALTER TABLE ONLY public.footer_link_translations ALTER COLUMN id SET DEFAULT nextval('public.footer_link_translations_id_seq'::regclass);
 J   ALTER TABLE public.footer_link_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223            �           2604    16658    footer_links id    DEFAULT     r   ALTER TABLE ONLY public.footer_links ALTER COLUMN id SET DEFAULT nextval('public.footer_links_id_seq'::regclass);
 >   ALTER TABLE public.footer_links ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225            �           2604    16659    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    227            �           2604    16660 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    229            �           2604    16661    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    231            �           2604    16662    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    233            �           2604    16663    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    235            �           2604    16664    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    237            �           2604    16665    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241            �           2604    16666    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    243            �           2604    16667    oimls id    DEFAULT     d   ALTER TABLE ONLY public.oimls ALTER COLUMN id SET DEFAULT nextval('public.oimls_id_seq'::regclass);
 7   ALTER TABLE public.oimls ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    245            �           2604    16668    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248            �           2604    16669    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250            �           2604    16670    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    253    252            �           2604    16671    publication_categories id    DEFAULT     �   ALTER TABLE ONLY public.publication_categories ALTER COLUMN id SET DEFAULT nextval('public.publication_categories_id_seq'::regclass);
 H   ALTER TABLE public.publication_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    255    254            �           2604    16672    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    257    256            �           2604    16673 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    259    258            �           2604    16674    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    262    261            �           2604    16675    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    266    265            �          0    16385    about_us 
   TABLE DATA               R   COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    196   c      �          0    16390    about_us_translations 
   TABLE DATA               q   COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM stdin;
    public       postgres    false    198   "c      �          0    16398    albums 
   TABLE DATA               �   COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM stdin;
    public       postgres    false    200   ?c      �          0    16406    article_categories 
   TABLE DATA               x   COPY public.article_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    202   �c      �          0    16411    cities 
   TABLE DATA               v   COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    204   e      �          0    16416 
   contact_us 
   TABLE DATA               �   COPY public.contact_us (id, name, email, message, sender_ip, assign_to, created_at, updated_at, site_id, status_id) FROM stdin;
    public       postgres    false    206   ,e      �          0    16422    contact_us_processes 
   TABLE DATA               �   COPY public.contact_us_processes (id, message_id, responses, reply_by, reply_at, sent_by, sent_at, status_id, created_at, updated_at) FROM stdin;
    public       postgres    false    207   Ie      �          0    16430 	   countries 
   TABLE DATA               e   COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    209   fe      �          0    16435    duty_categories 
   TABLE DATA               f   COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    211   �e      �          0    16440    duty_category_translations 
   TABLE DATA               g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public       postgres    false    213   �e      �          0    16448    event_translations 
   TABLE DATA               \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public       postgres    false    215   f      �          0    16456    events 
   TABLE DATA               �   COPY public.events (id, site_id, event_type, date_from, date_to, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    217   $f      �          0    16464    faq_categories 
   TABLE DATA               t   COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    219   Af      �          0    16472    faqs 
   TABLE DATA               �   COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    221   ^f      �          0    16480    footer_link_translations 
   TABLE DATA               N   COPY public.footer_link_translations (id, created_at, updated_at) FROM stdin;
    public       postgres    false    223   {f      �          0    16485    footer_links 
   TABLE DATA               S   COPY public.footer_links (id, site_id, urutan, created_at, updated_at) FROM stdin;
    public       postgres    false    225   �f      �          0    16490    front_banners 
   TABLE DATA               �   COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id) FROM stdin;
    public       postgres    false    227   �f      �          0    16498    images 
   TABLE DATA               Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public       postgres    false    229   �f      �          0    16506    log_activities 
   TABLE DATA               n   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    231   #g      �          0    16514    main_duties 
   TABLE DATA               b   COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public       postgres    false    233   ~      �          0    16519    main_duty_translations 
   TABLE DATA               z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public       postgres    false    235   <~      �          0    16527 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    237   Y~                0    16532    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    239   ��                0    16535    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    240   ��                0    16538    official_translations 
   TABLE DATA               U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public       postgres    false    241   �                0    16546 	   officials 
   TABLE DATA               �   COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM stdin;
    public       postgres    false    243   *�                0    16554    oimls 
   TABLE DATA               `   COPY public.oimls (id, category, reference_no, title, link, created_at, updated_at) FROM stdin;
    public       postgres    false    245   G�      	          0    16562    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    247   /�      
          0    16568    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    248   L�                0    16576    post_translations 
   TABLE DATA               V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public       postgres    false    250   >�                0    16584    posts 
   TABLE DATA               �   COPY public.posts (id, site_id, type, source, file, reporter_id, status_id, created_by, updated_by, created_at, updated_at, category_id, published_at, menteri_id, peraturan_lain_id) FROM stdin;
    public       postgres    false    252   [�                0    16592    publication_categories 
   TABLE DATA               d   COPY public.publication_categories (id, site_id, category_name, created_at, updated_at) FROM stdin;
    public       postgres    false    254   x�                0    16597    publications 
   TABLE DATA               �   COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file, title, category_id) FROM stdin;
    public       postgres    false    256   �                0    16605    regions 
   TABLE DATA               n   COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    258   ��                0    16610    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    260   ��                0    16613    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    261   �                0    16621    sites 
   TABLE DATA               F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public       postgres    false    263   d�                0    16624    statuses 
   TABLE DATA               K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public       postgres    false    264   ��                0    16627    units 
   TABLE DATA               g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       postgres    false    265   ͉                0    16632    users 
   TABLE DATA               �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at, avatar) FROM stdin;
    public       postgres    false    267   �                0    16638    videos 
   TABLE DATA               �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM stdin;
    public       postgres    false    268   ʏ      E           0    0    about_us_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.about_us_id_seq', 1, false);
            public       postgres    false    197            F           0    0    about_us_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 1, false);
            public       postgres    false    199            G           0    0    albums_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.albums_id_seq', 1, true);
            public       postgres    false    201            H           0    0    article_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.article_categories_id_seq', 10, true);
            public       postgres    false    203            I           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
            public       postgres    false    205            J           0    0    contact_us_processes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.contact_us_processes_id_seq', 1, false);
            public       postgres    false    208            K           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 4, true);
            public       postgres    false    210            L           0    0    duty_categories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.duty_categories_id_seq', 1, false);
            public       postgres    false    212            M           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 1, false);
            public       postgres    false    214            N           0    0    event_translations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.event_translations_id_seq', 1, false);
            public       postgres    false    216            O           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
            public       postgres    false    218            P           0    0    faq_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, false);
            public       postgres    false    220            Q           0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
            public       postgres    false    222            R           0    0    footer_link_translations_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.footer_link_translations_id_seq', 1, false);
            public       postgres    false    224            S           0    0    footer_links_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.footer_links_id_seq', 1, false);
            public       postgres    false    226            T           0    0    front_banners_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.front_banners_id_seq', 1, false);
            public       postgres    false    228            U           0    0    images_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.images_id_seq', 1, true);
            public       postgres    false    230            V           0    0    log_activities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.log_activities_id_seq', 253, true);
            public       postgres    false    232            W           0    0    main_duties_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.main_duties_id_seq', 1, false);
            public       postgres    false    234            X           0    0    main_duty_translations_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 1, false);
            public       postgres    false    236            Y           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 56, true);
            public       postgres    false    238            Z           0    0    official_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.official_translations_id_seq', 2, true);
            public       postgres    false    242            [           0    0    officials_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.officials_id_seq', 1, true);
            public       postgres    false    244            \           0    0    oimls_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.oimls_id_seq', 2, true);
            public       postgres    false    246            ]           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
            public       postgres    false    249            ^           0    0    post_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.post_translations_id_seq', 1, false);
            public       postgres    false    251            _           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 1, false);
            public       postgres    false    253            `           0    0    publication_categories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.publication_categories_id_seq', 2, true);
            public       postgres    false    255            a           0    0    publications_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.publications_id_seq', 3, true);
            public       postgres    false    257            b           0    0    regions_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.regions_id_seq', 1, true);
            public       postgres    false    259            c           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
            public       postgres    false    262            d           0    0    units_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.units_id_seq', 1, false);
            public       postgres    false    266            �           2606    16678    about_us about_us_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.about_us
    ADD CONSTRAINT about_us_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.about_us DROP CONSTRAINT about_us_pkey;
       public         postgres    false    196            �           2606    16680 E   about_us_translations about_us_translations_about_us_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_locale_unique UNIQUE (about_us_id, locale);
 o   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_locale_unique;
       public         postgres    false    198    198            �           2606    16682 0   about_us_translations about_us_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_pkey;
       public         postgres    false    198            �           2606    16684    albums albums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.albums DROP CONSTRAINT albums_pkey;
       public         postgres    false    200            �           2606    16686 *   article_categories article_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.article_categories DROP CONSTRAINT article_categories_pkey;
       public         postgres    false    202            �           2606    16688    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public         postgres    false    204            �           2606    16690    contact_us contact_us_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.contact_us DROP CONSTRAINT contact_us_pkey;
       public         postgres    false    206            �           2606    16692 .   contact_us_processes contact_us_processes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.contact_us_processes
    ADD CONSTRAINT contact_us_processes_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.contact_us_processes DROP CONSTRAINT contact_us_processes_pkey;
       public         postgres    false    207            �           2606    16694    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         postgres    false    209            �           2606    16696 $   duty_categories duty_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.duty_categories
    ADD CONSTRAINT duty_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.duty_categories DROP CONSTRAINT duty_categories_pkey;
       public         postgres    false    211            �           2606    16698 T   duty_category_translations duty_category_translations_duty_category_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_locale_unique UNIQUE (duty_category_id, locale);
 ~   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_locale_unique;
       public         postgres    false    213    213            �           2606    16700 :   duty_category_translations duty_category_translations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_pkey;
       public         postgres    false    213            �           2606    16702 <   event_translations event_translations_event_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_locale_unique UNIQUE (event_id, locale);
 f   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_locale_unique;
       public         postgres    false    215    215                       2606    16704 *   event_translations event_translations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_pkey;
       public         postgres    false    215                       2606    16706 1   event_translations event_translations_slug_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_slug_unique UNIQUE (slug);
 [   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_slug_unique;
       public         postgres    false    215                       2606    16708    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public         postgres    false    217                       2606    16710 "   faq_categories faq_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.faq_categories DROP CONSTRAINT faq_categories_pkey;
       public         postgres    false    219            	           2606    16712    faqs faqs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.faqs DROP CONSTRAINT faqs_pkey;
       public         postgres    false    221                       2606    16714 6   footer_link_translations footer_link_translations_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.footer_link_translations
    ADD CONSTRAINT footer_link_translations_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.footer_link_translations DROP CONSTRAINT footer_link_translations_pkey;
       public         postgres    false    223                       2606    16716    footer_links footer_links_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.footer_links
    ADD CONSTRAINT footer_links_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.footer_links DROP CONSTRAINT footer_links_pkey;
       public         postgres    false    225                       2606    16718     front_banners front_banners_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.front_banners
    ADD CONSTRAINT front_banners_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.front_banners DROP CONSTRAINT front_banners_pkey;
       public         postgres    false    227                       2606    16720    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public         postgres    false    229                       2606    16722 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public         postgres    false    231                       2606    16724    main_duties main_duties_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_duties
    ADD CONSTRAINT main_duties_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_duties DROP CONSTRAINT main_duties_pkey;
       public         postgres    false    233                       2606    16726 H   main_duty_translations main_duty_translations_main_duty_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_locale_unique UNIQUE (main_duty_id, locale);
 r   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_locale_unique;
       public         postgres    false    235    235                       2606    16728 2   main_duty_translations main_duty_translations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_pkey;
       public         postgres    false    235                       2606    16730    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    237                       2606    16732 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    239    239    239            "           2606    16734 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public         postgres    false    240    240    240            %           2606    16736 E   official_translations official_translations_official_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_locale_unique UNIQUE (official_id, locale);
 o   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_locale_unique;
       public         postgres    false    241    241            '           2606    16738 0   official_translations official_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_pkey;
       public         postgres    false    241            )           2606    16740 7   official_translations official_translations_slug_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_slug_unique UNIQUE (slug);
 a   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_slug_unique;
       public         postgres    false    241            +           2606    16742    officials officials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.officials
    ADD CONSTRAINT officials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.officials DROP CONSTRAINT officials_pkey;
       public         postgres    false    243            -           2606    16744    oimls oimls_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.oimls
    ADD CONSTRAINT oimls_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.oimls DROP CONSTRAINT oimls_pkey;
       public         postgres    false    245            0           2606    16746    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    248            3           2606    16748 (   post_translations post_translations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_pkey;
       public         postgres    false    250            5           2606    16750 9   post_translations post_translations_post_id_locale_unique 
   CONSTRAINT        ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_locale_unique UNIQUE (post_id, locale);
 c   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_locale_unique;
       public         postgres    false    250    250            7           2606    16752 /   post_translations post_translations_slug_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_slug_unique UNIQUE (slug);
 Y   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_slug_unique;
       public         postgres    false    250            9           2606    16754    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public         postgres    false    252            ;           2606    16756 2   publication_categories publication_categories_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_pkey;
       public         postgres    false    254            =           2606    16758    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public         postgres    false    256            ?           2606    16760    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public         postgres    false    258            A           2606    16762 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    260    260            C           2606    16764    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    261            E           2606    16766    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public         postgres    false    263            G           2606    16768    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public         postgres    false    264            I           2606    16770    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public         postgres    false    265            K           2606    16772    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    267            M           2606    16774    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    267            O           2606    16776    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public         postgres    false    268            �           1259    16777 "   about_us_translations_locale_index    INDEX     f   CREATE INDEX about_us_translations_locale_index ON public.about_us_translations USING btree (locale);
 6   DROP INDEX public.about_us_translations_locale_index;
       public         postgres    false    198            �           1259    16778 '   duty_category_translations_locale_index    INDEX     p   CREATE INDEX duty_category_translations_locale_index ON public.duty_category_translations USING btree (locale);
 ;   DROP INDEX public.duty_category_translations_locale_index;
       public         postgres    false    213            �           1259    16779    event_translations_locale_index    INDEX     `   CREATE INDEX event_translations_locale_index ON public.event_translations USING btree (locale);
 3   DROP INDEX public.event_translations_locale_index;
       public         postgres    false    215                       1259    16780 #   main_duty_translations_locale_index    INDEX     h   CREATE INDEX main_duty_translations_locale_index ON public.main_duty_translations USING btree (locale);
 7   DROP INDEX public.main_duty_translations_locale_index;
       public         postgres    false    235                       1259    16781 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    239    239                        1259    16782 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    240    240            #           1259    16783 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public         postgres    false    241            .           1259    16784    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    247            1           1259    16785    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public         postgres    false    250            P           2606    16786 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public       postgres    false    196    3044    198            Q           2606    16791    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public       postgres    false    204    258    3135            R           2606    16796 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public       postgres    false    213    3063    211            S           2606    16801 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public       postgres    false    217    3077    215            T           2606    16806    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public       postgres    false    3051    200    229            U           2606    16811 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public       postgres    false    235    3093    233            V           2606    16816 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    239    3120    248            W           2606    16821 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    261    240    3139            X           2606    16826 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public       postgres    false    241    3115    243            Y           2606    16831 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public       postgres    false    250    3129    252            Z           2606    16836 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public       postgres    false    209    3061    258            [           2606    16841 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    260    248    3120            \           2606    16846 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    3139    261    260            �      x������ � �      �      x������ � �      �   �   x�mα1@�:��|r'�oD:	�� �GPS��U?��=]���~{8�����zv#2ޠ́g�&�k!��6 �T)AOZ�d#sA�Z�W�eP�+��@�H�9t�����{�'&�      �   0  x����N� �5}�� �K���FG�q5hE#1�.|{IM�$Â�+�������zX�����F2jl����$�x��� � �Z�iMh�yG�l&I��8$�9Cf� �f��j-����(_��~��z�٬�A�����ػ-F�Y��C�g�C�F�ݤ6Qd6+�pp�������K��[��fEzTj%-��_68׿Wѡ�-Y���{��,f��˂���~���fE������1����>ҒA��Q9��z�l�n
#�K-��Y�dGҝQ6+����%�Q�      �      x������ � �      �      x������ � �      �      x������ � �      �   W   x�3���K��K-�L�43�LJLK2�56I3�5147ӵ440�M1NIN3�4IM�H���4202�50�54S04�25�2��&����� ��D      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   A   x�3�4�ttKr��H�O�I*͍��MLO�+�KJ�X�Z(XZZZ`����� W�      �      x���r۸��?O�ʧ���M��ujk˹;N29�=3�K� ��I�������:�1/�J2/jۢL�T��˂�h4�h��Q�,��lУ�4���2��YL�ā\���r9���4�r�����u0����P���޽8\���λ_>�vw��u���
'yh���h0���oO)��� ��g��-~�G��$�-蝄�C�tL��p������$�E��~�O���48tMh^0�<`̦�P���m����{`��my=9�Y]S��`������s�rO}Wv�����t����-���^@��9(�ӈ��l>�*I�p�ua��&�4":g� ��xF{A|.�¤'�w���{/a��s�����F���`$cI�8�t.�]�N�bĀS�gI��C�z�훎�-L#vk��xZ��|��-�i�iy����ӈ��܇��6���O��3:���`F���A<��xI_˩��C�ʹ\ҧaO~��ƫ�~j<��At8�<�¥�~Q�P���H٦�����i��5��I8�ш^̒�ξF�/�8�.��L��B$�"��d����ՠ�Fo��` %�Z6�]1��]���]ː=wؓ&(�<.�G��o�8��<Y��y�I�=�7<L#�l�ǽ<�`a�Gv��hd=�0M�	#;���r;(
om�:��1����w�L,B�D�C���4�s6���Wr,�eK�J�Vy��j��7P��G��p��nٕ�a^k�(�צ3�p�.�Q��Q�F8��x�%�a���ɧ��c��Y��1B�db�<��J~z`��<�=f�k��M-��J#����Q8x䳟�:��'����G+�"�|��2�;W[w�z��.?�g���{6��?Bl �,�-�7|���Y�Vs]�̇A�� 8�����2�Ew ��0�F�P�������4­�m]q��[�7!t)7`���wB(�oz�F��"�aq�1����.!��GY�F��oF�|���p���wB��0��E�GL�P��
x�t�c�FL�e�;Cӈ��'-C�a~9ӈ�(-�m�^!72ӈ�G(-C�a~�.ӈن(�!�����T#&��h�,�oxqӈ��(-C���04-"� �e��P 2L#��RvDh�b��FD�Q��C��S��ƣ�n�e��x��C���ֈ�E)��
�yJ�I[T��5 ����+�~k����� A0���j��uI��4"ܻ�� O��MukP����郙F�ƣ[�\`��h�e�14���� �U��n�; �K��&*�0�!#s�n�+W�j5^��2�T#����`x��-�Z����s��j�t�iV �+=?�=�&��X�zq�|QvK�F,g��ᠮ��@j��MV��^k�rod��w/��,Lpf�������� N)ݦf@/m�;�mwܫE
O8���S/[��;�(c>�6�۸�]�S�twnz�S5|��4b��ލ����ZN#6o��@���Fl���gg�\[L#������[kl��g�4b[����.��4b�W��Xt�@n=m����f�Y<+���n�g珽�4b�9x������4b{-���y>�Ǹ_>W~�,��F���� Z�hDO�tύ�5�媡�:����v��t��KK�X�Fޒ�DRd�T�8f�*��D����6
QUq1�8���+D��*h���l~��ϭ,}����lm5��
��;Ef�/��ߤ!�+��i,Am����a̼L�-h����L��t���4�+_O���=~��5�-fX��*M&S4,�/�x�8Zm�4 ���ӈ{ՎIa�=8�f�9�9�F#n�;&��s�3`qy�y8	�ۍs���I����C/�8�{������u���������q����r����%y.���b>�����&��8�i���W���D�$ʹ�+���HYk���������0��z=�k��<���ɮ:+hĵ��۫�2$p�ɡ�<�&0��Ngc�`��YOY�^&����rjj��<L#����e���ng���Q
�N�|�0����'�;�P�
^)ӈg�=UW#�ӈ����?���}���>�o�Dƣ�$���h ��<�����go���H��<>�>yytJg��I�/���m_�T�T�Sت��iĻ���ً����ч���蛣��/��#�����G����Y#�,����`Ȼ�[Y]0�+=��:�iنg������F������i�3�{
�]��}=��Rv�O�:��'�,��ӈg�;1�gFvV�����|�ND��G�P�a+T#�s�A�FT-ӈ���R7J+MZ�ݏQЈ�]��3Oz�pq�4�u#:�Z�yea��}��T秎^y�=�1�߭�qpc�wwҿI��2�����z��;���8Aaa4;'�(�ixTS?��ӥ#�頧.1�4 (2�0硧r2n��r��@�s������0�ˤ�vUZ*h�a�`W��R�3
y��i�Ѿ��.�����e3$�B�O�I���9�d��MӀ��\>˞\ңQ�n�}//$}ϒ�^@׃�|ծV$U��i@�ۙ䮝�R��ܬ�HpA#�-�j,���kA�l��=<�V��>@�J7Da�2Ӏ2ߦ�l-��uJ�JRϾH��i���"q����P�Q$��%��m��峭@i�������Z�7��[F�4 k##�2N���/�HF�B�xoϘ�4��%���_�B�e#^�^y}w^��a��fy�A��Ip��+z�Z=��v��B�Y�ƍ�)�i�2�oO�.��l����[gk���T�+�i��F=L�H �.�F�4�ҧ�x"������n�2�T�buL9���r���8�G1J��T\-��K_��Rq�1kE���<��Y�B�d�<�Fh����Z�(��4�欠���I8�~*^_fVa�;Ӏٺ��y'-�K8va1� ����W�Й���)�F�i�x�i�/38Niq`�0������rp,� _[�)��-�K<n)��h�̼���2�?1��h,e��{ŉ�H.����a�t�0����z2�sC�[	n� n��e��I/��U�'��pxi8[�rD�*��`�U� Zk�G�i��Dh���9�-:��,�B�*�J�	�_�F 2��D����Ur ����Y"�2D�O�0�0a�v�B�_�i��u^�iO�t�����Y�I*��©��z��_Љ���9x9��*to���/h��fi�_�4�k6=�~�)�
��B�Ҭr��6�����Z�i ���e���Y�.n���4@h�6�@�ϖ�i ��x�W����1i��t�r_�^˄��k>~���{K�:]�خP��5;~~��tk\fyqm�f���@�ݫ\� �e�2靽'㶇�Aw˽+�^�A�����o��nu�Vy�j@�lv����?׸�|R@N�mt@5�,\]�� ��������/�^�.�t���N���t��5�]�����OY^�}fc t;�#���OA�"�@�QԴKQ�F�^'����G���^^+T{���aa��b��/c�L��-��lMӀ-��<\�q�TD@��=]���4������b�GA�J�k�����d\#��e�B�\�Շ�#�?�Y�"�h��B��h�}�䱮Y��-���d��f��L�ۇ����X⊕@��?������A,��P ^s��6��I^2�F�c���r���"��^N���2!��m�}�\��xY�q���jI�NA��s�·U�ͭ?��'>�a@�F�bF��7^�{�������q0�I��"����D.C�ȠŞ��S��پ�`<�|Y�i/Q'^�_���8
�U'�4��T9�#u.F� 6�<O"��i}�e�N�TKN�fM�k�k�޼��ߓ�4 /r�7�ՠ��g��HK���
�hճ9z��i��5�@K�
VH��4��p�A"�%��GM5@�Tl;SF9ꮾ�{��ݻ��t�5|-�?�Ӏoݝ�ѷ��,� �  |=0�e���+xڕ�|�P��8��>-�Lf5|OUE�[���6�� >� �����+܁��^�v�0�=Ӱ��ǖ�ȅ�L�^e�q����-K���?j��s��̲b ] ��3���ɍBri�LvW0�����i �v����9�	��FK�J_���z���]��3e�E*���d�,ַM�h��"�o��X{~޾3X#E�3���>[����OU3�"U�3��eE��son��A�\�2�v�/r��yBPC� ��˭52����)��S�ڽ5ҽ�����r�i@׫p�@�h�c�)���[���K�BS����p�!�][�N����_Հ/�ݴ['����j
12��C�Z���`�N�����bdVy��U����}�M�./?��6jCB�:����YC|�_$p�6*���F1�@Fd�G�9(����U�\�@E�����Va��Vy�3Հ��9�W�9'rz�D�媙��9��p� �`4}ckB�4�#�QƏ���v����������&�Ц4@�2����4�HP�Y��sT������#5U���1�"���7�6Ė1L�H�����X��"��7�6���4����36�W �+��";nm2�|=L���[�Lr;֖�i�ًk�I*���k�ΰݸF��%��!���2�N��wG��L���J� /����<�c{~�qkf�4`�Dkw�=��؞_�t1#1�ns=VdS���O�7v�f[���\���Nd�jF"�{�>�z�K��"�4��i�t�ns=��W,�A��A	��u������H�����BX�v� �Z#�����Z����֤Wi��מ�z2lmn ��9i��w�G���kuk�Qi �ͶʹNϯ��P�IC����(����T�u���0mN�$ӷ��1�L�V�,
�ğ%�d�����&�bw�Z��>��5��$w;����2>�|>b�R$�j��ݚ���E�6!�XQ΢I5 �ESmBBe��U�n"AU��P��U��R��g�ڄ�j|��$�T�H��&$ܒuy&Հ����ڄ��ಭ	�� C��;���(��(��{��эՔ��,'0�G	滮�Y���t�,T�;u���i@پ�r�cNzr����CN����a+�va�&Ӏ��'�۬�e��YwL��Va�1� 4�m�oi�=/��Հ����#q33|C�Ce���dtoQ���=�l�]��1� ��U<FV�����`9�E�L����񹅅�L|f��&|�0���/�o^�;O�e8��~:�d"�:����#:	F������Wx��^8	�Q�=����}�T��!�u�T�D�C�"m�:��_kW�����
��t����'�EW�'��ky䇳p�ѴBU2v|��4x�>O|_'�z�Z���0�,?�T�gn����^�=�bi�L�'�t�AL�a���r�A��\._g�`�� ��H�w$݅������e��,����4`�X����ĴBQ}��HFKm�@����J�J�E�;J��㥙F�eQ���Ҷ�����)�NW0��z��݁9��'��+���w�Hv������p5ۣ������ #_��~����?^����#��wo����l�U_O�2�����~��A�f��e�?/��<1�0��f�F�a7[����'���; �ĬOv��*��(Li�SH��4�_���gA(1      �      x������ � �      �      x������ � �      �   3  x�m�ɒ�0@���R/b��T�d,�T���pj�>�$ha���=��~�B1��Q_�g�3���{�� V�Ӯ�y��ŭ.d��Bʨ�DQ��M�[~]�<��׈K�7���5��ُ&�������@��?���!�o�wp�����|��hˣ�!�a�6�%�Pe��i���N����;�R���.�S�� W��NA���@�F�Ѳ��-|�!���"jT@�Aj����i�b�u����I�)����.��;�76QWyL�)�7���!��v)=Ў��XVG����JK�U:E)�e����i*F@��R�,�s��~����6�-u���l�`9Н���IE���A����'�w�a��.k���9
y�v����K7Ʃ1]��״H��#Jzv�] Y���U�(�$]��ҙt/7�`�9��{M���u1�9y���oǄHw�E���M���N����&�Ӏ�%�}n��<���O��т��!xb��mN6r�-�>/�)�U����ˁרN��2n-v{4sI��])Q�ɘ}�ԁnJ7��P.��2��� �� *�            x������ � �         D  x�}�;n1Ek�^h��G�"R�E
0 ��x��[�x��?z��������u������c�P`����6Hε�K�1/z��״�i[@8'MG��?�m�nj�@R��5(%h}�mT:�Q� #��Sp�?��$z�g��y@k��8pg=��\��q*�A*�E �it�i��	e�=,�@VK���1�ju^�z��E�
8�3�����:����� �8��w!����f��iO�kaw�NGl��A� ��:eT<�ú6���Y{��Rh��BdE�pw�/߰f�	*�M������߯����ם            x������ � �            x������ � �         �   x�m��j�0���S�1>Ȓ�J�)ګO���+yA�����J��/���!��°3��U��AҦ�
�`
�`<��d�o��N����p���
�������H���p��0�F��S����(!#�K�?h�aZo�XB�덋�`�	맡,7�6�X�9�\���4�6&'�7��,σ��������T��zzz��S�^���u�a`�      	      x������ � �      
   �   x����
�0E��+����V�J� ��K()4��^��\���=�=�2�����?����m��L��Le�e���Z,�����	0���� )��x�/B'o�V9��,B/LT��J��.C��UX��h&����$J�1���2�*��J�d�~�"��G2%%��L2����K-��.U��e؅Ly/u?��q7�3�A�L4!�c�	+�.�            x������ � �            x������ � �         `   x�m���  �3L�5�V@6��^��/u�����H��c�����V��V��!sVc:SI�ꓪ�{_��EH��������Fk��oD         �   x����
�0@��+����k�R��v)ł�1Q������n-����ؾwEU��c�َI�6:Aw�������0��w��S�Ђ$!1G�+�露Fe��i����{J!��H��F�k�8��I����ǹ���<&B�K3|&����)����~���¦�Ӭ\�N8�_YV�            x������ � �         ?   x�̹ !���1{��ׁD��LCe�n{��~�ƕCNRҒ��$'=p������h&v         E   x�3�tL����,.)J,�/�,OM�4202�50�54Q04�25�22�&�e�Y�Z�M����	61�=... `pW         )  x���Ko�0�������A~�_݁ʢU�
b�fl��Bo�*���iRAT�HY�^�;>�x���e��*��P�ճ�*;o�>|��+w�W�`�Q�"(�i}��B����+Նj������I�n��2�.����i����c���-ϕN4��]ҙ��O<�����<K	G��O����4
��?�7�_���QA,`4��,�ZM��k3/����O��"�ƕ瑖~�[�F*�� *�@�#4v-�P2����s?��}=��6��UY|�y�swӋ��:rq6�V��� ���7�ڱgߤ`���C������a�(^납�1V�9H���˟��5ZrҿwT�,�{\�ӷ��(vc�K���(7@)"��xLNUl�1����A=��I���bv����Ō��$*T���_����w��� %�Z�i��%���� Eb�&�������t2!�����,w���#:09�A�h���L��ȇ�m����n2�2(�Sw���t�N�+l�.%]
C!��nQf�e!'N6ւٴ�uw��-����x<� 4�o�            x���MJA��ݧ�D*�T��w�@Х��*�����x~[W�&�����M9�P܎
��üզ�8ݷ���
�w��X�ײY%��B��Xb�Ԍ�as��.�O���o�FkU���ܥA�=��s
J�=���������S���T���
4dS�bP�D��I�@ҧǋ���_����ja9�6 rö-�][�^���A��?��Baa���BƎ4�&ۺCn��6�N��������cL�j��=�n@F�5��+M�~|[����֗�y���슊            x������ � �         �  x��V�N#K}6_�C�f����)���F-�r����~�L��.%�Q#We�B��8'O�Î�H,R�3Ľ�)F�Ƒ����<V����+o�_-*?[�o���������J�N7lпI��n<�U����u2![�m�fg�t��`9-��`�ց#��B�����8%��Z��|a^%W�TV��£���z�	�PL1�asIY�Ȫॶ��Ǆ�\pD�Kp���8�(%��A3+*!.V��pZW=���Q7�������.{m�+695���f���2}�����Nrֵ�� ��DD$lq�Pc(��x�"گ!WUFKm����=VaE(����EDX�E�ct��6n�C)�٠s��	/|�y쾼�-ړ�}�_;�ӗpv|��<��n:�W��l3��tV��Qxɒ@B;l����`ȹ�*r�Jm�\K%��Y	�OY�
�`3Iek�y��)E��=�ew<4�*ު|6;����g��u�w���֎c>�ꓼKE}8)�C䣦L!�D>P�tIi�3������*�6@��X�\��^�"0��r�Ò��t5^^�U<OJ��n�	׭�L�/���/��x�^��p�~W�n�a1콏^[WsJv��/�+.��V"�,�� ��AF�`|��~օ_�rIxKx*��Ï�VTX���m!*t�tH��!'�"�C	(AwD�
m&ѯ>�ҘhK��n6}����osuߝβ��M��\3�po��}��U_.�v|y<�p-|`
25шG̑��#�I�IL����D	�/%��J�T@,�B�%E��(5�H�p
@�����I)�~m0�;r��c��b}�`ϱ�VO�|�o�YO6-���g�Yy�=��Nc�T�HNɧY͈�������*�[8� }�FD�-�\�
���a�#���D+"���Ǔ�d�����f����w�֩s�u�y>���{?_�����#���~��ັ<�g��Ր&�K�A=�\"2�R�h�]T�k�E��M�6�o��:�� 1�d�?�2B����q���C)�U�su�^X��V���<D�ܝ��?���l���8��kwz�v�zΨ���y�5��Y`P����b���Jm�;�A��BA&�B, �3H�!*$9�+����~���m��?u���n��M������S��n�v|Z��AMǇn^�O������(�9��@q��A�s����:�?꠹$�*t��
�UF��%�#U�
�+���C�o{�;�!�(N�&[/G��䠉D�:����z�@�H�&�P�C'q��+�������^k{E���C�0�ز����+�?�]���޺�M�n��ǐ��I���{�r[Q1�>-9r\�#Q�)d*�2�.��U񖢒��MsE�'���X���]��ev����a��������]�ڳ������nX�g��}��JA�Y�#&���N�)J��m�(D�%�UF�Ѓ�m�����Q�f����gvqq�M�L�            x������ � �     