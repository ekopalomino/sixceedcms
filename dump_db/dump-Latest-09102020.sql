PGDMP         	        	    	    x            kemendag    11.8    12.2 6   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    kemendag    DATABASE     �   CREATE DATABASE kemendag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE kemendag;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    16917    about_us    TABLE     �   CREATE TABLE public.about_us (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.about_us;
       public            postgres    false    3            �            1259    16915    about_us_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.about_us_id_seq;
       public          postgres    false    233    3            �           0    0    about_us_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.about_us_id_seq OWNED BY public.about_us.id;
          public          postgres    false    232            �            1259    16925    about_us_translations    TABLE     (  CREATE TABLE public.about_us_translations (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    welcome_message character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.about_us_translations;
       public            postgres    false    3            �            1259    16923    about_us_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_us_translations_id_seq;
       public          postgres    false    3    235            �           0    0    about_us_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_us_translations_id_seq OWNED BY public.about_us_translations.id;
          public          postgres    false    234            �            1259    16868    albums    TABLE     ~  CREATE TABLE public.albums (
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
       public            postgres    false    3            �            1259    16866    albums_id_seq    SEQUENCE     v   CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.albums_id_seq;
       public          postgres    false    225    3            �           0    0    albums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;
          public          postgres    false    224            
           1259    17471    article_categories    TABLE     #  CREATE TABLE public.article_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.article_categories;
       public            postgres    false    3            	           1259    17469    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.article_categories_id_seq;
       public          postgres    false    266    3            �           0    0    article_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.article_categories_id_seq OWNED BY public.article_categories.id;
          public          postgres    false    265            �            1259    16590    cities    TABLE     6  CREATE TABLE public.cities (
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
       public            postgres    false    3            �            1259    16588    cities_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public          postgres    false    217    3                        0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public          postgres    false    216                        1259    17216 
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
       public            postgres    false    3                       1259    17226    contact_us_processes    TABLE     y  CREATE TABLE public.contact_us_processes (
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
       public            postgres    false    3                       1259    17224    contact_us_processes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_us_processes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.contact_us_processes_id_seq;
       public          postgres    false    258    3                       0    0    contact_us_processes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.contact_us_processes_id_seq OWNED BY public.contact_us_processes.id;
          public          postgres    false    257            �            1259    16501 	   countries    TABLE     �   CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.countries;
       public            postgres    false    3            �            1259    16499    countries_id_seq    SEQUENCE     y   CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          postgres    false    212    3                       0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          postgres    false    211                       1259    17552    daglu_agreements    TABLE     H  CREATE TABLE public.daglu_agreements (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    progress character varying(255) NOT NULL,
    status_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.daglu_agreements;
       public            postgres    false    3                       1259    17550    daglu_agreements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.daglu_agreements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.daglu_agreements_id_seq;
       public          postgres    false    272    3                       0    0    daglu_agreements_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.daglu_agreements_id_seq OWNED BY public.daglu_agreements.id;
          public          postgres    false    271            �            1259    16821    duty_categories    TABLE     �   CREATE TABLE public.duty_categories (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 #   DROP TABLE public.duty_categories;
       public            postgres    false    3            �            1259    16819    duty_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.duty_categories_id_seq;
       public          postgres    false    3    219                       0    0    duty_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.duty_categories_id_seq OWNED BY public.duty_categories.id;
          public          postgres    false    218            �            1259    16829    duty_category_translations    TABLE     �   CREATE TABLE public.duty_category_translations (
    id integer NOT NULL,
    duty_category_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 .   DROP TABLE public.duty_category_translations;
       public            postgres    false    3            �            1259    16827 !   duty_category_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_category_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.duty_category_translations_id_seq;
       public          postgres    false    221    3                       0    0 !   duty_category_translations_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.duty_category_translations_id_seq OWNED BY public.duty_category_translations.id;
          public          postgres    false    220                       1259    17454    event_documentations    TABLE     m  CREATE TABLE public.event_documentations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    file_title character varying(255),
    file character varying(255),
    video_id character varying(255),
    video_title character varying(255),
    thumbnail character varying(255),
    thumbnail_small character varying(255),
    player character varying(255)
);
 (   DROP TABLE public.event_documentations;
       public            postgres    false    3                       1259    17452    event_documentations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_documentations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.event_documentations_id_seq;
       public          postgres    false    264    3                       0    0    event_documentations_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.event_documentations_id_seq OWNED BY public.event_documentations.id;
          public          postgres    false    263            �            1259    17118    event_translations    TABLE       CREATE TABLE public.event_translations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL
);
 &   DROP TABLE public.event_translations;
       public            postgres    false    3            �            1259    17116    event_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.event_translations_id_seq;
       public          postgres    false    3    245                       0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
          public          postgres    false    244            �            1259    17107    events    TABLE       CREATE TABLE public.events (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    event_type integer NOT NULL,
    country_id integer NOT NULL,
    location character varying(255),
    brocure character varying(255),
    link character varying(255),
    status_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    date_from timestamp without time zone NOT NULL,
    date_to timestamp without time zone NOT NULL
);
    DROP TABLE public.events;
       public            postgres    false    3            �            1259    17105    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    3    243                       0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    242            �            1259    16857    faq_categories    TABLE     C  CREATE TABLE public.faq_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by character varying(255) NOT NULL,
    updated_by character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 "   DROP TABLE public.faq_categories;
       public            postgres    false    3            �            1259    16855    faq_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faq_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.faq_categories_id_seq;
       public          postgres    false    223    3            	           0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
          public          postgres    false    222            �            1259    17096    faqs    TABLE     @  CREATE TABLE public.faqs (
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
       public            postgres    false    3            �            1259    17094    faqs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.faqs_id_seq;
       public          postgres    false    3    241            
           0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
          public          postgres    false    240            �            1259    17210    footer_link_translations    TABLE     �   CREATE TABLE public.footer_link_translations (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.footer_link_translations;
       public            postgres    false    3            �            1259    17208    footer_link_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footer_link_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.footer_link_translations_id_seq;
       public          postgres    false    255    3                       0    0    footer_link_translations_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.footer_link_translations_id_seq OWNED BY public.footer_link_translations.id;
          public          postgres    false    254            �            1259    17202    footer_links    TABLE       CREATE TABLE public.footer_links (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    urutan integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying NOT NULL,
    url character varying NOT NULL
);
     DROP TABLE public.footer_links;
       public            postgres    false    3            �            1259    17200    footer_links_id_seq    SEQUENCE     |   CREATE SEQUENCE public.footer_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.footer_links_id_seq;
       public          postgres    false    253    3                       0    0    footer_links_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.footer_links_id_seq OWNED BY public.footer_links.id;
          public          postgres    false    252            �            1259    16895    front_banners    TABLE     �  CREATE TABLE public.front_banners (
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
    site_id uuid NOT NULL,
    status_id uuid NOT NULL
);
 !   DROP TABLE public.front_banners;
       public            postgres    false    3            �            1259    16893    front_banners_id_seq    SEQUENCE     }   CREATE SEQUENCE public.front_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.front_banners_id_seq;
       public          postgres    false    229    3                       0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
          public          postgres    false    228            �            1259    16879    images    TABLE       CREATE TABLE public.images (
    id bigint NOT NULL,
    album_id integer NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.images;
       public            postgres    false    3            �            1259    16877    images_id_seq    SEQUENCE     v   CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    3    227                       0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    226            �            1259    16490    log_activities    TABLE     �  CREATE TABLE public.log_activities (
    id bigint NOT NULL,
    subject text NOT NULL,
    url character varying(255) NOT NULL,
    method character varying(255) NOT NULL,
    ip character varying(255) NOT NULL,
    agent character varying(255),
    user_id uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 "   DROP TABLE public.log_activities;
       public            postgres    false    3            �            1259    16488    log_activities_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.log_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.log_activities_id_seq;
       public          postgres    false    210    3                       0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
          public          postgres    false    209            �            1259    16944    main_duties    TABLE     �   CREATE TABLE public.main_duties (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.main_duties;
       public            postgres    false    3            �            1259    16942    main_duties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_duties_id_seq;
       public          postgres    false    237    3                       0    0    main_duties_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_duties_id_seq OWNED BY public.main_duties.id;
          public          postgres    false    236            �            1259    16952    main_duty_translations    TABLE     M  CREATE TABLE public.main_duty_translations (
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
       public            postgres    false    3            �            1259    16950    main_duty_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duty_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_duty_translations_id_seq;
       public          postgres    false    239    3                       0    0    main_duty_translations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_duty_translations_id_seq OWNED BY public.main_duty_translations.id;
          public          postgres    false    238            �            1259    16396 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false    3            �            1259    16394    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    197    3                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    196            �            1259    16441    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public            postgres    false    3            �            1259    16452    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public            postgres    false    3            �            1259    17161    official_translations    TABLE     �   CREATE TABLE public.official_translations (
    id bigint NOT NULL,
    official_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 )   DROP TABLE public.official_translations;
       public            postgres    false    3            �            1259    17159    official_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.official_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.official_translations_id_seq;
       public          postgres    false    3    249                       0    0    official_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.official_translations_id_seq OWNED BY public.official_translations.id;
          public          postgres    false    248            �            1259    17139 	   officials    TABLE     �  CREATE TABLE public.officials (
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
       public            postgres    false    3            �            1259    17137    officials_id_seq    SEQUENCE     y   CREATE SEQUENCE public.officials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.officials_id_seq;
       public          postgres    false    3    247                       0    0    officials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.officials_id_seq OWNED BY public.officials.id;
          public          postgres    false    246                       1259    17270    oimls    TABLE     (  CREATE TABLE public.oimls (
    id bigint NOT NULL,
    category integer NOT NULL,
    reference_no character varying(255) NOT NULL,
    title text NOT NULL,
    link character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.oimls;
       public            postgres    false    3                       1259    17268    oimls_id_seq    SEQUENCE     u   CREATE SEQUENCE public.oimls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.oimls_id_seq;
       public          postgres    false    262    3                       0    0    oimls_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.oimls_id_seq OWNED BY public.oimls.id;
          public          postgres    false    261            �            1259    16412    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false    3            �            1259    16421    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public            postgres    false    3            �            1259    16419    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    3    201                       0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    200                       1259    17529    post_translations    TABLE     �   CREATE TABLE public.post_translations (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text,
    slug character varying(255) NOT NULL
);
 %   DROP TABLE public.post_translations;
       public            postgres    false    3                       1259    17527    post_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.post_translations_id_seq;
       public          postgres    false    270    3                       0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
          public          postgres    false    269                       1259    17518    posts    TABLE     �  CREATE TABLE public.posts (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    type_id smallint NOT NULL,
    category_id bigint NOT NULL,
    source character varying(255),
    file character varying(255),
    reporter_id uuid NOT NULL,
    status_id uuid NOT NULL,
    keywords character varying(255),
    description character varying(255),
    peraturan_id smallint,
    bppp_post_year integer,
    reg_dagri_year integer,
    oiml_ref character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    published_date timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.posts;
       public            postgres    false    3                       1259    17516    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    268    3                       0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    267                       1259    17261    publication_categories    TABLE     �   CREATE TABLE public.publication_categories (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    category_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.publication_categories;
       public            postgres    false    3                       1259    17259    publication_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publication_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.publication_categories_id_seq;
       public          postgres    false    3    260                       0    0    publication_categories_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.publication_categories_id_seq OWNED BY public.publication_categories.id;
          public          postgres    false    259            �            1259    16906    publications    TABLE     �  CREATE TABLE public.publications (
    id bigint NOT NULL,
    cover_image character varying(255) NOT NULL,
    link character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    file character varying(255),
    title character varying NOT NULL,
    category_id bigint NOT NULL,
    publish_year character varying NOT NULL
);
     DROP TABLE public.publications;
       public            postgres    false    3            �            1259    16904    publications_id_seq    SEQUENCE     |   CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.publications_id_seq;
       public          postgres    false    3    231                       0    0    publications_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;
          public          postgres    false    230                       1259    17574    regional_trade_offices    TABLE     D  CREATE TABLE public.regional_trade_offices (
    id bigint NOT NULL,
    city_id bigint NOT NULL,
    address text NOT NULL,
    phone character varying(255) NOT NULL,
    fax character varying(255) NOT NULL,
    website character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    official_1 bigint NOT NULL,
    official_2 bigint,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.regional_trade_offices;
       public            postgres    false    3                       1259    17572    regional_trade_offices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regional_trade_offices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.regional_trade_offices_id_seq;
       public          postgres    false    274    3                       0    0    regional_trade_offices_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.regional_trade_offices_id_seq OWNED BY public.regional_trade_offices.id;
          public          postgres    false    273            �            1259    16577    regions    TABLE       CREATE TABLE public.regions (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.regions;
       public            postgres    false    3            �            1259    16575    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public          postgres    false    215    3                       0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
          public          postgres    false    214            �            1259    16463    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public            postgres    false    3            �            1259    16432    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public            postgres    false    3            �            1259    16430    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    3    203                       0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    202            �            1259    16483    sites    TABLE     �   CREATE TABLE public.sites (
    id uuid NOT NULL,
    site_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sites;
       public            postgres    false    3            �            1259    16478    statuses    TABLE     �   CREATE TABLE public.statuses (
    id uuid NOT NULL,
    status_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.statuses;
       public            postgres    false    3            �            1259    17182    units    TABLE       CREATE TABLE public.units (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    unit_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.units;
       public            postgres    false    3            �            1259    17180    units_id_seq    SEQUENCE     u   CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.units_id_seq;
       public          postgres    false    251    3                       0    0    units_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;
          public          postgres    false    250            �            1259    16402    users    TABLE     B  CREATE TABLE public.users (
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
       public            postgres    false    3            �            1259    16558    videos    TABLE       CREATE TABLE public.videos (
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
       public            postgres    false    3            �           2604    17286    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    17287    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    17288 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    17474    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            �           2604    17290 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    17291    contact_us_processes id    DEFAULT     �   ALTER TABLE ONLY public.contact_us_processes ALTER COLUMN id SET DEFAULT nextval('public.contact_us_processes_id_seq'::regclass);
 F   ALTER TABLE public.contact_us_processes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            �           2604    17292    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    17555    daglu_agreements id    DEFAULT     z   ALTER TABLE ONLY public.daglu_agreements ALTER COLUMN id SET DEFAULT nextval('public.daglu_agreements_id_seq'::regclass);
 B   ALTER TABLE public.daglu_agreements ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271    272            �           2604    17293    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    17294    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    17457    event_documentations id    DEFAULT     �   ALTER TABLE ONLY public.event_documentations ALTER COLUMN id SET DEFAULT nextval('public.event_documentations_id_seq'::regclass);
 F   ALTER TABLE public.event_documentations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            �           2604    17295    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    17296 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    17297    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    17298    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    17299    footer_link_translations id    DEFAULT     �   ALTER TABLE ONLY public.footer_link_translations ALTER COLUMN id SET DEFAULT nextval('public.footer_link_translations_id_seq'::regclass);
 J   ALTER TABLE public.footer_link_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    255    255            �           2604    17300    footer_links id    DEFAULT     r   ALTER TABLE ONLY public.footer_links ALTER COLUMN id SET DEFAULT nextval('public.footer_links_id_seq'::regclass);
 >   ALTER TABLE public.footer_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253            �           2604    17301    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    17302 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    17303    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    17304    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    17305    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    17306    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    196    197    197            �           2604    17307    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    17308    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    17309    oimls id    DEFAULT     d   ALTER TABLE ONLY public.oimls ALTER COLUMN id SET DEFAULT nextval('public.oimls_id_seq'::regclass);
 7   ALTER TABLE public.oimls ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            �           2604    17310    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    17532    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            �           2604    17521    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            �           2604    17313    publication_categories id    DEFAULT     �   ALTER TABLE ONLY public.publication_categories ALTER COLUMN id SET DEFAULT nextval('public.publication_categories_id_seq'::regclass);
 H   ALTER TABLE public.publication_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            �           2604    17314    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    17577    regional_trade_offices id    DEFAULT     �   ALTER TABLE ONLY public.regional_trade_offices ALTER COLUMN id SET DEFAULT nextval('public.regional_trade_offices_id_seq'::regclass);
 H   ALTER TABLE public.regional_trade_offices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            �           2604    17315 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    17316    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    17317    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �          0    16917    about_us 
   TABLE DATA           R   COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    233            �          0    16925    about_us_translations 
   TABLE DATA           q   COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM stdin;
    public          postgres    false    235            �          0    16868    albums 
   TABLE DATA           �   COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM stdin;
    public          postgres    false    225            �          0    17471    article_categories 
   TABLE DATA           x   COPY public.article_categories (id, category_name, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    266            �          0    16590    cities 
   TABLE DATA           v   COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    217            �          0    17216 
   contact_us 
   TABLE DATA           �   COPY public.contact_us (id, name, email, message, sender_ip, assign_to, created_at, updated_at, site_id, status_id) FROM stdin;
    public          postgres    false    256            �          0    17226    contact_us_processes 
   TABLE DATA           �   COPY public.contact_us_processes (id, message_id, responses, reply_by, reply_at, sent_by, sent_at, status_id, created_at, updated_at) FROM stdin;
    public          postgres    false    258            �          0    16501 	   countries 
   TABLE DATA           e   COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    212            �          0    17552    daglu_agreements 
   TABLE DATA           z   COPY public.daglu_agreements (id, title, progress, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    272            �          0    16821    duty_categories 
   TABLE DATA           f   COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    219            �          0    16829    duty_category_translations 
   TABLE DATA           g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public          postgres    false    221            �          0    17454    event_documentations 
   TABLE DATA           �   COPY public.event_documentations (id, event_id, file_title, file, video_id, video_title, thumbnail, thumbnail_small, player) FROM stdin;
    public          postgres    false    264            �          0    17118    event_translations 
   TABLE DATA           \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public          postgres    false    245            �          0    17107    events 
   TABLE DATA           �   COPY public.events (id, site_id, event_type, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at, date_from, date_to) FROM stdin;
    public          postgres    false    243            �          0    16857    faq_categories 
   TABLE DATA           t   COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    223            �          0    17096    faqs 
   TABLE DATA           �   COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    241            �          0    17210    footer_link_translations 
   TABLE DATA           N   COPY public.footer_link_translations (id, created_at, updated_at) FROM stdin;
    public          postgres    false    255            �          0    17202    footer_links 
   TABLE DATA           ^   COPY public.footer_links (id, site_id, urutan, created_at, updated_at, name, url) FROM stdin;
    public          postgres    false    253            �          0    16895    front_banners 
   TABLE DATA           �   COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id, status_id) FROM stdin;
    public          postgres    false    229            �          0    16879    images 
   TABLE DATA           Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public          postgres    false    227            �          0    16490    log_activities 
   TABLE DATA           w   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    210            �          0    16944    main_duties 
   TABLE DATA           b   COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    237            �          0    16952    main_duty_translations 
   TABLE DATA           z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public          postgres    false    239            �          0    16396 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    197            �          0    16441    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    204            �          0    16452    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    205            �          0    17161    official_translations 
   TABLE DATA           U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public          postgres    false    249            �          0    17139 	   officials 
   TABLE DATA           �   COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM stdin;
    public          postgres    false    247            �          0    17270    oimls 
   TABLE DATA           `   COPY public.oimls (id, category, reference_no, title, link, created_at, updated_at) FROM stdin;
    public          postgres    false    262            �          0    16412    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    199            �          0    16421    permissions 
   TABLE DATA           S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    201            �          0    17529    post_translations 
   TABLE DATA           V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public          postgres    false    270            �          0    17518    posts 
   TABLE DATA           �   COPY public.posts (id, site_id, type_id, category_id, source, file, reporter_id, status_id, keywords, description, peraturan_id, bppp_post_year, reg_dagri_year, oiml_ref, created_by, updated_by, published_date, created_at, updated_at) FROM stdin;
    public          postgres    false    268            �          0    17261    publication_categories 
   TABLE DATA           d   COPY public.publication_categories (id, site_id, category_name, created_at, updated_at) FROM stdin;
    public          postgres    false    260            �          0    16906    publications 
   TABLE DATA           �   COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file, title, category_id, publish_year) FROM stdin;
    public          postgres    false    231            �          0    17574    regional_trade_offices 
   TABLE DATA           �   COPY public.regional_trade_offices (id, city_id, address, phone, fax, website, email, official_1, official_2, latitude, longitude, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    274            �          0    16577    regions 
   TABLE DATA           n   COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    215            �          0    16463    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    206            �          0    16432    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    203            �          0    16483    sites 
   TABLE DATA           F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public          postgres    false    208            �          0    16478    statuses 
   TABLE DATA           K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public          postgres    false    207            �          0    17182    units 
   TABLE DATA           g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    251            �          0    16402    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at, avatar) FROM stdin;
    public          postgres    false    198            �          0    16558    videos 
   TABLE DATA           �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM stdin;
    public          postgres    false    213                       0    0    about_us_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.about_us_id_seq', 1, false);
          public          postgres    false    232                        0    0    about_us_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 1, false);
          public          postgres    false    234            !           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 1, false);
          public          postgres    false    224            "           0    0    article_categories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.article_categories_id_seq', 9, true);
          public          postgres    false    265            #           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public          postgres    false    216            $           0    0    contact_us_processes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.contact_us_processes_id_seq', 1, false);
          public          postgres    false    257            %           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 5, true);
          public          postgres    false    211            &           0    0    daglu_agreements_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.daglu_agreements_id_seq', 1, false);
          public          postgres    false    271            '           0    0    duty_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.duty_categories_id_seq', 8, true);
          public          postgres    false    218            (           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 16, true);
          public          postgres    false    220            )           0    0    event_documentations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.event_documentations_id_seq', 1, false);
          public          postgres    false    263            *           0    0    event_translations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.event_translations_id_seq', 10, true);
          public          postgres    false    244            +           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 5, true);
          public          postgres    false    242            ,           0    0    faq_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, false);
          public          postgres    false    222            -           0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
          public          postgres    false    240            .           0    0    footer_link_translations_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.footer_link_translations_id_seq', 1, false);
          public          postgres    false    254            /           0    0    footer_links_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.footer_links_id_seq', 1, false);
          public          postgres    false    252            0           0    0    front_banners_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.front_banners_id_seq', 1, false);
          public          postgres    false    228            1           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 1, false);
          public          postgres    false    226            2           0    0    log_activities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.log_activities_id_seq', 464, true);
          public          postgres    false    209            3           0    0    main_duties_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.main_duties_id_seq', 1, true);
          public          postgres    false    236            4           0    0    main_duty_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 2, true);
          public          postgres    false    238            5           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 72, true);
          public          postgres    false    196            6           0    0    official_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.official_translations_id_seq', 2, true);
          public          postgres    false    248            7           0    0    officials_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.officials_id_seq', 1, true);
          public          postgres    false    246            8           0    0    oimls_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.oimls_id_seq', 2, true);
          public          postgres    false    261            9           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
          public          postgres    false    200            :           0    0    post_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.post_translations_id_seq', 1, false);
          public          postgres    false    269            ;           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 1, false);
          public          postgres    false    267            <           0    0    publication_categories_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.publication_categories_id_seq', 1, false);
          public          postgres    false    259            =           0    0    publications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.publications_id_seq', 1, false);
          public          postgres    false    230            >           0    0    regional_trade_offices_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.regional_trade_offices_id_seq', 1, false);
          public          postgres    false    273            ?           0    0    regions_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.regions_id_seq', 1, true);
          public          postgres    false    214            @           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
          public          postgres    false    202            A           0    0    units_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.units_id_seq', 1, false);
          public          postgres    false    250            �           2606    16922    about_us about_us_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.about_us
    ADD CONSTRAINT about_us_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.about_us DROP CONSTRAINT about_us_pkey;
       public            postgres    false    233            �           2606    16935 E   about_us_translations about_us_translations_about_us_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_locale_unique UNIQUE (about_us_id, locale);
 o   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_locale_unique;
       public            postgres    false    235    235            �           2606    16933 0   about_us_translations about_us_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_pkey;
       public            postgres    false    235            �           2606    16876    albums albums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.albums DROP CONSTRAINT albums_pkey;
       public            postgres    false    225                       2606    17476 *   article_categories article_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.article_categories DROP CONSTRAINT article_categories_pkey;
       public            postgres    false    266            �           2606    16595    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    217                       2606    17223    contact_us contact_us_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.contact_us DROP CONSTRAINT contact_us_pkey;
       public            postgres    false    256            	           2606    17234 .   contact_us_processes contact_us_processes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.contact_us_processes
    ADD CONSTRAINT contact_us_processes_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.contact_us_processes DROP CONSTRAINT contact_us_processes_pkey;
       public            postgres    false    258            �           2606    16506    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    212                       2606    17560 &   daglu_agreements daglu_agreements_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.daglu_agreements
    ADD CONSTRAINT daglu_agreements_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.daglu_agreements DROP CONSTRAINT daglu_agreements_pkey;
       public            postgres    false    272            �           2606    16826 $   duty_categories duty_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.duty_categories
    ADD CONSTRAINT duty_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.duty_categories DROP CONSTRAINT duty_categories_pkey;
       public            postgres    false    219            �           2606    16839 T   duty_category_translations duty_category_translations_duty_category_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_locale_unique UNIQUE (duty_category_id, locale);
 ~   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_locale_unique;
       public            postgres    false    221    221            �           2606    16837 :   duty_category_translations duty_category_translations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_pkey;
       public            postgres    false    221                       2606    17462 .   event_documentations event_documentations_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_documentations
    ADD CONSTRAINT event_documentations_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.event_documentations DROP CONSTRAINT event_documentations_pkey;
       public            postgres    false    264            �           2606    17128 <   event_translations event_translations_event_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_locale_unique UNIQUE (event_id, locale);
 f   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_locale_unique;
       public            postgres    false    245    245            �           2606    17126 *   event_translations event_translations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_pkey;
       public            postgres    false    245            �           2606    17136 1   event_translations event_translations_slug_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_slug_unique UNIQUE (slug);
 [   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_slug_unique;
       public            postgres    false    245            �           2606    17115    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    243            �           2606    16865 "   faq_categories faq_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.faq_categories DROP CONSTRAINT faq_categories_pkey;
       public            postgres    false    223            �           2606    17104    faqs faqs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.faqs DROP CONSTRAINT faqs_pkey;
       public            postgres    false    241                       2606    17215 6   footer_link_translations footer_link_translations_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.footer_link_translations
    ADD CONSTRAINT footer_link_translations_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.footer_link_translations DROP CONSTRAINT footer_link_translations_pkey;
       public            postgres    false    255                       2606    17207    footer_links footer_links_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.footer_links
    ADD CONSTRAINT footer_links_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.footer_links DROP CONSTRAINT footer_links_pkey;
       public            postgres    false    253            �           2606    16903     front_banners front_banners_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.front_banners
    ADD CONSTRAINT front_banners_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.front_banners DROP CONSTRAINT front_banners_pkey;
       public            postgres    false    229            �           2606    16887    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    227            �           2606    16498 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public            postgres    false    210            �           2606    16949    main_duties main_duties_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_duties
    ADD CONSTRAINT main_duties_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_duties DROP CONSTRAINT main_duties_pkey;
       public            postgres    false    237            �           2606    16962 H   main_duty_translations main_duty_translations_main_duty_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_locale_unique UNIQUE (main_duty_id, locale);
 r   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_locale_unique;
       public            postgres    false    239    239            �           2606    16960 2   main_duty_translations main_duty_translations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_pkey;
       public            postgres    false    239            �           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    197            �           2606    16451 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    204    204    204            �           2606    16462 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    205    205    205            �           2606    17171 E   official_translations official_translations_official_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_locale_unique UNIQUE (official_id, locale);
 o   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_locale_unique;
       public            postgres    false    249    249            �           2606    17169 0   official_translations official_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_pkey;
       public            postgres    false    249            �           2606    17179 7   official_translations official_translations_slug_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_slug_unique UNIQUE (slug);
 a   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_slug_unique;
       public            postgres    false    249            �           2606    17147    officials officials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.officials
    ADD CONSTRAINT officials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.officials DROP CONSTRAINT officials_pkey;
       public            postgres    false    247                       2606    17278    oimls oimls_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.oimls
    ADD CONSTRAINT oimls_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.oimls DROP CONSTRAINT oimls_pkey;
       public            postgres    false    262            �           2606    16429    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    201                       2606    17537 (   post_translations post_translations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_pkey;
       public            postgres    false    270                       2606    17539 9   post_translations post_translations_post_id_locale_unique 
   CONSTRAINT        ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_locale_unique UNIQUE (post_id, locale);
 c   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_locale_unique;
       public            postgres    false    270    270                       2606    17547 /   post_translations post_translations_slug_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_slug_unique UNIQUE (slug);
 Y   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_slug_unique;
       public            postgres    false    270                       2606    17526    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    268                       2606    17266 2   publication_categories publication_categories_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_pkey;
       public            postgres    false    260            �           2606    16914    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public            postgres    false    231                       2606    17582 2   regional_trade_offices regional_trade_offices_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.regional_trade_offices
    ADD CONSTRAINT regional_trade_offices_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.regional_trade_offices DROP CONSTRAINT regional_trade_offices_pkey;
       public            postgres    false    274            �           2606    16582    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    215            �           2606    16477 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    206    206            �           2606    16440    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    203            �           2606    16487    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public            postgres    false    208            �           2606    16482    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    207                       2606    17187    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public            postgres    false    251            �           2606    16411    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    198            �           2606    16409    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    198            �           2606    16565    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    213            �           1259    16941 "   about_us_translations_locale_index    INDEX     f   CREATE INDEX about_us_translations_locale_index ON public.about_us_translations USING btree (locale);
 6   DROP INDEX public.about_us_translations_locale_index;
       public            postgres    false    235            �           1259    16845 '   duty_category_translations_locale_index    INDEX     p   CREATE INDEX duty_category_translations_locale_index ON public.duty_category_translations USING btree (locale);
 ;   DROP INDEX public.duty_category_translations_locale_index;
       public            postgres    false    221            �           1259    17134    event_translations_locale_index    INDEX     `   CREATE INDEX event_translations_locale_index ON public.event_translations USING btree (locale);
 3   DROP INDEX public.event_translations_locale_index;
       public            postgres    false    245            �           1259    16968 #   main_duty_translations_locale_index    INDEX     h   CREATE INDEX main_duty_translations_locale_index ON public.main_duty_translations USING btree (locale);
 7   DROP INDEX public.main_duty_translations_locale_index;
       public            postgres    false    239            �           1259    16444 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    204    204            �           1259    16455 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    205    205            �           1259    17177 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public            postgres    false    249            �           1259    16418    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    199                       1259    17545    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public            postgres    false    270            '           2606    16936 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public          postgres    false    233    3039    235            $           2606    16596    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public          postgres    false    217    3018    215            %           2606    16840 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public          postgres    false    221    3022    219            +           2606    17463 :   event_documentations event_documentations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_documentations
    ADD CONSTRAINT event_documentations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.event_documentations DROP CONSTRAINT event_documentations_event_id_foreign;
       public          postgres    false    3055    264    243            )           2606    17129 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public          postgres    false    245    243    3055            &           2606    16888    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public          postgres    false    3031    227    225            (           2606    16963 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public          postgres    false    239    3046    237                       2606    16445 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    2996    201    204                        2606    16456 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    2998    203    205            *           2606    17172 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public          postgres    false    247    249    3064            ,           2606    17540 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public          postgres    false    268    270    3091            #           2606    16583 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public          postgres    false    215    3014    212            !           2606    16466 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    206    2996    201            "           2606    16471 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    206    2998    203            �      x������ � �      �      x������ � �      �      x������ � �      �   1  x����n� �gx
� p7��Ti�&�ԅ�]�ʩp����2E���|��A��2��K~�^�i�圈1��`��c2���"9�\�CPp0���	.Y��0G����\r&8��I��ܴ��t�����~*��=�t-F�����_���{���wN���(��\�}o������e�7q����&2�r`!ઇ`D��f̏�U��Ũ&�e�V�Cٹ�W�Ũ!���v�9�}�A��[�Zr*[�c���жu�#��϶�V�&�Vص
YXo\MNy킴�Q��տ�ac��R��#:      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m̱�0 �ڞ"��dɎ�m9��4��cJ��_<����c���h��2�
���b"��� �m�-,�@��
X&�M���Y�pߏ���o����+x��`֮ �X������Rn��,.��Z+�      �      x������ � �      �   �   x��ҹ�1@�x��m�o�S�+p�c�	6�ī@P��G��-j�@t$PJA�Х���w��x=FF� ��K�"���f��C��A*z@��h�$4=y��	+��쳚�m��}�&�-����E4mK�ﳜ�m�M���;�o[b�A��%�`�h7�<D`�U�Z)g�f�����-[뒺��)�ިP?��
wu�l��q�����U      �   T  x���_O�0ş�O�����|�&ScH|����Y�BJ���V`���͙ 	���;���d��2���%Q)vB�<��O�����Ӳz�ej��Z�����g�F$t��!7`�QH8����1�b�b��b߄D���͛�2Af*��h�Vȓx?�{��B�W� ���C}0`y?@SMw�2 �"��N[-���I�[������ϪG#t��C����nH2�-qtl��ʯQ9��M9'���N4�P�}����� �;��]�]�	�wui#���� ��t�?�EƖ������5�x��K�����o#
Q.=����O��� <��-^�(���D,      �      x������ � �      �     x��ZmO�F��bć�;$4-P�#��P�#�Z����g/�w�}!���>��P]��Q[BW��޷����gf=?����^�ʖ���0NNe�V�9�\I������3��u�!1��V>����fҰ�&�
V�0ih㤡ڊWZ�nV��5l
��F�ۣ���>�M�vN7w�j1��¢�TE��i�ӿh�j�D�6�ʁ��x�~����\�B�Q.�x��0ګ|(.0C*�$�w�ZmѨ��ގҲ#Z�ny;Ǔ��3����8�e{�g�kI�"[�~����6zQL���l�F��J��"�c@k�Fd~R
G���������}rⓛ���[�~����XQ9m��XB-]0��ʶ�PΊN<�ָ�BAw\Ӆ09��C?{6�F�E�L�B���w���`:]K�<�5���K�����u9���`�zUP.	D1�W�/}&��������&��3�#�>#g����Spۂ�L����
[˹��5����W�%�.$�"J��tq>�pI�Ov���S	+��Xن��^��|�TsC�
�E��t�1<�m��ܵNk_����}�����쀸���2sx�80��a2�dp����=V@W��^`b�ixf�; ������Ǜ�B��gZn�(Y�Yt�3n�}�kϸ��K���Wd+�0\��bu%����ر��
]�w*������{ ��2�e=���V'���cyo4�	m}�~�|�:0�q�Ք�M�Z�$�z�D�A�7���{8oط^���n4�%�u��fS%`W�7��Է"�=�<����ʟ�l'�%B��Z��Xp�h~VZ���J ���J��d�K�S�k�>@��^�����ƀ�����h,=�!TR!)i������fr�ɡ�"��4���R�d
}�K:^�L++�",��.�I���<{WH���@��.ǀ�{#��ɷ@0��<|tD�Ǣ���ґE�~R��&�<�Y�"� �q��9�E~���0�_y<�F�=�PXn��D@%����Yh0݇�t���	���	ă*U"�Cz�78}֙y��I�q����&�{�w1�U�̘�@�W�ϓ�wg,����;�"\��p�o�&��.�D�oP�|?+Bڢ�����:lB;���4
I�R�� �!ㄑ�K�sK�����!������h���v*��7�����2$��p���~�ݾ7"�9d�% 4ѳ�4�yF�}-��7�]\ [Ȧ��p �����|q�=��؋c�'�!�5���.��{M���2�:�)�+���N���k~;������E�c��=q<�C�4�mP �mq.��rC��H�ix�Y��`�_d�)�JX���dp����[�U��k���F�B� �X�]�F�Ė�.~�C9Yܝ_'zi�d��y�����viF�D}t��a���u�����������"��*e���R��Ku)�.%����LqW2�T���RR]J�KI=9�A$�����RR]J�KI������&�Ku)�.%ե���T��n7��+�C5�o�.������}�d      �   �   x���11k�H�F���I�@��q������C�b5ڝ�r6v�!^1���I+V�Y��F9A��?��v�p.�3֌SLR:�^%��V��&h���1�}_�2]WS�D�i����	i��B�8���3����X�n!���/�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x��ks�ƶ�?3�B�v%U����?�13C���{*�S�j!�5�p�s�_Z�bI��B��Ll��f��]��ս��f�x̵�0���x��=��#�����G�����=?� ��@�xo(^��&=>:�c>���g�<J��|:��A����[C�:3�?�v=�'��9;3�_~��?�ߩ��jH|�ߚL�o��L��Vx?����Έ����ֽ��M��@��_����d��T�=E�:C�i����p�c��:���D5������}�S�s�v<Gg�A����5l`C7l#a�Q���`�2)e:���N��=��'��<Ӱ|¦U��=�{���
�%�p͂��a�&���cl��p)�j@�v�n�Z��G�c6���@~��`����������lDt�3�N���۬��1���oSr��M�x��1�о�Sd���,x��>vhг�h�!ۥ�5�T#�qP���P�S�vtN�	b�=�ᾀ����L��#������H��Yx/^u�aN����\�c�G�����4�u��<~#�5_���P����
���]�H5�Ca{�%�4݋^b��-~0
�C�*��]D�����C����|lO��3�%H��!g���K�Q�_��$��1]3�~�a��"\�Is�Ԍ$�ք�m���٧.4 [s��N�U��#W�,'W�U��Q$��Y0-5O������Y�	[�!bUth�T���3᫵'����4ga�F��/��܀"�Y;?�YJ�&g6�N��L*�eG���E�O]���m� w�h�&�d��?Lb�[���čV�q�Y��!�TB�+�����L!� 6]dJ5 b�B|?��?��
�2�k@����o�Ɋ�c1caV��H���!f�AlI5 b�p�ie#�D�\ηĤ:�7�ɩDl���1�j@�N�&�G��kf���������(�ݳLOg�/���v��o0��C�������b�ŖT�Y�'�O��F� lP���	uP?�EO�	ˤ����r�˕����8(b�\,׀����D��/��11���:��4n�6���vѼ���&B�9��]֯��Z��U|�	�';�@�e���Z��L�P[M�w�>�|i_�Ѡd)U�Rm������_�G�؎ �\81�T���ﺬrH���zN)�Q��Qg����o�Cg�b���s�*��[�y��m��,�g�X�xN�Vj�F�Z\�H5�Vm��+���TB��i�[iﳑ�+�ܒj@�d �h������
�\�1[,`���������I�T��=��Km�d�6���L���ؑ�"�R$Հ�q�$̘��j@ƲB���U��\&׀�i�´�z/�<\�[U��%DEJ����^��c4�!�ߴ�8/�y[�9�*���S�d^R��ﰚv�f.{�h@ζ�fe�ͩ��6��a��0���OV�qC.��(�	QLs㹌��.O��|�Ҽ��f�̌��ɼ��7��+�0I�<���[�gX2��1	�h�	&�y�GI��n1Jt��|ݳ�m#�=��i��M� IT�\�9�m���,�:�=S�"���#���Rk�q�������E���Sk��4)���>Ԯ��G�k�G��c'�����RfN��񴔹�!�p�d�(���2�w��=��Ŗ˰\����9L���~��VqD�5��0i�n������x����@�m�j��w�/bځ� �u/�ڢ��xeZ�=Od��i��z�.F�^#�Y�1sS�.�L�����;��;�>�F�!����M~��S7��H�N�r؍[��s(�m��j��
�E��5 y���b���(�j@$�U.�8�"c0�� KN+�v}p�F)�-��������7�ޅ/ɠ�X4p �Ĕj@�������D7?T��3�JYȞJ��g }P���Ik�D�=�@;��h�Ԁ���F'ՀH���#0���CE;}�trh^җd�'>�/�BR�$�X�ޡ�o����.�t�y��x>M�e8�r`�x#�J5�D���	��@_|:�4n:�;e�v��d*G�$���)�S�!�9�$��KRݗ��s��Qr ���j@Ni��$���?Ʋ��shA��r�S�����Md5��<�&�z<�ɗ��}+� �r�$nF~(�Mb�F�5�_΁���Z�9 I�W�[�?�?5���$���Q̷3g�v���}I�*w5A�67@d�$�y�	�~����,4��Tx���E.�.`���.��MD9�$-N�|����o��6����Dx5��$ ���e)��$qe�VC6;g�9SIb��	�q�ki�zgY):N�ʑm�8�Ҭ�sD�&_�^<��I4?jwi��2a�	����C?-͔��A��j��zb�5zI�܉�~Ia�� ��Y"�y�Jr��z�~Q�mh_n�{S�lh����uC i�/���ͺ��e�K�]�U��A�HN����i0�$	��\t���ô��Z���gjN�+�k +�$��!@�t���j�4�Ufl5�J̠`3$��U���`����ɲ��n	�X���H2���үxE�*��� *� <i0$��?�pm��#9��`7�3���M'L�;�ÃL�Հd�2'Rd8ϒ�]<9z?�٨g�;�"�9��3�3�p&`Ζ��9�4�9ۊ3�3�pf`Ύ�⌲� ���i(�@Ι{���3R����F��j@Β���6����]L�;9���i�n����R�]פ����0���i��A�G���K>�c��c���.?����Ŀ�dS����j��i����t�����ݎ'˝��<��=�:��F<�tb}�l�\�פ|�+�ϙV�����z٧�����m9mfJ5 m���).�<0"�-���J��ա��|6/E����Y"ƑY�CW,�-�&	��>�z���ےj@ܒe���&H@F��P{�S���ZK�����x1�N
������ly\��d�'��ʂ�D��������L|�_{V�*W���7W4�+�5�/	�p&��?I2�-��J5��3����cd\נ�����p�b׫�j2��ao��v������� ȭu�FA"�W�yH 6��G�y0�.������m���GzFL����,4z�X�{��nt�z[���n�j��d~����eS|l�u�ĝ��_o�ύ���F��W��[��ߛ�U�qU?�����j���v���-�%�|^��e��)>$?)>5n�ߴn��L�Q���_�xyuW��-��N��ޭ�&o��Ĝ�T���0���2��FЪ[��YЀA�������H5`D<]Ü֭�kkɻ���of[ș>�y�����%�8Zh@�쥠~�=]� ����dH5 hSE�N��vf!���0���l.>���0�k>�`������7�:%�5��k�`Q��uś<$o҉'��p��a2��K�T럳)�`ӑj@�췳n����m-�U~��ր�=Mk�g<��hē��<�M�^`վ��FHjhw	a�K��\kMJ֕V��"�t�j0[c?������q9l������D4x#>��0�d��}'g���5%\��s/-�����UUy6pZ�k�K5 ����m︖I4��na$�`k��:�����y�h��;��#Հ��:�{"�Z@�TZ 9�촶9��ΈTb�][uZ����և�4 wI�I�WR�>3����ƪӻ��{�%�T����,����,{jK5 {usI������k��̗�l�͂\��F��R��;�Q{�I�L $͉)�@�
� ;N�ƀŜ���0��㾑�~&����^�;�Mj�2);�h@��j�d�4�7#�Gr� �lI5 dv8�Nu3C���c|�����dl��]!ƒ����
{�$�򤷟�Q�����h@�"a�0.���������ov�e�e9g2��l��ji/�g�c;\�pu �  ҳGנRt,E��B~��|�~����ț��
�|�=D���_~�bd�=����AF�4L�����x2P��,|,�H5 |���>;�����/a�-ՀН�_S0Ƿͫ$~��m�h@��-&��oiy���j@ڦ���[R��Z����?����?U˾��rʌ4�~����R����H�QM��%�4-x���������ۨR���+�h@�(?B���v�T;����m.4 m������������������MTt�F�8ײЀ���D�����֧�4 o��J;ّ�����i�o�ǷW�7������f�r��Ft;�����mo����>�z�r�������y����nQ��X�7�(��ܪ$n��i�h@������*������5 l��ނ���T��N���B��g����gI�ܡ�H�>Ozoa]��3�W�Wva�R�����hAR��܂zo�]�%x���`����"��G��X�R����zo�]�EI�,����B�Χ���3�[X��F;�`������B���8�� R��H5;����<�B���X�-���$���s�Fhcx�%j�EM]C�Q�E��]�0����쯄�_��LU��h[R� ���W75�/T��G�f.*��Ѓ7�7��&��*��l��:�W���ZG��aL\��J5 c[¸�&ͣ�s�$e�X�Ҁ��/1F��ea��3㐑\����P+"׀������}�+�2��1�-��.�RH��H0frȘ2��1y���elDr�)��x*��1.&~+��T�d ��z�)[*�_BlWV�A󽪌��S<�d�);*�_F����B�!6��Ue�Lp��c�)#�/!f�-�B">h�W�1rR;Sl��2Y����~��^7�Z�~��:�˺ֺ�_5����\˓;�J�MqqM|������֪����bj��@����ӧO�qI��      �      x������ � �      �      x������ � �      �   }  x�m��n�0@�;��x�6��J�C��Z]0]���I�/�<�<��&�EaQZ���a�.z��~Ymt�ѿ!��|w��o^�v�E��Ha��I��2Y��#�k��/zM878�z���b
g�հ�{*l�$�� ZV�t�~��n��G�!�~5j�%�aަ�X�B�E���G��yG�lPb������T�lH��ru�=�=m��&eQ���?E{���\�Π��*���B!e�-1c:,���Օ�Aw�^�L+*T���������qq�:��)0�Y�W�Dǩ
�vu�q��x��T�4H�&�*�?^H}�L�t-}�����&�$	s���ߓ3%Ⱦu���x��% qd)����f1�_�(d�e�S+\�4UC�@�Q�n���2������@Su�e�b�;���@w�'�M��{'=q靇ӳ<UZ�>
e)��yY:.�A�U꾆ӍO���|���̃�r��i�zQ�@^ZX5����Y�,�#�����M��)^������
=�1��q�#~z���c��߷)��hPX�R��4�m��_��?�0���`<1NCK6e)M�H˭,�
��M�<x��_�T��;��R��H�� ����k76�R��(e���/ ���a�      �      x������ � �      �   B  x�}��m 1�s�"0?6E�i�����H�"%���N�>x������������u�������c�P`����6Hε�K�1/z��kZe��- ����&����_p�[�Z.��c3�FJ	C��J�� �d$�I�`}
�`4�G,�L�'�����`6hͻ�G\͵l��b�2�YќF'����Q�؃�2
d������Vgu��́!\4������	���)�`�^������!����9x>_{�^�v:a�$:��$�yF�#ֵ��yЙ k�X
��G�Y�#�)�^8Ab!���A'���u�^�����6      �      x������ � �      �      x������ � �      �   �   x�m��j�0���S�1>Ȓ�J�)ګO���+yA�����J��/���!��°3��U��AҦ�
�`
�`<��d�o��N����p���
�������H���p��0�F��S����(!#�K�?h�aZo�XB�덋�`�	맡,7�6�X�9�\���4�6&'�7��,σ��������T��zzz��S�^���u�a`�      �      x������ � �      �   �   x����
�0E��+����V�J� ��K()4��^��\���=�=�2�����?����m��L��Le�e���Z,�����	0���� )��x�/B'o�V9��,B/LT��J��.C��UX��h&����$J�1���2�*��J�d�~�"��G2%%��L2����K-��.U��e؅Ly/u?��q7�3�A�L4!�c�	+�.�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ?   x�̹ !���1{��ׁD��LCe�n{��~�ƕCNRҒ��$'=p������h&v      �   E   x�3�tL����,.)J,�/�,OM�4202�50�54Q04�25�22�&�e�Y�Z�M����	61�=... `pW      �   )  x���Ko�0�������A~�_݁ʢU�
b�fl��Bo�*���iRAT�HY�^�;>�x���e��*��P�ճ�*;o�>|��+w�W�`�Q�"(�i}��B����+Նj������I�n��2�.����i����c���-ϕN4��]ҙ��O<�����<K	G��O����4
��?�7�_���QA,`4��,�ZM��k3/����O��"�ƕ瑖~�[�F*�� *�@�#4v-�P2����s?��}=��6��UY|�y�swӋ��:rq6�V��� ���7�ڱgߤ`���C������a�(^납�1V�9H���˟��5ZrҿwT�,�{\�ӷ��(vc�K���(7@)"��xLNUl�1����A=��I���bv����Ō��$*T���_����w��� %�Z�i��%���� Eb�&�������t2!�����,w���#:09�A�h���L��ȇ�m����n2�2(�Sw���t�N�+l�.%]
C!��nQf�e!'N6ւٴ�uw��-����x<� 4�o�      �   w  x���͎1��駘0�'N�Ʋ�!�����b�E3=<?Y	�8��\����dU��PeP
�Q�XaX�^�*#��u�~wG�<x��5�ˑ����@HC�� �,�q�BX;�/��~n�=�V�tV�='�&rj�w�^���=_t��<�<��)ie!�� �Ȑ�� k$��I��|�����~����J�>R� r�:�M]kі�d����ݍ�Da%�2i{��aM�f��`�vH�8�ĩ�{�L_��04r�t����W #�%֘
����c�l?����:���ܠ�I�ðX��Y��T��/��+�#m)sS�B��6o��f y@o�ה��m��罟��Ƕ���f��mDV�#m��nY�?�K��      �      x������ � �      �     x��W�rb�]�𢶺hX�'L�`3؎��������;���u�w�� ����̓8&T�#B]B�(�'��6hfE)���<�6]x;��bV��,}��o�k��f�z�I8}�Zk8���U��Cct�?>�/�1i���[^g{Z�q����=�-E��$7�����}�a^%W��`!R%<J.zl�����#�6��U��0Z8��yaq�+��"��i�"",����1��vW������]�>X=t^�w�Vީf�Š}5~	�A۷�C�|ݮ����*����>F�%K	�8��
d�wb�� ��ȅ*��Z*A�f�J��}���(UX8��HJk;[N�_�蛛'6��~�,⍪O&�E'����d�9���v�~ۊ#>)�H�CEm����QS����T!C@R�"�*�5���D��'�[�BA&����q�����$gpi��>��X���ү����Ww��&�Z��v�o������}�4�͝�v�zm;^���j%9���G��s����"Nby<��<�!�I��
%BU��E�%'䒐�`,���	B~�;��+"��D1l��|x9��AH:�$ORY��cXV/F�˰��B2oVW��f�Ɲ������ݸ�]s�Z>��ӹ����[�<�d�g2P4�D�Y8BAK�����dA��/2��_bZ��"�/��)&Va�p۳���J:$d�+�"�C	���֢�ʣ_|���hK��N6~iW�����vƓ����^7��0���=w�,o��8�ݿ<���>075� 0̑��#��
�Z�C`�<����	�����?A���ь���ܩ�XJ
.XRd�q�R��d� ����)0x($�w���r������cm0cϱ�RO��4<�l��쯚���Ϻ���z}�T�)��(���9%�a5#6r��_�T��y�)R#����\�?���a�#�A�hV���|�/���.�?��>ڜM���}�v���$k,n����]�}3���S�����|��E��S4Y�X�"Tj�%�`P(E��V�E徆_T��U�����u��8�d��8�2��K��ڞ�B�ת�����6`�|ZT?ҕ���qsxؿ����I��n?���jw����|��fT��P����
��v_�Md��9@.O�Qr���{�$2Sp��ds�ږ�dq��o��qA�r�vb�ԣ�\�yv����a����ZռfW����p��2���3a�>"����,�?�h�22�������ļ�Hz��m�����4/���Fp%�b�w�`��8r8�6NNTۼ:�~����^����{׉���{���7�=��9�_�l]l�O�����C��Z�"�
�g���$N��d�ߪ��B ��P��b���YAP�i.�w#-��3G�����>�4K��W�r����Ayӵ�����Zfw��G�76���S/�V=������c^���Zjh4�������	��#R�&!�$��D#�.�g� ��*%Ĝ:�+�p[��Gvqq���o�      �      x������ � �      6   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    kemendag    DATABASE     �   CREATE DATABASE kemendag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE kemendag;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    16917    about_us    TABLE     �   CREATE TABLE public.about_us (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.about_us;
       public            postgres    false    3            �            1259    16915    about_us_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.about_us_id_seq;
       public          postgres    false    233    3            �           0    0    about_us_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.about_us_id_seq OWNED BY public.about_us.id;
          public          postgres    false    232            �            1259    16925    about_us_translations    TABLE     (  CREATE TABLE public.about_us_translations (
    id integer NOT NULL,
    about_us_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    welcome_message character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.about_us_translations;
       public            postgres    false    3            �            1259    16923    about_us_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_us_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_us_translations_id_seq;
       public          postgres    false    3    235            �           0    0    about_us_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_us_translations_id_seq OWNED BY public.about_us_translations.id;
          public          postgres    false    234            �            1259    16868    albums    TABLE     ~  CREATE TABLE public.albums (
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
       public            postgres    false    3            �            1259    16866    albums_id_seq    SEQUENCE     v   CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.albums_id_seq;
       public          postgres    false    225    3            �           0    0    albums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;
          public          postgres    false    224            
           1259    17471    article_categories    TABLE     #  CREATE TABLE public.article_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    site_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.article_categories;
       public            postgres    false    3            	           1259    17469    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.article_categories_id_seq;
       public          postgres    false    266    3            �           0    0    article_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.article_categories_id_seq OWNED BY public.article_categories.id;
          public          postgres    false    265            �            1259    16590    cities    TABLE     6  CREATE TABLE public.cities (
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
       public            postgres    false    3            �            1259    16588    cities_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public          postgres    false    217    3                        0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public          postgres    false    216                        1259    17216 
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
       public            postgres    false    3                       1259    17226    contact_us_processes    TABLE     y  CREATE TABLE public.contact_us_processes (
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
       public            postgres    false    3                       1259    17224    contact_us_processes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_us_processes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.contact_us_processes_id_seq;
       public          postgres    false    258    3                       0    0    contact_us_processes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.contact_us_processes_id_seq OWNED BY public.contact_us_processes.id;
          public          postgres    false    257            �            1259    16501 	   countries    TABLE     �   CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.countries;
       public            postgres    false    3            �            1259    16499    countries_id_seq    SEQUENCE     y   CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          postgres    false    212    3                       0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          postgres    false    211                       1259    17552    daglu_agreements    TABLE     H  CREATE TABLE public.daglu_agreements (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    progress character varying(255) NOT NULL,
    status_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.daglu_agreements;
       public            postgres    false    3                       1259    17550    daglu_agreements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.daglu_agreements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.daglu_agreements_id_seq;
       public          postgres    false    272    3                       0    0    daglu_agreements_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.daglu_agreements_id_seq OWNED BY public.daglu_agreements.id;
          public          postgres    false    271            �            1259    16821    duty_categories    TABLE     �   CREATE TABLE public.duty_categories (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 #   DROP TABLE public.duty_categories;
       public            postgres    false    3            �            1259    16819    duty_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.duty_categories_id_seq;
       public          postgres    false    3    219                       0    0    duty_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.duty_categories_id_seq OWNED BY public.duty_categories.id;
          public          postgres    false    218            �            1259    16829    duty_category_translations    TABLE     �   CREATE TABLE public.duty_category_translations (
    id integer NOT NULL,
    duty_category_id integer NOT NULL,
    locale character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 .   DROP TABLE public.duty_category_translations;
       public            postgres    false    3            �            1259    16827 !   duty_category_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.duty_category_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.duty_category_translations_id_seq;
       public          postgres    false    221    3                       0    0 !   duty_category_translations_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.duty_category_translations_id_seq OWNED BY public.duty_category_translations.id;
          public          postgres    false    220                       1259    17454    event_documentations    TABLE     m  CREATE TABLE public.event_documentations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    file_title character varying(255),
    file character varying(255),
    video_id character varying(255),
    video_title character varying(255),
    thumbnail character varying(255),
    thumbnail_small character varying(255),
    player character varying(255)
);
 (   DROP TABLE public.event_documentations;
       public            postgres    false    3                       1259    17452    event_documentations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_documentations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.event_documentations_id_seq;
       public          postgres    false    264    3                       0    0    event_documentations_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.event_documentations_id_seq OWNED BY public.event_documentations.id;
          public          postgres    false    263            �            1259    17118    event_translations    TABLE       CREATE TABLE public.event_translations (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL
);
 &   DROP TABLE public.event_translations;
       public            postgres    false    3            �            1259    17116    event_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.event_translations_id_seq;
       public          postgres    false    3    245                       0    0    event_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;
          public          postgres    false    244            �            1259    17107    events    TABLE       CREATE TABLE public.events (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    event_type integer NOT NULL,
    country_id integer NOT NULL,
    location character varying(255),
    brocure character varying(255),
    link character varying(255),
    status_id uuid NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    date_from timestamp without time zone NOT NULL,
    date_to timestamp without time zone NOT NULL
);
    DROP TABLE public.events;
       public            postgres    false    3            �            1259    17105    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    3    243                       0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    242            �            1259    16857    faq_categories    TABLE     C  CREATE TABLE public.faq_categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    created_by character varying(255) NOT NULL,
    updated_by character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 "   DROP TABLE public.faq_categories;
       public            postgres    false    3            �            1259    16855    faq_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faq_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.faq_categories_id_seq;
       public          postgres    false    223    3            	           0    0    faq_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;
          public          postgres    false    222            �            1259    17096    faqs    TABLE     @  CREATE TABLE public.faqs (
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
       public            postgres    false    3            �            1259    17094    faqs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.faqs_id_seq;
       public          postgres    false    3    241            
           0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
          public          postgres    false    240            �            1259    17210    footer_link_translations    TABLE     �   CREATE TABLE public.footer_link_translations (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.footer_link_translations;
       public            postgres    false    3            �            1259    17208    footer_link_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footer_link_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.footer_link_translations_id_seq;
       public          postgres    false    255    3                       0    0    footer_link_translations_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.footer_link_translations_id_seq OWNED BY public.footer_link_translations.id;
          public          postgres    false    254            �            1259    17202    footer_links    TABLE       CREATE TABLE public.footer_links (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    urutan integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying NOT NULL,
    url character varying NOT NULL
);
     DROP TABLE public.footer_links;
       public            postgres    false    3            �            1259    17200    footer_links_id_seq    SEQUENCE     |   CREATE SEQUENCE public.footer_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.footer_links_id_seq;
       public          postgres    false    253    3                       0    0    footer_links_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.footer_links_id_seq OWNED BY public.footer_links.id;
          public          postgres    false    252            �            1259    16895    front_banners    TABLE     �  CREATE TABLE public.front_banners (
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
    site_id uuid NOT NULL,
    status_id uuid NOT NULL
);
 !   DROP TABLE public.front_banners;
       public            postgres    false    3            �            1259    16893    front_banners_id_seq    SEQUENCE     }   CREATE SEQUENCE public.front_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.front_banners_id_seq;
       public          postgres    false    229    3                       0    0    front_banners_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.front_banners_id_seq OWNED BY public.front_banners.id;
          public          postgres    false    228            �            1259    16879    images    TABLE       CREATE TABLE public.images (
    id bigint NOT NULL,
    album_id integer NOT NULL,
    image character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.images;
       public            postgres    false    3            �            1259    16877    images_id_seq    SEQUENCE     v   CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    3    227                       0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    226            �            1259    16490    log_activities    TABLE     �  CREATE TABLE public.log_activities (
    id bigint NOT NULL,
    subject text NOT NULL,
    url character varying(255) NOT NULL,
    method character varying(255) NOT NULL,
    ip character varying(255) NOT NULL,
    agent character varying(255),
    user_id uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
 "   DROP TABLE public.log_activities;
       public            postgres    false    3            �            1259    16488    log_activities_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.log_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.log_activities_id_seq;
       public          postgres    false    210    3                       0    0    log_activities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.log_activities_id_seq OWNED BY public.log_activities.id;
          public          postgres    false    209            �            1259    16944    main_duties    TABLE     �   CREATE TABLE public.main_duties (
    id integer NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL
);
    DROP TABLE public.main_duties;
       public            postgres    false    3            �            1259    16942    main_duties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_duties_id_seq;
       public          postgres    false    237    3                       0    0    main_duties_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_duties_id_seq OWNED BY public.main_duties.id;
          public          postgres    false    236            �            1259    16952    main_duty_translations    TABLE     M  CREATE TABLE public.main_duty_translations (
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
       public            postgres    false    3            �            1259    16950    main_duty_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_duty_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_duty_translations_id_seq;
       public          postgres    false    239    3                       0    0    main_duty_translations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_duty_translations_id_seq OWNED BY public.main_duty_translations.id;
          public          postgres    false    238            �            1259    16396 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false    3            �            1259    16394    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    197    3                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    196            �            1259    16441    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public            postgres    false    3            �            1259    16452    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id uuid NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public            postgres    false    3            �            1259    17161    official_translations    TABLE     �   CREATE TABLE public.official_translations (
    id bigint NOT NULL,
    official_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 )   DROP TABLE public.official_translations;
       public            postgres    false    3            �            1259    17159    official_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.official_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.official_translations_id_seq;
       public          postgres    false    3    249                       0    0    official_translations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.official_translations_id_seq OWNED BY public.official_translations.id;
          public          postgres    false    248            �            1259    17139 	   officials    TABLE     �  CREATE TABLE public.officials (
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
       public            postgres    false    3            �            1259    17137    officials_id_seq    SEQUENCE     y   CREATE SEQUENCE public.officials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.officials_id_seq;
       public          postgres    false    3    247                       0    0    officials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.officials_id_seq OWNED BY public.officials.id;
          public          postgres    false    246                       1259    17270    oimls    TABLE     (  CREATE TABLE public.oimls (
    id bigint NOT NULL,
    category integer NOT NULL,
    reference_no character varying(255) NOT NULL,
    title text NOT NULL,
    link character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.oimls;
       public            postgres    false    3                       1259    17268    oimls_id_seq    SEQUENCE     u   CREATE SEQUENCE public.oimls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.oimls_id_seq;
       public          postgres    false    262    3                       0    0    oimls_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.oimls_id_seq OWNED BY public.oimls.id;
          public          postgres    false    261            �            1259    16412    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false    3            �            1259    16421    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public            postgres    false    3            �            1259    16419    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    3    201                       0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    200                       1259    17529    post_translations    TABLE     �   CREATE TABLE public.post_translations (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text,
    slug character varying(255) NOT NULL
);
 %   DROP TABLE public.post_translations;
       public            postgres    false    3                       1259    17527    post_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.post_translations_id_seq;
       public          postgres    false    270    3                       0    0    post_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.post_translations_id_seq OWNED BY public.post_translations.id;
          public          postgres    false    269                       1259    17518    posts    TABLE     �  CREATE TABLE public.posts (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    type_id smallint NOT NULL,
    category_id bigint NOT NULL,
    source character varying(255),
    file character varying(255),
    reporter_id uuid NOT NULL,
    status_id uuid NOT NULL,
    keywords character varying(255),
    description character varying(255),
    peraturan_id smallint,
    bppp_post_year integer,
    reg_dagri_year integer,
    oiml_ref character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    published_date timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.posts;
       public            postgres    false    3                       1259    17516    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    268    3                       0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    267                       1259    17261    publication_categories    TABLE     �   CREATE TABLE public.publication_categories (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    category_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.publication_categories;
       public            postgres    false    3                       1259    17259    publication_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publication_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.publication_categories_id_seq;
       public          postgres    false    3    260                       0    0    publication_categories_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.publication_categories_id_seq OWNED BY public.publication_categories.id;
          public          postgres    false    259            �            1259    16906    publications    TABLE     �  CREATE TABLE public.publications (
    id bigint NOT NULL,
    cover_image character varying(255) NOT NULL,
    link character varying(255),
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    site_id uuid NOT NULL,
    file character varying(255),
    title character varying NOT NULL,
    category_id bigint NOT NULL,
    publish_year character varying NOT NULL
);
     DROP TABLE public.publications;
       public            postgres    false    3            �            1259    16904    publications_id_seq    SEQUENCE     |   CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.publications_id_seq;
       public          postgres    false    3    231                       0    0    publications_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;
          public          postgres    false    230                       1259    17574    regional_trade_offices    TABLE     D  CREATE TABLE public.regional_trade_offices (
    id bigint NOT NULL,
    city_id bigint NOT NULL,
    address text NOT NULL,
    phone character varying(255) NOT NULL,
    fax character varying(255) NOT NULL,
    website character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    official_1 bigint NOT NULL,
    official_2 bigint,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.regional_trade_offices;
       public            postgres    false    3                       1259    17572    regional_trade_offices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regional_trade_offices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.regional_trade_offices_id_seq;
       public          postgres    false    274    3                       0    0    regional_trade_offices_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.regional_trade_offices_id_seq OWNED BY public.regional_trade_offices.id;
          public          postgres    false    273            �            1259    16577    regions    TABLE       CREATE TABLE public.regions (
    id bigint NOT NULL,
    country_id bigint NOT NULL,
    region_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.regions;
       public            postgres    false    3            �            1259    16575    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public          postgres    false    215    3                       0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
          public          postgres    false    214            �            1259    16463    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public            postgres    false    3            �            1259    16432    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public            postgres    false    3            �            1259    16430    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    3    203                       0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    202            �            1259    16483    sites    TABLE     �   CREATE TABLE public.sites (
    id uuid NOT NULL,
    site_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sites;
       public            postgres    false    3            �            1259    16478    statuses    TABLE     �   CREATE TABLE public.statuses (
    id uuid NOT NULL,
    status_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.statuses;
       public            postgres    false    3            �            1259    17182    units    TABLE       CREATE TABLE public.units (
    id bigint NOT NULL,
    site_id uuid NOT NULL,
    unit_name character varying(255) NOT NULL,
    created_by uuid NOT NULL,
    updated_by uuid,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.units;
       public            postgres    false    3            �            1259    17180    units_id_seq    SEQUENCE     u   CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.units_id_seq;
       public          postgres    false    251    3                       0    0    units_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;
          public          postgres    false    250            �            1259    16402    users    TABLE     B  CREATE TABLE public.users (
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
       public            postgres    false    3            �            1259    16558    videos    TABLE       CREATE TABLE public.videos (
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
       public            postgres    false    3            �           2604    17286    about_us id    DEFAULT     j   ALTER TABLE ONLY public.about_us ALTER COLUMN id SET DEFAULT nextval('public.about_us_id_seq'::regclass);
 :   ALTER TABLE public.about_us ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    17287    about_us_translations id    DEFAULT     �   ALTER TABLE ONLY public.about_us_translations ALTER COLUMN id SET DEFAULT nextval('public.about_us_translations_id_seq'::regclass);
 G   ALTER TABLE public.about_us_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    17288 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    17474    article_categories id    DEFAULT     ~   ALTER TABLE ONLY public.article_categories ALTER COLUMN id SET DEFAULT nextval('public.article_categories_id_seq'::regclass);
 D   ALTER TABLE public.article_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            �           2604    17290 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    17291    contact_us_processes id    DEFAULT     �   ALTER TABLE ONLY public.contact_us_processes ALTER COLUMN id SET DEFAULT nextval('public.contact_us_processes_id_seq'::regclass);
 F   ALTER TABLE public.contact_us_processes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            �           2604    17292    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    17555    daglu_agreements id    DEFAULT     z   ALTER TABLE ONLY public.daglu_agreements ALTER COLUMN id SET DEFAULT nextval('public.daglu_agreements_id_seq'::regclass);
 B   ALTER TABLE public.daglu_agreements ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271    272            �           2604    17293    duty_categories id    DEFAULT     x   ALTER TABLE ONLY public.duty_categories ALTER COLUMN id SET DEFAULT nextval('public.duty_categories_id_seq'::regclass);
 A   ALTER TABLE public.duty_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    17294    duty_category_translations id    DEFAULT     �   ALTER TABLE ONLY public.duty_category_translations ALTER COLUMN id SET DEFAULT nextval('public.duty_category_translations_id_seq'::regclass);
 L   ALTER TABLE public.duty_category_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    17457    event_documentations id    DEFAULT     �   ALTER TABLE ONLY public.event_documentations ALTER COLUMN id SET DEFAULT nextval('public.event_documentations_id_seq'::regclass);
 F   ALTER TABLE public.event_documentations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            �           2604    17295    event_translations id    DEFAULT     ~   ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);
 D   ALTER TABLE public.event_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    17296 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    17297    faq_categories id    DEFAULT     v   ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);
 @   ALTER TABLE public.faq_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    17298    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    17299    footer_link_translations id    DEFAULT     �   ALTER TABLE ONLY public.footer_link_translations ALTER COLUMN id SET DEFAULT nextval('public.footer_link_translations_id_seq'::regclass);
 J   ALTER TABLE public.footer_link_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    255    255            �           2604    17300    footer_links id    DEFAULT     r   ALTER TABLE ONLY public.footer_links ALTER COLUMN id SET DEFAULT nextval('public.footer_links_id_seq'::regclass);
 >   ALTER TABLE public.footer_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253            �           2604    17301    front_banners id    DEFAULT     t   ALTER TABLE ONLY public.front_banners ALTER COLUMN id SET DEFAULT nextval('public.front_banners_id_seq'::regclass);
 ?   ALTER TABLE public.front_banners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    17302 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    17303    log_activities id    DEFAULT     v   ALTER TABLE ONLY public.log_activities ALTER COLUMN id SET DEFAULT nextval('public.log_activities_id_seq'::regclass);
 @   ALTER TABLE public.log_activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    17304    main_duties id    DEFAULT     p   ALTER TABLE ONLY public.main_duties ALTER COLUMN id SET DEFAULT nextval('public.main_duties_id_seq'::regclass);
 =   ALTER TABLE public.main_duties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    17305    main_duty_translations id    DEFAULT     �   ALTER TABLE ONLY public.main_duty_translations ALTER COLUMN id SET DEFAULT nextval('public.main_duty_translations_id_seq'::regclass);
 H   ALTER TABLE public.main_duty_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    17306    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    196    197    197            �           2604    17307    official_translations id    DEFAULT     �   ALTER TABLE ONLY public.official_translations ALTER COLUMN id SET DEFAULT nextval('public.official_translations_id_seq'::regclass);
 G   ALTER TABLE public.official_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    17308    officials id    DEFAULT     l   ALTER TABLE ONLY public.officials ALTER COLUMN id SET DEFAULT nextval('public.officials_id_seq'::regclass);
 ;   ALTER TABLE public.officials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    17309    oimls id    DEFAULT     d   ALTER TABLE ONLY public.oimls ALTER COLUMN id SET DEFAULT nextval('public.oimls_id_seq'::regclass);
 7   ALTER TABLE public.oimls ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            �           2604    17310    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    17532    post_translations id    DEFAULT     |   ALTER TABLE ONLY public.post_translations ALTER COLUMN id SET DEFAULT nextval('public.post_translations_id_seq'::regclass);
 C   ALTER TABLE public.post_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            �           2604    17521    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            �           2604    17313    publication_categories id    DEFAULT     �   ALTER TABLE ONLY public.publication_categories ALTER COLUMN id SET DEFAULT nextval('public.publication_categories_id_seq'::regclass);
 H   ALTER TABLE public.publication_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            �           2604    17314    publications id    DEFAULT     r   ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);
 >   ALTER TABLE public.publications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    17577    regional_trade_offices id    DEFAULT     �   ALTER TABLE ONLY public.regional_trade_offices ALTER COLUMN id SET DEFAULT nextval('public.regional_trade_offices_id_seq'::regclass);
 H   ALTER TABLE public.regional_trade_offices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            �           2604    17315 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    17316    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    17317    units id    DEFAULT     d   ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);
 7   ALTER TABLE public.units ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �          0    16917    about_us 
   TABLE DATA           R   COPY public.about_us (id, status_id, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    233            �          0    16925    about_us_translations 
   TABLE DATA           q   COPY public.about_us_translations (id, about_us_id, locale, welcome_message, created_at, updated_at) FROM stdin;
    public          postgres    false    235           �          0    16868    albums 
   TABLE DATA           �   COPY public.albums (id, name, description, cover_image, created_at, updated_at, site_id, created_by, updated_by, slug) FROM stdin;
    public          postgres    false    225           �          0    17471    article_categories 
   TABLE DATA           x   COPY public.article_categories (id, category_name, site_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    266           �          0    16590    cities 
   TABLE DATA           v   COPY public.cities (id, country_id, region_id, city_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    217   ;       �          0    17216 
   contact_us 
   TABLE DATA           �   COPY public.contact_us (id, name, email, message, sender_ip, assign_to, created_at, updated_at, site_id, status_id) FROM stdin;
    public          postgres    false    256           �          0    17226    contact_us_processes 
   TABLE DATA           �   COPY public.contact_us_processes (id, message_id, responses, reply_by, reply_at, sent_by, sent_at, status_id, created_at, updated_at) FROM stdin;
    public          postgres    false    258           �          0    16501 	   countries 
   TABLE DATA           e   COPY public.countries (id, country_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    212           �          0    17552    daglu_agreements 
   TABLE DATA           z   COPY public.daglu_agreements (id, title, progress, status_id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    272   �        �          0    16821    duty_categories 
   TABLE DATA           f   COPY public.duty_categories (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    219           �          0    16829    duty_category_translations 
   TABLE DATA           g   COPY public.duty_category_translations (id, duty_category_id, locale, category_name, slug) FROM stdin;
    public          postgres    false    221   �        �          0    17454    event_documentations 
   TABLE DATA           �   COPY public.event_documentations (id, event_id, file_title, file, video_id, video_title, thumbnail, thumbnail_small, player) FROM stdin;
    public          postgres    false    264   ^       �          0    17118    event_translations 
   TABLE DATA           \   COPY public.event_translations (id, event_id, locale, title, slug, description) FROM stdin;
    public          postgres    false    245           �          0    17107    events 
   TABLE DATA           �   COPY public.events (id, site_id, event_type, country_id, location, brocure, link, status_id, created_by, updated_by, created_at, updated_at, date_from, date_to) FROM stdin;
    public          postgres    false    243   %       �          0    16857    faq_categories 
   TABLE DATA           t   COPY public.faq_categories (id, category_name, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    223   �        �          0    17096    faqs 
   TABLE DATA           �   COPY public.faqs (id, faq_category_id, site_id, pertanyaan, jawaban, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    241           �          0    17210    footer_link_translations 
   TABLE DATA           N   COPY public.footer_link_translations (id, created_at, updated_at) FROM stdin;
    public          postgres    false    255           �          0    17202    footer_links 
   TABLE DATA           ^   COPY public.footer_links (id, site_id, urutan, created_at, updated_at, name, url) FROM stdin;
    public          postgres    false    253           �          0    16895    front_banners 
   TABLE DATA           �   COPY public.front_banners (id, "position", type, title, image, description, created_by, updated_by, created_at, updated_at, link, site_id, status_id) FROM stdin;
    public          postgres    false    229           �          0    16879    images 
   TABLE DATA           Z   COPY public.images (id, album_id, image, description, created_at, updated_at) FROM stdin;
    public          postgres    false    227           �          0    16490    log_activities 
   TABLE DATA           w   COPY public.log_activities (id, subject, url, method, ip, agent, user_id, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    210           �          0    16944    main_duties 
   TABLE DATA           b   COPY public.main_duties (id, created_by, updated_by, created_at, updated_at, site_id) FROM stdin;
    public          postgres    false    237   �       �          0    16952    main_duty_translations 
   TABLE DATA           z   COPY public.main_duty_translations (id, main_duty_id, locale, category, slug, "position", mainduty, function) FROM stdin;
    public          postgres    false    239           �          0    16396 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    197           �          0    16441    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    204   �       �          0    16452    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    205           �          0    17161    official_translations 
   TABLE DATA           U   COPY public.official_translations (id, official_id, locale, title, slug) FROM stdin;
    public          postgres    false    249   L       �          0    17139 	   officials 
   TABLE DATA           �   COPY public.officials (id, site_id, name, address, userpic, created_at, updated_at, created_by, updated_by, unit_id) FROM stdin;
    public          postgres    false    247           �          0    17270    oimls 
   TABLE DATA           `   COPY public.oimls (id, category, reference_no, title, link, created_at, updated_at) FROM stdin;
    public          postgres    false    262           �          0    16412    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    199   �        �          0    16421    permissions 
   TABLE DATA           S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    201           �          0    17529    post_translations 
   TABLE DATA           V   COPY public.post_translations (id, post_id, locale, title, content, slug) FROM stdin;
    public          postgres    false    270   �        �          0    17518    posts 
   TABLE DATA           �   COPY public.posts (id, site_id, type_id, category_id, source, file, reporter_id, status_id, keywords, description, peraturan_id, bppp_post_year, reg_dagri_year, oiml_ref, created_by, updated_by, published_date, created_at, updated_at) FROM stdin;
    public          postgres    false    268           �          0    17261    publication_categories 
   TABLE DATA           d   COPY public.publication_categories (id, site_id, category_name, created_at, updated_at) FROM stdin;
    public          postgres    false    260           �          0    16906    publications 
   TABLE DATA           �   COPY public.publications (id, cover_image, link, created_by, updated_by, created_at, updated_at, site_id, file, title, category_id, publish_year) FROM stdin;
    public          postgres    false    231           �          0    17574    regional_trade_offices 
   TABLE DATA           �   COPY public.regional_trade_offices (id, city_id, address, phone, fax, website, email, official_1, official_2, latitude, longitude, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    274           �          0    16577    regions 
   TABLE DATA           n   COPY public.regions (id, country_id, region_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    215           �          0    16463    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    206           �          0    16432    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    203   I        �          0    16483    sites 
   TABLE DATA           F   COPY public.sites (id, site_name, created_at, updated_at) FROM stdin;
    public          postgres    false    208   O        �          0    16478    statuses 
   TABLE DATA           K   COPY public.statuses (id, status_name, created_at, updated_at) FROM stdin;
    public          postgres    false    207   3       �          0    17182    units 
   TABLE DATA           g   COPY public.units (id, site_id, unit_name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    251   �       �          0    16402    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, site_id, reporter, last_login_at, last_login_from, status_id, created_at, updated_at, avatar) FROM stdin;
    public          postgres    false    198           �          0    16558    videos 
   TABLE DATA           �   COPY public.videos (id, video_id, title, slug, description, thumbnail, thumbnail_small, player, created_at, updated_at, site_id, created_by, updated_by) FROM stdin;
    public          postgres    false    213                     0    0    about_us_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.about_us_id_seq', 1, false);
          public          postgres    false    232                        0    0    about_us_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.about_us_translations_id_seq', 1, false);
          public          postgres    false    234            !           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 1, false);
          public          postgres    false    224            "           0    0    article_categories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.article_categories_id_seq', 9, true);
          public          postgres    false    265            #           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public          postgres    false    216            $           0    0    contact_us_processes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.contact_us_processes_id_seq', 1, false);
          public          postgres    false    257            %           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 5, true);
          public          postgres    false    211            &           0    0    daglu_agreements_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.daglu_agreements_id_seq', 1, false);
          public          postgres    false    271            '           0    0    duty_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.duty_categories_id_seq', 8, true);
          public          postgres    false    218            (           0    0 !   duty_category_translations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.duty_category_translations_id_seq', 16, true);
          public          postgres    false    220            )           0    0    event_documentations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.event_documentations_id_seq', 1, false);
          public          postgres    false    263            *           0    0    event_translations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.event_translations_id_seq', 10, true);
          public          postgres    false    244            +           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 5, true);
          public          postgres    false    242            ,           0    0    faq_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.faq_categories_id_seq', 1, false);
          public          postgres    false    222            -           0    0    faqs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);
          public          postgres    false    240            .           0    0    footer_link_translations_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.footer_link_translations_id_seq', 1, false);
          public          postgres    false    254            /           0    0    footer_links_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.footer_links_id_seq', 1, false);
          public          postgres    false    252            0           0    0    front_banners_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.front_banners_id_seq', 1, false);
          public          postgres    false    228            1           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 1, false);
          public          postgres    false    226            2           0    0    log_activities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.log_activities_id_seq', 464, true);
          public          postgres    false    209            3           0    0    main_duties_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.main_duties_id_seq', 1, true);
          public          postgres    false    236            4           0    0    main_duty_translations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.main_duty_translations_id_seq', 2, true);
          public          postgres    false    238            5           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 72, true);
          public          postgres    false    196            6           0    0    official_translations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.official_translations_id_seq', 2, true);
          public          postgres    false    248            7           0    0    officials_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.officials_id_seq', 1, true);
          public          postgres    false    246            8           0    0    oimls_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.oimls_id_seq', 2, true);
          public          postgres    false    261            9           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 19, true);
          public          postgres    false    200            :           0    0    post_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.post_translations_id_seq', 1, false);
          public          postgres    false    269            ;           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 1, false);
          public          postgres    false    267            <           0    0    publication_categories_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.publication_categories_id_seq', 1, false);
          public          postgres    false    259            =           0    0    publications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.publications_id_seq', 1, false);
          public          postgres    false    230            >           0    0    regional_trade_offices_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.regional_trade_offices_id_seq', 1, false);
          public          postgres    false    273            ?           0    0    regions_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.regions_id_seq', 1, true);
          public          postgres    false    214            @           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
          public          postgres    false    202            A           0    0    units_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.units_id_seq', 1, false);
          public          postgres    false    250            �           2606    16922    about_us about_us_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.about_us
    ADD CONSTRAINT about_us_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.about_us DROP CONSTRAINT about_us_pkey;
       public            postgres    false    233            �           2606    16935 E   about_us_translations about_us_translations_about_us_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_locale_unique UNIQUE (about_us_id, locale);
 o   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_locale_unique;
       public            postgres    false    235    235            �           2606    16933 0   about_us_translations about_us_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_pkey;
       public            postgres    false    235            �           2606    16876    albums albums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.albums DROP CONSTRAINT albums_pkey;
       public            postgres    false    225                       2606    17476 *   article_categories article_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.article_categories DROP CONSTRAINT article_categories_pkey;
       public            postgres    false    266            �           2606    16595    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    217                       2606    17223    contact_us contact_us_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.contact_us DROP CONSTRAINT contact_us_pkey;
       public            postgres    false    256            	           2606    17234 .   contact_us_processes contact_us_processes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.contact_us_processes
    ADD CONSTRAINT contact_us_processes_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.contact_us_processes DROP CONSTRAINT contact_us_processes_pkey;
       public            postgres    false    258            �           2606    16506    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    212                       2606    17560 &   daglu_agreements daglu_agreements_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.daglu_agreements
    ADD CONSTRAINT daglu_agreements_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.daglu_agreements DROP CONSTRAINT daglu_agreements_pkey;
       public            postgres    false    272            �           2606    16826 $   duty_categories duty_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.duty_categories
    ADD CONSTRAINT duty_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.duty_categories DROP CONSTRAINT duty_categories_pkey;
       public            postgres    false    219            �           2606    16839 T   duty_category_translations duty_category_translations_duty_category_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_locale_unique UNIQUE (duty_category_id, locale);
 ~   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_locale_unique;
       public            postgres    false    221    221            �           2606    16837 :   duty_category_translations duty_category_translations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_pkey;
       public            postgres    false    221                       2606    17462 .   event_documentations event_documentations_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_documentations
    ADD CONSTRAINT event_documentations_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.event_documentations DROP CONSTRAINT event_documentations_pkey;
       public            postgres    false    264            �           2606    17128 <   event_translations event_translations_event_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_locale_unique UNIQUE (event_id, locale);
 f   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_locale_unique;
       public            postgres    false    245    245            �           2606    17126 *   event_translations event_translations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_pkey;
       public            postgres    false    245            �           2606    17136 1   event_translations event_translations_slug_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_slug_unique UNIQUE (slug);
 [   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_slug_unique;
       public            postgres    false    245            �           2606    17115    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    243            �           2606    16865 "   faq_categories faq_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.faq_categories DROP CONSTRAINT faq_categories_pkey;
       public            postgres    false    223            �           2606    17104    faqs faqs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.faqs DROP CONSTRAINT faqs_pkey;
       public            postgres    false    241                       2606    17215 6   footer_link_translations footer_link_translations_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.footer_link_translations
    ADD CONSTRAINT footer_link_translations_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.footer_link_translations DROP CONSTRAINT footer_link_translations_pkey;
       public            postgres    false    255                       2606    17207    footer_links footer_links_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.footer_links
    ADD CONSTRAINT footer_links_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.footer_links DROP CONSTRAINT footer_links_pkey;
       public            postgres    false    253            �           2606    16903     front_banners front_banners_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.front_banners
    ADD CONSTRAINT front_banners_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.front_banners DROP CONSTRAINT front_banners_pkey;
       public            postgres    false    229            �           2606    16887    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    227            �           2606    16498 "   log_activities log_activities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.log_activities
    ADD CONSTRAINT log_activities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.log_activities DROP CONSTRAINT log_activities_pkey;
       public            postgres    false    210            �           2606    16949    main_duties main_duties_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_duties
    ADD CONSTRAINT main_duties_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_duties DROP CONSTRAINT main_duties_pkey;
       public            postgres    false    237            �           2606    16962 H   main_duty_translations main_duty_translations_main_duty_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_locale_unique UNIQUE (main_duty_id, locale);
 r   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_locale_unique;
       public            postgres    false    239    239            �           2606    16960 2   main_duty_translations main_duty_translations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_pkey;
       public            postgres    false    239            �           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    197            �           2606    16451 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    204    204    204            �           2606    16462 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    205    205    205            �           2606    17171 E   official_translations official_translations_official_id_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_locale_unique UNIQUE (official_id, locale);
 o   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_locale_unique;
       public            postgres    false    249    249            �           2606    17169 0   official_translations official_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_pkey;
       public            postgres    false    249            �           2606    17179 7   official_translations official_translations_slug_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_slug_unique UNIQUE (slug);
 a   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_slug_unique;
       public            postgres    false    249            �           2606    17147    officials officials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.officials
    ADD CONSTRAINT officials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.officials DROP CONSTRAINT officials_pkey;
       public            postgres    false    247                       2606    17278    oimls oimls_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.oimls
    ADD CONSTRAINT oimls_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.oimls DROP CONSTRAINT oimls_pkey;
       public            postgres    false    262            �           2606    16429    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    201                       2606    17537 (   post_translations post_translations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_pkey;
       public            postgres    false    270                       2606    17539 9   post_translations post_translations_post_id_locale_unique 
   CONSTRAINT        ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_locale_unique UNIQUE (post_id, locale);
 c   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_locale_unique;
       public            postgres    false    270    270                       2606    17547 /   post_translations post_translations_slug_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_slug_unique UNIQUE (slug);
 Y   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_slug_unique;
       public            postgres    false    270                       2606    17526    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    268                       2606    17266 2   publication_categories publication_categories_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_pkey;
       public            postgres    false    260            �           2606    16914    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public            postgres    false    231                       2606    17582 2   regional_trade_offices regional_trade_offices_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.regional_trade_offices
    ADD CONSTRAINT regional_trade_offices_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.regional_trade_offices DROP CONSTRAINT regional_trade_offices_pkey;
       public            postgres    false    274            �           2606    16582    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    215            �           2606    16477 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    206    206            �           2606    16440    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    203            �           2606    16487    sites sites_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public            postgres    false    208            �           2606    16482    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    207                       2606    17187    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public            postgres    false    251            �           2606    16411    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    198            �           2606    16409    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    198            �           2606    16565    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    213            �           1259    16941 "   about_us_translations_locale_index    INDEX     f   CREATE INDEX about_us_translations_locale_index ON public.about_us_translations USING btree (locale);
 6   DROP INDEX public.about_us_translations_locale_index;
       public            postgres    false    235            �           1259    16845 '   duty_category_translations_locale_index    INDEX     p   CREATE INDEX duty_category_translations_locale_index ON public.duty_category_translations USING btree (locale);
 ;   DROP INDEX public.duty_category_translations_locale_index;
       public            postgres    false    221            �           1259    17134    event_translations_locale_index    INDEX     `   CREATE INDEX event_translations_locale_index ON public.event_translations USING btree (locale);
 3   DROP INDEX public.event_translations_locale_index;
       public            postgres    false    245            �           1259    16968 #   main_duty_translations_locale_index    INDEX     h   CREATE INDEX main_duty_translations_locale_index ON public.main_duty_translations USING btree (locale);
 7   DROP INDEX public.main_duty_translations_locale_index;
       public            postgres    false    239            �           1259    16444 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    204    204            �           1259    16455 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    205    205            �           1259    17177 "   official_translations_locale_index    INDEX     f   CREATE INDEX official_translations_locale_index ON public.official_translations USING btree (locale);
 6   DROP INDEX public.official_translations_locale_index;
       public            postgres    false    249            �           1259    16418    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    199                       1259    17545    post_translations_locale_index    INDEX     ^   CREATE INDEX post_translations_locale_index ON public.post_translations USING btree (locale);
 2   DROP INDEX public.post_translations_locale_index;
       public            postgres    false    270            '           2606    16936 ?   about_us_translations about_us_translations_about_us_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_us_translations
    ADD CONSTRAINT about_us_translations_about_us_id_foreign FOREIGN KEY (about_us_id) REFERENCES public.about_us(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.about_us_translations DROP CONSTRAINT about_us_translations_about_us_id_foreign;
       public          postgres    false    233    3039    235            $           2606    16596    cities cities_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_region_id_foreign;
       public          postgres    false    217    3018    215            %           2606    16840 N   duty_category_translations duty_category_translations_duty_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.duty_category_translations
    ADD CONSTRAINT duty_category_translations_duty_category_id_foreign FOREIGN KEY (duty_category_id) REFERENCES public.duty_categories(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.duty_category_translations DROP CONSTRAINT duty_category_translations_duty_category_id_foreign;
       public          postgres    false    221    3022    219            +           2606    17463 :   event_documentations event_documentations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_documentations
    ADD CONSTRAINT event_documentations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.event_documentations DROP CONSTRAINT event_documentations_event_id_foreign;
       public          postgres    false    3055    264    243            )           2606    17129 6   event_translations event_translations_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.event_translations DROP CONSTRAINT event_translations_event_id_foreign;
       public          postgres    false    245    243    3055            &           2606    16888    images images_album_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_album_id_foreign FOREIGN KEY (album_id) REFERENCES public.albums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.images DROP CONSTRAINT images_album_id_foreign;
       public          postgres    false    3031    227    225            (           2606    16963 B   main_duty_translations main_duty_translations_main_duty_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_duty_translations
    ADD CONSTRAINT main_duty_translations_main_duty_id_foreign FOREIGN KEY (main_duty_id) REFERENCES public.main_duties(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.main_duty_translations DROP CONSTRAINT main_duty_translations_main_duty_id_foreign;
       public          postgres    false    239    3046    237                       2606    16445 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    2996    201    204                        2606    16456 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    2998    203    205            *           2606    17172 ?   official_translations official_translations_official_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.official_translations
    ADD CONSTRAINT official_translations_official_id_foreign FOREIGN KEY (official_id) REFERENCES public.officials(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.official_translations DROP CONSTRAINT official_translations_official_id_foreign;
       public          postgres    false    247    249    3064            ,           2606    17540 3   post_translations post_translations_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_translations
    ADD CONSTRAINT post_translations_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.post_translations DROP CONSTRAINT post_translations_post_id_foreign;
       public          postgres    false    268    270    3091            #           2606    16583 "   regions regions_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_country_id_foreign;
       public          postgres    false    215    3014    212            !           2606    16466 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    206    2996    201            "           2606    16471 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    206    2998    203           